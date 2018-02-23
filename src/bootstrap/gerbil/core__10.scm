(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<match>[1]#_g31698_|
    (gx#make-syntax-quote 'apply #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31699_|
    (gx#make-syntax-quote 'quasiquote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31700_|
    (gx#make-syntax-quote 'quote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31703_|
    (gx#make-syntax-quote 'vector #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31704_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31705_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31706_|
    (gx#make-syntax-quote 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31707_|
    (gx#make-syntax-quote '@list #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31708_|
    (gx#make-syntax-quote 'cons* #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31709_|
    (gx#make-syntax-quote 'cons #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31710_|
    (gx#make-syntax-quote 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31711_|
    (gx#make-syntax-quote 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31712_|
    (gx#make-syntax-quote 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31713_|
    (gx#make-syntax-quote '? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31714_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31715_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31724_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31729_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31730_|
    (gx#make-syntax-quote '<...> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31731_|
    (gx#make-syntax-quote '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31748_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31749_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31750_|
    (gx#make-syntax-quote 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31751_|
    (gx#make-syntax-quote 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31754_|
    (gx#make-syntax-quote 'and #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<match>[1]#match-macro::t|
      (make-class-type
       'gerbil.core#match-macro::t
       (cons |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t| '())
       '()
       'match-macro
       '()
       '#f))
    (define |gerbil/core$<match>[1]#match-macro?|
      (make-class-predicate |gerbil/core$<match>[1]#match-macro::t|))
    (define |gerbil/core$<match>[1]#make-match-macro|
      (lambda _$args25337_
        (apply make-class-instance
               |gerbil/core$<match>[1]#match-macro::t|
               _$args25337_)))
    (define |gerbil/core$<match>[1]#syntax-local-match-macro?|
      (lambda (_stx25334_)
        (if (gx#identifier? _stx25334_)
            (|gerbil/core$<match>[1]#match-macro?|
             (gx#syntax-local-value _stx25334_ false))
            '#f)))
    (define |gerbil/core$<match>[1]#parse-match-pattern|
      (let ((_opt-lambda2365025320_
             (lambda (_stx23652_ _match-stx23654_)
               (letrec ((_parse123656_
                         (lambda (_hd24003_)
                           (let* ((_g2402924171_
                                   (lambda (_g2403024167_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2403024167_)))
                                  (_g2402824182_
                                   (lambda (_g2403024175_)
                                     ((lambda ()
                                        (_parse-error23663_ _hd24003_)))))
                                  (_g2402724200_
                                   (lambda (_g2403024186_)
                                     ((lambda (_L24189_)
                                        (if (gx#stx-datum? _L24189_)
                                            (cons 'datum:
                                                  (cons (gx#stx-e _L24189_)
                                                        '()))
                                            (_g2402824182_ _g2403024186_)))
                                      _g2403024186_)))
                                  (_g2402624216_
                                   (lambda (_g2403024204_)
                                     ((lambda (_L24207_)
                                        (if (if (gx#identifier? _L24207_)
                                                (not (gx#ellipsis? _L24207_))
                                                '#f)
                                            (cons 'var: (cons _L24207_ '()))
                                            (_g2402724200_ _g2403024204_)))
                                      _g2403024204_)))
                                  (_g2402524232_
                                   (lambda (_g2403024220_)
                                     ((lambda (_L24223_)
                                        (if (gx#underscore? _L24223_)
                                            (cons 'any: '())
                                            (_g2402624216_ _g2403024220_)))
                                      _g2403024220_)))
                                  (_g2402424264_
                                   (lambda (_g2403024236_)
                                     (if (gx#stx-pair? _g2403024236_)
                                         (let ((_e2416024239_
                                                (gx#syntax-e _g2403024236_)))
                                           (let ((_hd2416124243_
                                                  (##car _e2416024239_))
                                                 (_tl2416224246_
                                                  (##cdr _e2416024239_)))
                                             ((lambda (_L24249_)
                                                (if (|gerbil/core$<match>[1]#syntax-local-match-macro?|
                                                     _L24249_)
                                                    (_parse123656_
                                                     (gx#core-apply-expander
                                                      (gx#syntax-local-e
                                                       _L24249_)
                                                      (gx#stx-wrap-source
                                                       (cons 'match: _hd24003_)
                                                       (let ((_$e24260_
                                                              (gx#stx-source
                                                               _hd24003_)))
                                                         (if _$e24260_
                                                             _$e24260_
                                                             (gx#stx-source
                                                              _stx23652_))))))
                                                    (_g2402524232_
                                                     _g2403024236_)))
                                              _hd2416124243_)))
                                         (_g2402524232_ _g2403024236_))))
                                  (_g2402324318_
                                   (lambda (_g2403024268_)
                                     (if (gx#stx-pair? _g2403024268_)
                                         (let ((_e2415024271_
                                                (gx#syntax-e _g2403024268_)))
                                           (let ((_hd2415124275_
                                                  (##car _e2415024271_))
                                                 (_tl2415224278_
                                                  (##cdr _e2415024271_)))
                                             (if (gx#identifier?
                                                  _hd2415124275_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31698_|
                                                      _hd2415124275_)
                                                     (if (gx#stx-pair?
                                                          _tl2415224278_)
                                                         (let ((_e2415324281_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2415224278_)))
                   (let ((_hd2415424285_ (##car _e2415324281_))
                         (_tl2415524288_ (##cdr _e2415324281_)))
                     (if (gx#stx-pair? _tl2415524288_)
                         (let ((_e2415624291_ (gx#syntax-e _tl2415524288_)))
                           (let ((_hd2415724295_ (##car _e2415624291_))
                                 (_tl2415824298_ (##cdr _e2415624291_)))
                             (if (gx#stx-null? _tl2415824298_)
                                 ((lambda (_L24301_ _L24303_)
                                    (cons 'apply:
                                          (cons _L24303_
                                                (cons (_parse123656_ _L24301_)
                                                      '()))))
                                  _hd2415724295_
                                  _hd2415424285_)
                                 (_g2402424264_ _g2403024268_))))
                         (_g2402424264_ _g2403024268_))))
                 (_g2402424264_ _g2403024268_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2402424264_
                                                      _g2403024268_))
                                                 (_g2402424264_
                                                  _g2403024268_))))
                                         (_g2402424264_ _g2403024268_))))
                                  (_g2402224358_
                                   (lambda (_g2403024322_)
                                     (if (gx#stx-pair? _g2403024322_)
                                         (let ((_e2414224325_
                                                (gx#syntax-e _g2403024322_)))
                                           (let ((_hd2414324329_
                                                  (##car _e2414224325_))
                                                 (_tl2414424332_
                                                  (##cdr _e2414224325_)))
                                             (if (gx#identifier?
                                                  _hd2414324329_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31699_|
                                                      _hd2414324329_)
                                                     (if (gx#stx-pair?
                                                          _tl2414424332_)
                                                         (let ((_e2414524335_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2414424332_)))
                   (let ((_hd2414624339_ (##car _e2414524335_))
                         (_tl2414724342_ (##cdr _e2414524335_)))
                     (if (gx#stx-null? _tl2414724342_)
                         ((lambda (_L24345_) (_parse-qq23662_ _L24345_))
                          _hd2414624339_)
                         (_g2402324318_ _g2403024322_))))
                 (_g2402324318_ _g2403024322_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2402324318_
                                                      _g2403024322_))
                                                 (_g2402324318_
                                                  _g2403024322_))))
                                         (_g2402324318_ _g2403024322_))))
                                  (_g2402124398_
                                   (lambda (_g2403024362_)
                                     (if (gx#stx-pair? _g2403024362_)
                                         (let ((_e2413524365_
                                                (gx#syntax-e _g2403024362_)))
                                           (let ((_hd2413624369_
                                                  (##car _e2413524365_))
                                                 (_tl2413724372_
                                                  (##cdr _e2413524365_)))
                                             (if (gx#identifier?
                                                  _hd2413624369_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31700_|
                                                      _hd2413624369_)
                                                     (if (gx#stx-pair?
                                                          _tl2413724372_)
                                                         (let ((_e2413824375_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2413724372_)))
                   (let ((_hd2413924379_ (##car _e2413824375_))
                         (_tl2414024382_ (##cdr _e2413824375_)))
                     (if (gx#stx-null? _tl2414024382_)
                         ((lambda (_L24385_)
                            (cons 'datum: (cons (gx#stx-e _L24385_) '())))
                          _hd2413924379_)
                         (_g2402224358_ _g2403024362_))))
                 (_g2402224358_ _g2403024362_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2402224358_
                                                      _g2403024362_))
                                                 (_g2402224358_
                                                  _g2403024362_))))
                                         (_g2402224358_ _g2403024362_))))
                                  (_g2402024448_
                                   (lambda (_g2403024402_)
                                     (if (gx#stx-pair? _g2403024402_)
                                         (let ((_e2412824405_
                                                (gx#syntax-e _g2403024402_)))
                                           (let ((_hd2412924409_
                                                  (##car _e2412824405_))
                                                 (_tl2413024412_
                                                  (##cdr _e2412824405_)))
                                             (if (gx#stx-pair? _tl2413024412_)
                                                 (let ((_e2413124415_
                                                        (gx#syntax-e
                                                         _tl2413024412_)))
                                                   (let ((_hd2413224419_
                                                          (##car _e2413124415_))
                                                         (_tl2413324422_
                                                          (##cdr _e2413124415_)))
                                                     (if (gx#stx-null?
                                                          _tl2413324422_)
                                                         ((lambda (_L24425_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L24427_)
                    (if (if (gx#identifier? _L24427_)
                            (let ((_$e24440_
                                   (gx#free-identifier=?
                                    _L24427_
                                    (gx#datum->syntax '#f 'eq?))))
                              (if _$e24440_
                                  _$e24440_
                                  (let ((_$e24444_
                                         (gx#free-identifier=?
                                          _L24427_
                                          (gx#datum->syntax '#f 'eqv?))))
                                    (if _$e24444_
                                        _$e24444_
                                        (gx#free-identifier=?
                                         _L24427_
                                         (gx#datum->syntax '#f 'equal?))))))
                            '#f)
                        (cons '?:
                              (cons (cons (gx#datum->syntax '#f 'cut)
                                          (cons _L24427_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '<>)
                                                      (cons _L24425_ '()))))
                                    '()))
                        (_g2402124398_ _g2403024402_)))
                  _hd2413224419_
                  _hd2412924409_)
                 (_g2402124398_ _g2403024402_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2402124398_
                                                  _g2403024402_))))
                                         (_g2402124398_ _g2403024402_))))
                                  (_g2401924478_
                                   (lambda (_g2403024452_)
                                     (if (gx#stx-pair? _g2403024452_)
                                         (let ((_e2412324455_
                                                (gx#syntax-e _g2403024452_)))
                                           (let ((_hd2412424459_
                                                  (##car _e2412324455_))
                                                 (_tl2412524462_
                                                  (##cdr _e2412324455_)))
                                             ((lambda (_L24465_ _L24467_)
                                                (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
                                                     _L24467_)
                                                    (cons 'class:
                                                          (cons (gx#syntax-local-value
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L24467_)
                        (cons (_parse-class-body23661_ _L24465_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2402024448_
                                                     _g2403024452_)))
                                              _tl2412524462_
                                              _hd2412424459_)))
                                         (_g2402024448_ _g2403024452_))))
                                  (_g2401824508_
                                   (lambda (_g2403024482_)
                                     (if (gx#stx-pair? _g2403024482_)
                                         (let ((_e2411824485_
                                                (gx#syntax-e _g2403024482_)))
                                           (let ((_hd2411924489_
                                                  (##car _e2411824485_))
                                                 (_tl2412024492_
                                                  (##cdr _e2411824485_)))
                                             ((lambda (_L24495_ _L24497_)
                                                (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                                     _L24497_)
                                                    (cons 'struct:
                                                          (cons (gx#syntax-local-value
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L24497_)
                        (cons (_parse-vector23659_ _L24495_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2401924478_
                                                     _g2403024482_)))
                                              _tl2412024492_
                                              _hd2411924489_)))
                                         (_g2401924478_ _g2403024482_))))
                                  (_g2401724571_
                                   (lambda (_g2403024512_)
                                     (if (gx#stx-vector? _g2403024512_)
                                         (let ((_e2410624515_
                                                (vector->list
                                                 (gx#syntax-e _g2403024512_))))
                                           (if (gx#stx-pair/null?
                                                _e2410624515_)
                                               (if (fx>= (gx#stx-length
                                                          _e2410624515_)
                                                         '0)
                                                   (let ((_g31701_
                                                          (gx#syntax-split-splice
                                                           _e2410624515_
                                                           '0)))
                                                     (begin
                                                       (let ((_g31702_
                                                              (values-count
                                                               _g31701_)))
                                                         (if (not (fx= _g31702_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g31702_)))
               (let ((_target2410724519_ (values-ref _g31701_ 0))
                     (_tl2410924522_ (values-ref _g31701_ 1)))
                 (if (gx#stx-null? _tl2410924522_)
                     (letrec ((_loop2411024525_
                               (lambda (_hd2410824529_ _body2411424532_)
                                 (if (gx#stx-pair? _hd2410824529_)
                                     (let ((_e2411124535_
                                            (gx#syntax-e _hd2410824529_)))
                                       (let ((_lp-hd2411224539_
                                              (##car _e2411124535_))
                                             (_lp-tl2411324542_
                                              (##cdr _e2411124535_)))
                                         (_loop2411024525_
                                          _lp-tl2411324542_
                                          (cons _lp-hd2411224539_
                                                _body2411424532_))))
                                     (let ((_body2411524545_
                                            (reverse _body2411424532_)))
                                       ((lambda (_L24549_)
                                          (cons 'vector:
                                                (cons (_parse-vector23659_
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g2456224565_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g2456324568_)
                          (cons _g2456224565_ _g2456324568_))
                        '()
                        _L24549_)))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body2411524545_))))))
                       (_loop2411024525_ _target2410724519_ '()))
                     (_g2401824508_ _g2403024512_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2401824508_
                                                    _g2403024512_))
                                               (_g2401824508_ _g2403024512_)))
                                         (_g2401824508_ _g2403024512_))))
                                  (_g2401624599_
                                   (lambda (_g2403024575_)
                                     (if (gx#stx-pair? _g2403024575_)
                                         (let ((_e2410224578_
                                                (gx#syntax-e _g2403024575_)))
                                           (let ((_hd2410324582_
                                                  (##car _e2410224578_))
                                                 (_tl2410424585_
                                                  (##cdr _e2410224578_)))
                                             (if (gx#identifier?
                                                  _hd2410324582_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31703_|
                                                      _hd2410324582_)
                                                     ((lambda (_L24588_)
                                                        (cons 'vector:
                                                              (cons (_parse-vector23659_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L24588_)
                            '())))
              _tl2410424585_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2401724571_
                                                      _g2403024575_))
                                                 (_g2401724571_
                                                  _g2403024575_))))
                                         (_g2401724571_ _g2403024575_))))
                                  (_g2401524627_
                                   (lambda (_g2403024603_)
                                     (if (gx#stx-pair? _g2403024603_)
                                         (let ((_e2409824606_
                                                (gx#syntax-e _g2403024603_)))
                                           (let ((_hd2409924610_
                                                  (##car _e2409824606_))
                                                 (_tl2410024613_
                                                  (##cdr _e2409824606_)))
                                             (if (gx#identifier?
                                                  _hd2409924610_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31704_|
                                                      _hd2409924610_)
                                                     ((lambda (_L24616_)
                                                        (cons 'values:
                                                              (cons (_parse-vector23659_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L24616_)
                            '())))
              _tl2410024613_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2401624599_
                                                      _g2403024603_))
                                                 (_g2401624599_
                                                  _g2403024603_))))
                                         (_g2401624599_ _g2403024603_))))
                                  (_g2401424667_
                                   (lambda (_g2403024631_)
                                     (if (gx#stx-pair? _g2403024631_)
                                         (let ((_e2409124634_
                                                (gx#syntax-e _g2403024631_)))
                                           (let ((_hd2409224638_
                                                  (##car _e2409124634_))
                                                 (_tl2409324641_
                                                  (##cdr _e2409124634_)))
                                             (if (gx#identifier?
                                                  _hd2409224638_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31705_|
                                                      _hd2409224638_)
                                                     (if (gx#stx-pair?
                                                          _tl2409324641_)
                                                         (let ((_e2409424644_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2409324641_)))
                   (let ((_hd2409524648_ (##car _e2409424644_))
                         (_tl2409624651_ (##cdr _e2409424644_)))
                     (if (gx#stx-null? _tl2409624651_)
                         ((lambda (_L24654_) (_parse123656_ _L24654_))
                          _hd2409524648_)
                         (_g2401524627_ _g2403024631_))))
                 (_g2401524627_ _g2403024631_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2401524627_
                                                      _g2403024631_))
                                                 (_g2401524627_
                                                  _g2403024631_))))
                                         (_g2401524627_ _g2403024631_))))
                                  (_g2401324688_
                                   (lambda (_g2403024671_)
                                     (if (gx#stx-box? _g2403024671_)
                                         (let ((_e2408924674_
                                                (unbox (gx#syntax-e
                                                        _g2403024671_))))
                                           ((lambda (_L24678_)
                                              (cons 'box:
                                                    (cons (_parse123656_
                                                           _L24678_)
                                                          '())))
                                            _e2408924674_))
                                         (_g2401424667_ _g2403024671_))))
                                  (_g2401224728_
                                   (lambda (_g2403024692_)
                                     (if (gx#stx-pair? _g2403024692_)
                                         (let ((_e2408224695_
                                                (gx#syntax-e _g2403024692_)))
                                           (let ((_hd2408324699_
                                                  (##car _e2408224695_))
                                                 (_tl2408424702_
                                                  (##cdr _e2408224695_)))
                                             (if (gx#identifier?
                                                  _hd2408324699_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31706_|
                                                      _hd2408324699_)
                                                     (if (gx#stx-pair?
                                                          _tl2408424702_)
                                                         (let ((_e2408524705_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2408424702_)))
                   (let ((_hd2408624709_ (##car _e2408524705_))
                         (_tl2408724712_ (##cdr _e2408524705_)))
                     (if (gx#stx-null? _tl2408724712_)
                         ((lambda (_L24715_)
                            (cons 'box: (cons (_parse123656_ _L24715_) '())))
                          _hd2408624709_)
                         (_g2401324688_ _g2403024692_))))
                 (_g2401324688_ _g2403024692_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2401324688_
                                                      _g2403024692_))
                                                 (_g2401324688_
                                                  _g2403024692_))))
                                         (_g2401324688_ _g2403024692_))))
                                  (_g2401124756_
                                   (lambda (_g2403024732_)
                                     (if (gx#stx-pair? _g2403024732_)
                                         (let ((_e2407824735_
                                                (gx#syntax-e _g2403024732_)))
                                           (let ((_hd2407924739_
                                                  (##car _e2407824735_))
                                                 (_tl2408024742_
                                                  (##cdr _e2407824735_)))
                                             (if (gx#identifier?
                                                  _hd2407924739_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31707_|
                                                      _hd2407924739_)
                                                     ((lambda (_L24745_)
                                                        (_parse-list23658_
                                                         _L24745_))
                                                      _tl2408024742_)
                                                     (_g2401224728_
                                                      _g2403024732_))
                                                 (_g2401224728_
                                                  _g2403024732_))))
                                         (_g2401224728_ _g2403024732_))))
                                  (_g2401024812_
                                   (lambda (_g2403024760_)
                                     (if (gx#stx-pair? _g2403024760_)
                                         (let ((_e2406824763_
                                                (gx#syntax-e _g2403024760_)))
                                           (let ((_hd2406924767_
                                                  (##car _e2406824763_))
                                                 (_tl2407024770_
                                                  (##cdr _e2406824763_)))
                                             (if (gx#identifier?
                                                  _hd2406924767_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31708_|
                                                      _hd2406924767_)
                                                     (if (gx#stx-pair?
                                                          _tl2407024770_)
                                                         (let ((_e2407124773_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2407024770_)))
                   (let ((_hd2407224777_ (##car _e2407124773_))
                         (_tl2407324780_ (##cdr _e2407124773_)))
                     (if (gx#stx-pair? _tl2407324780_)
                         (let ((_e2407424783_ (gx#syntax-e _tl2407324780_)))
                           (let ((_hd2407524787_ (##car _e2407424783_))
                                 (_tl2407624790_ (##cdr _e2407424783_)))
                             ((lambda (_L24793_ _L24795_ _L24796_)
                                (if (gx#stx-null? _L24793_)
                                    (cons 'cons:
                                          (cons (_parse123656_ _L24796_)
                                                (cons (_parse123656_ _L24795_)
                                                      '())))
                                    (cons 'cons:
                                          (cons (_parse123656_ _L24796_)
                                                (cons (_parse123656_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'cons*)
                                                             (cons _L24795_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L24793_)))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _tl2407624790_
                              _hd2407524787_
                              _hd2407224777_)))
                         (_g2401124756_ _g2403024760_))))
                 (_g2401124756_ _g2403024760_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2401124756_
                                                      _g2403024760_))
                                                 (_g2401124756_
                                                  _g2403024760_))))
                                         (_g2401124756_ _g2403024760_))))
                                  (_g2400924866_
                                   (lambda (_g2403024816_)
                                     (if (gx#stx-pair? _g2403024816_)
                                         (let ((_e2405624819_
                                                (gx#syntax-e _g2403024816_)))
                                           (let ((_hd2405724823_
                                                  (##car _e2405624819_))
                                                 (_tl2405824826_
                                                  (##cdr _e2405624819_)))
                                             (if (gx#identifier?
                                                  _hd2405724823_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31709_|
                                                      _hd2405724823_)
                                                     (if (gx#stx-pair?
                                                          _tl2405824826_)
                                                         (let ((_e2405924829_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2405824826_)))
                   (let ((_hd2406024833_ (##car _e2405924829_))
                         (_tl2406124836_ (##cdr _e2405924829_)))
                     (if (gx#stx-pair? _tl2406124836_)
                         (let ((_e2406224839_ (gx#syntax-e _tl2406124836_)))
                           (let ((_hd2406324843_ (##car _e2406224839_))
                                 (_tl2406424846_ (##cdr _e2406224839_)))
                             (if (gx#stx-null? _tl2406424846_)
                                 ((lambda (_L24849_ _L24851_)
                                    (cons 'cons:
                                          (cons (_parse123656_ _L24851_)
                                                (cons (_parse123656_ _L24849_)
                                                      '()))))
                                  _hd2406324843_
                                  _hd2406024833_)
                                 (_g2401024812_ _g2403024816_))))
                         (_g2401024812_ _g2403024816_))))
                 (_g2401024812_ _g2403024816_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2401024812_
                                                      _g2403024816_))
                                                 (_g2401024812_
                                                  _g2403024816_))))
                                         (_g2401024812_ _g2403024816_))))
                                  (_g2400824906_
                                   (lambda (_g2403024870_)
                                     (if (gx#stx-pair? _g2403024870_)
                                         (let ((_e2404824873_
                                                (gx#syntax-e _g2403024870_)))
                                           (let ((_hd2404924877_
                                                  (##car _e2404824873_))
                                                 (_tl2405024880_
                                                  (##cdr _e2404824873_)))
                                             (if (gx#identifier?
                                                  _hd2404924877_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31710_|
                                                      _hd2404924877_)
                                                     (if (gx#stx-pair?
                                                          _tl2405024880_)
                                                         (let ((_e2405124883_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2405024880_)))
                   (let ((_hd2405224887_ (##car _e2405124883_))
                         (_tl2405324890_ (##cdr _e2405124883_)))
                     (if (gx#stx-null? _tl2405324890_)
                         ((lambda (_L24893_)
                            (cons 'not: (cons (_parse123656_ _L24893_) '())))
                          _hd2405224887_)
                         (_g2400924866_ _g2403024870_))))
                 (_g2400924866_ _g2403024870_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2400924866_
                                                      _g2403024870_))
                                                 (_g2400924866_
                                                  _g2403024870_))))
                                         (_g2400924866_ _g2403024870_))))
                                  (_g2400724991_
                                   (lambda (_g2403024910_)
                                     (if (gx#stx-pair? _g2403024910_)
                                         (let ((_e2404424913_
                                                (gx#syntax-e _g2403024910_)))
                                           (let ((_hd2404524917_
                                                  (##car _e2404424913_))
                                                 (_tl2404624920_
                                                  (##cdr _e2404424913_)))
                                             (if (gx#identifier?
                                                  _hd2404524917_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31711_|
                                                      _hd2404524917_)
                                                     ((lambda (_L24923_)
                                                        (if (gx#stx-list?
                                                             _L24923_)
                                                            (let* ((_g2493524946_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g2493624942_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2493624942_)))
                           (_g2493424957_
                            (lambda (_g2493624950_)
                              ((lambda ()
                                 (cons 'or:
                                       (gx#stx-map _parse123656_ _L24923_))))))
                           (_g2493324987_
                            (lambda (_g2493624961_)
                              (if (gx#stx-pair? _g2493624961_)
                                  (let ((_e2493824964_
                                         (gx#syntax-e _g2493624961_)))
                                    (let ((_hd2493924968_
                                           (##car _e2493824964_))
                                          (_tl2494024971_
                                           (##cdr _e2493824964_)))
                                      (if (gx#stx-null? _tl2494024971_)
                                          ((lambda (_L24974_)
                                             (_parse123656_ _L24974_))
                                           _hd2493924968_)
                                          (_g2493424957_ _g2493624961_))))
                                  (_g2493424957_ _g2493624961_)))))
                      (_g2493324987_ _L24923_))
                    (_g2400824906_ _g2403024910_)))
              _tl2404624920_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2400824906_
                                                      _g2403024910_))
                                                 (_g2400824906_
                                                  _g2403024910_))))
                                         (_g2400824906_ _g2403024910_))))
                                  (_g2400625076_
                                   (lambda (_g2403024995_)
                                     (if (gx#stx-pair? _g2403024995_)
                                         (let ((_e2404024998_
                                                (gx#syntax-e _g2403024995_)))
                                           (let ((_hd2404125002_
                                                  (##car _e2404024998_))
                                                 (_tl2404225005_
                                                  (##cdr _e2404024998_)))
                                             (if (gx#identifier?
                                                  _hd2404125002_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31712_|
                                                      _hd2404125002_)
                                                     ((lambda (_L25008_)
                                                        (if (gx#stx-list?
                                                             _L25008_)
                                                            (let* ((_g2502025031_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g2502125027_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2502125027_)))
                           (_g2501925042_
                            (lambda (_g2502125035_)
                              ((lambda ()
                                 (cons 'and:
                                       (gx#stx-map _parse123656_ _L25008_))))))
                           (_g2501825072_
                            (lambda (_g2502125046_)
                              (if (gx#stx-pair? _g2502125046_)
                                  (let ((_e2502325049_
                                         (gx#syntax-e _g2502125046_)))
                                    (let ((_hd2502425053_
                                           (##car _e2502325049_))
                                          (_tl2502525056_
                                           (##cdr _e2502325049_)))
                                      (if (gx#stx-null? _tl2502525056_)
                                          ((lambda (_L25059_)
                                             (_parse123656_ _L25059_))
                                           _hd2502425053_)
                                          (_g2501925042_ _g2502125046_))))
                                  (_g2501925042_ _g2502125046_)))))
                      (_g2501825072_ _L25008_))
                    (_g2400724991_ _g2403024995_)))
              _tl2404225005_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2400724991_
                                                      _g2403024995_))
                                                 (_g2400724991_
                                                  _g2403024995_))))
                                         (_g2400724991_ _g2403024995_))))
                                  (_g2400525316_
                                   (lambda (_g2403025080_)
                                     (if (gx#stx-pair? _g2403025080_)
                                         (let ((_e2403325083_
                                                (gx#syntax-e _g2403025080_)))
                                           (let ((_hd2403425087_
                                                  (##car _e2403325083_))
                                                 (_tl2403525090_
                                                  (##cdr _e2403325083_)))
                                             (if (gx#identifier?
                                                  _hd2403425087_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31713_|
                                                      _hd2403425087_)
                                                     (if (gx#stx-pair?
                                                          _tl2403525090_)
                                                         (let ((_e2403625093_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2403525090_)))
                   (let ((_hd2403725097_ (##car _e2403625093_))
                         (_tl2403825100_ (##cdr _e2403625093_)))
                     ((lambda (_L25103_ _L25105_)
                        (let* ((_g2512225154_
                                (lambda (_g2512325150_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2512325150_)))
                               (_g2512125165_
                                (lambda (_g2512325158_)
                                  ((lambda ()
                                     (_parse-error23663_ _hd24003_)))))
                               (_g2512025233_
                                (lambda (_g2512325169_)
                                  (if (gx#stx-pair? _g2512325169_)
                                      (let ((_e2513725172_
                                             (gx#syntax-e _g2512325169_)))
                                        (let ((_hd2513825176_
                                               (##car _e2513725172_))
                                              (_tl2513925179_
                                               (##cdr _e2513725172_)))
                                          (if (gx#stx-datum? _hd2513825176_)
                                              (if (equal? (gx#stx-e
                                                           _hd2513825176_)
                                                          '::)
                                                  (if (gx#stx-pair?
                                                       _tl2513925179_)
                                                      (let ((_e2514025182_
                                                             (gx#syntax-e
                                                              _tl2513925179_)))
                                                        (let ((_hd2514125186_
                                                               (##car _e2514025182_))
                                                              (_tl2514225189_
                                                               (##cdr _e2514025182_)))
                                                          (if (gx#stx-pair?
                                                               _tl2514225189_)
                                                              (let ((_e2514325192_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl2514225189_)))
                        (let ((_hd2514425196_ (##car _e2514325192_))
                              (_tl2514525199_ (##cdr _e2514325192_)))
                          (if (gx#identifier? _hd2514425196_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g31714_|
                                   _hd2514425196_)
                                  (if (gx#stx-pair? _tl2514525199_)
                                      (let ((_e2514625202_
                                             (gx#syntax-e _tl2514525199_)))
                                        (let ((_hd2514725206_
                                               (##car _e2514625202_))
                                              (_tl2514825209_
                                               (##cdr _e2514625202_)))
                                          (if (gx#stx-null? _tl2514825209_)
                                              ((lambda (_L25212_ _L25214_)
                                                 (cons '?:
                                                       (cons _L25105_
                                                             (cons '::
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L25214_
                                 (cons '=>:
                                       (cons (_parse123656_ _L25212_)
                                             '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd2514725206_
                                               _hd2514125186_)
                                              (_g2512125165_ _g2512325169_))))
                                      (_g2512125165_ _g2512325169_))
                                  (_g2512125165_ _g2512325169_))
                              (_g2512125165_ _g2512325169_))))
                      (_g2512125165_ _g2512325169_))))
              (_g2512125165_ _g2512325169_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2512125165_
                                                   _g2512325169_))
                                              (_g2512125165_ _g2512325169_))))
                                      (_g2512125165_ _g2512325169_))))
                               (_g2511925273_
                                (lambda (_g2512325237_)
                                  (if (gx#stx-pair? _g2512325237_)
                                      (let ((_e2512925240_
                                             (gx#syntax-e _g2512325237_)))
                                        (let ((_hd2513025244_
                                               (##car _e2512925240_))
                                              (_tl2513125247_
                                               (##cdr _e2512925240_)))
                                          (if (gx#identifier? _hd2513025244_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g31715_|
                                                   _hd2513025244_)
                                                  (if (gx#stx-pair?
                                                       _tl2513125247_)
                                                      (let ((_e2513225250_
                                                             (gx#syntax-e
                                                              _tl2513125247_)))
                                                        (let ((_hd2513325254_
                                                               (##car _e2513225250_))
                                                              (_tl2513425257_
                                                               (##cdr _e2513225250_)))
                                                          (if (gx#stx-null?
                                                               _tl2513425257_)
                                                              ((lambda (_L25260_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '?:
                               (cons _L25105_
                                     (cons '=>:
                                           (cons (_parse123656_ _L25260_)
                                                 '())))))
                       _hd2513325254_)
                      (_g2512025233_ _g2512325237_))))
              (_g2512025233_ _g2512325237_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2512025233_
                                                   _g2512325237_))
                                              (_g2512025233_ _g2512325237_))))
                                      (_g2512025233_ _g2512325237_))))
                               (_g2511825301_
                                (lambda (_g2512325277_)
                                  (if (gx#stx-pair? _g2512325277_)
                                      (let ((_e2512525280_
                                             (gx#syntax-e _g2512325277_)))
                                        (let ((_hd2512625284_
                                               (##car _e2512525280_))
                                              (_tl2512725287_
                                               (##cdr _e2512525280_)))
                                          (if (gx#stx-null? _tl2512725287_)
                                              ((lambda (_L25290_)
                                                 (cons '?:
                                                       (cons _L25105_
                                                             (cons (_parse123656_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L25290_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd2512625284_)
                                              (_g2511925273_ _g2512325277_))))
                                      (_g2511925273_ _g2512325277_))))
                               (_g2511725312_
                                (lambda (_g2512325305_)
                                  (if (gx#stx-null? _g2512325305_)
                                      ((lambda ()
                                         (cons '?: (cons _L25105_ '()))))
                                      (_g2511825301_ _g2512325305_)))))
                          (_g2511725312_ _L25103_)))
                      _tl2403825100_
                      _hd2403725097_)))
                 (_g2400625076_ _g2403025080_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2400625076_
                                                      _g2403025080_))
                                                 (_g2400625076_
                                                  _g2403025080_))))
                                         (_g2400625076_ _g2403025080_)))))
                             (_g2400525316_ _hd24003_))))
                        (_parse-list23658_
                         (lambda (_body23838_)
                           (let* ((_g2384423872_
                                   (lambda (_g2384523868_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2384523868_)))
                                  (_g2384323883_
                                   (lambda (_g2384523876_)
                                     ((lambda ()
                                        (if (gx#stx-null? _body23838_)
                                            (cons 'null: '())
                                            (if (not (gx#stx-pair?
                                                      _body23838_))
                                                (_parse123656_ _body23838_)
                                                (_parse-error23663_
                                                 _body23838_)))))))
                                  (_g2384223915_
                                   (lambda (_g2384523887_)
                                     (if (gx#stx-pair? _g2384523887_)
                                         (let ((_e2386423890_
                                                (gx#syntax-e _g2384523887_)))
                                           (let ((_hd2386523894_
                                                  (##car _e2386423890_))
                                                 (_tl2386623897_
                                                  (##cdr _e2386423890_)))
                                             ((lambda (_L23900_ _L23902_)
                                                (if (not (gx#ellipsis?
                                                          _L23902_))
                                                    (cons 'cons:
                                                          (cons (_parse123656_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L23902_)
                        (cons (_parse-list23658_ _L23900_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2384323883_
                                                     _g2384523887_)))
                                              _tl2386623897_
                                              _hd2386523894_)))
                                         (_g2384323883_ _g2384523887_))))
                                  (_g2384123959_
                                   (lambda (_g2384523919_)
                                     (if (gx#stx-pair? _g2384523919_)
                                         (let ((_e2385623922_
                                                (gx#syntax-e _g2384523919_)))
                                           (let ((_hd2385723926_
                                                  (##car _e2385623922_))
                                                 (_tl2385823929_
                                                  (##cdr _e2385623922_)))
                                             (if (gx#stx-pair? _tl2385823929_)
                                                 (let ((_e2385923932_
                                                        (gx#syntax-e
                                                         _tl2385823929_)))
                                                   (let ((_hd2386023936_
                                                          (##car _e2385923932_))
                                                         (_tl2386123939_
                                                          (##cdr _e2385923932_)))
                                                     ((lambda (_L23942_
                                                               _L23944_
                                                               _L23945_)
                                                        (if (gx#ellipsis?
                                                             _L23944_)
                                                            (cons 'splice:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_parse123656_ _L23945_)
                                (cons (_parse-list23658_ _L23942_) '())))
                    (_g2384223915_ _g2384523919_)))
              _tl2386123939_
              _hd2386023936_
              _hd2385723926_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2384223915_
                                                  _g2384523919_))))
                                         (_g2384223915_ _g2384523919_))))
                                  (_g2384023999_
                                   (lambda (_g2384523963_)
                                     (if (gx#stx-pair? _g2384523963_)
                                         (let ((_e2384723966_
                                                (gx#syntax-e _g2384523963_)))
                                           (let ((_hd2384823970_
                                                  (##car _e2384723966_))
                                                 (_tl2384923973_
                                                  (##cdr _e2384723966_)))
                                             (if (gx#stx-datum? _hd2384823970_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2384823970_)
                                                             '::)
                                                     (if (gx#stx-pair?
                                                          _tl2384923973_)
                                                         (let ((_e2385023976_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2384923973_)))
                   (let ((_hd2385123980_ (##car _e2385023976_))
                         (_tl2385223983_ (##cdr _e2385023976_)))
                     (if (gx#stx-null? _tl2385223983_)
                         ((lambda (_L23986_) (_parse123656_ _L23986_))
                          _hd2385123980_)
                         (_g2384123959_ _g2384523963_))))
                 (_g2384123959_ _g2384523963_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2384123959_
                                                      _g2384523963_))
                                                 (_g2384123959_
                                                  _g2384523963_))))
                                         (_g2384123959_ _g2384523963_)))))
                             (_g2384023999_ _body23838_))))
                        (_parse-vector23659_
                         (lambda (_body23835_)
                           (if (_simple-vector?23660_ _body23835_)
                               (cons 'simple:
                                     (cons (gx#stx-map
                                            _parse123656_
                                            _body23835_)
                                           '()))
                               (cons 'list:
                                     (cons (_parse-list23658_ _body23835_)
                                           '())))))
                        (_simple-vector?23660_
                         (lambda (_body23772_)
                           (let* ((_g2377623788_
                                   (lambda (_g2377723784_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2377723784_)))
                                  (_g2377523799_
                                   (lambda (_g2377723792_)
                                     ((lambda () (gx#stx-null? _body23772_)))))
                                  (_g2377423831_
                                   (lambda (_g2377723803_)
                                     (if (gx#stx-pair? _g2377723803_)
                                         (let ((_e2378023806_
                                                (gx#syntax-e _g2377723803_)))
                                           (let ((_hd2378123810_
                                                  (##car _e2378023806_))
                                                 (_tl2378223813_
                                                  (##cdr _e2378023806_)))
                                             ((lambda (_L23816_ _L23818_)
                                                (if (not (gx#ellipsis?
                                                          _L23818_))
                                                    (_simple-vector?23660_
                                                     _L23816_)
                                                    '#f))
                                              _tl2378223813_
                                              _hd2378123810_)))
                                         (_g2377523799_ _g2377723803_)))))
                             (_g2377423831_ _body23772_))))
                        (_parse-class-body23661_
                         (lambda (_body23681_)
                           (let _recur23684_ ((_rest23687_ _body23681_))
                             (let* ((_g2369123707_
                                     (lambda (_g2369223703_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g2369223703_)))
                                    (_g2369023718_
                                     (lambda (_g2369223711_)
                                       ((lambda ()
                                          (if (gx#stx-null? _rest23687_)
                                              '()
                                              (_parse-error23663_
                                               _rest23687_))))))
                                    (_g2368923768_
                                     (lambda (_g2369223722_)
                                       (if (gx#stx-pair? _g2369223722_)
                                           (let ((_e2369623725_
                                                  (gx#syntax-e _g2369223722_)))
                                             (let ((_hd2369723729_
                                                    (##car _e2369623725_))
                                                   (_tl2369823732_
                                                    (##cdr _e2369623725_)))
                                               (if (gx#stx-pair?
                                                    _tl2369823732_)
                                                   (let ((_e2369923735_
                                                          (gx#syntax-e
                                                           _tl2369823732_)))
                                                     (let ((_hd2370023739_
                                                            (##car _e2369923735_))
                                                           (_tl2370123742_
                                                            (##cdr _e2369923735_)))
                                                       ((lambda (_L23745_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L23747_
                         _L23748_)
                  (if (gx#stx-keyword? _L23748_)
                      (cons* _L23748_
                             (_parse123656_ _L23747_)
                             (_recur23684_ _L23745_))
                      (_g2369023718_ _g2369223722_)))
                _tl2370123742_
                _hd2370023739_
                _hd2369723729_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2369023718_
                                                    _g2369223722_))))
                                           (_g2369023718_ _g2369223722_)))))
                               (_g2368923768_ _rest23687_)))))
                        (_parse-qq23662_
                         (lambda (_hd23668_)
                           (let ((_g2367023677_
                                  (lambda (_g2367123673_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g2367123673_))))
                             (_g2367023677_ _hd23668_))))
                        (_parse-error23663_
                         (lambda (_hd23665_)
                           (apply gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; illegal pattern"
                                  (if _match-stx23654_
                                      (cons _match-stx23654_
                                            (cons _stx23652_
                                                  (cons _hd23665_ '())))
                                      (cons _stx23652_
                                            (cons _hd23665_ '())))))))
                 (_parse123656_ _stx23652_)))))
        (lambda _g31717_
          (let ((_g31716_ (length _g31717_)))
            (cond ((fx= _g31716_ 1)
                   (apply (lambda (_stx25324_)
                            (let ((_match-stx25327_ '#f))
                              (_opt-lambda2365025320_
                               _stx25324_
                               _match-stx25327_)))
                          _g31717_))
                  ((fx= _g31716_ 2) (apply _opt-lambda2365025320_ _g31717_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    |gerbil/core$<match>[1]#parse-match-pattern|
                    _g31717_)))))))
    (define |gerbil/core$<match>[1]#match-pattern?|
      (lambda (_stx23636_)
        (call-with-escape
         (lambda (_E23640_)
           (with-exception-handler
            (let ((_E!23643_ (current-exception-handler)))
              (lambda (_e23646_)
                (if (gx#syntax-error? _e23646_)
                    (_E23640_ '#f)
                    (_E!23643_ _e23646_))))
            (lambda ()
              (begin
                (|gerbil/core$<match>[1]#parse-match-pattern| _stx23636_)
                '#t)))))))
    (define |gerbil/core$<match>[1]#match-pattern-vars|
      (lambda (_ptree22425_)
        (letrec ((_loop22428_
                  (lambda (_ptree22703_ _vars22705_ _K22706_)
                    (let* ((_g2271922820_
                            (lambda (_g2272022816_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2272022816_)))
                           (_g2271822831_
                            (lambda (_g2272022824_)
                              ((lambda () (_K22706_ _vars22705_)))))
                           (_g2271722878_
                            (lambda (_g2272022835_)
                              (if (gx#stx-pair? _g2272022835_)
                                  (let ((_e2280922838_
                                         (gx#syntax-e _g2272022835_)))
                                    (let ((_hd2281022842_
                                           (##car _e2280922838_))
                                          (_tl2281122845_
                                           (##cdr _e2280922838_)))
                                      (if (gx#stx-datum? _hd2281022842_)
                                          (if (equal? (gx#stx-e _hd2281022842_)
                                                      'var:)
                                              (if (gx#stx-pair? _tl2281122845_)
                                                  (let ((_e2281222848_
                                                         (gx#syntax-e
                                                          _tl2281122845_)))
                                                    (let ((_hd2281322852_
                                                           (##car _e2281222848_))
                                                          (_tl2281422855_
                                                           (##cdr _e2281222848_)))
                                                      (if (gx#stx-null?
                                                           _tl2281422855_)
                                                          ((lambda (_L22858_)
                                                             (if (find (lambda (_g2287222874_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#bound-identifier=?
                                  _g2287222874_
                                  _L22858_))
                               _vars22705_)
                         (_K22706_ _vars22705_)
                         (_K22706_ (cons _L22858_ _vars22705_))))
                   _hd2281322852_)
                  (_g2271822831_ _g2272022835_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2271822831_
                                                   _g2272022835_))
                                              (_g2271822831_ _g2272022835_))
                                          (_g2271822831_ _g2272022835_))))
                                  (_g2271822831_ _g2272022835_))))
                           (_g2271622932_
                            (lambda (_g2272022882_)
                              (if (gx#stx-pair? _g2272022882_)
                                  (let ((_e2279922885_
                                         (gx#syntax-e _g2272022882_)))
                                    (let ((_hd2280022889_
                                           (##car _e2279922885_))
                                          (_tl2280122892_
                                           (##cdr _e2279922885_)))
                                      (if (gx#stx-datum? _hd2280022889_)
                                          (if (equal? (gx#stx-e _hd2280022889_)
                                                      'apply:)
                                              (if (gx#stx-pair? _tl2280122892_)
                                                  (let ((_e2280222895_
                                                         (gx#syntax-e
                                                          _tl2280122892_)))
                                                    (let ((_hd2280322899_
                                                           (##car _e2280222895_))
                                                          (_tl2280422902_
                                                           (##cdr _e2280222895_)))
                                                      (if (gx#stx-pair?
                                                           _tl2280422902_)
                                                          (let ((_e2280522905_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2280422902_)))
                    (let ((_hd2280622909_ (##car _e2280522905_))
                          (_tl2280722912_ (##cdr _e2280522905_)))
                      (if (gx#stx-null? _tl2280722912_)
                          ((lambda (_L22915_ _L22917_)
                             (_loop22428_ _L22915_ _vars22705_ _K22706_))
                           _hd2280622909_
                           _hd2280322899_)
                          (_g2271722878_ _g2272022882_))))
                  (_g2271722878_ _g2272022882_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2271722878_
                                                   _g2272022882_))
                                              (_g2271722878_ _g2272022882_))
                                          (_g2271722878_ _g2272022882_))))
                                  (_g2271722878_ _g2272022882_))))
                           (_g2271522984_
                            (lambda (_g2272022936_)
                              (if (gx#stx-pair? _g2272022936_)
                                  (let ((_e2278822939_
                                         (gx#syntax-e _g2272022936_)))
                                    (let ((_hd2278922943_
                                           (##car _e2278822939_))
                                          (_tl2279022946_
                                           (##cdr _e2278822939_)))
                                      (if (gx#stx-datum? _hd2278922943_)
                                          (if (equal? (gx#stx-e _hd2278922943_)
                                                      'class:)
                                              (if (gx#stx-pair? _tl2279022946_)
                                                  (let ((_e2279122949_
                                                         (gx#syntax-e
                                                          _tl2279022946_)))
                                                    (let ((_hd2279222953_
                                                           (##car _e2279122949_))
                                                          (_tl2279322956_
                                                           (##cdr _e2279122949_)))
                                                      (if (gx#stx-pair?
                                                           _tl2279322956_)
                                                          (let ((_e2279422959_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2279322956_)))
                    (let ((_hd2279522963_ (##car _e2279422959_))
                          (_tl2279622966_ (##cdr _e2279422959_)))
                      (if (gx#stx-null? _tl2279622966_)
                          ((lambda (_L22969_)
                             (_loop-class-list22432_
                              _L22969_
                              _vars22705_
                              _K22706_))
                           _hd2279522963_)
                          (_g2271622932_ _g2272022936_))))
                  (_g2271622932_ _g2272022936_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2271622932_
                                                   _g2272022936_))
                                              (_g2271622932_ _g2272022936_))
                                          (_g2271622932_ _g2272022936_))))
                                  (_g2271622932_ _g2272022936_))))
                           (_g2271423036_
                            (lambda (_g2272022988_)
                              (if (gx#stx-pair? _g2272022988_)
                                  (let ((_e2277822991_
                                         (gx#syntax-e _g2272022988_)))
                                    (let ((_hd2277922995_
                                           (##car _e2277822991_))
                                          (_tl2278022998_
                                           (##cdr _e2277822991_)))
                                      (if (gx#stx-datum? _hd2277922995_)
                                          (if (equal? (gx#stx-e _hd2277922995_)
                                                      'struct:)
                                              (if (gx#stx-pair? _tl2278022998_)
                                                  (let ((_e2278123001_
                                                         (gx#syntax-e
                                                          _tl2278022998_)))
                                                    (let ((_hd2278223005_
                                                           (##car _e2278123001_))
                                                          (_tl2278323008_
                                                           (##cdr _e2278123001_)))
                                                      (if (gx#stx-pair?
                                                           _tl2278323008_)
                                                          (let ((_e2278423011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2278323008_)))
                    (let ((_hd2278523015_ (##car _e2278423011_))
                          (_tl2278623018_ (##cdr _e2278423011_)))
                      (if (gx#stx-null? _tl2278623018_)
                          ((lambda (_L23021_)
                             (_loop-vector22430_
                              _L23021_
                              _vars22705_
                              _K22706_))
                           _hd2278523015_)
                          (_g2271522984_ _g2272022988_))))
                  (_g2271522984_ _g2272022988_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2271522984_
                                                   _g2272022988_))
                                              (_g2271522984_ _g2272022988_))
                                          (_g2271522984_ _g2272022988_))))
                                  (_g2271522984_ _g2272022988_))))
                           (_g2271323082_
                            (lambda (_g2272023040_)
                              (if (gx#stx-pair? _g2272023040_)
                                  (let ((_e2277123043_
                                         (gx#syntax-e _g2272023040_)))
                                    (let ((_hd2277223047_
                                           (##car _e2277123043_))
                                          (_tl2277323050_
                                           (##cdr _e2277123043_)))
                                      (if (gx#stx-pair? _tl2277323050_)
                                          (let ((_e2277423053_
                                                 (gx#syntax-e _tl2277323050_)))
                                            (let ((_hd2277523057_
                                                   (##car _e2277423053_))
                                                  (_tl2277623060_
                                                   (##cdr _e2277423053_)))
                                              (if (gx#stx-null? _tl2277623060_)
                                                  ((lambda (_L23063_ _L23065_)
                                                     (if (let ((_$e23078_
                                                                (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'values:
                         _L23065_)))
                   (if _$e23078_ _$e23078_ (gx#stx-eq? 'vector: _L23065_)))
                 (_loop-vector22430_ _L23063_ _vars22705_ _K22706_)
                 (_g2271423036_ _g2272023040_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _hd2277523057_
                                                   _hd2277223047_)
                                                  (_g2271423036_
                                                   _g2272023040_))))
                                          (_g2271423036_ _g2272023040_))))
                                  (_g2271423036_ _g2272023040_))))
                           (_g2271223122_
                            (lambda (_g2272023086_)
                              (if (gx#stx-pair? _g2272023086_)
                                  (let ((_e2276323089_
                                         (gx#syntax-e _g2272023086_)))
                                    (let ((_hd2276423093_
                                           (##car _e2276323089_))
                                          (_tl2276523096_
                                           (##cdr _e2276323089_)))
                                      (if (gx#stx-datum? _hd2276423093_)
                                          (if (equal? (gx#stx-e _hd2276423093_)
                                                      'box:)
                                              (if (gx#stx-pair? _tl2276523096_)
                                                  (let ((_e2276623099_
                                                         (gx#syntax-e
                                                          _tl2276523096_)))
                                                    (let ((_hd2276723103_
                                                           (##car _e2276623099_))
                                                          (_tl2276823106_
                                                           (##cdr _e2276623099_)))
                                                      (if (gx#stx-null?
                                                           _tl2276823106_)
                                                          ((lambda (_L23109_)
                                                             (_loop22428_
                                                              _L23109_
                                                              _vars22705_
                                                              _K22706_))
                                                           _hd2276723103_)
                                                          (_g2271323082_
                                                           _g2272023086_))))
                                                  (_g2271323082_
                                                   _g2272023086_))
                                              (_g2271323082_ _g2272023086_))
                                          (_g2271323082_ _g2272023086_))))
                                  (_g2271323082_ _g2272023086_))))
                           (_g2271123181_
                            (lambda (_g2272023126_)
                              (if (gx#stx-pair? _g2272023126_)
                                  (let ((_e2275323129_
                                         (gx#syntax-e _g2272023126_)))
                                    (let ((_hd2275423133_
                                           (##car _e2275323129_))
                                          (_tl2275523136_
                                           (##cdr _e2275323129_)))
                                      (if (gx#stx-datum? _hd2275423133_)
                                          (if (equal? (gx#stx-e _hd2275423133_)
                                                      'splice:)
                                              (if (gx#stx-pair? _tl2275523136_)
                                                  (let ((_e2275623139_
                                                         (gx#syntax-e
                                                          _tl2275523136_)))
                                                    (let ((_hd2275723143_
                                                           (##car _e2275623139_))
                                                          (_tl2275823146_
                                                           (##cdr _e2275623139_)))
                                                      (if (gx#stx-pair?
                                                           _tl2275823146_)
                                                          (let ((_e2275923149_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2275823146_)))
                    (let ((_hd2276023153_ (##car _e2275923149_))
                          (_tl2276123156_ (##cdr _e2275923149_)))
                      (if (gx#stx-null? _tl2276123156_)
                          ((lambda (_L23159_ _L23161_)
                             (_loop22428_
                              _L23161_
                              _vars22705_
                              (lambda (_g2317523177_)
                                (_loop22428_
                                 _L23159_
                                 _g2317523177_
                                 _K22706_))))
                           _hd2276023153_
                           _hd2275723143_)
                          (_g2271223122_ _g2272023126_))))
                  (_g2271223122_ _g2272023126_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2271223122_
                                                   _g2272023126_))
                                              (_g2271223122_ _g2272023126_))
                                          (_g2271223122_ _g2272023126_))))
                                  (_g2271223122_ _g2272023126_))))
                           (_g2271023240_
                            (lambda (_g2272023185_)
                              (if (gx#stx-pair? _g2272023185_)
                                  (let ((_e2274223188_
                                         (gx#syntax-e _g2272023185_)))
                                    (let ((_hd2274323192_
                                           (##car _e2274223188_))
                                          (_tl2274423195_
                                           (##cdr _e2274223188_)))
                                      (if (gx#stx-datum? _hd2274323192_)
                                          (if (equal? (gx#stx-e _hd2274323192_)
                                                      'cons:)
                                              (if (gx#stx-pair? _tl2274423195_)
                                                  (let ((_e2274523198_
                                                         (gx#syntax-e
                                                          _tl2274423195_)))
                                                    (let ((_hd2274623202_
                                                           (##car _e2274523198_))
                                                          (_tl2274723205_
                                                           (##cdr _e2274523198_)))
                                                      (if (gx#stx-pair?
                                                           _tl2274723205_)
                                                          (let ((_e2274823208_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2274723205_)))
                    (let ((_hd2274923212_ (##car _e2274823208_))
                          (_tl2275023215_ (##cdr _e2274823208_)))
                      (if (gx#stx-null? _tl2275023215_)
                          ((lambda (_L23218_ _L23220_)
                             (_loop22428_
                              _L23220_
                              _vars22705_
                              (lambda (_g2323423236_)
                                (_loop22428_
                                 _L23218_
                                 _g2323423236_
                                 _K22706_))))
                           _hd2274923212_
                           _hd2274623202_)
                          (_g2271123181_ _g2272023185_))))
                  (_g2271123181_ _g2272023185_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2271123181_
                                                   _g2272023185_))
                                              (_g2271123181_ _g2272023185_))
                                          (_g2271123181_ _g2272023185_))))
                                  (_g2271123181_ _g2272023185_))))
                           (_g2270923280_
                            (lambda (_g2272023244_)
                              (if (gx#stx-pair? _g2272023244_)
                                  (let ((_e2273423247_
                                         (gx#syntax-e _g2272023244_)))
                                    (let ((_hd2273523251_
                                           (##car _e2273423247_))
                                          (_tl2273623254_
                                           (##cdr _e2273423247_)))
                                      (if (gx#stx-datum? _hd2273523251_)
                                          (if (equal? (gx#stx-e _hd2273523251_)
                                                      'not:)
                                              (if (gx#stx-pair? _tl2273623254_)
                                                  (let ((_e2273723257_
                                                         (gx#syntax-e
                                                          _tl2273623254_)))
                                                    (let ((_hd2273823261_
                                                           (##car _e2273723257_))
                                                          (_tl2273923264_
                                                           (##cdr _e2273723257_)))
                                                      (if (gx#stx-null?
                                                           _tl2273923264_)
                                                          ((lambda (_L23267_)
                                                             (_loop22428_
                                                              _L23267_
                                                              _vars22705_
                                                              _K22706_))
                                                           _hd2273823261_)
                                                          (_g2271023240_
                                                           _g2272023244_))))
                                                  (_g2271023240_
                                                   _g2272023244_))
                                              (_g2271023240_ _g2272023244_))
                                          (_g2271023240_ _g2272023244_))))
                                  (_g2271023240_ _g2272023244_))))
                           (_g2270823379_
                            (lambda (_g2272023284_)
                              (if (gx#stx-pair? _g2272023284_)
                                  (let ((_e2273023287_
                                         (gx#syntax-e _g2272023284_)))
                                    (let ((_hd2273123291_
                                           (##car _e2273023287_))
                                          (_tl2273223294_
                                           (##cdr _e2273023287_)))
                                      ((lambda (_L23297_ _L23299_)
                                         (if (let ((_$e23310_
                                                    (gx#stx-eq?
                                                     'and:
                                                     _L23299_)))
                                               (if _$e23310_
                                                   _$e23310_
                                                   (gx#stx-eq? 'or: _L23299_)))
                                             (let* ((_g2331523327_
                                                     (lambda (_g2331623323_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g2331623323_)))
                                                    (_g2331423338_
                                                     (lambda (_g2331623331_)
                                                       ((lambda ()
                                                          (_K22706_
                                                           _vars22705_)))))
                                                    (_g2331323375_
                                                     (lambda (_g2331623342_)
                                                       (if (gx#stx-pair?
                                                            _g2331623342_)
                                                           (let ((_e2331923345_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g2331623342_)))
                     (let ((_hd2332023349_ (##car _e2331923345_))
                           (_tl2332123352_ (##cdr _e2331923345_)))
                       ((lambda (_L23355_ _L23357_)
                          (_loop22428_
                           _L23357_
                           _vars22705_
                           (lambda (_g2336923371_)
                             (_loop22428_
                              (cons _L23299_ _L23355_)
                              _g2336923371_
                              _K22706_))))
                        _tl2332123352_
                        _hd2332023349_)))
                   (_g2331423338_ _g2331623342_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2331323375_ _L23297_))
                                             (_g2270923280_ _g2272023284_)))
                                       _tl2273223294_
                                       _hd2273123291_)))
                                  (_g2270923280_ _g2272023284_))))
                           (_g2270723632_
                            (lambda (_g2272023383_)
                              (if (gx#stx-pair? _g2272023383_)
                                  (let ((_e2272223386_
                                         (gx#syntax-e _g2272023383_)))
                                    (let ((_hd2272323390_
                                           (##car _e2272223386_))
                                          (_tl2272423393_
                                           (##cdr _e2272223386_)))
                                      (if (gx#stx-datum? _hd2272323390_)
                                          (if (equal? (gx#stx-e _hd2272323390_)
                                                      '?:)
                                              (if (gx#stx-pair? _tl2272423393_)
                                                  (let ((_e2272523396_
                                                         (gx#syntax-e
                                                          _tl2272423393_)))
                                                    (let ((_hd2272623400_
                                                           (##car _e2272523396_))
                                                          (_tl2272723403_
                                                           (##cdr _e2272523396_)))
                                                      ((lambda (_L23406_)
                                                         (let* ((_g2342223459_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2342323455_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2342323455_)))
                        (_g2342123470_
                         (lambda (_g2342323463_)
                           ((lambda () (_K22706_ _vars22705_)))))
                        (_g2342023548_
                         (lambda (_g2342323474_)
                           (if (gx#stx-pair? _g2342323474_)
                               (let ((_e2343923477_
                                      (gx#syntax-e _g2342323474_)))
                                 (let ((_hd2344023481_ (##car _e2343923477_))
                                       (_tl2344123484_ (##cdr _e2343923477_)))
                                   (if (gx#stx-pair? _tl2344123484_)
                                       (let ((_e2344223487_
                                              (gx#syntax-e _tl2344123484_)))
                                         (let ((_hd2344323491_
                                                (##car _e2344223487_))
                                               (_tl2344423494_
                                                (##cdr _e2344223487_)))
                                           (if (gx#stx-datum? _hd2344323491_)
                                               (if (equal? (gx#stx-e
                                                            _hd2344323491_)
                                                           '::)
                                                   (if (gx#stx-pair?
                                                        _tl2344423494_)
                                                       (let ((_e2344523497_
                                                              (gx#syntax-e
                                                               _tl2344423494_)))
                                                         (let ((_hd2344623501_
                                                                (##car _e2344523497_))
                                                               (_tl2344723504_
                                                                (##cdr _e2344523497_)))
                                                           (if (gx#stx-pair?
                                                                _tl2344723504_)
                                                               (let ((_e2344823507_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2344723504_)))
                         (let ((_hd2344923511_ (##car _e2344823507_))
                               (_tl2345023514_ (##cdr _e2344823507_)))
                           (if (gx#stx-datum? _hd2344923511_)
                               (if (equal? (gx#stx-e _hd2344923511_) '=>:)
                                   (if (gx#stx-pair? _tl2345023514_)
                                       (let ((_e2345123517_
                                              (gx#syntax-e _tl2345023514_)))
                                         (let ((_hd2345223521_
                                                (##car _e2345123517_))
                                               (_tl2345323524_
                                                (##cdr _e2345123517_)))
                                           (if (gx#stx-null? _tl2345323524_)
                                               ((lambda (_L23527_)
                                                  (_loop22428_
                                                   _L23527_
                                                   _vars22705_
                                                   _K22706_))
                                                _hd2345223521_)
                                               (_g2342123470_ _g2342323474_))))
                                       (_g2342123470_ _g2342323474_))
                                   (_g2342123470_ _g2342323474_))
                               (_g2342123470_ _g2342323474_))))
                       (_g2342123470_ _g2342323474_))))
               (_g2342123470_ _g2342323474_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2342123470_
                                                    _g2342323474_))
                                               (_g2342123470_ _g2342323474_))))
                                       (_g2342123470_ _g2342323474_))))
                               (_g2342123470_ _g2342323474_))))
                        (_g2341923600_
                         (lambda (_g2342323552_)
                           (if (gx#stx-pair? _g2342323552_)
                               (let ((_e2342923555_
                                      (gx#syntax-e _g2342323552_)))
                                 (let ((_hd2343023559_ (##car _e2342923555_))
                                       (_tl2343123562_ (##cdr _e2342923555_)))
                                   (if (gx#stx-pair? _tl2343123562_)
                                       (let ((_e2343223565_
                                              (gx#syntax-e _tl2343123562_)))
                                         (let ((_hd2343323569_
                                                (##car _e2343223565_))
                                               (_tl2343423572_
                                                (##cdr _e2343223565_)))
                                           (if (gx#stx-datum? _hd2343323569_)
                                               (if (equal? (gx#stx-e
                                                            _hd2343323569_)
                                                           '=>:)
                                                   (if (gx#stx-pair?
                                                        _tl2343423572_)
                                                       (let ((_e2343523575_
                                                              (gx#syntax-e
                                                               _tl2343423572_)))
                                                         (let ((_hd2343623579_
                                                                (##car _e2343523575_))
                                                               (_tl2343723582_
                                                                (##cdr _e2343523575_)))
                                                           (if (gx#stx-null?
                                                                _tl2343723582_)
                                                               ((lambda (_L23585_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_loop22428_ _L23585_ _vars22705_ _K22706_))
                        _hd2343623579_)
                       (_g2342023548_ _g2342323552_))))
               (_g2342023548_ _g2342323552_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2342023548_
                                                    _g2342323552_))
                                               (_g2342023548_ _g2342323552_))))
                                       (_g2342023548_ _g2342323552_))))
                               (_g2342023548_ _g2342323552_))))
                        (_g2341823628_
                         (lambda (_g2342323604_)
                           (if (gx#stx-pair? _g2342323604_)
                               (let ((_e2342523607_
                                      (gx#syntax-e _g2342323604_)))
                                 (let ((_hd2342623611_ (##car _e2342523607_))
                                       (_tl2342723614_ (##cdr _e2342523607_)))
                                   (if (gx#stx-null? _tl2342723614_)
                                       ((lambda (_L23617_)
                                          (_loop22428_
                                           _L23617_
                                           _vars22705_
                                           _K22706_))
                                        _hd2342623611_)
                                       (_g2341923600_ _g2342323604_))))
                               (_g2341923600_ _g2342323604_)))))
                   (_g2341823628_ _L23406_)))
               _tl2272723403_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2270823379_
                                                   _g2272023383_))
                                              (_g2270823379_ _g2272023383_))
                                          (_g2270823379_ _g2272023383_))))
                                  (_g2270823379_ _g2272023383_)))))
                      (_g2270723632_ _ptree22703_))))
                 (_loop-vector22430_
                  (lambda (_body22591_ _vars22593_ _K22594_)
                    (let* ((_g2259722618_
                            (lambda (_g2259822614_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2259822614_)))
                           (_g2259622659_
                            (lambda (_g2259822622_)
                              (if (gx#stx-pair? _g2259822622_)
                                  (let ((_e2260722625_
                                         (gx#syntax-e _g2259822622_)))
                                    (let ((_hd2260822629_
                                           (##car _e2260722625_))
                                          (_tl2260922632_
                                           (##cdr _e2260722625_)))
                                      (if (gx#stx-datum? _hd2260822629_)
                                          (if (equal? (gx#stx-e _hd2260822629_)
                                                      'list:)
                                              (if (gx#stx-pair? _tl2260922632_)
                                                  (let ((_e2261022635_
                                                         (gx#syntax-e
                                                          _tl2260922632_)))
                                                    (let ((_hd2261122639_
                                                           (##car _e2261022635_))
                                                          (_tl2261222642_
                                                           (##cdr _e2261022635_)))
                                                      (if (gx#stx-null?
                                                           _tl2261222642_)
                                                          ((lambda (_L22645_)
                                                             (_loop22428_
                                                              _L22645_
                                                              _vars22593_
                                                              _K22594_))
                                                           _hd2261122639_)
                                                          (_g2259722618_
                                                           _g2259822622_))))
                                                  (_g2259722618_
                                                   _g2259822622_))
                                              (_g2259722618_ _g2259822622_))
                                          (_g2259722618_ _g2259822622_))))
                                  (_g2259722618_ _g2259822622_))))
                           (_g2259522699_
                            (lambda (_g2259822663_)
                              (if (gx#stx-pair? _g2259822663_)
                                  (let ((_e2260022666_
                                         (gx#syntax-e _g2259822663_)))
                                    (let ((_hd2260122670_
                                           (##car _e2260022666_))
                                          (_tl2260222673_
                                           (##cdr _e2260022666_)))
                                      (if (gx#stx-datum? _hd2260122670_)
                                          (if (equal? (gx#stx-e _hd2260122670_)
                                                      'simple:)
                                              (if (gx#stx-pair? _tl2260222673_)
                                                  (let ((_e2260322676_
                                                         (gx#syntax-e
                                                          _tl2260222673_)))
                                                    (let ((_hd2260422680_
                                                           (##car _e2260322676_))
                                                          (_tl2260522683_
                                                           (##cdr _e2260322676_)))
                                                      (if (gx#stx-null?
                                                           _tl2260522683_)
                                                          ((lambda (_L22686_)
                                                             (_loop-list22431_
                                                              _L22686_
                                                              _vars22593_
                                                              _K22594_))
                                                           _hd2260422680_)
                                                          (_g2259622659_
                                                           _g2259822663_))))
                                                  (_g2259622659_
                                                   _g2259822663_))
                                              (_g2259622659_ _g2259822663_))
                                          (_g2259622659_ _g2259822663_))))
                                  (_g2259622659_ _g2259822663_)))))
                      (_g2259522699_ _body22591_))))
                 (_loop-list22431_
                  (lambda (_rest22521_ _vars22523_ _K22524_)
                    (let* ((_g2252722539_
                            (lambda (_g2252822535_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2252822535_)))
                           (_g2252622550_
                            (lambda (_g2252822543_)
                              ((lambda () (_K22524_ _vars22523_)))))
                           (_g2252522587_
                            (lambda (_g2252822554_)
                              (if (gx#stx-pair? _g2252822554_)
                                  (let ((_e2253122557_
                                         (gx#syntax-e _g2252822554_)))
                                    (let ((_hd2253222561_
                                           (##car _e2253122557_))
                                          (_tl2253322564_
                                           (##cdr _e2253122557_)))
                                      ((lambda (_L22567_ _L22569_)
                                         (_loop22428_
                                          _L22569_
                                          _vars22523_
                                          (lambda (_g2258122583_)
                                            (_loop-list22431_
                                             _L22567_
                                             _g2258122583_
                                             _K22524_))))
                                       _tl2253322564_
                                       _hd2253222561_)))
                                  (_g2252622550_ _g2252822554_)))))
                      (_g2252522587_ _rest22521_))))
                 (_loop-class-list22432_
                  (lambda (_rest22434_ _vars22436_ _K22437_)
                    (let* ((_g2244022455_
                            (lambda (_g2244122451_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2244122451_)))
                           (_g2243922466_
                            (lambda (_g2244122459_)
                              ((lambda () (_K22437_ _vars22436_)))))
                           (_g2243822517_
                            (lambda (_g2244122470_)
                              (if (gx#stx-pair? _g2244122470_)
                                  (let ((_e2244422473_
                                         (gx#syntax-e _g2244122470_)))
                                    (let ((_hd2244522477_
                                           (##car _e2244422473_))
                                          (_tl2244622480_
                                           (##cdr _e2244422473_)))
                                      (if (gx#stx-pair? _tl2244622480_)
                                          (let ((_e2244722483_
                                                 (gx#syntax-e _tl2244622480_)))
                                            (let ((_hd2244822487_
                                                   (##car _e2244722483_))
                                                  (_tl2244922490_
                                                   (##cdr _e2244722483_)))
                                              ((lambda (_L22493_ _L22495_)
                                                 (_loop22428_
                                                  _L22495_
                                                  _vars22436_
                                                  (lambda (_g2251122513_)
                                                    (_loop-class-list22432_
                                                     _L22493_
                                                     _g2251122513_
                                                     _K22437_))))
                                               _tl2244922490_
                                               _hd2244822487_)))
                                          (_g2243922466_ _g2244122470_))))
                                  (_g2243922466_ _g2244122470_)))))
                      (_g2243822517_ _rest22434_)))))
          (_loop22428_ _ptree22425_ '() values))))
    (define |gerbil/core$<match>[1]#generate-match1|
      (lambda (_stx19241_ _tgt19243_ _ptree19244_ _K19245_ _E19246_)
        (letrec ((_generate119248_
                  (lambda (_tgt20778_ _ptree20780_ _K20781_ _E20782_)
                    (let* ((_g2078420792_
                            (lambda (_g2078520788_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2078520788_)))
                           (_g2078322421_
                            (lambda (_g2078520796_)
                              ((lambda (_L20799_)
                                 (let ()
                                   (let* ((_g2082620952_
                                           (lambda (_g2082720948_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2082720948_)))
                                          (_g2082520973_
                                           (lambda (_g2082720956_)
                                             (if (gx#stx-pair? _g2082720956_)
                                                 (let ((_e2094420959_
                                                        (gx#syntax-e
                                                         _g2082720956_)))
                                                   (let ((_hd2094520963_
                                                          (##car _e2094420959_))
                                                         (_tl2094620966_
                                                          (##cdr _e2094420959_)))
                                                     (if (gx#stx-datum?
                                                          _hd2094520963_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2094520963_)
                             'any:)
                     (if (gx#stx-null? _tl2094620966_)
                         ((lambda () _K20781_))
                         (_g2082620952_ _g2082720956_))
                     (_g2082620952_ _g2082720956_))
                 (_g2082620952_ _g2082720956_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2082620952_
                                                  _g2082720956_))))
                                          (_g2082421016_
                                           (lambda (_g2082720977_)
                                             (if (gx#stx-pair? _g2082720977_)
                                                 (let ((_e2093820980_
                                                        (gx#syntax-e
                                                         _g2082720977_)))
                                                   (let ((_hd2093920984_
                                                          (##car _e2093820980_))
                                                         (_tl2094020987_
                                                          (##cdr _e2093820980_)))
                                                     (if (gx#stx-datum?
                                                          _hd2093920984_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2093920984_)
                             'var:)
                     (if (gx#stx-pair? _tl2094020987_)
                         (let ((_e2094120990_ (gx#syntax-e _tl2094020987_)))
                           (let ((_hd2094220994_ (##car _e2094120990_))
                                 (_tl2094320997_ (##cdr _e2094120990_)))
                             (if (gx#stx-null? _tl2094320997_)
                                 ((lambda (_L21000_)
                                    (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (cons _L21000_
                                                            (cons _L20799_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _K20781_ '()))))
                                  _hd2094220994_)
                                 (_g2082520973_ _g2082720977_))))
                         (_g2082520973_ _g2082720977_))
                     (_g2082520973_ _g2082720977_))
                 (_g2082520973_ _g2082720977_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2082520973_
                                                  _g2082720977_))))
                                          (_g2082321101_
                                           (lambda (_g2082721020_)
                                             (if (gx#stx-pair? _g2082721020_)
                                                 (let ((_e2092821023_
                                                        (gx#syntax-e
                                                         _g2082721020_)))
                                                   (let ((_hd2092921027_
                                                          (##car _e2092821023_))
                                                         (_tl2093021030_
                                                          (##cdr _e2092821023_)))
                                                     (if (gx#stx-datum?
                                                          _hd2092921027_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2092921027_)
                             'apply:)
                     (if (gx#stx-pair? _tl2093021030_)
                         (let ((_e2093121033_ (gx#syntax-e _tl2093021030_)))
                           (let ((_hd2093221037_ (##car _e2093121033_))
                                 (_tl2093321040_ (##cdr _e2093121033_)))
                             (if (gx#stx-pair? _tl2093321040_)
                                 (let ((_e2093421043_
                                        (gx#syntax-e _tl2093321040_)))
                                   (let ((_hd2093521047_ (##car _e2093421043_))
                                         (_tl2093621050_
                                          (##cdr _e2093421043_)))
                                     (if (gx#stx-null? _tl2093621050_)
                                         ((lambda (_L21053_ _L21055_)
                                            (let* ((_g2107021078_
                                                    (lambda (_g2107121074_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g2107121074_)))
                                                   (_g2106921097_
                                                    (lambda (_g2107121082_)
                                                      ((lambda (_L21085_)
                                                         (let ()
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons (cons (cons _L21085_
                                           (cons (cons _L21055_
                                                       (cons _L20799_ '()))
                                                 '()))
                                     '())
                               (cons (_generate119248_
                                      _L21085_
                                      _L21053_
                                      _K20781_
                                      _E20782_)
                                     '())))))
               _g2107121082_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2106921097_
                                               (gx#genident 'e))))
                                          _hd2093521047_
                                          _hd2093221037_)
                                         (_g2082421016_ _g2082721020_))))
                                 (_g2082421016_ _g2082721020_))))
                         (_g2082421016_ _g2082721020_))
                     (_g2082421016_ _g2082721020_))
                 (_g2082421016_ _g2082721020_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2082421016_
                                                  _g2082721020_))))
                                          (_g2082221183_
                                           (lambda (_g2082721105_)
                                             (if (gx#stx-pair? _g2082721105_)
                                                 (let ((_e2092021108_
                                                        (gx#syntax-e
                                                         _g2082721105_)))
                                                   (let ((_hd2092121112_
                                                          (##car _e2092021108_))
                                                         (_tl2092221115_
                                                          (##cdr _e2092021108_)))
                                                     (if (gx#stx-datum?
                                                          _hd2092121112_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2092121112_)
                             'datum:)
                     (if (gx#stx-pair? _tl2092221115_)
                         (let ((_e2092321118_ (gx#syntax-e _tl2092221115_)))
                           (let ((_hd2092421122_ (##car _e2092321118_))
                                 (_tl2092521125_ (##cdr _e2092321118_)))
                             (if (gx#stx-null? _tl2092521125_)
                                 ((lambda (_L21128_)
                                    (let* ((_g2114121149_
                                            (lambda (_g2114221145_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2114221145_)))
                                           (_g2114021168_
                                            (lambda (_g2114221153_)
                                              ((lambda (_L21156_)
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'if)
                                                         (cons (cons _L21156_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L20799_
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _L21128_ '()))
                                         '())))
                       (cons _K20781_ (cons _E20782_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g2114221153_))))
                                      (_g2114021168_
                                       (let ((_e21172_ (gx#stx-e _L21128_)))
                                         (if (let ((_$e21175_
                                                    (symbol? _e21172_)))
                                               (if _$e21175_
                                                   _$e21175_
                                                   (let ((_$e21179_
                                                          (keyword? _e21172_)))
                                                     (if _$e21179_
                                                         _$e21179_
                                                         (immediate?
                                                          _e21172_)))))
                                             (gx#datum->syntax '#f '##eq?)
                                             (if (number? _e21172_)
                                                 (gx#datum->syntax '#f 'eqv?)
                                                 (gx#datum->syntax
                                                  '#f
                                                  'equal?)))))))
                                  _hd2092421122_)
                                 (_g2082321101_ _g2082721105_))))
                         (_g2082321101_ _g2082721105_))
                     (_g2082321101_ _g2082721105_))
                 (_g2082321101_ _g2082721105_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2082321101_
                                                  _g2082721105_))))
                                          (_g2082121237_
                                           (lambda (_g2082721187_)
                                             (if (gx#stx-pair? _g2082721187_)
                                                 (let ((_e2091021190_
                                                        (gx#syntax-e
                                                         _g2082721187_)))
                                                   (let ((_hd2091121194_
                                                          (##car _e2091021190_))
                                                         (_tl2091221197_
                                                          (##cdr _e2091021190_)))
                                                     (if (gx#stx-datum?
                                                          _hd2091121194_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2091121194_)
                             'class:)
                     (if (gx#stx-pair? _tl2091221197_)
                         (let ((_e2091321200_ (gx#syntax-e _tl2091221197_)))
                           (let ((_hd2091421204_ (##car _e2091321200_))
                                 (_tl2091521207_ (##cdr _e2091321200_)))
                             (if (gx#stx-pair? _tl2091521207_)
                                 (let ((_e2091621210_
                                        (gx#syntax-e _tl2091521207_)))
                                   (let ((_hd2091721214_ (##car _e2091621210_))
                                         (_tl2091821217_
                                          (##cdr _e2091621210_)))
                                     (if (gx#stx-null? _tl2091821217_)
                                         ((lambda (_L21220_ _L21222_)
                                            (_generate-class19254_
                                             (gx#stx-e _L21222_)
                                             _tgt20778_
                                             _L21220_
                                             _K20781_
                                             _E20782_))
                                          _hd2091721214_
                                          _hd2091421204_)
                                         (_g2082221183_ _g2082721187_))))
                                 (_g2082221183_ _g2082721187_))))
                         (_g2082221183_ _g2082721187_))
                     (_g2082221183_ _g2082721187_))
                 (_g2082221183_ _g2082721187_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2082221183_
                                                  _g2082721187_))))
                                          (_g2082021291_
                                           (lambda (_g2082721241_)
                                             (if (gx#stx-pair? _g2082721241_)
                                                 (let ((_e2089921244_
                                                        (gx#syntax-e
                                                         _g2082721241_)))
                                                   (let ((_hd2090021248_
                                                          (##car _e2089921244_))
                                                         (_tl2090121251_
                                                          (##cdr _e2089921244_)))
                                                     (if (gx#stx-datum?
                                                          _hd2090021248_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2090021248_)
                             'struct:)
                     (if (gx#stx-pair? _tl2090121251_)
                         (let ((_e2090221254_ (gx#syntax-e _tl2090121251_)))
                           (let ((_hd2090321258_ (##car _e2090221254_))
                                 (_tl2090421261_ (##cdr _e2090221254_)))
                             (if (gx#stx-pair? _tl2090421261_)
                                 (let ((_e2090521264_
                                        (gx#syntax-e _tl2090421261_)))
                                   (let ((_hd2090621268_ (##car _e2090521264_))
                                         (_tl2090721271_
                                          (##cdr _e2090521264_)))
                                     (if (gx#stx-null? _tl2090721271_)
                                         ((lambda (_L21274_ _L21276_)
                                            (_generate-struct19253_
                                             (gx#stx-e _L21276_)
                                             _tgt20778_
                                             _L21274_
                                             _K20781_
                                             _E20782_))
                                          _hd2090621268_
                                          _hd2090321258_)
                                         (_g2082121237_ _g2082721241_))))
                                 (_g2082121237_ _g2082721241_))))
                         (_g2082121237_ _g2082721241_))
                     (_g2082121237_ _g2082721241_))
                 (_g2082121237_ _g2082721241_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2082121237_
                                                  _g2082721241_))))
                                          (_g2081921469_
                                           (lambda (_g2082721295_)
                                             (if (gx#stx-pair? _g2082721295_)
                                                 (let ((_e2089121298_
                                                        (gx#syntax-e
                                                         _g2082721295_)))
                                                   (let ((_hd2089221302_
                                                          (##car _e2089121298_))
                                                         (_tl2089321305_
                                                          (##cdr _e2089121298_)))
                                                     (if (gx#stx-datum?
                                                          _hd2089221302_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2089221302_)
                             'vector:)
                     (if (gx#stx-pair? _tl2089321305_)
                         (let ((_e2089421308_ (gx#syntax-e _tl2089321305_)))
                           (let ((_hd2089521312_ (##car _e2089421308_))
                                 (_tl2089621315_ (##cdr _e2089421308_)))
                             (if (gx#stx-null? _tl2089621315_)
                                 ((lambda (_L21318_)
                                    (let* ((_g2133221353_
                                            (lambda (_g2133321349_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2133321349_)))
                                           (_g2133121394_
                                            (lambda (_g2133321357_)
                                              (if (gx#stx-pair? _g2133321357_)
                                                  (let ((_e2134221360_
                                                         (gx#syntax-e
                                                          _g2133321357_)))
                                                    (let ((_hd2134321364_
                                                           (##car _e2134221360_))
                                                          (_tl2134421367_
                                                           (##cdr _e2134221360_)))
                                                      (if (gx#stx-datum?
                                                           _hd2134321364_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2134321364_)
                              'list:)
                      (if (gx#stx-pair? _tl2134421367_)
                          (let ((_e2134521370_ (gx#syntax-e _tl2134421367_)))
                            (let ((_hd2134621374_ (##car _e2134521370_))
                                  (_tl2134721377_ (##cdr _e2134521370_)))
                              (if (gx#stx-null? _tl2134721377_)
                                  ((lambda (_L21380_)
                                     (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'vector?)
                                                       (cons _L20799_ '()))
                                                 (cons (_generate-list-vector19252_
                                                        _tgt20778_
                                                        _L21380_
                                                        (gx#datum->syntax
                                                         '#f
                                                         'subvector->list)
                                                        '0
                                                        _K20781_
                                                        _E20782_)
                                                       (cons _E20782_ '())))))
                                   _hd2134621374_)
                                  (_g2133221353_ _g2133321357_))))
                          (_g2133221353_ _g2133321357_))
                      (_g2133221353_ _g2133321357_))
                  (_g2133221353_ _g2133321357_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2133221353_
                                                   _g2133321357_))))
                                           (_g2133021465_
                                            (lambda (_g2133321398_)
                                              (if (gx#stx-pair? _g2133321398_)
                                                  (let ((_e2133521401_
                                                         (gx#syntax-e
                                                          _g2133321398_)))
                                                    (let ((_hd2133621405_
                                                           (##car _e2133521401_))
                                                          (_tl2133721408_
                                                           (##cdr _e2133521401_)))
                                                      (if (gx#stx-datum?
                                                           _hd2133621405_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2133621405_)
                              'simple:)
                      (if (gx#stx-pair? _tl2133721408_)
                          (let ((_e2133821411_ (gx#syntax-e _tl2133721408_)))
                            (let ((_hd2133921415_ (##car _e2133821411_))
                                  (_tl2134021418_ (##cdr _e2133821411_)))
                              (if (gx#stx-null? _tl2134021418_)
                                  ((lambda (_L21421_)
                                     (let* ((_g2143421442_
                                             (lambda (_g2143521438_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2143521438_)))
                                            (_g2143321461_
                                             (lambda (_g2143521446_)
                                               ((lambda (_L21449_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'and)
                              (cons (cons (gx#datum->syntax '#f '##vector?)
                                          (cons _L20799_ '()))
                                    (cons (cons (gx#datum->syntax '#f '##fx=)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '##vector-length)
                                                            (cons _L20799_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _L21449_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        (cons (_generate-simple-vector19251_
                               _tgt20778_
                               _L21421_
                               '0
                               _K20781_
                               _E20782_)
                              (cons _E20782_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2143521446_))))
                                       (_g2143321461_
                                        (gx#stx-length _L21421_))))
                                   _hd2133921415_)
                                  (_g2133121394_ _g2133321398_))))
                          (_g2133121394_ _g2133321398_))
                      (_g2133121394_ _g2133321398_))
                  (_g2133121394_ _g2133321398_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2133121394_
                                                   _g2133321398_)))))
                                      (_g2133021465_ _L21318_)))
                                  _hd2089521312_)
                                 (_g2082021291_ _g2082721295_))))
                         (_g2082021291_ _g2082721295_))
                     (_g2082021291_ _g2082721295_))
                 (_g2082021291_ _g2082721295_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2082021291_
                                                  _g2082721295_))))
                                          (_g2081821647_
                                           (lambda (_g2082721473_)
                                             (if (gx#stx-pair? _g2082721473_)
                                                 (let ((_e2088421476_
                                                        (gx#syntax-e
                                                         _g2082721473_)))
                                                   (let ((_hd2088521480_
                                                          (##car _e2088421476_))
                                                         (_tl2088621483_
                                                          (##cdr _e2088421476_)))
                                                     (if (gx#stx-datum?
                                                          _hd2088521480_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2088521480_)
                             'values:)
                     (if (gx#stx-pair? _tl2088621483_)
                         (let ((_e2088721486_ (gx#syntax-e _tl2088621483_)))
                           (let ((_hd2088821490_ (##car _e2088721486_))
                                 (_tl2088921493_ (##cdr _e2088721486_)))
                             (if (gx#stx-null? _tl2088921493_)
                                 ((lambda (_L21496_)
                                    (let* ((_g2151021531_
                                            (lambda (_g2151121527_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2151121527_)))
                                           (_g2150921572_
                                            (lambda (_g2151121535_)
                                              (if (gx#stx-pair? _g2151121535_)
                                                  (let ((_e2152021538_
                                                         (gx#syntax-e
                                                          _g2151121535_)))
                                                    (let ((_hd2152121542_
                                                           (##car _e2152021538_))
                                                          (_tl2152221545_
                                                           (##cdr _e2152021538_)))
                                                      (if (gx#stx-datum?
                                                           _hd2152121542_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2152121542_)
                              'list:)
                      (if (gx#stx-pair? _tl2152221545_)
                          (let ((_e2152321548_ (gx#syntax-e _tl2152221545_)))
                            (let ((_hd2152421552_ (##car _e2152321548_))
                                  (_tl2152521555_ (##cdr _e2152321548_)))
                              (if (gx#stx-null? _tl2152521555_)
                                  ((lambda (_L21558_)
                                     (_generate-list-vector19252_
                                      _tgt20778_
                                      _L21558_
                                      (gx#datum->syntax '#f 'values->list)
                                      '0
                                      _K20781_
                                      _E20782_))
                                   _hd2152421552_)
                                  (_g2151021531_ _g2151121535_))))
                          (_g2151021531_ _g2151121535_))
                      (_g2151021531_ _g2151121535_))
                  (_g2151021531_ _g2151121535_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2151021531_
                                                   _g2151121535_))))
                                           (_g2150821643_
                                            (lambda (_g2151121576_)
                                              (if (gx#stx-pair? _g2151121576_)
                                                  (let ((_e2151321579_
                                                         (gx#syntax-e
                                                          _g2151121576_)))
                                                    (let ((_hd2151421583_
                                                           (##car _e2151321579_))
                                                          (_tl2151521586_
                                                           (##cdr _e2151321579_)))
                                                      (if (gx#stx-datum?
                                                           _hd2151421583_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2151421583_)
                              'simple:)
                      (if (gx#stx-pair? _tl2151521586_)
                          (let ((_e2151621589_ (gx#syntax-e _tl2151521586_)))
                            (let ((_hd2151721593_ (##car _e2151621589_))
                                  (_tl2151821596_ (##cdr _e2151621589_)))
                              (if (gx#stx-null? _tl2151821596_)
                                  ((lambda (_L21599_)
                                     (let* ((_g2161221620_
                                             (lambda (_g2161321616_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2161321616_)))
                                            (_g2161121639_
                                             (lambda (_g2161321624_)
                                               ((lambda (_L21627_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##fx=)
                              (cons (cons (gx#datum->syntax '#f 'values-count)
                                          (cons _L20799_ '()))
                                    (cons _L21627_ '())))
                        (cons (_generate-simple-vector19251_
                               _tgt20778_
                               _L21599_
                               '0
                               _K20781_
                               _E20782_)
                              (cons _E20782_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2161321624_))))
                                       (_g2161121639_
                                        (gx#stx-length _L21599_))))
                                   _hd2151721593_)
                                  (_g2150921572_ _g2151121576_))))
                          (_g2150921572_ _g2151121576_))
                      (_g2150921572_ _g2151121576_))
                  (_g2150921572_ _g2151121576_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2150921572_
                                                   _g2151121576_)))))
                                      (_g2150821643_ _L21496_)))
                                  _hd2088821490_)
                                 (_g2081921469_ _g2082721473_))))
                         (_g2081921469_ _g2082721473_))
                     (_g2081921469_ _g2082721473_))
                 (_g2081921469_ _g2082721473_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2081921469_
                                                  _g2082721473_))))
                                          (_g2081721718_
                                           (lambda (_g2082721651_)
                                             (if (gx#stx-pair? _g2082721651_)
                                                 (let ((_e2087721654_
                                                        (gx#syntax-e
                                                         _g2082721651_)))
                                                   (let ((_hd2087821658_
                                                          (##car _e2087721654_))
                                                         (_tl2087921661_
                                                          (##cdr _e2087721654_)))
                                                     (if (gx#stx-datum?
                                                          _hd2087821658_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2087821658_)
                             'box:)
                     (if (gx#stx-pair? _tl2087921661_)
                         (let ((_e2088021664_ (gx#syntax-e _tl2087921661_)))
                           (let ((_hd2088121668_ (##car _e2088021664_))
                                 (_tl2088221671_ (##cdr _e2088021664_)))
                             (if (gx#stx-null? _tl2088221671_)
                                 ((lambda (_L21674_)
                                    (let* ((_g2168721695_
                                            (lambda (_g2168821691_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2168821691_)))
                                           (_g2168621714_
                                            (lambda (_g2168821699_)
                                              ((lambda (_L21702_)
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'if)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '##box?)
                             (cons _L20799_ '()))
                       (cons (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (cons _L21702_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##unbox)
                         (cons _L20799_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (_generate119248_
                                                _L21702_
                                                _L21674_
                                                _K20781_
                                                _E20782_)
                                               '())))
                             (cons _E20782_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g2168821699_))))
                                      (_g2168621714_ (gx#genident 'e))))
                                  _hd2088121668_)
                                 (_g2081821647_ _g2082721651_))))
                         (_g2081821647_ _g2082721651_))
                     (_g2081821647_ _g2082721651_))
                 (_g2081821647_ _g2082721651_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2081821647_
                                                  _g2082721651_))))
                                          (_g2081621772_
                                           (lambda (_g2082721722_)
                                             (if (gx#stx-pair? _g2082721722_)
                                                 (let ((_e2086721725_
                                                        (gx#syntax-e
                                                         _g2082721722_)))
                                                   (let ((_hd2086821729_
                                                          (##car _e2086721725_))
                                                         (_tl2086921732_
                                                          (##cdr _e2086721725_)))
                                                     (if (gx#stx-datum?
                                                          _hd2086821729_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2086821729_)
                             'splice:)
                     (if (gx#stx-pair? _tl2086921732_)
                         (let ((_e2087021735_ (gx#syntax-e _tl2086921732_)))
                           (let ((_hd2087121739_ (##car _e2087021735_))
                                 (_tl2087221742_ (##cdr _e2087021735_)))
                             (if (gx#stx-pair? _tl2087221742_)
                                 (let ((_e2087321745_
                                        (gx#syntax-e _tl2087221742_)))
                                   (let ((_hd2087421749_ (##car _e2087321745_))
                                         (_tl2087521752_
                                          (##cdr _e2087321745_)))
                                     (if (gx#stx-null? _tl2087521752_)
                                         ((lambda (_L21755_ _L21757_)
                                            (_generate-splice19250_
                                             _tgt20778_
                                             _L21757_
                                             _L21755_
                                             _K20781_
                                             _E20782_))
                                          _hd2087421749_
                                          _hd2087121739_)
                                         (_g2081721718_ _g2082721722_))))
                                 (_g2081721718_ _g2082721722_))))
                         (_g2081721718_ _g2082721722_))
                     (_g2081721718_ _g2082721722_))
                 (_g2081721718_ _g2082721722_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2081721718_
                                                  _g2082721722_))))
                                          (_g2081521793_
                                           (lambda (_g2082721776_)
                                             (if (gx#stx-pair? _g2082721776_)
                                                 (let ((_e2086221779_
                                                        (gx#syntax-e
                                                         _g2082721776_)))
                                                   (let ((_hd2086321783_
                                                          (##car _e2086221779_))
                                                         (_tl2086421786_
                                                          (##cdr _e2086221779_)))
                                                     (if (gx#stx-datum?
                                                          _hd2086321783_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2086321783_)
                             'null:)
                     (if (gx#stx-null? _tl2086421786_)
                         ((lambda ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons (gx#datum->syntax '#f '##null?)
                                              (cons _L20799_ '()))
                                        (cons _K20781_ (cons _E20782_ '()))))))
                         (_g2081621772_ _g2082721776_))
                     (_g2081621772_ _g2082721776_))
                 (_g2081621772_ _g2082721776_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2081621772_
                                                  _g2082721776_))))
                                          (_g2081421912_
                                           (lambda (_g2082721797_)
                                             (if (gx#stx-pair? _g2082721797_)
                                                 (let ((_e2085321800_
                                                        (gx#syntax-e
                                                         _g2082721797_)))
                                                   (let ((_hd2085421804_
                                                          (##car _e2085321800_))
                                                         (_tl2085521807_
                                                          (##cdr _e2085321800_)))
                                                     (if (gx#stx-datum?
                                                          _hd2085421804_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2085421804_)
                             'cons:)
                     (if (gx#stx-pair? _tl2085521807_)
                         (let ((_e2085621810_ (gx#syntax-e _tl2085521807_)))
                           (let ((_hd2085721814_ (##car _e2085621810_))
                                 (_tl2085821817_ (##cdr _e2085621810_)))
                             (if (gx#stx-pair? _tl2085821817_)
                                 (let ((_e2085921820_
                                        (gx#syntax-e _tl2085821817_)))
                                   (let ((_hd2086021824_ (##car _e2085921820_))
                                         (_tl2086121827_
                                          (##cdr _e2085921820_)))
                                     (if (gx#stx-null? _tl2086121827_)
                                         ((lambda (_L21830_ _L21832_)
                                            (let* ((_g2184821863_
                                                    (lambda (_g2184921859_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g2184921859_)))
                                                   (_g2184721908_
                                                    (lambda (_g2184921867_)
                                                      (if (gx#stx-pair?
                                                           _g2184921867_)
                                                          (let ((_e2185221870_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _g2184921867_)))
                    (let ((_hd2185321874_ (##car _e2185221870_))
                          (_tl2185421877_ (##cdr _e2185221870_)))
                      (if (gx#stx-pair? _tl2185421877_)
                          (let ((_e2185521880_ (gx#syntax-e _tl2185421877_)))
                            (let ((_hd2185621884_ (##car _e2185521880_))
                                  (_tl2185721887_ (##cdr _e2185521880_)))
                              (if (gx#stx-null? _tl2185721887_)
                                  ((lambda (_L21890_ _L21892_)
                                     (let ()
                                       (cons (gx#datum->syntax '#f 'if)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##pair?)
                                                         (cons _L20799_ '()))
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (cons (cons _L21892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##car)
                                                     (cons _L20799_ '()))
                                               '()))
                                   (cons (cons _L21890_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##cdr)
                                                           (cons _L20799_ '()))
                                                     '()))
                                         '()))
                             (cons (_generate119248_
                                    _L21892_
                                    _L21832_
                                    (_generate119248_
                                     _L21890_
                                     _L21830_
                                     _K20781_
                                     _E20782_)
                                    _E20782_)
                                   '())))
                 (cons _E20782_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd2185621884_
                                   _hd2185321874_)
                                  (_g2184821863_ _g2184921867_))))
                          (_g2184821863_ _g2184921867_))))
                  (_g2184821863_ _g2184921867_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2184721908_
                                               (list (gx#genident 'hd)
                                                     (gx#genident 'tl)))))
                                          _hd2086021824_
                                          _hd2085721814_)
                                         (_g2081521793_ _g2082721797_))))
                                 (_g2081521793_ _g2082721797_))))
                         (_g2081521793_ _g2082721797_))
                     (_g2081521793_ _g2082721797_))
                 (_g2081521793_ _g2082721797_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2081521793_
                                                  _g2082721797_))))
                                          (_g2081321952_
                                           (lambda (_g2082721916_)
                                             (if (gx#stx-pair? _g2082721916_)
                                                 (let ((_e2084521919_
                                                        (gx#syntax-e
                                                         _g2082721916_)))
                                                   (let ((_hd2084621923_
                                                          (##car _e2084521919_))
                                                         (_tl2084721926_
                                                          (##cdr _e2084521919_)))
                                                     (if (gx#stx-datum?
                                                          _hd2084621923_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2084621923_)
                             'not:)
                     (if (gx#stx-pair? _tl2084721926_)
                         (let ((_e2084821929_ (gx#syntax-e _tl2084721926_)))
                           (let ((_hd2084921933_ (##car _e2084821929_))
                                 (_tl2085021936_ (##cdr _e2084821929_)))
                             (if (gx#stx-null? _tl2085021936_)
                                 ((lambda (_L21939_)
                                    (_generate119248_
                                     _tgt20778_
                                     _L21939_
                                     _E20782_
                                     _K20781_))
                                  _hd2084921933_)
                                 (_g2081421912_ _g2082721916_))))
                         (_g2081421912_ _g2082721916_))
                     (_g2081421912_ _g2082721916_))
                 (_g2081421912_ _g2082721916_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2081421912_
                                                  _g2082721916_))))
                                          (_g2081222040_
                                           (lambda (_g2082721956_)
                                             (if (gx#stx-pair? _g2082721956_)
                                                 (let ((_e2084121959_
                                                        (gx#syntax-e
                                                         _g2082721956_)))
                                                   (let ((_hd2084221963_
                                                          (##car _e2084121959_))
                                                         (_tl2084321966_
                                                          (##cdr _e2084121959_)))
                                                     (if (gx#stx-datum?
                                                          _hd2084221963_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2084221963_)
                             'or:)
                     ((lambda (_L21969_)
                        (let* ((_g2198121993_
                                (lambda (_g2198221989_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2198221989_)))
                               (_g2198022004_
                                (lambda (_g2198221997_)
                                  ((lambda () _E20782_))))
                               (_g2197922036_
                                (lambda (_g2198222008_)
                                  (if (gx#stx-pair? _g2198222008_)
                                      (let ((_e2198522011_
                                             (gx#syntax-e _g2198222008_)))
                                        (let ((_hd2198622015_
                                               (##car _e2198522011_))
                                              (_tl2198722018_
                                               (##cdr _e2198522011_)))
                                          ((lambda (_L22021_ _L22023_)
                                             (_generate119248_
                                              _tgt20778_
                                              _L22023_
                                              _K20781_
                                              (_generate119248_
                                               _tgt20778_
                                               (cons 'or: _L22021_)
                                               _K20781_
                                               _E20782_)))
                                           _tl2198722018_
                                           _hd2198622015_)))
                                      (_g2198022004_ _g2198222008_)))))
                          (_g2197922036_ _L21969_)))
                      _tl2084321966_)
                     (_g2081321952_ _g2082721956_))
                 (_g2081321952_ _g2082721956_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2081321952_
                                                  _g2082721956_))))
                                          (_g2081122128_
                                           (lambda (_g2082722044_)
                                             (if (gx#stx-pair? _g2082722044_)
                                                 (let ((_e2083722047_
                                                        (gx#syntax-e
                                                         _g2082722044_)))
                                                   (let ((_hd2083822051_
                                                          (##car _e2083722047_))
                                                         (_tl2083922054_
                                                          (##cdr _e2083722047_)))
                                                     (if (gx#stx-datum?
                                                          _hd2083822051_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2083822051_)
                             'and:)
                     ((lambda (_L22057_)
                        (let* ((_g2206922081_
                                (lambda (_g2207022077_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2207022077_)))
                               (_g2206822092_
                                (lambda (_g2207022085_)
                                  ((lambda () _K20781_))))
                               (_g2206722124_
                                (lambda (_g2207022096_)
                                  (if (gx#stx-pair? _g2207022096_)
                                      (let ((_e2207322099_
                                             (gx#syntax-e _g2207022096_)))
                                        (let ((_hd2207422103_
                                               (##car _e2207322099_))
                                              (_tl2207522106_
                                               (##cdr _e2207322099_)))
                                          ((lambda (_L22109_ _L22111_)
                                             (_generate119248_
                                              _tgt20778_
                                              _L22111_
                                              (_generate119248_
                                               _tgt20778_
                                               (cons 'and: _L22109_)
                                               _K20781_
                                               _E20782_)
                                              _E20782_))
                                           _tl2207522106_
                                           _hd2207422103_)))
                                      (_g2206822092_ _g2207022096_)))))
                          (_g2206722124_ _L22057_)))
                      _tl2083922054_)
                     (_g2081222040_ _g2082722044_))
                 (_g2081222040_ _g2082722044_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2081222040_
                                                  _g2082722044_))))
                                          (_g2081022417_
                                           (lambda (_g2082722132_)
                                             (if (gx#stx-pair? _g2082722132_)
                                                 (let ((_e2083022135_
                                                        (gx#syntax-e
                                                         _g2082722132_)))
                                                   (let ((_hd2083122139_
                                                          (##car _e2083022135_))
                                                         (_tl2083222142_
                                                          (##cdr _e2083022135_)))
                                                     (if (gx#stx-datum?
                                                          _hd2083122139_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2083122139_)
                             '?:)
                     (if (gx#stx-pair? _tl2083222142_)
                         (let ((_e2083322145_ (gx#syntax-e _tl2083222142_)))
                           (let ((_hd2083422149_ (##car _e2083322145_))
                                 (_tl2083522152_ (##cdr _e2083322145_)))
                             ((lambda (_L22155_ _L22157_)
                                (let* ((_g2217322205_
                                        (lambda (_g2217422201_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g2217422201_)))
                                       (_g2217222303_
                                        (lambda (_g2217422209_)
                                          (if (gx#stx-pair? _g2217422209_)
                                              (let ((_e2218822212_
                                                     (gx#syntax-e
                                                      _g2217422209_)))
                                                (let ((_hd2218922216_
                                                       (##car _e2218822212_))
                                                      (_tl2219022219_
                                                       (##cdr _e2218822212_)))
                                                  (if (gx#stx-datum?
                                                       _hd2218922216_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd2218922216_)
                          '::)
                  (if (gx#stx-pair? _tl2219022219_)
                      (let ((_e2219122222_ (gx#syntax-e _tl2219022219_)))
                        (let ((_hd2219222226_ (##car _e2219122222_))
                              (_tl2219322229_ (##cdr _e2219122222_)))
                          (if (gx#stx-pair? _tl2219322229_)
                              (let ((_e2219422232_
                                     (gx#syntax-e _tl2219322229_)))
                                (let ((_hd2219522236_ (##car _e2219422232_))
                                      (_tl2219622239_ (##cdr _e2219422232_)))
                                  (if (gx#stx-datum? _hd2219522236_)
                                      (if (equal? (gx#stx-e _hd2219522236_)
                                                  '=>:)
                                          (if (gx#stx-pair? _tl2219622239_)
                                              (let ((_e2219722242_
                                                     (gx#syntax-e
                                                      _tl2219622239_)))
                                                (let ((_hd2219822246_
                                                       (##car _e2219722242_))
                                                      (_tl2219922249_
                                                       (##cdr _e2219722242_)))
                                                  (if (gx#stx-null?
                                                       _tl2219922249_)
                                                      ((lambda (_L22252_
                                                                _L22254_)
                                                         (let* ((_g2227222280_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2227322276_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2227322276_)))
                        (_g2227122299_
                         (lambda (_g2227322284_)
                           ((lambda (_L22287_)
                              (let ()
                                (cons (gx#datum->syntax '#f 'if)
                                      (cons (cons (gx#datum->syntax '#f '?)
                                                  (cons _L22157_
                                                        (cons _L20799_ '())))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'let)
                                                        (cons (cons (cons _L22287_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (cons _L22254_ (cons _L20799_ '()))
                                        '()))
                            '())
                      (cons (_generate119248_
                             _L22287_
                             _L22252_
                             _K20781_
                             _E20782_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _E20782_ '()))))))
                            _g2227322284_))))
                   (_g2227122299_ (gx#genident 'e))))
               _hd2219822246_
               _hd2219222226_)
              (_g2217322205_ _g2217422209_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2217322205_ _g2217422209_))
                                          (_g2217322205_ _g2217422209_))
                                      (_g2217322205_ _g2217422209_))))
                              (_g2217322205_ _g2217422209_))))
                      (_g2217322205_ _g2217422209_))
                  (_g2217322205_ _g2217422209_))
              (_g2217322205_ _g2217422209_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2217322205_ _g2217422209_))))
                                       (_g2217122374_
                                        (lambda (_g2217422307_)
                                          (if (gx#stx-pair? _g2217422307_)
                                              (let ((_e2218022310_
                                                     (gx#syntax-e
                                                      _g2217422307_)))
                                                (let ((_hd2218122314_
                                                       (##car _e2218022310_))
                                                      (_tl2218222317_
                                                       (##cdr _e2218022310_)))
                                                  (if (gx#stx-datum?
                                                       _hd2218122314_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd2218122314_)
                          '=>:)
                  (if (gx#stx-pair? _tl2218222317_)
                      (let ((_e2218322320_ (gx#syntax-e _tl2218222317_)))
                        (let ((_hd2218422324_ (##car _e2218322320_))
                              (_tl2218522327_ (##cdr _e2218322320_)))
                          (if (gx#stx-null? _tl2218522327_)
                              ((lambda (_L22330_)
                                 (let* ((_g2234322351_
                                         (lambda (_g2234422347_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2234422347_)))
                                        (_g2234222370_
                                         (lambda (_g2234422355_)
                                           ((lambda (_L22358_)
                                              (let ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'let)
                                                      (cons (cons (cons _L22358_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons _L22157_ (cons _L20799_ '())) '()))
                          '())
                    (cons (cons (gx#datum->syntax '#f 'if)
                                (cons _L22358_
                                      (cons (_generate119248_
                                             _L22358_
                                             _L22330_
                                             _K20781_
                                             _E20782_)
                                            (cons _E20782_ '()))))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g2234422355_))))
                                   (_g2234222370_ (gx#genident 'e))))
                               _hd2218422324_)
                              (_g2217222303_ _g2217422307_))))
                      (_g2217222303_ _g2217422307_))
                  (_g2217222303_ _g2217422307_))
              (_g2217222303_ _g2217422307_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2217222303_ _g2217422307_))))
                                       (_g2217022402_
                                        (lambda (_g2217422378_)
                                          (if (gx#stx-pair? _g2217422378_)
                                              (let ((_e2217622381_
                                                     (gx#syntax-e
                                                      _g2217422378_)))
                                                (let ((_hd2217722385_
                                                       (##car _e2217622381_))
                                                      (_tl2217822388_
                                                       (##cdr _e2217622381_)))
                                                  (if (gx#stx-null?
                                                       _tl2217822388_)
                                                      ((lambda (_L22391_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '?)
                                   (cons _L22157_ (cons _L20799_ '())))
                             (cons (_generate119248_
                                    _tgt20778_
                                    _L22391_
                                    _K20781_
                                    _E20782_)
                                   (cons _E20782_ '())))))
               _hd2217722385_)
              (_g2217122374_ _g2217422378_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2217122374_ _g2217422378_))))
                                       (_g2216922413_
                                        (lambda (_g2217422406_)
                                          (if (gx#stx-null? _g2217422406_)
                                              ((lambda ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'if)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '?)
                           (cons _L22157_ (cons _L20799_ '())))
                     (cons _K20781_ (cons _E20782_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2217022402_ _g2217422406_)))))
                                  (_g2216922413_ _L22155_)))
                              _tl2083522152_
                              _hd2083422149_)))
                         (_g2081122128_ _g2082722132_))
                     (_g2081122128_ _g2082722132_))
                 (_g2081122128_ _g2082722132_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2081122128_
                                                  _g2082722132_)))))
                                     (_g2081022417_ _ptree20780_))))
                               _g2078520796_))))
                      (_g2078322421_ _tgt20778_))))
                 (_generate-splice19250_
                  (lambda (_tgt20150_ _hd20152_ _rest20153_ _K20154_ _E20155_)
                    (let* ((_g2015720174_
                            (lambda (_g2015820170_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2015820170_)))
                           (_g2015620774_
                            (lambda (_g2015820178_)
                              (if (gx#stx-pair/null? _g2015820178_)
                                  (if (fx>= (gx#stx-length _g2015820178_) '0)
                                      (let ((_g31718_
                                             (gx#syntax-split-splice
                                              _g2015820178_
                                              '0)))
                                        (begin
                                          (let ((_g31719_
                                                 (values-count _g31718_)))
                                            (if (not (fx= _g31719_ 2))
                                                (error "Context expects 2 values"
                                                       _g31719_)))
                                          (let ((_target2016020181_
                                                 (values-ref _g31718_ 0))
                                                (_tl2016220184_
                                                 (values-ref _g31718_ 1)))
                                            (if (gx#stx-null? _tl2016220184_)
                                                (letrec ((_loop2016320187_
                                                          (lambda (_hd2016120191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _var2016720194_)
                    (if (gx#stx-pair? _hd2016120191_)
                        (let ((_e2016420197_ (gx#syntax-e _hd2016120191_)))
                          (let ((_lp-hd2016520201_ (##car _e2016420197_))
                                (_lp-tl2016620204_ (##cdr _e2016420197_)))
                            (_loop2016320187_
                             _lp-tl2016620204_
                             (cons _lp-hd2016520201_ _var2016720194_))))
                        (let ((_var2016820207_ (reverse _var2016720194_)))
                          ((lambda (_L20211_)
                             (let ()
                               (let* ((_g2022720244_
                                       (lambda (_g2022820240_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2022820240_)))
                                      (_g2022620762_
                                       (lambda (_g2022820248_)
                                         (if (gx#stx-pair/null? _g2022820248_)
                                             (if (fx>= (gx#stx-length
                                                        _g2022820248_)
                                                       '0)
                                                 (let ((_g31720_
                                                        (gx#syntax-split-splice
                                                         _g2022820248_
                                                         '0)))
                                                   (begin
                                                     (let ((_g31721_
                                                            (values-count
                                                             _g31720_)))
                                                       (if (not (fx= _g31721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g31721_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2023020251_
                                                            (values-ref
                                                             _g31720_
                                                             0))
                                                           (_tl2023220254_
                                                            (values-ref
                                                             _g31720_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2023220254_)
                                                           (letrec ((_loop2023320257_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2023120261_ _var-r2023720264_)
                               (if (gx#stx-pair? _hd2023120261_)
                                   (let ((_e2023420267_
                                          (gx#syntax-e _hd2023120261_)))
                                     (let ((_lp-hd2023520271_
                                            (##car _e2023420267_))
                                           (_lp-tl2023620274_
                                            (##cdr _e2023420267_)))
                                       (_loop2023320257_
                                        _lp-tl2023620274_
                                        (cons _lp-hd2023520271_
                                              _var-r2023720264_))))
                                   (let ((_var-r2023820277_
                                          (reverse _var-r2023720264_)))
                                     ((lambda (_L20281_)
                                        (let ()
                                          (let* ((_g2029820315_
                                                  (lambda (_g2029920311_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2029920311_)))
                                                 (_g2029720750_
                                                  (lambda (_g2029920319_)
                                                    (if (gx#stx-pair/null?
                                                         _g2029920319_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2029920319_)
                          '0)
                    (let ((_g31722_ (gx#syntax-split-splice _g2029920319_ '0)))
                      (begin
                        (let ((_g31723_ (values-count _g31722_)))
                          (if (not (fx= _g31723_ 2))
                              (error "Context expects 2 values" _g31723_)))
                        (let ((_target2030120322_ (values-ref _g31722_ 0))
                              (_tl2030320325_ (values-ref _g31722_ 1)))
                          (if (gx#stx-null? _tl2030320325_)
                              (letrec ((_loop2030420328_
                                        (lambda (_hd2030220332_
                                                 _init2030820335_)
                                          (if (gx#stx-pair? _hd2030220332_)
                                              (let ((_e2030520338_
                                                     (gx#syntax-e
                                                      _hd2030220332_)))
                                                (let ((_lp-hd2030620342_
                                                       (##car _e2030520338_))
                                                      (_lp-tl2030720345_
                                                       (##cdr _e2030520338_)))
                                                  (_loop2030420328_
                                                   _lp-tl2030720345_
                                                   (cons _lp-hd2030620342_
                                                         _init2030820335_))))
                                              (let ((_init2030920348_
                                                     (reverse _init2030820335_)))
                                                ((lambda (_L20352_)
                                                   (let ()
                                                     (let* ((_g2036920377_
                                                             (lambda (_g2037020373_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2037020373_)))
                                                            (_g2036820746_
                                                             (lambda (_g2037020381_)
                                                               ((lambda (_L20384_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let* ((_g2039720405_
                                    (lambda (_g2039820401_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g2039820401_)))
                                   (_g2039620742_
                                    (lambda (_g2039820409_)
                                      ((lambda (_L20412_)
                                         (let ()
                                           (let* ((_g2042520433_
                                                   (lambda (_g2042620429_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2042620429_)))
                                                  (_g2042420738_
                                                   (lambda (_g2042620437_)
                                                     ((lambda (_L20440_)
                                                        (let ()
                                                          (let* ((_g2045320461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g2045420457_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2045420457_)))
                         (_g2045220734_
                          (lambda (_g2045420465_)
                            ((lambda (_L20468_)
                               (let ()
                                 (let* ((_g2048120489_
                                         (lambda (_g2048220485_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2048220485_)))
                                        (_g2048020730_
                                         (lambda (_g2048220493_)
                                           ((lambda (_L20496_)
                                              (let ()
                                                (let* ((_g2050920517_
                                                        (lambda (_g2051020513_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g2051020513_)))
                                                       (_g2050820726_
                                                        (lambda (_g2051020521_)
                                                          ((lambda (_L20524_)
                                                             (let ()
                                                               (let* ((_g2053720545_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g2053820541_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2053820541_)))
                              (_g2053620722_
                               (lambda (_g2053820549_)
                                 ((lambda (_L20552_)
                                    (let ()
                                      (let* ((_g2056520573_
                                              (lambda (_g2056620569_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g2056620569_)))
                                             (_g2056420707_
                                              (lambda (_g2056620577_)
                                                ((lambda (_L20580_)
                                                   (let ()
                                                     (let* ((_g2059320601_
                                                             (lambda (_g2059420597_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2059420597_)))
                                                            (_g2059220695_
                                                             (lambda (_g2059420605_)
                                                               ((lambda (_L20608_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let* ((_g2062120629_
                                    (lambda (_g2062220625_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g2062220625_)))
                                   (_g2062020691_
                                    (lambda (_g2062220633_)
                                      ((lambda (_L20636_)
                                         (let ()
                                           (let ()
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'letrec)
                                                   (cons (cons (cons _L20412_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _L20524_
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2065020661_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2065120664_)
                        (cons _g2065020661_ _g2065120664_))
                      '()
                      _L20211_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _L20552_ '())))
                                   '()))
                       (cons (cons _L20468_
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _L20496_
                                                           (cons _L20524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr (lambda (_g2065220667_ _g2065320670_)
                                    (cons _g2065220667_ _g2065320670_))
                                  '()
                                  _L20281_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _L20636_ '())))
                                         '()))
                             (cons (cons _L20440_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L20524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr (lambda (_g2065420673_ _g2065520676_)
                                    (cons _g2065420673_ _g2065520676_))
                                  '()
                                  _L20281_)))
                   (cons (cons (gx#datum->syntax '#f 'if)
                               (cons (cons (gx#datum->syntax '#f 'pair?)
                                           (cons _L20524_ '()))
                                     (cons (cons _L20468_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _L20524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons _L20524_
                     (begin
                       '#!void
                       (foldr (lambda (_g2065620679_ _g2065720682_)
                                (cons _g2065620679_ _g2065720682_))
                              '()
                              _L20281_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _L20608_ '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())))
                 (cons (cons _L20440_
                             (cons _L20384_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2065820685_
                                                     _g2065920688_)
                                              (cons _g2065820685_
                                                    _g2065920688_))
                                            '()
                                            _L20352_))))
                       '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _g2062220633_))))
                              (_g2062020691_
                               (_generate119248_
                                _L20496_
                                _hd20152_
                                _L20580_
                                _L20608_)))))
                        _g2059420605_))))
               (_g2059220695_
                (cons _L20412_
                      (cons _L20524_
                            (begin
                              '#!void
                              (foldr (lambda (_g2069820701_ _g2069920704_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'reverse)
                                                   (cons _g2069820701_ '()))
                                             _g2069920704_))
                                     '()
                                     _L20281_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _g2056620577_))))
                                        (_g2056420707_
                                         (cons _L20440_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##cdr)
                                                           (cons _L20524_ '()))
                                                     (begin
                                                       (gx#syntax-check-splice-targets
                                                        _L20281_
                                                        _L20211_)
                                                       (foldr (lambda (_g2071020714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2071120717_
                               _g2071220719_)
                        (cons (cons (gx#datum->syntax '#f 'cons)
                                    (cons _g2071120717_
                                          (cons _g2071020714_ '())))
                              _g2071220719_))
                      '()
                      _L20281_
                      _L20211_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _g2053820549_))))
                         (_g2053620722_
                          (_generate119248_
                           _L20524_
                           _rest20153_
                           _K20154_
                           _E20155_)))))
                   _g2051020521_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2050820726_
                                                   (gx#genident 'rest)))))
                                            _g2048220493_))))
                                   (_g2048020730_ (gx#genident 'hd)))))
                             _g2045420465_))))
                    (_g2045220734_ (gx#genident 'splice-try)))))
              _g2042620437_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2042420738_
                                              (gx#genident 'splice-loop)))))
                                       _g2039820409_))))
                              (_g2039620742_ (gx#genident 'splice-rest)))))
                        _g2037020381_))))
               (_g2036820746_ _tgt20150_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _init2030920348_))))))
                                (_loop2030420328_ _target2030120322_ '()))
                              (_g2029820315_ _g2029920319_)))))
                    (_g2029820315_ _g2029920319_))
                (_g2029820315_ _g2029920319_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2029720750_
                                             (make-list
                                              (gx#stx-length
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g2075320756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2075420759_)
                  (cons _g2075320756_ _g2075420759_))
                '()
                _L20211_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    '()))))))
                                      _var-r2023820277_))))))
                     (_loop2023320257_ _target2023020251_ '()))
                   (_g2022720244_ _g2022820248_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2022720244_ _g2022820248_))
                                             (_g2022720244_ _g2022820248_)))))
                                 (_g2022620762_
                                  (gx#gentemps
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2076520768_
                                                     _g2076620771_)
                                              (cons _g2076520768_
                                                    _g2076620771_))
                                            '()
                                            _L20211_)))))))
                           _var2016820207_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2016320187_
                                                   _target2016020181_
                                                   '()))
                                                (_g2015720174_
                                                 _g2015820178_)))))
                                      (_g2015720174_ _g2015820178_))
                                  (_g2015720174_ _g2015820178_)))))
                      (_g2015620774_
                       (|gerbil/core$<match>[1]#match-pattern-vars|
                        _hd20152_)))))
                 (_generate-simple-vector19251_
                  (lambda (_tgt19992_
                           _body19994_
                           _start19995_
                           _K19996_
                           _E19997_)
                    (let _recur19999_ ((_rest20002_ _body19994_)
                                       (_off20004_ _start19995_))
                      (let* ((_g2000720019_
                              (lambda (_g2000820015_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2000820015_)))
                             (_g2000620030_
                              (lambda (_g2000820023_) ((lambda () _K19996_))))
                             (_g2000520146_
                              (lambda (_g2000820034_)
                                (if (gx#stx-pair? _g2000820034_)
                                    (let ((_e2001120037_
                                           (gx#syntax-e _g2000820034_)))
                                      (let ((_hd2001220041_
                                             (##car _e2001120037_))
                                            (_tl2001320044_
                                             (##cdr _e2001120037_)))
                                        ((lambda (_L20047_ _L20049_)
                                           (let* ((_g2006420083_
                                                   (lambda (_g2006520079_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2006520079_)))
                                                  (_g2006320142_
                                                   (lambda (_g2006520087_)
                                                     (if (gx#stx-pair?
                                                          _g2006520087_)
                                                         (let ((_e2006920090_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2006520087_)))
                   (let ((_hd2007020094_ (##car _e2006920090_))
                         (_tl2007120097_ (##cdr _e2006920090_)))
                     (if (gx#stx-pair? _tl2007120097_)
                         (let ((_e2007220100_ (gx#syntax-e _tl2007120097_)))
                           (let ((_hd2007320104_ (##car _e2007220100_))
                                 (_tl2007420107_ (##cdr _e2007220100_)))
                             (if (gx#stx-pair? _tl2007420107_)
                                 (let ((_e2007520110_
                                        (gx#syntax-e _tl2007420107_)))
                                   (let ((_hd2007620114_ (##car _e2007520110_))
                                         (_tl2007720117_
                                          (##cdr _e2007520110_)))
                                     (if (gx#stx-null? _tl2007720117_)
                                         ((lambda (_L20120_ _L20122_ _L20123_)
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L20123_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                          (cons _L20122_ (cons _L20120_ '())))
                                    '()))
                        '())
                  (cons (_generate119248_
                         _L20123_
                         _L20049_
                         (_recur19999_ _L20047_ (fx1+ _off20004_))
                         _E19997_)
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd2007620114_
                                          _hd2007320104_
                                          _hd2007020094_)
                                         (_g2006420083_ _g2006520087_))))
                                 (_g2006420083_ _g2006520087_))))
                         (_g2006420083_ _g2006520087_))))
                 (_g2006420083_ _g2006520087_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2006320142_
                                              (list (gx#genident 'e)
                                                    _tgt19992_
                                                    _off20004_))))
                                         _tl2001320044_
                                         _hd2001220041_)))
                                    (_g2000620030_ _g2000820034_)))))
                        (_g2000520146_ _rest20002_)))))
                 (_generate-list-vector19252_
                  (lambda (_tgt19902_
                           _body19904_
                           _tgt->list19905_
                           _start19906_
                           _K19907_
                           _E19908_)
                    (let* ((_g1991019929_
                            (lambda (_g1991119925_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1991119925_)))
                           (_g1990919988_
                            (lambda (_g1991119933_)
                              (if (gx#stx-pair? _g1991119933_)
                                  (let ((_e1991519936_
                                         (gx#syntax-e _g1991119933_)))
                                    (let ((_hd1991619940_
                                           (##car _e1991519936_))
                                          (_tl1991719943_
                                           (##cdr _e1991519936_)))
                                      (if (gx#stx-pair? _tl1991719943_)
                                          (let ((_e1991819946_
                                                 (gx#syntax-e _tl1991719943_)))
                                            (let ((_hd1991919950_
                                                   (##car _e1991819946_))
                                                  (_tl1992019953_
                                                   (##cdr _e1991819946_)))
                                              (if (gx#stx-pair? _tl1992019953_)
                                                  (let ((_e1992119956_
                                                         (gx#syntax-e
                                                          _tl1992019953_)))
                                                    (let ((_hd1992219960_
                                                           (##car _e1992119956_))
                                                          (_tl1992319963_
                                                           (##cdr _e1992119956_)))
                                                      (if (gx#stx-null?
                                                           _tl1992319963_)
                                                          ((lambda (_L19966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L19968_
                            _L19969_)
                     (let ()
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (cons _L19969_
                                               (cons (cons _L19966_
                                                           (cons _L19968_ '()))
                                                     '()))
                                         '())
                                   (cons (_generate119248_
                                          _L19969_
                                          _body19904_
                                          _K19907_
                                          _E19908_)
                                         '())))))
                   _hd1992219960_
                   _hd1991919950_
                   _hd1991619940_)
                  (_g1991019929_ _g1991119933_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1991019929_
                                                   _g1991119933_))))
                                          (_g1991019929_ _g1991119933_))))
                                  (_g1991019929_ _g1991119933_)))))
                      (_g1990919988_
                       (list (gx#genident 'e) _tgt19902_ _tgt->list19905_)))))
                 (_generate-struct19253_
                  (lambda (_info19635_
                           _tgt19637_
                           _body19638_
                           _K19639_
                           _E19640_)
                    (let* ((_rtd19642_
                            (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info?|
                                 _info19635_)
                                (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                                 _info19635_)
                                '#f))
                           (_fields19652_
                            (let _lp19645_ ((_rtd19648_ _rtd19642_)
                                            (_k19650_ '0))
                              (if _rtd19648_
                                  (_lp19645_
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                    (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-super|
                                     _rtd19648_))
                                   (fx+ (length (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-fields|
                                                 _rtd19648_))
                                        _k19650_))
                                  _k19650_)))
                           (_final?19655_
                            (if _rtd19642_
                                (assgetq 'final:
                                         (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-plist|
                                          _rtd19642_))
                                '#f))
                           (_g1965819666_
                            (lambda (_g1965919662_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1965919662_)))
                           (_g1965719898_
                            (lambda (_g1965919670_)
                              ((lambda (_L19673_)
                                 (let ()
                                   (let* ((_g1968819696_
                                           (lambda (_g1968919692_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1968919692_)))
                                          (_g1968719894_
                                           (lambda (_g1968919700_)
                                             ((lambda (_L19703_)
                                                (let ()
                                                  (let* ((_g1971619724_
                                                          (lambda (_g1971719720_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1971719720_)))
                                                         (_g1971519890_
                                                          (lambda (_g1971719728_)
                                                            ((lambda (_L19731_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1974719768_
                                   (lambda (_g1974819764_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1974819764_)))
                                  (_g1974619811_
                                   (lambda (_g1974819772_)
                                     (if (gx#stx-pair? _g1974819772_)
                                         (let ((_e1975719775_
                                                (gx#syntax-e _g1974819772_)))
                                           (let ((_hd1975819779_
                                                  (##car _e1975719775_))
                                                 (_tl1975919782_
                                                  (##cdr _e1975719775_)))
                                             (if (gx#stx-datum? _hd1975819779_)
                                                 (if (equal? (gx#stx-e
                                                              _hd1975819779_)
                                                             'list:)
                                                     (if (gx#stx-pair?
                                                          _tl1975919782_)
                                                         (let ((_e1976019785_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1975919782_)))
                   (let ((_hd1976119789_ (##car _e1976019785_))
                         (_tl1976219792_ (##cdr _e1976019785_)))
                     (if (gx#stx-null? _tl1976219792_)
                         ((lambda (_L19795_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _L19731_
                                              (cons _L19703_
                                                    (cons _L19673_ '())))
                                        (cons (_generate-list-vector19252_
                                               _tgt19637_
                                               _L19795_
                                               (gx#datum->syntax
                                                '#f
                                                'struct->list)
                                               '1
                                               _K19639_
                                               _E19640_)
                                              (cons _E19640_ '())))))
                          _hd1976119789_)
                         (_g1974719768_ _g1974819772_))))
                 (_g1974719768_ _g1974819772_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1974719768_
                                                      _g1974819772_))
                                                 (_g1974719768_
                                                  _g1974819772_))))
                                         (_g1974719768_ _g1974819772_))))
                                  (_g1974519886_
                                   (lambda (_g1974819815_)
                                     (if (gx#stx-pair? _g1974819815_)
                                         (let ((_e1975019818_
                                                (gx#syntax-e _g1974819815_)))
                                           (let ((_hd1975119822_
                                                  (##car _e1975019818_))
                                                 (_tl1975219825_
                                                  (##cdr _e1975019818_)))
                                             (if (gx#stx-datum? _hd1975119822_)
                                                 (if (equal? (gx#stx-e
                                                              _hd1975119822_)
                                                             'simple:)
                                                     (if (gx#stx-pair?
                                                          _tl1975219825_)
                                                         (let ((_e1975319828_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1975219825_)))
                   (let ((_hd1975419832_ (##car _e1975319828_))
                         (_tl1975519835_ (##cdr _e1975319828_)))
                     (if (gx#stx-null? _tl1975519835_)
                         ((lambda (_L19838_)
                            (let ((_K19851_
                                   (_generate-simple-vector19251_
                                    _tgt19637_
                                    _L19838_
                                    '1
                                    _K19639_
                                    _E19640_)))
                              (if (if _rtd19642_
                                      (fx<= (gx#stx-length _L19838_)
                                            _fields19652_)
                                      '#f)
                                  (cons (gx#datum->syntax '#f 'if)
                                        (cons (cons _L19731_
                                                    (cons _L19703_
                                                          (cons _L19673_ '())))
                                              (cons _K19851_
                                                    (cons _E19640_ '()))))
                                  (let* ((_g1985419862_
                                          (lambda (_g1985519858_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g1985519858_)))
                                         (_g1985319882_
                                          (lambda (_g1985519866_)
                                            ((lambda (_L19869_)
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'if)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'and)
                           (cons (cons _L19731_
                                       (cons _L19703_ (cons _L19673_ '())))
                                 (cons (cons (gx#datum->syntax '#f '##fx<)
                                             (cons _L19869_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '##vector-length)
                                                               (cons _L19673_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))
                     (cons _K19851_ (cons _E19640_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _g1985519866_))))
                                    (_g1985319882_
                                     (gx#stx-length _L19838_))))))
                          _hd1975419832_)
                         (_g1974619811_ _g1974819815_))))
                 (_g1974619811_ _g1974819815_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1974619811_
                                                      _g1974819815_))
                                                 (_g1974619811_
                                                  _g1974819815_))))
                                         (_g1974619811_ _g1974819815_)))))
                             (_g1974519886_ _body19638_)))))
                     _g1971719728_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1971519890_
                                                     (if _final?19655_
                                                         (gx#datum->syntax
                                                          '#f
                                                          'direct-struct-instance?)
                                                         (gx#datum->syntax
                                                          '#f
                                                          'struct-instance?))))))
                                              _g1968919700_))))
                                     (_g1968719894_
                                      (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                       _info19635_)))))
                               _g1965919670_))))
                      (_g1965719898_ _tgt19637_))))
                 (_generate-class19254_
                  (lambda (_info19256_
                           _tgt19258_
                           _body19259_
                           _K19260_
                           _E19261_)
                    (letrec* ((_rtd19263_
                               (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info?|
                                    _info19256_)
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                                    _info19256_)
                                   '#f))
                              (_known-slot?19265_
                               (if _rtd19263_
                                   (lambda (_key19629_)
                                     (let ((_slot19632_
                                            (keyword->symbol
                                             (gx#stx-e _key19629_))))
                                       (_rtd-known-slot?19267_
                                        _rtd19263_
                                        _slot19632_)))
                                   false))
                              (_final?19266_
                               (if _rtd19263_
                                   (assgetq 'final:
                                            (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-plist|
                                             _rtd19263_))
                                   '#f))
                              (_rtd-known-slot?19267_
                               (lambda (_rtd19616_ _slot19618_)
                                 (if _rtd19616_
                                     (let ((_$e19620_
                                            (memq _slot19618_
                                                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots|
                                                   _rtd19616_))))
                                       (if _$e19620_
                                           _$e19620_
                                           (ormap (lambda (_g1962319625_)
                                                    (_rtd-known-slot?19267_
                                                     _g1962319625_
                                                     _slot19618_))
                                                  (map |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                                       (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-super|
                                                        _rtd19616_)))))
                                     '#f)))
                              (_recur19268_
                               (lambda (_klass19402_ _rest19404_)
                                 (let* ((_g1940719423_
                                         (lambda (_g1940819419_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1940819419_)))
                                        (_g1940619434_
                                         (lambda (_g1940819427_)
                                           ((lambda () _K19260_))))
                                        (_g1940519612_
                                         (lambda (_g1940819438_)
                                           (if (gx#stx-pair? _g1940819438_)
                                               (let ((_e1941219441_
                                                      (gx#syntax-e
                                                       _g1940819438_)))
                                                 (let ((_hd1941319445_
                                                        (##car _e1941219441_))
                                                       (_tl1941419448_
                                                        (##cdr _e1941219441_)))
                                                   (if (gx#stx-pair?
                                                        _tl1941419448_)
                                                       (let ((_e1941519451_
                                                              (gx#syntax-e
                                                               _tl1941419448_)))
                                                         (let ((_hd1941619455_
                                                                (##car _e1941519451_))
                                                               (_tl1941719458_
                                                                (##cdr _e1941519451_)))
                                                           ((lambda (_L19461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L19463_
                             _L19464_)
                      (let* ((_g1948019488_
                              (lambda (_g1948119484_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1948119484_)))
                             (_g1947919608_
                              (lambda (_g1948119492_)
                                ((lambda (_L19495_)
                                   (let ()
                                     (let* ((_g1950719515_
                                             (lambda (_g1950819511_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1950819511_)))
                                            (_g1950619604_
                                             (lambda (_g1950819519_)
                                               ((lambda (_L19522_)
                                                  (let ()
                                                    (let* ((_g1953519543_
                                                            (lambda (_g1953619539_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1953619539_)))
                                                           (_g1953419600_
                                                            (lambda (_g1953619547_)
                                                              ((lambda (_L19550_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1956319571_
                                   (lambda (_g1956419567_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1956419567_)))
                                  (_g1956219596_
                                   (lambda (_g1956419575_)
                                     ((lambda (_L19578_)
                                        (let ()
                                          (let ((_K19591_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _L19578_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              '##vector-ref)
                                             (cons _L19495_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'fx1+)
                                                               (cons _L19550_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '())
                     (cons (_generate119248_
                            _L19578_
                            _L19463_
                            (_recur19268_ _klass19402_ _L19461_)
                            _E19261_)
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (_known-slot?19265_ _L19464_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'let)
                                                      (cons (cons (cons _L19550_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'class-slot-offset)
                                            (cons _L19522_
                                                  (cons _L19464_ '())))
                                      '()))
                          '())
                    (cons _K19591_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'let)
                                                      (cons (cons (cons _L19550_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'class-slot-offset)
                                            (cons _L19522_
                                                  (cons _L19464_ '())))
                                      '()))
                          '())
                    (cons (cons (gx#datum->syntax '#f 'if)
                                (cons _L19550_
                                      (cons _K19591_ (cons _E19261_ '()))))
                          '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g1956419575_))))
                             (_g1956219596_ (gx#genident 'e)))))
                       _g1953619547_))))
              (_g1953419600_ (gx#genident 'slot)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1950819519_))))
                                       (_g1950619604_ _klass19402_))))
                                 _g1948119492_))))
                        (_g1947919608_ _tgt19258_)))
                    _tl1941719458_
                    _hd1941619455_
                    _hd1941319445_)))
               (_g1940619434_ _g1940819438_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1940619434_
                                                _g1940819438_)))))
                                   (_g1940519612_ _rest19404_)))))
                      (let* ((_g1927019278_
                              (lambda (_g1927119274_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1927119274_)))
                             (_g1926919398_
                              (lambda (_g1927119282_)
                                ((lambda (_L19285_)
                                   (let ()
                                     (let* ((_g1930019308_
                                             (lambda (_g1930119304_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1930119304_)))
                                            (_g1929919394_
                                             (lambda (_g1930119312_)
                                               ((lambda (_L19315_)
                                                  (let ()
                                                    (let* ((_g1932819336_
                                                            (lambda (_g1932919332_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1932919332_)))
                                                           (_g1932719390_
                                                            (lambda (_g1932919340_)
                                                              ((lambda (_L19343_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1935619364_
                                   (lambda (_g1935719360_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1935719360_)))
                                  (_g1935519386_
                                   (lambda (_g1935719368_)
                                     ((lambda (_L19371_)
                                        (let ()
                                          (let ()
                                            (cons (gx#datum->syntax '#f 'if)
                                                  (cons (cons _L19371_
                                                              (cons _L19343_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L19315_ '())))
                (cons (cons (gx#datum->syntax '#f 'let)
                            (cons (cons (cons _L19285_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'object-type)
                                                          (cons _L19315_ '()))
                                                    '()))
                                        '())
                                  (cons (_recur19268_ _L19285_ _body19259_)
                                        '())))
                      (cons _E19261_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g1935719368_))))
                             (_g1935519386_
                              (if _final?19266_
                                  (gx#datum->syntax
                                   '#f
                                   'direct-class-instance?)
                                  (gx#datum->syntax '#f 'class-instance?))))))
                       _g1932919340_))))
              (_g1932719390_
               (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                _info19256_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1930119312_))))
                                       (_g1929919394_ _tgt19258_))))
                                 _g1927119282_))))
                        (_g1926919398_ (gx#genident 'class)))))))
          (_generate119248_ _tgt19243_ _ptree19244_ _K19245_ _E19246_))))
    (define |gerbil/core$<match>[1]#generate-match*|
      (lambda (_stx18240_ _tgt-lst18242_ _clauses18243_)
        (letrec ((_parse-body18245_
                  (lambda (_hd-len19063_)
                    (let _lp19066_ ((_rest19069_ _clauses18243_)
                                    (_r19071_ '()))
                      (let* ((_g1907419086_
                              (lambda (_g1907519082_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1907519082_)))
                             (_g1907319097_
                              (lambda (_g1907519090_) ((lambda () _r19071_))))
                             (_g1907219237_
                              (lambda (_g1907519101_)
                                (if (gx#stx-pair? _g1907519101_)
                                    (let ((_e1907819104_
                                           (gx#syntax-e _g1907519101_)))
                                      (let ((_hd1907919108_
                                             (##car _e1907819104_))
                                            (_tl1908019111_
                                             (##cdr _e1907819104_)))
                                        ((lambda (_L19114_ _L19116_)
                                           (let* ((_g1913319149_
                                                   (lambda (_g1913419145_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1913419145_)))
                                                  (_g1913219160_
                                                   (lambda (_g1913419153_)
                                                     ((lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; illegal match clause"
                                                         _stx18240_
                                                         _L19116_)))))
                                                  (_g1913119201_
                                                   (lambda (_g1913419164_)
                                                     (if (gx#stx-pair?
                                                          _g1913419164_)
                                                         (let ((_e1914119167_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1913419164_)))
                   (let ((_hd1914219171_ (##car _e1914119167_))
                         (_tl1914319174_ (##cdr _e1914119167_)))
                     ((lambda (_L19177_ _L19179_)
                        (if (if (gx#stx-list? _L19179_)
                                (if (fx= (gx#stx-length _L19179_)
                                         _hd-len19063_)
                                    (if (gx#stx-list? _L19177_)
                                        (not (gx#stx-null? _L19177_))
                                        '#f)
                                    '#f)
                                '#f)
                            (_lp19066_
                             _L19114_
                             (cons (cons (gx#genident 'try-match)
                                         (cons (gx#stx-map
                                                (lambda (_g1919119193_)
                                                  (|gerbil/core$<match>[1]#parse-match-pattern|
                                                   _g1919119193_
                                                   _stx18240_))
                                                _L19179_)
                                               (cons (gx#stx-wrap-source
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'begin)
                                                            _L19177_)
                                                      (let ((_$e19197_
                                                             (gx#stx-source
                                                              _L19116_)))
                                                        (if _$e19197_
                                                            _$e19197_
                                                            (gx#stx-source
                                                             _stx18240_))))
                                                     '())))
                                   _r19071_))
                            (_g1913219160_ _g1913419164_)))
                      _tl1914319174_
                      _hd1914219171_)))
                 (_g1913219160_ _g1913419164_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1913019233_
                                                   (lambda (_g1913419205_)
                                                     (if (gx#stx-pair?
                                                          _g1913419205_)
                                                         (let ((_e1913619208_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1913419205_)))
                   (let ((_hd1913719212_ (##car _e1913619208_))
                         (_tl1913819215_ (##cdr _e1913619208_)))
                     (if (gx#identifier? _hd1913719212_)
                         (if (gx#free-identifier=?
                              |gerbil/core$<match>[1]#_g31724_|
                              _hd1913719212_)
                             ((lambda (_L19218_)
                                (if (if (gx#stx-list? _L19218_)
                                        (not (gx#stx-null? _L19218_))
                                        '#f)
                                    (if (gx#stx-null? _L19114_)
                                        (cons (cons (gx#genident 'else)
                                                    (cons '#f
                                                          (cons (gx#stx-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'begin) _L19218_)
                         (let ((_$e19229_ (gx#stx-source _L19116_)))
                           (if _$e19229_
                               _$e19229_
                               (gx#stx-source _stx18240_))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _r19071_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; misplaced else"
                                         _stx18240_
                                         _L19116_))
                                    (_g1913119201_ _g1913419205_)))
                              _tl1913819215_)
                             (_g1913119201_ _g1913419205_))
                         (_g1913119201_ _g1913419205_))))
                 (_g1913119201_ _g1913419205_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1913019233_ _L19116_)))
                                         _tl1908019111_
                                         _hd1907919108_)))
                                    (_g1907319097_ _g1907519101_)))))
                        (_g1907219237_ _rest19069_)))))
                 (_generate-body18247_
                  (lambda (_body18880_)
                    (let* ((_g1888318891_
                            (lambda (_g1888418887_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1888418887_)))
                           (_g1888219059_
                            (lambda (_g1888418895_)
                              ((lambda (_L18898_)
                                 (let ()
                                   (let* ((_g1891018927_
                                           (lambda (_g1891118923_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1891118923_)))
                                          (_g1890919055_
                                           (lambda (_g1891118931_)
                                             (if (gx#stx-pair/null?
                                                  _g1891118931_)
                                                 (if (fx>= (gx#stx-length
                                                            _g1891118931_)
                                                           '0)
                                                     (let ((_g31725_
                                                            (gx#syntax-split-splice
                                                             _g1891118931_
                                                             '0)))
                                                       (begin
                                                         (let ((_g31726_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g31725_)))
                   (if (not (fx= _g31726_ 2))
                       (error "Context expects 2 values" _g31726_)))
                 (let ((_target1891318934_ (values-ref _g31725_ 0))
                       (_tl1891518937_ (values-ref _g31725_ 1)))
                   (if (gx#stx-null? _tl1891518937_)
                       (letrec ((_loop1891618940_
                                 (lambda (_hd1891418944_ _target1892018947_)
                                   (if (gx#stx-pair? _hd1891418944_)
                                       (let ((_e1891718950_
                                              (gx#syntax-e _hd1891418944_)))
                                         (let ((_lp-hd1891818954_
                                                (##car _e1891718950_))
                                               (_lp-tl1891918957_
                                                (##cdr _e1891718950_)))
                                           (_loop1891618940_
                                            _lp-tl1891918957_
                                            (cons _lp-hd1891818954_
                                                  _target1892018947_))))
                                       (let ((_target1892118960_
                                              (reverse _target1892018947_)))
                                         ((lambda (_L18964_)
                                            (let ()
                                              (let* ((_g1898118989_
                                                      (lambda (_g1898218985_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g1898218985_)))
                                                     (_g1898019043_
                                                      (lambda (_g1898218993_)
                                                        ((lambda (_L18996_)
                                                           (let ()
                                                             (let* ((_g1900919017_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1901019013_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1901019013_)))
                            (_g1900819039_
                             (lambda (_g1901019021_)
                               ((lambda (_L19024_)
                                  (let ()
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons (cons _L18898_
                                                              (cons _L18996_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _L19024_ '()))))))
                                _g1901019021_))))
                       (_g1900819039_
                        (_generate-clauses18248_
                         _body18880_
                         (cons _L18898_ '()))))))
                 _g1898218993_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1898019043_
                                                 (gx#stx-wrap-source
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons '()
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'error)
                                  (cons '"No clause matching"
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g1904619049_
                                                          _g1904719052_)
                                                   (cons _g1904619049_
                                                         _g1904719052_))
                                                 '()
                                                 _L18964_))))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _stx18240_))))))
                                          _target1892118960_))))))
                         (_loop1891618940_ _target1891318934_ '()))
                       (_g1891018927_ _g1891118931_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1891018927_
                                                      _g1891118931_))
                                                 (_g1891018927_
                                                  _g1891118931_)))))
                                     (_g1890919055_ _tgt-lst18242_))))
                               _g1888418895_))))
                      (_g1888219059_ (gx#genident 'E)))))
                 (_generate-clauses18248_
                  (lambda (_rest18562_ _E18564_)
                    (let* ((_g1856818584_
                            (lambda (_g1856918580_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1856918580_)))
                           (_g1856718595_
                            (lambda (_g1856918588_) ((lambda () _E18564_))))
                           (_g1856618771_
                            (lambda (_g1856918599_)
                              (if (gx#stx-pair? _g1856918599_)
                                  (let ((_e1857618602_
                                         (gx#syntax-e _g1856918599_)))
                                    (let ((_hd1857718606_
                                           (##car _e1857618602_))
                                          (_tl1857818609_
                                           (##cdr _e1857618602_)))
                                      ((lambda (_L18612_ _L18614_)
                                         (let* ((_g1862718646_
                                                 (lambda (_g1862818642_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1862818642_)))
                                                (_g1862618767_
                                                 (lambda (_g1862818650_)
                                                   (if (gx#stx-pair?
                                                        _g1862818650_)
                                                       (let ((_e1863218653_
                                                              (gx#syntax-e
                                                               _g1862818650_)))
                                                         (let ((_hd1863318657_
                                                                (##car _e1863218653_))
                                                               (_tl1863418660_
                                                                (##cdr _e1863218653_)))
                                                           (if (gx#stx-pair?
                                                                _tl1863418660_)
                                                               (let ((_e1863518663_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1863418660_)))
                         (let ((_hd1863618667_ (##car _e1863518663_))
                               (_tl1863718670_ (##cdr _e1863518663_)))
                           (if (gx#stx-pair? _tl1863718670_)
                               (let ((_e1863818673_
                                      (gx#syntax-e _tl1863718670_)))
                                 (let ((_hd1863918677_ (##car _e1863818673_))
                                       (_tl1864018680_ (##cdr _e1863818673_)))
                                   (if (gx#stx-null? _tl1864018680_)
                                       ((lambda (_L18683_ _L18685_ _L18686_)
                                          (let* ((_g1870318718_
                                                  (lambda (_g1870418714_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1870418714_)))
                                                 (_g1870218763_
                                                  (lambda (_g1870418722_)
                                                    (if (gx#stx-pair?
                                                         _g1870418722_)
                                                        (let ((_e1870718725_
                                                               (gx#syntax-e
                                                                _g1870418722_)))
                                                          (let ((_hd1870818729_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1870718725_))
                        (_tl1870918732_ (##cdr _e1870718725_)))
                    (if (gx#stx-pair? _tl1870918732_)
                        (let ((_e1871018735_ (gx#syntax-e _tl1870918732_)))
                          (let ((_hd1871118739_ (##car _e1871018735_))
                                (_tl1871218742_ (##cdr _e1871018735_)))
                            (if (gx#stx-null? _tl1871218742_)
                                ((lambda (_L18745_ _L18747_)
                                   (let ()
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _L18686_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'lambda)
                                 (cons '() (cons _L18747_ '())))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _L18745_ '())))))
                                 _hd1871118739_
                                 _hd1870818729_)
                                (_g1870318718_ _g1870418722_))))
                        (_g1870318718_ _g1870418722_))))
                (_g1870318718_ _g1870418722_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1870218763_
                                             (list (if (gx#stx-e _L18685_)
                                                       (_generate118249_
                                                        _L18685_
                                                        _L18683_
                                                        _E18564_)
                                                       _L18683_)
                                                   (_generate-clauses18248_
                                                    _L18612_
                                                    (cons _L18686_ '()))))))
                                        _hd1863918677_
                                        _hd1863618667_
                                        _hd1863318657_)
                                       (_g1862718646_ _g1862818650_))))
                               (_g1862718646_ _g1862818650_))))
                       (_g1862718646_ _g1862818650_))))
               (_g1862718646_ _g1862818650_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1862618767_ _L18614_)))
                                       _tl1857818609_
                                       _hd1857718606_)))
                                  (_g1856718595_ _g1856918599_))))
                           (_g1856518876_
                            (lambda (_g1856918775_)
                              (if (gx#stx-pair? _g1856918775_)
                                  (let ((_e1857118778_
                                         (gx#syntax-e _g1856918775_)))
                                    (let ((_hd1857218782_
                                           (##car _e1857118778_))
                                          (_tl1857318785_
                                           (##cdr _e1857118778_)))
                                      (if (gx#stx-null? _tl1857318785_)
                                          ((lambda (_L18788_)
                                             (let* ((_g1879918817_
                                                     (lambda (_g1880018813_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1880018813_)))
                                                    (_g1879818872_
                                                     (lambda (_g1880018821_)
                                                       (if (gx#stx-pair?
                                                            _g1880018821_)
                                                           (let ((_e1880318824_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g1880018821_)))
                     (let ((_hd1880418828_ (##car _e1880318824_))
                           (_tl1880518831_ (##cdr _e1880318824_)))
                       (if (gx#stx-pair? _tl1880518831_)
                           (let ((_e1880618834_ (gx#syntax-e _tl1880518831_)))
                             (let ((_hd1880718838_ (##car _e1880618834_))
                                   (_tl1880818841_ (##cdr _e1880618834_)))
                               (if (gx#stx-pair? _tl1880818841_)
                                   (let ((_e1880918844_
                                          (gx#syntax-e _tl1880818841_)))
                                     (let ((_hd1881018848_
                                            (##car _e1880918844_))
                                           (_tl1881118851_
                                            (##cdr _e1880918844_)))
                                       (if (gx#stx-null? _tl1881118851_)
                                           ((lambda (_L18854_ _L18856_)
                                              (if (gx#stx-e _L18856_)
                                                  (_generate118249_
                                                   _L18856_
                                                   _L18854_
                                                   _E18564_)
                                                  _L18854_))
                                            _hd1881018848_
                                            _hd1880718838_)
                                           (_g1879918817_ _g1880018821_))))
                                   (_g1879918817_ _g1880018821_))))
                           (_g1879918817_ _g1880018821_))))
                   (_g1879918817_ _g1880018821_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1879818872_ _L18788_)))
                                           _hd1857218782_)
                                          (_g1856618771_ _g1856918775_))))
                                  (_g1856618771_ _g1856918775_)))))
                      (_g1856518876_ _rest18562_))))
                 (_generate118249_
                  (lambda (_clause18251_ _body18253_ _E18254_)
                    (let _recur18256_ ((_rest18259_ _clause18251_)
                                       (_rest-targets18261_ _tgt-lst18242_))
                      (let* ((_g1826418276_
                              (lambda (_g1826518272_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1826518272_)))
                             (_g1826318287_
                              (lambda (_g1826518280_)
                                ((lambda () _body18253_))))
                             (_g1826218558_
                              (lambda (_g1826518291_)
                                (if (gx#stx-pair? _g1826518291_)
                                    (let ((_e1826818294_
                                           (gx#syntax-e _g1826518291_)))
                                      (let ((_hd1826918298_
                                             (##car _e1826818294_))
                                            (_tl1827018301_
                                             (##cdr _e1826818294_)))
                                        ((lambda (_L18304_ _L18306_)
                                           (let* ((_g1832318335_
                                                   (lambda (_g1832418331_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1832418331_)))
                                                  (_g1832218554_
                                                   (lambda (_g1832418339_)
                                                     (if (gx#stx-pair?
                                                          _g1832418339_)
                                                         (let ((_e1832718342_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1832418339_)))
                   (let ((_hd1832818346_ (##car _e1832718342_))
                         (_tl1832918349_ (##cdr _e1832718342_)))
                     ((lambda (_L18352_ _L18354_)
                        (let* ((_g1836618374_
                                (lambda (_g1836718370_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g1836718370_)))
                               (_g1836518550_
                                (lambda (_g1836718378_)
                                  ((lambda (_L18381_)
                                     (let ()
                                       (let* ((_g1839318410_
                                               (lambda (_g1839418406_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1839418406_)))
                                              (_g1839218546_
                                               (lambda (_g1839418414_)
                                                 (if (gx#stx-pair/null?
                                                      _g1839418414_)
                                                     (if (fx>= (gx#stx-length
                                                                _g1839418414_)
                                                               '0)
                                                         (let ((_g31727_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1839418414_
                         '0)))
                   (begin
                     (let ((_g31728_ (values-count _g31727_)))
                       (if (not (fx= _g31728_ 2))
                           (error "Context expects 2 values" _g31728_)))
                     (let ((_target1839618417_ (values-ref _g31727_ 0))
                           (_tl1839818420_ (values-ref _g31727_ 1)))
                       (if (gx#stx-null? _tl1839818420_)
                           (letrec ((_loop1839918423_
                                     (lambda (_hd1839718427_ _var1840318430_)
                                       (if (gx#stx-pair? _hd1839718427_)
                                           (let ((_e1840018433_
                                                  (gx#syntax-e
                                                   _hd1839718427_)))
                                             (let ((_lp-hd1840118437_
                                                    (##car _e1840018433_))
                                                   (_lp-tl1840218440_
                                                    (##cdr _e1840018433_)))
                                               (_loop1839918423_
                                                _lp-tl1840218440_
                                                (cons _lp-hd1840118437_
                                                      _var1840318430_))))
                                           (let ((_var1840418443_
                                                  (reverse _var1840318430_)))
                                             ((lambda (_L18447_)
                                                (let ()
                                                  (let* ((_g1846418472_
                                                          (lambda (_g1846518468_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1846518468_)))
                                                         (_g1846318542_
                                                          (lambda (_g1846518476_)
                                                            ((lambda (_L18479_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_g1849218500_
                                 (lambda (_g1849318496_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1849318496_)))
                                (_g1849118530_
                                 (lambda (_g1849318504_)
                                   ((lambda (_L18507_)
                                      (let ()
                                        (let ()
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (cons _L18381_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'lambda)
                                      (cons (begin
                                              '#!void
                                              (foldr (lambda (_g1852118524_
                                                              _g1852218527_)
                                                       (cons _g1852118524_
                                                             _g1852218527_))
                                                     '()
                                                     _L18447_))
                                            (cons _L18479_ '())))
                                '()))
                    '())
              (cons _L18507_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _g1849318504_))))
                           (_g1849118530_
                            (|gerbil/core$<match>[1]#generate-match1|
                             _stx18240_
                             _L18354_
                             _L18306_
                             (cons _L18381_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g1853318536_
                                                     _g1853418539_)
                                              (cons _g1853318536_
                                                    _g1853418539_))
                                            '()
                                            _L18447_)))
                             _E18254_)))))
                     _g1846518476_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1846318542_
                                                     (_recur18256_
                                                      _L18304_
                                                      _L18352_)))))
                                              _var1840418443_))))))
                             (_loop1839918423_ _target1839618417_ '()))
                           (_g1839318410_ _g1839418414_)))))
                 (_g1839318410_ _g1839418414_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1839318410_
                                                      _g1839418414_)))))
                                         (_g1839218546_
                                          (|gerbil/core$<match>[1]#match-pattern-vars|
                                           _L18306_)))))
                                   _g1836718378_))))
                          (_g1836518550_ (gx#genident 'K))))
                      _tl1832918349_
                      _hd1832818346_)))
                 (_g1832318335_ _g1832418339_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1832218554_
                                              _rest-targets18261_)))
                                         _tl1827018301_
                                         _hd1826918298_)))
                                    (_g1826318287_ _g1826518291_)))))
                        (_g1826218558_ _rest18259_))))))
          (_generate-body18247_
           (_parse-body18245_ (gx#stx-length _tgt-lst18242_))))))
    (define |gerbil/core$<match>[1]#generate-match|
      (lambda (_stx18142_ _tgt18144_ _clauses18145_)
        (letrec ((_reclause18147_
                  (lambda (_clause18150_)
                    (let* ((_g1815518170_
                            (lambda (_g1815618166_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1815618166_)))
                           (_g1815418181_
                            (lambda (_g1815618174_)
                              ((lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; illegal match clause"
                                  _stx18142_
                                  _clause18150_)))))
                           (_g1815318215_
                            (lambda (_g1815618185_)
                              (if (gx#stx-pair? _g1815618185_)
                                  (let ((_e1816218188_
                                         (gx#syntax-e _g1815618185_)))
                                    (let ((_hd1816318192_
                                           (##car _e1816218188_))
                                          (_tl1816418195_
                                           (##cdr _e1816218188_)))
                                      ((lambda (_L18198_ _L18200_)
                                         (gx#stx-wrap-source
                                          (cons (cons _L18200_ '()) _L18198_)
                                          (gx#stx-source
                                           (gx#datum->syntax '#f 'clause))))
                                       _tl1816418195_
                                       _hd1816318192_)))
                                  (_g1815418181_ _g1815618185_))))
                           (_g1815218236_
                            (lambda (_g1815618219_)
                              (if (gx#stx-pair? _g1815618219_)
                                  (let ((_e1815718222_
                                         (gx#syntax-e _g1815618219_)))
                                    (let ((_hd1815818226_
                                           (##car _e1815718222_))
                                          (_tl1815918229_
                                           (##cdr _e1815718222_)))
                                      (if (gx#identifier? _hd1815818226_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g31729_|
                                               _hd1815818226_)
                                              ((lambda () _clause18150_))
                                              (_g1815318215_ _g1815618219_))
                                          (_g1815318215_ _g1815618219_))))
                                  (_g1815318215_ _g1815618219_)))))
                      (_g1815218236_ _clause18150_)))))
          (|gerbil/core$<match>[1]#generate-match*|
           _stx18142_
           (cons _tgt18144_ '())
           (gx#stx-map _reclause18147_ _clauses18145_)))))
    (define |gerbil/core$<match>[:0:]#match|
      (lambda (_stx25349_)
        (let* ((_g2535425383_
                (lambda (_g2535525379_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2535525379_)))
               (_g2535325491_
                (lambda (_g2535525387_)
                  (if (gx#stx-pair? _g2535525387_)
                      (let ((_e2537225390_ (gx#syntax-e _g2535525387_)))
                        (let ((_hd2537325394_ (##car _e2537225390_))
                              (_tl2537425397_ (##cdr _e2537225390_)))
                          (if (gx#stx-pair? _tl2537425397_)
                              (let ((_e2537525400_
                                     (gx#syntax-e _tl2537425397_)))
                                (let ((_hd2537625404_ (##car _e2537525400_))
                                      (_tl2537725407_ (##cdr _e2537525400_)))
                                  ((lambda (_L25410_ _L25412_)
                                     (if (gx#stx-list? _L25410_)
                                         (let* ((_g2542625434_
                                                 (lambda (_g2542725430_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2542725430_)))
                                                (_g2542525487_
                                                 (lambda (_g2542725438_)
                                                   ((lambda (_L25441_)
                                                      (let ()
                                                        (let* ((_g2545325461_
                                                                (lambda (_g2545425457_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g2545425457_)))
                       (_g2545225483_
                        (lambda (_g2545425465_)
                          ((lambda (_L25468_)
                             (let ()
                               (let ()
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _L25441_
                                                         (cons _L25412_ '()))
                                                   '())
                                             (cons _L25468_ '()))))))
                           _g2545425465_))))
                  (_g2545225483_
                   (|gerbil/core$<match>[1]#generate-match|
                    _stx25349_
                    _L25441_
                    _L25410_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2542725438_))))
                                           (_g2542525487_
                                            (gx#genident _L25412_)))
                                         (_g2535425383_ _g2535525387_)))
                                   _tl2537725407_
                                   _hd2537625404_)))
                              (_g2535425383_ _g2535525387_))))
                      (_g2535425383_ _g2535525387_))))
               (_g2535225596_
                (lambda (_g2535525495_)
                  (if (gx#stx-pair? _g2535525495_)
                      (let ((_e2536425498_ (gx#syntax-e _g2535525495_)))
                        (let ((_hd2536525502_ (##car _e2536425498_))
                              (_tl2536625505_ (##cdr _e2536425498_)))
                          (if (gx#stx-pair? _tl2536625505_)
                              (let ((_e2536725508_
                                     (gx#syntax-e _tl2536625505_)))
                                (let ((_hd2536825512_ (##car _e2536725508_))
                                      (_tl2536925515_ (##cdr _e2536725508_)))
                                  (if (gx#identifier? _hd2536825512_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g31730_|
                                           _hd2536825512_)
                                          ((lambda (_L25518_)
                                             (if (gx#stx-list? _L25518_)
                                                 (let* ((_g2553125539_
                                                         (lambda (_g2553225535_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2553225535_)))
                                                        (_g2553025592_
                                                         (lambda (_g2553225543_)
                                                           ((lambda (_L25546_)
                                                              (let ()
                                                                (let* ((_g2555825566_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g2555925562_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2555925562_)))
                               (_g2555725588_
                                (lambda (_g2555925570_)
                                  ((lambda (_L25573_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons _L25546_
                                                     (cons _L25573_ '()))))))
                                   _g2555925570_))))
                          (_g2555725588_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'match)
                                  (cons _L25546_ _L25518_))
                            (gx#stx-source _stx25349_))))))
                    _g2553225543_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2553025592_
                                                    (gx#genident 'args)))
                                                 (_g2535325491_
                                                  _g2535525495_)))
                                           _tl2536925515_)
                                          (_g2535325491_ _g2535525495_))
                                      (_g2535325491_ _g2535525495_))))
                              (_g2535325491_ _g2535525495_))))
                      (_g2535325491_ _g2535525495_))))
               (_g2535125701_
                (lambda (_g2535525600_)
                  (if (gx#stx-pair? _g2535525600_)
                      (let ((_e2535725603_ (gx#syntax-e _g2535525600_)))
                        (let ((_hd2535825607_ (##car _e2535725603_))
                              (_tl2535925610_ (##cdr _e2535725603_)))
                          (if (gx#stx-pair? _tl2535925610_)
                              (let ((_e2536025613_
                                     (gx#syntax-e _tl2535925610_)))
                                (let ((_hd2536125617_ (##car _e2536025613_))
                                      (_tl2536225620_ (##cdr _e2536025613_)))
                                  (if (gx#identifier? _hd2536125617_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g31731_|
                                           _hd2536125617_)
                                          ((lambda (_L25623_)
                                             (if (gx#stx-list? _L25623_)
                                                 (let* ((_g2563625644_
                                                         (lambda (_g2563725640_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2563725640_)))
                                                        (_g2563525697_
                                                         (lambda (_g2563725648_)
                                                           ((lambda (_L25651_)
                                                              (let ()
                                                                (let* ((_g2566325671_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g2566425667_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2566425667_)))
                               (_g2566225693_
                                (lambda (_g2566425675_)
                                  ((lambda (_L25678_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _L25651_ '())
                                                     (cons _L25678_ '()))))))
                                   _g2566425675_))))
                          (_g2566225693_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'match)
                                  (cons _L25651_ _L25623_))
                            (gx#stx-source _stx25349_))))))
                    _g2563725648_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2563525697_
                                                    (gx#genident 'e)))
                                                 (_g2535225596_
                                                  _g2535525600_)))
                                           _tl2536225620_)
                                          (_g2535225596_ _g2535525600_))
                                      (_g2535225596_ _g2535525600_))))
                              (_g2535225596_ _g2535525600_))))
                      (_g2535225596_ _g2535525600_)))))
          (_g2535125701_ _stx25349_))))
    (define |gerbil/core$<match>[:0:]#match*|
      (lambda (_stx25705_)
        (let* ((_g2570825732_
                (lambda (_g2570925728_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2570925728_)))
               (_g2570725944_
                (lambda (_g2570925736_)
                  (if (gx#stx-pair? _g2570925736_)
                      (let ((_e2571225739_ (gx#syntax-e _g2570925736_)))
                        (let ((_hd2571325743_ (##car _e2571225739_))
                              (_tl2571425746_ (##cdr _e2571225739_)))
                          (if (gx#stx-pair? _tl2571425746_)
                              (let ((_e2571525749_
                                     (gx#syntax-e _tl2571425746_)))
                                (let ((_hd2571625753_ (##car _e2571525749_))
                                      (_tl2571725756_ (##cdr _e2571525749_)))
                                  (if (gx#stx-pair/null? _hd2571625753_)
                                      (if (fx>= (gx#stx-length _hd2571625753_)
                                                '0)
                                          (let ((_g31732_
                                                 (gx#syntax-split-splice
                                                  _hd2571625753_
                                                  '0)))
                                            (begin
                                              (let ((_g31733_
                                                     (values-count _g31732_)))
                                                (if (not (fx= _g31733_ 2))
                                                    (error "Context expects 2 values"
                                                           _g31733_)))
                                              (let ((_target2571825759_
                                                     (values-ref _g31732_ 0))
                                                    (_tl2572025762_
                                                     (values-ref _g31732_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2572025762_)
                                                    (letrec ((_loop2572125765_
                                                              (lambda (_hd2571925769_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _e2572525772_)
                        (if (gx#stx-pair? _hd2571925769_)
                            (let ((_e2572225775_ (gx#syntax-e _hd2571925769_)))
                              (let ((_lp-hd2572325779_ (##car _e2572225775_))
                                    (_lp-tl2572425782_ (##cdr _e2572225775_)))
                                (_loop2572125765_
                                 _lp-tl2572425782_
                                 (cons _lp-hd2572325779_ _e2572525772_))))
                            (let ((_e2572625785_ (reverse _e2572525772_)))
                              ((lambda (_L25789_ _L25791_)
                                 (if (gx#stx-list? _L25789_)
                                     (let* ((_g2580925826_
                                             (lambda (_g2581025822_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2581025822_)))
                                            (_g2580825932_
                                             (lambda (_g2581025830_)
                                               (if (gx#stx-pair/null?
                                                    _g2581025830_)
                                                   (if (fx>= (gx#stx-length
                                                              _g2581025830_)
                                                             '0)
                                                       (let ((_g31734_
                                                              (gx#syntax-split-splice
                                                               _g2581025830_
                                                               '0)))
                                                         (begin
                                                           (let ((_g31735_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g31734_)))
                     (if (not (fx= _g31735_ 2))
                         (error "Context expects 2 values" _g31735_)))
                   (let ((_target2581225833_ (values-ref _g31734_ 0))
                         (_tl2581425836_ (values-ref _g31734_ 1)))
                     (if (gx#stx-null? _tl2581425836_)
                         (letrec ((_loop2581525839_
                                   (lambda (_hd2581325843_ _$e2581925846_)
                                     (if (gx#stx-pair? _hd2581325843_)
                                         (let ((_e2581625849_
                                                (gx#syntax-e _hd2581325843_)))
                                           (let ((_lp-hd2581725853_
                                                  (##car _e2581625849_))
                                                 (_lp-tl2581825856_
                                                  (##cdr _e2581625849_)))
                                             (_loop2581525839_
                                              _lp-tl2581825856_
                                              (cons _lp-hd2581725853_
                                                    _$e2581925846_))))
                                         (let ((_$e2582025859_
                                                (reverse _$e2581925846_)))
                                           ((lambda (_L25863_)
                                              (let ()
                                                (let* ((_g2587925887_
                                                        (lambda (_g2588025883_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g2588025883_)))
                                                       (_g2587825920_
                                                        (lambda (_g2588025891_)
                                                          ((lambda (_L25894_)
                                                             (let ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'let)
                               (cons (begin
                                       (gx#syntax-check-splice-targets
                                        _L25791_
                                        _L25863_)
                                       (foldr (lambda (_g2590825912_
                                                       _g2590925915_
                                                       _g2591025917_)
                                                (cons (cons _g2590925915_
                                                            (cons _g2590825912_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _g2591025917_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _L25791_
                                              _L25863_))
                                     (cons _L25894_ '()))))))
                   _g2588025891_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2587825920_
                                                   (|gerbil/core$<match>[1]#generate-match*|
                                                    _stx25705_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g2592325926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2592425929_)
                       (cons _g2592325926_ _g2592425929_))
                     '()
                     _L25863_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _L25789_)))))
                                            _$e2582025859_))))))
                           (_loop2581525839_ _target2581225833_ '()))
                         (_g2580925826_ _g2581025830_)))))
               (_g2580925826_ _g2581025830_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2580925826_
                                                    _g2581025830_)))))
                                       (_g2580825932_
                                        (gx#gentemps
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g2593525938_
                                                           _g2593625941_)
                                                    (cons _g2593525938_
                                                          _g2593625941_))
                                                  '()
                                                  _L25791_)))))
                                     (_g2570825732_ _g2570925736_)))
                               _tl2571725756_
                               _e2572625785_))))))
              (_loop2572125765_ _target2571825759_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2570825732_
                                                     _g2570925736_)))))
                                          (_g2570825732_ _g2570925736_))
                                      (_g2570825732_ _g2570925736_))))
                              (_g2570825732_ _g2570925736_))))
                      (_g2570825732_ _g2570925736_)))))
          (_g2570725944_ _stx25705_))))
    (define |gerbil/core$<match>[:0:]#with|
      (lambda (_$stx25950_)
        (let* ((_g2595626039_
                (lambda (_g2595726035_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2595726035_)))
               (_g2595526200_
                (lambda (_g2595726043_)
                  (if (gx#stx-pair? _g2595726043_)
                      (let ((_e2600226046_ (gx#syntax-e _g2595726043_)))
                        (let ((_hd2600326050_ (##car _e2600226046_))
                              (_tl2600426053_ (##cdr _e2600226046_)))
                          (if (gx#stx-pair? _tl2600426053_)
                              (let ((_e2600526056_
                                     (gx#syntax-e _tl2600426053_)))
                                (let ((_hd2600626060_ (##car _e2600526056_))
                                      (_tl2600726063_ (##cdr _e2600526056_)))
                                  (if (gx#stx-pair/null? _hd2600626060_)
                                      (if (fx>= (gx#stx-length _hd2600626060_)
                                                '0)
                                          (let ((_g31736_
                                                 (gx#syntax-split-splice
                                                  _hd2600626060_
                                                  '0)))
                                            (begin
                                              (let ((_g31737_
                                                     (values-count _g31736_)))
                                                (if (not (fx= _g31737_ 2))
                                                    (error "Context expects 2 values"
                                                           _g31737_)))
                                              (let ((_target2600826066_
                                                     (values-ref _g31736_ 0))
                                                    (_tl2601026069_
                                                     (values-ref _g31736_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2601026069_)
                                                    (letrec ((_loop2601126072_
                                                              (lambda (_hd2600926076_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr2601526079_
                               _hd2601626081_)
                        (if (gx#stx-pair? _hd2600926076_)
                            (let ((_e2601226084_ (gx#syntax-e _hd2600926076_)))
                              (let ((_lp-hd2601326088_ (##car _e2601226084_))
                                    (_lp-tl2601426091_ (##cdr _e2601226084_)))
                                (if (gx#stx-pair? _lp-hd2601326088_)
                                    (let ((_e2601926094_
                                           (gx#syntax-e _lp-hd2601326088_)))
                                      (let ((_hd2602026098_
                                             (##car _e2601926094_))
                                            (_tl2602126101_
                                             (##cdr _e2601926094_)))
                                        (if (gx#stx-pair? _tl2602126101_)
                                            (let ((_e2602226104_
                                                   (gx#syntax-e
                                                    _tl2602126101_)))
                                              (let ((_hd2602326108_
                                                     (##car _e2602226104_))
                                                    (_tl2602426111_
                                                     (##cdr _e2602226104_)))
                                                (if (gx#stx-null?
                                                     _tl2602426111_)
                                                    (_loop2601126072_
                                                     _lp-tl2601426091_
                                                     (cons _hd2602326108_
                                                           _expr2601526079_)
                                                     (cons _hd2602026098_
                                                           _hd2601626081_))
                                                    (_g2595626039_
                                                     _g2595726043_))))
                                            (_g2595626039_ _g2595726043_))))
                                    (_g2595626039_ _g2595726043_))))
                            (let ((_expr2601726114_ (reverse _expr2601526079_))
                                  (_hd2601826117_ (reverse _hd2601626081_)))
                              (if (gx#stx-pair/null? _tl2600726063_)
                                  (if (fx>= (gx#stx-length _tl2600726063_) '0)
                                      (let ((_g31738_
                                             (gx#syntax-split-splice
                                              _tl2600726063_
                                              '0)))
                                        (begin
                                          (let ((_g31739_
                                                 (values-count _g31738_)))
                                            (if (not (fx= _g31739_ 2))
                                                (error "Context expects 2 values"
                                                       _g31739_)))
                                          (let ((_target2602526120_
                                                 (values-ref _g31738_ 0))
                                                (_tl2602726123_
                                                 (values-ref _g31738_ 1)))
                                            (if (gx#stx-null? _tl2602726123_)
                                                (letrec ((_loop2602826126_
                                                          (lambda (_hd2602626130_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body2603226133_)
                    (if (gx#stx-pair? _hd2602626130_)
                        (let ((_e2602926136_ (gx#syntax-e _hd2602626130_)))
                          (let ((_lp-hd2603026140_ (##car _e2602926136_))
                                (_lp-tl2603126143_ (##cdr _e2602926136_)))
                            (_loop2602826126_
                             _lp-tl2603126143_
                             (cons _lp-hd2603026140_ _body2603226133_))))
                        (let ((_body2603326146_ (reverse _body2603226133_)))
                          ((lambda (_L26150_ _L26152_ _L26153_)
                             (cons (gx#datum->syntax '#f 'match*)
                                   (cons (begin
                                           '#!void
                                           (foldr (lambda (_g2617526182_
                                                           _g2617626185_)
                                                    (cons _g2617526182_
                                                          _g2617626185_))
                                                  '()
                                                  _L26152_))
                                         (cons (cons (begin
                                                       '#!void
                                                       (foldr (lambda (_g2617726188_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2617826191_)
                        (cons _g2617726188_ _g2617826191_))
                      '()
                      _L26153_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2617926194_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2618026197_)
                        (cons _g2617926194_ _g2618026197_))
                      '()
                      _L26150_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _body2603326146_
                           _expr2601726114_
                           _hd2601826117_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2602826126_
                                                   _target2602526120_
                                                   '()))
                                                (_g2595626039_
                                                 _g2595726043_)))))
                                      (_g2595626039_ _g2595726043_))
                                  (_g2595626039_ _g2595726043_)))))))
              (_loop2601126072_ _target2600826066_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2595626039_
                                                     _g2595726043_)))))
                                          (_g2595626039_ _g2595726043_))
                                      (_g2595626039_ _g2595726043_))))
                              (_g2595626039_ _g2595726043_))))
                      (_g2595626039_ _g2595726043_))))
               (_g2595426312_
                (lambda (_g2595726204_)
                  (if (gx#stx-pair? _g2595726204_)
                      (let ((_e2597826207_ (gx#syntax-e _g2595726204_)))
                        (let ((_hd2597926211_ (##car _e2597826207_))
                              (_tl2598026214_ (##cdr _e2597826207_)))
                          (if (gx#stx-pair? _tl2598026214_)
                              (let ((_e2598126217_
                                     (gx#syntax-e _tl2598026214_)))
                                (let ((_hd2598226221_ (##car _e2598126217_))
                                      (_tl2598326224_ (##cdr _e2598126217_)))
                                  (if (gx#stx-pair? _hd2598226221_)
                                      (let ((_e2598426227_
                                             (gx#syntax-e _hd2598226221_)))
                                        (let ((_hd2598526231_
                                               (##car _e2598426227_))
                                              (_tl2598626234_
                                               (##cdr _e2598426227_)))
                                          (if (gx#stx-pair? _tl2598626234_)
                                              (let ((_e2598726237_
                                                     (gx#syntax-e
                                                      _tl2598626234_)))
                                                (let ((_hd2598826241_
                                                       (##car _e2598726237_))
                                                      (_tl2598926244_
                                                       (##cdr _e2598726237_)))
                                                  (if (gx#stx-null?
                                                       _tl2598926244_)
                                                      (if (gx#stx-pair/null?
                                                           _tl2598326224_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tl2598326224_)
                            '0)
                      (let ((_g31740_
                             (gx#syntax-split-splice _tl2598326224_ '0)))
                        (begin
                          (let ((_g31741_ (values-count _g31740_)))
                            (if (not (fx= _g31741_ 2))
                                (error "Context expects 2 values" _g31741_)))
                          (let ((_target2599026247_ (values-ref _g31740_ 0))
                                (_tl2599226250_ (values-ref _g31740_ 1)))
                            (if (gx#stx-null? _tl2599226250_)
                                (letrec ((_loop2599326253_
                                          (lambda (_hd2599126257_
                                                   _body2599726260_)
                                            (if (gx#stx-pair? _hd2599126257_)
                                                (let ((_e2599426263_
                                                       (gx#syntax-e
                                                        _hd2599126257_)))
                                                  (let ((_lp-hd2599526267_
                                                         (##car _e2599426263_))
                                                        (_lp-tl2599626270_
                                                         (##cdr _e2599426263_)))
                                                    (_loop2599326253_
                                                     _lp-tl2599626270_
                                                     (cons _lp-hd2599526267_
                                                           _body2599726260_))))
                                                (let ((_body2599826273_
                                                       (reverse _body2599726260_)))
                                                  ((lambda (_L26277_
                                                            _L26279_
                                                            _L26280_
                                                            _L26281_)
                                                     (if (|gerbil/core$<match>[1]#match-pattern?|
                                                          _L26280_)
                                                         (cons _L26281_
                                                               (cons (cons (cons _L26280_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons _L26279_ '()))
                                   '())
                             (begin
                               '#!void
                               (foldr (lambda (_g2630326306_ _g2630426309_)
                                        (cons _g2630326306_ _g2630426309_))
                                      '()
                                      _L26277_))))
                 (_g2595526200_ _g2595726204_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _body2599826273_
                                                   _hd2598826241_
                                                   _hd2598526231_
                                                   _hd2597926211_))))))
                                  (_loop2599326253_ _target2599026247_ '()))
                                (_g2595526200_ _g2595726204_)))))
                      (_g2595526200_ _g2595726204_))
                  (_g2595526200_ _g2595726204_))
              (_g2595526200_ _g2595726204_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2595526200_ _g2595726204_))))
                                      (_g2595526200_ _g2595726204_))))
                              (_g2595526200_ _g2595726204_))))
                      (_g2595526200_ _g2595726204_))))
               (_g2595326394_
                (lambda (_g2595726316_)
                  (if (gx#stx-pair? _g2595726316_)
                      (let ((_e2595926319_ (gx#syntax-e _g2595726316_)))
                        (let ((_hd2596026323_ (##car _e2595926319_))
                              (_tl2596126326_ (##cdr _e2595926319_)))
                          (if (gx#stx-pair? _tl2596126326_)
                              (let ((_e2596226329_
                                     (gx#syntax-e _tl2596126326_)))
                                (let ((_hd2596326333_ (##car _e2596226329_))
                                      (_tl2596426336_ (##cdr _e2596226329_)))
                                  (if (gx#stx-null? _hd2596326333_)
                                      (if (gx#stx-pair/null? _tl2596426336_)
                                          (if (fx>= (gx#stx-length
                                                     _tl2596426336_)
                                                    '0)
                                              (let ((_g31742_
                                                     (gx#syntax-split-splice
                                                      _tl2596426336_
                                                      '0)))
                                                (begin
                                                  (let ((_g31743_
                                                         (values-count
                                                          _g31742_)))
                                                    (if (not (fx= _g31743_ 2))
                                                        (error "Context expects 2 values"
                                                               _g31743_)))
                                                  (let ((_target2596526339_
                                                         (values-ref
                                                          _g31742_
                                                          0))
                                                        (_tl2596726342_
                                                         (values-ref
                                                          _g31742_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl2596726342_)
                                                        (letrec ((_loop2596826345_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd2596626349_ _body2597226352_)
                            (if (gx#stx-pair? _hd2596626349_)
                                (let ((_e2596926355_
                                       (gx#syntax-e _hd2596626349_)))
                                  (let ((_lp-hd2597026359_
                                         (##car _e2596926355_))
                                        (_lp-tl2597126362_
                                         (##cdr _e2596926355_)))
                                    (_loop2596826345_
                                     _lp-tl2597126362_
                                     (cons _lp-hd2597026359_
                                           _body2597226352_))))
                                (let ((_body2597326365_
                                       (reverse _body2597226352_)))
                                  ((lambda (_L26369_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2638526388_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2638626391_)
                    (cons _g2638526388_ _g2638626391_))
                  '()
                  _L26369_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body2597326365_))))))
                  (_loop2596826345_ _target2596526339_ '()))
                (_g2595426312_ _g2595726316_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2595426312_ _g2595726316_))
                                          (_g2595426312_ _g2595726316_))
                                      (_g2595426312_ _g2595726316_))))
                              (_g2595426312_ _g2595726316_))))
                      (_g2595426312_ _g2595726316_)))))
          (_g2595326394_ _$stx25950_))))
    (define |gerbil/core$<match>[:0:]#with*|
      (lambda (_$stx26402_)
        (let* ((_g2640726459_
                (lambda (_g2640826455_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2640826455_)))
               (_g2640626542_
                (lambda (_g2640826463_)
                  (if (gx#stx-pair? _g2640826463_)
                      (let ((_e2643926466_ (gx#syntax-e _g2640826463_)))
                        (let ((_hd2644026470_ (##car _e2643926466_))
                              (_tl2644126473_ (##cdr _e2643926466_)))
                          (if (gx#stx-pair? _tl2644126473_)
                              (let ((_e2644226476_
                                     (gx#syntax-e _tl2644126473_)))
                                (let ((_hd2644326480_ (##car _e2644226476_))
                                      (_tl2644426483_ (##cdr _e2644226476_)))
                                  (if (gx#stx-null? _hd2644326480_)
                                      (if (gx#stx-pair/null? _tl2644426483_)
                                          (if (fx>= (gx#stx-length
                                                     _tl2644426483_)
                                                    '0)
                                              (let ((_g31744_
                                                     (gx#syntax-split-splice
                                                      _tl2644426483_
                                                      '0)))
                                                (begin
                                                  (let ((_g31745_
                                                         (values-count
                                                          _g31744_)))
                                                    (if (not (fx= _g31745_ 2))
                                                        (error "Context expects 2 values"
                                                               _g31745_)))
                                                  (let ((_target2644526486_
                                                         (values-ref
                                                          _g31744_
                                                          0))
                                                        (_tl2644726489_
                                                         (values-ref
                                                          _g31744_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl2644726489_)
                                                        (letrec ((_loop2644826492_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd2644626496_ _body2645226499_)
                            (if (gx#stx-pair? _hd2644626496_)
                                (let ((_e2644926502_
                                       (gx#syntax-e _hd2644626496_)))
                                  (let ((_lp-hd2645026506_
                                         (##car _e2644926502_))
                                        (_lp-tl2645126509_
                                         (##cdr _e2644926502_)))
                                    (_loop2644826492_
                                     _lp-tl2645126509_
                                     (cons _lp-hd2645026506_
                                           _body2645226499_))))
                                (let ((_body2645326512_
                                       (reverse _body2645226499_)))
                                  ((lambda (_L26516_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2653326536_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2653426539_)
                    (cons _g2653326536_ _g2653426539_))
                  '()
                  _L26516_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body2645326512_))))))
                  (_loop2644826492_ _target2644526486_ '()))
                (_g2640726459_ _g2640826463_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2640726459_ _g2640826463_))
                                          (_g2640726459_ _g2640826463_))
                                      (_g2640726459_ _g2640826463_))))
                              (_g2640726459_ _g2640826463_))))
                      (_g2640726459_ _g2640826463_))))
               (_g2640526668_
                (lambda (_g2640826546_)
                  (if (gx#stx-pair? _g2640826546_)
                      (let ((_e2641426549_ (gx#syntax-e _g2640826546_)))
                        (let ((_hd2641526553_ (##car _e2641426549_))
                              (_tl2641626556_ (##cdr _e2641426549_)))
                          (if (gx#stx-pair? _tl2641626556_)
                              (let ((_e2641726559_
                                     (gx#syntax-e _tl2641626556_)))
                                (let ((_hd2641826563_ (##car _e2641726559_))
                                      (_tl2641926566_ (##cdr _e2641726559_)))
                                  (if (gx#stx-pair? _hd2641826563_)
                                      (let ((_e2642026569_
                                             (gx#syntax-e _hd2641826563_)))
                                        (let ((_hd2642126573_
                                               (##car _e2642026569_))
                                              (_tl2642226576_
                                               (##cdr _e2642026569_)))
                                          (if (gx#stx-pair? _hd2642126573_)
                                              (let ((_e2642326579_
                                                     (gx#syntax-e
                                                      _hd2642126573_)))
                                                (let ((_hd2642426583_
                                                       (##car _e2642326579_))
                                                      (_tl2642526586_
                                                       (##cdr _e2642326579_)))
                                                  (if (gx#stx-pair?
                                                       _tl2642526586_)
                                                      (let ((_e2642626589_
                                                             (gx#syntax-e
                                                              _tl2642526586_)))
                                                        (let ((_hd2642726593_
                                                               (##car _e2642626589_))
                                                              (_tl2642826596_
                                                               (##cdr _e2642626589_)))
                                                          (if (gx#stx-null?
                                                               _tl2642826596_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2641926566_)
                          (if (fx>= (gx#stx-length _tl2641926566_) '0)
                              (let ((_g31746_
                                     (gx#syntax-split-splice
                                      _tl2641926566_
                                      '0)))
                                (begin
                                  (let ((_g31747_ (values-count _g31746_)))
                                    (if (not (fx= _g31747_ 2))
                                        (error "Context expects 2 values"
                                               _g31747_)))
                                  (let ((_target2642926599_
                                         (values-ref _g31746_ 0))
                                        (_tl2643126602_
                                         (values-ref _g31746_ 1)))
                                    (if (gx#stx-null? _tl2643126602_)
                                        (letrec ((_loop2643226605_
                                                  (lambda (_hd2643026609_
                                                           _body2643626612_)
                                                    (if (gx#stx-pair?
                                                         _hd2643026609_)
                                                        (let ((_e2643326615_
                                                               (gx#syntax-e
                                                                _hd2643026609_)))
                                                          (let ((_lp-hd2643426619_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2643326615_))
                        (_lp-tl2643526622_ (##cdr _e2643326615_)))
                    (_loop2643226605_
                     _lp-tl2643526622_
                     (cons _lp-hd2643426619_ _body2643626612_))))
                (let ((_body2643726625_ (reverse _body2643626612_)))
                  ((lambda (_L26629_ _L26631_ _L26632_ _L26633_ _L26634_)
                     (cons (gx#datum->syntax '#f 'with)
                           (cons (cons (cons _L26633_ (cons _L26632_ '())) '())
                                 (cons (cons _L26634_
                                             (cons _L26631_
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g2665926662_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2666026665_)
                      (cons _g2665926662_ _g2666026665_))
                    '()
                    _L26629_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
                   _body2643726625_
                   _tl2642226576_
                   _hd2642726593_
                   _hd2642426583_
                   _hd2641526553_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop2643226605_
                                           _target2642926599_
                                           '()))
                                        (_g2640626542_ _g2640826546_)))))
                              (_g2640626542_ _g2640826546_))
                          (_g2640626542_ _g2640826546_))
                      (_g2640626542_ _g2640826546_))))
              (_g2640626542_ _g2640826546_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2640626542_ _g2640826546_))))
                                      (_g2640626542_ _g2640826546_))))
                              (_g2640626542_ _g2640826546_))))
                      (_g2640626542_ _g2640826546_)))))
          (_g2640526668_ _$stx26402_))))
    (define |gerbil/core$<match>[:0:]#?|
      (lambda (_$stx26674_)
        (let* ((_g2668526829_
                (lambda (_g2668626825_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2668626825_)))
               (_g2668426924_
                (lambda (_g2668626833_)
                  (if (gx#stx-pair? _g2668626833_)
                      (let ((_e2680626836_ (gx#syntax-e _g2668626833_)))
                        (let ((_hd2680726840_ (##car _e2680626836_))
                              (_tl2680826843_ (##cdr _e2680626836_)))
                          (if (gx#stx-pair? _tl2680826843_)
                              (let ((_e2680926846_
                                     (gx#syntax-e _tl2680826843_)))
                                (let ((_hd2681026850_ (##car _e2680926846_))
                                      (_tl2681126853_ (##cdr _e2680926846_)))
                                  (if (gx#stx-pair? _tl2681126853_)
                                      (let ((_e2681226856_
                                             (gx#syntax-e _tl2681126853_)))
                                        (let ((_hd2681326860_
                                               (##car _e2681226856_))
                                              (_tl2681426863_
                                               (##cdr _e2681226856_)))
                                          (if (gx#stx-datum? _hd2681326860_)
                                              (if (equal? (gx#stx-e
                                                           _hd2681326860_)
                                                          '::)
                                                  (if (gx#stx-pair?
                                                       _tl2681426863_)
                                                      (let ((_e2681526866_
                                                             (gx#syntax-e
                                                              _tl2681426863_)))
                                                        (let ((_hd2681626870_
                                                               (##car _e2681526866_))
                                                              (_tl2681726873_
                                                               (##cdr _e2681526866_)))
                                                          (if (gx#stx-pair?
                                                               _tl2681726873_)
                                                              (let ((_e2681826876_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl2681726873_)))
                        (let ((_hd2681926880_ (##car _e2681826876_))
                              (_tl2682026883_ (##cdr _e2681826876_)))
                          (if (gx#identifier? _hd2681926880_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g31748_|
                                   _hd2681926880_)
                                  (if (gx#stx-pair? _tl2682026883_)
                                      (let ((_e2682126886_
                                             (gx#syntax-e _tl2682026883_)))
                                        (let ((_hd2682226890_
                                               (##car _e2682126886_))
                                              (_tl2682326893_
                                               (##cdr _e2682126886_)))
                                          (if (gx#stx-null? _tl2682326893_)
                                              ((lambda (_L26896_
                                                        _L26898_
                                                        _L26899_
                                                        _L26900_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())
                     (cons (cons (gx#datum->syntax '#f 'and)
                                 (cons (cons _L26900_
                                             (cons _L26899_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '$obj)
                                                         '())))
                                       (cons (cons _L26896_
                                                   (cons (cons _L26898_
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
                                               _hd2682226890_
                                               _hd2681626870_
                                               _hd2681026850_
                                               _hd2680726840_)
                                              (_g2668526829_ _g2668626833_))))
                                      (_g2668526829_ _g2668626833_))
                                  (_g2668526829_ _g2668626833_))
                              (_g2668526829_ _g2668626833_))))
                      (_g2668526829_ _g2668626833_))))
              (_g2668526829_ _g2668626833_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2668526829_
                                                   _g2668626833_))
                                              (_g2668526829_ _g2668626833_))))
                                      (_g2668526829_ _g2668626833_))))
                              (_g2668526829_ _g2668626833_))))
                      (_g2668526829_ _g2668626833_))))
               (_g2668326992_
                (lambda (_g2668626928_)
                  (if (gx#stx-pair? _g2668626928_)
                      (let ((_e2679026931_ (gx#syntax-e _g2668626928_)))
                        (let ((_hd2679126935_ (##car _e2679026931_))
                              (_tl2679226938_ (##cdr _e2679026931_)))
                          (if (gx#stx-pair? _tl2679226938_)
                              (let ((_e2679326941_
                                     (gx#syntax-e _tl2679226938_)))
                                (let ((_hd2679426945_ (##car _e2679326941_))
                                      (_tl2679526948_ (##cdr _e2679326941_)))
                                  (if (gx#stx-pair? _tl2679526948_)
                                      (let ((_e2679626951_
                                             (gx#syntax-e _tl2679526948_)))
                                        (let ((_hd2679726955_
                                               (##car _e2679626951_))
                                              (_tl2679826958_
                                               (##cdr _e2679626951_)))
                                          (if (gx#stx-datum? _hd2679726955_)
                                              (if (equal? (gx#stx-e
                                                           _hd2679726955_)
                                                          '::)
                                                  (if (gx#stx-pair?
                                                       _tl2679826958_)
                                                      (let ((_e2679926961_
                                                             (gx#syntax-e
                                                              _tl2679826958_)))
                                                        (let ((_hd2680026965_
                                                               (##car _e2679926961_))
                                                              (_tl2680126968_
                                                               (##cdr _e2679926961_)))
                                                          (if (gx#stx-null?
                                                               _tl2680126968_)
                                                              ((lambda (_L26971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L26973_
                                _L26974_)
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons (cons (gx#datum->syntax '#f '$obj) '())
                                     (cons (cons (gx#datum->syntax '#f 'alet)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '$val)
                                                             (cons (cons _L26974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _L26973_
                                       (cons (gx#datum->syntax '#f '$obj)
                                             '())))
                           '()))
               (cons (cons _L26971_ (cons (gx#datum->syntax '#f '$val) '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                       _hd2680026965_
                       _hd2679426945_
                       _hd2679126935_)
                      (_g2668426924_ _g2668626928_))))
              (_g2668426924_ _g2668626928_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2668426924_
                                                   _g2668626928_))
                                              (_g2668426924_ _g2668626928_))))
                                      (_g2668426924_ _g2668626928_))))
                              (_g2668426924_ _g2668626928_))))
                      (_g2668426924_ _g2668626928_))))
               (_g2668227060_
                (lambda (_g2668626996_)
                  (if (gx#stx-pair? _g2668626996_)
                      (let ((_e2677526999_ (gx#syntax-e _g2668626996_)))
                        (let ((_hd2677627003_ (##car _e2677526999_))
                              (_tl2677727006_ (##cdr _e2677526999_)))
                          (if (gx#stx-pair? _tl2677727006_)
                              (let ((_e2677827009_
                                     (gx#syntax-e _tl2677727006_)))
                                (let ((_hd2677927013_ (##car _e2677827009_))
                                      (_tl2678027016_ (##cdr _e2677827009_)))
                                  (if (gx#stx-pair? _tl2678027016_)
                                      (let ((_e2678127019_
                                             (gx#syntax-e _tl2678027016_)))
                                        (let ((_hd2678227023_
                                               (##car _e2678127019_))
                                              (_tl2678327026_
                                               (##cdr _e2678127019_)))
                                          (if (gx#identifier? _hd2678227023_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g31749_|
                                                   _hd2678227023_)
                                                  (if (gx#stx-pair?
                                                       _tl2678327026_)
                                                      (let ((_e2678427029_
                                                             (gx#syntax-e
                                                              _tl2678327026_)))
                                                        (let ((_hd2678527033_
                                                               (##car _e2678427029_))
                                                              (_tl2678627036_
                                                               (##cdr _e2678427029_)))
                                                          (if (gx#stx-null?
                                                               _tl2678627036_)
                                                              ((lambda (_L27039_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L27041_
                                _L27042_)
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons (cons (gx#datum->syntax '#f '$obj) '())
                                     (cons (cons (gx#datum->syntax '#f 'and)
                                                 (cons (cons _L27042_
                                                             (cons _L27041_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f '$obj) '())))
               (cons (cons _L27039_ (cons (gx#datum->syntax '#f '$obj) '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                       _hd2678527033_
                       _hd2677927013_
                       _hd2677627003_)
                      (_g2668326992_ _g2668626996_))))
              (_g2668326992_ _g2668626996_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2668326992_
                                                   _g2668626996_))
                                              (_g2668326992_ _g2668626996_))))
                                      (_g2668326992_ _g2668626996_))))
                              (_g2668326992_ _g2668626996_))))
                      (_g2668326992_ _g2668626996_))))
               (_g2668127102_
                (lambda (_g2668627064_)
                  (if (gx#stx-pair? _g2668627064_)
                      (let ((_e2676627067_ (gx#syntax-e _g2668627064_)))
                        (let ((_hd2676727071_ (##car _e2676627067_))
                              (_tl2676827074_ (##cdr _e2676627067_)))
                          (if (gx#stx-pair? _tl2676827074_)
                              (let ((_e2676927077_
                                     (gx#syntax-e _tl2676827074_)))
                                (let ((_hd2677027081_ (##car _e2676927077_))
                                      (_tl2677127084_ (##cdr _e2676927077_)))
                                  (if (gx#stx-null? _tl2677127084_)
                                      ((lambda (_L27087_ _L27089_)
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '$obj)
                                                           '())
                                                     (cons (cons _L27089_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L27087_
                               (cons (gx#datum->syntax '#f '$obj) '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd2677027081_
                                       _hd2676727071_)
                                      (_g2668227060_ _g2668627064_))))
                              (_g2668227060_ _g2668627064_))))
                      (_g2668227060_ _g2668627064_))))
               (_g2668027156_
                (lambda (_g2668627106_)
                  (if (gx#stx-pair? _g2668627106_)
                      (let ((_e2675527109_ (gx#syntax-e _g2668627106_)))
                        (let ((_hd2675627113_ (##car _e2675527109_))
                              (_tl2675727116_ (##cdr _e2675527109_)))
                          (if (gx#stx-pair? _tl2675727116_)
                              (let ((_e2675827119_
                                     (gx#syntax-e _tl2675727116_)))
                                (let ((_hd2675927123_ (##car _e2675827119_))
                                      (_tl2676027126_ (##cdr _e2675827119_)))
                                  (if (gx#stx-pair? _tl2676027126_)
                                      (let ((_e2676127129_
                                             (gx#syntax-e _tl2676027126_)))
                                        (let ((_hd2676227133_
                                               (##car _e2676127129_))
                                              (_tl2676327136_
                                               (##cdr _e2676127129_)))
                                          (if (gx#stx-null? _tl2676327136_)
                                              ((lambda (_L27139_ _L27141_)
                                                 (cons _L27141_
                                                       (cons _L27139_ '())))
                                               _hd2676227133_
                                               _hd2675927123_)
                                              (_g2668127102_ _g2668627106_))))
                                      (_g2668127102_ _g2668627106_))))
                              (_g2668127102_ _g2668627106_))))
                      (_g2668127102_ _g2668627106_))))
               (_g2667927236_
                (lambda (_g2668627160_)
                  (if (gx#stx-pair? _g2668627160_)
                      (let ((_e2673827163_ (gx#syntax-e _g2668627160_)))
                        (let ((_hd2673927167_ (##car _e2673827163_))
                              (_tl2674027170_ (##cdr _e2673827163_)))
                          (if (gx#stx-pair? _tl2674027170_)
                              (let ((_e2674127173_
                                     (gx#syntax-e _tl2674027170_)))
                                (let ((_hd2674227177_ (##car _e2674127173_))
                                      (_tl2674327180_ (##cdr _e2674127173_)))
                                  (if (gx#stx-pair? _hd2674227177_)
                                      (let ((_e2674427183_
                                             (gx#syntax-e _hd2674227177_)))
                                        (let ((_hd2674527187_
                                               (##car _e2674427183_))
                                              (_tl2674627190_
                                               (##cdr _e2674427183_)))
                                          (if (gx#identifier? _hd2674527187_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g31750_|
                                                   _hd2674527187_)
                                                  (if (gx#stx-pair?
                                                       _tl2674627190_)
                                                      (let ((_e2674727193_
                                                             (gx#syntax-e
                                                              _tl2674627190_)))
                                                        (let ((_hd2674827197_
                                                               (##car _e2674727193_))
                                                              (_tl2674927200_
                                                               (##cdr _e2674727193_)))
                                                          (if (gx#stx-null?
                                                               _tl2674927200_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2674327180_)
                          (let ((_e2675027203_ (gx#syntax-e _tl2674327180_)))
                            (let ((_hd2675127207_ (##car _e2675027203_))
                                  (_tl2675227210_ (##cdr _e2675027203_)))
                              (if (gx#stx-null? _tl2675227210_)
                                  ((lambda (_L27213_ _L27215_ _L27216_)
                                     (cons (gx#datum->syntax '#f 'not)
                                           (cons (cons _L27216_
                                                       (cons _L27215_
                                                             (cons _L27213_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                                   _hd2675127207_
                                   _hd2674827197_
                                   _hd2673927167_)
                                  (_g2668027156_ _g2668627160_))))
                          (_g2668027156_ _g2668627160_))
                      (_g2668027156_ _g2668627160_))))
              (_g2668027156_ _g2668627160_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2668027156_
                                                   _g2668627160_))
                                              (_g2668027156_ _g2668627160_))))
                                      (_g2668027156_ _g2668627160_))))
                              (_g2668027156_ _g2668627160_))))
                      (_g2668027156_ _g2668627160_))))
               (_g2667827346_
                (lambda (_g2668627240_)
                  (if (gx#stx-pair? _g2668627240_)
                      (let ((_e2671427243_ (gx#syntax-e _g2668627240_)))
                        (let ((_hd2671527247_ (##car _e2671427243_))
                              (_tl2671627250_ (##cdr _e2671427243_)))
                          (if (gx#stx-pair? _tl2671627250_)
                              (let ((_e2671727253_
                                     (gx#syntax-e _tl2671627250_)))
                                (let ((_hd2671827257_ (##car _e2671727253_))
                                      (_tl2671927260_ (##cdr _e2671727253_)))
                                  (if (gx#stx-pair? _hd2671827257_)
                                      (let ((_e2672027263_
                                             (gx#syntax-e _hd2671827257_)))
                                        (let ((_hd2672127267_
                                               (##car _e2672027263_))
                                              (_tl2672227270_
                                               (##cdr _e2672027263_)))
                                          (if (gx#identifier? _hd2672127267_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g31751_|
                                                   _hd2672127267_)
                                                  (if (gx#stx-pair/null?
                                                       _tl2672227270_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2672227270_)
                        '0)
                  (let ((_g31752_ (gx#syntax-split-splice _tl2672227270_ '0)))
                    (begin
                      (let ((_g31753_ (values-count _g31752_)))
                        (if (not (fx= _g31753_ 2))
                            (error "Context expects 2 values" _g31753_)))
                      (let ((_target2672327273_ (values-ref _g31752_ 0))
                            (_tl2672527276_ (values-ref _g31752_ 1)))
                        (if (gx#stx-null? _tl2672527276_)
                            (letrec ((_loop2672627279_
                                      (lambda (_hd2672427283_ _pred2673027286_)
                                        (if (gx#stx-pair? _hd2672427283_)
                                            (let ((_e2672727289_
                                                   (gx#syntax-e
                                                    _hd2672427283_)))
                                              (let ((_lp-hd2672827293_
                                                     (##car _e2672727289_))
                                                    (_lp-tl2672927296_
                                                     (##cdr _e2672727289_)))
                                                (_loop2672627279_
                                                 _lp-tl2672927296_
                                                 (cons _lp-hd2672827293_
                                                       _pred2673027286_))))
                                            (let ((_pred2673127299_
                                                   (reverse _pred2673027286_)))
                                              (if (gx#stx-pair? _tl2671927260_)
                                                  (let ((_e2673227303_
                                                         (gx#syntax-e
                                                          _tl2671927260_)))
                                                    (let ((_hd2673327307_
                                                           (##car _e2673227303_))
                                                          (_tl2673427310_
                                                           (##cdr _e2673227303_)))
                                                      (if (gx#stx-null?
                                                           _tl2673427310_)
                                                          ((lambda (_L27313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L27315_
                            _L27316_)
                     (cons (gx#datum->syntax '#f 'or)
                           (begin
                             '#!void
                             (foldr (lambda (_g2733727340_ _g2733827343_)
                                      (cons (cons _L27316_
                                                  (cons _g2733727340_
                                                        (cons _L27313_ '())))
                                            _g2733827343_))
                                    '()
                                    _L27315_))))
                   _hd2673327307_
                   _pred2673127299_
                   _hd2671527247_)
                  (_g2667927236_ _g2668627240_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2667927236_
                                                   _g2668627240_)))))))
                              (_loop2672627279_ _target2672327273_ '()))
                            (_g2667927236_ _g2668627240_)))))
                  (_g2667927236_ _g2668627240_))
              (_g2667927236_ _g2668627240_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2667927236_
                                                   _g2668627240_))
                                              (_g2667927236_ _g2668627240_))))
                                      (_g2667927236_ _g2668627240_))))
                              (_g2667927236_ _g2668627240_))))
                      (_g2667927236_ _g2668627240_))))
               (_g2667727456_
                (lambda (_g2668627350_)
                  (if (gx#stx-pair? _g2668627350_)
                      (let ((_e2669027353_ (gx#syntax-e _g2668627350_)))
                        (let ((_hd2669127357_ (##car _e2669027353_))
                              (_tl2669227360_ (##cdr _e2669027353_)))
                          (if (gx#stx-pair? _tl2669227360_)
                              (let ((_e2669327363_
                                     (gx#syntax-e _tl2669227360_)))
                                (let ((_hd2669427367_ (##car _e2669327363_))
                                      (_tl2669527370_ (##cdr _e2669327363_)))
                                  (if (gx#stx-pair? _hd2669427367_)
                                      (let ((_e2669627373_
                                             (gx#syntax-e _hd2669427367_)))
                                        (let ((_hd2669727377_
                                               (##car _e2669627373_))
                                              (_tl2669827380_
                                               (##cdr _e2669627373_)))
                                          (if (gx#identifier? _hd2669727377_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g31754_|
                                                   _hd2669727377_)
                                                  (if (gx#stx-pair/null?
                                                       _tl2669827380_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2669827380_)
                        '0)
                  (let ((_g31755_ (gx#syntax-split-splice _tl2669827380_ '0)))
                    (begin
                      (let ((_g31756_ (values-count _g31755_)))
                        (if (not (fx= _g31756_ 2))
                            (error "Context expects 2 values" _g31756_)))
                      (let ((_target2669927383_ (values-ref _g31755_ 0))
                            (_tl2670127386_ (values-ref _g31755_ 1)))
                        (if (gx#stx-null? _tl2670127386_)
                            (letrec ((_loop2670227389_
                                      (lambda (_hd2670027393_ _pred2670627396_)
                                        (if (gx#stx-pair? _hd2670027393_)
                                            (let ((_e2670327399_
                                                   (gx#syntax-e
                                                    _hd2670027393_)))
                                              (let ((_lp-hd2670427403_
                                                     (##car _e2670327399_))
                                                    (_lp-tl2670527406_
                                                     (##cdr _e2670327399_)))
                                                (_loop2670227389_
                                                 _lp-tl2670527406_
                                                 (cons _lp-hd2670427403_
                                                       _pred2670627396_))))
                                            (let ((_pred2670727409_
                                                   (reverse _pred2670627396_)))
                                              (if (gx#stx-pair? _tl2669527370_)
                                                  (let ((_e2670827413_
                                                         (gx#syntax-e
                                                          _tl2669527370_)))
                                                    (let ((_hd2670927417_
                                                           (##car _e2670827413_))
                                                          (_tl2671027420_
                                                           (##cdr _e2670827413_)))
                                                      (if (gx#stx-null?
                                                           _tl2671027420_)
                                                          ((lambda (_L27423_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L27425_
                            _L27426_)
                     (cons (gx#datum->syntax '#f 'and)
                           (begin
                             '#!void
                             (foldr (lambda (_g2744727450_ _g2744827453_)
                                      (cons (cons _L27426_
                                                  (cons _g2744727450_
                                                        (cons _L27423_ '())))
                                            _g2744827453_))
                                    '()
                                    _L27425_))))
                   _hd2670927417_
                   _pred2670727409_
                   _hd2669127357_)
                  (_g2667827346_ _g2668627350_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2667827346_
                                                   _g2668627350_)))))))
                              (_loop2670227389_ _target2669927383_ '()))
                            (_g2667827346_ _g2668627350_)))))
                  (_g2667827346_ _g2668627350_))
              (_g2667827346_ _g2668627350_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2667827346_
                                                   _g2668627350_))
                                              (_g2667827346_ _g2668627350_))))
                                      (_g2667827346_ _g2668627350_))))
                              (_g2667827346_ _g2668627350_))))
                      (_g2667827346_ _g2668627350_)))))
          (_g2667727456_ _$stx26674_))))
    (define |gerbil/core$<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx27462_)
        (let* ((_g2746727501_
                (lambda (_g2746827497_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2746827497_)))
               (_g2746627558_
                (lambda (_g2746827505_)
                  (if (gx#stx-pair? _g2746827505_)
                      (let ((_e2748727508_ (gx#syntax-e _g2746827505_)))
                        (let ((_hd2748827512_ (##car _e2748727508_))
                              (_tl2748927515_ (##cdr _e2748727508_)))
                          (if (gx#stx-pair? _tl2748927515_)
                              (let ((_e2749027518_
                                     (gx#syntax-e _tl2748927515_)))
                                (let ((_hd2749127522_ (##car _e2749027518_))
                                      (_tl2749227525_ (##cdr _e2749027518_)))
                                  (if (gx#stx-pair? _tl2749227525_)
                                      (let ((_e2749327528_
                                             (gx#syntax-e _tl2749227525_)))
                                        (let ((_hd2749427532_
                                               (##car _e2749327528_))
                                              (_tl2749527535_
                                               (##cdr _e2749327528_)))
                                          (if (gx#stx-null? _tl2749527535_)
                                              ((lambda (_L27538_
                                                        _L27540_
                                                        _L27541_)
                                                 (cons _L27541_
                                                       (cons _L27540_
                                                             (cons _L27538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'lambda)
                                       (cons (cons (gx#datum->syntax '#f '$stx)
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
                                               _hd2749427532_
                                               _hd2749127522_
                                               _hd2748827512_)
                                              (_g2746727501_ _g2746827505_))))
                                      (_g2746727501_ _g2746827505_))))
                              (_g2746727501_ _g2746827505_))))
                      (_g2746727501_ _g2746827505_))))
               (_g2746527626_
                (lambda (_g2746827562_)
                  (if (gx#stx-pair? _g2746827562_)
                      (let ((_e2747227565_ (gx#syntax-e _g2746827562_)))
                        (let ((_hd2747327569_ (##car _e2747227565_))
                              (_tl2747427572_ (##cdr _e2747227565_)))
                          (if (gx#stx-pair? _tl2747427572_)
                              (let ((_e2747527575_
                                     (gx#syntax-e _tl2747427572_)))
                                (let ((_hd2747627579_ (##car _e2747527575_))
                                      (_tl2747727582_ (##cdr _e2747527575_)))
                                  (if (gx#stx-pair? _tl2747727582_)
                                      (let ((_e2747827585_
                                             (gx#syntax-e _tl2747727582_)))
                                        (let ((_hd2747927589_
                                               (##car _e2747827585_))
                                              (_tl2748027592_
                                               (##cdr _e2747827585_)))
                                          (if (gx#stx-pair? _tl2748027592_)
                                              (let ((_e2748127595_
                                                     (gx#syntax-e
                                                      _tl2748027592_)))
                                                (let ((_hd2748227599_
                                                       (##car _e2748127595_))
                                                      (_tl2748327602_
                                                       (##cdr _e2748127595_)))
                                                  (if (gx#stx-null?
                                                       _tl2748327602_)
                                                      ((lambda (_L27605_
                                                                _L27607_
                                                                _L27608_)
                                                         (if (gx#identifier?
                                                              _L27608_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'defsyntax)
                           (cons _L27608_
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'make-match-macro)
                                             (cons 'macro:
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          '$match-e)
                                         (cons _L27607_ '()))
                                   (cons (cons (gx#datum->syntax '#f '$macro-e)
                                               (cons _L27605_ '()))
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
                                                 (gx#datum->syntax '#f 'body))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'core-apply-expander)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '$match-e)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'stx-wrap-source)
                                 (cons (cons (gx#datum->syntax '#f 'syntax)
                                             (cons (gx#datum->syntax '#f 'body)
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
                                                              '#f
                                                              'core-apply-expander)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$macro-e)
                           (cons (gx#datum->syntax '#f '$stx) '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))
                     (_g2746627558_ _g2746827562_)))
               _hd2748227599_
               _hd2747927589_
               _hd2747627579_)
              (_g2746627558_ _g2746827562_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2746627558_ _g2746827562_))))
                                      (_g2746627558_ _g2746827562_))))
                              (_g2746627558_ _g2746827562_))))
                      (_g2746627558_ _g2746827562_)))))
          (_g2746527626_ _$stx27462_))))
    (define |gerbil/core$<match>[:0:]#defrules-for-match|
      (lambda (_$stx27630_)
        (let* ((_g2763427649_
                (lambda (_g2763527645_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2763527645_)))
               (_g2763327692_
                (lambda (_g2763527653_)
                  (if (gx#stx-pair? _g2763527653_)
                      (let ((_e2763827656_ (gx#syntax-e _g2763527653_)))
                        (let ((_hd2763927660_ (##car _e2763827656_))
                              (_tl2764027663_ (##cdr _e2763827656_)))
                          (if (gx#stx-pair? _tl2764027663_)
                              (let ((_e2764127666_
                                     (gx#syntax-e _tl2764027663_)))
                                (let ((_hd2764227670_ (##car _e2764127666_))
                                      (_tl2764327673_ (##cdr _e2764127666_)))
                                  ((lambda (_L27676_ _L27678_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _L27678_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _L27676_)
                                                       '()))))
                                   _tl2764327673_
                                   _hd2764227670_)))
                              (_g2763427649_ _g2763527653_))))
                      (_g2763427649_ _g2763527653_)))))
          (_g2763327692_ _$stx27630_))))))
