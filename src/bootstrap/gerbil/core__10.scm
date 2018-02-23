(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<match>[1]#_g31701_|
    (gx#make-syntax-quote 'apply #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31702_|
    (gx#make-syntax-quote 'quasiquote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31703_|
    (gx#make-syntax-quote 'quote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31706_|
    (gx#make-syntax-quote 'vector #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31707_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31708_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31709_|
    (gx#make-syntax-quote 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31710_|
    (gx#make-syntax-quote '@list #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31711_|
    (gx#make-syntax-quote 'cons* #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31712_|
    (gx#make-syntax-quote 'cons #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31713_|
    (gx#make-syntax-quote 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31714_|
    (gx#make-syntax-quote 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31715_|
    (gx#make-syntax-quote 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31716_|
    (gx#make-syntax-quote '? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31717_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31718_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31727_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31732_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31733_|
    (gx#make-syntax-quote '<...> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31734_|
    (gx#make-syntax-quote '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31751_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31752_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31753_|
    (gx#make-syntax-quote 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31754_|
    (gx#make-syntax-quote 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g31757_|
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
      (lambda _$args25340_
        (apply make-class-instance
               |gerbil/core$<match>[1]#match-macro::t|
               _$args25340_)))
    (define |gerbil/core$<match>[1]#syntax-local-match-macro?|
      (lambda (_stx25337_)
        (if (gx#identifier? _stx25337_)
            (|gerbil/core$<match>[1]#match-macro?|
             (gx#syntax-local-value _stx25337_ false))
            '#f)))
    (define |gerbil/core$<match>[1]#parse-match-pattern|
      (let ((_opt-lambda2365325323_
             (lambda (_stx23655_ _match-stx23657_)
               (letrec ((_parse123659_
                         (lambda (_hd24006_)
                           (let* ((_g2403224174_
                                   (lambda (_g2403324170_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2403324170_)))
                                  (_g2403124185_
                                   (lambda (_g2403324178_)
                                     ((lambda ()
                                        (_parse-error23666_ _hd24006_)))))
                                  (_g2403024203_
                                   (lambda (_g2403324189_)
                                     ((lambda (_L24192_)
                                        (if (gx#stx-datum? _L24192_)
                                            (cons 'datum:
                                                  (cons (gx#stx-e _L24192_)
                                                        '()))
                                            (_g2403124185_ _g2403324189_)))
                                      _g2403324189_)))
                                  (_g2402924219_
                                   (lambda (_g2403324207_)
                                     ((lambda (_L24210_)
                                        (if (if (gx#identifier? _L24210_)
                                                (not (gx#ellipsis? _L24210_))
                                                '#f)
                                            (cons 'var: (cons _L24210_ '()))
                                            (_g2403024203_ _g2403324207_)))
                                      _g2403324207_)))
                                  (_g2402824235_
                                   (lambda (_g2403324223_)
                                     ((lambda (_L24226_)
                                        (if (gx#underscore? _L24226_)
                                            (cons 'any: '())
                                            (_g2402924219_ _g2403324223_)))
                                      _g2403324223_)))
                                  (_g2402724267_
                                   (lambda (_g2403324239_)
                                     (if (gx#stx-pair? _g2403324239_)
                                         (let ((_e2416324242_
                                                (gx#syntax-e _g2403324239_)))
                                           (let ((_hd2416424246_
                                                  (##car _e2416324242_))
                                                 (_tl2416524249_
                                                  (##cdr _e2416324242_)))
                                             ((lambda (_L24252_)
                                                (if (|gerbil/core$<match>[1]#syntax-local-match-macro?|
                                                     _L24252_)
                                                    (_parse123659_
                                                     (gx#core-apply-expander
                                                      (gx#syntax-local-e
                                                       _L24252_)
                                                      (gx#stx-wrap-source
                                                       (cons 'match: _hd24006_)
                                                       (let ((_$e24263_
                                                              (gx#stx-source
                                                               _hd24006_)))
                                                         (if _$e24263_
                                                             _$e24263_
                                                             (gx#stx-source
                                                              _stx23655_))))))
                                                    (_g2402824235_
                                                     _g2403324239_)))
                                              _hd2416424246_)))
                                         (_g2402824235_ _g2403324239_))))
                                  (_g2402624321_
                                   (lambda (_g2403324271_)
                                     (if (gx#stx-pair? _g2403324271_)
                                         (let ((_e2415324274_
                                                (gx#syntax-e _g2403324271_)))
                                           (let ((_hd2415424278_
                                                  (##car _e2415324274_))
                                                 (_tl2415524281_
                                                  (##cdr _e2415324274_)))
                                             (if (gx#identifier?
                                                  _hd2415424278_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31701_|
                                                      _hd2415424278_)
                                                     (if (gx#stx-pair?
                                                          _tl2415524281_)
                                                         (let ((_e2415624284_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2415524281_)))
                   (let ((_hd2415724288_ (##car _e2415624284_))
                         (_tl2415824291_ (##cdr _e2415624284_)))
                     (if (gx#stx-pair? _tl2415824291_)
                         (let ((_e2415924294_ (gx#syntax-e _tl2415824291_)))
                           (let ((_hd2416024298_ (##car _e2415924294_))
                                 (_tl2416124301_ (##cdr _e2415924294_)))
                             (if (gx#stx-null? _tl2416124301_)
                                 ((lambda (_L24304_ _L24306_)
                                    (cons 'apply:
                                          (cons _L24306_
                                                (cons (_parse123659_ _L24304_)
                                                      '()))))
                                  _hd2416024298_
                                  _hd2415724288_)
                                 (_g2402724267_ _g2403324271_))))
                         (_g2402724267_ _g2403324271_))))
                 (_g2402724267_ _g2403324271_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2402724267_
                                                      _g2403324271_))
                                                 (_g2402724267_
                                                  _g2403324271_))))
                                         (_g2402724267_ _g2403324271_))))
                                  (_g2402524361_
                                   (lambda (_g2403324325_)
                                     (if (gx#stx-pair? _g2403324325_)
                                         (let ((_e2414524328_
                                                (gx#syntax-e _g2403324325_)))
                                           (let ((_hd2414624332_
                                                  (##car _e2414524328_))
                                                 (_tl2414724335_
                                                  (##cdr _e2414524328_)))
                                             (if (gx#identifier?
                                                  _hd2414624332_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31702_|
                                                      _hd2414624332_)
                                                     (if (gx#stx-pair?
                                                          _tl2414724335_)
                                                         (let ((_e2414824338_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2414724335_)))
                   (let ((_hd2414924342_ (##car _e2414824338_))
                         (_tl2415024345_ (##cdr _e2414824338_)))
                     (if (gx#stx-null? _tl2415024345_)
                         ((lambda (_L24348_) (_parse-qq23665_ _L24348_))
                          _hd2414924342_)
                         (_g2402624321_ _g2403324325_))))
                 (_g2402624321_ _g2403324325_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2402624321_
                                                      _g2403324325_))
                                                 (_g2402624321_
                                                  _g2403324325_))))
                                         (_g2402624321_ _g2403324325_))))
                                  (_g2402424401_
                                   (lambda (_g2403324365_)
                                     (if (gx#stx-pair? _g2403324365_)
                                         (let ((_e2413824368_
                                                (gx#syntax-e _g2403324365_)))
                                           (let ((_hd2413924372_
                                                  (##car _e2413824368_))
                                                 (_tl2414024375_
                                                  (##cdr _e2413824368_)))
                                             (if (gx#identifier?
                                                  _hd2413924372_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31703_|
                                                      _hd2413924372_)
                                                     (if (gx#stx-pair?
                                                          _tl2414024375_)
                                                         (let ((_e2414124378_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2414024375_)))
                   (let ((_hd2414224382_ (##car _e2414124378_))
                         (_tl2414324385_ (##cdr _e2414124378_)))
                     (if (gx#stx-null? _tl2414324385_)
                         ((lambda (_L24388_)
                            (cons 'datum: (cons (gx#stx-e _L24388_) '())))
                          _hd2414224382_)
                         (_g2402524361_ _g2403324365_))))
                 (_g2402524361_ _g2403324365_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2402524361_
                                                      _g2403324365_))
                                                 (_g2402524361_
                                                  _g2403324365_))))
                                         (_g2402524361_ _g2403324365_))))
                                  (_g2402324451_
                                   (lambda (_g2403324405_)
                                     (if (gx#stx-pair? _g2403324405_)
                                         (let ((_e2413124408_
                                                (gx#syntax-e _g2403324405_)))
                                           (let ((_hd2413224412_
                                                  (##car _e2413124408_))
                                                 (_tl2413324415_
                                                  (##cdr _e2413124408_)))
                                             (if (gx#stx-pair? _tl2413324415_)
                                                 (let ((_e2413424418_
                                                        (gx#syntax-e
                                                         _tl2413324415_)))
                                                   (let ((_hd2413524422_
                                                          (##car _e2413424418_))
                                                         (_tl2413624425_
                                                          (##cdr _e2413424418_)))
                                                     (if (gx#stx-null?
                                                          _tl2413624425_)
                                                         ((lambda (_L24428_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L24430_)
                    (if (if (gx#identifier? _L24430_)
                            (let ((_$e24443_
                                   (gx#free-identifier=?
                                    _L24430_
                                    (gx#datum->syntax '#f 'eq?))))
                              (if _$e24443_
                                  _$e24443_
                                  (let ((_$e24447_
                                         (gx#free-identifier=?
                                          _L24430_
                                          (gx#datum->syntax '#f 'eqv?))))
                                    (if _$e24447_
                                        _$e24447_
                                        (gx#free-identifier=?
                                         _L24430_
                                         (gx#datum->syntax '#f 'equal?))))))
                            '#f)
                        (cons '?:
                              (cons (cons (gx#datum->syntax '#f 'cut)
                                          (cons _L24430_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '<>)
                                                      (cons _L24428_ '()))))
                                    '()))
                        (_g2402424401_ _g2403324405_)))
                  _hd2413524422_
                  _hd2413224412_)
                 (_g2402424401_ _g2403324405_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2402424401_
                                                  _g2403324405_))))
                                         (_g2402424401_ _g2403324405_))))
                                  (_g2402224481_
                                   (lambda (_g2403324455_)
                                     (if (gx#stx-pair? _g2403324455_)
                                         (let ((_e2412624458_
                                                (gx#syntax-e _g2403324455_)))
                                           (let ((_hd2412724462_
                                                  (##car _e2412624458_))
                                                 (_tl2412824465_
                                                  (##cdr _e2412624458_)))
                                             ((lambda (_L24468_ _L24470_)
                                                (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
                                                     _L24470_)
                                                    (cons 'class:
                                                          (cons (gx#syntax-local-value
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L24470_)
                        (cons (_parse-class-body23664_ _L24468_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2402324451_
                                                     _g2403324455_)))
                                              _tl2412824465_
                                              _hd2412724462_)))
                                         (_g2402324451_ _g2403324455_))))
                                  (_g2402124511_
                                   (lambda (_g2403324485_)
                                     (if (gx#stx-pair? _g2403324485_)
                                         (let ((_e2412124488_
                                                (gx#syntax-e _g2403324485_)))
                                           (let ((_hd2412224492_
                                                  (##car _e2412124488_))
                                                 (_tl2412324495_
                                                  (##cdr _e2412124488_)))
                                             ((lambda (_L24498_ _L24500_)
                                                (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                                     _L24500_)
                                                    (cons 'struct:
                                                          (cons (gx#syntax-local-value
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L24500_)
                        (cons (_parse-vector23662_ _L24498_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2402224481_
                                                     _g2403324485_)))
                                              _tl2412324495_
                                              _hd2412224492_)))
                                         (_g2402224481_ _g2403324485_))))
                                  (_g2402024574_
                                   (lambda (_g2403324515_)
                                     (if (gx#stx-vector? _g2403324515_)
                                         (let ((_e2410924518_
                                                (vector->list
                                                 (gx#syntax-e _g2403324515_))))
                                           (if (gx#stx-pair/null?
                                                _e2410924518_)
                                               (if (fx>= (gx#stx-length
                                                          _e2410924518_)
                                                         '0)
                                                   (let ((_g31704_
                                                          (gx#syntax-split-splice
                                                           _e2410924518_
                                                           '0)))
                                                     (begin
                                                       (let ((_g31705_
                                                              (values-count
                                                               _g31704_)))
                                                         (if (not (fx= _g31705_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g31705_)))
               (let ((_target2411024522_ (values-ref _g31704_ 0))
                     (_tl2411224525_ (values-ref _g31704_ 1)))
                 (if (gx#stx-null? _tl2411224525_)
                     (letrec ((_loop2411324528_
                               (lambda (_hd2411124532_ _body2411724535_)
                                 (if (gx#stx-pair? _hd2411124532_)
                                     (let ((_e2411424538_
                                            (gx#syntax-e _hd2411124532_)))
                                       (let ((_lp-hd2411524542_
                                              (##car _e2411424538_))
                                             (_lp-tl2411624545_
                                              (##cdr _e2411424538_)))
                                         (_loop2411324528_
                                          _lp-tl2411624545_
                                          (cons _lp-hd2411524542_
                                                _body2411724535_))))
                                     (let ((_body2411824548_
                                            (reverse _body2411724535_)))
                                       ((lambda (_L24552_)
                                          (cons 'vector:
                                                (cons (_parse-vector23662_
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g2456524568_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g2456624571_)
                          (cons _g2456524568_ _g2456624571_))
                        '()
                        _L24552_)))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body2411824548_))))))
                       (_loop2411324528_ _target2411024522_ '()))
                     (_g2402124511_ _g2403324515_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2402124511_
                                                    _g2403324515_))
                                               (_g2402124511_ _g2403324515_)))
                                         (_g2402124511_ _g2403324515_))))
                                  (_g2401924602_
                                   (lambda (_g2403324578_)
                                     (if (gx#stx-pair? _g2403324578_)
                                         (let ((_e2410524581_
                                                (gx#syntax-e _g2403324578_)))
                                           (let ((_hd2410624585_
                                                  (##car _e2410524581_))
                                                 (_tl2410724588_
                                                  (##cdr _e2410524581_)))
                                             (if (gx#identifier?
                                                  _hd2410624585_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31706_|
                                                      _hd2410624585_)
                                                     ((lambda (_L24591_)
                                                        (cons 'vector:
                                                              (cons (_parse-vector23662_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L24591_)
                            '())))
              _tl2410724588_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2402024574_
                                                      _g2403324578_))
                                                 (_g2402024574_
                                                  _g2403324578_))))
                                         (_g2402024574_ _g2403324578_))))
                                  (_g2401824630_
                                   (lambda (_g2403324606_)
                                     (if (gx#stx-pair? _g2403324606_)
                                         (let ((_e2410124609_
                                                (gx#syntax-e _g2403324606_)))
                                           (let ((_hd2410224613_
                                                  (##car _e2410124609_))
                                                 (_tl2410324616_
                                                  (##cdr _e2410124609_)))
                                             (if (gx#identifier?
                                                  _hd2410224613_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31707_|
                                                      _hd2410224613_)
                                                     ((lambda (_L24619_)
                                                        (cons 'values:
                                                              (cons (_parse-vector23662_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L24619_)
                            '())))
              _tl2410324616_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2401924602_
                                                      _g2403324606_))
                                                 (_g2401924602_
                                                  _g2403324606_))))
                                         (_g2401924602_ _g2403324606_))))
                                  (_g2401724670_
                                   (lambda (_g2403324634_)
                                     (if (gx#stx-pair? _g2403324634_)
                                         (let ((_e2409424637_
                                                (gx#syntax-e _g2403324634_)))
                                           (let ((_hd2409524641_
                                                  (##car _e2409424637_))
                                                 (_tl2409624644_
                                                  (##cdr _e2409424637_)))
                                             (if (gx#identifier?
                                                  _hd2409524641_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31708_|
                                                      _hd2409524641_)
                                                     (if (gx#stx-pair?
                                                          _tl2409624644_)
                                                         (let ((_e2409724647_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2409624644_)))
                   (let ((_hd2409824651_ (##car _e2409724647_))
                         (_tl2409924654_ (##cdr _e2409724647_)))
                     (if (gx#stx-null? _tl2409924654_)
                         ((lambda (_L24657_) (_parse123659_ _L24657_))
                          _hd2409824651_)
                         (_g2401824630_ _g2403324634_))))
                 (_g2401824630_ _g2403324634_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2401824630_
                                                      _g2403324634_))
                                                 (_g2401824630_
                                                  _g2403324634_))))
                                         (_g2401824630_ _g2403324634_))))
                                  (_g2401624691_
                                   (lambda (_g2403324674_)
                                     (if (gx#stx-box? _g2403324674_)
                                         (let ((_e2409224677_
                                                (unbox (gx#syntax-e
                                                        _g2403324674_))))
                                           ((lambda (_L24681_)
                                              (cons 'box:
                                                    (cons (_parse123659_
                                                           _L24681_)
                                                          '())))
                                            _e2409224677_))
                                         (_g2401724670_ _g2403324674_))))
                                  (_g2401524731_
                                   (lambda (_g2403324695_)
                                     (if (gx#stx-pair? _g2403324695_)
                                         (let ((_e2408524698_
                                                (gx#syntax-e _g2403324695_)))
                                           (let ((_hd2408624702_
                                                  (##car _e2408524698_))
                                                 (_tl2408724705_
                                                  (##cdr _e2408524698_)))
                                             (if (gx#identifier?
                                                  _hd2408624702_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31709_|
                                                      _hd2408624702_)
                                                     (if (gx#stx-pair?
                                                          _tl2408724705_)
                                                         (let ((_e2408824708_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2408724705_)))
                   (let ((_hd2408924712_ (##car _e2408824708_))
                         (_tl2409024715_ (##cdr _e2408824708_)))
                     (if (gx#stx-null? _tl2409024715_)
                         ((lambda (_L24718_)
                            (cons 'box: (cons (_parse123659_ _L24718_) '())))
                          _hd2408924712_)
                         (_g2401624691_ _g2403324695_))))
                 (_g2401624691_ _g2403324695_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2401624691_
                                                      _g2403324695_))
                                                 (_g2401624691_
                                                  _g2403324695_))))
                                         (_g2401624691_ _g2403324695_))))
                                  (_g2401424759_
                                   (lambda (_g2403324735_)
                                     (if (gx#stx-pair? _g2403324735_)
                                         (let ((_e2408124738_
                                                (gx#syntax-e _g2403324735_)))
                                           (let ((_hd2408224742_
                                                  (##car _e2408124738_))
                                                 (_tl2408324745_
                                                  (##cdr _e2408124738_)))
                                             (if (gx#identifier?
                                                  _hd2408224742_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31710_|
                                                      _hd2408224742_)
                                                     ((lambda (_L24748_)
                                                        (_parse-list23661_
                                                         _L24748_))
                                                      _tl2408324745_)
                                                     (_g2401524731_
                                                      _g2403324735_))
                                                 (_g2401524731_
                                                  _g2403324735_))))
                                         (_g2401524731_ _g2403324735_))))
                                  (_g2401324815_
                                   (lambda (_g2403324763_)
                                     (if (gx#stx-pair? _g2403324763_)
                                         (let ((_e2407124766_
                                                (gx#syntax-e _g2403324763_)))
                                           (let ((_hd2407224770_
                                                  (##car _e2407124766_))
                                                 (_tl2407324773_
                                                  (##cdr _e2407124766_)))
                                             (if (gx#identifier?
                                                  _hd2407224770_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31711_|
                                                      _hd2407224770_)
                                                     (if (gx#stx-pair?
                                                          _tl2407324773_)
                                                         (let ((_e2407424776_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2407324773_)))
                   (let ((_hd2407524780_ (##car _e2407424776_))
                         (_tl2407624783_ (##cdr _e2407424776_)))
                     (if (gx#stx-pair? _tl2407624783_)
                         (let ((_e2407724786_ (gx#syntax-e _tl2407624783_)))
                           (let ((_hd2407824790_ (##car _e2407724786_))
                                 (_tl2407924793_ (##cdr _e2407724786_)))
                             ((lambda (_L24796_ _L24798_ _L24799_)
                                (if (gx#stx-null? _L24796_)
                                    (cons 'cons:
                                          (cons (_parse123659_ _L24799_)
                                                (cons (_parse123659_ _L24798_)
                                                      '())))
                                    (cons 'cons:
                                          (cons (_parse123659_ _L24799_)
                                                (cons (_parse123659_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'cons*)
                                                             (cons _L24798_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L24796_)))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _tl2407924793_
                              _hd2407824790_
                              _hd2407524780_)))
                         (_g2401424759_ _g2403324763_))))
                 (_g2401424759_ _g2403324763_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2401424759_
                                                      _g2403324763_))
                                                 (_g2401424759_
                                                  _g2403324763_))))
                                         (_g2401424759_ _g2403324763_))))
                                  (_g2401224869_
                                   (lambda (_g2403324819_)
                                     (if (gx#stx-pair? _g2403324819_)
                                         (let ((_e2405924822_
                                                (gx#syntax-e _g2403324819_)))
                                           (let ((_hd2406024826_
                                                  (##car _e2405924822_))
                                                 (_tl2406124829_
                                                  (##cdr _e2405924822_)))
                                             (if (gx#identifier?
                                                  _hd2406024826_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31712_|
                                                      _hd2406024826_)
                                                     (if (gx#stx-pair?
                                                          _tl2406124829_)
                                                         (let ((_e2406224832_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2406124829_)))
                   (let ((_hd2406324836_ (##car _e2406224832_))
                         (_tl2406424839_ (##cdr _e2406224832_)))
                     (if (gx#stx-pair? _tl2406424839_)
                         (let ((_e2406524842_ (gx#syntax-e _tl2406424839_)))
                           (let ((_hd2406624846_ (##car _e2406524842_))
                                 (_tl2406724849_ (##cdr _e2406524842_)))
                             (if (gx#stx-null? _tl2406724849_)
                                 ((lambda (_L24852_ _L24854_)
                                    (cons 'cons:
                                          (cons (_parse123659_ _L24854_)
                                                (cons (_parse123659_ _L24852_)
                                                      '()))))
                                  _hd2406624846_
                                  _hd2406324836_)
                                 (_g2401324815_ _g2403324819_))))
                         (_g2401324815_ _g2403324819_))))
                 (_g2401324815_ _g2403324819_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2401324815_
                                                      _g2403324819_))
                                                 (_g2401324815_
                                                  _g2403324819_))))
                                         (_g2401324815_ _g2403324819_))))
                                  (_g2401124909_
                                   (lambda (_g2403324873_)
                                     (if (gx#stx-pair? _g2403324873_)
                                         (let ((_e2405124876_
                                                (gx#syntax-e _g2403324873_)))
                                           (let ((_hd2405224880_
                                                  (##car _e2405124876_))
                                                 (_tl2405324883_
                                                  (##cdr _e2405124876_)))
                                             (if (gx#identifier?
                                                  _hd2405224880_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31713_|
                                                      _hd2405224880_)
                                                     (if (gx#stx-pair?
                                                          _tl2405324883_)
                                                         (let ((_e2405424886_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2405324883_)))
                   (let ((_hd2405524890_ (##car _e2405424886_))
                         (_tl2405624893_ (##cdr _e2405424886_)))
                     (if (gx#stx-null? _tl2405624893_)
                         ((lambda (_L24896_)
                            (cons 'not: (cons (_parse123659_ _L24896_) '())))
                          _hd2405524890_)
                         (_g2401224869_ _g2403324873_))))
                 (_g2401224869_ _g2403324873_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2401224869_
                                                      _g2403324873_))
                                                 (_g2401224869_
                                                  _g2403324873_))))
                                         (_g2401224869_ _g2403324873_))))
                                  (_g2401024994_
                                   (lambda (_g2403324913_)
                                     (if (gx#stx-pair? _g2403324913_)
                                         (let ((_e2404724916_
                                                (gx#syntax-e _g2403324913_)))
                                           (let ((_hd2404824920_
                                                  (##car _e2404724916_))
                                                 (_tl2404924923_
                                                  (##cdr _e2404724916_)))
                                             (if (gx#identifier?
                                                  _hd2404824920_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31714_|
                                                      _hd2404824920_)
                                                     ((lambda (_L24926_)
                                                        (if (gx#stx-list?
                                                             _L24926_)
                                                            (let* ((_g2493824949_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g2493924945_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2493924945_)))
                           (_g2493724960_
                            (lambda (_g2493924953_)
                              ((lambda ()
                                 (cons 'or:
                                       (gx#stx-map _parse123659_ _L24926_))))))
                           (_g2493624990_
                            (lambda (_g2493924964_)
                              (if (gx#stx-pair? _g2493924964_)
                                  (let ((_e2494124967_
                                         (gx#syntax-e _g2493924964_)))
                                    (let ((_hd2494224971_
                                           (##car _e2494124967_))
                                          (_tl2494324974_
                                           (##cdr _e2494124967_)))
                                      (if (gx#stx-null? _tl2494324974_)
                                          ((lambda (_L24977_)
                                             (_parse123659_ _L24977_))
                                           _hd2494224971_)
                                          (_g2493724960_ _g2493924964_))))
                                  (_g2493724960_ _g2493924964_)))))
                      (_g2493624990_ _L24926_))
                    (_g2401124909_ _g2403324913_)))
              _tl2404924923_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2401124909_
                                                      _g2403324913_))
                                                 (_g2401124909_
                                                  _g2403324913_))))
                                         (_g2401124909_ _g2403324913_))))
                                  (_g2400925079_
                                   (lambda (_g2403324998_)
                                     (if (gx#stx-pair? _g2403324998_)
                                         (let ((_e2404325001_
                                                (gx#syntax-e _g2403324998_)))
                                           (let ((_hd2404425005_
                                                  (##car _e2404325001_))
                                                 (_tl2404525008_
                                                  (##cdr _e2404325001_)))
                                             (if (gx#identifier?
                                                  _hd2404425005_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31715_|
                                                      _hd2404425005_)
                                                     ((lambda (_L25011_)
                                                        (if (gx#stx-list?
                                                             _L25011_)
                                                            (let* ((_g2502325034_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g2502425030_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2502425030_)))
                           (_g2502225045_
                            (lambda (_g2502425038_)
                              ((lambda ()
                                 (cons 'and:
                                       (gx#stx-map _parse123659_ _L25011_))))))
                           (_g2502125075_
                            (lambda (_g2502425049_)
                              (if (gx#stx-pair? _g2502425049_)
                                  (let ((_e2502625052_
                                         (gx#syntax-e _g2502425049_)))
                                    (let ((_hd2502725056_
                                           (##car _e2502625052_))
                                          (_tl2502825059_
                                           (##cdr _e2502625052_)))
                                      (if (gx#stx-null? _tl2502825059_)
                                          ((lambda (_L25062_)
                                             (_parse123659_ _L25062_))
                                           _hd2502725056_)
                                          (_g2502225045_ _g2502425049_))))
                                  (_g2502225045_ _g2502425049_)))))
                      (_g2502125075_ _L25011_))
                    (_g2401024994_ _g2403324998_)))
              _tl2404525008_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2401024994_
                                                      _g2403324998_))
                                                 (_g2401024994_
                                                  _g2403324998_))))
                                         (_g2401024994_ _g2403324998_))))
                                  (_g2400825319_
                                   (lambda (_g2403325083_)
                                     (if (gx#stx-pair? _g2403325083_)
                                         (let ((_e2403625086_
                                                (gx#syntax-e _g2403325083_)))
                                           (let ((_hd2403725090_
                                                  (##car _e2403625086_))
                                                 (_tl2403825093_
                                                  (##cdr _e2403625086_)))
                                             (if (gx#identifier?
                                                  _hd2403725090_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core$<match>[1]#_g31716_|
                                                      _hd2403725090_)
                                                     (if (gx#stx-pair?
                                                          _tl2403825093_)
                                                         (let ((_e2403925096_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2403825093_)))
                   (let ((_hd2404025100_ (##car _e2403925096_))
                         (_tl2404125103_ (##cdr _e2403925096_)))
                     ((lambda (_L25106_ _L25108_)
                        (let* ((_g2512525157_
                                (lambda (_g2512625153_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2512625153_)))
                               (_g2512425168_
                                (lambda (_g2512625161_)
                                  ((lambda ()
                                     (_parse-error23666_ _hd24006_)))))
                               (_g2512325236_
                                (lambda (_g2512625172_)
                                  (if (gx#stx-pair? _g2512625172_)
                                      (let ((_e2514025175_
                                             (gx#syntax-e _g2512625172_)))
                                        (let ((_hd2514125179_
                                               (##car _e2514025175_))
                                              (_tl2514225182_
                                               (##cdr _e2514025175_)))
                                          (if (gx#stx-datum? _hd2514125179_)
                                              (if (equal? (gx#stx-e
                                                           _hd2514125179_)
                                                          '::)
                                                  (if (gx#stx-pair?
                                                       _tl2514225182_)
                                                      (let ((_e2514325185_
                                                             (gx#syntax-e
                                                              _tl2514225182_)))
                                                        (let ((_hd2514425189_
                                                               (##car _e2514325185_))
                                                              (_tl2514525192_
                                                               (##cdr _e2514325185_)))
                                                          (if (gx#stx-pair?
                                                               _tl2514525192_)
                                                              (let ((_e2514625195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl2514525192_)))
                        (let ((_hd2514725199_ (##car _e2514625195_))
                              (_tl2514825202_ (##cdr _e2514625195_)))
                          (if (gx#identifier? _hd2514725199_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g31717_|
                                   _hd2514725199_)
                                  (if (gx#stx-pair? _tl2514825202_)
                                      (let ((_e2514925205_
                                             (gx#syntax-e _tl2514825202_)))
                                        (let ((_hd2515025209_
                                               (##car _e2514925205_))
                                              (_tl2515125212_
                                               (##cdr _e2514925205_)))
                                          (if (gx#stx-null? _tl2515125212_)
                                              ((lambda (_L25215_ _L25217_)
                                                 (cons '?:
                                                       (cons _L25108_
                                                             (cons '::
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L25217_
                                 (cons '=>:
                                       (cons (_parse123659_ _L25215_)
                                             '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd2515025209_
                                               _hd2514425189_)
                                              (_g2512425168_ _g2512625172_))))
                                      (_g2512425168_ _g2512625172_))
                                  (_g2512425168_ _g2512625172_))
                              (_g2512425168_ _g2512625172_))))
                      (_g2512425168_ _g2512625172_))))
              (_g2512425168_ _g2512625172_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2512425168_
                                                   _g2512625172_))
                                              (_g2512425168_ _g2512625172_))))
                                      (_g2512425168_ _g2512625172_))))
                               (_g2512225276_
                                (lambda (_g2512625240_)
                                  (if (gx#stx-pair? _g2512625240_)
                                      (let ((_e2513225243_
                                             (gx#syntax-e _g2512625240_)))
                                        (let ((_hd2513325247_
                                               (##car _e2513225243_))
                                              (_tl2513425250_
                                               (##cdr _e2513225243_)))
                                          (if (gx#identifier? _hd2513325247_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g31718_|
                                                   _hd2513325247_)
                                                  (if (gx#stx-pair?
                                                       _tl2513425250_)
                                                      (let ((_e2513525253_
                                                             (gx#syntax-e
                                                              _tl2513425250_)))
                                                        (let ((_hd2513625257_
                                                               (##car _e2513525253_))
                                                              (_tl2513725260_
                                                               (##cdr _e2513525253_)))
                                                          (if (gx#stx-null?
                                                               _tl2513725260_)
                                                              ((lambda (_L25263_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '?:
                               (cons _L25108_
                                     (cons '=>:
                                           (cons (_parse123659_ _L25263_)
                                                 '())))))
                       _hd2513625257_)
                      (_g2512325236_ _g2512625240_))))
              (_g2512325236_ _g2512625240_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2512325236_
                                                   _g2512625240_))
                                              (_g2512325236_ _g2512625240_))))
                                      (_g2512325236_ _g2512625240_))))
                               (_g2512125304_
                                (lambda (_g2512625280_)
                                  (if (gx#stx-pair? _g2512625280_)
                                      (let ((_e2512825283_
                                             (gx#syntax-e _g2512625280_)))
                                        (let ((_hd2512925287_
                                               (##car _e2512825283_))
                                              (_tl2513025290_
                                               (##cdr _e2512825283_)))
                                          (if (gx#stx-null? _tl2513025290_)
                                              ((lambda (_L25293_)
                                                 (cons '?:
                                                       (cons _L25108_
                                                             (cons (_parse123659_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L25293_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd2512925287_)
                                              (_g2512225276_ _g2512625280_))))
                                      (_g2512225276_ _g2512625280_))))
                               (_g2512025315_
                                (lambda (_g2512625308_)
                                  (if (gx#stx-null? _g2512625308_)
                                      ((lambda ()
                                         (cons '?: (cons _L25108_ '()))))
                                      (_g2512125304_ _g2512625308_)))))
                          (_g2512025315_ _L25106_)))
                      _tl2404125103_
                      _hd2404025100_)))
                 (_g2400925079_ _g2403325083_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2400925079_
                                                      _g2403325083_))
                                                 (_g2400925079_
                                                  _g2403325083_))))
                                         (_g2400925079_ _g2403325083_)))))
                             (_g2400825319_ _hd24006_))))
                        (_parse-list23661_
                         (lambda (_body23841_)
                           (let* ((_g2384723875_
                                   (lambda (_g2384823871_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2384823871_)))
                                  (_g2384623886_
                                   (lambda (_g2384823879_)
                                     ((lambda ()
                                        (if (gx#stx-null? _body23841_)
                                            (cons 'null: '())
                                            (if (not (gx#stx-pair?
                                                      _body23841_))
                                                (_parse123659_ _body23841_)
                                                (_parse-error23666_
                                                 _body23841_)))))))
                                  (_g2384523918_
                                   (lambda (_g2384823890_)
                                     (if (gx#stx-pair? _g2384823890_)
                                         (let ((_e2386723893_
                                                (gx#syntax-e _g2384823890_)))
                                           (let ((_hd2386823897_
                                                  (##car _e2386723893_))
                                                 (_tl2386923900_
                                                  (##cdr _e2386723893_)))
                                             ((lambda (_L23903_ _L23905_)
                                                (if (not (gx#ellipsis?
                                                          _L23905_))
                                                    (cons 'cons:
                                                          (cons (_parse123659_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L23905_)
                        (cons (_parse-list23661_ _L23903_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2384623886_
                                                     _g2384823890_)))
                                              _tl2386923900_
                                              _hd2386823897_)))
                                         (_g2384623886_ _g2384823890_))))
                                  (_g2384423962_
                                   (lambda (_g2384823922_)
                                     (if (gx#stx-pair? _g2384823922_)
                                         (let ((_e2385923925_
                                                (gx#syntax-e _g2384823922_)))
                                           (let ((_hd2386023929_
                                                  (##car _e2385923925_))
                                                 (_tl2386123932_
                                                  (##cdr _e2385923925_)))
                                             (if (gx#stx-pair? _tl2386123932_)
                                                 (let ((_e2386223935_
                                                        (gx#syntax-e
                                                         _tl2386123932_)))
                                                   (let ((_hd2386323939_
                                                          (##car _e2386223935_))
                                                         (_tl2386423942_
                                                          (##cdr _e2386223935_)))
                                                     ((lambda (_L23945_
                                                               _L23947_
                                                               _L23948_)
                                                        (if (gx#ellipsis?
                                                             _L23947_)
                                                            (cons 'splice:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_parse123659_ _L23948_)
                                (cons (_parse-list23661_ _L23945_) '())))
                    (_g2384523918_ _g2384823922_)))
              _tl2386423942_
              _hd2386323939_
              _hd2386023929_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2384523918_
                                                  _g2384823922_))))
                                         (_g2384523918_ _g2384823922_))))
                                  (_g2384324002_
                                   (lambda (_g2384823966_)
                                     (if (gx#stx-pair? _g2384823966_)
                                         (let ((_e2385023969_
                                                (gx#syntax-e _g2384823966_)))
                                           (let ((_hd2385123973_
                                                  (##car _e2385023969_))
                                                 (_tl2385223976_
                                                  (##cdr _e2385023969_)))
                                             (if (gx#stx-datum? _hd2385123973_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2385123973_)
                                                             '::)
                                                     (if (gx#stx-pair?
                                                          _tl2385223976_)
                                                         (let ((_e2385323979_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2385223976_)))
                   (let ((_hd2385423983_ (##car _e2385323979_))
                         (_tl2385523986_ (##cdr _e2385323979_)))
                     (if (gx#stx-null? _tl2385523986_)
                         ((lambda (_L23989_) (_parse123659_ _L23989_))
                          _hd2385423983_)
                         (_g2384423962_ _g2384823966_))))
                 (_g2384423962_ _g2384823966_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2384423962_
                                                      _g2384823966_))
                                                 (_g2384423962_
                                                  _g2384823966_))))
                                         (_g2384423962_ _g2384823966_)))))
                             (_g2384324002_ _body23841_))))
                        (_parse-vector23662_
                         (lambda (_body23838_)
                           (if (_simple-vector?23663_ _body23838_)
                               (cons 'simple:
                                     (cons (gx#stx-map
                                            _parse123659_
                                            _body23838_)
                                           '()))
                               (cons 'list:
                                     (cons (_parse-list23661_ _body23838_)
                                           '())))))
                        (_simple-vector?23663_
                         (lambda (_body23775_)
                           (let* ((_g2377923791_
                                   (lambda (_g2378023787_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2378023787_)))
                                  (_g2377823802_
                                   (lambda (_g2378023795_)
                                     ((lambda () (gx#stx-null? _body23775_)))))
                                  (_g2377723834_
                                   (lambda (_g2378023806_)
                                     (if (gx#stx-pair? _g2378023806_)
                                         (let ((_e2378323809_
                                                (gx#syntax-e _g2378023806_)))
                                           (let ((_hd2378423813_
                                                  (##car _e2378323809_))
                                                 (_tl2378523816_
                                                  (##cdr _e2378323809_)))
                                             ((lambda (_L23819_ _L23821_)
                                                (if (not (gx#ellipsis?
                                                          _L23821_))
                                                    (_simple-vector?23663_
                                                     _L23819_)
                                                    '#f))
                                              _tl2378523816_
                                              _hd2378423813_)))
                                         (_g2377823802_ _g2378023806_)))))
                             (_g2377723834_ _body23775_))))
                        (_parse-class-body23664_
                         (lambda (_body23684_)
                           (let _recur23687_ ((_rest23690_ _body23684_))
                             (let* ((_g2369423710_
                                     (lambda (_g2369523706_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g2369523706_)))
                                    (_g2369323721_
                                     (lambda (_g2369523714_)
                                       ((lambda ()
                                          (if (gx#stx-null? _rest23690_)
                                              '()
                                              (_parse-error23666_
                                               _rest23690_))))))
                                    (_g2369223771_
                                     (lambda (_g2369523725_)
                                       (if (gx#stx-pair? _g2369523725_)
                                           (let ((_e2369923728_
                                                  (gx#syntax-e _g2369523725_)))
                                             (let ((_hd2370023732_
                                                    (##car _e2369923728_))
                                                   (_tl2370123735_
                                                    (##cdr _e2369923728_)))
                                               (if (gx#stx-pair?
                                                    _tl2370123735_)
                                                   (let ((_e2370223738_
                                                          (gx#syntax-e
                                                           _tl2370123735_)))
                                                     (let ((_hd2370323742_
                                                            (##car _e2370223738_))
                                                           (_tl2370423745_
                                                            (##cdr _e2370223738_)))
                                                       ((lambda (_L23748_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L23750_
                         _L23751_)
                  (if (gx#stx-keyword? _L23751_)
                      (cons* _L23751_
                             (_parse123659_ _L23750_)
                             (_recur23687_ _L23748_))
                      (_g2369323721_ _g2369523725_)))
                _tl2370423745_
                _hd2370323742_
                _hd2370023732_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2369323721_
                                                    _g2369523725_))))
                                           (_g2369323721_ _g2369523725_)))))
                               (_g2369223771_ _rest23690_)))))
                        (_parse-qq23665_
                         (lambda (_hd23671_)
                           (let ((_g2367323680_
                                  (lambda (_g2367423676_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g2367423676_))))
                             (_g2367323680_ _hd23671_))))
                        (_parse-error23666_
                         (lambda (_hd23668_)
                           (apply gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; illegal pattern"
                                  (if _match-stx23657_
                                      (cons _match-stx23657_
                                            (cons _stx23655_
                                                  (cons _hd23668_ '())))
                                      (cons _stx23655_
                                            (cons _hd23668_ '())))))))
                 (_parse123659_ _stx23655_)))))
        (lambda _g31720_
          (let ((_g31719_ (length _g31720_)))
            (cond ((fx= _g31719_ 1)
                   (apply (lambda (_stx25327_)
                            (let ((_match-stx25330_ '#f))
                              (_opt-lambda2365325323_
                               _stx25327_
                               _match-stx25330_)))
                          _g31720_))
                  ((fx= _g31719_ 2) (apply _opt-lambda2365325323_ _g31720_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    |gerbil/core$<match>[1]#parse-match-pattern|
                    _g31720_)))))))
    (define |gerbil/core$<match>[1]#match-pattern?|
      (lambda (_stx23639_)
        (call-with-escape
         (lambda (_E23643_)
           (with-exception-handler
            (let ((_E!23646_ (current-exception-handler)))
              (lambda (_e23649_)
                (if (gx#syntax-error? _e23649_)
                    (_E23643_ '#f)
                    (_E!23646_ _e23649_))))
            (lambda ()
              (begin
                (|gerbil/core$<match>[1]#parse-match-pattern| _stx23639_)
                '#t)))))))
    (define |gerbil/core$<match>[1]#match-pattern-vars|
      (lambda (_ptree22428_)
        (letrec ((_loop22431_
                  (lambda (_ptree22706_ _vars22708_ _K22709_)
                    (let* ((_g2272222823_
                            (lambda (_g2272322819_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2272322819_)))
                           (_g2272122834_
                            (lambda (_g2272322827_)
                              ((lambda () (_K22709_ _vars22708_)))))
                           (_g2272022881_
                            (lambda (_g2272322838_)
                              (if (gx#stx-pair? _g2272322838_)
                                  (let ((_e2281222841_
                                         (gx#syntax-e _g2272322838_)))
                                    (let ((_hd2281322845_
                                           (##car _e2281222841_))
                                          (_tl2281422848_
                                           (##cdr _e2281222841_)))
                                      (if (gx#stx-datum? _hd2281322845_)
                                          (if (equal? (gx#stx-e _hd2281322845_)
                                                      'var:)
                                              (if (gx#stx-pair? _tl2281422848_)
                                                  (let ((_e2281522851_
                                                         (gx#syntax-e
                                                          _tl2281422848_)))
                                                    (let ((_hd2281622855_
                                                           (##car _e2281522851_))
                                                          (_tl2281722858_
                                                           (##cdr _e2281522851_)))
                                                      (if (gx#stx-null?
                                                           _tl2281722858_)
                                                          ((lambda (_L22861_)
                                                             (if (find (lambda (_g2287522877_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (gx#bound-identifier=?
                                  _g2287522877_
                                  _L22861_))
                               _vars22708_)
                         (_K22709_ _vars22708_)
                         (_K22709_ (cons _L22861_ _vars22708_))))
                   _hd2281622855_)
                  (_g2272122834_ _g2272322838_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2272122834_
                                                   _g2272322838_))
                                              (_g2272122834_ _g2272322838_))
                                          (_g2272122834_ _g2272322838_))))
                                  (_g2272122834_ _g2272322838_))))
                           (_g2271922935_
                            (lambda (_g2272322885_)
                              (if (gx#stx-pair? _g2272322885_)
                                  (let ((_e2280222888_
                                         (gx#syntax-e _g2272322885_)))
                                    (let ((_hd2280322892_
                                           (##car _e2280222888_))
                                          (_tl2280422895_
                                           (##cdr _e2280222888_)))
                                      (if (gx#stx-datum? _hd2280322892_)
                                          (if (equal? (gx#stx-e _hd2280322892_)
                                                      'apply:)
                                              (if (gx#stx-pair? _tl2280422895_)
                                                  (let ((_e2280522898_
                                                         (gx#syntax-e
                                                          _tl2280422895_)))
                                                    (let ((_hd2280622902_
                                                           (##car _e2280522898_))
                                                          (_tl2280722905_
                                                           (##cdr _e2280522898_)))
                                                      (if (gx#stx-pair?
                                                           _tl2280722905_)
                                                          (let ((_e2280822908_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2280722905_)))
                    (let ((_hd2280922912_ (##car _e2280822908_))
                          (_tl2281022915_ (##cdr _e2280822908_)))
                      (if (gx#stx-null? _tl2281022915_)
                          ((lambda (_L22918_ _L22920_)
                             (_loop22431_ _L22918_ _vars22708_ _K22709_))
                           _hd2280922912_
                           _hd2280622902_)
                          (_g2272022881_ _g2272322885_))))
                  (_g2272022881_ _g2272322885_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2272022881_
                                                   _g2272322885_))
                                              (_g2272022881_ _g2272322885_))
                                          (_g2272022881_ _g2272322885_))))
                                  (_g2272022881_ _g2272322885_))))
                           (_g2271822987_
                            (lambda (_g2272322939_)
                              (if (gx#stx-pair? _g2272322939_)
                                  (let ((_e2279122942_
                                         (gx#syntax-e _g2272322939_)))
                                    (let ((_hd2279222946_
                                           (##car _e2279122942_))
                                          (_tl2279322949_
                                           (##cdr _e2279122942_)))
                                      (if (gx#stx-datum? _hd2279222946_)
                                          (if (equal? (gx#stx-e _hd2279222946_)
                                                      'class:)
                                              (if (gx#stx-pair? _tl2279322949_)
                                                  (let ((_e2279422952_
                                                         (gx#syntax-e
                                                          _tl2279322949_)))
                                                    (let ((_hd2279522956_
                                                           (##car _e2279422952_))
                                                          (_tl2279622959_
                                                           (##cdr _e2279422952_)))
                                                      (if (gx#stx-pair?
                                                           _tl2279622959_)
                                                          (let ((_e2279722962_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2279622959_)))
                    (let ((_hd2279822966_ (##car _e2279722962_))
                          (_tl2279922969_ (##cdr _e2279722962_)))
                      (if (gx#stx-null? _tl2279922969_)
                          ((lambda (_L22972_)
                             (_loop-class-list22435_
                              _L22972_
                              _vars22708_
                              _K22709_))
                           _hd2279822966_)
                          (_g2271922935_ _g2272322939_))))
                  (_g2271922935_ _g2272322939_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2271922935_
                                                   _g2272322939_))
                                              (_g2271922935_ _g2272322939_))
                                          (_g2271922935_ _g2272322939_))))
                                  (_g2271922935_ _g2272322939_))))
                           (_g2271723039_
                            (lambda (_g2272322991_)
                              (if (gx#stx-pair? _g2272322991_)
                                  (let ((_e2278122994_
                                         (gx#syntax-e _g2272322991_)))
                                    (let ((_hd2278222998_
                                           (##car _e2278122994_))
                                          (_tl2278323001_
                                           (##cdr _e2278122994_)))
                                      (if (gx#stx-datum? _hd2278222998_)
                                          (if (equal? (gx#stx-e _hd2278222998_)
                                                      'struct:)
                                              (if (gx#stx-pair? _tl2278323001_)
                                                  (let ((_e2278423004_
                                                         (gx#syntax-e
                                                          _tl2278323001_)))
                                                    (let ((_hd2278523008_
                                                           (##car _e2278423004_))
                                                          (_tl2278623011_
                                                           (##cdr _e2278423004_)))
                                                      (if (gx#stx-pair?
                                                           _tl2278623011_)
                                                          (let ((_e2278723014_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2278623011_)))
                    (let ((_hd2278823018_ (##car _e2278723014_))
                          (_tl2278923021_ (##cdr _e2278723014_)))
                      (if (gx#stx-null? _tl2278923021_)
                          ((lambda (_L23024_)
                             (_loop-vector22433_
                              _L23024_
                              _vars22708_
                              _K22709_))
                           _hd2278823018_)
                          (_g2271822987_ _g2272322991_))))
                  (_g2271822987_ _g2272322991_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2271822987_
                                                   _g2272322991_))
                                              (_g2271822987_ _g2272322991_))
                                          (_g2271822987_ _g2272322991_))))
                                  (_g2271822987_ _g2272322991_))))
                           (_g2271623085_
                            (lambda (_g2272323043_)
                              (if (gx#stx-pair? _g2272323043_)
                                  (let ((_e2277423046_
                                         (gx#syntax-e _g2272323043_)))
                                    (let ((_hd2277523050_
                                           (##car _e2277423046_))
                                          (_tl2277623053_
                                           (##cdr _e2277423046_)))
                                      (if (gx#stx-pair? _tl2277623053_)
                                          (let ((_e2277723056_
                                                 (gx#syntax-e _tl2277623053_)))
                                            (let ((_hd2277823060_
                                                   (##car _e2277723056_))
                                                  (_tl2277923063_
                                                   (##cdr _e2277723056_)))
                                              (if (gx#stx-null? _tl2277923063_)
                                                  ((lambda (_L23066_ _L23068_)
                                                     (if (let ((_$e23081_
                                                                (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'values:
                         _L23068_)))
                   (if _$e23081_ _$e23081_ (gx#stx-eq? 'vector: _L23068_)))
                 (_loop-vector22433_ _L23066_ _vars22708_ _K22709_)
                 (_g2271723039_ _g2272323043_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _hd2277823060_
                                                   _hd2277523050_)
                                                  (_g2271723039_
                                                   _g2272323043_))))
                                          (_g2271723039_ _g2272323043_))))
                                  (_g2271723039_ _g2272323043_))))
                           (_g2271523125_
                            (lambda (_g2272323089_)
                              (if (gx#stx-pair? _g2272323089_)
                                  (let ((_e2276623092_
                                         (gx#syntax-e _g2272323089_)))
                                    (let ((_hd2276723096_
                                           (##car _e2276623092_))
                                          (_tl2276823099_
                                           (##cdr _e2276623092_)))
                                      (if (gx#stx-datum? _hd2276723096_)
                                          (if (equal? (gx#stx-e _hd2276723096_)
                                                      'box:)
                                              (if (gx#stx-pair? _tl2276823099_)
                                                  (let ((_e2276923102_
                                                         (gx#syntax-e
                                                          _tl2276823099_)))
                                                    (let ((_hd2277023106_
                                                           (##car _e2276923102_))
                                                          (_tl2277123109_
                                                           (##cdr _e2276923102_)))
                                                      (if (gx#stx-null?
                                                           _tl2277123109_)
                                                          ((lambda (_L23112_)
                                                             (_loop22431_
                                                              _L23112_
                                                              _vars22708_
                                                              _K22709_))
                                                           _hd2277023106_)
                                                          (_g2271623085_
                                                           _g2272323089_))))
                                                  (_g2271623085_
                                                   _g2272323089_))
                                              (_g2271623085_ _g2272323089_))
                                          (_g2271623085_ _g2272323089_))))
                                  (_g2271623085_ _g2272323089_))))
                           (_g2271423184_
                            (lambda (_g2272323129_)
                              (if (gx#stx-pair? _g2272323129_)
                                  (let ((_e2275623132_
                                         (gx#syntax-e _g2272323129_)))
                                    (let ((_hd2275723136_
                                           (##car _e2275623132_))
                                          (_tl2275823139_
                                           (##cdr _e2275623132_)))
                                      (if (gx#stx-datum? _hd2275723136_)
                                          (if (equal? (gx#stx-e _hd2275723136_)
                                                      'splice:)
                                              (if (gx#stx-pair? _tl2275823139_)
                                                  (let ((_e2275923142_
                                                         (gx#syntax-e
                                                          _tl2275823139_)))
                                                    (let ((_hd2276023146_
                                                           (##car _e2275923142_))
                                                          (_tl2276123149_
                                                           (##cdr _e2275923142_)))
                                                      (if (gx#stx-pair?
                                                           _tl2276123149_)
                                                          (let ((_e2276223152_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2276123149_)))
                    (let ((_hd2276323156_ (##car _e2276223152_))
                          (_tl2276423159_ (##cdr _e2276223152_)))
                      (if (gx#stx-null? _tl2276423159_)
                          ((lambda (_L23162_ _L23164_)
                             (_loop22431_
                              _L23164_
                              _vars22708_
                              (lambda (_g2317823180_)
                                (_loop22431_
                                 _L23162_
                                 _g2317823180_
                                 _K22709_))))
                           _hd2276323156_
                           _hd2276023146_)
                          (_g2271523125_ _g2272323129_))))
                  (_g2271523125_ _g2272323129_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2271523125_
                                                   _g2272323129_))
                                              (_g2271523125_ _g2272323129_))
                                          (_g2271523125_ _g2272323129_))))
                                  (_g2271523125_ _g2272323129_))))
                           (_g2271323243_
                            (lambda (_g2272323188_)
                              (if (gx#stx-pair? _g2272323188_)
                                  (let ((_e2274523191_
                                         (gx#syntax-e _g2272323188_)))
                                    (let ((_hd2274623195_
                                           (##car _e2274523191_))
                                          (_tl2274723198_
                                           (##cdr _e2274523191_)))
                                      (if (gx#stx-datum? _hd2274623195_)
                                          (if (equal? (gx#stx-e _hd2274623195_)
                                                      'cons:)
                                              (if (gx#stx-pair? _tl2274723198_)
                                                  (let ((_e2274823201_
                                                         (gx#syntax-e
                                                          _tl2274723198_)))
                                                    (let ((_hd2274923205_
                                                           (##car _e2274823201_))
                                                          (_tl2275023208_
                                                           (##cdr _e2274823201_)))
                                                      (if (gx#stx-pair?
                                                           _tl2275023208_)
                                                          (let ((_e2275123211_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2275023208_)))
                    (let ((_hd2275223215_ (##car _e2275123211_))
                          (_tl2275323218_ (##cdr _e2275123211_)))
                      (if (gx#stx-null? _tl2275323218_)
                          ((lambda (_L23221_ _L23223_)
                             (_loop22431_
                              _L23223_
                              _vars22708_
                              (lambda (_g2323723239_)
                                (_loop22431_
                                 _L23221_
                                 _g2323723239_
                                 _K22709_))))
                           _hd2275223215_
                           _hd2274923205_)
                          (_g2271423184_ _g2272323188_))))
                  (_g2271423184_ _g2272323188_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2271423184_
                                                   _g2272323188_))
                                              (_g2271423184_ _g2272323188_))
                                          (_g2271423184_ _g2272323188_))))
                                  (_g2271423184_ _g2272323188_))))
                           (_g2271223283_
                            (lambda (_g2272323247_)
                              (if (gx#stx-pair? _g2272323247_)
                                  (let ((_e2273723250_
                                         (gx#syntax-e _g2272323247_)))
                                    (let ((_hd2273823254_
                                           (##car _e2273723250_))
                                          (_tl2273923257_
                                           (##cdr _e2273723250_)))
                                      (if (gx#stx-datum? _hd2273823254_)
                                          (if (equal? (gx#stx-e _hd2273823254_)
                                                      'not:)
                                              (if (gx#stx-pair? _tl2273923257_)
                                                  (let ((_e2274023260_
                                                         (gx#syntax-e
                                                          _tl2273923257_)))
                                                    (let ((_hd2274123264_
                                                           (##car _e2274023260_))
                                                          (_tl2274223267_
                                                           (##cdr _e2274023260_)))
                                                      (if (gx#stx-null?
                                                           _tl2274223267_)
                                                          ((lambda (_L23270_)
                                                             (_loop22431_
                                                              _L23270_
                                                              _vars22708_
                                                              _K22709_))
                                                           _hd2274123264_)
                                                          (_g2271323243_
                                                           _g2272323247_))))
                                                  (_g2271323243_
                                                   _g2272323247_))
                                              (_g2271323243_ _g2272323247_))
                                          (_g2271323243_ _g2272323247_))))
                                  (_g2271323243_ _g2272323247_))))
                           (_g2271123382_
                            (lambda (_g2272323287_)
                              (if (gx#stx-pair? _g2272323287_)
                                  (let ((_e2273323290_
                                         (gx#syntax-e _g2272323287_)))
                                    (let ((_hd2273423294_
                                           (##car _e2273323290_))
                                          (_tl2273523297_
                                           (##cdr _e2273323290_)))
                                      ((lambda (_L23300_ _L23302_)
                                         (if (let ((_$e23313_
                                                    (gx#stx-eq?
                                                     'and:
                                                     _L23302_)))
                                               (if _$e23313_
                                                   _$e23313_
                                                   (gx#stx-eq? 'or: _L23302_)))
                                             (let* ((_g2331823330_
                                                     (lambda (_g2331923326_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g2331923326_)))
                                                    (_g2331723341_
                                                     (lambda (_g2331923334_)
                                                       ((lambda ()
                                                          (_K22709_
                                                           _vars22708_)))))
                                                    (_g2331623378_
                                                     (lambda (_g2331923345_)
                                                       (if (gx#stx-pair?
                                                            _g2331923345_)
                                                           (let ((_e2332223348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g2331923345_)))
                     (let ((_hd2332323352_ (##car _e2332223348_))
                           (_tl2332423355_ (##cdr _e2332223348_)))
                       ((lambda (_L23358_ _L23360_)
                          (_loop22431_
                           _L23360_
                           _vars22708_
                           (lambda (_g2337223374_)
                             (_loop22431_
                              (cons _L23302_ _L23358_)
                              _g2337223374_
                              _K22709_))))
                        _tl2332423355_
                        _hd2332323352_)))
                   (_g2331723341_ _g2331923345_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2331623378_ _L23300_))
                                             (_g2271223283_ _g2272323287_)))
                                       _tl2273523297_
                                       _hd2273423294_)))
                                  (_g2271223283_ _g2272323287_))))
                           (_g2271023635_
                            (lambda (_g2272323386_)
                              (if (gx#stx-pair? _g2272323386_)
                                  (let ((_e2272523389_
                                         (gx#syntax-e _g2272323386_)))
                                    (let ((_hd2272623393_
                                           (##car _e2272523389_))
                                          (_tl2272723396_
                                           (##cdr _e2272523389_)))
                                      (if (gx#stx-datum? _hd2272623393_)
                                          (if (equal? (gx#stx-e _hd2272623393_)
                                                      '?:)
                                              (if (gx#stx-pair? _tl2272723396_)
                                                  (let ((_e2272823399_
                                                         (gx#syntax-e
                                                          _tl2272723396_)))
                                                    (let ((_hd2272923403_
                                                           (##car _e2272823399_))
                                                          (_tl2273023406_
                                                           (##cdr _e2272823399_)))
                                                      ((lambda (_L23409_)
                                                         (let* ((_g2342523462_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2342623458_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2342623458_)))
                        (_g2342423473_
                         (lambda (_g2342623466_)
                           ((lambda () (_K22709_ _vars22708_)))))
                        (_g2342323551_
                         (lambda (_g2342623477_)
                           (if (gx#stx-pair? _g2342623477_)
                               (let ((_e2344223480_
                                      (gx#syntax-e _g2342623477_)))
                                 (let ((_hd2344323484_ (##car _e2344223480_))
                                       (_tl2344423487_ (##cdr _e2344223480_)))
                                   (if (gx#stx-pair? _tl2344423487_)
                                       (let ((_e2344523490_
                                              (gx#syntax-e _tl2344423487_)))
                                         (let ((_hd2344623494_
                                                (##car _e2344523490_))
                                               (_tl2344723497_
                                                (##cdr _e2344523490_)))
                                           (if (gx#stx-datum? _hd2344623494_)
                                               (if (equal? (gx#stx-e
                                                            _hd2344623494_)
                                                           '::)
                                                   (if (gx#stx-pair?
                                                        _tl2344723497_)
                                                       (let ((_e2344823500_
                                                              (gx#syntax-e
                                                               _tl2344723497_)))
                                                         (let ((_hd2344923504_
                                                                (##car _e2344823500_))
                                                               (_tl2345023507_
                                                                (##cdr _e2344823500_)))
                                                           (if (gx#stx-pair?
                                                                _tl2345023507_)
                                                               (let ((_e2345123510_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2345023507_)))
                         (let ((_hd2345223514_ (##car _e2345123510_))
                               (_tl2345323517_ (##cdr _e2345123510_)))
                           (if (gx#stx-datum? _hd2345223514_)
                               (if (equal? (gx#stx-e _hd2345223514_) '=>:)
                                   (if (gx#stx-pair? _tl2345323517_)
                                       (let ((_e2345423520_
                                              (gx#syntax-e _tl2345323517_)))
                                         (let ((_hd2345523524_
                                                (##car _e2345423520_))
                                               (_tl2345623527_
                                                (##cdr _e2345423520_)))
                                           (if (gx#stx-null? _tl2345623527_)
                                               ((lambda (_L23530_)
                                                  (_loop22431_
                                                   _L23530_
                                                   _vars22708_
                                                   _K22709_))
                                                _hd2345523524_)
                                               (_g2342423473_ _g2342623477_))))
                                       (_g2342423473_ _g2342623477_))
                                   (_g2342423473_ _g2342623477_))
                               (_g2342423473_ _g2342623477_))))
                       (_g2342423473_ _g2342623477_))))
               (_g2342423473_ _g2342623477_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2342423473_
                                                    _g2342623477_))
                                               (_g2342423473_ _g2342623477_))))
                                       (_g2342423473_ _g2342623477_))))
                               (_g2342423473_ _g2342623477_))))
                        (_g2342223603_
                         (lambda (_g2342623555_)
                           (if (gx#stx-pair? _g2342623555_)
                               (let ((_e2343223558_
                                      (gx#syntax-e _g2342623555_)))
                                 (let ((_hd2343323562_ (##car _e2343223558_))
                                       (_tl2343423565_ (##cdr _e2343223558_)))
                                   (if (gx#stx-pair? _tl2343423565_)
                                       (let ((_e2343523568_
                                              (gx#syntax-e _tl2343423565_)))
                                         (let ((_hd2343623572_
                                                (##car _e2343523568_))
                                               (_tl2343723575_
                                                (##cdr _e2343523568_)))
                                           (if (gx#stx-datum? _hd2343623572_)
                                               (if (equal? (gx#stx-e
                                                            _hd2343623572_)
                                                           '=>:)
                                                   (if (gx#stx-pair?
                                                        _tl2343723575_)
                                                       (let ((_e2343823578_
                                                              (gx#syntax-e
                                                               _tl2343723575_)))
                                                         (let ((_hd2343923582_
                                                                (##car _e2343823578_))
                                                               (_tl2344023585_
                                                                (##cdr _e2343823578_)))
                                                           (if (gx#stx-null?
                                                                _tl2344023585_)
                                                               ((lambda (_L23588_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_loop22431_ _L23588_ _vars22708_ _K22709_))
                        _hd2343923582_)
                       (_g2342323551_ _g2342623555_))))
               (_g2342323551_ _g2342623555_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2342323551_
                                                    _g2342623555_))
                                               (_g2342323551_ _g2342623555_))))
                                       (_g2342323551_ _g2342623555_))))
                               (_g2342323551_ _g2342623555_))))
                        (_g2342123631_
                         (lambda (_g2342623607_)
                           (if (gx#stx-pair? _g2342623607_)
                               (let ((_e2342823610_
                                      (gx#syntax-e _g2342623607_)))
                                 (let ((_hd2342923614_ (##car _e2342823610_))
                                       (_tl2343023617_ (##cdr _e2342823610_)))
                                   (if (gx#stx-null? _tl2343023617_)
                                       ((lambda (_L23620_)
                                          (_loop22431_
                                           _L23620_
                                           _vars22708_
                                           _K22709_))
                                        _hd2342923614_)
                                       (_g2342223603_ _g2342623607_))))
                               (_g2342223603_ _g2342623607_)))))
                   (_g2342123631_ _L23409_)))
               _tl2273023406_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2271123382_
                                                   _g2272323386_))
                                              (_g2271123382_ _g2272323386_))
                                          (_g2271123382_ _g2272323386_))))
                                  (_g2271123382_ _g2272323386_)))))
                      (_g2271023635_ _ptree22706_))))
                 (_loop-vector22433_
                  (lambda (_body22594_ _vars22596_ _K22597_)
                    (let* ((_g2260022621_
                            (lambda (_g2260122617_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2260122617_)))
                           (_g2259922662_
                            (lambda (_g2260122625_)
                              (if (gx#stx-pair? _g2260122625_)
                                  (let ((_e2261022628_
                                         (gx#syntax-e _g2260122625_)))
                                    (let ((_hd2261122632_
                                           (##car _e2261022628_))
                                          (_tl2261222635_
                                           (##cdr _e2261022628_)))
                                      (if (gx#stx-datum? _hd2261122632_)
                                          (if (equal? (gx#stx-e _hd2261122632_)
                                                      'list:)
                                              (if (gx#stx-pair? _tl2261222635_)
                                                  (let ((_e2261322638_
                                                         (gx#syntax-e
                                                          _tl2261222635_)))
                                                    (let ((_hd2261422642_
                                                           (##car _e2261322638_))
                                                          (_tl2261522645_
                                                           (##cdr _e2261322638_)))
                                                      (if (gx#stx-null?
                                                           _tl2261522645_)
                                                          ((lambda (_L22648_)
                                                             (_loop22431_
                                                              _L22648_
                                                              _vars22596_
                                                              _K22597_))
                                                           _hd2261422642_)
                                                          (_g2260022621_
                                                           _g2260122625_))))
                                                  (_g2260022621_
                                                   _g2260122625_))
                                              (_g2260022621_ _g2260122625_))
                                          (_g2260022621_ _g2260122625_))))
                                  (_g2260022621_ _g2260122625_))))
                           (_g2259822702_
                            (lambda (_g2260122666_)
                              (if (gx#stx-pair? _g2260122666_)
                                  (let ((_e2260322669_
                                         (gx#syntax-e _g2260122666_)))
                                    (let ((_hd2260422673_
                                           (##car _e2260322669_))
                                          (_tl2260522676_
                                           (##cdr _e2260322669_)))
                                      (if (gx#stx-datum? _hd2260422673_)
                                          (if (equal? (gx#stx-e _hd2260422673_)
                                                      'simple:)
                                              (if (gx#stx-pair? _tl2260522676_)
                                                  (let ((_e2260622679_
                                                         (gx#syntax-e
                                                          _tl2260522676_)))
                                                    (let ((_hd2260722683_
                                                           (##car _e2260622679_))
                                                          (_tl2260822686_
                                                           (##cdr _e2260622679_)))
                                                      (if (gx#stx-null?
                                                           _tl2260822686_)
                                                          ((lambda (_L22689_)
                                                             (_loop-list22434_
                                                              _L22689_
                                                              _vars22596_
                                                              _K22597_))
                                                           _hd2260722683_)
                                                          (_g2259922662_
                                                           _g2260122666_))))
                                                  (_g2259922662_
                                                   _g2260122666_))
                                              (_g2259922662_ _g2260122666_))
                                          (_g2259922662_ _g2260122666_))))
                                  (_g2259922662_ _g2260122666_)))))
                      (_g2259822702_ _body22594_))))
                 (_loop-list22434_
                  (lambda (_rest22524_ _vars22526_ _K22527_)
                    (let* ((_g2253022542_
                            (lambda (_g2253122538_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2253122538_)))
                           (_g2252922553_
                            (lambda (_g2253122546_)
                              ((lambda () (_K22527_ _vars22526_)))))
                           (_g2252822590_
                            (lambda (_g2253122557_)
                              (if (gx#stx-pair? _g2253122557_)
                                  (let ((_e2253422560_
                                         (gx#syntax-e _g2253122557_)))
                                    (let ((_hd2253522564_
                                           (##car _e2253422560_))
                                          (_tl2253622567_
                                           (##cdr _e2253422560_)))
                                      ((lambda (_L22570_ _L22572_)
                                         (_loop22431_
                                          _L22572_
                                          _vars22526_
                                          (lambda (_g2258422586_)
                                            (_loop-list22434_
                                             _L22570_
                                             _g2258422586_
                                             _K22527_))))
                                       _tl2253622567_
                                       _hd2253522564_)))
                                  (_g2252922553_ _g2253122557_)))))
                      (_g2252822590_ _rest22524_))))
                 (_loop-class-list22435_
                  (lambda (_rest22437_ _vars22439_ _K22440_)
                    (let* ((_g2244322458_
                            (lambda (_g2244422454_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2244422454_)))
                           (_g2244222469_
                            (lambda (_g2244422462_)
                              ((lambda () (_K22440_ _vars22439_)))))
                           (_g2244122520_
                            (lambda (_g2244422473_)
                              (if (gx#stx-pair? _g2244422473_)
                                  (let ((_e2244722476_
                                         (gx#syntax-e _g2244422473_)))
                                    (let ((_hd2244822480_
                                           (##car _e2244722476_))
                                          (_tl2244922483_
                                           (##cdr _e2244722476_)))
                                      (if (gx#stx-pair? _tl2244922483_)
                                          (let ((_e2245022486_
                                                 (gx#syntax-e _tl2244922483_)))
                                            (let ((_hd2245122490_
                                                   (##car _e2245022486_))
                                                  (_tl2245222493_
                                                   (##cdr _e2245022486_)))
                                              ((lambda (_L22496_ _L22498_)
                                                 (_loop22431_
                                                  _L22498_
                                                  _vars22439_
                                                  (lambda (_g2251422516_)
                                                    (_loop-class-list22435_
                                                     _L22496_
                                                     _g2251422516_
                                                     _K22440_))))
                                               _tl2245222493_
                                               _hd2245122490_)))
                                          (_g2244222469_ _g2244422473_))))
                                  (_g2244222469_ _g2244422473_)))))
                      (_g2244122520_ _rest22437_)))))
          (_loop22431_ _ptree22428_ '() values))))
    (define |gerbil/core$<match>[1]#generate-match1|
      (lambda (_stx19244_ _tgt19246_ _ptree19247_ _K19248_ _E19249_)
        (letrec ((_generate119251_
                  (lambda (_tgt20781_ _ptree20783_ _K20784_ _E20785_)
                    (let* ((_g2078720795_
                            (lambda (_g2078820791_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2078820791_)))
                           (_g2078622424_
                            (lambda (_g2078820799_)
                              ((lambda (_L20802_)
                                 (let ()
                                   (let* ((_g2082920955_
                                           (lambda (_g2083020951_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2083020951_)))
                                          (_g2082820976_
                                           (lambda (_g2083020959_)
                                             (if (gx#stx-pair? _g2083020959_)
                                                 (let ((_e2094720962_
                                                        (gx#syntax-e
                                                         _g2083020959_)))
                                                   (let ((_hd2094820966_
                                                          (##car _e2094720962_))
                                                         (_tl2094920969_
                                                          (##cdr _e2094720962_)))
                                                     (if (gx#stx-datum?
                                                          _hd2094820966_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2094820966_)
                             'any:)
                     (if (gx#stx-null? _tl2094920969_)
                         ((lambda () _K20784_))
                         (_g2082920955_ _g2083020959_))
                     (_g2082920955_ _g2083020959_))
                 (_g2082920955_ _g2083020959_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2082920955_
                                                  _g2083020959_))))
                                          (_g2082721019_
                                           (lambda (_g2083020980_)
                                             (if (gx#stx-pair? _g2083020980_)
                                                 (let ((_e2094120983_
                                                        (gx#syntax-e
                                                         _g2083020980_)))
                                                   (let ((_hd2094220987_
                                                          (##car _e2094120983_))
                                                         (_tl2094320990_
                                                          (##cdr _e2094120983_)))
                                                     (if (gx#stx-datum?
                                                          _hd2094220987_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2094220987_)
                             'var:)
                     (if (gx#stx-pair? _tl2094320990_)
                         (let ((_e2094420993_ (gx#syntax-e _tl2094320990_)))
                           (let ((_hd2094520997_ (##car _e2094420993_))
                                 (_tl2094621000_ (##cdr _e2094420993_)))
                             (if (gx#stx-null? _tl2094621000_)
                                 ((lambda (_L21003_)
                                    (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (cons _L21003_
                                                            (cons _L20802_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _K20784_ '()))))
                                  _hd2094520997_)
                                 (_g2082820976_ _g2083020980_))))
                         (_g2082820976_ _g2083020980_))
                     (_g2082820976_ _g2083020980_))
                 (_g2082820976_ _g2083020980_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2082820976_
                                                  _g2083020980_))))
                                          (_g2082621104_
                                           (lambda (_g2083021023_)
                                             (if (gx#stx-pair? _g2083021023_)
                                                 (let ((_e2093121026_
                                                        (gx#syntax-e
                                                         _g2083021023_)))
                                                   (let ((_hd2093221030_
                                                          (##car _e2093121026_))
                                                         (_tl2093321033_
                                                          (##cdr _e2093121026_)))
                                                     (if (gx#stx-datum?
                                                          _hd2093221030_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2093221030_)
                             'apply:)
                     (if (gx#stx-pair? _tl2093321033_)
                         (let ((_e2093421036_ (gx#syntax-e _tl2093321033_)))
                           (let ((_hd2093521040_ (##car _e2093421036_))
                                 (_tl2093621043_ (##cdr _e2093421036_)))
                             (if (gx#stx-pair? _tl2093621043_)
                                 (let ((_e2093721046_
                                        (gx#syntax-e _tl2093621043_)))
                                   (let ((_hd2093821050_ (##car _e2093721046_))
                                         (_tl2093921053_
                                          (##cdr _e2093721046_)))
                                     (if (gx#stx-null? _tl2093921053_)
                                         ((lambda (_L21056_ _L21058_)
                                            (let* ((_g2107321081_
                                                    (lambda (_g2107421077_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g2107421077_)))
                                                   (_g2107221100_
                                                    (lambda (_g2107421085_)
                                                      ((lambda (_L21088_)
                                                         (let ()
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons (cons (cons _L21088_
                                           (cons (cons _L21058_
                                                       (cons _L20802_ '()))
                                                 '()))
                                     '())
                               (cons (_generate119251_
                                      _L21088_
                                      _L21056_
                                      _K20784_
                                      _E20785_)
                                     '())))))
               _g2107421085_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2107221100_
                                               (gx#genident 'e))))
                                          _hd2093821050_
                                          _hd2093521040_)
                                         (_g2082721019_ _g2083021023_))))
                                 (_g2082721019_ _g2083021023_))))
                         (_g2082721019_ _g2083021023_))
                     (_g2082721019_ _g2083021023_))
                 (_g2082721019_ _g2083021023_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2082721019_
                                                  _g2083021023_))))
                                          (_g2082521186_
                                           (lambda (_g2083021108_)
                                             (if (gx#stx-pair? _g2083021108_)
                                                 (let ((_e2092321111_
                                                        (gx#syntax-e
                                                         _g2083021108_)))
                                                   (let ((_hd2092421115_
                                                          (##car _e2092321111_))
                                                         (_tl2092521118_
                                                          (##cdr _e2092321111_)))
                                                     (if (gx#stx-datum?
                                                          _hd2092421115_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2092421115_)
                             'datum:)
                     (if (gx#stx-pair? _tl2092521118_)
                         (let ((_e2092621121_ (gx#syntax-e _tl2092521118_)))
                           (let ((_hd2092721125_ (##car _e2092621121_))
                                 (_tl2092821128_ (##cdr _e2092621121_)))
                             (if (gx#stx-null? _tl2092821128_)
                                 ((lambda (_L21131_)
                                    (let* ((_g2114421152_
                                            (lambda (_g2114521148_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2114521148_)))
                                           (_g2114321171_
                                            (lambda (_g2114521156_)
                                              ((lambda (_L21159_)
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'if)
                                                         (cons (cons _L21159_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L20802_
                                   (cons (cons (gx#datum->syntax '#f 'quote)
                                               (cons _L21131_ '()))
                                         '())))
                       (cons _K20784_ (cons _E20785_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g2114521156_))))
                                      (_g2114321171_
                                       (let ((_e21175_ (gx#stx-e _L21131_)))
                                         (if (let ((_$e21178_
                                                    (symbol? _e21175_)))
                                               (if _$e21178_
                                                   _$e21178_
                                                   (let ((_$e21182_
                                                          (keyword? _e21175_)))
                                                     (if _$e21182_
                                                         _$e21182_
                                                         (immediate?
                                                          _e21175_)))))
                                             (gx#datum->syntax '#f '##eq?)
                                             (if (number? _e21175_)
                                                 (gx#datum->syntax '#f 'eqv?)
                                                 (gx#datum->syntax
                                                  '#f
                                                  'equal?)))))))
                                  _hd2092721125_)
                                 (_g2082621104_ _g2083021108_))))
                         (_g2082621104_ _g2083021108_))
                     (_g2082621104_ _g2083021108_))
                 (_g2082621104_ _g2083021108_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2082621104_
                                                  _g2083021108_))))
                                          (_g2082421240_
                                           (lambda (_g2083021190_)
                                             (if (gx#stx-pair? _g2083021190_)
                                                 (let ((_e2091321193_
                                                        (gx#syntax-e
                                                         _g2083021190_)))
                                                   (let ((_hd2091421197_
                                                          (##car _e2091321193_))
                                                         (_tl2091521200_
                                                          (##cdr _e2091321193_)))
                                                     (if (gx#stx-datum?
                                                          _hd2091421197_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2091421197_)
                             'class:)
                     (if (gx#stx-pair? _tl2091521200_)
                         (let ((_e2091621203_ (gx#syntax-e _tl2091521200_)))
                           (let ((_hd2091721207_ (##car _e2091621203_))
                                 (_tl2091821210_ (##cdr _e2091621203_)))
                             (if (gx#stx-pair? _tl2091821210_)
                                 (let ((_e2091921213_
                                        (gx#syntax-e _tl2091821210_)))
                                   (let ((_hd2092021217_ (##car _e2091921213_))
                                         (_tl2092121220_
                                          (##cdr _e2091921213_)))
                                     (if (gx#stx-null? _tl2092121220_)
                                         ((lambda (_L21223_ _L21225_)
                                            (_generate-class19257_
                                             (gx#stx-e _L21225_)
                                             _tgt20781_
                                             _L21223_
                                             _K20784_
                                             _E20785_))
                                          _hd2092021217_
                                          _hd2091721207_)
                                         (_g2082521186_ _g2083021190_))))
                                 (_g2082521186_ _g2083021190_))))
                         (_g2082521186_ _g2083021190_))
                     (_g2082521186_ _g2083021190_))
                 (_g2082521186_ _g2083021190_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2082521186_
                                                  _g2083021190_))))
                                          (_g2082321294_
                                           (lambda (_g2083021244_)
                                             (if (gx#stx-pair? _g2083021244_)
                                                 (let ((_e2090221247_
                                                        (gx#syntax-e
                                                         _g2083021244_)))
                                                   (let ((_hd2090321251_
                                                          (##car _e2090221247_))
                                                         (_tl2090421254_
                                                          (##cdr _e2090221247_)))
                                                     (if (gx#stx-datum?
                                                          _hd2090321251_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2090321251_)
                             'struct:)
                     (if (gx#stx-pair? _tl2090421254_)
                         (let ((_e2090521257_ (gx#syntax-e _tl2090421254_)))
                           (let ((_hd2090621261_ (##car _e2090521257_))
                                 (_tl2090721264_ (##cdr _e2090521257_)))
                             (if (gx#stx-pair? _tl2090721264_)
                                 (let ((_e2090821267_
                                        (gx#syntax-e _tl2090721264_)))
                                   (let ((_hd2090921271_ (##car _e2090821267_))
                                         (_tl2091021274_
                                          (##cdr _e2090821267_)))
                                     (if (gx#stx-null? _tl2091021274_)
                                         ((lambda (_L21277_ _L21279_)
                                            (_generate-struct19256_
                                             (gx#stx-e _L21279_)
                                             _tgt20781_
                                             _L21277_
                                             _K20784_
                                             _E20785_))
                                          _hd2090921271_
                                          _hd2090621261_)
                                         (_g2082421240_ _g2083021244_))))
                                 (_g2082421240_ _g2083021244_))))
                         (_g2082421240_ _g2083021244_))
                     (_g2082421240_ _g2083021244_))
                 (_g2082421240_ _g2083021244_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2082421240_
                                                  _g2083021244_))))
                                          (_g2082221472_
                                           (lambda (_g2083021298_)
                                             (if (gx#stx-pair? _g2083021298_)
                                                 (let ((_e2089421301_
                                                        (gx#syntax-e
                                                         _g2083021298_)))
                                                   (let ((_hd2089521305_
                                                          (##car _e2089421301_))
                                                         (_tl2089621308_
                                                          (##cdr _e2089421301_)))
                                                     (if (gx#stx-datum?
                                                          _hd2089521305_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2089521305_)
                             'vector:)
                     (if (gx#stx-pair? _tl2089621308_)
                         (let ((_e2089721311_ (gx#syntax-e _tl2089621308_)))
                           (let ((_hd2089821315_ (##car _e2089721311_))
                                 (_tl2089921318_ (##cdr _e2089721311_)))
                             (if (gx#stx-null? _tl2089921318_)
                                 ((lambda (_L21321_)
                                    (let* ((_g2133521356_
                                            (lambda (_g2133621352_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2133621352_)))
                                           (_g2133421397_
                                            (lambda (_g2133621360_)
                                              (if (gx#stx-pair? _g2133621360_)
                                                  (let ((_e2134521363_
                                                         (gx#syntax-e
                                                          _g2133621360_)))
                                                    (let ((_hd2134621367_
                                                           (##car _e2134521363_))
                                                          (_tl2134721370_
                                                           (##cdr _e2134521363_)))
                                                      (if (gx#stx-datum?
                                                           _hd2134621367_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2134621367_)
                              'list:)
                      (if (gx#stx-pair? _tl2134721370_)
                          (let ((_e2134821373_ (gx#syntax-e _tl2134721370_)))
                            (let ((_hd2134921377_ (##car _e2134821373_))
                                  (_tl2135021380_ (##cdr _e2134821373_)))
                              (if (gx#stx-null? _tl2135021380_)
                                  ((lambda (_L21383_)
                                     (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'vector?)
                                                       (cons _L20802_ '()))
                                                 (cons (_generate-list-vector19255_
                                                        _tgt20781_
                                                        _L21383_
                                                        (gx#datum->syntax
                                                         '#f
                                                         'subvector->list)
                                                        '0
                                                        _K20784_
                                                        _E20785_)
                                                       (cons _E20785_ '())))))
                                   _hd2134921377_)
                                  (_g2133521356_ _g2133621360_))))
                          (_g2133521356_ _g2133621360_))
                      (_g2133521356_ _g2133621360_))
                  (_g2133521356_ _g2133621360_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2133521356_
                                                   _g2133621360_))))
                                           (_g2133321468_
                                            (lambda (_g2133621401_)
                                              (if (gx#stx-pair? _g2133621401_)
                                                  (let ((_e2133821404_
                                                         (gx#syntax-e
                                                          _g2133621401_)))
                                                    (let ((_hd2133921408_
                                                           (##car _e2133821404_))
                                                          (_tl2134021411_
                                                           (##cdr _e2133821404_)))
                                                      (if (gx#stx-datum?
                                                           _hd2133921408_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2133921408_)
                              'simple:)
                      (if (gx#stx-pair? _tl2134021411_)
                          (let ((_e2134121414_ (gx#syntax-e _tl2134021411_)))
                            (let ((_hd2134221418_ (##car _e2134121414_))
                                  (_tl2134321421_ (##cdr _e2134121414_)))
                              (if (gx#stx-null? _tl2134321421_)
                                  ((lambda (_L21424_)
                                     (let* ((_g2143721445_
                                             (lambda (_g2143821441_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2143821441_)))
                                            (_g2143621464_
                                             (lambda (_g2143821449_)
                                               ((lambda (_L21452_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'and)
                              (cons (cons (gx#datum->syntax '#f '##vector?)
                                          (cons _L20802_ '()))
                                    (cons (cons (gx#datum->syntax '#f '##fx=)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '##vector-length)
                                                            (cons _L20802_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _L21452_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        (cons (_generate-simple-vector19254_
                               _tgt20781_
                               _L21424_
                               '0
                               _K20784_
                               _E20785_)
                              (cons _E20785_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2143821449_))))
                                       (_g2143621464_
                                        (gx#stx-length _L21424_))))
                                   _hd2134221418_)
                                  (_g2133421397_ _g2133621401_))))
                          (_g2133421397_ _g2133621401_))
                      (_g2133421397_ _g2133621401_))
                  (_g2133421397_ _g2133621401_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2133421397_
                                                   _g2133621401_)))))
                                      (_g2133321468_ _L21321_)))
                                  _hd2089821315_)
                                 (_g2082321294_ _g2083021298_))))
                         (_g2082321294_ _g2083021298_))
                     (_g2082321294_ _g2083021298_))
                 (_g2082321294_ _g2083021298_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2082321294_
                                                  _g2083021298_))))
                                          (_g2082121650_
                                           (lambda (_g2083021476_)
                                             (if (gx#stx-pair? _g2083021476_)
                                                 (let ((_e2088721479_
                                                        (gx#syntax-e
                                                         _g2083021476_)))
                                                   (let ((_hd2088821483_
                                                          (##car _e2088721479_))
                                                         (_tl2088921486_
                                                          (##cdr _e2088721479_)))
                                                     (if (gx#stx-datum?
                                                          _hd2088821483_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2088821483_)
                             'values:)
                     (if (gx#stx-pair? _tl2088921486_)
                         (let ((_e2089021489_ (gx#syntax-e _tl2088921486_)))
                           (let ((_hd2089121493_ (##car _e2089021489_))
                                 (_tl2089221496_ (##cdr _e2089021489_)))
                             (if (gx#stx-null? _tl2089221496_)
                                 ((lambda (_L21499_)
                                    (let* ((_g2151321534_
                                            (lambda (_g2151421530_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2151421530_)))
                                           (_g2151221575_
                                            (lambda (_g2151421538_)
                                              (if (gx#stx-pair? _g2151421538_)
                                                  (let ((_e2152321541_
                                                         (gx#syntax-e
                                                          _g2151421538_)))
                                                    (let ((_hd2152421545_
                                                           (##car _e2152321541_))
                                                          (_tl2152521548_
                                                           (##cdr _e2152321541_)))
                                                      (if (gx#stx-datum?
                                                           _hd2152421545_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2152421545_)
                              'list:)
                      (if (gx#stx-pair? _tl2152521548_)
                          (let ((_e2152621551_ (gx#syntax-e _tl2152521548_)))
                            (let ((_hd2152721555_ (##car _e2152621551_))
                                  (_tl2152821558_ (##cdr _e2152621551_)))
                              (if (gx#stx-null? _tl2152821558_)
                                  ((lambda (_L21561_)
                                     (_generate-list-vector19255_
                                      _tgt20781_
                                      _L21561_
                                      (gx#datum->syntax '#f 'values->list)
                                      '0
                                      _K20784_
                                      _E20785_))
                                   _hd2152721555_)
                                  (_g2151321534_ _g2151421538_))))
                          (_g2151321534_ _g2151421538_))
                      (_g2151321534_ _g2151421538_))
                  (_g2151321534_ _g2151421538_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2151321534_
                                                   _g2151421538_))))
                                           (_g2151121646_
                                            (lambda (_g2151421579_)
                                              (if (gx#stx-pair? _g2151421579_)
                                                  (let ((_e2151621582_
                                                         (gx#syntax-e
                                                          _g2151421579_)))
                                                    (let ((_hd2151721586_
                                                           (##car _e2151621582_))
                                                          (_tl2151821589_
                                                           (##cdr _e2151621582_)))
                                                      (if (gx#stx-datum?
                                                           _hd2151721586_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2151721586_)
                              'simple:)
                      (if (gx#stx-pair? _tl2151821589_)
                          (let ((_e2151921592_ (gx#syntax-e _tl2151821589_)))
                            (let ((_hd2152021596_ (##car _e2151921592_))
                                  (_tl2152121599_ (##cdr _e2151921592_)))
                              (if (gx#stx-null? _tl2152121599_)
                                  ((lambda (_L21602_)
                                     (let* ((_g2161521623_
                                             (lambda (_g2161621619_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2161621619_)))
                                            (_g2161421642_
                                             (lambda (_g2161621627_)
                                               ((lambda (_L21630_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##fx=)
                              (cons (cons (gx#datum->syntax '#f 'values-count)
                                          (cons _L20802_ '()))
                                    (cons _L21630_ '())))
                        (cons (_generate-simple-vector19254_
                               _tgt20781_
                               _L21602_
                               '0
                               _K20784_
                               _E20785_)
                              (cons _E20785_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2161621627_))))
                                       (_g2161421642_
                                        (gx#stx-length _L21602_))))
                                   _hd2152021596_)
                                  (_g2151221575_ _g2151421579_))))
                          (_g2151221575_ _g2151421579_))
                      (_g2151221575_ _g2151421579_))
                  (_g2151221575_ _g2151421579_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2151221575_
                                                   _g2151421579_)))))
                                      (_g2151121646_ _L21499_)))
                                  _hd2089121493_)
                                 (_g2082221472_ _g2083021476_))))
                         (_g2082221472_ _g2083021476_))
                     (_g2082221472_ _g2083021476_))
                 (_g2082221472_ _g2083021476_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2082221472_
                                                  _g2083021476_))))
                                          (_g2082021721_
                                           (lambda (_g2083021654_)
                                             (if (gx#stx-pair? _g2083021654_)
                                                 (let ((_e2088021657_
                                                        (gx#syntax-e
                                                         _g2083021654_)))
                                                   (let ((_hd2088121661_
                                                          (##car _e2088021657_))
                                                         (_tl2088221664_
                                                          (##cdr _e2088021657_)))
                                                     (if (gx#stx-datum?
                                                          _hd2088121661_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2088121661_)
                             'box:)
                     (if (gx#stx-pair? _tl2088221664_)
                         (let ((_e2088321667_ (gx#syntax-e _tl2088221664_)))
                           (let ((_hd2088421671_ (##car _e2088321667_))
                                 (_tl2088521674_ (##cdr _e2088321667_)))
                             (if (gx#stx-null? _tl2088521674_)
                                 ((lambda (_L21677_)
                                    (let* ((_g2169021698_
                                            (lambda (_g2169121694_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2169121694_)))
                                           (_g2168921717_
                                            (lambda (_g2169121702_)
                                              ((lambda (_L21705_)
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'if)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '##box?)
                             (cons _L20802_ '()))
                       (cons (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (cons _L21705_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##unbox)
                         (cons _L20802_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (_generate119251_
                                                _L21705_
                                                _L21677_
                                                _K20784_
                                                _E20785_)
                                               '())))
                             (cons _E20785_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g2169121702_))))
                                      (_g2168921717_ (gx#genident 'e))))
                                  _hd2088421671_)
                                 (_g2082121650_ _g2083021654_))))
                         (_g2082121650_ _g2083021654_))
                     (_g2082121650_ _g2083021654_))
                 (_g2082121650_ _g2083021654_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2082121650_
                                                  _g2083021654_))))
                                          (_g2081921775_
                                           (lambda (_g2083021725_)
                                             (if (gx#stx-pair? _g2083021725_)
                                                 (let ((_e2087021728_
                                                        (gx#syntax-e
                                                         _g2083021725_)))
                                                   (let ((_hd2087121732_
                                                          (##car _e2087021728_))
                                                         (_tl2087221735_
                                                          (##cdr _e2087021728_)))
                                                     (if (gx#stx-datum?
                                                          _hd2087121732_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2087121732_)
                             'splice:)
                     (if (gx#stx-pair? _tl2087221735_)
                         (let ((_e2087321738_ (gx#syntax-e _tl2087221735_)))
                           (let ((_hd2087421742_ (##car _e2087321738_))
                                 (_tl2087521745_ (##cdr _e2087321738_)))
                             (if (gx#stx-pair? _tl2087521745_)
                                 (let ((_e2087621748_
                                        (gx#syntax-e _tl2087521745_)))
                                   (let ((_hd2087721752_ (##car _e2087621748_))
                                         (_tl2087821755_
                                          (##cdr _e2087621748_)))
                                     (if (gx#stx-null? _tl2087821755_)
                                         ((lambda (_L21758_ _L21760_)
                                            (_generate-splice19253_
                                             _tgt20781_
                                             _L21760_
                                             _L21758_
                                             _K20784_
                                             _E20785_))
                                          _hd2087721752_
                                          _hd2087421742_)
                                         (_g2082021721_ _g2083021725_))))
                                 (_g2082021721_ _g2083021725_))))
                         (_g2082021721_ _g2083021725_))
                     (_g2082021721_ _g2083021725_))
                 (_g2082021721_ _g2083021725_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2082021721_
                                                  _g2083021725_))))
                                          (_g2081821796_
                                           (lambda (_g2083021779_)
                                             (if (gx#stx-pair? _g2083021779_)
                                                 (let ((_e2086521782_
                                                        (gx#syntax-e
                                                         _g2083021779_)))
                                                   (let ((_hd2086621786_
                                                          (##car _e2086521782_))
                                                         (_tl2086721789_
                                                          (##cdr _e2086521782_)))
                                                     (if (gx#stx-datum?
                                                          _hd2086621786_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2086621786_)
                             'null:)
                     (if (gx#stx-null? _tl2086721789_)
                         ((lambda ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons (gx#datum->syntax '#f '##null?)
                                              (cons _L20802_ '()))
                                        (cons _K20784_ (cons _E20785_ '()))))))
                         (_g2081921775_ _g2083021779_))
                     (_g2081921775_ _g2083021779_))
                 (_g2081921775_ _g2083021779_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2081921775_
                                                  _g2083021779_))))
                                          (_g2081721915_
                                           (lambda (_g2083021800_)
                                             (if (gx#stx-pair? _g2083021800_)
                                                 (let ((_e2085621803_
                                                        (gx#syntax-e
                                                         _g2083021800_)))
                                                   (let ((_hd2085721807_
                                                          (##car _e2085621803_))
                                                         (_tl2085821810_
                                                          (##cdr _e2085621803_)))
                                                     (if (gx#stx-datum?
                                                          _hd2085721807_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2085721807_)
                             'cons:)
                     (if (gx#stx-pair? _tl2085821810_)
                         (let ((_e2085921813_ (gx#syntax-e _tl2085821810_)))
                           (let ((_hd2086021817_ (##car _e2085921813_))
                                 (_tl2086121820_ (##cdr _e2085921813_)))
                             (if (gx#stx-pair? _tl2086121820_)
                                 (let ((_e2086221823_
                                        (gx#syntax-e _tl2086121820_)))
                                   (let ((_hd2086321827_ (##car _e2086221823_))
                                         (_tl2086421830_
                                          (##cdr _e2086221823_)))
                                     (if (gx#stx-null? _tl2086421830_)
                                         ((lambda (_L21833_ _L21835_)
                                            (let* ((_g2185121866_
                                                    (lambda (_g2185221862_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g2185221862_)))
                                                   (_g2185021911_
                                                    (lambda (_g2185221870_)
                                                      (if (gx#stx-pair?
                                                           _g2185221870_)
                                                          (let ((_e2185521873_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _g2185221870_)))
                    (let ((_hd2185621877_ (##car _e2185521873_))
                          (_tl2185721880_ (##cdr _e2185521873_)))
                      (if (gx#stx-pair? _tl2185721880_)
                          (let ((_e2185821883_ (gx#syntax-e _tl2185721880_)))
                            (let ((_hd2185921887_ (##car _e2185821883_))
                                  (_tl2186021890_ (##cdr _e2185821883_)))
                              (if (gx#stx-null? _tl2186021890_)
                                  ((lambda (_L21893_ _L21895_)
                                     (let ()
                                       (cons (gx#datum->syntax '#f 'if)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##pair?)
                                                         (cons _L20802_ '()))
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (cons (cons _L21895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##car)
                                                     (cons _L20802_ '()))
                                               '()))
                                   (cons (cons _L21893_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##cdr)
                                                           (cons _L20802_ '()))
                                                     '()))
                                         '()))
                             (cons (_generate119251_
                                    _L21895_
                                    _L21835_
                                    (_generate119251_
                                     _L21893_
                                     _L21833_
                                     _K20784_
                                     _E20785_)
                                    _E20785_)
                                   '())))
                 (cons _E20785_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _hd2185921887_
                                   _hd2185621877_)
                                  (_g2185121866_ _g2185221870_))))
                          (_g2185121866_ _g2185221870_))))
                  (_g2185121866_ _g2185221870_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2185021911_
                                               (list (gx#genident 'hd)
                                                     (gx#genident 'tl)))))
                                          _hd2086321827_
                                          _hd2086021817_)
                                         (_g2081821796_ _g2083021800_))))
                                 (_g2081821796_ _g2083021800_))))
                         (_g2081821796_ _g2083021800_))
                     (_g2081821796_ _g2083021800_))
                 (_g2081821796_ _g2083021800_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2081821796_
                                                  _g2083021800_))))
                                          (_g2081621955_
                                           (lambda (_g2083021919_)
                                             (if (gx#stx-pair? _g2083021919_)
                                                 (let ((_e2084821922_
                                                        (gx#syntax-e
                                                         _g2083021919_)))
                                                   (let ((_hd2084921926_
                                                          (##car _e2084821922_))
                                                         (_tl2085021929_
                                                          (##cdr _e2084821922_)))
                                                     (if (gx#stx-datum?
                                                          _hd2084921926_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2084921926_)
                             'not:)
                     (if (gx#stx-pair? _tl2085021929_)
                         (let ((_e2085121932_ (gx#syntax-e _tl2085021929_)))
                           (let ((_hd2085221936_ (##car _e2085121932_))
                                 (_tl2085321939_ (##cdr _e2085121932_)))
                             (if (gx#stx-null? _tl2085321939_)
                                 ((lambda (_L21942_)
                                    (_generate119251_
                                     _tgt20781_
                                     _L21942_
                                     _E20785_
                                     _K20784_))
                                  _hd2085221936_)
                                 (_g2081721915_ _g2083021919_))))
                         (_g2081721915_ _g2083021919_))
                     (_g2081721915_ _g2083021919_))
                 (_g2081721915_ _g2083021919_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2081721915_
                                                  _g2083021919_))))
                                          (_g2081522043_
                                           (lambda (_g2083021959_)
                                             (if (gx#stx-pair? _g2083021959_)
                                                 (let ((_e2084421962_
                                                        (gx#syntax-e
                                                         _g2083021959_)))
                                                   (let ((_hd2084521966_
                                                          (##car _e2084421962_))
                                                         (_tl2084621969_
                                                          (##cdr _e2084421962_)))
                                                     (if (gx#stx-datum?
                                                          _hd2084521966_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2084521966_)
                             'or:)
                     ((lambda (_L21972_)
                        (let* ((_g2198421996_
                                (lambda (_g2198521992_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2198521992_)))
                               (_g2198322007_
                                (lambda (_g2198522000_)
                                  ((lambda () _E20785_))))
                               (_g2198222039_
                                (lambda (_g2198522011_)
                                  (if (gx#stx-pair? _g2198522011_)
                                      (let ((_e2198822014_
                                             (gx#syntax-e _g2198522011_)))
                                        (let ((_hd2198922018_
                                               (##car _e2198822014_))
                                              (_tl2199022021_
                                               (##cdr _e2198822014_)))
                                          ((lambda (_L22024_ _L22026_)
                                             (_generate119251_
                                              _tgt20781_
                                              _L22026_
                                              _K20784_
                                              (_generate119251_
                                               _tgt20781_
                                               (cons 'or: _L22024_)
                                               _K20784_
                                               _E20785_)))
                                           _tl2199022021_
                                           _hd2198922018_)))
                                      (_g2198322007_ _g2198522011_)))))
                          (_g2198222039_ _L21972_)))
                      _tl2084621969_)
                     (_g2081621955_ _g2083021959_))
                 (_g2081621955_ _g2083021959_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2081621955_
                                                  _g2083021959_))))
                                          (_g2081422131_
                                           (lambda (_g2083022047_)
                                             (if (gx#stx-pair? _g2083022047_)
                                                 (let ((_e2084022050_
                                                        (gx#syntax-e
                                                         _g2083022047_)))
                                                   (let ((_hd2084122054_
                                                          (##car _e2084022050_))
                                                         (_tl2084222057_
                                                          (##cdr _e2084022050_)))
                                                     (if (gx#stx-datum?
                                                          _hd2084122054_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2084122054_)
                             'and:)
                     ((lambda (_L22060_)
                        (let* ((_g2207222084_
                                (lambda (_g2207322080_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2207322080_)))
                               (_g2207122095_
                                (lambda (_g2207322088_)
                                  ((lambda () _K20784_))))
                               (_g2207022127_
                                (lambda (_g2207322099_)
                                  (if (gx#stx-pair? _g2207322099_)
                                      (let ((_e2207622102_
                                             (gx#syntax-e _g2207322099_)))
                                        (let ((_hd2207722106_
                                               (##car _e2207622102_))
                                              (_tl2207822109_
                                               (##cdr _e2207622102_)))
                                          ((lambda (_L22112_ _L22114_)
                                             (_generate119251_
                                              _tgt20781_
                                              _L22114_
                                              (_generate119251_
                                               _tgt20781_
                                               (cons 'and: _L22112_)
                                               _K20784_
                                               _E20785_)
                                              _E20785_))
                                           _tl2207822109_
                                           _hd2207722106_)))
                                      (_g2207122095_ _g2207322099_)))))
                          (_g2207022127_ _L22060_)))
                      _tl2084222057_)
                     (_g2081522043_ _g2083022047_))
                 (_g2081522043_ _g2083022047_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2081522043_
                                                  _g2083022047_))))
                                          (_g2081322420_
                                           (lambda (_g2083022135_)
                                             (if (gx#stx-pair? _g2083022135_)
                                                 (let ((_e2083322138_
                                                        (gx#syntax-e
                                                         _g2083022135_)))
                                                   (let ((_hd2083422142_
                                                          (##car _e2083322138_))
                                                         (_tl2083522145_
                                                          (##cdr _e2083322138_)))
                                                     (if (gx#stx-datum?
                                                          _hd2083422142_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2083422142_)
                             '?:)
                     (if (gx#stx-pair? _tl2083522145_)
                         (let ((_e2083622148_ (gx#syntax-e _tl2083522145_)))
                           (let ((_hd2083722152_ (##car _e2083622148_))
                                 (_tl2083822155_ (##cdr _e2083622148_)))
                             ((lambda (_L22158_ _L22160_)
                                (let* ((_g2217622208_
                                        (lambda (_g2217722204_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g2217722204_)))
                                       (_g2217522306_
                                        (lambda (_g2217722212_)
                                          (if (gx#stx-pair? _g2217722212_)
                                              (let ((_e2219122215_
                                                     (gx#syntax-e
                                                      _g2217722212_)))
                                                (let ((_hd2219222219_
                                                       (##car _e2219122215_))
                                                      (_tl2219322222_
                                                       (##cdr _e2219122215_)))
                                                  (if (gx#stx-datum?
                                                       _hd2219222219_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd2219222219_)
                          '::)
                  (if (gx#stx-pair? _tl2219322222_)
                      (let ((_e2219422225_ (gx#syntax-e _tl2219322222_)))
                        (let ((_hd2219522229_ (##car _e2219422225_))
                              (_tl2219622232_ (##cdr _e2219422225_)))
                          (if (gx#stx-pair? _tl2219622232_)
                              (let ((_e2219722235_
                                     (gx#syntax-e _tl2219622232_)))
                                (let ((_hd2219822239_ (##car _e2219722235_))
                                      (_tl2219922242_ (##cdr _e2219722235_)))
                                  (if (gx#stx-datum? _hd2219822239_)
                                      (if (equal? (gx#stx-e _hd2219822239_)
                                                  '=>:)
                                          (if (gx#stx-pair? _tl2219922242_)
                                              (let ((_e2220022245_
                                                     (gx#syntax-e
                                                      _tl2219922242_)))
                                                (let ((_hd2220122249_
                                                       (##car _e2220022245_))
                                                      (_tl2220222252_
                                                       (##cdr _e2220022245_)))
                                                  (if (gx#stx-null?
                                                       _tl2220222252_)
                                                      ((lambda (_L22255_
                                                                _L22257_)
                                                         (let* ((_g2227522283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2227622279_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2227622279_)))
                        (_g2227422302_
                         (lambda (_g2227622287_)
                           ((lambda (_L22290_)
                              (let ()
                                (cons (gx#datum->syntax '#f 'if)
                                      (cons (cons (gx#datum->syntax '#f '?)
                                                  (cons _L22160_
                                                        (cons _L20802_ '())))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'let)
                                                        (cons (cons (cons _L22290_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (cons _L22257_ (cons _L20802_ '()))
                                        '()))
                            '())
                      (cons (_generate119251_
                             _L22290_
                             _L22255_
                             _K20784_
                             _E20785_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _E20785_ '()))))))
                            _g2227622287_))))
                   (_g2227422302_ (gx#genident 'e))))
               _hd2220122249_
               _hd2219522229_)
              (_g2217622208_ _g2217722212_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2217622208_ _g2217722212_))
                                          (_g2217622208_ _g2217722212_))
                                      (_g2217622208_ _g2217722212_))))
                              (_g2217622208_ _g2217722212_))))
                      (_g2217622208_ _g2217722212_))
                  (_g2217622208_ _g2217722212_))
              (_g2217622208_ _g2217722212_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2217622208_ _g2217722212_))))
                                       (_g2217422377_
                                        (lambda (_g2217722310_)
                                          (if (gx#stx-pair? _g2217722310_)
                                              (let ((_e2218322313_
                                                     (gx#syntax-e
                                                      _g2217722310_)))
                                                (let ((_hd2218422317_
                                                       (##car _e2218322313_))
                                                      (_tl2218522320_
                                                       (##cdr _e2218322313_)))
                                                  (if (gx#stx-datum?
                                                       _hd2218422317_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd2218422317_)
                          '=>:)
                  (if (gx#stx-pair? _tl2218522320_)
                      (let ((_e2218622323_ (gx#syntax-e _tl2218522320_)))
                        (let ((_hd2218722327_ (##car _e2218622323_))
                              (_tl2218822330_ (##cdr _e2218622323_)))
                          (if (gx#stx-null? _tl2218822330_)
                              ((lambda (_L22333_)
                                 (let* ((_g2234622354_
                                         (lambda (_g2234722350_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2234722350_)))
                                        (_g2234522373_
                                         (lambda (_g2234722358_)
                                           ((lambda (_L22361_)
                                              (let ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'let)
                                                      (cons (cons (cons _L22361_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons _L22160_ (cons _L20802_ '())) '()))
                          '())
                    (cons (cons (gx#datum->syntax '#f 'if)
                                (cons _L22361_
                                      (cons (_generate119251_
                                             _L22361_
                                             _L22333_
                                             _K20784_
                                             _E20785_)
                                            (cons _E20785_ '()))))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g2234722358_))))
                                   (_g2234522373_ (gx#genident 'e))))
                               _hd2218722327_)
                              (_g2217522306_ _g2217722310_))))
                      (_g2217522306_ _g2217722310_))
                  (_g2217522306_ _g2217722310_))
              (_g2217522306_ _g2217722310_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2217522306_ _g2217722310_))))
                                       (_g2217322405_
                                        (lambda (_g2217722381_)
                                          (if (gx#stx-pair? _g2217722381_)
                                              (let ((_e2217922384_
                                                     (gx#syntax-e
                                                      _g2217722381_)))
                                                (let ((_hd2218022388_
                                                       (##car _e2217922384_))
                                                      (_tl2218122391_
                                                       (##cdr _e2217922384_)))
                                                  (if (gx#stx-null?
                                                       _tl2218122391_)
                                                      ((lambda (_L22394_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '?)
                                   (cons _L22160_ (cons _L20802_ '())))
                             (cons (_generate119251_
                                    _tgt20781_
                                    _L22394_
                                    _K20784_
                                    _E20785_)
                                   (cons _E20785_ '())))))
               _hd2218022388_)
              (_g2217422377_ _g2217722381_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2217422377_ _g2217722381_))))
                                       (_g2217222416_
                                        (lambda (_g2217722409_)
                                          (if (gx#stx-null? _g2217722409_)
                                              ((lambda ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'if)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '?)
                           (cons _L22160_ (cons _L20802_ '())))
                     (cons _K20784_ (cons _E20785_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2217322405_ _g2217722409_)))))
                                  (_g2217222416_ _L22158_)))
                              _tl2083822155_
                              _hd2083722152_)))
                         (_g2081422131_ _g2083022135_))
                     (_g2081422131_ _g2083022135_))
                 (_g2081422131_ _g2083022135_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2081422131_
                                                  _g2083022135_)))))
                                     (_g2081322420_ _ptree20783_))))
                               _g2078820799_))))
                      (_g2078622424_ _tgt20781_))))
                 (_generate-splice19253_
                  (lambda (_tgt20153_ _hd20155_ _rest20156_ _K20157_ _E20158_)
                    (let* ((_g2016020177_
                            (lambda (_g2016120173_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2016120173_)))
                           (_g2015920777_
                            (lambda (_g2016120181_)
                              (if (gx#stx-pair/null? _g2016120181_)
                                  (if (fx>= (gx#stx-length _g2016120181_) '0)
                                      (let ((_g31721_
                                             (gx#syntax-split-splice
                                              _g2016120181_
                                              '0)))
                                        (begin
                                          (let ((_g31722_
                                                 (values-count _g31721_)))
                                            (if (not (fx= _g31722_ 2))
                                                (error "Context expects 2 values"
                                                       _g31722_)))
                                          (let ((_target2016320184_
                                                 (values-ref _g31721_ 0))
                                                (_tl2016520187_
                                                 (values-ref _g31721_ 1)))
                                            (if (gx#stx-null? _tl2016520187_)
                                                (letrec ((_loop2016620190_
                                                          (lambda (_hd2016420194_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _var2017020197_)
                    (if (gx#stx-pair? _hd2016420194_)
                        (let ((_e2016720200_ (gx#syntax-e _hd2016420194_)))
                          (let ((_lp-hd2016820204_ (##car _e2016720200_))
                                (_lp-tl2016920207_ (##cdr _e2016720200_)))
                            (_loop2016620190_
                             _lp-tl2016920207_
                             (cons _lp-hd2016820204_ _var2017020197_))))
                        (let ((_var2017120210_ (reverse _var2017020197_)))
                          ((lambda (_L20214_)
                             (let ()
                               (let* ((_g2023020247_
                                       (lambda (_g2023120243_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2023120243_)))
                                      (_g2022920765_
                                       (lambda (_g2023120251_)
                                         (if (gx#stx-pair/null? _g2023120251_)
                                             (if (fx>= (gx#stx-length
                                                        _g2023120251_)
                                                       '0)
                                                 (let ((_g31723_
                                                        (gx#syntax-split-splice
                                                         _g2023120251_
                                                         '0)))
                                                   (begin
                                                     (let ((_g31724_
                                                            (values-count
                                                             _g31723_)))
                                                       (if (not (fx= _g31724_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g31724_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2023320254_
                                                            (values-ref
                                                             _g31723_
                                                             0))
                                                           (_tl2023520257_
                                                            (values-ref
                                                             _g31723_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2023520257_)
                                                           (letrec ((_loop2023620260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2023420264_ _var-r2024020267_)
                               (if (gx#stx-pair? _hd2023420264_)
                                   (let ((_e2023720270_
                                          (gx#syntax-e _hd2023420264_)))
                                     (let ((_lp-hd2023820274_
                                            (##car _e2023720270_))
                                           (_lp-tl2023920277_
                                            (##cdr _e2023720270_)))
                                       (_loop2023620260_
                                        _lp-tl2023920277_
                                        (cons _lp-hd2023820274_
                                              _var-r2024020267_))))
                                   (let ((_var-r2024120280_
                                          (reverse _var-r2024020267_)))
                                     ((lambda (_L20284_)
                                        (let ()
                                          (let* ((_g2030120318_
                                                  (lambda (_g2030220314_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2030220314_)))
                                                 (_g2030020753_
                                                  (lambda (_g2030220322_)
                                                    (if (gx#stx-pair/null?
                                                         _g2030220322_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2030220322_)
                          '0)
                    (let ((_g31725_ (gx#syntax-split-splice _g2030220322_ '0)))
                      (begin
                        (let ((_g31726_ (values-count _g31725_)))
                          (if (not (fx= _g31726_ 2))
                              (error "Context expects 2 values" _g31726_)))
                        (let ((_target2030420325_ (values-ref _g31725_ 0))
                              (_tl2030620328_ (values-ref _g31725_ 1)))
                          (if (gx#stx-null? _tl2030620328_)
                              (letrec ((_loop2030720331_
                                        (lambda (_hd2030520335_
                                                 _init2031120338_)
                                          (if (gx#stx-pair? _hd2030520335_)
                                              (let ((_e2030820341_
                                                     (gx#syntax-e
                                                      _hd2030520335_)))
                                                (let ((_lp-hd2030920345_
                                                       (##car _e2030820341_))
                                                      (_lp-tl2031020348_
                                                       (##cdr _e2030820341_)))
                                                  (_loop2030720331_
                                                   _lp-tl2031020348_
                                                   (cons _lp-hd2030920345_
                                                         _init2031120338_))))
                                              (let ((_init2031220351_
                                                     (reverse _init2031120338_)))
                                                ((lambda (_L20355_)
                                                   (let ()
                                                     (let* ((_g2037220380_
                                                             (lambda (_g2037320376_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2037320376_)))
                                                            (_g2037120749_
                                                             (lambda (_g2037320384_)
                                                               ((lambda (_L20387_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let* ((_g2040020408_
                                    (lambda (_g2040120404_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g2040120404_)))
                                   (_g2039920745_
                                    (lambda (_g2040120412_)
                                      ((lambda (_L20415_)
                                         (let ()
                                           (let* ((_g2042820436_
                                                   (lambda (_g2042920432_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2042920432_)))
                                                  (_g2042720741_
                                                   (lambda (_g2042920440_)
                                                     ((lambda (_L20443_)
                                                        (let ()
                                                          (let* ((_g2045620464_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g2045720460_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2045720460_)))
                         (_g2045520737_
                          (lambda (_g2045720468_)
                            ((lambda (_L20471_)
                               (let ()
                                 (let* ((_g2048420492_
                                         (lambda (_g2048520488_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2048520488_)))
                                        (_g2048320733_
                                         (lambda (_g2048520496_)
                                           ((lambda (_L20499_)
                                              (let ()
                                                (let* ((_g2051220520_
                                                        (lambda (_g2051320516_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g2051320516_)))
                                                       (_g2051120729_
                                                        (lambda (_g2051320524_)
                                                          ((lambda (_L20527_)
                                                             (let ()
                                                               (let* ((_g2054020548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g2054120544_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2054120544_)))
                              (_g2053920725_
                               (lambda (_g2054120552_)
                                 ((lambda (_L20555_)
                                    (let ()
                                      (let* ((_g2056820576_
                                              (lambda (_g2056920572_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g2056920572_)))
                                             (_g2056720710_
                                              (lambda (_g2056920580_)
                                                ((lambda (_L20583_)
                                                   (let ()
                                                     (let* ((_g2059620604_
                                                             (lambda (_g2059720600_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2059720600_)))
                                                            (_g2059520698_
                                                             (lambda (_g2059720608_)
                                                               ((lambda (_L20611_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let* ((_g2062420632_
                                    (lambda (_g2062520628_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g2062520628_)))
                                   (_g2062320694_
                                    (lambda (_g2062520636_)
                                      ((lambda (_L20639_)
                                         (let ()
                                           (let ()
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'letrec)
                                                   (cons (cons (cons _L20415_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _L20527_
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2065320664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2065420667_)
                        (cons _g2065320664_ _g2065420667_))
                      '()
                      _L20214_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _L20555_ '())))
                                   '()))
                       (cons (cons _L20471_
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _L20499_
                                                           (cons _L20527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr (lambda (_g2065520670_ _g2065620673_)
                                    (cons _g2065520670_ _g2065620673_))
                                  '()
                                  _L20284_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _L20639_ '())))
                                         '()))
                             (cons (cons _L20443_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L20527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr (lambda (_g2065720676_ _g2065820679_)
                                    (cons _g2065720676_ _g2065820679_))
                                  '()
                                  _L20284_)))
                   (cons (cons (gx#datum->syntax '#f 'if)
                               (cons (cons (gx#datum->syntax '#f 'pair?)
                                           (cons _L20527_ '()))
                                     (cons (cons _L20471_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _L20527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons _L20527_
                     (begin
                       '#!void
                       (foldr (lambda (_g2065920682_ _g2066020685_)
                                (cons _g2065920682_ _g2066020685_))
                              '()
                              _L20284_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _L20611_ '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())))
                 (cons (cons _L20443_
                             (cons _L20387_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2066120688_
                                                     _g2066220691_)
                                              (cons _g2066120688_
                                                    _g2066220691_))
                                            '()
                                            _L20355_))))
                       '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _g2062520636_))))
                              (_g2062320694_
                               (_generate119251_
                                _L20499_
                                _hd20155_
                                _L20583_
                                _L20611_)))))
                        _g2059720608_))))
               (_g2059520698_
                (cons _L20415_
                      (cons _L20527_
                            (begin
                              '#!void
                              (foldr (lambda (_g2070120704_ _g2070220707_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'reverse)
                                                   (cons _g2070120704_ '()))
                                             _g2070220707_))
                                     '()
                                     _L20284_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _g2056920580_))))
                                        (_g2056720710_
                                         (cons _L20443_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##cdr)
                                                           (cons _L20527_ '()))
                                                     (begin
                                                       (gx#syntax-check-splice-targets
                                                        _L20284_
                                                        _L20214_)
                                                       (foldr (lambda (_g2071320717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2071420720_
                               _g2071520722_)
                        (cons (cons (gx#datum->syntax '#f 'cons)
                                    (cons _g2071420720_
                                          (cons _g2071320717_ '())))
                              _g2071520722_))
                      '()
                      _L20284_
                      _L20214_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _g2054120552_))))
                         (_g2053920725_
                          (_generate119251_
                           _L20527_
                           _rest20156_
                           _K20157_
                           _E20158_)))))
                   _g2051320524_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2051120729_
                                                   (gx#genident 'rest)))))
                                            _g2048520496_))))
                                   (_g2048320733_ (gx#genident 'hd)))))
                             _g2045720468_))))
                    (_g2045520737_ (gx#genident 'splice-try)))))
              _g2042920440_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2042720741_
                                              (gx#genident 'splice-loop)))))
                                       _g2040120412_))))
                              (_g2039920745_ (gx#genident 'splice-rest)))))
                        _g2037320384_))))
               (_g2037120749_ _tgt20153_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _init2031220351_))))))
                                (_loop2030720331_ _target2030420325_ '()))
                              (_g2030120318_ _g2030220322_)))))
                    (_g2030120318_ _g2030220322_))
                (_g2030120318_ _g2030220322_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2030020753_
                                             (make-list
                                              (gx#stx-length
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g2075620759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2075720762_)
                  (cons _g2075620759_ _g2075720762_))
                '()
                _L20214_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     '@list)
                                                    '()))))))
                                      _var-r2024120280_))))))
                     (_loop2023620260_ _target2023320254_ '()))
                   (_g2023020247_ _g2023120251_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2023020247_ _g2023120251_))
                                             (_g2023020247_ _g2023120251_)))))
                                 (_g2022920765_
                                  (gx#gentemps
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g2076820771_
                                                     _g2076920774_)
                                              (cons _g2076820771_
                                                    _g2076920774_))
                                            '()
                                            _L20214_)))))))
                           _var2017120210_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2016620190_
                                                   _target2016320184_
                                                   '()))
                                                (_g2016020177_
                                                 _g2016120181_)))))
                                      (_g2016020177_ _g2016120181_))
                                  (_g2016020177_ _g2016120181_)))))
                      (_g2015920777_
                       (|gerbil/core$<match>[1]#match-pattern-vars|
                        _hd20155_)))))
                 (_generate-simple-vector19254_
                  (lambda (_tgt19995_
                           _body19997_
                           _start19998_
                           _K19999_
                           _E20000_)
                    (let _recur20002_ ((_rest20005_ _body19997_)
                                       (_off20007_ _start19998_))
                      (let* ((_g2001020022_
                              (lambda (_g2001120018_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2001120018_)))
                             (_g2000920033_
                              (lambda (_g2001120026_) ((lambda () _K19999_))))
                             (_g2000820149_
                              (lambda (_g2001120037_)
                                (if (gx#stx-pair? _g2001120037_)
                                    (let ((_e2001420040_
                                           (gx#syntax-e _g2001120037_)))
                                      (let ((_hd2001520044_
                                             (##car _e2001420040_))
                                            (_tl2001620047_
                                             (##cdr _e2001420040_)))
                                        ((lambda (_L20050_ _L20052_)
                                           (let* ((_g2006720086_
                                                   (lambda (_g2006820082_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2006820082_)))
                                                  (_g2006620145_
                                                   (lambda (_g2006820090_)
                                                     (if (gx#stx-pair?
                                                          _g2006820090_)
                                                         (let ((_e2007220093_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2006820090_)))
                   (let ((_hd2007320097_ (##car _e2007220093_))
                         (_tl2007420100_ (##cdr _e2007220093_)))
                     (if (gx#stx-pair? _tl2007420100_)
                         (let ((_e2007520103_ (gx#syntax-e _tl2007420100_)))
                           (let ((_hd2007620107_ (##car _e2007520103_))
                                 (_tl2007720110_ (##cdr _e2007520103_)))
                             (if (gx#stx-pair? _tl2007720110_)
                                 (let ((_e2007820113_
                                        (gx#syntax-e _tl2007720110_)))
                                   (let ((_hd2007920117_ (##car _e2007820113_))
                                         (_tl2008020120_
                                          (##cdr _e2007820113_)))
                                     (if (gx#stx-null? _tl2008020120_)
                                         ((lambda (_L20123_ _L20125_ _L20126_)
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L20126_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                          (cons _L20125_ (cons _L20123_ '())))
                                    '()))
                        '())
                  (cons (_generate119251_
                         _L20126_
                         _L20052_
                         (_recur20002_ _L20050_ (fx1+ _off20007_))
                         _E20000_)
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd2007920117_
                                          _hd2007620107_
                                          _hd2007320097_)
                                         (_g2006720086_ _g2006820090_))))
                                 (_g2006720086_ _g2006820090_))))
                         (_g2006720086_ _g2006820090_))))
                 (_g2006720086_ _g2006820090_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2006620145_
                                              (list (gx#genident 'e)
                                                    _tgt19995_
                                                    _off20007_))))
                                         _tl2001620047_
                                         _hd2001520044_)))
                                    (_g2000920033_ _g2001120037_)))))
                        (_g2000820149_ _rest20005_)))))
                 (_generate-list-vector19255_
                  (lambda (_tgt19905_
                           _body19907_
                           _tgt->list19908_
                           _start19909_
                           _K19910_
                           _E19911_)
                    (let* ((_g1991319932_
                            (lambda (_g1991419928_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1991419928_)))
                           (_g1991219991_
                            (lambda (_g1991419936_)
                              (if (gx#stx-pair? _g1991419936_)
                                  (let ((_e1991819939_
                                         (gx#syntax-e _g1991419936_)))
                                    (let ((_hd1991919943_
                                           (##car _e1991819939_))
                                          (_tl1992019946_
                                           (##cdr _e1991819939_)))
                                      (if (gx#stx-pair? _tl1992019946_)
                                          (let ((_e1992119949_
                                                 (gx#syntax-e _tl1992019946_)))
                                            (let ((_hd1992219953_
                                                   (##car _e1992119949_))
                                                  (_tl1992319956_
                                                   (##cdr _e1992119949_)))
                                              (if (gx#stx-pair? _tl1992319956_)
                                                  (let ((_e1992419959_
                                                         (gx#syntax-e
                                                          _tl1992319956_)))
                                                    (let ((_hd1992519963_
                                                           (##car _e1992419959_))
                                                          (_tl1992619966_
                                                           (##cdr _e1992419959_)))
                                                      (if (gx#stx-null?
                                                           _tl1992619966_)
                                                          ((lambda (_L19969_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L19971_
                            _L19972_)
                     (let ()
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (cons _L19972_
                                               (cons (cons _L19969_
                                                           (cons _L19971_ '()))
                                                     '()))
                                         '())
                                   (cons (_generate119251_
                                          _L19972_
                                          _body19907_
                                          _K19910_
                                          _E19911_)
                                         '())))))
                   _hd1992519963_
                   _hd1992219953_
                   _hd1991919943_)
                  (_g1991319932_ _g1991419936_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1991319932_
                                                   _g1991419936_))))
                                          (_g1991319932_ _g1991419936_))))
                                  (_g1991319932_ _g1991419936_)))))
                      (_g1991219991_
                       (list (gx#genident 'e) _tgt19905_ _tgt->list19908_)))))
                 (_generate-struct19256_
                  (lambda (_info19638_
                           _tgt19640_
                           _body19641_
                           _K19642_
                           _E19643_)
                    (let* ((_rtd19645_
                            (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info?|
                                 _info19638_)
                                (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                                 _info19638_)
                                '#f))
                           (_fields19655_
                            (let _lp19648_ ((_rtd19651_ _rtd19645_)
                                            (_k19653_ '0))
                              (if _rtd19651_
                                  (_lp19648_
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                    (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-super|
                                     _rtd19651_))
                                   (fx+ (length (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-fields|
                                                 _rtd19651_))
                                        _k19653_))
                                  _k19653_)))
                           (_final?19658_
                            (if _rtd19645_
                                (assgetq 'final:
                                         (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-plist|
                                          _rtd19645_))
                                '#f))
                           (_g1966119669_
                            (lambda (_g1966219665_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1966219665_)))
                           (_g1966019901_
                            (lambda (_g1966219673_)
                              ((lambda (_L19676_)
                                 (let ()
                                   (let* ((_g1969119699_
                                           (lambda (_g1969219695_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1969219695_)))
                                          (_g1969019897_
                                           (lambda (_g1969219703_)
                                             ((lambda (_L19706_)
                                                (let ()
                                                  (let* ((_g1971919727_
                                                          (lambda (_g1972019723_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1972019723_)))
                                                         (_g1971819893_
                                                          (lambda (_g1972019731_)
                                                            ((lambda (_L19734_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1975019771_
                                   (lambda (_g1975119767_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1975119767_)))
                                  (_g1974919814_
                                   (lambda (_g1975119775_)
                                     (if (gx#stx-pair? _g1975119775_)
                                         (let ((_e1976019778_
                                                (gx#syntax-e _g1975119775_)))
                                           (let ((_hd1976119782_
                                                  (##car _e1976019778_))
                                                 (_tl1976219785_
                                                  (##cdr _e1976019778_)))
                                             (if (gx#stx-datum? _hd1976119782_)
                                                 (if (equal? (gx#stx-e
                                                              _hd1976119782_)
                                                             'list:)
                                                     (if (gx#stx-pair?
                                                          _tl1976219785_)
                                                         (let ((_e1976319788_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1976219785_)))
                   (let ((_hd1976419792_ (##car _e1976319788_))
                         (_tl1976519795_ (##cdr _e1976319788_)))
                     (if (gx#stx-null? _tl1976519795_)
                         ((lambda (_L19798_)
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons _L19734_
                                              (cons _L19706_
                                                    (cons _L19676_ '())))
                                        (cons (_generate-list-vector19255_
                                               _tgt19640_
                                               _L19798_
                                               (gx#datum->syntax
                                                '#f
                                                'struct->list)
                                               '1
                                               _K19642_
                                               _E19643_)
                                              (cons _E19643_ '())))))
                          _hd1976419792_)
                         (_g1975019771_ _g1975119775_))))
                 (_g1975019771_ _g1975119775_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1975019771_
                                                      _g1975119775_))
                                                 (_g1975019771_
                                                  _g1975119775_))))
                                         (_g1975019771_ _g1975119775_))))
                                  (_g1974819889_
                                   (lambda (_g1975119818_)
                                     (if (gx#stx-pair? _g1975119818_)
                                         (let ((_e1975319821_
                                                (gx#syntax-e _g1975119818_)))
                                           (let ((_hd1975419825_
                                                  (##car _e1975319821_))
                                                 (_tl1975519828_
                                                  (##cdr _e1975319821_)))
                                             (if (gx#stx-datum? _hd1975419825_)
                                                 (if (equal? (gx#stx-e
                                                              _hd1975419825_)
                                                             'simple:)
                                                     (if (gx#stx-pair?
                                                          _tl1975519828_)
                                                         (let ((_e1975619831_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1975519828_)))
                   (let ((_hd1975719835_ (##car _e1975619831_))
                         (_tl1975819838_ (##cdr _e1975619831_)))
                     (if (gx#stx-null? _tl1975819838_)
                         ((lambda (_L19841_)
                            (let ((_K19854_
                                   (_generate-simple-vector19254_
                                    _tgt19640_
                                    _L19841_
                                    '1
                                    _K19642_
                                    _E19643_)))
                              (if (if _rtd19645_
                                      (fx<= (gx#stx-length _L19841_)
                                            _fields19655_)
                                      '#f)
                                  (cons (gx#datum->syntax '#f 'if)
                                        (cons (cons _L19734_
                                                    (cons _L19706_
                                                          (cons _L19676_ '())))
                                              (cons _K19854_
                                                    (cons _E19643_ '()))))
                                  (let* ((_g1985719865_
                                          (lambda (_g1985819861_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g1985819861_)))
                                         (_g1985619885_
                                          (lambda (_g1985819869_)
                                            ((lambda (_L19872_)
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'if)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'and)
                           (cons (cons _L19734_
                                       (cons _L19706_ (cons _L19676_ '())))
                                 (cons (cons (gx#datum->syntax '#f '##fx<)
                                             (cons _L19872_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '##vector-length)
                                                               (cons _L19676_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))
                     (cons _K19854_ (cons _E19643_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _g1985819869_))))
                                    (_g1985619885_
                                     (gx#stx-length _L19841_))))))
                          _hd1975719835_)
                         (_g1974919814_ _g1975119818_))))
                 (_g1974919814_ _g1975119818_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1974919814_
                                                      _g1975119818_))
                                                 (_g1974919814_
                                                  _g1975119818_))))
                                         (_g1974919814_ _g1975119818_)))))
                             (_g1974819889_ _body19641_)))))
                     _g1972019731_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1971819893_
                                                     (if _final?19658_
                                                         (gx#datum->syntax
                                                          '#f
                                                          'direct-struct-instance?)
                                                         (gx#datum->syntax
                                                          '#f
                                                          'struct-instance?))))))
                                              _g1969219703_))))
                                     (_g1969019897_
                                      (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                       _info19638_)))))
                               _g1966219673_))))
                      (_g1966019901_ _tgt19640_))))
                 (_generate-class19257_
                  (lambda (_info19259_
                           _tgt19261_
                           _body19262_
                           _K19263_
                           _E19264_)
                    (letrec* ((_rtd19266_
                               (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info?|
                                    _info19259_)
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                                    _info19259_)
                                   '#f))
                              (_known-slot?19268_
                               (if _rtd19266_
                                   (lambda (_key19632_)
                                     (let ((_slot19635_
                                            (keyword->symbol
                                             (gx#stx-e _key19632_))))
                                       (_rtd-known-slot?19270_
                                        _rtd19266_
                                        _slot19635_)))
                                   false))
                              (_final?19269_
                               (if _rtd19266_
                                   (assgetq 'final:
                                            (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-plist|
                                             _rtd19266_))
                                   '#f))
                              (_rtd-known-slot?19270_
                               (lambda (_rtd19619_ _slot19621_)
                                 (if _rtd19619_
                                     (let ((_$e19623_
                                            (memq _slot19621_
                                                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots|
                                                   _rtd19619_))))
                                       (if _$e19623_
                                           _$e19623_
                                           (ormap (lambda (_g1962619628_)
                                                    (_rtd-known-slot?19270_
                                                     _g1962619628_
                                                     _slot19621_))
                                                  (map |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                                       (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-super|
                                                        _rtd19619_)))))
                                     '#f)))
                              (_recur19271_
                               (lambda (_klass19405_ _rest19407_)
                                 (let* ((_g1941019426_
                                         (lambda (_g1941119422_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1941119422_)))
                                        (_g1940919437_
                                         (lambda (_g1941119430_)
                                           ((lambda () _K19263_))))
                                        (_g1940819615_
                                         (lambda (_g1941119441_)
                                           (if (gx#stx-pair? _g1941119441_)
                                               (let ((_e1941519444_
                                                      (gx#syntax-e
                                                       _g1941119441_)))
                                                 (let ((_hd1941619448_
                                                        (##car _e1941519444_))
                                                       (_tl1941719451_
                                                        (##cdr _e1941519444_)))
                                                   (if (gx#stx-pair?
                                                        _tl1941719451_)
                                                       (let ((_e1941819454_
                                                              (gx#syntax-e
                                                               _tl1941719451_)))
                                                         (let ((_hd1941919458_
                                                                (##car _e1941819454_))
                                                               (_tl1942019461_
                                                                (##cdr _e1941819454_)))
                                                           ((lambda (_L19464_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L19466_
                             _L19467_)
                      (let* ((_g1948319491_
                              (lambda (_g1948419487_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1948419487_)))
                             (_g1948219611_
                              (lambda (_g1948419495_)
                                ((lambda (_L19498_)
                                   (let ()
                                     (let* ((_g1951019518_
                                             (lambda (_g1951119514_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1951119514_)))
                                            (_g1950919607_
                                             (lambda (_g1951119522_)
                                               ((lambda (_L19525_)
                                                  (let ()
                                                    (let* ((_g1953819546_
                                                            (lambda (_g1953919542_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1953919542_)))
                                                           (_g1953719603_
                                                            (lambda (_g1953919550_)
                                                              ((lambda (_L19553_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1956619574_
                                   (lambda (_g1956719570_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1956719570_)))
                                  (_g1956519599_
                                   (lambda (_g1956719578_)
                                     ((lambda (_L19581_)
                                        (let ()
                                          (let ((_K19594_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _L19581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              '##vector-ref)
                                             (cons _L19498_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'fx1+)
                                                               (cons _L19553_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '())
                     (cons (_generate119251_
                            _L19581_
                            _L19466_
                            (_recur19271_ _klass19405_ _L19464_)
                            _E19264_)
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (_known-slot?19268_ _L19467_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'let)
                                                      (cons (cons (cons _L19553_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'class-slot-offset)
                                            (cons _L19525_
                                                  (cons _L19467_ '())))
                                      '()))
                          '())
                    (cons _K19594_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'let)
                                                      (cons (cons (cons _L19553_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'class-slot-offset)
                                            (cons _L19525_
                                                  (cons _L19467_ '())))
                                      '()))
                          '())
                    (cons (cons (gx#datum->syntax '#f 'if)
                                (cons _L19553_
                                      (cons _K19594_ (cons _E19264_ '()))))
                          '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g1956719578_))))
                             (_g1956519599_ (gx#genident 'e)))))
                       _g1953919550_))))
              (_g1953719603_ (gx#genident 'slot)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1951119522_))))
                                       (_g1950919607_ _klass19405_))))
                                 _g1948419495_))))
                        (_g1948219611_ _tgt19261_)))
                    _tl1942019461_
                    _hd1941919458_
                    _hd1941619448_)))
               (_g1940919437_ _g1941119441_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1940919437_
                                                _g1941119441_)))))
                                   (_g1940819615_ _rest19407_)))))
                      (let* ((_g1927319281_
                              (lambda (_g1927419277_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1927419277_)))
                             (_g1927219401_
                              (lambda (_g1927419285_)
                                ((lambda (_L19288_)
                                   (let ()
                                     (let* ((_g1930319311_
                                             (lambda (_g1930419307_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1930419307_)))
                                            (_g1930219397_
                                             (lambda (_g1930419315_)
                                               ((lambda (_L19318_)
                                                  (let ()
                                                    (let* ((_g1933119339_
                                                            (lambda (_g1933219335_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1933219335_)))
                                                           (_g1933019393_
                                                            (lambda (_g1933219343_)
                                                              ((lambda (_L19346_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1935919367_
                                   (lambda (_g1936019363_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1936019363_)))
                                  (_g1935819389_
                                   (lambda (_g1936019371_)
                                     ((lambda (_L19374_)
                                        (let ()
                                          (let ()
                                            (cons (gx#datum->syntax '#f 'if)
                                                  (cons (cons _L19374_
                                                              (cons _L19346_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L19318_ '())))
                (cons (cons (gx#datum->syntax '#f 'let)
                            (cons (cons (cons _L19288_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'object-type)
                                                          (cons _L19318_ '()))
                                                    '()))
                                        '())
                                  (cons (_recur19271_ _L19288_ _body19262_)
                                        '())))
                      (cons _E19264_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g1936019371_))))
                             (_g1935819389_
                              (if _final?19269_
                                  (gx#datum->syntax
                                   '#f
                                   'direct-class-instance?)
                                  (gx#datum->syntax '#f 'class-instance?))))))
                       _g1933219343_))))
              (_g1933019393_
               (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                _info19259_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1930419315_))))
                                       (_g1930219397_ _tgt19261_))))
                                 _g1927419285_))))
                        (_g1927219401_ (gx#genident 'class)))))))
          (_generate119251_ _tgt19246_ _ptree19247_ _K19248_ _E19249_))))
    (define |gerbil/core$<match>[1]#generate-match*|
      (lambda (_stx18243_ _tgt-lst18245_ _clauses18246_)
        (letrec ((_parse-body18248_
                  (lambda (_hd-len19066_)
                    (let _lp19069_ ((_rest19072_ _clauses18246_)
                                    (_r19074_ '()))
                      (let* ((_g1907719089_
                              (lambda (_g1907819085_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1907819085_)))
                             (_g1907619100_
                              (lambda (_g1907819093_) ((lambda () _r19074_))))
                             (_g1907519240_
                              (lambda (_g1907819104_)
                                (if (gx#stx-pair? _g1907819104_)
                                    (let ((_e1908119107_
                                           (gx#syntax-e _g1907819104_)))
                                      (let ((_hd1908219111_
                                             (##car _e1908119107_))
                                            (_tl1908319114_
                                             (##cdr _e1908119107_)))
                                        ((lambda (_L19117_ _L19119_)
                                           (let* ((_g1913619152_
                                                   (lambda (_g1913719148_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1913719148_)))
                                                  (_g1913519163_
                                                   (lambda (_g1913719156_)
                                                     ((lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; illegal match clause"
                                                         _stx18243_
                                                         _L19119_)))))
                                                  (_g1913419204_
                                                   (lambda (_g1913719167_)
                                                     (if (gx#stx-pair?
                                                          _g1913719167_)
                                                         (let ((_e1914419170_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1913719167_)))
                   (let ((_hd1914519174_ (##car _e1914419170_))
                         (_tl1914619177_ (##cdr _e1914419170_)))
                     ((lambda (_L19180_ _L19182_)
                        (if (if (gx#stx-list? _L19182_)
                                (if (fx= (gx#stx-length _L19182_)
                                         _hd-len19066_)
                                    (if (gx#stx-list? _L19180_)
                                        (not (gx#stx-null? _L19180_))
                                        '#f)
                                    '#f)
                                '#f)
                            (_lp19069_
                             _L19117_
                             (cons (cons (gx#genident 'try-match)
                                         (cons (gx#stx-map
                                                (lambda (_g1919419196_)
                                                  (|gerbil/core$<match>[1]#parse-match-pattern|
                                                   _g1919419196_
                                                   _stx18243_))
                                                _L19182_)
                                               (cons (gx#stx-wrap-source
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'begin)
                                                            _L19180_)
                                                      (let ((_$e19200_
                                                             (gx#stx-source
                                                              _L19119_)))
                                                        (if _$e19200_
                                                            _$e19200_
                                                            (gx#stx-source
                                                             _stx18243_))))
                                                     '())))
                                   _r19074_))
                            (_g1913519163_ _g1913719167_)))
                      _tl1914619177_
                      _hd1914519174_)))
                 (_g1913519163_ _g1913719167_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1913319236_
                                                   (lambda (_g1913719208_)
                                                     (if (gx#stx-pair?
                                                          _g1913719208_)
                                                         (let ((_e1913919211_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1913719208_)))
                   (let ((_hd1914019215_ (##car _e1913919211_))
                         (_tl1914119218_ (##cdr _e1913919211_)))
                     (if (gx#identifier? _hd1914019215_)
                         (if (gx#free-identifier=?
                              |gerbil/core$<match>[1]#_g31727_|
                              _hd1914019215_)
                             ((lambda (_L19221_)
                                (if (if (gx#stx-list? _L19221_)
                                        (not (gx#stx-null? _L19221_))
                                        '#f)
                                    (if (gx#stx-null? _L19117_)
                                        (cons (cons (gx#genident 'else)
                                                    (cons '#f
                                                          (cons (gx#stx-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'begin) _L19221_)
                         (let ((_$e19232_ (gx#stx-source _L19119_)))
                           (if _$e19232_
                               _$e19232_
                               (gx#stx-source _stx18243_))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _r19074_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; misplaced else"
                                         _stx18243_
                                         _L19119_))
                                    (_g1913419204_ _g1913719208_)))
                              _tl1914119218_)
                             (_g1913419204_ _g1913719208_))
                         (_g1913419204_ _g1913719208_))))
                 (_g1913419204_ _g1913719208_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1913319236_ _L19119_)))
                                         _tl1908319114_
                                         _hd1908219111_)))
                                    (_g1907619100_ _g1907819104_)))))
                        (_g1907519240_ _rest19072_)))))
                 (_generate-body18250_
                  (lambda (_body18883_)
                    (let* ((_g1888618894_
                            (lambda (_g1888718890_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1888718890_)))
                           (_g1888519062_
                            (lambda (_g1888718898_)
                              ((lambda (_L18901_)
                                 (let ()
                                   (let* ((_g1891318930_
                                           (lambda (_g1891418926_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1891418926_)))
                                          (_g1891219058_
                                           (lambda (_g1891418934_)
                                             (if (gx#stx-pair/null?
                                                  _g1891418934_)
                                                 (if (fx>= (gx#stx-length
                                                            _g1891418934_)
                                                           '0)
                                                     (let ((_g31728_
                                                            (gx#syntax-split-splice
                                                             _g1891418934_
                                                             '0)))
                                                       (begin
                                                         (let ((_g31729_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g31728_)))
                   (if (not (fx= _g31729_ 2))
                       (error "Context expects 2 values" _g31729_)))
                 (let ((_target1891618937_ (values-ref _g31728_ 0))
                       (_tl1891818940_ (values-ref _g31728_ 1)))
                   (if (gx#stx-null? _tl1891818940_)
                       (letrec ((_loop1891918943_
                                 (lambda (_hd1891718947_ _target1892318950_)
                                   (if (gx#stx-pair? _hd1891718947_)
                                       (let ((_e1892018953_
                                              (gx#syntax-e _hd1891718947_)))
                                         (let ((_lp-hd1892118957_
                                                (##car _e1892018953_))
                                               (_lp-tl1892218960_
                                                (##cdr _e1892018953_)))
                                           (_loop1891918943_
                                            _lp-tl1892218960_
                                            (cons _lp-hd1892118957_
                                                  _target1892318950_))))
                                       (let ((_target1892418963_
                                              (reverse _target1892318950_)))
                                         ((lambda (_L18967_)
                                            (let ()
                                              (let* ((_g1898418992_
                                                      (lambda (_g1898518988_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g1898518988_)))
                                                     (_g1898319046_
                                                      (lambda (_g1898518996_)
                                                        ((lambda (_L18999_)
                                                           (let ()
                                                             (let* ((_g1901219020_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1901319016_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1901319016_)))
                            (_g1901119042_
                             (lambda (_g1901319024_)
                               ((lambda (_L19027_)
                                  (let ()
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons (cons _L18901_
                                                              (cons _L18999_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _L19027_ '()))))))
                                _g1901319024_))))
                       (_g1901119042_
                        (_generate-clauses18251_
                         _body18883_
                         (cons _L18901_ '()))))))
                 _g1898518996_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1898319046_
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
                                          (foldr (lambda (_g1904919052_
                                                          _g1905019055_)
                                                   (cons _g1904919052_
                                                         _g1905019055_))
                                                 '()
                                                 _L18967_))))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _stx18243_))))))
                                          _target1892418963_))))))
                         (_loop1891918943_ _target1891618937_ '()))
                       (_g1891318930_ _g1891418934_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1891318930_
                                                      _g1891418934_))
                                                 (_g1891318930_
                                                  _g1891418934_)))))
                                     (_g1891219058_ _tgt-lst18245_))))
                               _g1888718898_))))
                      (_g1888519062_ (gx#genident 'E)))))
                 (_generate-clauses18251_
                  (lambda (_rest18565_ _E18567_)
                    (let* ((_g1857118587_
                            (lambda (_g1857218583_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1857218583_)))
                           (_g1857018598_
                            (lambda (_g1857218591_) ((lambda () _E18567_))))
                           (_g1856918774_
                            (lambda (_g1857218602_)
                              (if (gx#stx-pair? _g1857218602_)
                                  (let ((_e1857918605_
                                         (gx#syntax-e _g1857218602_)))
                                    (let ((_hd1858018609_
                                           (##car _e1857918605_))
                                          (_tl1858118612_
                                           (##cdr _e1857918605_)))
                                      ((lambda (_L18615_ _L18617_)
                                         (let* ((_g1863018649_
                                                 (lambda (_g1863118645_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1863118645_)))
                                                (_g1862918770_
                                                 (lambda (_g1863118653_)
                                                   (if (gx#stx-pair?
                                                        _g1863118653_)
                                                       (let ((_e1863518656_
                                                              (gx#syntax-e
                                                               _g1863118653_)))
                                                         (let ((_hd1863618660_
                                                                (##car _e1863518656_))
                                                               (_tl1863718663_
                                                                (##cdr _e1863518656_)))
                                                           (if (gx#stx-pair?
                                                                _tl1863718663_)
                                                               (let ((_e1863818666_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1863718663_)))
                         (let ((_hd1863918670_ (##car _e1863818666_))
                               (_tl1864018673_ (##cdr _e1863818666_)))
                           (if (gx#stx-pair? _tl1864018673_)
                               (let ((_e1864118676_
                                      (gx#syntax-e _tl1864018673_)))
                                 (let ((_hd1864218680_ (##car _e1864118676_))
                                       (_tl1864318683_ (##cdr _e1864118676_)))
                                   (if (gx#stx-null? _tl1864318683_)
                                       ((lambda (_L18686_ _L18688_ _L18689_)
                                          (let* ((_g1870618721_
                                                  (lambda (_g1870718717_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1870718717_)))
                                                 (_g1870518766_
                                                  (lambda (_g1870718725_)
                                                    (if (gx#stx-pair?
                                                         _g1870718725_)
                                                        (let ((_e1871018728_
                                                               (gx#syntax-e
                                                                _g1870718725_)))
                                                          (let ((_hd1871118732_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1871018728_))
                        (_tl1871218735_ (##cdr _e1871018728_)))
                    (if (gx#stx-pair? _tl1871218735_)
                        (let ((_e1871318738_ (gx#syntax-e _tl1871218735_)))
                          (let ((_hd1871418742_ (##car _e1871318738_))
                                (_tl1871518745_ (##cdr _e1871318738_)))
                            (if (gx#stx-null? _tl1871518745_)
                                ((lambda (_L18748_ _L18750_)
                                   (let ()
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (cons _L18689_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'lambda)
                                 (cons '() (cons _L18750_ '())))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _L18748_ '())))))
                                 _hd1871418742_
                                 _hd1871118732_)
                                (_g1870618721_ _g1870718725_))))
                        (_g1870618721_ _g1870718725_))))
                (_g1870618721_ _g1870718725_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1870518766_
                                             (list (if (gx#stx-e _L18688_)
                                                       (_generate118252_
                                                        _L18688_
                                                        _L18686_
                                                        _E18567_)
                                                       _L18686_)
                                                   (_generate-clauses18251_
                                                    _L18615_
                                                    (cons _L18689_ '()))))))
                                        _hd1864218680_
                                        _hd1863918670_
                                        _hd1863618660_)
                                       (_g1863018649_ _g1863118653_))))
                               (_g1863018649_ _g1863118653_))))
                       (_g1863018649_ _g1863118653_))))
               (_g1863018649_ _g1863118653_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1862918770_ _L18617_)))
                                       _tl1858118612_
                                       _hd1858018609_)))
                                  (_g1857018598_ _g1857218602_))))
                           (_g1856818879_
                            (lambda (_g1857218778_)
                              (if (gx#stx-pair? _g1857218778_)
                                  (let ((_e1857418781_
                                         (gx#syntax-e _g1857218778_)))
                                    (let ((_hd1857518785_
                                           (##car _e1857418781_))
                                          (_tl1857618788_
                                           (##cdr _e1857418781_)))
                                      (if (gx#stx-null? _tl1857618788_)
                                          ((lambda (_L18791_)
                                             (let* ((_g1880218820_
                                                     (lambda (_g1880318816_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1880318816_)))
                                                    (_g1880118875_
                                                     (lambda (_g1880318824_)
                                                       (if (gx#stx-pair?
                                                            _g1880318824_)
                                                           (let ((_e1880618827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g1880318824_)))
                     (let ((_hd1880718831_ (##car _e1880618827_))
                           (_tl1880818834_ (##cdr _e1880618827_)))
                       (if (gx#stx-pair? _tl1880818834_)
                           (let ((_e1880918837_ (gx#syntax-e _tl1880818834_)))
                             (let ((_hd1881018841_ (##car _e1880918837_))
                                   (_tl1881118844_ (##cdr _e1880918837_)))
                               (if (gx#stx-pair? _tl1881118844_)
                                   (let ((_e1881218847_
                                          (gx#syntax-e _tl1881118844_)))
                                     (let ((_hd1881318851_
                                            (##car _e1881218847_))
                                           (_tl1881418854_
                                            (##cdr _e1881218847_)))
                                       (if (gx#stx-null? _tl1881418854_)
                                           ((lambda (_L18857_ _L18859_)
                                              (if (gx#stx-e _L18859_)
                                                  (_generate118252_
                                                   _L18859_
                                                   _L18857_
                                                   _E18567_)
                                                  _L18857_))
                                            _hd1881318851_
                                            _hd1881018841_)
                                           (_g1880218820_ _g1880318824_))))
                                   (_g1880218820_ _g1880318824_))))
                           (_g1880218820_ _g1880318824_))))
                   (_g1880218820_ _g1880318824_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1880118875_ _L18791_)))
                                           _hd1857518785_)
                                          (_g1856918774_ _g1857218778_))))
                                  (_g1856918774_ _g1857218778_)))))
                      (_g1856818879_ _rest18565_))))
                 (_generate118252_
                  (lambda (_clause18254_ _body18256_ _E18257_)
                    (let _recur18259_ ((_rest18262_ _clause18254_)
                                       (_rest-targets18264_ _tgt-lst18245_))
                      (let* ((_g1826718279_
                              (lambda (_g1826818275_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1826818275_)))
                             (_g1826618290_
                              (lambda (_g1826818283_)
                                ((lambda () _body18256_))))
                             (_g1826518561_
                              (lambda (_g1826818294_)
                                (if (gx#stx-pair? _g1826818294_)
                                    (let ((_e1827118297_
                                           (gx#syntax-e _g1826818294_)))
                                      (let ((_hd1827218301_
                                             (##car _e1827118297_))
                                            (_tl1827318304_
                                             (##cdr _e1827118297_)))
                                        ((lambda (_L18307_ _L18309_)
                                           (let* ((_g1832618338_
                                                   (lambda (_g1832718334_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1832718334_)))
                                                  (_g1832518557_
                                                   (lambda (_g1832718342_)
                                                     (if (gx#stx-pair?
                                                          _g1832718342_)
                                                         (let ((_e1833018345_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1832718342_)))
                   (let ((_hd1833118349_ (##car _e1833018345_))
                         (_tl1833218352_ (##cdr _e1833018345_)))
                     ((lambda (_L18355_ _L18357_)
                        (let* ((_g1836918377_
                                (lambda (_g1837018373_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g1837018373_)))
                               (_g1836818553_
                                (lambda (_g1837018381_)
                                  ((lambda (_L18384_)
                                     (let ()
                                       (let* ((_g1839618413_
                                               (lambda (_g1839718409_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1839718409_)))
                                              (_g1839518549_
                                               (lambda (_g1839718417_)
                                                 (if (gx#stx-pair/null?
                                                      _g1839718417_)
                                                     (if (fx>= (gx#stx-length
                                                                _g1839718417_)
                                                               '0)
                                                         (let ((_g31730_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1839718417_
                         '0)))
                   (begin
                     (let ((_g31731_ (values-count _g31730_)))
                       (if (not (fx= _g31731_ 2))
                           (error "Context expects 2 values" _g31731_)))
                     (let ((_target1839918420_ (values-ref _g31730_ 0))
                           (_tl1840118423_ (values-ref _g31730_ 1)))
                       (if (gx#stx-null? _tl1840118423_)
                           (letrec ((_loop1840218426_
                                     (lambda (_hd1840018430_ _var1840618433_)
                                       (if (gx#stx-pair? _hd1840018430_)
                                           (let ((_e1840318436_
                                                  (gx#syntax-e
                                                   _hd1840018430_)))
                                             (let ((_lp-hd1840418440_
                                                    (##car _e1840318436_))
                                                   (_lp-tl1840518443_
                                                    (##cdr _e1840318436_)))
                                               (_loop1840218426_
                                                _lp-tl1840518443_
                                                (cons _lp-hd1840418440_
                                                      _var1840618433_))))
                                           (let ((_var1840718446_
                                                  (reverse _var1840618433_)))
                                             ((lambda (_L18450_)
                                                (let ()
                                                  (let* ((_g1846718475_
                                                          (lambda (_g1846818471_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1846818471_)))
                                                         (_g1846618545_
                                                          (lambda (_g1846818479_)
                                                            ((lambda (_L18482_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_g1849518503_
                                 (lambda (_g1849618499_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1849618499_)))
                                (_g1849418533_
                                 (lambda (_g1849618507_)
                                   ((lambda (_L18510_)
                                      (let ()
                                        (let ()
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (cons _L18384_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'lambda)
                                      (cons (begin
                                              '#!void
                                              (foldr (lambda (_g1852418527_
                                                              _g1852518530_)
                                                       (cons _g1852418527_
                                                             _g1852518530_))
                                                     '()
                                                     _L18450_))
                                            (cons _L18482_ '())))
                                '()))
                    '())
              (cons _L18510_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _g1849618507_))))
                           (_g1849418533_
                            (|gerbil/core$<match>[1]#generate-match1|
                             _stx18243_
                             _L18357_
                             _L18309_
                             (cons _L18384_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g1853618539_
                                                     _g1853718542_)
                                              (cons _g1853618539_
                                                    _g1853718542_))
                                            '()
                                            _L18450_)))
                             _E18257_)))))
                     _g1846818479_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1846618545_
                                                     (_recur18259_
                                                      _L18307_
                                                      _L18355_)))))
                                              _var1840718446_))))))
                             (_loop1840218426_ _target1839918420_ '()))
                           (_g1839618413_ _g1839718417_)))))
                 (_g1839618413_ _g1839718417_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1839618413_
                                                      _g1839718417_)))))
                                         (_g1839518549_
                                          (|gerbil/core$<match>[1]#match-pattern-vars|
                                           _L18309_)))))
                                   _g1837018381_))))
                          (_g1836818553_ (gx#genident 'K))))
                      _tl1833218352_
                      _hd1833118349_)))
                 (_g1832618338_ _g1832718342_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1832518557_
                                              _rest-targets18264_)))
                                         _tl1827318304_
                                         _hd1827218301_)))
                                    (_g1826618290_ _g1826818294_)))))
                        (_g1826518561_ _rest18262_))))))
          (_generate-body18250_
           (_parse-body18248_ (gx#stx-length _tgt-lst18245_))))))
    (define |gerbil/core$<match>[1]#generate-match|
      (lambda (_stx18145_ _tgt18147_ _clauses18148_)
        (letrec ((_reclause18150_
                  (lambda (_clause18153_)
                    (let* ((_g1815818173_
                            (lambda (_g1815918169_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1815918169_)))
                           (_g1815718184_
                            (lambda (_g1815918177_)
                              ((lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; illegal match clause"
                                  _stx18145_
                                  _clause18153_)))))
                           (_g1815618218_
                            (lambda (_g1815918188_)
                              (if (gx#stx-pair? _g1815918188_)
                                  (let ((_e1816518191_
                                         (gx#syntax-e _g1815918188_)))
                                    (let ((_hd1816618195_
                                           (##car _e1816518191_))
                                          (_tl1816718198_
                                           (##cdr _e1816518191_)))
                                      ((lambda (_L18201_ _L18203_)
                                         (gx#stx-wrap-source
                                          (cons (cons _L18203_ '()) _L18201_)
                                          (gx#stx-source
                                           (gx#datum->syntax '#f 'clause))))
                                       _tl1816718198_
                                       _hd1816618195_)))
                                  (_g1815718184_ _g1815918188_))))
                           (_g1815518239_
                            (lambda (_g1815918222_)
                              (if (gx#stx-pair? _g1815918222_)
                                  (let ((_e1816018225_
                                         (gx#syntax-e _g1815918222_)))
                                    (let ((_hd1816118229_
                                           (##car _e1816018225_))
                                          (_tl1816218232_
                                           (##cdr _e1816018225_)))
                                      (if (gx#identifier? _hd1816118229_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g31732_|
                                               _hd1816118229_)
                                              ((lambda () _clause18153_))
                                              (_g1815618218_ _g1815918222_))
                                          (_g1815618218_ _g1815918222_))))
                                  (_g1815618218_ _g1815918222_)))))
                      (_g1815518239_ _clause18153_)))))
          (|gerbil/core$<match>[1]#generate-match*|
           _stx18145_
           (cons _tgt18147_ '())
           (gx#stx-map _reclause18150_ _clauses18148_)))))
    (define |gerbil/core$<match>[:0:]#match|
      (lambda (_stx25352_)
        (let* ((_g2535725386_
                (lambda (_g2535825382_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2535825382_)))
               (_g2535625494_
                (lambda (_g2535825390_)
                  (if (gx#stx-pair? _g2535825390_)
                      (let ((_e2537525393_ (gx#syntax-e _g2535825390_)))
                        (let ((_hd2537625397_ (##car _e2537525393_))
                              (_tl2537725400_ (##cdr _e2537525393_)))
                          (if (gx#stx-pair? _tl2537725400_)
                              (let ((_e2537825403_
                                     (gx#syntax-e _tl2537725400_)))
                                (let ((_hd2537925407_ (##car _e2537825403_))
                                      (_tl2538025410_ (##cdr _e2537825403_)))
                                  ((lambda (_L25413_ _L25415_)
                                     (if (gx#stx-list? _L25413_)
                                         (let* ((_g2542925437_
                                                 (lambda (_g2543025433_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2543025433_)))
                                                (_g2542825490_
                                                 (lambda (_g2543025441_)
                                                   ((lambda (_L25444_)
                                                      (let ()
                                                        (let* ((_g2545625464_
                                                                (lambda (_g2545725460_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g2545725460_)))
                       (_g2545525486_
                        (lambda (_g2545725468_)
                          ((lambda (_L25471_)
                             (let ()
                               (let ()
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _L25444_
                                                         (cons _L25415_ '()))
                                                   '())
                                             (cons _L25471_ '()))))))
                           _g2545725468_))))
                  (_g2545525486_
                   (|gerbil/core$<match>[1]#generate-match|
                    _stx25352_
                    _L25444_
                    _L25413_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2543025441_))))
                                           (_g2542825490_
                                            (gx#genident _L25415_)))
                                         (_g2535725386_ _g2535825390_)))
                                   _tl2538025410_
                                   _hd2537925407_)))
                              (_g2535725386_ _g2535825390_))))
                      (_g2535725386_ _g2535825390_))))
               (_g2535525599_
                (lambda (_g2535825498_)
                  (if (gx#stx-pair? _g2535825498_)
                      (let ((_e2536725501_ (gx#syntax-e _g2535825498_)))
                        (let ((_hd2536825505_ (##car _e2536725501_))
                              (_tl2536925508_ (##cdr _e2536725501_)))
                          (if (gx#stx-pair? _tl2536925508_)
                              (let ((_e2537025511_
                                     (gx#syntax-e _tl2536925508_)))
                                (let ((_hd2537125515_ (##car _e2537025511_))
                                      (_tl2537225518_ (##cdr _e2537025511_)))
                                  (if (gx#identifier? _hd2537125515_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g31733_|
                                           _hd2537125515_)
                                          ((lambda (_L25521_)
                                             (if (gx#stx-list? _L25521_)
                                                 (let* ((_g2553425542_
                                                         (lambda (_g2553525538_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2553525538_)))
                                                        (_g2553325595_
                                                         (lambda (_g2553525546_)
                                                           ((lambda (_L25549_)
                                                              (let ()
                                                                (let* ((_g2556125569_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g2556225565_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2556225565_)))
                               (_g2556025591_
                                (lambda (_g2556225573_)
                                  ((lambda (_L25576_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons _L25549_
                                                     (cons _L25576_ '()))))))
                                   _g2556225573_))))
                          (_g2556025591_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'match)
                                  (cons _L25549_ _L25521_))
                            (gx#stx-source _stx25352_))))))
                    _g2553525546_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2553325595_
                                                    (gx#genident 'args)))
                                                 (_g2535625494_
                                                  _g2535825498_)))
                                           _tl2537225518_)
                                          (_g2535625494_ _g2535825498_))
                                      (_g2535625494_ _g2535825498_))))
                              (_g2535625494_ _g2535825498_))))
                      (_g2535625494_ _g2535825498_))))
               (_g2535425704_
                (lambda (_g2535825603_)
                  (if (gx#stx-pair? _g2535825603_)
                      (let ((_e2536025606_ (gx#syntax-e _g2535825603_)))
                        (let ((_hd2536125610_ (##car _e2536025606_))
                              (_tl2536225613_ (##cdr _e2536025606_)))
                          (if (gx#stx-pair? _tl2536225613_)
                              (let ((_e2536325616_
                                     (gx#syntax-e _tl2536225613_)))
                                (let ((_hd2536425620_ (##car _e2536325616_))
                                      (_tl2536525623_ (##cdr _e2536325616_)))
                                  (if (gx#identifier? _hd2536425620_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g31734_|
                                           _hd2536425620_)
                                          ((lambda (_L25626_)
                                             (if (gx#stx-list? _L25626_)
                                                 (let* ((_g2563925647_
                                                         (lambda (_g2564025643_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2564025643_)))
                                                        (_g2563825700_
                                                         (lambda (_g2564025651_)
                                                           ((lambda (_L25654_)
                                                              (let ()
                                                                (let* ((_g2566625674_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g2566725670_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2566725670_)))
                               (_g2566525696_
                                (lambda (_g2566725678_)
                                  ((lambda (_L25681_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _L25654_ '())
                                                     (cons _L25681_ '()))))))
                                   _g2566725678_))))
                          (_g2566525696_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'match)
                                  (cons _L25654_ _L25626_))
                            (gx#stx-source _stx25352_))))))
                    _g2564025651_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2563825700_
                                                    (gx#genident 'e)))
                                                 (_g2535525599_
                                                  _g2535825603_)))
                                           _tl2536525623_)
                                          (_g2535525599_ _g2535825603_))
                                      (_g2535525599_ _g2535825603_))))
                              (_g2535525599_ _g2535825603_))))
                      (_g2535525599_ _g2535825603_)))))
          (_g2535425704_ _stx25352_))))
    (define |gerbil/core$<match>[:0:]#match*|
      (lambda (_stx25708_)
        (let* ((_g2571125735_
                (lambda (_g2571225731_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2571225731_)))
               (_g2571025947_
                (lambda (_g2571225739_)
                  (if (gx#stx-pair? _g2571225739_)
                      (let ((_e2571525742_ (gx#syntax-e _g2571225739_)))
                        (let ((_hd2571625746_ (##car _e2571525742_))
                              (_tl2571725749_ (##cdr _e2571525742_)))
                          (if (gx#stx-pair? _tl2571725749_)
                              (let ((_e2571825752_
                                     (gx#syntax-e _tl2571725749_)))
                                (let ((_hd2571925756_ (##car _e2571825752_))
                                      (_tl2572025759_ (##cdr _e2571825752_)))
                                  (if (gx#stx-pair/null? _hd2571925756_)
                                      (if (fx>= (gx#stx-length _hd2571925756_)
                                                '0)
                                          (let ((_g31735_
                                                 (gx#syntax-split-splice
                                                  _hd2571925756_
                                                  '0)))
                                            (begin
                                              (let ((_g31736_
                                                     (values-count _g31735_)))
                                                (if (not (fx= _g31736_ 2))
                                                    (error "Context expects 2 values"
                                                           _g31736_)))
                                              (let ((_target2572125762_
                                                     (values-ref _g31735_ 0))
                                                    (_tl2572325765_
                                                     (values-ref _g31735_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2572325765_)
                                                    (letrec ((_loop2572425768_
                                                              (lambda (_hd2572225772_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _e2572825775_)
                        (if (gx#stx-pair? _hd2572225772_)
                            (let ((_e2572525778_ (gx#syntax-e _hd2572225772_)))
                              (let ((_lp-hd2572625782_ (##car _e2572525778_))
                                    (_lp-tl2572725785_ (##cdr _e2572525778_)))
                                (_loop2572425768_
                                 _lp-tl2572725785_
                                 (cons _lp-hd2572625782_ _e2572825775_))))
                            (let ((_e2572925788_ (reverse _e2572825775_)))
                              ((lambda (_L25792_ _L25794_)
                                 (if (gx#stx-list? _L25792_)
                                     (let* ((_g2581225829_
                                             (lambda (_g2581325825_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2581325825_)))
                                            (_g2581125935_
                                             (lambda (_g2581325833_)
                                               (if (gx#stx-pair/null?
                                                    _g2581325833_)
                                                   (if (fx>= (gx#stx-length
                                                              _g2581325833_)
                                                             '0)
                                                       (let ((_g31737_
                                                              (gx#syntax-split-splice
                                                               _g2581325833_
                                                               '0)))
                                                         (begin
                                                           (let ((_g31738_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g31737_)))
                     (if (not (fx= _g31738_ 2))
                         (error "Context expects 2 values" _g31738_)))
                   (let ((_target2581525836_ (values-ref _g31737_ 0))
                         (_tl2581725839_ (values-ref _g31737_ 1)))
                     (if (gx#stx-null? _tl2581725839_)
                         (letrec ((_loop2581825842_
                                   (lambda (_hd2581625846_ _$e2582225849_)
                                     (if (gx#stx-pair? _hd2581625846_)
                                         (let ((_e2581925852_
                                                (gx#syntax-e _hd2581625846_)))
                                           (let ((_lp-hd2582025856_
                                                  (##car _e2581925852_))
                                                 (_lp-tl2582125859_
                                                  (##cdr _e2581925852_)))
                                             (_loop2581825842_
                                              _lp-tl2582125859_
                                              (cons _lp-hd2582025856_
                                                    _$e2582225849_))))
                                         (let ((_$e2582325862_
                                                (reverse _$e2582225849_)))
                                           ((lambda (_L25866_)
                                              (let ()
                                                (let* ((_g2588225890_
                                                        (lambda (_g2588325886_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g2588325886_)))
                                                       (_g2588125923_
                                                        (lambda (_g2588325894_)
                                                          ((lambda (_L25897_)
                                                             (let ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'let)
                               (cons (begin
                                       (gx#syntax-check-splice-targets
                                        _L25794_
                                        _L25866_)
                                       (foldr (lambda (_g2591125915_
                                                       _g2591225918_
                                                       _g2591325920_)
                                                (cons (cons _g2591225918_
                                                            (cons _g2591125915_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _g2591325920_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _L25794_
                                              _L25866_))
                                     (cons _L25897_ '()))))))
                   _g2588325894_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2588125923_
                                                   (|gerbil/core$<match>[1]#generate-match*|
                                                    _stx25708_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g2592625929_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2592725932_)
                       (cons _g2592625929_ _g2592725932_))
                     '()
                     _L25866_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _L25792_)))))
                                            _$e2582325862_))))))
                           (_loop2581825842_ _target2581525836_ '()))
                         (_g2581225829_ _g2581325833_)))))
               (_g2581225829_ _g2581325833_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2581225829_
                                                    _g2581325833_)))))
                                       (_g2581125935_
                                        (gx#gentemps
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g2593825941_
                                                           _g2593925944_)
                                                    (cons _g2593825941_
                                                          _g2593925944_))
                                                  '()
                                                  _L25794_)))))
                                     (_g2571125735_ _g2571225739_)))
                               _tl2572025759_
                               _e2572925788_))))))
              (_loop2572425768_ _target2572125762_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2571125735_
                                                     _g2571225739_)))))
                                          (_g2571125735_ _g2571225739_))
                                      (_g2571125735_ _g2571225739_))))
                              (_g2571125735_ _g2571225739_))))
                      (_g2571125735_ _g2571225739_)))))
          (_g2571025947_ _stx25708_))))
    (define |gerbil/core$<match>[:0:]#with|
      (lambda (_$stx25953_)
        (let* ((_g2595926042_
                (lambda (_g2596026038_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2596026038_)))
               (_g2595826203_
                (lambda (_g2596026046_)
                  (if (gx#stx-pair? _g2596026046_)
                      (let ((_e2600526049_ (gx#syntax-e _g2596026046_)))
                        (let ((_hd2600626053_ (##car _e2600526049_))
                              (_tl2600726056_ (##cdr _e2600526049_)))
                          (if (gx#stx-pair? _tl2600726056_)
                              (let ((_e2600826059_
                                     (gx#syntax-e _tl2600726056_)))
                                (let ((_hd2600926063_ (##car _e2600826059_))
                                      (_tl2601026066_ (##cdr _e2600826059_)))
                                  (if (gx#stx-pair/null? _hd2600926063_)
                                      (if (fx>= (gx#stx-length _hd2600926063_)
                                                '0)
                                          (let ((_g31739_
                                                 (gx#syntax-split-splice
                                                  _hd2600926063_
                                                  '0)))
                                            (begin
                                              (let ((_g31740_
                                                     (values-count _g31739_)))
                                                (if (not (fx= _g31740_ 2))
                                                    (error "Context expects 2 values"
                                                           _g31740_)))
                                              (let ((_target2601126069_
                                                     (values-ref _g31739_ 0))
                                                    (_tl2601326072_
                                                     (values-ref _g31739_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2601326072_)
                                                    (letrec ((_loop2601426075_
                                                              (lambda (_hd2601226079_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr2601826082_
                               _hd2601926084_)
                        (if (gx#stx-pair? _hd2601226079_)
                            (let ((_e2601526087_ (gx#syntax-e _hd2601226079_)))
                              (let ((_lp-hd2601626091_ (##car _e2601526087_))
                                    (_lp-tl2601726094_ (##cdr _e2601526087_)))
                                (if (gx#stx-pair? _lp-hd2601626091_)
                                    (let ((_e2602226097_
                                           (gx#syntax-e _lp-hd2601626091_)))
                                      (let ((_hd2602326101_
                                             (##car _e2602226097_))
                                            (_tl2602426104_
                                             (##cdr _e2602226097_)))
                                        (if (gx#stx-pair? _tl2602426104_)
                                            (let ((_e2602526107_
                                                   (gx#syntax-e
                                                    _tl2602426104_)))
                                              (let ((_hd2602626111_
                                                     (##car _e2602526107_))
                                                    (_tl2602726114_
                                                     (##cdr _e2602526107_)))
                                                (if (gx#stx-null?
                                                     _tl2602726114_)
                                                    (_loop2601426075_
                                                     _lp-tl2601726094_
                                                     (cons _hd2602626111_
                                                           _expr2601826082_)
                                                     (cons _hd2602326101_
                                                           _hd2601926084_))
                                                    (_g2595926042_
                                                     _g2596026046_))))
                                            (_g2595926042_ _g2596026046_))))
                                    (_g2595926042_ _g2596026046_))))
                            (let ((_expr2602026117_ (reverse _expr2601826082_))
                                  (_hd2602126120_ (reverse _hd2601926084_)))
                              (if (gx#stx-pair/null? _tl2601026066_)
                                  (if (fx>= (gx#stx-length _tl2601026066_) '0)
                                      (let ((_g31741_
                                             (gx#syntax-split-splice
                                              _tl2601026066_
                                              '0)))
                                        (begin
                                          (let ((_g31742_
                                                 (values-count _g31741_)))
                                            (if (not (fx= _g31742_ 2))
                                                (error "Context expects 2 values"
                                                       _g31742_)))
                                          (let ((_target2602826123_
                                                 (values-ref _g31741_ 0))
                                                (_tl2603026126_
                                                 (values-ref _g31741_ 1)))
                                            (if (gx#stx-null? _tl2603026126_)
                                                (letrec ((_loop2603126129_
                                                          (lambda (_hd2602926133_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body2603526136_)
                    (if (gx#stx-pair? _hd2602926133_)
                        (let ((_e2603226139_ (gx#syntax-e _hd2602926133_)))
                          (let ((_lp-hd2603326143_ (##car _e2603226139_))
                                (_lp-tl2603426146_ (##cdr _e2603226139_)))
                            (_loop2603126129_
                             _lp-tl2603426146_
                             (cons _lp-hd2603326143_ _body2603526136_))))
                        (let ((_body2603626149_ (reverse _body2603526136_)))
                          ((lambda (_L26153_ _L26155_ _L26156_)
                             (cons (gx#datum->syntax '#f 'match*)
                                   (cons (begin
                                           '#!void
                                           (foldr (lambda (_g2617826185_
                                                           _g2617926188_)
                                                    (cons _g2617826185_
                                                          _g2617926188_))
                                                  '()
                                                  _L26155_))
                                         (cons (cons (begin
                                                       '#!void
                                                       (foldr (lambda (_g2618026191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2618126194_)
                        (cons _g2618026191_ _g2618126194_))
                      '()
                      _L26156_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2618226197_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2618326200_)
                        (cons _g2618226197_ _g2618326200_))
                      '()
                      _L26153_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _body2603626149_
                           _expr2602026117_
                           _hd2602126120_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2603126129_
                                                   _target2602826123_
                                                   '()))
                                                (_g2595926042_
                                                 _g2596026046_)))))
                                      (_g2595926042_ _g2596026046_))
                                  (_g2595926042_ _g2596026046_)))))))
              (_loop2601426075_ _target2601126069_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2595926042_
                                                     _g2596026046_)))))
                                          (_g2595926042_ _g2596026046_))
                                      (_g2595926042_ _g2596026046_))))
                              (_g2595926042_ _g2596026046_))))
                      (_g2595926042_ _g2596026046_))))
               (_g2595726315_
                (lambda (_g2596026207_)
                  (if (gx#stx-pair? _g2596026207_)
                      (let ((_e2598126210_ (gx#syntax-e _g2596026207_)))
                        (let ((_hd2598226214_ (##car _e2598126210_))
                              (_tl2598326217_ (##cdr _e2598126210_)))
                          (if (gx#stx-pair? _tl2598326217_)
                              (let ((_e2598426220_
                                     (gx#syntax-e _tl2598326217_)))
                                (let ((_hd2598526224_ (##car _e2598426220_))
                                      (_tl2598626227_ (##cdr _e2598426220_)))
                                  (if (gx#stx-pair? _hd2598526224_)
                                      (let ((_e2598726230_
                                             (gx#syntax-e _hd2598526224_)))
                                        (let ((_hd2598826234_
                                               (##car _e2598726230_))
                                              (_tl2598926237_
                                               (##cdr _e2598726230_)))
                                          (if (gx#stx-pair? _tl2598926237_)
                                              (let ((_e2599026240_
                                                     (gx#syntax-e
                                                      _tl2598926237_)))
                                                (let ((_hd2599126244_
                                                       (##car _e2599026240_))
                                                      (_tl2599226247_
                                                       (##cdr _e2599026240_)))
                                                  (if (gx#stx-null?
                                                       _tl2599226247_)
                                                      (if (gx#stx-pair/null?
                                                           _tl2598626227_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tl2598626227_)
                            '0)
                      (let ((_g31743_
                             (gx#syntax-split-splice _tl2598626227_ '0)))
                        (begin
                          (let ((_g31744_ (values-count _g31743_)))
                            (if (not (fx= _g31744_ 2))
                                (error "Context expects 2 values" _g31744_)))
                          (let ((_target2599326250_ (values-ref _g31743_ 0))
                                (_tl2599526253_ (values-ref _g31743_ 1)))
                            (if (gx#stx-null? _tl2599526253_)
                                (letrec ((_loop2599626256_
                                          (lambda (_hd2599426260_
                                                   _body2600026263_)
                                            (if (gx#stx-pair? _hd2599426260_)
                                                (let ((_e2599726266_
                                                       (gx#syntax-e
                                                        _hd2599426260_)))
                                                  (let ((_lp-hd2599826270_
                                                         (##car _e2599726266_))
                                                        (_lp-tl2599926273_
                                                         (##cdr _e2599726266_)))
                                                    (_loop2599626256_
                                                     _lp-tl2599926273_
                                                     (cons _lp-hd2599826270_
                                                           _body2600026263_))))
                                                (let ((_body2600126276_
                                                       (reverse _body2600026263_)))
                                                  ((lambda (_L26280_
                                                            _L26282_
                                                            _L26283_
                                                            _L26284_)
                                                     (if (|gerbil/core$<match>[1]#match-pattern?|
                                                          _L26283_)
                                                         (cons _L26284_
                                                               (cons (cons (cons _L26283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons _L26282_ '()))
                                   '())
                             (begin
                               '#!void
                               (foldr (lambda (_g2630626309_ _g2630726312_)
                                        (cons _g2630626309_ _g2630726312_))
                                      '()
                                      _L26280_))))
                 (_g2595826203_ _g2596026207_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _body2600126276_
                                                   _hd2599126244_
                                                   _hd2598826234_
                                                   _hd2598226214_))))))
                                  (_loop2599626256_ _target2599326250_ '()))
                                (_g2595826203_ _g2596026207_)))))
                      (_g2595826203_ _g2596026207_))
                  (_g2595826203_ _g2596026207_))
              (_g2595826203_ _g2596026207_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2595826203_ _g2596026207_))))
                                      (_g2595826203_ _g2596026207_))))
                              (_g2595826203_ _g2596026207_))))
                      (_g2595826203_ _g2596026207_))))
               (_g2595626397_
                (lambda (_g2596026319_)
                  (if (gx#stx-pair? _g2596026319_)
                      (let ((_e2596226322_ (gx#syntax-e _g2596026319_)))
                        (let ((_hd2596326326_ (##car _e2596226322_))
                              (_tl2596426329_ (##cdr _e2596226322_)))
                          (if (gx#stx-pair? _tl2596426329_)
                              (let ((_e2596526332_
                                     (gx#syntax-e _tl2596426329_)))
                                (let ((_hd2596626336_ (##car _e2596526332_))
                                      (_tl2596726339_ (##cdr _e2596526332_)))
                                  (if (gx#stx-null? _hd2596626336_)
                                      (if (gx#stx-pair/null? _tl2596726339_)
                                          (if (fx>= (gx#stx-length
                                                     _tl2596726339_)
                                                    '0)
                                              (let ((_g31745_
                                                     (gx#syntax-split-splice
                                                      _tl2596726339_
                                                      '0)))
                                                (begin
                                                  (let ((_g31746_
                                                         (values-count
                                                          _g31745_)))
                                                    (if (not (fx= _g31746_ 2))
                                                        (error "Context expects 2 values"
                                                               _g31746_)))
                                                  (let ((_target2596826342_
                                                         (values-ref
                                                          _g31745_
                                                          0))
                                                        (_tl2597026345_
                                                         (values-ref
                                                          _g31745_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl2597026345_)
                                                        (letrec ((_loop2597126348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd2596926352_ _body2597526355_)
                            (if (gx#stx-pair? _hd2596926352_)
                                (let ((_e2597226358_
                                       (gx#syntax-e _hd2596926352_)))
                                  (let ((_lp-hd2597326362_
                                         (##car _e2597226358_))
                                        (_lp-tl2597426365_
                                         (##cdr _e2597226358_)))
                                    (_loop2597126348_
                                     _lp-tl2597426365_
                                     (cons _lp-hd2597326362_
                                           _body2597526355_))))
                                (let ((_body2597626368_
                                       (reverse _body2597526355_)))
                                  ((lambda (_L26372_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2638826391_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2638926394_)
                    (cons _g2638826391_ _g2638926394_))
                  '()
                  _L26372_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body2597626368_))))))
                  (_loop2597126348_ _target2596826342_ '()))
                (_g2595726315_ _g2596026319_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2595726315_ _g2596026319_))
                                          (_g2595726315_ _g2596026319_))
                                      (_g2595726315_ _g2596026319_))))
                              (_g2595726315_ _g2596026319_))))
                      (_g2595726315_ _g2596026319_)))))
          (_g2595626397_ _$stx25953_))))
    (define |gerbil/core$<match>[:0:]#with*|
      (lambda (_$stx26405_)
        (let* ((_g2641026462_
                (lambda (_g2641126458_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2641126458_)))
               (_g2640926545_
                (lambda (_g2641126466_)
                  (if (gx#stx-pair? _g2641126466_)
                      (let ((_e2644226469_ (gx#syntax-e _g2641126466_)))
                        (let ((_hd2644326473_ (##car _e2644226469_))
                              (_tl2644426476_ (##cdr _e2644226469_)))
                          (if (gx#stx-pair? _tl2644426476_)
                              (let ((_e2644526479_
                                     (gx#syntax-e _tl2644426476_)))
                                (let ((_hd2644626483_ (##car _e2644526479_))
                                      (_tl2644726486_ (##cdr _e2644526479_)))
                                  (if (gx#stx-null? _hd2644626483_)
                                      (if (gx#stx-pair/null? _tl2644726486_)
                                          (if (fx>= (gx#stx-length
                                                     _tl2644726486_)
                                                    '0)
                                              (let ((_g31747_
                                                     (gx#syntax-split-splice
                                                      _tl2644726486_
                                                      '0)))
                                                (begin
                                                  (let ((_g31748_
                                                         (values-count
                                                          _g31747_)))
                                                    (if (not (fx= _g31748_ 2))
                                                        (error "Context expects 2 values"
                                                               _g31748_)))
                                                  (let ((_target2644826489_
                                                         (values-ref
                                                          _g31747_
                                                          0))
                                                        (_tl2645026492_
                                                         (values-ref
                                                          _g31747_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl2645026492_)
                                                        (letrec ((_loop2645126495_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd2644926499_ _body2645526502_)
                            (if (gx#stx-pair? _hd2644926499_)
                                (let ((_e2645226505_
                                       (gx#syntax-e _hd2644926499_)))
                                  (let ((_lp-hd2645326509_
                                         (##car _e2645226505_))
                                        (_lp-tl2645426512_
                                         (##cdr _e2645226505_)))
                                    (_loop2645126495_
                                     _lp-tl2645426512_
                                     (cons _lp-hd2645326509_
                                           _body2645526502_))))
                                (let ((_body2645626515_
                                       (reverse _body2645526502_)))
                                  ((lambda (_L26519_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2653626539_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2653726542_)
                    (cons _g2653626539_ _g2653726542_))
                  '()
                  _L26519_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body2645626515_))))))
                  (_loop2645126495_ _target2644826489_ '()))
                (_g2641026462_ _g2641126466_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2641026462_ _g2641126466_))
                                          (_g2641026462_ _g2641126466_))
                                      (_g2641026462_ _g2641126466_))))
                              (_g2641026462_ _g2641126466_))))
                      (_g2641026462_ _g2641126466_))))
               (_g2640826671_
                (lambda (_g2641126549_)
                  (if (gx#stx-pair? _g2641126549_)
                      (let ((_e2641726552_ (gx#syntax-e _g2641126549_)))
                        (let ((_hd2641826556_ (##car _e2641726552_))
                              (_tl2641926559_ (##cdr _e2641726552_)))
                          (if (gx#stx-pair? _tl2641926559_)
                              (let ((_e2642026562_
                                     (gx#syntax-e _tl2641926559_)))
                                (let ((_hd2642126566_ (##car _e2642026562_))
                                      (_tl2642226569_ (##cdr _e2642026562_)))
                                  (if (gx#stx-pair? _hd2642126566_)
                                      (let ((_e2642326572_
                                             (gx#syntax-e _hd2642126566_)))
                                        (let ((_hd2642426576_
                                               (##car _e2642326572_))
                                              (_tl2642526579_
                                               (##cdr _e2642326572_)))
                                          (if (gx#stx-pair? _hd2642426576_)
                                              (let ((_e2642626582_
                                                     (gx#syntax-e
                                                      _hd2642426576_)))
                                                (let ((_hd2642726586_
                                                       (##car _e2642626582_))
                                                      (_tl2642826589_
                                                       (##cdr _e2642626582_)))
                                                  (if (gx#stx-pair?
                                                       _tl2642826589_)
                                                      (let ((_e2642926592_
                                                             (gx#syntax-e
                                                              _tl2642826589_)))
                                                        (let ((_hd2643026596_
                                                               (##car _e2642926592_))
                                                              (_tl2643126599_
                                                               (##cdr _e2642926592_)))
                                                          (if (gx#stx-null?
                                                               _tl2643126599_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2642226569_)
                          (if (fx>= (gx#stx-length _tl2642226569_) '0)
                              (let ((_g31749_
                                     (gx#syntax-split-splice
                                      _tl2642226569_
                                      '0)))
                                (begin
                                  (let ((_g31750_ (values-count _g31749_)))
                                    (if (not (fx= _g31750_ 2))
                                        (error "Context expects 2 values"
                                               _g31750_)))
                                  (let ((_target2643226602_
                                         (values-ref _g31749_ 0))
                                        (_tl2643426605_
                                         (values-ref _g31749_ 1)))
                                    (if (gx#stx-null? _tl2643426605_)
                                        (letrec ((_loop2643526608_
                                                  (lambda (_hd2643326612_
                                                           _body2643926615_)
                                                    (if (gx#stx-pair?
                                                         _hd2643326612_)
                                                        (let ((_e2643626618_
                                                               (gx#syntax-e
                                                                _hd2643326612_)))
                                                          (let ((_lp-hd2643726622_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2643626618_))
                        (_lp-tl2643826625_ (##cdr _e2643626618_)))
                    (_loop2643526608_
                     _lp-tl2643826625_
                     (cons _lp-hd2643726622_ _body2643926615_))))
                (let ((_body2644026628_ (reverse _body2643926615_)))
                  ((lambda (_L26632_ _L26634_ _L26635_ _L26636_ _L26637_)
                     (cons (gx#datum->syntax '#f 'with)
                           (cons (cons (cons _L26636_ (cons _L26635_ '())) '())
                                 (cons (cons _L26637_
                                             (cons _L26634_
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g2666226665_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2666326668_)
                      (cons _g2666226665_ _g2666326668_))
                    '()
                    _L26632_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
                   _body2644026628_
                   _tl2642526579_
                   _hd2643026596_
                   _hd2642726586_
                   _hd2641826556_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop2643526608_
                                           _target2643226602_
                                           '()))
                                        (_g2640926545_ _g2641126549_)))))
                              (_g2640926545_ _g2641126549_))
                          (_g2640926545_ _g2641126549_))
                      (_g2640926545_ _g2641126549_))))
              (_g2640926545_ _g2641126549_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2640926545_ _g2641126549_))))
                                      (_g2640926545_ _g2641126549_))))
                              (_g2640926545_ _g2641126549_))))
                      (_g2640926545_ _g2641126549_)))))
          (_g2640826671_ _$stx26405_))))
    (define |gerbil/core$<match>[:0:]#?|
      (lambda (_$stx26677_)
        (let* ((_g2668826832_
                (lambda (_g2668926828_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2668926828_)))
               (_g2668726927_
                (lambda (_g2668926836_)
                  (if (gx#stx-pair? _g2668926836_)
                      (let ((_e2680926839_ (gx#syntax-e _g2668926836_)))
                        (let ((_hd2681026843_ (##car _e2680926839_))
                              (_tl2681126846_ (##cdr _e2680926839_)))
                          (if (gx#stx-pair? _tl2681126846_)
                              (let ((_e2681226849_
                                     (gx#syntax-e _tl2681126846_)))
                                (let ((_hd2681326853_ (##car _e2681226849_))
                                      (_tl2681426856_ (##cdr _e2681226849_)))
                                  (if (gx#stx-pair? _tl2681426856_)
                                      (let ((_e2681526859_
                                             (gx#syntax-e _tl2681426856_)))
                                        (let ((_hd2681626863_
                                               (##car _e2681526859_))
                                              (_tl2681726866_
                                               (##cdr _e2681526859_)))
                                          (if (gx#stx-datum? _hd2681626863_)
                                              (if (equal? (gx#stx-e
                                                           _hd2681626863_)
                                                          '::)
                                                  (if (gx#stx-pair?
                                                       _tl2681726866_)
                                                      (let ((_e2681826869_
                                                             (gx#syntax-e
                                                              _tl2681726866_)))
                                                        (let ((_hd2681926873_
                                                               (##car _e2681826869_))
                                                              (_tl2682026876_
                                                               (##cdr _e2681826869_)))
                                                          (if (gx#stx-pair?
                                                               _tl2682026876_)
                                                              (let ((_e2682126879_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl2682026876_)))
                        (let ((_hd2682226883_ (##car _e2682126879_))
                              (_tl2682326886_ (##cdr _e2682126879_)))
                          (if (gx#identifier? _hd2682226883_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g31751_|
                                   _hd2682226883_)
                                  (if (gx#stx-pair? _tl2682326886_)
                                      (let ((_e2682426889_
                                             (gx#syntax-e _tl2682326886_)))
                                        (let ((_hd2682526893_
                                               (##car _e2682426889_))
                                              (_tl2682626896_
                                               (##cdr _e2682426889_)))
                                          (if (gx#stx-null? _tl2682626896_)
                                              ((lambda (_L26899_
                                                        _L26901_
                                                        _L26902_
                                                        _L26903_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())
                     (cons (cons (gx#datum->syntax '#f 'and)
                                 (cons (cons _L26903_
                                             (cons _L26902_
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '$obj)
                                                         '())))
                                       (cons (cons _L26899_
                                                   (cons (cons _L26901_
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
                                               _hd2682526893_
                                               _hd2681926873_
                                               _hd2681326853_
                                               _hd2681026843_)
                                              (_g2668826832_ _g2668926836_))))
                                      (_g2668826832_ _g2668926836_))
                                  (_g2668826832_ _g2668926836_))
                              (_g2668826832_ _g2668926836_))))
                      (_g2668826832_ _g2668926836_))))
              (_g2668826832_ _g2668926836_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2668826832_
                                                   _g2668926836_))
                                              (_g2668826832_ _g2668926836_))))
                                      (_g2668826832_ _g2668926836_))))
                              (_g2668826832_ _g2668926836_))))
                      (_g2668826832_ _g2668926836_))))
               (_g2668626995_
                (lambda (_g2668926931_)
                  (if (gx#stx-pair? _g2668926931_)
                      (let ((_e2679326934_ (gx#syntax-e _g2668926931_)))
                        (let ((_hd2679426938_ (##car _e2679326934_))
                              (_tl2679526941_ (##cdr _e2679326934_)))
                          (if (gx#stx-pair? _tl2679526941_)
                              (let ((_e2679626944_
                                     (gx#syntax-e _tl2679526941_)))
                                (let ((_hd2679726948_ (##car _e2679626944_))
                                      (_tl2679826951_ (##cdr _e2679626944_)))
                                  (if (gx#stx-pair? _tl2679826951_)
                                      (let ((_e2679926954_
                                             (gx#syntax-e _tl2679826951_)))
                                        (let ((_hd2680026958_
                                               (##car _e2679926954_))
                                              (_tl2680126961_
                                               (##cdr _e2679926954_)))
                                          (if (gx#stx-datum? _hd2680026958_)
                                              (if (equal? (gx#stx-e
                                                           _hd2680026958_)
                                                          '::)
                                                  (if (gx#stx-pair?
                                                       _tl2680126961_)
                                                      (let ((_e2680226964_
                                                             (gx#syntax-e
                                                              _tl2680126961_)))
                                                        (let ((_hd2680326968_
                                                               (##car _e2680226964_))
                                                              (_tl2680426971_
                                                               (##cdr _e2680226964_)))
                                                          (if (gx#stx-null?
                                                               _tl2680426971_)
                                                              ((lambda (_L26974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L26976_
                                _L26977_)
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons (cons (gx#datum->syntax '#f '$obj) '())
                                     (cons (cons (gx#datum->syntax '#f 'alet)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '$val)
                                                             (cons (cons _L26977_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _L26976_
                                       (cons (gx#datum->syntax '#f '$obj)
                                             '())))
                           '()))
               (cons (cons _L26974_ (cons (gx#datum->syntax '#f '$val) '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                       _hd2680326968_
                       _hd2679726948_
                       _hd2679426938_)
                      (_g2668726927_ _g2668926931_))))
              (_g2668726927_ _g2668926931_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2668726927_
                                                   _g2668926931_))
                                              (_g2668726927_ _g2668926931_))))
                                      (_g2668726927_ _g2668926931_))))
                              (_g2668726927_ _g2668926931_))))
                      (_g2668726927_ _g2668926931_))))
               (_g2668527063_
                (lambda (_g2668926999_)
                  (if (gx#stx-pair? _g2668926999_)
                      (let ((_e2677827002_ (gx#syntax-e _g2668926999_)))
                        (let ((_hd2677927006_ (##car _e2677827002_))
                              (_tl2678027009_ (##cdr _e2677827002_)))
                          (if (gx#stx-pair? _tl2678027009_)
                              (let ((_e2678127012_
                                     (gx#syntax-e _tl2678027009_)))
                                (let ((_hd2678227016_ (##car _e2678127012_))
                                      (_tl2678327019_ (##cdr _e2678127012_)))
                                  (if (gx#stx-pair? _tl2678327019_)
                                      (let ((_e2678427022_
                                             (gx#syntax-e _tl2678327019_)))
                                        (let ((_hd2678527026_
                                               (##car _e2678427022_))
                                              (_tl2678627029_
                                               (##cdr _e2678427022_)))
                                          (if (gx#identifier? _hd2678527026_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g31752_|
                                                   _hd2678527026_)
                                                  (if (gx#stx-pair?
                                                       _tl2678627029_)
                                                      (let ((_e2678727032_
                                                             (gx#syntax-e
                                                              _tl2678627029_)))
                                                        (let ((_hd2678827036_
                                                               (##car _e2678727032_))
                                                              (_tl2678927039_
                                                               (##cdr _e2678727032_)))
                                                          (if (gx#stx-null?
                                                               _tl2678927039_)
                                                              ((lambda (_L27042_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L27044_
                                _L27045_)
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons (cons (gx#datum->syntax '#f '$obj) '())
                                     (cons (cons (gx#datum->syntax '#f 'and)
                                                 (cons (cons _L27045_
                                                             (cons _L27044_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f '$obj) '())))
               (cons (cons _L27042_ (cons (gx#datum->syntax '#f '$obj) '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                       _hd2678827036_
                       _hd2678227016_
                       _hd2677927006_)
                      (_g2668626995_ _g2668926999_))))
              (_g2668626995_ _g2668926999_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2668626995_
                                                   _g2668926999_))
                                              (_g2668626995_ _g2668926999_))))
                                      (_g2668626995_ _g2668926999_))))
                              (_g2668626995_ _g2668926999_))))
                      (_g2668626995_ _g2668926999_))))
               (_g2668427105_
                (lambda (_g2668927067_)
                  (if (gx#stx-pair? _g2668927067_)
                      (let ((_e2676927070_ (gx#syntax-e _g2668927067_)))
                        (let ((_hd2677027074_ (##car _e2676927070_))
                              (_tl2677127077_ (##cdr _e2676927070_)))
                          (if (gx#stx-pair? _tl2677127077_)
                              (let ((_e2677227080_
                                     (gx#syntax-e _tl2677127077_)))
                                (let ((_hd2677327084_ (##car _e2677227080_))
                                      (_tl2677427087_ (##cdr _e2677227080_)))
                                  (if (gx#stx-null? _tl2677427087_)
                                      ((lambda (_L27090_ _L27092_)
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '$obj)
                                                           '())
                                                     (cons (cons _L27092_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L27090_
                               (cons (gx#datum->syntax '#f '$obj) '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd2677327084_
                                       _hd2677027074_)
                                      (_g2668527063_ _g2668927067_))))
                              (_g2668527063_ _g2668927067_))))
                      (_g2668527063_ _g2668927067_))))
               (_g2668327159_
                (lambda (_g2668927109_)
                  (if (gx#stx-pair? _g2668927109_)
                      (let ((_e2675827112_ (gx#syntax-e _g2668927109_)))
                        (let ((_hd2675927116_ (##car _e2675827112_))
                              (_tl2676027119_ (##cdr _e2675827112_)))
                          (if (gx#stx-pair? _tl2676027119_)
                              (let ((_e2676127122_
                                     (gx#syntax-e _tl2676027119_)))
                                (let ((_hd2676227126_ (##car _e2676127122_))
                                      (_tl2676327129_ (##cdr _e2676127122_)))
                                  (if (gx#stx-pair? _tl2676327129_)
                                      (let ((_e2676427132_
                                             (gx#syntax-e _tl2676327129_)))
                                        (let ((_hd2676527136_
                                               (##car _e2676427132_))
                                              (_tl2676627139_
                                               (##cdr _e2676427132_)))
                                          (if (gx#stx-null? _tl2676627139_)
                                              ((lambda (_L27142_ _L27144_)
                                                 (cons _L27144_
                                                       (cons _L27142_ '())))
                                               _hd2676527136_
                                               _hd2676227126_)
                                              (_g2668427105_ _g2668927109_))))
                                      (_g2668427105_ _g2668927109_))))
                              (_g2668427105_ _g2668927109_))))
                      (_g2668427105_ _g2668927109_))))
               (_g2668227239_
                (lambda (_g2668927163_)
                  (if (gx#stx-pair? _g2668927163_)
                      (let ((_e2674127166_ (gx#syntax-e _g2668927163_)))
                        (let ((_hd2674227170_ (##car _e2674127166_))
                              (_tl2674327173_ (##cdr _e2674127166_)))
                          (if (gx#stx-pair? _tl2674327173_)
                              (let ((_e2674427176_
                                     (gx#syntax-e _tl2674327173_)))
                                (let ((_hd2674527180_ (##car _e2674427176_))
                                      (_tl2674627183_ (##cdr _e2674427176_)))
                                  (if (gx#stx-pair? _hd2674527180_)
                                      (let ((_e2674727186_
                                             (gx#syntax-e _hd2674527180_)))
                                        (let ((_hd2674827190_
                                               (##car _e2674727186_))
                                              (_tl2674927193_
                                               (##cdr _e2674727186_)))
                                          (if (gx#identifier? _hd2674827190_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g31753_|
                                                   _hd2674827190_)
                                                  (if (gx#stx-pair?
                                                       _tl2674927193_)
                                                      (let ((_e2675027196_
                                                             (gx#syntax-e
                                                              _tl2674927193_)))
                                                        (let ((_hd2675127200_
                                                               (##car _e2675027196_))
                                                              (_tl2675227203_
                                                               (##cdr _e2675027196_)))
                                                          (if (gx#stx-null?
                                                               _tl2675227203_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2674627183_)
                          (let ((_e2675327206_ (gx#syntax-e _tl2674627183_)))
                            (let ((_hd2675427210_ (##car _e2675327206_))
                                  (_tl2675527213_ (##cdr _e2675327206_)))
                              (if (gx#stx-null? _tl2675527213_)
                                  ((lambda (_L27216_ _L27218_ _L27219_)
                                     (cons (gx#datum->syntax '#f 'not)
                                           (cons (cons _L27219_
                                                       (cons _L27218_
                                                             (cons _L27216_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                                   _hd2675427210_
                                   _hd2675127200_
                                   _hd2674227170_)
                                  (_g2668327159_ _g2668927163_))))
                          (_g2668327159_ _g2668927163_))
                      (_g2668327159_ _g2668927163_))))
              (_g2668327159_ _g2668927163_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2668327159_
                                                   _g2668927163_))
                                              (_g2668327159_ _g2668927163_))))
                                      (_g2668327159_ _g2668927163_))))
                              (_g2668327159_ _g2668927163_))))
                      (_g2668327159_ _g2668927163_))))
               (_g2668127349_
                (lambda (_g2668927243_)
                  (if (gx#stx-pair? _g2668927243_)
                      (let ((_e2671727246_ (gx#syntax-e _g2668927243_)))
                        (let ((_hd2671827250_ (##car _e2671727246_))
                              (_tl2671927253_ (##cdr _e2671727246_)))
                          (if (gx#stx-pair? _tl2671927253_)
                              (let ((_e2672027256_
                                     (gx#syntax-e _tl2671927253_)))
                                (let ((_hd2672127260_ (##car _e2672027256_))
                                      (_tl2672227263_ (##cdr _e2672027256_)))
                                  (if (gx#stx-pair? _hd2672127260_)
                                      (let ((_e2672327266_
                                             (gx#syntax-e _hd2672127260_)))
                                        (let ((_hd2672427270_
                                               (##car _e2672327266_))
                                              (_tl2672527273_
                                               (##cdr _e2672327266_)))
                                          (if (gx#identifier? _hd2672427270_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g31754_|
                                                   _hd2672427270_)
                                                  (if (gx#stx-pair/null?
                                                       _tl2672527273_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2672527273_)
                        '0)
                  (let ((_g31755_ (gx#syntax-split-splice _tl2672527273_ '0)))
                    (begin
                      (let ((_g31756_ (values-count _g31755_)))
                        (if (not (fx= _g31756_ 2))
                            (error "Context expects 2 values" _g31756_)))
                      (let ((_target2672627276_ (values-ref _g31755_ 0))
                            (_tl2672827279_ (values-ref _g31755_ 1)))
                        (if (gx#stx-null? _tl2672827279_)
                            (letrec ((_loop2672927282_
                                      (lambda (_hd2672727286_ _pred2673327289_)
                                        (if (gx#stx-pair? _hd2672727286_)
                                            (let ((_e2673027292_
                                                   (gx#syntax-e
                                                    _hd2672727286_)))
                                              (let ((_lp-hd2673127296_
                                                     (##car _e2673027292_))
                                                    (_lp-tl2673227299_
                                                     (##cdr _e2673027292_)))
                                                (_loop2672927282_
                                                 _lp-tl2673227299_
                                                 (cons _lp-hd2673127296_
                                                       _pred2673327289_))))
                                            (let ((_pred2673427302_
                                                   (reverse _pred2673327289_)))
                                              (if (gx#stx-pair? _tl2672227263_)
                                                  (let ((_e2673527306_
                                                         (gx#syntax-e
                                                          _tl2672227263_)))
                                                    (let ((_hd2673627310_
                                                           (##car _e2673527306_))
                                                          (_tl2673727313_
                                                           (##cdr _e2673527306_)))
                                                      (if (gx#stx-null?
                                                           _tl2673727313_)
                                                          ((lambda (_L27316_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L27318_
                            _L27319_)
                     (cons (gx#datum->syntax '#f 'or)
                           (begin
                             '#!void
                             (foldr (lambda (_g2734027343_ _g2734127346_)
                                      (cons (cons _L27319_
                                                  (cons _g2734027343_
                                                        (cons _L27316_ '())))
                                            _g2734127346_))
                                    '()
                                    _L27318_))))
                   _hd2673627310_
                   _pred2673427302_
                   _hd2671827250_)
                  (_g2668227239_ _g2668927243_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2668227239_
                                                   _g2668927243_)))))))
                              (_loop2672927282_ _target2672627276_ '()))
                            (_g2668227239_ _g2668927243_)))))
                  (_g2668227239_ _g2668927243_))
              (_g2668227239_ _g2668927243_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2668227239_
                                                   _g2668927243_))
                                              (_g2668227239_ _g2668927243_))))
                                      (_g2668227239_ _g2668927243_))))
                              (_g2668227239_ _g2668927243_))))
                      (_g2668227239_ _g2668927243_))))
               (_g2668027459_
                (lambda (_g2668927353_)
                  (if (gx#stx-pair? _g2668927353_)
                      (let ((_e2669327356_ (gx#syntax-e _g2668927353_)))
                        (let ((_hd2669427360_ (##car _e2669327356_))
                              (_tl2669527363_ (##cdr _e2669327356_)))
                          (if (gx#stx-pair? _tl2669527363_)
                              (let ((_e2669627366_
                                     (gx#syntax-e _tl2669527363_)))
                                (let ((_hd2669727370_ (##car _e2669627366_))
                                      (_tl2669827373_ (##cdr _e2669627366_)))
                                  (if (gx#stx-pair? _hd2669727370_)
                                      (let ((_e2669927376_
                                             (gx#syntax-e _hd2669727370_)))
                                        (let ((_hd2670027380_
                                               (##car _e2669927376_))
                                              (_tl2670127383_
                                               (##cdr _e2669927376_)))
                                          (if (gx#identifier? _hd2670027380_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g31757_|
                                                   _hd2670027380_)
                                                  (if (gx#stx-pair/null?
                                                       _tl2670127383_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2670127383_)
                        '0)
                  (let ((_g31758_ (gx#syntax-split-splice _tl2670127383_ '0)))
                    (begin
                      (let ((_g31759_ (values-count _g31758_)))
                        (if (not (fx= _g31759_ 2))
                            (error "Context expects 2 values" _g31759_)))
                      (let ((_target2670227386_ (values-ref _g31758_ 0))
                            (_tl2670427389_ (values-ref _g31758_ 1)))
                        (if (gx#stx-null? _tl2670427389_)
                            (letrec ((_loop2670527392_
                                      (lambda (_hd2670327396_ _pred2670927399_)
                                        (if (gx#stx-pair? _hd2670327396_)
                                            (let ((_e2670627402_
                                                   (gx#syntax-e
                                                    _hd2670327396_)))
                                              (let ((_lp-hd2670727406_
                                                     (##car _e2670627402_))
                                                    (_lp-tl2670827409_
                                                     (##cdr _e2670627402_)))
                                                (_loop2670527392_
                                                 _lp-tl2670827409_
                                                 (cons _lp-hd2670727406_
                                                       _pred2670927399_))))
                                            (let ((_pred2671027412_
                                                   (reverse _pred2670927399_)))
                                              (if (gx#stx-pair? _tl2669827373_)
                                                  (let ((_e2671127416_
                                                         (gx#syntax-e
                                                          _tl2669827373_)))
                                                    (let ((_hd2671227420_
                                                           (##car _e2671127416_))
                                                          (_tl2671327423_
                                                           (##cdr _e2671127416_)))
                                                      (if (gx#stx-null?
                                                           _tl2671327423_)
                                                          ((lambda (_L27426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L27428_
                            _L27429_)
                     (cons (gx#datum->syntax '#f 'and)
                           (begin
                             '#!void
                             (foldr (lambda (_g2745027453_ _g2745127456_)
                                      (cons (cons _L27429_
                                                  (cons _g2745027453_
                                                        (cons _L27426_ '())))
                                            _g2745127456_))
                                    '()
                                    _L27428_))))
                   _hd2671227420_
                   _pred2671027412_
                   _hd2669427360_)
                  (_g2668127349_ _g2668927353_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2668127349_
                                                   _g2668927353_)))))))
                              (_loop2670527392_ _target2670227386_ '()))
                            (_g2668127349_ _g2668927353_)))))
                  (_g2668127349_ _g2668927353_))
              (_g2668127349_ _g2668927353_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2668127349_
                                                   _g2668927353_))
                                              (_g2668127349_ _g2668927353_))))
                                      (_g2668127349_ _g2668927353_))))
                              (_g2668127349_ _g2668927353_))))
                      (_g2668127349_ _g2668927353_)))))
          (_g2668027459_ _$stx26677_))))
    (define |gerbil/core$<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx27465_)
        (let* ((_g2747027504_
                (lambda (_g2747127500_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2747127500_)))
               (_g2746927561_
                (lambda (_g2747127508_)
                  (if (gx#stx-pair? _g2747127508_)
                      (let ((_e2749027511_ (gx#syntax-e _g2747127508_)))
                        (let ((_hd2749127515_ (##car _e2749027511_))
                              (_tl2749227518_ (##cdr _e2749027511_)))
                          (if (gx#stx-pair? _tl2749227518_)
                              (let ((_e2749327521_
                                     (gx#syntax-e _tl2749227518_)))
                                (let ((_hd2749427525_ (##car _e2749327521_))
                                      (_tl2749527528_ (##cdr _e2749327521_)))
                                  (if (gx#stx-pair? _tl2749527528_)
                                      (let ((_e2749627531_
                                             (gx#syntax-e _tl2749527528_)))
                                        (let ((_hd2749727535_
                                               (##car _e2749627531_))
                                              (_tl2749827538_
                                               (##cdr _e2749627531_)))
                                          (if (gx#stx-null? _tl2749827538_)
                                              ((lambda (_L27541_
                                                        _L27543_
                                                        _L27544_)
                                                 (cons _L27544_
                                                       (cons _L27543_
                                                             (cons _L27541_
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
                                               _hd2749727535_
                                               _hd2749427525_
                                               _hd2749127515_)
                                              (_g2747027504_ _g2747127508_))))
                                      (_g2747027504_ _g2747127508_))))
                              (_g2747027504_ _g2747127508_))))
                      (_g2747027504_ _g2747127508_))))
               (_g2746827629_
                (lambda (_g2747127565_)
                  (if (gx#stx-pair? _g2747127565_)
                      (let ((_e2747527568_ (gx#syntax-e _g2747127565_)))
                        (let ((_hd2747627572_ (##car _e2747527568_))
                              (_tl2747727575_ (##cdr _e2747527568_)))
                          (if (gx#stx-pair? _tl2747727575_)
                              (let ((_e2747827578_
                                     (gx#syntax-e _tl2747727575_)))
                                (let ((_hd2747927582_ (##car _e2747827578_))
                                      (_tl2748027585_ (##cdr _e2747827578_)))
                                  (if (gx#stx-pair? _tl2748027585_)
                                      (let ((_e2748127588_
                                             (gx#syntax-e _tl2748027585_)))
                                        (let ((_hd2748227592_
                                               (##car _e2748127588_))
                                              (_tl2748327595_
                                               (##cdr _e2748127588_)))
                                          (if (gx#stx-pair? _tl2748327595_)
                                              (let ((_e2748427598_
                                                     (gx#syntax-e
                                                      _tl2748327595_)))
                                                (let ((_hd2748527602_
                                                       (##car _e2748427598_))
                                                      (_tl2748627605_
                                                       (##cdr _e2748427598_)))
                                                  (if (gx#stx-null?
                                                       _tl2748627605_)
                                                      ((lambda (_L27608_
                                                                _L27610_
                                                                _L27611_)
                                                         (if (gx#identifier?
                                                              _L27611_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'defsyntax)
                           (cons _L27611_
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
                                         (cons _L27610_ '()))
                                   (cons (cons (gx#datum->syntax '#f '$macro-e)
                                               (cons _L27608_ '()))
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
                     (_g2746927561_ _g2747127565_)))
               _hd2748527602_
               _hd2748227592_
               _hd2747927582_)
              (_g2746927561_ _g2747127565_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2746927561_ _g2747127565_))))
                                      (_g2746927561_ _g2747127565_))))
                              (_g2746927561_ _g2747127565_))))
                      (_g2746927561_ _g2747127565_)))))
          (_g2746827629_ _$stx27465_))))
    (define |gerbil/core$<match>[:0:]#defrules-for-match|
      (lambda (_$stx27633_)
        (let* ((_g2763727652_
                (lambda (_g2763827648_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2763827648_)))
               (_g2763627695_
                (lambda (_g2763827656_)
                  (if (gx#stx-pair? _g2763827656_)
                      (let ((_e2764127659_ (gx#syntax-e _g2763827656_)))
                        (let ((_hd2764227663_ (##car _e2764127659_))
                              (_tl2764327666_ (##cdr _e2764127659_)))
                          (if (gx#stx-pair? _tl2764327666_)
                              (let ((_e2764427669_
                                     (gx#syntax-e _tl2764327666_)))
                                (let ((_hd2764527673_ (##car _e2764427669_))
                                      (_tl2764627676_ (##cdr _e2764427669_)))
                                  ((lambda (_L27679_ _L27681_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _L27681_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _L27679_)
                                                       '()))))
                                   _tl2764627676_
                                   _hd2764527673_)))
                              (_g2763727652_ _g2763827656_))))
                      (_g2763727652_ _g2763827656_)))))
          (_g2763627695_ _$stx27633_))))))
