(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<match>[1]#_g28123_|
    (gx#core-quote-syntax 'quasiquote))
  (define |gerbil/core::<match>[1]#_g28124_| (gx#core-quote-syntax 'quote))
  (define |gerbil/core::<match>[1]#_g28127_| (gx#core-quote-syntax 'vector))
  (define |gerbil/core::<match>[1]#_g28128_| (gx#core-quote-syntax 'values))
  (define |gerbil/core::<match>[1]#_g28129_| (gx#core-quote-syntax 'values))
  (define |gerbil/core::<match>[1]#_g28130_| (gx#core-quote-syntax 'box))
  (define |gerbil/core::<match>[1]#_g28131_| (gx#core-quote-syntax '@list))
  (define |gerbil/core::<match>[1]#_g28132_| (gx#core-quote-syntax 'cons*))
  (define |gerbil/core::<match>[1]#_g28133_| (gx#core-quote-syntax 'cons))
  (define |gerbil/core::<match>[1]#_g28134_| (gx#core-quote-syntax 'not))
  (define |gerbil/core::<match>[1]#_g28135_| (gx#core-quote-syntax 'or))
  (define |gerbil/core::<match>[1]#_g28136_| (gx#core-quote-syntax 'and))
  (define |gerbil/core::<match>[1]#_g28137_| (gx#core-quote-syntax '?))
  (define |gerbil/core::<match>[1]#_g28138_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g28139_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g28152_| (gx#core-quote-syntax 'else))
  (define |gerbil/core::<match>[1]#_g28153_| (gx#core-quote-syntax 'else))
  (define |gerbil/core::<match>[1]#_g28154_| (gx#core-quote-syntax '<...>))
  (define |gerbil/core::<match>[1]#_g28155_| (gx#core-quote-syntax '<>))
  (define |gerbil/core::<match>[1]#_g28172_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g28173_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g28174_| (gx#core-quote-syntax 'not))
  (define |gerbil/core::<match>[1]#_g28175_| (gx#core-quote-syntax 'or))
  (define |gerbil/core::<match>[1]#_g28178_| (gx#core-quote-syntax 'and))
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
      (lambda _$args23354_
        (apply make-class-instance
               |gerbil/core::<match>[1]#match-macro::t|
               _$args23354_)))
    (define |gerbil/core::<match>[1]#syntax-local-match-macro?|
      (lambda (_stx23351_)
        (if (gx#identifier? _stx23351_)
            (|gerbil/core::<match>[1]#match-macro?|
             (gx#syntax-local-value _stx23351_ false))
            '#f)))
    (define |gerbil/core::<match>[1]#parse-match-pattern|
      (let ((_opt-lambda2173323337_
             (lambda (_stx21735_ _match-stx21737_)
               (let ((_parse-qq21745_
                      (lambda (_hd21751_)
                        (let ((_g2175321760_
                               (lambda (_g2175421756_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2175421756_))))
                          (_g2175321760_ _hd21751_)))))
                 (let ((_parse-error21746_
                        (lambda (_hd21748_)
                          (apply gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; illegal pattern"
                                 (if _match-stx21737_
                                     (cons _match-stx21737_
                                           (cons _stx21735_
                                                 (cons _hd21748_ '())))
                                     (cons _stx21735_
                                           (cons _hd21748_ '())))))))
                   (letrec ((_parse121739_
                             (lambda (_hd22086_)
                               (let ((_g2211122242_
                                      (lambda (_g2211222238_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g2211222238_))))
                                 (let ((_g2211022253_
                                        (lambda (_g2211222246_)
                                          ((lambda ()
                                             (_parse-error21746_
                                              _hd22086_))))))
                                   (let ((_g2210922271_
                                          (lambda (_g2211222257_)
                                            ((lambda (_L22260_)
                                               (if (gx#stx-datum? _L22260_)
                                                   (cons 'datum:
                                                         (cons (gx#stx-e
                                                                _L22260_)
                                                               '()))
                                                   (_g2211022253_
                                                    _g2211222257_)))
                                             _g2211222257_))))
                                     (let ((_g2210822287_
                                            (lambda (_g2211222275_)
                                              ((lambda (_L22278_)
                                                 (if (if (gx#identifier?
                                                          _L22278_)
                                                         (not (gx#ellipsis?
                                                               _L22278_))
                                                         '#f)
                                                     (cons 'var:
                                                           (cons _L22278_ '()))
                                                     (_g2210922271_
                                                      _g2211222275_)))
                                               _g2211222275_))))
                                       (let ((_g2210722303_
                                              (lambda (_g2211222291_)
                                                ((lambda (_L22294_)
                                                   (if (gx#underscore?
                                                        _L22294_)
                                                       (cons 'any: '())
                                                       (_g2210822287_
                                                        _g2211222291_)))
                                                 _g2211222291_))))
                                         (let ((_g2210622335_
                                                (lambda (_g2211222307_)
                                                  (if (gx#stx-pair?
                                                       _g2211222307_)
                                                      (let ((_e2223122310_
                                                             (gx#syntax-e
                                                              _g2211222307_)))
                                                        (let ((_hd2223222314_
                                                               (##car _e2223122310_))
                                                              (_tl2223322317_
                                                               (##cdr _e2223122310_)))
                                                          ((lambda (_L22320_)
                                                             (if (|gerbil/core::<match>[1]#syntax-local-match-macro?|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L22320_)
                         (_parse121739_
                          (gx#core-apply-expander
                           (gx#syntax-local-e _L22320_)
                           (gx#stx-wrap-source
                            (cons 'match: _hd22086_)
                            (let ((_$e22331_ (gx#stx-source _hd22086_)))
                              (if _$e22331_
                                  _$e22331_
                                  (gx#stx-source _stx21735_))))))
                         (_g2210722303_ _g2211222307_)))
                   _hd2223222314_)))
              (_g2210722303_ _g2211222307_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_g2210522375_
                                                  (lambda (_g2211222339_)
                                                    (if (gx#stx-pair?
                                                         _g2211222339_)
                                                        (let ((_e2222422342_
                                                               (gx#syntax-e
                                                                _g2211222339_)))
                                                          (let ((_hd2222522346_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2222422342_))
                        (_tl2222622349_ (##cdr _e2222422342_)))
                    (if (gx#identifier? _hd2222522346_)
                        (if (gx#free-identifier=?
                             |gerbil/core::<match>[1]#_g28123_|
                             _hd2222522346_)
                            (if (gx#stx-pair? _tl2222622349_)
                                (let ((_e2222722352_
                                       (gx#syntax-e _tl2222622349_)))
                                  (let ((_hd2222822356_ (##car _e2222722352_))
                                        (_tl2222922359_ (##cdr _e2222722352_)))
                                    (if (gx#stx-null? _tl2222922359_)
                                        ((lambda (_L22362_)
                                           (_parse-qq21745_ _L22362_))
                                         _hd2222822356_)
                                        (_g2210622335_ _g2211222339_))))
                                (_g2210622335_ _g2211222339_))
                            (_g2210622335_ _g2211222339_))
                        (_g2210622335_ _g2211222339_))))
                (_g2210622335_ _g2211222339_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_g2210422415_
                                                    (lambda (_g2211222379_)
                                                      (if (gx#stx-pair?
                                                           _g2211222379_)
                                                          (let ((_e2221722382_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _g2211222379_)))
                    (let ((_hd2221822386_ (##car _e2221722382_))
                          (_tl2221922389_ (##cdr _e2221722382_)))
                      (if (gx#identifier? _hd2221822386_)
                          (if (gx#free-identifier=?
                               |gerbil/core::<match>[1]#_g28124_|
                               _hd2221822386_)
                              (if (gx#stx-pair? _tl2221922389_)
                                  (let ((_e2222022392_
                                         (gx#syntax-e _tl2221922389_)))
                                    (let ((_hd2222122396_
                                           (##car _e2222022392_))
                                          (_tl2222222399_
                                           (##cdr _e2222022392_)))
                                      (if (gx#stx-null? _tl2222222399_)
                                          ((lambda (_L22402_)
                                             (cons 'datum:
                                                   (cons (gx#stx-e _L22402_)
                                                         '())))
                                           _hd2222122396_)
                                          (_g2210522375_ _g2211222379_))))
                                  (_g2210522375_ _g2211222379_))
                              (_g2210522375_ _g2211222379_))
                          (_g2210522375_ _g2211222379_))))
                  (_g2210522375_ _g2211222379_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_g2210322465_
                                                      (lambda (_g2211222419_)
                                                        (if (gx#stx-pair?
                                                             _g2211222419_)
                                                            (let ((_e2221022422_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g2211222419_)))
                      (let ((_hd2221122426_ (##car _e2221022422_))
                            (_tl2221222429_ (##cdr _e2221022422_)))
                        (if (gx#stx-pair? _tl2221222429_)
                            (let ((_e2221322432_ (gx#syntax-e _tl2221222429_)))
                              (let ((_hd2221422436_ (##car _e2221322432_))
                                    (_tl2221522439_ (##cdr _e2221322432_)))
                                (if (gx#stx-null? _tl2221522439_)
                                    ((lambda (_L22442_ _L22444_)
                                       (if (if (gx#identifier? _L22444_)
                                               (let ((_$e22457_
                                                      (gx#free-identifier=?
                                                       _L22444_
                                                       (gx#datum->syntax
                                                        '#f
                                                        'eq?))))
                                                 (if _$e22457_
                                                     _$e22457_
                                                     (let ((_$e22461_
                                                            (gx#free-identifier=?
                                                             _L22444_
                                                             (gx#datum->syntax
                                                              '#f
                                                              'eqv?))))
                                                       (if _$e22461_
                                                           _$e22461_
                                                           (gx#free-identifier=?
                                                            _L22444_
                                                            (gx#datum->syntax
                                                             '#f
                                                             'equal?))))))
                                               '#f)
                                           (cons '?:
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'cut)
                                                             (cons _L22444_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f '<>)
                                 (cons _L22442_ '()))))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g2210422415_ _g2211222419_)))
                                     _hd2221422436_
                                     _hd2221122426_)
                                    (_g2210422415_ _g2211222419_))))
                            (_g2210422415_ _g2211222419_))))
                    (_g2210422415_ _g2211222419_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_g2210222495_
                                                        (lambda (_g2211222469_)
                                                          (if (gx#stx-pair?
                                                               _g2211222469_)
                                                              (let ((_e2220522472_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _g2211222469_)))
                        (let ((_hd2220622476_ (##car _e2220522472_))
                              (_tl2220722479_ (##cdr _e2220522472_)))
                          ((lambda (_L22482_ _L22484_)
                             (if (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-class-info?|
                                  _L22484_)
                                 (cons 'class:
                                       (cons (gx#syntax-local-value _L22484_)
                                             (cons (_parse-class-body21744_
                                                    _L22482_)
                                                   '())))
                                 (_g2210322465_ _g2211222469_)))
                           _tl2220722479_
                           _hd2220622476_)))
                      (_g2210322465_ _g2211222469_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_g2210122525_
                                                          (lambda (_g2211222499_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2211222499_)
                        (let ((_e2220022502_ (gx#syntax-e _g2211222499_)))
                          (let ((_hd2220122506_ (##car _e2220022502_))
                                (_tl2220222509_ (##cdr _e2220022502_)))
                            ((lambda (_L22512_ _L22514_)
                               (if (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-struct-info?|
                                    _L22514_)
                                   (cons 'struct:
                                         (cons (gx#syntax-local-value _L22514_)
                                               (cons (_parse-vector21742_
                                                      _L22512_)
                                                     '())))
                                   (_g2210222495_ _g2211222499_)))
                             _tl2220222509_
                             _hd2220122506_)))
                        (_g2210222495_ _g2211222499_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_g2210022588_
                                                            (lambda (_g2211222529_)
                                                              (if (gx#stx-vector?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2211222529_)
                          (let ((_e2218822532_
                                 (vector->list (gx#syntax-e _g2211222529_))))
                            (if (gx#stx-pair/null? _e2218822532_)
                                (if (fx>= (gx#stx-length _e2218822532_) '0)
                                    (let ((_g28125_
                                           (gx#syntax-split-splice
                                            _e2218822532_
                                            '0)))
                                      (begin
                                        (let ((_g28126_
                                               (values-count _g28125_)))
                                          (if (not (fx= _g28126_ 2))
                                              (error "Context expects 2 values"
                                                     _g28126_)))
                                        (let ((_target2218922536_
                                               (values-ref _g28125_ 0))
                                              (_tl2219122539_
                                               (values-ref _g28125_ 1)))
                                          (if (gx#stx-null? _tl2219122539_)
                                              (letrec ((_loop2219222542_
                                                        (lambda (_hd2219022546_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body2219622549_)
                  (if (gx#stx-pair? _hd2219022546_)
                      (let ((_e2219322552_ (gx#syntax-e _hd2219022546_)))
                        (let ((_lp-hd2219422556_ (##car _e2219322552_))
                              (_lp-tl2219522559_ (##cdr _e2219322552_)))
                          (_loop2219222542_
                           _lp-tl2219522559_
                           (cons _lp-hd2219422556_ _body2219622549_))))
                      (let ((_body2219722562_ (reverse _body2219622549_)))
                        ((lambda (_L22566_)
                           (cons 'vector:
                                 (cons (_parse-vector21742_
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g2257922582_
                                                          _g2258022585_)
                                                   (cons _g2257922582_
                                                         _g2258022585_))
                                                 '()
                                                 _L22566_)))
                                       '())))
                         _body2219722562_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop2219222542_
                                                 _target2218922536_
                                                 '()))
                                              (_g2210122525_ _g2211222529_)))))
                                    (_g2210122525_ _g2211222529_))
                                (_g2210122525_ _g2211222529_)))
                          (_g2210122525_ _g2211222529_)))))
               (let ((_g2209922616_
                      (lambda (_g2211222592_)
                        (if (gx#stx-pair? _g2211222592_)
                            (let ((_e2218422595_ (gx#syntax-e _g2211222592_)))
                              (let ((_hd2218522599_ (##car _e2218422595_))
                                    (_tl2218622602_ (##cdr _e2218422595_)))
                                (if (gx#identifier? _hd2218522599_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core::<match>[1]#_g28127_|
                                         _hd2218522599_)
                                        ((lambda (_L22605_)
                                           (cons 'vector:
                                                 (cons (_parse-vector21742_
                                                        _L22605_)
                                                       '())))
                                         _tl2218622602_)
                                        (_g2210022588_ _g2211222592_))
                                    (_g2210022588_ _g2211222592_))))
                            (_g2210022588_ _g2211222592_)))))
                 (let ((_g2209822644_
                        (lambda (_g2211222620_)
                          (if (gx#stx-pair? _g2211222620_)
                              (let ((_e2218022623_
                                     (gx#syntax-e _g2211222620_)))
                                (let ((_hd2218122627_ (##car _e2218022623_))
                                      (_tl2218222630_ (##cdr _e2218022623_)))
                                  (if (gx#identifier? _hd2218122627_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core::<match>[1]#_g28128_|
                                           _hd2218122627_)
                                          ((lambda (_L22633_)
                                             (cons 'values:
                                                   (cons (_parse-vector21742_
                                                          _L22633_)
                                                         '())))
                                           _tl2218222630_)
                                          (_g2209922616_ _g2211222620_))
                                      (_g2209922616_ _g2211222620_))))
                              (_g2209922616_ _g2211222620_)))))
                   (let ((_g2209722684_
                          (lambda (_g2211222648_)
                            (if (gx#stx-pair? _g2211222648_)
                                (let ((_e2217322651_
                                       (gx#syntax-e _g2211222648_)))
                                  (let ((_hd2217422655_ (##car _e2217322651_))
                                        (_tl2217522658_ (##cdr _e2217322651_)))
                                    (if (gx#identifier? _hd2217422655_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core::<match>[1]#_g28129_|
                                             _hd2217422655_)
                                            (if (gx#stx-pair? _tl2217522658_)
                                                (let ((_e2217622661_
                                                       (gx#syntax-e
                                                        _tl2217522658_)))
                                                  (let ((_hd2217722665_
                                                         (##car _e2217622661_))
                                                        (_tl2217822668_
                                                         (##cdr _e2217622661_)))
                                                    (if (gx#stx-null?
                                                         _tl2217822668_)
                                                        ((lambda (_L22671_)
                                                           (_parse121739_
                                                            _L22671_))
                                                         _hd2217722665_)
                                                        (_g2209822644_
                                                         _g2211222648_))))
                                                (_g2209822644_ _g2211222648_))
                                            (_g2209822644_ _g2211222648_))
                                        (_g2209822644_ _g2211222648_))))
                                (_g2209822644_ _g2211222648_)))))
                     (let ((_g2209622705_
                            (lambda (_g2211222688_)
                              (if (gx#stx-box? _g2211222688_)
                                  (let ((_e2217122691_
                                         (unbox (gx#syntax-e _g2211222688_))))
                                    ((lambda (_L22695_)
                                       (cons 'box:
                                             (cons (_parse121739_ _L22695_)
                                                   '())))
                                     _e2217122691_))
                                  (_g2209722684_ _g2211222688_)))))
                       (let ((_g2209522745_
                              (lambda (_g2211222709_)
                                (if (gx#stx-pair? _g2211222709_)
                                    (let ((_e2216422712_
                                           (gx#syntax-e _g2211222709_)))
                                      (let ((_hd2216522716_
                                             (##car _e2216422712_))
                                            (_tl2216622719_
                                             (##cdr _e2216422712_)))
                                        (if (gx#identifier? _hd2216522716_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<match>[1]#_g28130_|
                                                 _hd2216522716_)
                                                (if (gx#stx-pair?
                                                     _tl2216622719_)
                                                    (let ((_e2216722722_
                                                           (gx#syntax-e
                                                            _tl2216622719_)))
                                                      (let ((_hd2216822726_
                                                             (##car _e2216722722_))
                                                            (_tl2216922729_
                                                             (##cdr _e2216722722_)))
                                                        (if (gx#stx-null?
                                                             _tl2216922729_)
                                                            ((lambda (_L22732_)
                                                               (cons 'box:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (_parse121739_ _L22732_) '())))
                     _hd2216822726_)
                    (_g2209622705_ _g2211222709_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2209622705_
                                                     _g2211222709_))
                                                (_g2209622705_ _g2211222709_))
                                            (_g2209622705_ _g2211222709_))))
                                    (_g2209622705_ _g2211222709_)))))
                         (let ((_g2209422773_
                                (lambda (_g2211222749_)
                                  (if (gx#stx-pair? _g2211222749_)
                                      (let ((_e2216022752_
                                             (gx#syntax-e _g2211222749_)))
                                        (let ((_hd2216122756_
                                               (##car _e2216022752_))
                                              (_tl2216222759_
                                               (##cdr _e2216022752_)))
                                          (if (gx#identifier? _hd2216122756_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core::<match>[1]#_g28131_|
                                                   _hd2216122756_)
                                                  ((lambda (_L22762_)
                                                     (_parse-list21741_
                                                      _L22762_))
                                                   _tl2216222759_)
                                                  (_g2209522745_
                                                   _g2211222749_))
                                              (_g2209522745_ _g2211222749_))))
                                      (_g2209522745_ _g2211222749_)))))
                           (let ((_g2209322829_
                                  (lambda (_g2211222777_)
                                    (if (gx#stx-pair? _g2211222777_)
                                        (let ((_e2215022780_
                                               (gx#syntax-e _g2211222777_)))
                                          (let ((_hd2215122784_
                                                 (##car _e2215022780_))
                                                (_tl2215222787_
                                                 (##cdr _e2215022780_)))
                                            (if (gx#identifier? _hd2215122784_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core::<match>[1]#_g28132_|
                                                     _hd2215122784_)
                                                    (if (gx#stx-pair?
                                                         _tl2215222787_)
                                                        (let ((_e2215322790_
                                                               (gx#syntax-e
                                                                _tl2215222787_)))
                                                          (let ((_hd2215422794_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2215322790_))
                        (_tl2215522797_ (##cdr _e2215322790_)))
                    (if (gx#stx-pair? _tl2215522797_)
                        (let ((_e2215622800_ (gx#syntax-e _tl2215522797_)))
                          (let ((_hd2215722804_ (##car _e2215622800_))
                                (_tl2215822807_ (##cdr _e2215622800_)))
                            ((lambda (_L22810_ _L22812_ _L22813_)
                               (if (gx#stx-null? _L22810_)
                                   (cons 'cons:
                                         (cons (_parse121739_ _L22813_)
                                               (cons (_parse121739_ _L22812_)
                                                     '())))
                                   (cons 'cons:
                                         (cons (_parse121739_ _L22813_)
                                               (cons (_parse121739_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons*)
                                                            (cons _L22812_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L22810_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                             _tl2215822807_
                             _hd2215722804_
                             _hd2215422794_)))
                        (_g2209422773_ _g2211222777_))))
                (_g2209422773_ _g2211222777_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2209422773_
                                                     _g2211222777_))
                                                (_g2209422773_
                                                 _g2211222777_))))
                                        (_g2209422773_ _g2211222777_)))))
                             (let ((_g2209222883_
                                    (lambda (_g2211222833_)
                                      (if (gx#stx-pair? _g2211222833_)
                                          (let ((_e2213822836_
                                                 (gx#syntax-e _g2211222833_)))
                                            (let ((_hd2213922840_
                                                   (##car _e2213822836_))
                                                  (_tl2214022843_
                                                   (##cdr _e2213822836_)))
                                              (if (gx#identifier?
                                                   _hd2213922840_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core::<match>[1]#_g28133_|
                                                       _hd2213922840_)
                                                      (if (gx#stx-pair?
                                                           _tl2214022843_)
                                                          (let ((_e2214122846_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2214022843_)))
                    (let ((_hd2214222850_ (##car _e2214122846_))
                          (_tl2214322853_ (##cdr _e2214122846_)))
                      (if (gx#stx-pair? _tl2214322853_)
                          (let ((_e2214422856_ (gx#syntax-e _tl2214322853_)))
                            (let ((_hd2214522860_ (##car _e2214422856_))
                                  (_tl2214622863_ (##cdr _e2214422856_)))
                              (if (gx#stx-null? _tl2214622863_)
                                  ((lambda (_L22866_ _L22868_)
                                     (cons 'cons:
                                           (cons (_parse121739_ _L22868_)
                                                 (cons (_parse121739_ _L22866_)
                                                       '()))))
                                   _hd2214522860_
                                   _hd2214222850_)
                                  (_g2209322829_ _g2211222833_))))
                          (_g2209322829_ _g2211222833_))))
                  (_g2209322829_ _g2211222833_))
              (_g2209322829_ _g2211222833_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2209322829_
                                                   _g2211222833_))))
                                          (_g2209322829_ _g2211222833_)))))
                               (let ((_g2209122923_
                                      (lambda (_g2211222887_)
                                        (if (gx#stx-pair? _g2211222887_)
                                            (let ((_e2213022890_
                                                   (gx#syntax-e
                                                    _g2211222887_)))
                                              (let ((_hd2213122894_
                                                     (##car _e2213022890_))
                                                    (_tl2213222897_
                                                     (##cdr _e2213022890_)))
                                                (if (gx#identifier?
                                                     _hd2213122894_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core::<match>[1]#_g28134_|
                                                         _hd2213122894_)
                                                        (if (gx#stx-pair?
                                                             _tl2213222897_)
                                                            (let ((_e2213322900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl2213222897_)))
                      (let ((_hd2213422904_ (##car _e2213322900_))
                            (_tl2213522907_ (##cdr _e2213322900_)))
                        (if (gx#stx-null? _tl2213522907_)
                            ((lambda (_L22910_)
                               (cons 'not:
                                     (cons (_parse121739_ _L22910_) '())))
                             _hd2213422904_)
                            (_g2209222883_ _g2211222887_))))
                    (_g2209222883_ _g2211222887_))
                (_g2209222883_ _g2211222887_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2209222883_
                                                     _g2211222887_))))
                                            (_g2209222883_ _g2211222887_)))))
                                 (let ((_g2209023008_
                                        (lambda (_g2211222927_)
                                          (if (gx#stx-pair? _g2211222927_)
                                              (let ((_e2212622930_
                                                     (gx#syntax-e
                                                      _g2211222927_)))
                                                (let ((_hd2212722934_
                                                       (##car _e2212622930_))
                                                      (_tl2212822937_
                                                       (##cdr _e2212622930_)))
                                                  (if (gx#identifier?
                                                       _hd2212722934_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core::<match>[1]#_g28135_|
                                                           _hd2212722934_)
                                                          ((lambda (_L22940_)
                                                             (if (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L22940_)
                         (let ((_g2295222963_
                                (lambda (_g2295322959_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2295322959_))))
                           (let ((_g2295122974_
                                  (lambda (_g2295322967_)
                                    ((lambda ()
                                       (cons 'or:
                                             (gx#stx-map
                                              _parse121739_
                                              _L22940_)))))))
                             (let ((_g2295023004_
                                    (lambda (_g2295322978_)
                                      (if (gx#stx-pair? _g2295322978_)
                                          (let ((_e2295522981_
                                                 (gx#syntax-e _g2295322978_)))
                                            (let ((_hd2295622985_
                                                   (##car _e2295522981_))
                                                  (_tl2295722988_
                                                   (##cdr _e2295522981_)))
                                              (if (gx#stx-null? _tl2295722988_)
                                                  ((lambda (_L22991_)
                                                     (_parse121739_ _L22991_))
                                                   _hd2295622985_)
                                                  (_g2295122974_
                                                   _g2295322978_))))
                                          (_g2295122974_ _g2295322978_)))))
                               (_g2295023004_ _L22940_))))
                         (_g2209122923_ _g2211222927_)))
                   _tl2212822937_)
                  (_g2209122923_ _g2211222927_))
              (_g2209122923_ _g2211222927_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2209122923_ _g2211222927_)))))
                                   (let ((_g2208923093_
                                          (lambda (_g2211223012_)
                                            (if (gx#stx-pair? _g2211223012_)
                                                (let ((_e2212223015_
                                                       (gx#syntax-e
                                                        _g2211223012_)))
                                                  (let ((_hd2212323019_
                                                         (##car _e2212223015_))
                                                        (_tl2212423022_
                                                         (##cdr _e2212223015_)))
                                                    (if (gx#identifier?
                                                         _hd2212323019_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core::<match>[1]#_g28136_|
                                                             _hd2212323019_)
                                                            ((lambda (_L23025_)
                                                               (if (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L23025_)
                           (let ((_g2303723048_
                                  (lambda (_g2303823044_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g2303823044_))))
                             (let ((_g2303623059_
                                    (lambda (_g2303823052_)
                                      ((lambda ()
                                         (cons 'and:
                                               (gx#stx-map
                                                _parse121739_
                                                _L23025_)))))))
                               (let ((_g2303523089_
                                      (lambda (_g2303823063_)
                                        (if (gx#stx-pair? _g2303823063_)
                                            (let ((_e2304023066_
                                                   (gx#syntax-e
                                                    _g2303823063_)))
                                              (let ((_hd2304123070_
                                                     (##car _e2304023066_))
                                                    (_tl2304223073_
                                                     (##cdr _e2304023066_)))
                                                (if (gx#stx-null?
                                                     _tl2304223073_)
                                                    ((lambda (_L23076_)
                                                       (_parse121739_
                                                        _L23076_))
                                                     _hd2304123070_)
                                                    (_g2303623059_
                                                     _g2303823063_))))
                                            (_g2303623059_ _g2303823063_)))))
                                 (_g2303523089_ _L23025_))))
                           (_g2209023008_ _g2211223012_)))
                     _tl2212423022_)
                    (_g2209023008_ _g2211223012_))
                (_g2209023008_ _g2211223012_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2209023008_
                                                 _g2211223012_)))))
                                     (let ((_g2208823333_
                                            (lambda (_g2211223097_)
                                              (if (gx#stx-pair? _g2211223097_)
                                                  (let ((_e2211523100_
                                                         (gx#syntax-e
                                                          _g2211223097_)))
                                                    (let ((_hd2211623104_
                                                           (##car _e2211523100_))
                                                          (_tl2211723107_
                                                           (##cdr _e2211523100_)))
                                                      (if (gx#identifier?
                                                           _hd2211623104_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core::<match>[1]#_g28137_|
                                                               _hd2211623104_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2211723107_)
                          (let ((_e2211823110_ (gx#syntax-e _tl2211723107_)))
                            (let ((_hd2211923114_ (##car _e2211823110_))
                                  (_tl2212023117_ (##cdr _e2211823110_)))
                              ((lambda (_L23120_ _L23122_)
                                 (let ((_g2313923171_
                                        (lambda (_g2314023167_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g2314023167_))))
                                   (let ((_g2313823182_
                                          (lambda (_g2314023175_)
                                            ((lambda ()
                                               (_parse-error21746_
                                                _hd22086_))))))
                                     (let ((_g2313723250_
                                            (lambda (_g2314023186_)
                                              (if (gx#stx-pair? _g2314023186_)
                                                  (let ((_e2315423189_
                                                         (gx#syntax-e
                                                          _g2314023186_)))
                                                    (let ((_hd2315523193_
                                                           (##car _e2315423189_))
                                                          (_tl2315623196_
                                                           (##cdr _e2315423189_)))
                                                      (if (gx#stx-datum?
                                                           _hd2315523193_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2315523193_)
                              '::)
                      (if (gx#stx-pair? _tl2315623196_)
                          (let ((_e2315723199_ (gx#syntax-e _tl2315623196_)))
                            (let ((_hd2315823203_ (##car _e2315723199_))
                                  (_tl2315923206_ (##cdr _e2315723199_)))
                              (if (gx#stx-pair? _tl2315923206_)
                                  (let ((_e2316023209_
                                         (gx#syntax-e _tl2315923206_)))
                                    (let ((_hd2316123213_
                                           (##car _e2316023209_))
                                          (_tl2316223216_
                                           (##cdr _e2316023209_)))
                                      (if (gx#identifier? _hd2316123213_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core::<match>[1]#_g28138_|
                                               _hd2316123213_)
                                              (if (gx#stx-pair? _tl2316223216_)
                                                  (let ((_e2316323219_
                                                         (gx#syntax-e
                                                          _tl2316223216_)))
                                                    (let ((_hd2316423223_
                                                           (##car _e2316323219_))
                                                          (_tl2316523226_
                                                           (##cdr _e2316323219_)))
                                                      (if (gx#stx-null?
                                                           _tl2316523226_)
                                                          ((lambda (_L23229_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L23231_)
                     (cons '?:
                           (cons _L23122_
                                 (cons '::
                                       (cons _L23231_
                                             (cons '=>:
                                                   (cons (_parse121739_
                                                          _L23229_)
                                                         '())))))))
                   _hd2316423223_
                   _hd2315823203_)
                  (_g2313823182_ _g2314023186_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2313823182_
                                                   _g2314023186_))
                                              (_g2313823182_ _g2314023186_))
                                          (_g2313823182_ _g2314023186_))))
                                  (_g2313823182_ _g2314023186_))))
                          (_g2313823182_ _g2314023186_))
                      (_g2313823182_ _g2314023186_))
                  (_g2313823182_ _g2314023186_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2313823182_
                                                   _g2314023186_)))))
                                       (let ((_g2313623290_
                                              (lambda (_g2314023254_)
                                                (if (gx#stx-pair?
                                                     _g2314023254_)
                                                    (let ((_e2314623257_
                                                           (gx#syntax-e
                                                            _g2314023254_)))
                                                      (let ((_hd2314723261_
                                                             (##car _e2314623257_))
                                                            (_tl2314823264_
                                                             (##cdr _e2314623257_)))
                                                        (if (gx#identifier?
                                                             _hd2314723261_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core::<match>[1]#_g28139_|
                         _hd2314723261_)
                        (if (gx#stx-pair? _tl2314823264_)
                            (let ((_e2314923267_ (gx#syntax-e _tl2314823264_)))
                              (let ((_hd2315023271_ (##car _e2314923267_))
                                    (_tl2315123274_ (##cdr _e2314923267_)))
                                (if (gx#stx-null? _tl2315123274_)
                                    ((lambda (_L23277_)
                                       (cons '?:
                                             (cons _L23122_
                                                   (cons '=>:
                                                         (cons (_parse121739_
                                                                _L23277_)
                                                               '())))))
                                     _hd2315023271_)
                                    (_g2313723250_ _g2314023254_))))
                            (_g2313723250_ _g2314023254_))
                        (_g2313723250_ _g2314023254_))
                    (_g2313723250_ _g2314023254_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2313723250_
                                                     _g2314023254_)))))
                                         (let ((_g2313523318_
                                                (lambda (_g2314023294_)
                                                  (if (gx#stx-pair?
                                                       _g2314023294_)
                                                      (let ((_e2314223297_
                                                             (gx#syntax-e
                                                              _g2314023294_)))
                                                        (let ((_hd2314323301_
                                                               (##car _e2314223297_))
                                                              (_tl2314423304_
                                                               (##cdr _e2314223297_)))
                                                          (if (gx#stx-null?
                                                               _tl2314423304_)
                                                              ((lambda (_L23307_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '?:
                               (cons _L23122_
                                     (cons (_parse121739_ _L23307_) '()))))
                       _hd2314323301_)
                      (_g2313623290_ _g2314023294_))))
              (_g2313623290_ _g2314023294_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_g2313423329_
                                                  (lambda (_g2314023322_)
                                                    (if (gx#stx-null?
                                                         _g2314023322_)
                                                        ((lambda ()
                                                           (cons '?:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L23122_ '()))))
                (_g2313523318_ _g2314023322_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2313423329_ _L23120_))))))))
                               _tl2212023117_
                               _hd2211923114_)))
                          (_g2208923093_ _g2211223097_))
                      (_g2208923093_ _g2211223097_))
                  (_g2208923093_ _g2211223097_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2208923093_
                                                   _g2211223097_)))))
                                       (_g2208823333_
                                        _hd22086_)))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (_parse-list21741_
                             (lambda (_body21921_)
                               (let ((_g2192721955_
                                      (lambda (_g2192821951_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g2192821951_))))
                                 (let ((_g2192621966_
                                        (lambda (_g2192821959_)
                                          ((lambda ()
                                             (if (gx#stx-null? _body21921_)
                                                 (cons 'null: '())
                                                 (if (not (gx#stx-pair?
                                                           _body21921_))
                                                     (_parse121739_
                                                      _body21921_)
                                                     (_parse-error21746_
                                                      _body21921_))))))))
                                   (let ((_g2192521998_
                                          (lambda (_g2192821970_)
                                            (if (gx#stx-pair? _g2192821970_)
                                                (let ((_e2194721973_
                                                       (gx#syntax-e
                                                        _g2192821970_)))
                                                  (let ((_hd2194821977_
                                                         (##car _e2194721973_))
                                                        (_tl2194921980_
                                                         (##cdr _e2194721973_)))
                                                    ((lambda (_L21983_
                                                              _L21985_)
                                                       (if (not (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L21985_))
                   (cons 'cons:
                         (cons (_parse121739_ _L21985_)
                               (cons (_parse-list21741_ _L21983_) '())))
                   (_g2192621966_ _g2192821970_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _tl2194921980_
                                                     _hd2194821977_)))
                                                (_g2192621966_
                                                 _g2192821970_)))))
                                     (let ((_g2192422042_
                                            (lambda (_g2192822002_)
                                              (if (gx#stx-pair? _g2192822002_)
                                                  (let ((_e2193922005_
                                                         (gx#syntax-e
                                                          _g2192822002_)))
                                                    (let ((_hd2194022009_
                                                           (##car _e2193922005_))
                                                          (_tl2194122012_
                                                           (##cdr _e2193922005_)))
                                                      (if (gx#stx-pair?
                                                           _tl2194122012_)
                                                          (let ((_e2194222015_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2194122012_)))
                    (let ((_hd2194322019_ (##car _e2194222015_))
                          (_tl2194422022_ (##cdr _e2194222015_)))
                      ((lambda (_L22025_ _L22027_ _L22028_)
                         (if (gx#ellipsis? _L22027_)
                             (cons 'splice:
                                   (cons (_parse121739_ _L22028_)
                                         (cons (_parse-list21741_ _L22025_)
                                               '())))
                             (_g2192521998_ _g2192822002_)))
                       _tl2194422022_
                       _hd2194322019_
                       _hd2194022009_)))
                  (_g2192521998_ _g2192822002_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2192521998_
                                                   _g2192822002_)))))
                                       (let ((_g2192322082_
                                              (lambda (_g2192822046_)
                                                (if (gx#stx-pair?
                                                     _g2192822046_)
                                                    (let ((_e2193022049_
                                                           (gx#syntax-e
                                                            _g2192822046_)))
                                                      (let ((_hd2193122053_
                                                             (##car _e2193022049_))
                                                            (_tl2193222056_
                                                             (##cdr _e2193022049_)))
                                                        (if (gx#stx-datum?
                                                             _hd2193122053_)
                                                            (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _hd2193122053_)
                                '::)
                        (if (gx#stx-pair? _tl2193222056_)
                            (let ((_e2193322059_ (gx#syntax-e _tl2193222056_)))
                              (let ((_hd2193422063_ (##car _e2193322059_))
                                    (_tl2193522066_ (##cdr _e2193322059_)))
                                (if (gx#stx-null? _tl2193522066_)
                                    ((lambda (_L22069_)
                                       (_parse121739_ _L22069_))
                                     _hd2193422063_)
                                    (_g2192422042_ _g2192822046_))))
                            (_g2192422042_ _g2192822046_))
                        (_g2192422042_ _g2192822046_))
                    (_g2192422042_ _g2192822046_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2192422042_
                                                     _g2192822046_)))))
                                         (_g2192322082_ _body21921_))))))))
                            (_parse-vector21742_
                             (lambda (_body21918_)
                               (if (_simple-vector?21743_ _body21918_)
                                   (cons 'simple:
                                         (cons (gx#stx-map
                                                _parse121739_
                                                _body21918_)
                                               '()))
                                   (cons 'list:
                                         (cons (_parse-list21741_ _body21918_)
                                               '())))))
                            (_simple-vector?21743_
                             (lambda (_body21855_)
                               (let ((_g2185921871_
                                      (lambda (_g2186021867_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g2186021867_))))
                                 (let ((_g2185821882_
                                        (lambda (_g2186021875_)
                                          ((lambda ()
                                             (gx#stx-null? _body21855_))))))
                                   (let ((_g2185721914_
                                          (lambda (_g2186021886_)
                                            (if (gx#stx-pair? _g2186021886_)
                                                (let ((_e2186321889_
                                                       (gx#syntax-e
                                                        _g2186021886_)))
                                                  (let ((_hd2186421893_
                                                         (##car _e2186321889_))
                                                        (_tl2186521896_
                                                         (##cdr _e2186321889_)))
                                                    ((lambda (_L21899_
                                                              _L21901_)
                                                       (if (not (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L21901_))
                   (_simple-vector?21743_ _L21899_)
                   '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _tl2186521896_
                                                     _hd2186421893_)))
                                                (_g2185821882_
                                                 _g2186021886_)))))
                                     (_g2185721914_ _body21855_))))))
                            (_parse-class-body21744_
                             (lambda (_body21764_)
                               ((letrec ((_recur21767_
                                          (lambda (_rest21770_)
                                            (let ((_g2177421790_
                                                   (lambda (_g2177521786_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2177521786_))))
                                              (let ((_g2177321801_
                                                     (lambda (_g2177521794_)
                                                       ((lambda ()
                                                          (if (gx#stx-null?
                                                               _rest21770_)
                                                              '()
                                                              (_parse-error21746_
                                                               _rest21770_)))))))
                                                (let ((_g2177221851_
                                                       (lambda (_g2177521805_)
                                                         (if (gx#stx-pair?
                                                              _g2177521805_)
                                                             (let ((_e2177921808_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g2177521805_)))
                       (let ((_hd2178021812_ (##car _e2177921808_))
                             (_tl2178121815_ (##cdr _e2177921808_)))
                         (if (gx#stx-pair? _tl2178121815_)
                             (let ((_e2178221818_
                                    (gx#syntax-e _tl2178121815_)))
                               (let ((_hd2178321822_ (##car _e2178221818_))
                                     (_tl2178421825_ (##cdr _e2178221818_)))
                                 ((lambda (_L21828_ _L21830_ _L21831_)
                                    (if (gx#stx-keyword? _L21831_)
                                        (cons* _L21831_
                                               (_parse121739_ _L21830_)
                                               (_recur21767_ _L21828_))
                                        (_g2177321801_ _g2177521805_)))
                                  _tl2178421825_
                                  _hd2178321822_
                                  _hd2178021812_)))
                             (_g2177321801_ _g2177521805_))))
                     (_g2177321801_ _g2177521805_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2177221851_
                                                   _rest21770_)))))))
                                  _recur21767_)
                                _body21764_))))
                     (_parse121739_ _stx21735_)))))))
        (lambda _g28141_
          (let ((_g28140_ (length _g28141_)))
            (cond ((fx= _g28140_ 1)
                   (apply (lambda (_stx23341_)
                            (let ((_match-stx23344_ '#f))
                              (_opt-lambda2173323337_
                               _stx23341_
                               _match-stx23344_)))
                          _g28141_))
                  ((fx= _g28140_ 2)
                   (apply (lambda (_stx23347_ _match-stx23349_)
                            (_opt-lambda2173323337_
                             _stx23347_
                             _match-stx23349_))
                          _g28141_))
                  (else (error "No clause matching arguments" _g28141_)))))))
    (define |gerbil/core::<match>[1]#match-pattern?|
      (lambda (_stx21719_)
        (call-with-escape
         (lambda (_E21723_)
           (with-exception-handler
            (let ((_E!21726_ (current-exception-handler)))
              (lambda (_e21729_)
                (if (gx#syntax-error? _e21729_)
                    (_E21723_ '#f)
                    (_E!21726_ _e21729_))))
            (lambda ()
              (begin
                (|gerbil/core::<match>[1]#parse-match-pattern| _stx21719_)
                '#t)))))))
    (define |gerbil/core::<match>[1]#match-pattern-vars|
      (lambda (_ptree20574_)
        (letrec ((_loop20577_
                  (lambda (_ptree20852_ _vars20854_ _K20855_)
                    (let ((_g2086720957_
                           (lambda (_g2086820953_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2086820953_))))
                      (let ((_g2086620968_
                             (lambda (_g2086820961_)
                               ((lambda () (_K20855_ _vars20854_))))))
                        (let ((_g2086521015_
                               (lambda (_g2086820972_)
                                 (if (gx#stx-pair? _g2086820972_)
                                     (let ((_e2094620975_
                                            (gx#syntax-e _g2086820972_)))
                                       (let ((_hd2094720979_
                                              (##car _e2094620975_))
                                             (_tl2094820982_
                                              (##cdr _e2094620975_)))
                                         (if (gx#stx-datum? _hd2094720979_)
                                             (if (equal? (gx#stx-e
                                                          _hd2094720979_)
                                                         'var:)
                                                 (if (gx#stx-pair?
                                                      _tl2094820982_)
                                                     (let ((_e2094920985_
                                                            (gx#syntax-e
                                                             _tl2094820982_)))
                                                       (let ((_hd2095020989_
                                                              (##car _e2094920985_))
                                                             (_tl2095120992_
                                                              (##cdr _e2094920985_)))
                                                         (if (gx#stx-null?
                                                              _tl2095120992_)
                                                             ((lambda (_L20995_)
                                                                (if (find (lambda (_g2100921011_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (gx#bound-identifier=?
                                     _g2100921011_
                                     _L20995_))
                                  _vars20854_)
                            (_K20855_ _vars20854_)
                            (_K20855_ (cons _L20995_ _vars20854_))))
                      _hd2095020989_)
                     (_g2086620968_ _g2086820972_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2086620968_
                                                      _g2086820972_))
                                                 (_g2086620968_ _g2086820972_))
                                             (_g2086620968_ _g2086820972_))))
                                     (_g2086620968_ _g2086820972_)))))
                          (let ((_g2086421067_
                                 (lambda (_g2086821019_)
                                   (if (gx#stx-pair? _g2086821019_)
                                       (let ((_e2093621022_
                                              (gx#syntax-e _g2086821019_)))
                                         (let ((_hd2093721026_
                                                (##car _e2093621022_))
                                               (_tl2093821029_
                                                (##cdr _e2093621022_)))
                                           (if (gx#stx-datum? _hd2093721026_)
                                               (if (equal? (gx#stx-e
                                                            _hd2093721026_)
                                                           'class:)
                                                   (if (gx#stx-pair?
                                                        _tl2093821029_)
                                                       (let ((_e2093921032_
                                                              (gx#syntax-e
                                                               _tl2093821029_)))
                                                         (let ((_hd2094021036_
                                                                (##car _e2093921032_))
                                                               (_tl2094121039_
                                                                (##cdr _e2093921032_)))
                                                           (if (gx#stx-pair?
                                                                _tl2094121039_)
                                                               (let ((_e2094221042_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2094121039_)))
                         (let ((_hd2094321046_ (##car _e2094221042_))
                               (_tl2094421049_ (##cdr _e2094221042_)))
                           (if (gx#stx-null? _tl2094421049_)
                               ((lambda (_L21052_)
                                  (_loop-class-list20581_
                                   _L21052_
                                   _vars20854_
                                   _K20855_))
                                _hd2094321046_)
                               (_g2086521015_ _g2086821019_))))
                       (_g2086521015_ _g2086821019_))))
               (_g2086521015_ _g2086821019_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2086521015_
                                                    _g2086821019_))
                                               (_g2086521015_ _g2086821019_))))
                                       (_g2086521015_ _g2086821019_)))))
                            (let ((_g2086321119_
                                   (lambda (_g2086821071_)
                                     (if (gx#stx-pair? _g2086821071_)
                                         (let ((_e2092621074_
                                                (gx#syntax-e _g2086821071_)))
                                           (let ((_hd2092721078_
                                                  (##car _e2092621074_))
                                                 (_tl2092821081_
                                                  (##cdr _e2092621074_)))
                                             (if (gx#stx-datum? _hd2092721078_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2092721078_)
                                                             'struct:)
                                                     (if (gx#stx-pair?
                                                          _tl2092821081_)
                                                         (let ((_e2092921084_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2092821081_)))
                   (let ((_hd2093021088_ (##car _e2092921084_))
                         (_tl2093121091_ (##cdr _e2092921084_)))
                     (if (gx#stx-pair? _tl2093121091_)
                         (let ((_e2093221094_ (gx#syntax-e _tl2093121091_)))
                           (let ((_hd2093321098_ (##car _e2093221094_))
                                 (_tl2093421101_ (##cdr _e2093221094_)))
                             (if (gx#stx-null? _tl2093421101_)
                                 ((lambda (_L21104_)
                                    (_loop-vector20579_
                                     _L21104_
                                     _vars20854_
                                     _K20855_))
                                  _hd2093321098_)
                                 (_g2086421067_ _g2086821071_))))
                         (_g2086421067_ _g2086821071_))))
                 (_g2086421067_ _g2086821071_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2086421067_
                                                      _g2086821071_))
                                                 (_g2086421067_
                                                  _g2086821071_))))
                                         (_g2086421067_ _g2086821071_)))))
                              (let ((_g2086221165_
                                     (lambda (_g2086821123_)
                                       (if (gx#stx-pair? _g2086821123_)
                                           (let ((_e2091921126_
                                                  (gx#syntax-e _g2086821123_)))
                                             (let ((_hd2092021130_
                                                    (##car _e2091921126_))
                                                   (_tl2092121133_
                                                    (##cdr _e2091921126_)))
                                               (if (gx#stx-pair?
                                                    _tl2092121133_)
                                                   (let ((_e2092221136_
                                                          (gx#syntax-e
                                                           _tl2092121133_)))
                                                     (let ((_hd2092321140_
                                                            (##car _e2092221136_))
                                                           (_tl2092421143_
                                                            (##cdr _e2092221136_)))
                                                       (if (gx#stx-null?
                                                            _tl2092421143_)
                                                           ((lambda (_L21146_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L21148_)
                      (if (let ((_$e21161_ (gx#stx-eq? 'values: _L21148_)))
                            (if _$e21161_
                                _$e21161_
                                (gx#stx-eq? 'vector: _L21148_)))
                          (_loop-vector20579_ _L21146_ _vars20854_ _K20855_)
                          (_g2086321119_ _g2086821123_)))
                    _hd2092321140_
                    _hd2092021130_)
                   (_g2086321119_ _g2086821123_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2086321119_
                                                    _g2086821123_))))
                                           (_g2086321119_ _g2086821123_)))))
                                (let ((_g2086121205_
                                       (lambda (_g2086821169_)
                                         (if (gx#stx-pair? _g2086821169_)
                                             (let ((_e2091121172_
                                                    (gx#syntax-e
                                                     _g2086821169_)))
                                               (let ((_hd2091221176_
                                                      (##car _e2091121172_))
                                                     (_tl2091321179_
                                                      (##cdr _e2091121172_)))
                                                 (if (gx#stx-datum?
                                                      _hd2091221176_)
                                                     (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd2091221176_)
                         'box:)
                 (if (gx#stx-pair? _tl2091321179_)
                     (let ((_e2091421182_ (gx#syntax-e _tl2091321179_)))
                       (let ((_hd2091521186_ (##car _e2091421182_))
                             (_tl2091621189_ (##cdr _e2091421182_)))
                         (if (gx#stx-null? _tl2091621189_)
                             ((lambda (_L21192_)
                                (_loop20577_ _L21192_ _vars20854_ _K20855_))
                              _hd2091521186_)
                             (_g2086221165_ _g2086821169_))))
                     (_g2086221165_ _g2086821169_))
                 (_g2086221165_ _g2086821169_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2086221165_
                                                      _g2086821169_))))
                                             (_g2086221165_ _g2086821169_)))))
                                  (let ((_g2086021264_
                                         (lambda (_g2086821209_)
                                           (if (gx#stx-pair? _g2086821209_)
                                               (let ((_e2090121212_
                                                      (gx#syntax-e
                                                       _g2086821209_)))
                                                 (let ((_hd2090221216_
                                                        (##car _e2090121212_))
                                                       (_tl2090321219_
                                                        (##cdr _e2090121212_)))
                                                   (if (gx#stx-datum?
                                                        _hd2090221216_)
                                                       (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd2090221216_)
                           'splice:)
                   (if (gx#stx-pair? _tl2090321219_)
                       (let ((_e2090421222_ (gx#syntax-e _tl2090321219_)))
                         (let ((_hd2090521226_ (##car _e2090421222_))
                               (_tl2090621229_ (##cdr _e2090421222_)))
                           (if (gx#stx-pair? _tl2090621229_)
                               (let ((_e2090721232_
                                      (gx#syntax-e _tl2090621229_)))
                                 (let ((_hd2090821236_ (##car _e2090721232_))
                                       (_tl2090921239_ (##cdr _e2090721232_)))
                                   (if (gx#stx-null? _tl2090921239_)
                                       ((lambda (_L21242_ _L21244_)
                                          (_loop20577_
                                           _L21244_
                                           _vars20854_
                                           (lambda (_g2125821260_)
                                             (_loop20577_
                                              _L21242_
                                              _g2125821260_
                                              _K20855_))))
                                        _hd2090821236_
                                        _hd2090521226_)
                                       (_g2086121205_ _g2086821209_))))
                               (_g2086121205_ _g2086821209_))))
                       (_g2086121205_ _g2086821209_))
                   (_g2086121205_ _g2086821209_))
               (_g2086121205_ _g2086821209_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2086121205_
                                                _g2086821209_)))))
                                    (let ((_g2085921323_
                                           (lambda (_g2086821268_)
                                             (if (gx#stx-pair? _g2086821268_)
                                                 (let ((_e2089021271_
                                                        (gx#syntax-e
                                                         _g2086821268_)))
                                                   (let ((_hd2089121275_
                                                          (##car _e2089021271_))
                                                         (_tl2089221278_
                                                          (##cdr _e2089021271_)))
                                                     (if (gx#stx-datum?
                                                          _hd2089121275_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2089121275_)
                             'cons:)
                     (if (gx#stx-pair? _tl2089221278_)
                         (let ((_e2089321281_ (gx#syntax-e _tl2089221278_)))
                           (let ((_hd2089421285_ (##car _e2089321281_))
                                 (_tl2089521288_ (##cdr _e2089321281_)))
                             (if (gx#stx-pair? _tl2089521288_)
                                 (let ((_e2089621291_
                                        (gx#syntax-e _tl2089521288_)))
                                   (let ((_hd2089721295_ (##car _e2089621291_))
                                         (_tl2089821298_
                                          (##cdr _e2089621291_)))
                                     (if (gx#stx-null? _tl2089821298_)
                                         ((lambda (_L21301_ _L21303_)
                                            (_loop20577_
                                             _L21303_
                                             _vars20854_
                                             (lambda (_g2131721319_)
                                               (_loop20577_
                                                _L21301_
                                                _g2131721319_
                                                _K20855_))))
                                          _hd2089721295_
                                          _hd2089421285_)
                                         (_g2086021264_ _g2086821268_))))
                                 (_g2086021264_ _g2086821268_))))
                         (_g2086021264_ _g2086821268_))
                     (_g2086021264_ _g2086821268_))
                 (_g2086021264_ _g2086821268_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2086021264_
                                                  _g2086821268_)))))
                                      (let ((_g2085821363_
                                             (lambda (_g2086821327_)
                                               (if (gx#stx-pair? _g2086821327_)
                                                   (let ((_e2088221330_
                                                          (gx#syntax-e
                                                           _g2086821327_)))
                                                     (let ((_hd2088321334_
                                                            (##car _e2088221330_))
                                                           (_tl2088421337_
                                                            (##cdr _e2088221330_)))
                                                       (if (gx#stx-datum?
                                                            _hd2088321334_)
                                                           (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd2088321334_)
                               'not:)
                       (if (gx#stx-pair? _tl2088421337_)
                           (let ((_e2088521340_ (gx#syntax-e _tl2088421337_)))
                             (let ((_hd2088621344_ (##car _e2088521340_))
                                   (_tl2088721347_ (##cdr _e2088521340_)))
                               (if (gx#stx-null? _tl2088721347_)
                                   ((lambda (_L21350_)
                                      (_loop20577_
                                       _L21350_
                                       _vars20854_
                                       _K20855_))
                                    _hd2088621344_)
                                   (_g2085921323_ _g2086821327_))))
                           (_g2085921323_ _g2086821327_))
                       (_g2085921323_ _g2086821327_))
                   (_g2085921323_ _g2086821327_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2085921323_
                                                    _g2086821327_)))))
                                        (let ((_g2085721462_
                                               (lambda (_g2086821367_)
                                                 (if (gx#stx-pair?
                                                      _g2086821367_)
                                                     (let ((_e2087821370_
                                                            (gx#syntax-e
                                                             _g2086821367_)))
                                                       (let ((_hd2087921374_
                                                              (##car _e2087821370_))
                                                             (_tl2088021377_
                                                              (##cdr _e2087821370_)))
                                                         ((lambda (_L21380_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L21382_)
                    (if (let ((_$e21393_ (gx#stx-eq? 'and: _L21382_)))
                          (if _$e21393_ _$e21393_ (gx#stx-eq? 'or: _L21382_)))
                        (let ((_g2139821410_
                               (lambda (_g2139921406_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2139921406_))))
                          (let ((_g2139721421_
                                 (lambda (_g2139921414_)
                                   ((lambda () (_K20855_ _vars20854_))))))
                            (let ((_g2139621458_
                                   (lambda (_g2139921425_)
                                     (if (gx#stx-pair? _g2139921425_)
                                         (let ((_e2140221428_
                                                (gx#syntax-e _g2139921425_)))
                                           (let ((_hd2140321432_
                                                  (##car _e2140221428_))
                                                 (_tl2140421435_
                                                  (##cdr _e2140221428_)))
                                             ((lambda (_L21438_ _L21440_)
                                                (_loop20577_
                                                 _L21440_
                                                 _vars20854_
                                                 (lambda (_g2145221454_)
                                                   (_loop20577_
                                                    (cons _L21382_ _L21438_)
                                                    _g2145221454_
                                                    _K20855_))))
                                              _tl2140421435_
                                              _hd2140321432_)))
                                         (_g2139721421_ _g2139921425_)))))
                              (_g2139621458_ _L21380_))))
                        (_g2085821363_ _g2086821367_)))
                  _tl2088021377_
                  _hd2087921374_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2085821363_
                                                      _g2086821367_)))))
                                          (let ((_g2085621715_
                                                 (lambda (_g2086821466_)
                                                   (if (gx#stx-pair?
                                                        _g2086821466_)
                                                       (let ((_e2087021469_
                                                              (gx#syntax-e
                                                               _g2086821466_)))
                                                         (let ((_hd2087121473_
                                                                (##car _e2087021469_))
                                                               (_tl2087221476_
                                                                (##cdr _e2087021469_)))
                                                           (if (gx#stx-datum?
                                                                _hd2087121473_)
                                                               (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _hd2087121473_)
                                   '?:)
                           (if (gx#stx-pair? _tl2087221476_)
                               (let ((_e2087321479_
                                      (gx#syntax-e _tl2087221476_)))
                                 (let ((_hd2087421483_ (##car _e2087321479_))
                                       (_tl2087521486_ (##cdr _e2087321479_)))
                                   ((lambda (_L21489_)
                                      (let ((_g2150521542_
                                             (lambda (_g2150621538_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2150621538_))))
                                        (let ((_g2150421553_
                                               (lambda (_g2150621546_)
                                                 ((lambda ()
                                                    (_K20855_ _vars20854_))))))
                                          (let ((_g2150321631_
                                                 (lambda (_g2150621557_)
                                                   (if (gx#stx-pair?
                                                        _g2150621557_)
                                                       (let ((_e2152221560_
                                                              (gx#syntax-e
                                                               _g2150621557_)))
                                                         (let ((_hd2152321564_
                                                                (##car _e2152221560_))
                                                               (_tl2152421567_
                                                                (##cdr _e2152221560_)))
                                                           (if (gx#stx-pair?
                                                                _tl2152421567_)
                                                               (let ((_e2152521570_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2152421567_)))
                         (let ((_hd2152621574_ (##car _e2152521570_))
                               (_tl2152721577_ (##cdr _e2152521570_)))
                           (if (gx#stx-datum? _hd2152621574_)
                               (if (equal? (gx#stx-e _hd2152621574_) '::)
                                   (if (gx#stx-pair? _tl2152721577_)
                                       (let ((_e2152821580_
                                              (gx#syntax-e _tl2152721577_)))
                                         (let ((_hd2152921584_
                                                (##car _e2152821580_))
                                               (_tl2153021587_
                                                (##cdr _e2152821580_)))
                                           (if (gx#stx-pair? _tl2153021587_)
                                               (let ((_e2153121590_
                                                      (gx#syntax-e
                                                       _tl2153021587_)))
                                                 (let ((_hd2153221594_
                                                        (##car _e2153121590_))
                                                       (_tl2153321597_
                                                        (##cdr _e2153121590_)))
                                                   (if (gx#stx-datum?
                                                        _hd2153221594_)
                                                       (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd2153221594_)
                           '=>:)
                   (if (gx#stx-pair? _tl2153321597_)
                       (let ((_e2153421600_ (gx#syntax-e _tl2153321597_)))
                         (let ((_hd2153521604_ (##car _e2153421600_))
                               (_tl2153621607_ (##cdr _e2153421600_)))
                           (if (gx#stx-null? _tl2153621607_)
                               ((lambda (_L21610_)
                                  (_loop20577_ _L21610_ _vars20854_ _K20855_))
                                _hd2153521604_)
                               (_g2150421553_ _g2150621557_))))
                       (_g2150421553_ _g2150621557_))
                   (_g2150421553_ _g2150621557_))
               (_g2150421553_ _g2150621557_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2150421553_ _g2150621557_))))
                                       (_g2150421553_ _g2150621557_))
                                   (_g2150421553_ _g2150621557_))
                               (_g2150421553_ _g2150621557_))))
                       (_g2150421553_ _g2150621557_))))
               (_g2150421553_ _g2150621557_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_g2150221683_
                                                   (lambda (_g2150621635_)
                                                     (if (gx#stx-pair?
                                                          _g2150621635_)
                                                         (let ((_e2151221638_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2150621635_)))
                   (let ((_hd2151321642_ (##car _e2151221638_))
                         (_tl2151421645_ (##cdr _e2151221638_)))
                     (if (gx#stx-pair? _tl2151421645_)
                         (let ((_e2151521648_ (gx#syntax-e _tl2151421645_)))
                           (let ((_hd2151621652_ (##car _e2151521648_))
                                 (_tl2151721655_ (##cdr _e2151521648_)))
                             (if (gx#stx-datum? _hd2151621652_)
                                 (if (equal? (gx#stx-e _hd2151621652_) '=>:)
                                     (if (gx#stx-pair? _tl2151721655_)
                                         (let ((_e2151821658_
                                                (gx#syntax-e _tl2151721655_)))
                                           (let ((_hd2151921662_
                                                  (##car _e2151821658_))
                                                 (_tl2152021665_
                                                  (##cdr _e2151821658_)))
                                             (if (gx#stx-null? _tl2152021665_)
                                                 ((lambda (_L21668_)
                                                    (_loop20577_
                                                     _L21668_
                                                     _vars20854_
                                                     _K20855_))
                                                  _hd2151921662_)
                                                 (_g2150321631_
                                                  _g2150621635_))))
                                         (_g2150321631_ _g2150621635_))
                                     (_g2150321631_ _g2150621635_))
                                 (_g2150321631_ _g2150621635_))))
                         (_g2150321631_ _g2150621635_))))
                 (_g2150321631_ _g2150621635_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g2150121711_
                                                     (lambda (_g2150621687_)
                                                       (if (gx#stx-pair?
                                                            _g2150621687_)
                                                           (let ((_e2150821690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g2150621687_)))
                     (let ((_hd2150921694_ (##car _e2150821690_))
                           (_tl2151021697_ (##cdr _e2150821690_)))
                       (if (gx#stx-null? _tl2151021697_)
                           ((lambda (_L21700_)
                              (_loop20577_ _L21700_ _vars20854_ _K20855_))
                            _hd2150921694_)
                           (_g2150221683_ _g2150621687_))))
                   (_g2150221683_ _g2150621687_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2150121711_ _L21489_)))))))
                                    _tl2087521486_)))
                               (_g2085721462_ _g2086821466_))
                           (_g2085721462_ _g2086821466_))
                       (_g2085721462_ _g2086821466_))))
               (_g2085721462_ _g2086821466_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2085621715_
                                             _ptree20852_)))))))))))))))
                 (_loop-vector20579_
                  (lambda (_body20740_ _vars20742_ _K20743_)
                    (let ((_g2074620767_
                           (lambda (_g2074720763_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2074720763_))))
                      (let ((_g2074520808_
                             (lambda (_g2074720771_)
                               (if (gx#stx-pair? _g2074720771_)
                                   (let ((_e2075620774_
                                          (gx#syntax-e _g2074720771_)))
                                     (let ((_hd2075720778_
                                            (##car _e2075620774_))
                                           (_tl2075820781_
                                            (##cdr _e2075620774_)))
                                       (if (gx#stx-datum? _hd2075720778_)
                                           (if (equal? (gx#stx-e
                                                        _hd2075720778_)
                                                       'list:)
                                               (if (gx#stx-pair?
                                                    _tl2075820781_)
                                                   (let ((_e2075920784_
                                                          (gx#syntax-e
                                                           _tl2075820781_)))
                                                     (let ((_hd2076020788_
                                                            (##car _e2075920784_))
                                                           (_tl2076120791_
                                                            (##cdr _e2075920784_)))
                                                       (if (gx#stx-null?
                                                            _tl2076120791_)
                                                           ((lambda (_L20794_)
                                                              (_loop20577_
                                                               _L20794_
                                                               _vars20742_
                                                               _K20743_))
                                                            _hd2076020788_)
                                                           (_g2074620767_
                                                            _g2074720771_))))
                                                   (_g2074620767_
                                                    _g2074720771_))
                                               (_g2074620767_ _g2074720771_))
                                           (_g2074620767_ _g2074720771_))))
                                   (_g2074620767_ _g2074720771_)))))
                        (let ((_g2074420848_
                               (lambda (_g2074720812_)
                                 (if (gx#stx-pair? _g2074720812_)
                                     (let ((_e2074920815_
                                            (gx#syntax-e _g2074720812_)))
                                       (let ((_hd2075020819_
                                              (##car _e2074920815_))
                                             (_tl2075120822_
                                              (##cdr _e2074920815_)))
                                         (if (gx#stx-datum? _hd2075020819_)
                                             (if (equal? (gx#stx-e
                                                          _hd2075020819_)
                                                         'simple:)
                                                 (if (gx#stx-pair?
                                                      _tl2075120822_)
                                                     (let ((_e2075220825_
                                                            (gx#syntax-e
                                                             _tl2075120822_)))
                                                       (let ((_hd2075320829_
                                                              (##car _e2075220825_))
                                                             (_tl2075420832_
                                                              (##cdr _e2075220825_)))
                                                         (if (gx#stx-null?
                                                              _tl2075420832_)
                                                             ((lambda (_L20835_)
                                                                (_loop-list20580_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L20835_
                         _vars20742_
                         _K20743_))
                      _hd2075320829_)
                     (_g2074520808_ _g2074720812_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2074520808_
                                                      _g2074720812_))
                                                 (_g2074520808_ _g2074720812_))
                                             (_g2074520808_ _g2074720812_))))
                                     (_g2074520808_ _g2074720812_)))))
                          (_g2074420848_ _body20740_))))))
                 (_loop-list20580_
                  (lambda (_rest20670_ _vars20672_ _K20673_)
                    (let ((_g2067620688_
                           (lambda (_g2067720684_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2067720684_))))
                      (let ((_g2067520699_
                             (lambda (_g2067720692_)
                               ((lambda () (_K20673_ _vars20672_))))))
                        (let ((_g2067420736_
                               (lambda (_g2067720703_)
                                 (if (gx#stx-pair? _g2067720703_)
                                     (let ((_e2068020706_
                                            (gx#syntax-e _g2067720703_)))
                                       (let ((_hd2068120710_
                                              (##car _e2068020706_))
                                             (_tl2068220713_
                                              (##cdr _e2068020706_)))
                                         ((lambda (_L20716_ _L20718_)
                                            (_loop20577_
                                             _L20718_
                                             _vars20672_
                                             (lambda (_g2073020732_)
                                               (_loop-list20580_
                                                _L20716_
                                                _g2073020732_
                                                _K20673_))))
                                          _tl2068220713_
                                          _hd2068120710_)))
                                     (_g2067520699_ _g2067720703_)))))
                          (_g2067420736_ _rest20670_))))))
                 (_loop-class-list20581_
                  (lambda (_rest20583_ _vars20585_ _K20586_)
                    (let ((_g2058920604_
                           (lambda (_g2059020600_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2059020600_))))
                      (let ((_g2058820615_
                             (lambda (_g2059020608_)
                               ((lambda () (_K20586_ _vars20585_))))))
                        (let ((_g2058720666_
                               (lambda (_g2059020619_)
                                 (if (gx#stx-pair? _g2059020619_)
                                     (let ((_e2059320622_
                                            (gx#syntax-e _g2059020619_)))
                                       (let ((_hd2059420626_
                                              (##car _e2059320622_))
                                             (_tl2059520629_
                                              (##cdr _e2059320622_)))
                                         (if (gx#stx-pair? _tl2059520629_)
                                             (let ((_e2059620632_
                                                    (gx#syntax-e
                                                     _tl2059520629_)))
                                               (let ((_hd2059720636_
                                                      (##car _e2059620632_))
                                                     (_tl2059820639_
                                                      (##cdr _e2059620632_)))
                                                 ((lambda (_L20642_ _L20644_)
                                                    (_loop20577_
                                                     _L20644_
                                                     _vars20585_
                                                     (lambda (_g2066020662_)
                                                       (_loop-class-list20581_
                                                        _L20642_
                                                        _g2066020662_
                                                        _K20586_))))
                                                  _tl2059820639_
                                                  _hd2059720636_)))
                                             (_g2058820615_ _g2059020619_))))
                                     (_g2058820615_ _g2059020619_)))))
                          (_g2058720666_ _rest20583_)))))))
          (_loop20577_ _ptree20574_ '() values))))
    (define |gerbil/core::<match>[1]#generate-match1|
      (lambda (_stx17487_ _tgt17489_ _ptree17490_ _K17491_ _E17492_)
        (letrec ((_generate117494_
                  (lambda (_tgt19024_ _ptree19026_ _K19027_ _E19028_)
                    (let ((_g1903019038_
                           (lambda (_g1903119034_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1903119034_))))
                      (let ((_g1902920570_
                             (lambda (_g1903119042_)
                               ((lambda (_L19045_)
                                  (let ()
                                    (let ((_g1907119186_
                                           (lambda (_g1907219182_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1907219182_))))
                                      (let ((_g1907019207_
                                             (lambda (_g1907219190_)
                                               (if (gx#stx-pair? _g1907219190_)
                                                   (let ((_e1917819193_
                                                          (gx#syntax-e
                                                           _g1907219190_)))
                                                     (let ((_hd1917919197_
                                                            (##car _e1917819193_))
                                                           (_tl1918019200_
                                                            (##cdr _e1917819193_)))
                                                       (if (gx#stx-datum?
                                                            _hd1917919197_)
                                                           (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1917919197_)
                               'any:)
                       (if (gx#stx-null? _tl1918019200_)
                           ((lambda () _K19027_))
                           (_g1907119186_ _g1907219190_))
                       (_g1907119186_ _g1907219190_))
                   (_g1907119186_ _g1907219190_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1907119186_
                                                    _g1907219190_)))))
                                        (let ((_g1906919250_
                                               (lambda (_g1907219211_)
                                                 (if (gx#stx-pair?
                                                      _g1907219211_)
                                                     (let ((_e1917219214_
                                                            (gx#syntax-e
                                                             _g1907219211_)))
                                                       (let ((_hd1917319218_
                                                              (##car _e1917219214_))
                                                             (_tl1917419221_
                                                              (##cdr _e1917219214_)))
                                                         (if (gx#stx-datum?
                                                              _hd1917319218_)
                                                             (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _hd1917319218_)
                                 'var:)
                         (if (gx#stx-pair? _tl1917419221_)
                             (let ((_e1917519224_
                                    (gx#syntax-e _tl1917419221_)))
                               (let ((_hd1917619228_ (##car _e1917519224_))
                                     (_tl1917719231_ (##cdr _e1917519224_)))
                                 (if (gx#stx-null? _tl1917719231_)
                                     ((lambda (_L19234_)
                                        (cons (gx#datum->syntax '#f 'let)
                                              (cons (cons (cons _L19234_
                                                                (cons _L19045_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _K19027_ '()))))
                                      _hd1917619228_)
                                     (_g1907019207_ _g1907219211_))))
                             (_g1907019207_ _g1907219211_))
                         (_g1907019207_ _g1907219211_))
                     (_g1907019207_ _g1907219211_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1907019207_
                                                      _g1907219211_)))))
                                          (let ((_g1906819332_
                                                 (lambda (_g1907219254_)
                                                   (if (gx#stx-pair?
                                                        _g1907219254_)
                                                       (let ((_e1916519257_
                                                              (gx#syntax-e
                                                               _g1907219254_)))
                                                         (let ((_hd1916619261_
                                                                (##car _e1916519257_))
                                                               (_tl1916719264_
                                                                (##cdr _e1916519257_)))
                                                           (if (gx#stx-datum?
                                                                _hd1916619261_)
                                                               (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _hd1916619261_)
                                   'datum:)
                           (if (gx#stx-pair? _tl1916719264_)
                               (let ((_e1916819267_
                                      (gx#syntax-e _tl1916719264_)))
                                 (let ((_hd1916919271_ (##car _e1916819267_))
                                       (_tl1917019274_ (##cdr _e1916819267_)))
                                   (if (gx#stx-null? _tl1917019274_)
                                       ((lambda (_L19277_)
                                          (let ((_g1929019298_
                                                 (lambda (_g1929119294_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1929119294_))))
                                            (let ((_g1928919317_
                                                   (lambda (_g1929119302_)
                                                     ((lambda (_L19305_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'if)
                        (cons (cons _L19305_
                                    (cons _L19045_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L19277_ '()))
                                                '())))
                              (cons _K19027_ (cons _E19028_ '()))))))
              _g1929119302_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1928919317_
                                               (let ((_e19321_
                                                      (gx#stx-e _L19277_)))
                                                 (if (let ((_$e19324_
                                                            (symbol? _e19321_)))
                                                       (if _$e19324_
                                                           _$e19324_
                                                           (let ((_$e19328_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (keyword? _e19321_)))
                     (if _$e19328_ _$e19328_ (immediate? _e19321_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##eq?)
                                                     (if (number? _e19321_)
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eqv?)
                                                         (gx#datum->syntax
                                                          '#f
                                                          'equal?))))))))
                                        _hd1916919271_)
                                       (_g1906919250_ _g1907219254_))))
                               (_g1906919250_ _g1907219254_))
                           (_g1906919250_ _g1907219254_))
                       (_g1906919250_ _g1907219254_))))
               (_g1906919250_ _g1907219254_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_g1906719386_
                                                   (lambda (_g1907219336_)
                                                     (if (gx#stx-pair?
                                                          _g1907219336_)
                                                         (let ((_e1915519339_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1907219336_)))
                   (let ((_hd1915619343_ (##car _e1915519339_))
                         (_tl1915719346_ (##cdr _e1915519339_)))
                     (if (gx#stx-datum? _hd1915619343_)
                         (if (equal? (gx#stx-e _hd1915619343_) 'class:)
                             (if (gx#stx-pair? _tl1915719346_)
                                 (let ((_e1915819349_
                                        (gx#syntax-e _tl1915719346_)))
                                   (let ((_hd1915919353_ (##car _e1915819349_))
                                         (_tl1916019356_
                                          (##cdr _e1915819349_)))
                                     (if (gx#stx-pair? _tl1916019356_)
                                         (let ((_e1916119359_
                                                (gx#syntax-e _tl1916019356_)))
                                           (let ((_hd1916219363_
                                                  (##car _e1916119359_))
                                                 (_tl1916319366_
                                                  (##cdr _e1916119359_)))
                                             (if (gx#stx-null? _tl1916319366_)
                                                 ((lambda (_L19369_ _L19371_)
                                                    (_generate-class17500_
                                                     (gx#stx-e _L19371_)
                                                     _tgt19024_
                                                     _L19369_
                                                     _K19027_
                                                     _E19028_))
                                                  _hd1916219363_
                                                  _hd1915919353_)
                                                 (_g1906819332_
                                                  _g1907219336_))))
                                         (_g1906819332_ _g1907219336_))))
                                 (_g1906819332_ _g1907219336_))
                             (_g1906819332_ _g1907219336_))
                         (_g1906819332_ _g1907219336_))))
                 (_g1906819332_ _g1907219336_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g1906619440_
                                                     (lambda (_g1907219390_)
                                                       (if (gx#stx-pair?
                                                            _g1907219390_)
                                                           (let ((_e1914419393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g1907219390_)))
                     (let ((_hd1914519397_ (##car _e1914419393_))
                           (_tl1914619400_ (##cdr _e1914419393_)))
                       (if (gx#stx-datum? _hd1914519397_)
                           (if (equal? (gx#stx-e _hd1914519397_) 'struct:)
                               (if (gx#stx-pair? _tl1914619400_)
                                   (let ((_e1914719403_
                                          (gx#syntax-e _tl1914619400_)))
                                     (let ((_hd1914819407_
                                            (##car _e1914719403_))
                                           (_tl1914919410_
                                            (##cdr _e1914719403_)))
                                       (if (gx#stx-pair? _tl1914919410_)
                                           (let ((_e1915019413_
                                                  (gx#syntax-e
                                                   _tl1914919410_)))
                                             (let ((_hd1915119417_
                                                    (##car _e1915019413_))
                                                   (_tl1915219420_
                                                    (##cdr _e1915019413_)))
                                               (if (gx#stx-null?
                                                    _tl1915219420_)
                                                   ((lambda (_L19423_ _L19425_)
                                                      (_generate-struct17499_
                                                       (gx#stx-e _L19425_)
                                                       _tgt19024_
                                                       _L19423_
                                                       _K19027_
                                                       _E19028_))
                                                    _hd1915119417_
                                                    _hd1914819407_)
                                                   (_g1906719386_
                                                    _g1907219390_))))
                                           (_g1906719386_ _g1907219390_))))
                                   (_g1906719386_ _g1907219390_))
                               (_g1906719386_ _g1907219390_))
                           (_g1906719386_ _g1907219390_))))
                   (_g1906719386_ _g1907219390_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_g1906519618_
                                                       (lambda (_g1907219444_)
                                                         (if (gx#stx-pair?
                                                              _g1907219444_)
                                                             (let ((_e1913619447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g1907219444_)))
                       (let ((_hd1913719451_ (##car _e1913619447_))
                             (_tl1913819454_ (##cdr _e1913619447_)))
                         (if (gx#stx-datum? _hd1913719451_)
                             (if (equal? (gx#stx-e _hd1913719451_) 'vector:)
                                 (if (gx#stx-pair? _tl1913819454_)
                                     (let ((_e1913919457_
                                            (gx#syntax-e _tl1913819454_)))
                                       (let ((_hd1914019461_
                                              (##car _e1913919457_))
                                             (_tl1914119464_
                                              (##cdr _e1913919457_)))
                                         (if (gx#stx-null? _tl1914119464_)
                                             ((lambda (_L19467_)
                                                (let ((_g1948119502_
                                                       (lambda (_g1948219498_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1948219498_))))
                                                  (let ((_g1948019543_
                                                         (lambda (_g1948219506_)
                                                           (if (gx#stx-pair?
                                                                _g1948219506_)
                                                               (let ((_e1949119509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1948219506_)))
                         (let ((_hd1949219513_ (##car _e1949119509_))
                               (_tl1949319516_ (##cdr _e1949119509_)))
                           (if (gx#stx-datum? _hd1949219513_)
                               (if (equal? (gx#stx-e _hd1949219513_) 'list:)
                                   (if (gx#stx-pair? _tl1949319516_)
                                       (let ((_e1949419519_
                                              (gx#syntax-e _tl1949319516_)))
                                         (let ((_hd1949519523_
                                                (##car _e1949419519_))
                                               (_tl1949619526_
                                                (##cdr _e1949419519_)))
                                           (if (gx#stx-null? _tl1949619526_)
                                               ((lambda (_L19529_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'if)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'vector?)
                            (cons _L19045_ '()))
                      (cons (_generate-list-vector17498_
                             _tgt19024_
                             _L19529_
                             (gx#datum->syntax '#f 'subvector->list)
                             '0
                             _K19027_
                             _E19028_)
                            (cons _E19028_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1949519523_)
                                               (_g1948119502_ _g1948219506_))))
                                       (_g1948119502_ _g1948219506_))
                                   (_g1948119502_ _g1948219506_))
                               (_g1948119502_ _g1948219506_))))
                       (_g1948119502_ _g1948219506_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g1947919614_
                                                           (lambda (_g1948219547_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1948219547_)
                         (let ((_e1948419550_ (gx#syntax-e _g1948219547_)))
                           (let ((_hd1948519554_ (##car _e1948419550_))
                                 (_tl1948619557_ (##cdr _e1948419550_)))
                             (if (gx#stx-datum? _hd1948519554_)
                                 (if (equal? (gx#stx-e _hd1948519554_)
                                             'simple:)
                                     (if (gx#stx-pair? _tl1948619557_)
                                         (let ((_e1948719560_
                                                (gx#syntax-e _tl1948619557_)))
                                           (let ((_hd1948819564_
                                                  (##car _e1948719560_))
                                                 (_tl1948919567_
                                                  (##cdr _e1948719560_)))
                                             (if (gx#stx-null? _tl1948919567_)
                                                 ((lambda (_L19570_)
                                                    (let ((_g1958319591_
                                                           (lambda (_g1958419587_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g1958419587_))))
                                                      (let ((_g1958219610_
                                                             (lambda (_g1958419595_)
                                                               ((lambda (_L19598_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons (gx#datum->syntax '#f 'and)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##vector?)
                                                          (cons _L19045_ '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fx=)
                        (cons (cons (gx#datum->syntax '#f '##vector-length)
                                    (cons _L19045_ '()))
                              (cons _L19598_ '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (_generate-simple-vector17497_
                                               _tgt19024_
                                               _L19570_
                                               '0
                                               _K19027_
                                               _E19028_)
                                              (cons _E19028_ '()))))))
                        _g1958419595_))))
                (_g1958219610_ (gx#stx-length _L19570_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1948819564_)
                                                 (_g1948019543_
                                                  _g1948219547_))))
                                         (_g1948019543_ _g1948219547_))
                                     (_g1948019543_ _g1948219547_))
                                 (_g1948019543_ _g1948219547_))))
                         (_g1948019543_ _g1948219547_)))))
              (_g1947919614_ _L19467_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd1914019461_)
                                             (_g1906619440_ _g1907219444_))))
                                     (_g1906619440_ _g1907219444_))
                                 (_g1906619440_ _g1907219444_))
                             (_g1906619440_ _g1907219444_))))
                     (_g1906619440_ _g1907219444_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g1906419796_
                                                         (lambda (_g1907219622_)
                                                           (if (gx#stx-pair?
                                                                _g1907219622_)
                                                               (let ((_e1912919625_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1907219622_)))
                         (let ((_hd1913019629_ (##car _e1912919625_))
                               (_tl1913119632_ (##cdr _e1912919625_)))
                           (if (gx#stx-datum? _hd1913019629_)
                               (if (equal? (gx#stx-e _hd1913019629_) 'values:)
                                   (if (gx#stx-pair? _tl1913119632_)
                                       (let ((_e1913219635_
                                              (gx#syntax-e _tl1913119632_)))
                                         (let ((_hd1913319639_
                                                (##car _e1913219635_))
                                               (_tl1913419642_
                                                (##cdr _e1913219635_)))
                                           (if (gx#stx-null? _tl1913419642_)
                                               ((lambda (_L19645_)
                                                  (let ((_g1965919680_
                                                         (lambda (_g1966019676_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g1966019676_))))
                                                    (let ((_g1965819721_
                                                           (lambda (_g1966019684_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1966019684_)
                         (let ((_e1966919687_ (gx#syntax-e _g1966019684_)))
                           (let ((_hd1967019691_ (##car _e1966919687_))
                                 (_tl1967119694_ (##cdr _e1966919687_)))
                             (if (gx#stx-datum? _hd1967019691_)
                                 (if (equal? (gx#stx-e _hd1967019691_) 'list:)
                                     (if (gx#stx-pair? _tl1967119694_)
                                         (let ((_e1967219697_
                                                (gx#syntax-e _tl1967119694_)))
                                           (let ((_hd1967319701_
                                                  (##car _e1967219697_))
                                                 (_tl1967419704_
                                                  (##cdr _e1967219697_)))
                                             (if (gx#stx-null? _tl1967419704_)
                                                 ((lambda (_L19707_)
                                                    (_generate-list-vector17498_
                                                     _tgt19024_
                                                     _L19707_
                                                     (gx#datum->syntax
                                                      '#f
                                                      'values->list)
                                                     '0
                                                     _K19027_
                                                     _E19028_))
                                                  _hd1967319701_)
                                                 (_g1965919680_
                                                  _g1966019684_))))
                                         (_g1965919680_ _g1966019684_))
                                     (_g1965919680_ _g1966019684_))
                                 (_g1965919680_ _g1966019684_))))
                         (_g1965919680_ _g1966019684_)))))
              (let ((_g1965719792_
                     (lambda (_g1966019725_)
                       (if (gx#stx-pair? _g1966019725_)
                           (let ((_e1966219728_ (gx#syntax-e _g1966019725_)))
                             (let ((_hd1966319732_ (##car _e1966219728_))
                                   (_tl1966419735_ (##cdr _e1966219728_)))
                               (if (gx#stx-datum? _hd1966319732_)
                                   (if (equal? (gx#stx-e _hd1966319732_)
                                               'simple:)
                                       (if (gx#stx-pair? _tl1966419735_)
                                           (let ((_e1966519738_
                                                  (gx#syntax-e
                                                   _tl1966419735_)))
                                             (let ((_hd1966619742_
                                                    (##car _e1966519738_))
                                                   (_tl1966719745_
                                                    (##cdr _e1966519738_)))
                                               (if (gx#stx-null?
                                                    _tl1966719745_)
                                                   ((lambda (_L19748_)
                                                      (let ((_g1976119769_
                                                             (lambda (_g1976219765_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1976219765_))))
                                                        (let ((_g1976019788_
                                                               (lambda (_g1976219773_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L19776_)
                            (let ()
                              (cons (gx#datum->syntax '#f 'if)
                                    (cons (cons (gx#datum->syntax '#f '##fx=)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'values-count)
                                                            (cons _L19045_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _L19776_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (_generate-simple-vector17497_
                                                 _tgt19024_
                                                 _L19748_
                                                 '0
                                                 _K19027_
                                                 _E19028_)
                                                (cons _E19028_ '()))))))
                          _g1976219773_))))
                  (_g1976019788_ (gx#stx-length _L19748_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1966619742_)
                                                   (_g1965819721_
                                                    _g1966019725_))))
                                           (_g1965819721_ _g1966019725_))
                                       (_g1965819721_ _g1966019725_))
                                   (_g1965819721_ _g1966019725_))))
                           (_g1965819721_ _g1966019725_)))))
                (_g1965719792_ _L19645_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1913319639_)
                                               (_g1906519618_ _g1907219622_))))
                                       (_g1906519618_ _g1907219622_))
                                   (_g1906519618_ _g1907219622_))
                               (_g1906519618_ _g1907219622_))))
                       (_g1906519618_ _g1907219622_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g1906319867_
                                                           (lambda (_g1907219800_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1907219800_)
                         (let ((_e1912219803_ (gx#syntax-e _g1907219800_)))
                           (let ((_hd1912319807_ (##car _e1912219803_))
                                 (_tl1912419810_ (##cdr _e1912219803_)))
                             (if (gx#stx-datum? _hd1912319807_)
                                 (if (equal? (gx#stx-e _hd1912319807_) 'box:)
                                     (if (gx#stx-pair? _tl1912419810_)
                                         (let ((_e1912519813_
                                                (gx#syntax-e _tl1912419810_)))
                                           (let ((_hd1912619817_
                                                  (##car _e1912519813_))
                                                 (_tl1912719820_
                                                  (##cdr _e1912519813_)))
                                             (if (gx#stx-null? _tl1912719820_)
                                                 ((lambda (_L19823_)
                                                    (let ((_g1983619844_
                                                           (lambda (_g1983719840_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g1983719840_))))
                                                      (let ((_g1983519863_
                                                             (lambda (_g1983719848_)
                                                               ((lambda (_L19851_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons (gx#datum->syntax '#f '##box?)
                                              (cons _L19045_ '()))
                                        (cons (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L19851_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f '##unbox)
                                          (cons _L19045_ '()))
                                    '()))
                        '())
                  (cons (_generate117494_ _L19851_ _L19823_ _K19027_ _E19028_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _E19028_ '()))))))
                        _g1983719848_))))
                (_g1983519863_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1912619817_)
                                                 (_g1906419796_
                                                  _g1907219800_))))
                                         (_g1906419796_ _g1907219800_))
                                     (_g1906419796_ _g1907219800_))
                                 (_g1906419796_ _g1907219800_))))
                         (_g1906419796_ _g1907219800_)))))
              (let ((_g1906219921_
                     (lambda (_g1907219871_)
                       (if (gx#stx-pair? _g1907219871_)
                           (let ((_e1911219874_ (gx#syntax-e _g1907219871_)))
                             (let ((_hd1911319878_ (##car _e1911219874_))
                                   (_tl1911419881_ (##cdr _e1911219874_)))
                               (if (gx#stx-datum? _hd1911319878_)
                                   (if (equal? (gx#stx-e _hd1911319878_)
                                               'splice:)
                                       (if (gx#stx-pair? _tl1911419881_)
                                           (let ((_e1911519884_
                                                  (gx#syntax-e
                                                   _tl1911419881_)))
                                             (let ((_hd1911619888_
                                                    (##car _e1911519884_))
                                                   (_tl1911719891_
                                                    (##cdr _e1911519884_)))
                                               (if (gx#stx-pair?
                                                    _tl1911719891_)
                                                   (let ((_e1911819894_
                                                          (gx#syntax-e
                                                           _tl1911719891_)))
                                                     (let ((_hd1911919898_
                                                            (##car _e1911819894_))
                                                           (_tl1912019901_
                                                            (##cdr _e1911819894_)))
                                                       (if (gx#stx-null?
                                                            _tl1912019901_)
                                                           ((lambda (_L19904_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L19906_)
                      (_generate-splice17496_
                       _tgt19024_
                       _L19906_
                       _L19904_
                       _K19027_
                       _E19028_))
                    _hd1911919898_
                    _hd1911619888_)
                   (_g1906319867_ _g1907219871_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1906319867_
                                                    _g1907219871_))))
                                           (_g1906319867_ _g1907219871_))
                                       (_g1906319867_ _g1907219871_))
                                   (_g1906319867_ _g1907219871_))))
                           (_g1906319867_ _g1907219871_)))))
                (let ((_g1906119942_
                       (lambda (_g1907219925_)
                         (if (gx#stx-pair? _g1907219925_)
                             (let ((_e1910719928_ (gx#syntax-e _g1907219925_)))
                               (let ((_hd1910819932_ (##car _e1910719928_))
                                     (_tl1910919935_ (##cdr _e1910719928_)))
                                 (if (gx#stx-datum? _hd1910819932_)
                                     (if (equal? (gx#stx-e _hd1910819932_)
                                                 'null:)
                                         (if (gx#stx-null? _tl1910919935_)
                                             ((lambda ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'if)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '##null?)
                          (cons _L19045_ '()))
                    (cons _K19027_ (cons _E19028_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1906219921_ _g1907219925_))
                                         (_g1906219921_ _g1907219925_))
                                     (_g1906219921_ _g1907219925_))))
                             (_g1906219921_ _g1907219925_)))))
                  (let ((_g1906020061_
                         (lambda (_g1907219946_)
                           (if (gx#stx-pair? _g1907219946_)
                               (let ((_e1909819949_
                                      (gx#syntax-e _g1907219946_)))
                                 (let ((_hd1909919953_ (##car _e1909819949_))
                                       (_tl1910019956_ (##cdr _e1909819949_)))
                                   (if (gx#stx-datum? _hd1909919953_)
                                       (if (equal? (gx#stx-e _hd1909919953_)
                                                   'cons:)
                                           (if (gx#stx-pair? _tl1910019956_)
                                               (let ((_e1910119959_
                                                      (gx#syntax-e
                                                       _tl1910019956_)))
                                                 (let ((_hd1910219963_
                                                        (##car _e1910119959_))
                                                       (_tl1910319966_
                                                        (##cdr _e1910119959_)))
                                                   (if (gx#stx-pair?
                                                        _tl1910319966_)
                                                       (let ((_e1910419969_
                                                              (gx#syntax-e
                                                               _tl1910319966_)))
                                                         (let ((_hd1910519973_
                                                                (##car _e1910419969_))
                                                               (_tl1910619976_
                                                                (##cdr _e1910419969_)))
                                                           (if (gx#stx-null?
                                                                _tl1910619976_)
                                                               ((lambda (_L19979_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L19981_)
                          (let ((_g1999720012_
                                 (lambda (_g1999820008_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1999820008_))))
                            (let ((_g1999620057_
                                   (lambda (_g1999820016_)
                                     (if (gx#stx-pair? _g1999820016_)
                                         (let ((_e2000120019_
                                                (gx#syntax-e _g1999820016_)))
                                           (let ((_hd2000220023_
                                                  (##car _e2000120019_))
                                                 (_tl2000320026_
                                                  (##cdr _e2000120019_)))
                                             (if (gx#stx-pair? _tl2000320026_)
                                                 (let ((_e2000420029_
                                                        (gx#syntax-e
                                                         _tl2000320026_)))
                                                   (let ((_hd2000520033_
                                                          (##car _e2000420029_))
                                                         (_tl2000620036_
                                                          (##cdr _e2000420029_)))
                                                     (if (gx#stx-null?
                                                          _tl2000620036_)
                                                         ((lambda (_L20039_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L20041_)
                    (let ()
                      (cons (gx#datum->syntax '#f 'if)
                            (cons (cons (gx#datum->syntax '#f '##pair?)
                                        (cons _L19045_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'let)
                                              (cons (cons (cons _L20041_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     '##car)
                                    (cons _L19045_ '()))
                              '()))
                  (cons (cons _L20039_
                              (cons (cons (gx#datum->syntax '#f '##cdr)
                                          (cons _L19045_ '()))
                                    '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (_generate117494_
                                                           _L20041_
                                                           _L19981_
                                                           (_generate117494_
                                                            _L20039_
                                                            _L19979_
                                                            _K19027_
                                                            _E19028_)
                                                           _E19028_)
                                                          '())))
                                        (cons _E19028_ '()))))))
                  _hd2000520033_
                  _hd2000220023_)
                 (_g1999720012_ _g1999820016_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1999720012_
                                                  _g1999820016_))))
                                         (_g1999720012_ _g1999820016_)))))
                              (_g1999620057_
                               (list (gx#genident 'hd) (gx#genident 'tl))))))
                        _hd1910519973_
                        _hd1910219963_)
                       (_g1906119942_ _g1907219946_))))
               (_g1906119942_ _g1907219946_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1906119942_ _g1907219946_))
                                           (_g1906119942_ _g1907219946_))
                                       (_g1906119942_ _g1907219946_))))
                               (_g1906119942_ _g1907219946_)))))
                    (let ((_g1905920101_
                           (lambda (_g1907220065_)
                             (if (gx#stx-pair? _g1907220065_)
                                 (let ((_e1909020068_
                                        (gx#syntax-e _g1907220065_)))
                                   (let ((_hd1909120072_ (##car _e1909020068_))
                                         (_tl1909220075_
                                          (##cdr _e1909020068_)))
                                     (if (gx#stx-datum? _hd1909120072_)
                                         (if (equal? (gx#stx-e _hd1909120072_)
                                                     'not:)
                                             (if (gx#stx-pair? _tl1909220075_)
                                                 (let ((_e1909320078_
                                                        (gx#syntax-e
                                                         _tl1909220075_)))
                                                   (let ((_hd1909420082_
                                                          (##car _e1909320078_))
                                                         (_tl1909520085_
                                                          (##cdr _e1909320078_)))
                                                     (if (gx#stx-null?
                                                          _tl1909520085_)
                                                         ((lambda (_L20088_)
                                                            (_generate117494_
                                                             _tgt19024_
                                                             _L20088_
                                                             _E19028_
                                                             _K19027_))
                                                          _hd1909420082_)
                                                         (_g1906020061_
                                                          _g1907220065_))))
                                                 (_g1906020061_ _g1907220065_))
                                             (_g1906020061_ _g1907220065_))
                                         (_g1906020061_ _g1907220065_))))
                                 (_g1906020061_ _g1907220065_)))))
                      (let ((_g1905820189_
                             (lambda (_g1907220105_)
                               (if (gx#stx-pair? _g1907220105_)
                                   (let ((_e1908620108_
                                          (gx#syntax-e _g1907220105_)))
                                     (let ((_hd1908720112_
                                            (##car _e1908620108_))
                                           (_tl1908820115_
                                            (##cdr _e1908620108_)))
                                       (if (gx#stx-datum? _hd1908720112_)
                                           (if (equal? (gx#stx-e
                                                        _hd1908720112_)
                                                       'or:)
                                               ((lambda (_L20118_)
                                                  (let ((_g2013020142_
                                                         (lambda (_g2013120138_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2013120138_))))
                                                    (let ((_g2012920153_
                                                           (lambda (_g2013120146_)
                                                             ((lambda ()
                                                                _E19028_)))))
                                                      (let ((_g2012820185_
                                                             (lambda (_g2013120157_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2013120157_)
                           (let ((_e2013420160_ (gx#syntax-e _g2013120157_)))
                             (let ((_hd2013520164_ (##car _e2013420160_))
                                   (_tl2013620167_ (##cdr _e2013420160_)))
                               ((lambda (_L20170_ _L20172_)
                                  (_generate117494_
                                   _tgt19024_
                                   _L20172_
                                   _K19027_
                                   (_generate117494_
                                    _tgt19024_
                                    (cons 'or: _L20170_)
                                    _K19027_
                                    _E19028_)))
                                _tl2013620167_
                                _hd2013520164_)))
                           (_g2012920153_ _g2013120157_)))))
                (_g2012820185_ _L20118_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl1908820115_)
                                               (_g1905920101_ _g1907220105_))
                                           (_g1905920101_ _g1907220105_))))
                                   (_g1905920101_ _g1907220105_)))))
                        (let ((_g1905720277_
                               (lambda (_g1907220193_)
                                 (if (gx#stx-pair? _g1907220193_)
                                     (let ((_e1908220196_
                                            (gx#syntax-e _g1907220193_)))
                                       (let ((_hd1908320200_
                                              (##car _e1908220196_))
                                             (_tl1908420203_
                                              (##cdr _e1908220196_)))
                                         (if (gx#stx-datum? _hd1908320200_)
                                             (if (equal? (gx#stx-e
                                                          _hd1908320200_)
                                                         'and:)
                                                 ((lambda (_L20206_)
                                                    (let ((_g2021820230_
                                                           (lambda (_g2021920226_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g2021920226_))))
                                                      (let ((_g2021720241_
                                                             (lambda (_g2021920234_)
                                                               ((lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _K19027_)))))
                (let ((_g2021620273_
                       (lambda (_g2021920245_)
                         (if (gx#stx-pair? _g2021920245_)
                             (let ((_e2022220248_ (gx#syntax-e _g2021920245_)))
                               (let ((_hd2022320252_ (##car _e2022220248_))
                                     (_tl2022420255_ (##cdr _e2022220248_)))
                                 ((lambda (_L20258_ _L20260_)
                                    (_generate117494_
                                     _tgt19024_
                                     _L20260_
                                     (_generate117494_
                                      _tgt19024_
                                      (cons 'and: _L20258_)
                                      _K19027_
                                      _E19028_)
                                     _E19028_))
                                  _tl2022420255_
                                  _hd2022320252_)))
                             (_g2021720241_ _g2021920245_)))))
                  (_g2021620273_ _L20206_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl1908420203_)
                                                 (_g1905820189_ _g1907220193_))
                                             (_g1905820189_ _g1907220193_))))
                                     (_g1905820189_ _g1907220193_)))))
                          (let ((_g1905620566_
                                 (lambda (_g1907220281_)
                                   (if (gx#stx-pair? _g1907220281_)
                                       (let ((_e1907520284_
                                              (gx#syntax-e _g1907220281_)))
                                         (let ((_hd1907620288_
                                                (##car _e1907520284_))
                                               (_tl1907720291_
                                                (##cdr _e1907520284_)))
                                           (if (gx#stx-datum? _hd1907620288_)
                                               (if (equal? (gx#stx-e
                                                            _hd1907620288_)
                                                           '?:)
                                                   (if (gx#stx-pair?
                                                        _tl1907720291_)
                                                       (let ((_e1907820294_
                                                              (gx#syntax-e
                                                               _tl1907720291_)))
                                                         (let ((_hd1907920298_
                                                                (##car _e1907820294_))
                                                               (_tl1908020301_
                                                                (##cdr _e1907820294_)))
                                                           ((lambda (_L20304_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L20306_)
                      (let ((_g2032220354_
                             (lambda (_g2032320350_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g2032320350_))))
                        (let ((_g2032120452_
                               (lambda (_g2032320358_)
                                 (if (gx#stx-pair? _g2032320358_)
                                     (let ((_e2033720361_
                                            (gx#syntax-e _g2032320358_)))
                                       (let ((_hd2033820365_
                                              (##car _e2033720361_))
                                             (_tl2033920368_
                                              (##cdr _e2033720361_)))
                                         (if (gx#stx-datum? _hd2033820365_)
                                             (if (equal? (gx#stx-e
                                                          _hd2033820365_)
                                                         '::)
                                                 (if (gx#stx-pair?
                                                      _tl2033920368_)
                                                     (let ((_e2034020371_
                                                            (gx#syntax-e
                                                             _tl2033920368_)))
                                                       (let ((_hd2034120375_
                                                              (##car _e2034020371_))
                                                             (_tl2034220378_
                                                              (##cdr _e2034020371_)))
                                                         (if (gx#stx-pair?
                                                              _tl2034220378_)
                                                             (let ((_e2034320381_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl2034220378_)))
                       (let ((_hd2034420385_ (##car _e2034320381_))
                             (_tl2034520388_ (##cdr _e2034320381_)))
                         (if (gx#stx-datum? _hd2034420385_)
                             (if (equal? (gx#stx-e _hd2034420385_) '=>:)
                                 (if (gx#stx-pair? _tl2034520388_)
                                     (let ((_e2034620391_
                                            (gx#syntax-e _tl2034520388_)))
                                       (let ((_hd2034720395_
                                              (##car _e2034620391_))
                                             (_tl2034820398_
                                              (##cdr _e2034620391_)))
                                         (if (gx#stx-null? _tl2034820398_)
                                             ((lambda (_L20401_ _L20403_)
                                                (let ((_g2042120429_
                                                       (lambda (_g2042220425_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g2042220425_))))
                                                  (let ((_g2042020448_
                                                         (lambda (_g2042220433_)
                                                           ((lambda (_L20436_)
                                                              (let ()
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'if)
                              (cons (cons (gx#datum->syntax '#f '?)
                                          (cons _L20306_ (cons _L19045_ '())))
                                    (cons (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (cons _L20436_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _L20403_ (cons _L19045_ '())) '()))
                    '())
              (cons (_generate117494_ _L20436_ _L20401_ _K19027_ _E19028_)
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons _E19028_ '()))))))
                    _g2042220433_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2042020448_
                                                     (gx#genident 'e)))))
                                              _hd2034720395_
                                              _hd2034120375_)
                                             (_g2032220354_ _g2032320358_))))
                                     (_g2032220354_ _g2032320358_))
                                 (_g2032220354_ _g2032320358_))
                             (_g2032220354_ _g2032320358_))))
                     (_g2032220354_ _g2032320358_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2032220354_
                                                      _g2032320358_))
                                                 (_g2032220354_ _g2032320358_))
                                             (_g2032220354_ _g2032320358_))))
                                     (_g2032220354_ _g2032320358_)))))
                          (let ((_g2032020523_
                                 (lambda (_g2032320456_)
                                   (if (gx#stx-pair? _g2032320456_)
                                       (let ((_e2032920459_
                                              (gx#syntax-e _g2032320456_)))
                                         (let ((_hd2033020463_
                                                (##car _e2032920459_))
                                               (_tl2033120466_
                                                (##cdr _e2032920459_)))
                                           (if (gx#stx-datum? _hd2033020463_)
                                               (if (equal? (gx#stx-e
                                                            _hd2033020463_)
                                                           '=>:)
                                                   (if (gx#stx-pair?
                                                        _tl2033120466_)
                                                       (let ((_e2033220469_
                                                              (gx#syntax-e
                                                               _tl2033120466_)))
                                                         (let ((_hd2033320473_
                                                                (##car _e2033220469_))
                                                               (_tl2033420476_
                                                                (##cdr _e2033220469_)))
                                                           (if (gx#stx-null?
                                                                _tl2033420476_)
                                                               ((lambda (_L20479_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_g2049220500_
                                 (lambda (_g2049320496_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2049320496_))))
                            (let ((_g2049120519_
                                   (lambda (_g2049320504_)
                                     ((lambda (_L20507_)
                                        (let ()
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (cons _L20507_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _L20306_ (cons _L19045_ '())) '()))
                    '())
              (cons (cons (gx#datum->syntax '#f 'if)
                          (cons _L20507_
                                (cons (_generate117494_
                                       _L20507_
                                       _L20479_
                                       _K19027_
                                       _E19028_)
                                      (cons _E19028_ '()))))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2049320504_))))
                              (_g2049120519_ (gx#genident 'e)))))
                        _hd2033320473_)
                       (_g2032120452_ _g2032320456_))))
               (_g2032120452_ _g2032320456_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2032120452_
                                                    _g2032320456_))
                                               (_g2032120452_ _g2032320456_))))
                                       (_g2032120452_ _g2032320456_)))))
                            (let ((_g2031920551_
                                   (lambda (_g2032320527_)
                                     (if (gx#stx-pair? _g2032320527_)
                                         (let ((_e2032520530_
                                                (gx#syntax-e _g2032320527_)))
                                           (let ((_hd2032620534_
                                                  (##car _e2032520530_))
                                                 (_tl2032720537_
                                                  (##cdr _e2032520530_)))
                                             (if (gx#stx-null? _tl2032720537_)
                                                 ((lambda (_L20540_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '?)
                              (cons _L20306_ (cons _L19045_ '())))
                        (cons (_generate117494_
                               _tgt19024_
                               _L20540_
                               _K19027_
                               _E19028_)
                              (cons _E19028_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd2032620534_)
                                                 (_g2032020523_
                                                  _g2032320527_))))
                                         (_g2032020523_ _g2032320527_)))))
                              (let ((_g2031820562_
                                     (lambda (_g2032320555_)
                                       (if (gx#stx-null? _g2032320555_)
                                           ((lambda ()
                                              (cons (gx#datum->syntax '#f 'if)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '?)
                        (cons _L20306_ (cons _L19045_ '())))
                  (cons _K19027_ (cons _E19028_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g2031920551_ _g2032320555_)))))
                                (_g2031820562_ _L20304_)))))))
                    _tl1908020301_
                    _hd1907920298_)))
               (_g1905720277_ _g1907220281_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1905720277_
                                                    _g1907220281_))
                                               (_g1905720277_ _g1907220281_))))
                                       (_g1905720277_ _g1907220281_)))))
                            (_g1905620566_ _ptree19026_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _g1903119042_))))
                        (_g1902920570_ _tgt19024_)))))
                 (_generate-splice17496_
                  (lambda (_tgt18396_ _hd18398_ _rest18399_ _K18400_ _E18401_)
                    (let ((_g1840318420_
                           (lambda (_g1840418416_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1840418416_))))
                      (let ((_g1840219020_
                             (lambda (_g1840418424_)
                               (if (gx#stx-pair/null? _g1840418424_)
                                   (if (fx>= (gx#stx-length _g1840418424_) '0)
                                       (let ((_g28142_
                                              (gx#syntax-split-splice
                                               _g1840418424_
                                               '0)))
                                         (begin
                                           (let ((_g28143_
                                                  (values-count _g28142_)))
                                             (if (not (fx= _g28143_ 2))
                                                 (error "Context expects 2 values"
                                                        _g28143_)))
                                           (let ((_target1840618427_
                                                  (values-ref _g28142_ 0))
                                                 (_tl1840818430_
                                                  (values-ref _g28142_ 1)))
                                             (if (gx#stx-null? _tl1840818430_)
                                                 (letrec ((_loop1840918433_
                                                           (lambda (_hd1840718437_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _var1841318440_)
                     (if (gx#stx-pair? _hd1840718437_)
                         (let ((_e1841018443_ (gx#syntax-e _hd1840718437_)))
                           (let ((_lp-hd1841118447_ (##car _e1841018443_))
                                 (_lp-tl1841218450_ (##cdr _e1841018443_)))
                             (_loop1840918433_
                              _lp-tl1841218450_
                              (cons _lp-hd1841118447_ _var1841318440_))))
                         (let ((_var1841418453_ (reverse _var1841318440_)))
                           ((lambda (_L18457_)
                              (let ()
                                (let ((_g1847318490_
                                       (lambda (_g1847418486_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1847418486_))))
                                  (let ((_g1847219008_
                                         (lambda (_g1847418494_)
                                           (if (gx#stx-pair/null?
                                                _g1847418494_)
                                               (if (fx>= (gx#stx-length
                                                          _g1847418494_)
                                                         '0)
                                                   (let ((_g28144_
                                                          (gx#syntax-split-splice
                                                           _g1847418494_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28145_
                                                              (values-count
                                                               _g28144_)))
                                                         (if (not (fx= _g28145_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28145_)))
               (let ((_target1847618497_ (values-ref _g28144_ 0))
                     (_tl1847818500_ (values-ref _g28144_ 1)))
                 (if (gx#stx-null? _tl1847818500_)
                     (letrec ((_loop1847918503_
                               (lambda (_hd1847718507_ _var-r1848318510_)
                                 (if (gx#stx-pair? _hd1847718507_)
                                     (let ((_e1848018513_
                                            (gx#syntax-e _hd1847718507_)))
                                       (let ((_lp-hd1848118517_
                                              (##car _e1848018513_))
                                             (_lp-tl1848218520_
                                              (##cdr _e1848018513_)))
                                         (_loop1847918503_
                                          _lp-tl1848218520_
                                          (cons _lp-hd1848118517_
                                                _var-r1848318510_))))
                                     (let ((_var-r1848418523_
                                            (reverse _var-r1848318510_)))
                                       ((lambda (_L18527_)
                                          (let ()
                                            (let ((_g1854418561_
                                                   (lambda (_g1854518557_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1854518557_))))
                                              (let ((_g1854318996_
                                                     (lambda (_g1854518565_)
                                                       (if (gx#stx-pair/null?
                                                            _g1854518565_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1854518565_)
                             '0)
                       (let ((_g28146_
                              (gx#syntax-split-splice _g1854518565_ '0)))
                         (begin
                           (let ((_g28147_ (values-count _g28146_)))
                             (if (not (fx= _g28147_ 2))
                                 (error "Context expects 2 values" _g28147_)))
                           (let ((_target1854718568_ (values-ref _g28146_ 0))
                                 (_tl1854918571_ (values-ref _g28146_ 1)))
                             (if (gx#stx-null? _tl1854918571_)
                                 (letrec ((_loop1855018574_
                                           (lambda (_hd1854818578_
                                                    _init1855418581_)
                                             (if (gx#stx-pair? _hd1854818578_)
                                                 (let ((_e1855118584_
                                                        (gx#syntax-e
                                                         _hd1854818578_)))
                                                   (let ((_lp-hd1855218588_
                                                          (##car _e1855118584_))
                                                         (_lp-tl1855318591_
                                                          (##cdr _e1855118584_)))
                                                     (_loop1855018574_
                                                      _lp-tl1855318591_
                                                      (cons _lp-hd1855218588_
                                                            _init1855418581_))))
                                                 (let ((_init1855518594_
                                                        (reverse _init1855418581_)))
                                                   ((lambda (_L18598_)
                                                      (let ()
                                                        (let ((_g1861518623_
                                                               (lambda (_g1861618619_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1861618619_))))
                  (let ((_g1861418992_
                         (lambda (_g1861618627_)
                           ((lambda (_L18630_)
                              (let ()
                                (let ((_g1864318651_
                                       (lambda (_g1864418647_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1864418647_))))
                                  (let ((_g1864218988_
                                         (lambda (_g1864418655_)
                                           ((lambda (_L18658_)
                                              (let ()
                                                (let ((_g1867118679_
                                                       (lambda (_g1867218675_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1867218675_))))
                                                  (let ((_g1867018984_
                                                         (lambda (_g1867218683_)
                                                           ((lambda (_L18686_)
                                                              (let ()
                                                                (let ((_g1869918707_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1870018703_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1870018703_))))
                          (let ((_g1869818980_
                                 (lambda (_g1870018711_)
                                   ((lambda (_L18714_)
                                      (let ()
                                        (let ((_g1872718735_
                                               (lambda (_g1872818731_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1872818731_))))
                                          (let ((_g1872618976_
                                                 (lambda (_g1872818739_)
                                                   ((lambda (_L18742_)
                                                      (let ()
                                                        (let ((_g1875518763_
                                                               (lambda (_g1875618759_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1875618759_))))
                  (let ((_g1875418972_
                         (lambda (_g1875618767_)
                           ((lambda (_L18770_)
                              (let ()
                                (let ((_g1878318791_
                                       (lambda (_g1878418787_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1878418787_))))
                                  (let ((_g1878218968_
                                         (lambda (_g1878418795_)
                                           ((lambda (_L18798_)
                                              (let ()
                                                (let ((_g1881118819_
                                                       (lambda (_g1881218815_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1881218815_))))
                                                  (let ((_g1881018953_
                                                         (lambda (_g1881218823_)
                                                           ((lambda (_L18826_)
                                                              (let ()
                                                                (let ((_g1883918847_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1884018843_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1884018843_))))
                          (let ((_g1883818941_
                                 (lambda (_g1884018851_)
                                   ((lambda (_L18854_)
                                      (let ()
                                        (let ((_g1886718875_
                                               (lambda (_g1886818871_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1886818871_))))
                                          (let ((_g1886618937_
                                                 (lambda (_g1886818879_)
                                                   ((lambda (_L18882_)
                                                      (let ()
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'letrec)
                        (cons (cons (cons _L18658_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L18770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr (lambda (_g1889618907_ _g1889718910_)
                                     (cons _g1889618907_ _g1889718910_))
                                   '()
                                   _L18457_)))
                    (cons _L18798_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (cons (cons _L18714_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons (cons _L18742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _L18770_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1889818913_
                                                        _g1889918916_)
                                                 (cons _g1889818913_
                                                       _g1889918916_))
                                               '()
                                               _L18527_))))
                          (cons _L18882_ '())))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons _L18686_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons (cons _L18770_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1890018919_
                                                        _g1890118922_)
                                                 (cons _g1890018919_
                                                       _g1890118922_))
                                               '()
                                               _L18527_)))
                                (cons (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'pair?)
                                                        (cons _L18770_ '()))
                                                  (cons (cons _L18714_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '##car)
                                  (cons _L18770_ '()))
                            (cons _L18770_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g1890218925_
                                                    _g1890318928_)
                                             (cons _g1890218925_
                                                   _g1890318928_))
                                           '()
                                           _L18527_)))))
                (cons _L18854_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              (cons (cons _L18686_
                                          (cons _L18630_
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g1890418931_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1890518934_)
                   (cons _g1890418931_ _g1890518934_))
                 '()
                 _L18598_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1886818879_))))
                                            (_g1886618937_
                                             (_generate117494_
                                              _L18742_
                                              _hd18398_
                                              _L18826_
                                              _L18854_))))))
                                    _g1884018851_))))
                            (_g1883818941_
                             (cons _L18658_
                                   (cons _L18770_
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g1894418947_
                                                           _g1894518950_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'reverse)
                        (cons _g1894418947_ '()))
                  _g1894518950_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()
                                                  _L18527_)))))))))
                    _g1881218823_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1881018953_
                                                     (cons _L18686_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##cdr)
                               (cons _L18770_ '()))
                         (begin
                           (gx#syntax-check-splice-targets _L18527_ _L18457_)
                           (foldr (lambda (_g1895618960_
                                           _g1895718963_
                                           _g1895818965_)
                                    (cons (cons (gx#datum->syntax '#f 'cons)
                                                (cons _g1895718963_
                                                      (cons _g1895618960_
                                                            '())))
                                          _g1895818965_))
                                  '()
                                  _L18527_
                                  _L18457_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g1878418795_))))
                                    (_g1878218968_
                                     (_generate117494_
                                      _L18770_
                                      _rest18399_
                                      _K18400_
                                      _E18401_))))))
                            _g1875618767_))))
                    (_g1875418972_ (gx#genident 'rest))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1872818739_))))
                                            (_g1872618976_
                                             (gx#genident 'hd))))))
                                    _g1870018711_))))
                            (_g1869818980_ (gx#genident 'splice-try))))))
                    _g1867218683_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1867018984_
                                                     (gx#genident
                                                      'splice-loop))))))
                                            _g1864418655_))))
                                    (_g1864218988_
                                     (gx#genident 'splice-rest))))))
                            _g1861618627_))))
                    (_g1861418992_ _tgt18396_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _init1855518594_))))))
                                   (_loop1855018574_ _target1854718568_ '()))
                                 (_g1854418561_ _g1854518565_)))))
                       (_g1854418561_ _g1854518565_))
                   (_g1854418561_ _g1854518565_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1854318996_
                                                 (make-list
                                                  (gx#stx-length
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g1899919002_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1900019005_)
                      (cons _g1899919002_ _g1900019005_))
                    '()
                    _L18457_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         '@list)
                                                        '())))))))
                                        _var-r1848418523_))))))
                       (_loop1847918503_ _target1847618497_ '()))
                     (_g1847318490_ _g1847418494_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1847318490_
                                                    _g1847418494_))
                                               (_g1847318490_
                                                _g1847418494_)))))
                                    (_g1847219008_
                                     (gx#gentemps
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1901119014_
                                                        _g1901219017_)
                                                 (cons _g1901119014_
                                                       _g1901219017_))
                                               '()
                                               _L18457_))))))))
                            _var1841418453_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop1840918433_
                                                    _target1840618427_
                                                    '()))
                                                 (_g1840318420_
                                                  _g1840418424_)))))
                                       (_g1840318420_ _g1840418424_))
                                   (_g1840318420_ _g1840418424_)))))
                        (_g1840219020_
                         (|gerbil/core::<match>[1]#match-pattern-vars|
                          _hd18398_))))))
                 (_generate-simple-vector17497_
                  (lambda (_tgt18238_
                           _body18240_
                           _start18241_
                           _K18242_
                           _E18243_)
                    ((letrec ((_recur18245_
                               (lambda (_rest18248_ _off18250_)
                                 (let ((_g1825318265_
                                        (lambda (_g1825418261_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1825418261_))))
                                   (let ((_g1825218276_
                                          (lambda (_g1825418269_)
                                            ((lambda () _K18242_)))))
                                     (let ((_g1825118392_
                                            (lambda (_g1825418280_)
                                              (if (gx#stx-pair? _g1825418280_)
                                                  (let ((_e1825718283_
                                                         (gx#syntax-e
                                                          _g1825418280_)))
                                                    (let ((_hd1825818287_
                                                           (##car _e1825718283_))
                                                          (_tl1825918290_
                                                           (##cdr _e1825718283_)))
                                                      ((lambda (_L18293_
                                                                _L18295_)
                                                         (let ((_g1831018329_
                                                                (lambda (_g1831118325_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1831118325_))))
                   (let ((_g1830918388_
                          (lambda (_g1831118333_)
                            (if (gx#stx-pair? _g1831118333_)
                                (let ((_e1831518336_
                                       (gx#syntax-e _g1831118333_)))
                                  (let ((_hd1831618340_ (##car _e1831518336_))
                                        (_tl1831718343_ (##cdr _e1831518336_)))
                                    (if (gx#stx-pair? _tl1831718343_)
                                        (let ((_e1831818346_
                                               (gx#syntax-e _tl1831718343_)))
                                          (let ((_hd1831918350_
                                                 (##car _e1831818346_))
                                                (_tl1832018353_
                                                 (##cdr _e1831818346_)))
                                            (if (gx#stx-pair? _tl1832018353_)
                                                (let ((_e1832118356_
                                                       (gx#syntax-e
                                                        _tl1832018353_)))
                                                  (let ((_hd1832218360_
                                                         (##car _e1832118356_))
                                                        (_tl1832318363_
                                                         (##cdr _e1832118356_)))
                                                    (if (gx#stx-null?
                                                         _tl1832318363_)
                                                        ((lambda (_L18366_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18368_
                          _L18369_)
                   (let ()
                     (cons (gx#datum->syntax '#f 'let)
                           (cons (cons (cons _L18369_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##vector-ref)
                                                         (cons _L18368_
                                                               (cons _L18366_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())
                                 (cons (_generate117494_
                                        _L18369_
                                        _L18295_
                                        (_recur18245_
                                         _L18293_
                                         (fx1+ _off18250_))
                                        _E18243_)
                                       '())))))
                 _hd1832218360_
                 _hd1831918350_
                 _hd1831618340_)
                (_g1831018329_ _g1831118333_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1831018329_
                                                 _g1831118333_))))
                                        (_g1831018329_ _g1831118333_))))
                                (_g1831018329_ _g1831118333_)))))
                     (_g1830918388_
                      (list (gx#genident 'e) _tgt18238_ _off18250_)))))
               _tl1825918290_
               _hd1825818287_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1825218276_
                                                   _g1825418280_)))))
                                       (_g1825118392_ _rest18248_)))))))
                       _recur18245_)
                     _body18240_
                     _start18241_)))
                 (_generate-list-vector17498_
                  (lambda (_tgt18148_
                           _body18150_
                           _tgt->list18151_
                           _start18152_
                           _K18153_
                           _E18154_)
                    (let ((_g1815618175_
                           (lambda (_g1815718171_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1815718171_))))
                      (let ((_g1815518234_
                             (lambda (_g1815718179_)
                               (if (gx#stx-pair? _g1815718179_)
                                   (let ((_e1816118182_
                                          (gx#syntax-e _g1815718179_)))
                                     (let ((_hd1816218186_
                                            (##car _e1816118182_))
                                           (_tl1816318189_
                                            (##cdr _e1816118182_)))
                                       (if (gx#stx-pair? _tl1816318189_)
                                           (let ((_e1816418192_
                                                  (gx#syntax-e
                                                   _tl1816318189_)))
                                             (let ((_hd1816518196_
                                                    (##car _e1816418192_))
                                                   (_tl1816618199_
                                                    (##cdr _e1816418192_)))
                                               (if (gx#stx-pair?
                                                    _tl1816618199_)
                                                   (let ((_e1816718202_
                                                          (gx#syntax-e
                                                           _tl1816618199_)))
                                                     (let ((_hd1816818206_
                                                            (##car _e1816718202_))
                                                           (_tl1816918209_
                                                            (##cdr _e1816718202_)))
                                                       (if (gx#stx-null?
                                                            _tl1816918209_)
                                                           ((lambda (_L18212_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L18214_
                             _L18215_)
                      (let ()
                        (cons (gx#datum->syntax '#f 'let)
                              (cons (cons (cons _L18215_
                                                (cons (cons _L18212_
                                                            (cons _L18214_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())
                                    (cons (_generate117494_
                                           _L18215_
                                           _body18150_
                                           _K18153_
                                           _E18154_)
                                          '())))))
                    _hd1816818206_
                    _hd1816518196_
                    _hd1816218186_)
                   (_g1815618175_ _g1815718179_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1815618175_
                                                    _g1815718179_))))
                                           (_g1815618175_ _g1815718179_))))
                                   (_g1815618175_ _g1815718179_)))))
                        (_g1815518234_
                         (list (gx#genident 'e)
                               _tgt18148_
                               _tgt->list18151_))))))
                 (_generate-struct17499_
                  (lambda (_info17881_
                           _tgt17883_
                           _body17884_
                           _K17885_
                           _E17886_)
                    (let ((_rtd17888_
                           (if (|gerbil/core::<MOP>::<MOP:2>[1]#extended-struct-info?|
                                _info17881_)
                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor|
                                _info17881_)
                               '#f)))
                      (let ((_fields17898_
                             ((letrec ((_lp17891_
                                        (lambda (_rtd17894_ _k17896_)
                                          (if _rtd17894_
                                              (_lp17891_
                                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor-e|
                                                (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-super|
                                                 _rtd17894_))
                                               (fx+ (length (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-fields|
                                                             _rtd17894_))
                                                    _k17896_))
                                              _k17896_))))
                                _lp17891_)
                              _rtd17888_
                              '0)))
                        (let ((_final?17901_
                               (if _rtd17888_
                                   (assgetq 'final:
                                            (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-plist|
                                             _rtd17888_))
                                   '#f)))
                          (let ((_g1790417912_
                                 (lambda (_g1790517908_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1790517908_))))
                            (let ((_g1790318144_
                                   (lambda (_g1790517916_)
                                     ((lambda (_L17919_)
                                        (let ()
                                          (let ((_g1793417942_
                                                 (lambda (_g1793517938_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1793517938_))))
                                            (let ((_g1793318140_
                                                   (lambda (_g1793517946_)
                                                     ((lambda (_L17949_)
                                                        (let ()
                                                          (let ((_g1796217970_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1796317966_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1796317966_))))
                    (let ((_g1796118136_
                           (lambda (_g1796317974_)
                             ((lambda (_L17977_)
                                (let ()
                                  (let ()
                                    (let ((_g1799318014_
                                           (lambda (_g1799418010_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1799418010_))))
                                      (let ((_g1799218057_
                                             (lambda (_g1799418018_)
                                               (if (gx#stx-pair? _g1799418018_)
                                                   (let ((_e1800318021_
                                                          (gx#syntax-e
                                                           _g1799418018_)))
                                                     (let ((_hd1800418025_
                                                            (##car _e1800318021_))
                                                           (_tl1800518028_
                                                            (##cdr _e1800318021_)))
                                                       (if (gx#stx-datum?
                                                            _hd1800418025_)
                                                           (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1800418025_)
                               'list:)
                       (if (gx#stx-pair? _tl1800518028_)
                           (let ((_e1800618031_ (gx#syntax-e _tl1800518028_)))
                             (let ((_hd1800718035_ (##car _e1800618031_))
                                   (_tl1800818038_ (##cdr _e1800618031_)))
                               (if (gx#stx-null? _tl1800818038_)
                                   ((lambda (_L18041_)
                                      (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons _L17977_
                                                        (cons _L17949_
                                                              (cons _L17919_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (_generate-list-vector17498_
                                                         _tgt17883_
                                                         _L18041_
                                                         (gx#datum->syntax
                                                          '#f
                                                          'struct->list)
                                                         '1
                                                         _K17885_
                                                         _E17886_)
                                                        (cons _E17886_ '())))))
                                    _hd1800718035_)
                                   (_g1799318014_ _g1799418018_))))
                           (_g1799318014_ _g1799418018_))
                       (_g1799318014_ _g1799418018_))
                   (_g1799318014_ _g1799418018_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1799318014_
                                                    _g1799418018_)))))
                                        (let ((_g1799118132_
                                               (lambda (_g1799418061_)
                                                 (if (gx#stx-pair?
                                                      _g1799418061_)
                                                     (let ((_e1799618064_
                                                            (gx#syntax-e
                                                             _g1799418061_)))
                                                       (let ((_hd1799718068_
                                                              (##car _e1799618064_))
                                                             (_tl1799818071_
                                                              (##cdr _e1799618064_)))
                                                         (if (gx#stx-datum?
                                                              _hd1799718068_)
                                                             (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _hd1799718068_)
                                 'simple:)
                         (if (gx#stx-pair? _tl1799818071_)
                             (let ((_e1799918074_
                                    (gx#syntax-e _tl1799818071_)))
                               (let ((_hd1800018078_ (##car _e1799918074_))
                                     (_tl1800118081_ (##cdr _e1799918074_)))
                                 (if (gx#stx-null? _tl1800118081_)
                                     ((lambda (_L18084_)
                                        (let ((_K18097_
                                               (_generate-simple-vector17497_
                                                _tgt17883_
                                                _L18084_
                                                '1
                                                _K17885_
                                                _E17886_)))
                                          (if (if _rtd17888_
                                                  (fx<= (gx#stx-length
                                                         _L18084_)
                                                        _fields17898_)
                                                  '#f)
                                              (cons (gx#datum->syntax '#f 'if)
                                                    (cons (cons _L17977_
                                                                (cons _L17949_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L17919_ '())))
                  (cons _K18097_ (cons _E17886_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g1810018108_
                                                     (lambda (_g1810118104_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1810118104_))))
                                                (let ((_g1809918128_
                                                       (lambda (_g1810118112_)
                                                         ((lambda (_L18115_)
                                                            (let ()
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'if)
                            (cons (cons (gx#datum->syntax '#f 'and)
                                        (cons (cons _L17977_
                                                    (cons _L17949_
                                                          (cons _L17919_ '())))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##fx<)
                                                          (cons _L18115_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     '##vector-length)
                                    (cons _L17919_ '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons _K18097_ (cons _E17886_ '()))))))
                  _g1810118112_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1809918128_
                                                   (gx#stx-length
                                                    _L18084_)))))))
                                      _hd1800018078_)
                                     (_g1799218057_ _g1799418061_))))
                             (_g1799218057_ _g1799418061_))
                         (_g1799218057_ _g1799418061_))
                     (_g1799218057_ _g1799418061_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1799218057_
                                                      _g1799418061_)))))
                                          (_g1799118132_ _body17884_)))))))
                              _g1796317974_))))
                      (_g1796118136_
                       (if _final?17901_
                           (gx#datum->syntax '#f 'direct-struct-instance?)
                           (gx#datum->syntax '#f 'struct-instance?)))))))
              _g1793517946_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1793318140_
                                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                                                _info17881_))))))
                                      _g1790517916_))))
                              (_g1790318144_ _tgt17883_))))))))
                 (_generate-class17500_
                  (lambda (_info17502_
                           _tgt17504_
                           _body17505_
                           _K17506_
                           _E17507_)
                    (let ((_rtd17509_
                           (if (|gerbil/core::<MOP>::<MOP:2>[1]#extended-class-info?|
                                _info17502_)
                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor|
                                _info17502_)
                               '#f)))
                      (let ((_known-slot?17511_ #!void))
                        (letrec ((_rtd-known-slot?17513_
                                  (lambda (_rtd17862_ _slot17864_)
                                    (if _rtd17862_
                                        (let ((_$e17866_
                                               (memq _slot17864_
                                                     (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-slots|
                                                      _rtd17862_))))
                                          (if _$e17866_
                                              _$e17866_
                                              (ormap (lambda (_g1786917871_)
                                                       (_rtd-known-slot?17513_
                                                        _g1786917871_
                                                        _slot17864_))
                                                     (map |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor-e|
                                                          (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-super|
                                                           _rtd17862_)))))
                                        '#f)))
                                 (_recur17514_
                                  (lambda (_klass17648_ _rest17650_)
                                    (let ((_g1765317669_
                                           (lambda (_g1765417665_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1765417665_))))
                                      (let ((_g1765217680_
                                             (lambda (_g1765417673_)
                                               ((lambda () _K17506_)))))
                                        (let ((_g1765117858_
                                               (lambda (_g1765417684_)
                                                 (if (gx#stx-pair?
                                                      _g1765417684_)
                                                     (let ((_e1765817687_
                                                            (gx#syntax-e
                                                             _g1765417684_)))
                                                       (let ((_hd1765917691_
                                                              (##car _e1765817687_))
                                                             (_tl1766017694_
                                                              (##cdr _e1765817687_)))
                                                         (if (gx#stx-pair?
                                                              _tl1766017694_)
                                                             (let ((_e1766117697_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1766017694_)))
                       (let ((_hd1766217701_ (##car _e1766117697_))
                             (_tl1766317704_ (##cdr _e1766117697_)))
                         ((lambda (_L17707_ _L17709_ _L17710_)
                            (let ((_g1772617734_
                                   (lambda (_g1772717730_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1772717730_))))
                              (let ((_g1772517854_
                                     (lambda (_g1772717738_)
                                       ((lambda (_L17741_)
                                          (let ()
                                            (let ((_g1775317761_
                                                   (lambda (_g1775417757_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1775417757_))))
                                              (let ((_g1775217850_
                                                     (lambda (_g1775417765_)
                                                       ((lambda (_L17768_)
                                                          (let ()
                                                            (let ((_g1778117789_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g1778217785_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1778217785_))))
                      (let ((_g1778017846_
                             (lambda (_g1778217793_)
                               ((lambda (_L17796_)
                                  (let ()
                                    (let ((_g1780917817_
                                           (lambda (_g1781017813_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1781017813_))))
                                      (let ((_g1780817842_
                                             (lambda (_g1781017821_)
                                               ((lambda (_L17824_)
                                                  (let ()
                                                    (let ((_K17837_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons (cons (cons _L17824_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##vector-ref)
                                                       (cons _L17741_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'fx1+)
                                 (cons _L17796_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons (_generate117494_
                                      _L17824_
                                      _L17709_
                                      (_recur17514_ _klass17648_ _L17707_)
                                      _E17507_)
                                     '())))))
              (let ()
                (if (_known-slot?17511_ _L17710_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _L17796_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'class-slot-offset)
                                                        (cons _L17768_
                                                              (cons _L17710_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons _K17837_ '())))
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _L17796_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'class-slot-offset)
                                                        (cons _L17768_
                                                              (cons _L17710_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons (cons (gx#datum->syntax '#f 'if)
                                            (cons _L17796_
                                                  (cons _K17837_
                                                        (cons _E17507_ '()))))
                                      '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1781017821_))))
                                        (_g1780817842_ (gx#genident 'e))))))
                                _g1778217793_))))
                        (_g1778017846_ (gx#genident 'slot))))))
                _g1775417765_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1775217850_
                                                 _klass17648_)))))
                                        _g1772717738_))))
                                (_g1772517854_ _tgt17504_))))
                          _tl1766317704_
                          _hd1766217701_
                          _hd1765917691_)))
                     (_g1765217680_ _g1765417684_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1765217680_
                                                      _g1765417684_)))))
                                          (_g1765117858_ _rest17650_)))))))
                          (begin
                            (set! _known-slot?17511_
                                  (if _rtd17509_
                                      (lambda (_key17875_)
                                        (let ((_slot17878_
                                               (keyword->symbol
                                                (gx#stx-e _key17875_))))
                                          (_rtd-known-slot?17513_
                                           _rtd17509_
                                           _slot17878_)))
                                      false))
                            (let ((_final?17512_
                                   (if _rtd17509_
                                       (assgetq 'final:
                                                (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-plist|
                                                 _rtd17509_))
                                       '#f)))
                              (let ((_g1751617524_
                                     (lambda (_g1751717520_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1751717520_))))
                                (let ((_g1751517644_
                                       (lambda (_g1751717528_)
                                         ((lambda (_L17531_)
                                            (let ()
                                              (let ((_g1754617554_
                                                     (lambda (_g1754717550_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1754717550_))))
                                                (let ((_g1754517640_
                                                       (lambda (_g1754717558_)
                                                         ((lambda (_L17561_)
                                                            (let ()
                                                              (let ((_g1757417582_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1757517578_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1757517578_))))
                        (let ((_g1757317636_
                               (lambda (_g1757517586_)
                                 ((lambda (_L17589_)
                                    (let ()
                                      (let ((_g1760217610_
                                             (lambda (_g1760317606_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1760317606_))))
                                        (let ((_g1760117632_
                                               (lambda (_g1760317614_)
                                                 ((lambda (_L17617_)
                                                    (let ()
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'if)
                                                              (cons (cons _L17617_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons _L17589_ (cons _L17561_ '())))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (cons _L17531_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'object-type)
                              (cons _L17561_ '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (_recur17514_
                                                     _L17531_
                                                     _body17505_)
                                                    '())))
                                  (cons _E17507_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1760317614_))))
                                          (_g1760117632_
                                           (if _final?17512_
                                               (gx#datum->syntax
                                                '#f
                                                'direct-class-instance?)
                                               (gx#datum->syntax
                                                '#f
                                                'class-instance?)))))))
                                  _g1757517586_))))
                          (_g1757317636_
                           (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                            _info17502_))))))
                  _g1754717558_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1754517640_
                                                   _tgt17504_)))))
                                          _g1751717528_))))
                                  (_g1751517644_
                                   (gx#genident 'class))))))))))))
          (_generate117494_ _tgt17489_ _ptree17490_ _K17491_ _E17492_))))
    (define |gerbil/core::<match>[1]#generate-match*|
      (lambda (_stx16486_ _tgt-lst16488_ _clauses16489_)
        (let ((_parse-body16491_
               (lambda (_hd-len17309_)
                 ((letrec ((_lp17312_
                            (lambda (_rest17315_ _r17317_)
                              (let ((_g1732017332_
                                     (lambda (_g1732117328_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1732117328_))))
                                (let ((_g1731917343_
                                       (lambda (_g1732117336_)
                                         ((lambda () _r17317_)))))
                                  (let ((_g1731817483_
                                         (lambda (_g1732117347_)
                                           (if (gx#stx-pair? _g1732117347_)
                                               (let ((_e1732417350_
                                                      (gx#syntax-e
                                                       _g1732117347_)))
                                                 (let ((_hd1732517354_
                                                        (##car _e1732417350_))
                                                       (_tl1732617357_
                                                        (##cdr _e1732417350_)))
                                                   ((lambda (_L17360_ _L17362_)
                                                      (let ((_g1737917395_
                                                             (lambda (_g1738017391_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1738017391_))))
                                                        (let ((_g1737817406_
                                                               (lambda (_g1738017399_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal match clause"
                             _stx16486_
                             _L17362_))))))
                  (let ((_g1737717447_
                         (lambda (_g1738017410_)
                           (if (gx#stx-pair? _g1738017410_)
                               (let ((_e1738717413_
                                      (gx#syntax-e _g1738017410_)))
                                 (let ((_hd1738817417_ (##car _e1738717413_))
                                       (_tl1738917420_ (##cdr _e1738717413_)))
                                   ((lambda (_L17423_ _L17425_)
                                      (if (if (gx#stx-list? _L17425_)
                                              (if (fx= (gx#stx-length _L17425_)
                                                       _hd-len17309_)
                                                  (if (gx#stx-list? _L17423_)
                                                      (not (gx#stx-null?
                                                            _L17423_))
                                                      '#f)
                                                  '#f)
                                              '#f)
                                          (_lp17312_
                                           _L17360_
                                           (cons (cons (gx#genident 'try-match)
                                                       (cons (gx#stx-map
                                                              (lambda (_g1743717439_)
                                                                (|gerbil/core::<match>[1]#parse-match-pattern|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1743717439_
                         _stx16486_))
                      _L17425_)
                     (cons (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'begin) _L17423_)
                            (let ((_$e17443_ (gx#stx-source _L17362_)))
                              (if _$e17443_
                                  _$e17443_
                                  (gx#stx-source _stx16486_))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r17317_))
                                          (_g1737817406_ _g1738017410_)))
                                    _tl1738917420_
                                    _hd1738817417_)))
                               (_g1737817406_ _g1738017410_)))))
                    (let ((_g1737617479_
                           (lambda (_g1738017451_)
                             (if (gx#stx-pair? _g1738017451_)
                                 (let ((_e1738217454_
                                        (gx#syntax-e _g1738017451_)))
                                   (let ((_hd1738317458_ (##car _e1738217454_))
                                         (_tl1738417461_
                                          (##cdr _e1738217454_)))
                                     (if (gx#identifier? _hd1738317458_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core::<match>[1]#_g28152_|
                                              _hd1738317458_)
                                             ((lambda (_L17464_)
                                                (if (if (gx#stx-list? _L17464_)
                                                        (not (gx#stx-null?
                                                              _L17464_))
                                                        '#f)
                                                    (if (gx#stx-null? _L17360_)
                                                        (cons (cons (gx#genident
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             'else)
                            (cons '#f
                                  (cons (gx#stx-wrap-source
                                         (cons (gx#datum->syntax '#f 'begin)
                                               _L17464_)
                                         (let ((_$e17475_
                                                (gx#stx-source _L17362_)))
                                           (if _$e17475_
                                               _$e17475_
                                               (gx#stx-source _stx16486_))))
                                        '())))
                      _r17317_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; misplaced else"
                 _stx16486_
                 _L17362_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1737717447_
                                                     _g1738017451_)))
                                              _tl1738417461_)
                                             (_g1737717447_ _g1738017451_))
                                         (_g1737717447_ _g1738017451_))))
                                 (_g1737717447_ _g1738017451_)))))
                      (_g1737617479_ _L17362_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1732617357_
                                                    _hd1732517354_)))
                                               (_g1731917343_
                                                _g1732117347_)))))
                                    (_g1731817483_ _rest17315_)))))))
                    _lp17312_)
                  _clauses16489_
                  '()))))
          (let ((_generate116495_
                 (lambda (_clause16497_ _body16499_ _E16500_)
                   ((letrec ((_recur16502_
                              (lambda (_rest16505_ _rest-targets16507_)
                                (let ((_g1651016522_
                                       (lambda (_g1651116518_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1651116518_))))
                                  (let ((_g1650916533_
                                         (lambda (_g1651116526_)
                                           ((lambda () _body16499_)))))
                                    (let ((_g1650816804_
                                           (lambda (_g1651116537_)
                                             (if (gx#stx-pair? _g1651116537_)
                                                 (let ((_e1651416540_
                                                        (gx#syntax-e
                                                         _g1651116537_)))
                                                   (let ((_hd1651516544_
                                                          (##car _e1651416540_))
                                                         (_tl1651616547_
                                                          (##cdr _e1651416540_)))
                                                     ((lambda (_L16550_
                                                               _L16552_)
                                                        (let ((_g1656916581_
                                                               (lambda (_g1657016577_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1657016577_))))
                  (let ((_g1656816800_
                         (lambda (_g1657016585_)
                           (if (gx#stx-pair? _g1657016585_)
                               (let ((_e1657316588_
                                      (gx#syntax-e _g1657016585_)))
                                 (let ((_hd1657416592_ (##car _e1657316588_))
                                       (_tl1657516595_ (##cdr _e1657316588_)))
                                   ((lambda (_L16598_ _L16600_)
                                      (let ((_g1661216620_
                                             (lambda (_g1661316616_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1661316616_))))
                                        (let ((_g1661116796_
                                               (lambda (_g1661316624_)
                                                 ((lambda (_L16627_)
                                                    (let ()
                                                      (let ((_g1663916656_
                                                             (lambda (_g1664016652_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1664016652_))))
                                                        (let ((_g1663816792_
                                                               (lambda (_g1664016660_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#stx-pair/null? _g1664016660_)
                             (if (fx>= (gx#stx-length _g1664016660_) '0)
                                 (let ((_g28150_
                                        (gx#syntax-split-splice
                                         _g1664016660_
                                         '0)))
                                   (begin
                                     (let ((_g28151_ (values-count _g28150_)))
                                       (if (not (fx= _g28151_ 2))
                                           (error "Context expects 2 values"
                                                  _g28151_)))
                                     (let ((_target1664216663_
                                            (values-ref _g28150_ 0))
                                           (_tl1664416666_
                                            (values-ref _g28150_ 1)))
                                       (if (gx#stx-null? _tl1664416666_)
                                           (letrec ((_loop1664516669_
                                                     (lambda (_hd1664316673_
                                                              _var1664916676_)
                                                       (if (gx#stx-pair?
                                                            _hd1664316673_)
                                                           (let ((_e1664616679_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1664316673_)))
                     (let ((_lp-hd1664716683_ (##car _e1664616679_))
                           (_lp-tl1664816686_ (##cdr _e1664616679_)))
                       (_loop1664516669_
                        _lp-tl1664816686_
                        (cons _lp-hd1664716683_ _var1664916676_))))
                   (let ((_var1665016689_ (reverse _var1664916676_)))
                     ((lambda (_L16693_)
                        (let ()
                          (let ((_g1671016718_
                                 (lambda (_g1671116714_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1671116714_))))
                            (let ((_g1670916788_
                                   (lambda (_g1671116722_)
                                     ((lambda (_L16725_)
                                        (let ()
                                          (let ((_g1673816746_
                                                 (lambda (_g1673916742_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1673916742_))))
                                            (let ((_g1673716776_
                                                   (lambda (_g1673916750_)
                                                     ((lambda (_L16753_)
                                                        (let ()
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let)
                          (cons (cons (cons _L16627_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons (begin
                                                                '#!void
                                                                (foldr (lambda (_g1676716770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1676816773_)
                                 (cons _g1676716770_ _g1676816773_))
                               '()
                               _L16693_))
                      (cons _L16725_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons _L16753_ '()))))))
              _g1673916750_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1673716776_
                                               (|gerbil/core::<match>[1]#generate-match1|
                                                _stx16486_
                                                _L16600_
                                                _L16552_
                                                (cons _L16627_
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g1677916782_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1678016785_)
                         (cons _g1677916782_ _g1678016785_))
                       '()
                       _L16693_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _E16500_))))))
                                      _g1671116722_))))
                              (_g1670916788_
                               (_recur16502_ _L16550_ _L16598_))))))
                      _var1665016689_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1664516669_
                                              _target1664216663_
                                              '()))
                                           (_g1663916656_ _g1664016660_)))))
                                 (_g1663916656_ _g1664016660_))
                             (_g1663916656_ _g1664016660_)))))
                  (_g1663816792_
                   (|gerbil/core::<match>[1]#match-pattern-vars| _L16552_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1661316624_))))
                                          (_g1661116796_ (gx#genident 'K)))))
                                    _tl1657516595_
                                    _hd1657416592_)))
                               (_g1656916581_ _g1657016585_)))))
                    (_g1656816800_ _rest-targets16507_))))
              _tl1651616547_
              _hd1651516544_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1650916533_
                                                  _g1651116537_)))))
                                      (_g1650816804_ _rest16505_)))))))
                      _recur16502_)
                    _clause16497_
                    _tgt-lst16488_))))
            (letrec ((_generate-clauses16494_
                      (lambda (_rest16808_ _E16810_)
                        (let ((_g1681416830_
                               (lambda (_g1681516826_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1681516826_))))
                          (let ((_g1681316841_
                                 (lambda (_g1681516834_)
                                   ((lambda () _E16810_)))))
                            (let ((_g1681217017_
                                   (lambda (_g1681516845_)
                                     (if (gx#stx-pair? _g1681516845_)
                                         (let ((_e1682216848_
                                                (gx#syntax-e _g1681516845_)))
                                           (let ((_hd1682316852_
                                                  (##car _e1682216848_))
                                                 (_tl1682416855_
                                                  (##cdr _e1682216848_)))
                                             ((lambda (_L16858_ _L16860_)
                                                (let ((_g1687316892_
                                                       (lambda (_g1687416888_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1687416888_))))
                                                  (let ((_g1687217013_
                                                         (lambda (_g1687416896_)
                                                           (if (gx#stx-pair?
                                                                _g1687416896_)
                                                               (let ((_e1687816899_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1687416896_)))
                         (let ((_hd1687916903_ (##car _e1687816899_))
                               (_tl1688016906_ (##cdr _e1687816899_)))
                           (if (gx#stx-pair? _tl1688016906_)
                               (let ((_e1688116909_
                                      (gx#syntax-e _tl1688016906_)))
                                 (let ((_hd1688216913_ (##car _e1688116909_))
                                       (_tl1688316916_ (##cdr _e1688116909_)))
                                   (if (gx#stx-pair? _tl1688316916_)
                                       (let ((_e1688416919_
                                              (gx#syntax-e _tl1688316916_)))
                                         (let ((_hd1688516923_
                                                (##car _e1688416919_))
                                               (_tl1688616926_
                                                (##cdr _e1688416919_)))
                                           (if (gx#stx-null? _tl1688616926_)
                                               ((lambda (_L16929_
                                                         _L16931_
                                                         _L16932_)
                                                  (let ((_g1694916964_
                                                         (lambda (_g1695016960_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g1695016960_))))
                                                    (let ((_g1694817009_
                                                           (lambda (_g1695016968_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1695016968_)
                         (let ((_e1695316971_ (gx#syntax-e _g1695016968_)))
                           (let ((_hd1695416975_ (##car _e1695316971_))
                                 (_tl1695516978_ (##cdr _e1695316971_)))
                             (if (gx#stx-pair? _tl1695516978_)
                                 (let ((_e1695616981_
                                        (gx#syntax-e _tl1695516978_)))
                                   (let ((_hd1695716985_ (##car _e1695616981_))
                                         (_tl1695816988_
                                          (##cdr _e1695616981_)))
                                     (if (gx#stx-null? _tl1695816988_)
                                         ((lambda (_L16991_ _L16993_)
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L16932_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f 'lambda)
                                          (cons '() (cons _L16993_ '())))
                                    '()))
                        '())
                  (cons _L16991_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd1695716985_
                                          _hd1695416975_)
                                         (_g1694916964_ _g1695016968_))))
                                 (_g1694916964_ _g1695016968_))))
                         (_g1694916964_ _g1695016968_)))))
              (_g1694817009_
               (list (if (gx#stx-e _L16931_)
                         (_generate116495_ _L16931_ _L16929_ _E16810_)
                         _L16929_)
                     (_generate-clauses16494_
                      _L16858_
                      (cons _L16932_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1688516923_
                                                _hd1688216913_
                                                _hd1687916903_)
                                               (_g1687316892_ _g1687416896_))))
                                       (_g1687316892_ _g1687416896_))))
                               (_g1687316892_ _g1687416896_))))
                       (_g1687316892_ _g1687416896_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1687217013_ _L16860_))))
                                              _tl1682416855_
                                              _hd1682316852_)))
                                         (_g1681316841_ _g1681516845_)))))
                              (let ((_g1681117122_
                                     (lambda (_g1681517021_)
                                       (if (gx#stx-pair? _g1681517021_)
                                           (let ((_e1681717024_
                                                  (gx#syntax-e _g1681517021_)))
                                             (let ((_hd1681817028_
                                                    (##car _e1681717024_))
                                                   (_tl1681917031_
                                                    (##cdr _e1681717024_)))
                                               (if (gx#stx-null?
                                                    _tl1681917031_)
                                                   ((lambda (_L17034_)
                                                      (let ((_g1704517063_
                                                             (lambda (_g1704617059_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1704617059_))))
                                                        (let ((_g1704417118_
                                                               (lambda (_g1704617067_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#stx-pair? _g1704617067_)
                             (let ((_e1704917070_ (gx#syntax-e _g1704617067_)))
                               (let ((_hd1705017074_ (##car _e1704917070_))
                                     (_tl1705117077_ (##cdr _e1704917070_)))
                                 (if (gx#stx-pair? _tl1705117077_)
                                     (let ((_e1705217080_
                                            (gx#syntax-e _tl1705117077_)))
                                       (let ((_hd1705317084_
                                              (##car _e1705217080_))
                                             (_tl1705417087_
                                              (##cdr _e1705217080_)))
                                         (if (gx#stx-pair? _tl1705417087_)
                                             (let ((_e1705517090_
                                                    (gx#syntax-e
                                                     _tl1705417087_)))
                                               (let ((_hd1705617094_
                                                      (##car _e1705517090_))
                                                     (_tl1705717097_
                                                      (##cdr _e1705517090_)))
                                                 (if (gx#stx-null?
                                                      _tl1705717097_)
                                                     ((lambda (_L17100_
                                                               _L17102_)
                                                        (if (gx#stx-e _L17102_)
                                                            (_generate116495_
                                                             _L17102_
                                                             _L17100_
                                                             _E16810_)
                                                            _L17100_))
                                                      _hd1705617094_
                                                      _hd1705317084_)
                                                     (_g1704517063_
                                                      _g1704617067_))))
                                             (_g1704517063_ _g1704617067_))))
                                     (_g1704517063_ _g1704617067_))))
                             (_g1704517063_ _g1704617067_)))))
                  (_g1704417118_ _L17034_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1681817028_)
                                                   (_g1681217017_
                                                    _g1681517021_))))
                                           (_g1681217017_ _g1681517021_)))))
                                (_g1681117122_ _rest16808_))))))))
              (let ((_generate-body16493_
                     (lambda (_body17126_)
                       (let ((_g1712917137_
                              (lambda (_g1713017133_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1713017133_))))
                         (let ((_g1712817305_
                                (lambda (_g1713017141_)
                                  ((lambda (_L17144_)
                                     (let ()
                                       (let ((_g1715617173_
                                              (lambda (_g1715717169_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g1715717169_))))
                                         (let ((_g1715517301_
                                                (lambda (_g1715717177_)
                                                  (if (gx#stx-pair/null?
                                                       _g1715717177_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1715717177_)
                        '0)
                  (let ((_g28148_ (gx#syntax-split-splice _g1715717177_ '0)))
                    (begin
                      (let ((_g28149_ (values-count _g28148_)))
                        (if (not (fx= _g28149_ 2))
                            (error "Context expects 2 values" _g28149_)))
                      (let ((_target1715917180_ (values-ref _g28148_ 0))
                            (_tl1716117183_ (values-ref _g28148_ 1)))
                        (if (gx#stx-null? _tl1716117183_)
                            (letrec ((_loop1716217186_
                                      (lambda (_hd1716017190_
                                               _target1716617193_)
                                        (if (gx#stx-pair? _hd1716017190_)
                                            (let ((_e1716317196_
                                                   (gx#syntax-e
                                                    _hd1716017190_)))
                                              (let ((_lp-hd1716417200_
                                                     (##car _e1716317196_))
                                                    (_lp-tl1716517203_
                                                     (##cdr _e1716317196_)))
                                                (_loop1716217186_
                                                 _lp-tl1716517203_
                                                 (cons _lp-hd1716417200_
                                                       _target1716617193_))))
                                            (let ((_target1716717206_
                                                   (reverse _target1716617193_)))
                                              ((lambda (_L17210_)
                                                 (let ()
                                                   (let ((_g1722717235_
                                                          (lambda (_g1722817231_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1722817231_))))
                                                     (let ((_g1722617289_
                                                            (lambda (_g1722817239_)
                                                              ((lambda (_L17242_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((_g1725517263_
                                  (lambda (_g1725617259_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1725617259_))))
                             (let ((_g1725417285_
                                    (lambda (_g1725617267_)
                                      ((lambda (_L17270_)
                                         (let ()
                                           (let ()
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _L17144_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L17242_ '()))
                       '())
                 (cons _L17270_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _g1725617267_))))
                               (_g1725417285_
                                (_generate-clauses16494_
                                 _body17126_
                                 (cons _L17144_ '())))))))
                       _g1722817239_))))
               (_g1722617289_
                (gx#stx-wrap-source
                 (cons (gx#datum->syntax '#f 'lambda)
                       (cons '()
                             (cons (cons (gx#datum->syntax '#f 'error)
                                         (cons '"No clause matching"
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g1729217295_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1729317298_)
                  (cons _g1729217295_ _g1729317298_))
                '()
                _L17210_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '())))
                 (gx#stx-source _stx16486_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _target1716717206_))))))
                              (_loop1716217186_ _target1715917180_ '()))
                            (_g1715617173_ _g1715717177_)))))
                  (_g1715617173_ _g1715717177_))
              (_g1715617173_ _g1715717177_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1715517301_ _tgt-lst16488_)))))
                                   _g1713017141_))))
                           (_g1712817305_ (gx#genident 'E)))))))
                (_generate-body16493_
                 (_parse-body16491_ (gx#stx-length _tgt-lst16488_)))))))))
    (define |gerbil/core::<match>[1]#generate-match|
      (lambda (_stx16388_ _tgt16390_ _clauses16391_)
        (let ((_reclause16393_
               (lambda (_clause16396_)
                 (let ((_g1640116416_
                        (lambda (_g1640216412_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1640216412_))))
                   (let ((_g1640016427_
                          (lambda (_g1640216420_)
                            ((lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal match clause"
                                _stx16388_
                                _clause16396_))))))
                     (let ((_g1639916461_
                            (lambda (_g1640216431_)
                              (if (gx#stx-pair? _g1640216431_)
                                  (let ((_e1640816434_
                                         (gx#syntax-e _g1640216431_)))
                                    (let ((_hd1640916438_
                                           (##car _e1640816434_))
                                          (_tl1641016441_
                                           (##cdr _e1640816434_)))
                                      ((lambda (_L16444_ _L16446_)
                                         (gx#stx-wrap-source
                                          (cons (cons _L16446_ '()) _L16444_)
                                          (gx#stx-source
                                           (gx#datum->syntax '#f 'clause))))
                                       _tl1641016441_
                                       _hd1640916438_)))
                                  (_g1640016427_ _g1640216431_)))))
                       (let ((_g1639816482_
                              (lambda (_g1640216465_)
                                (if (gx#stx-pair? _g1640216465_)
                                    (let ((_e1640316468_
                                           (gx#syntax-e _g1640216465_)))
                                      (let ((_hd1640416472_
                                             (##car _e1640316468_))
                                            (_tl1640516475_
                                             (##cdr _e1640316468_)))
                                        (if (gx#identifier? _hd1640416472_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<match>[1]#_g28153_|
                                                 _hd1640416472_)
                                                ((lambda () _clause16396_))
                                                (_g1639916461_ _g1640216465_))
                                            (_g1639916461_ _g1640216465_))))
                                    (_g1639916461_ _g1640216465_)))))
                         (_g1639816482_ _clause16396_))))))))
          (|gerbil/core::<match>[1]#generate-match*|
           _stx16388_
           (cons _tgt16390_ '())
           (gx#stx-map _reclause16393_ _clauses16391_)))))
    (define |gerbil/core::<match>[:0:]#match|
      (lambda (_stx23366_)
        (let ((_g2337123400_
               (lambda (_g2337223396_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2337223396_))))
          (let ((_g2337023508_
                 (lambda (_g2337223404_)
                   (if (gx#stx-pair? _g2337223404_)
                       (let ((_e2338923407_ (gx#syntax-e _g2337223404_)))
                         (let ((_hd2339023411_ (##car _e2338923407_))
                               (_tl2339123414_ (##cdr _e2338923407_)))
                           (if (gx#stx-pair? _tl2339123414_)
                               (let ((_e2339223417_
                                      (gx#syntax-e _tl2339123414_)))
                                 (let ((_hd2339323421_ (##car _e2339223417_))
                                       (_tl2339423424_ (##cdr _e2339223417_)))
                                   ((lambda (_L23427_ _L23429_)
                                      (if (gx#stx-list? _L23427_)
                                          (let ((_g2344323451_
                                                 (lambda (_g2344423447_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2344423447_))))
                                            (let ((_g2344223504_
                                                   (lambda (_g2344423455_)
                                                     ((lambda (_L23458_)
                                                        (let ()
                                                          (let ((_g2347023478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2347123474_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2347123474_))))
                    (let ((_g2346923500_
                           (lambda (_g2347123482_)
                             ((lambda (_L23485_)
                                (let ()
                                  (let ()
                                    (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (cons _L23458_
                                                            (cons _L23429_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _L23485_ '()))))))
                              _g2347123482_))))
                      (_g2346923500_
                       (|gerbil/core::<match>[1]#generate-match|
                        _stx23366_
                        _L23458_
                        _L23427_))))))
              _g2344423455_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2344223504_
                                               (gx#genident _L23429_))))
                                          (_g2337123400_ _g2337223404_)))
                                    _tl2339423424_
                                    _hd2339323421_)))
                               (_g2337123400_ _g2337223404_))))
                       (_g2337123400_ _g2337223404_)))))
            (let ((_g2336923613_
                   (lambda (_g2337223512_)
                     (if (gx#stx-pair? _g2337223512_)
                         (let ((_e2338123515_ (gx#syntax-e _g2337223512_)))
                           (let ((_hd2338223519_ (##car _e2338123515_))
                                 (_tl2338323522_ (##cdr _e2338123515_)))
                             (if (gx#stx-pair? _tl2338323522_)
                                 (let ((_e2338423525_
                                        (gx#syntax-e _tl2338323522_)))
                                   (let ((_hd2338523529_ (##car _e2338423525_))
                                         (_tl2338623532_
                                          (##cdr _e2338423525_)))
                                     (if (gx#identifier? _hd2338523529_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core::<match>[1]#_g28154_|
                                              _hd2338523529_)
                                             ((lambda (_L23535_)
                                                (if (gx#stx-list? _L23535_)
                                                    (let ((_g2354823556_
                                                           (lambda (_g2354923552_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g2354923552_))))
                                                      (let ((_g2354723609_
                                                             (lambda (_g2354923560_)
                                                               ((lambda (_L23563_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let ((_g2357523583_
                                   (lambda (_g2357623579_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2357623579_))))
                              (let ((_g2357423605_
                                     (lambda (_g2357623587_)
                                       ((lambda (_L23590_)
                                          (let ()
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons _L23563_
                                                          (cons _L23590_
                                                                '()))))))
                                        _g2357623587_))))
                                (_g2357423605_
                                 (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'match)
                                        (cons _L23563_ _L23535_))
                                  (gx#stx-source _stx23366_)))))))
                        _g2354923560_))))
                (_g2354723609_ (gx#genident 'args))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2337023508_
                                                     _g2337223512_)))
                                              _tl2338623532_)
                                             (_g2337023508_ _g2337223512_))
                                         (_g2337023508_ _g2337223512_))))
                                 (_g2337023508_ _g2337223512_))))
                         (_g2337023508_ _g2337223512_)))))
              (let ((_g2336823718_
                     (lambda (_g2337223617_)
                       (if (gx#stx-pair? _g2337223617_)
                           (let ((_e2337423620_ (gx#syntax-e _g2337223617_)))
                             (let ((_hd2337523624_ (##car _e2337423620_))
                                   (_tl2337623627_ (##cdr _e2337423620_)))
                               (if (gx#stx-pair? _tl2337623627_)
                                   (let ((_e2337723630_
                                          (gx#syntax-e _tl2337623627_)))
                                     (let ((_hd2337823634_
                                            (##car _e2337723630_))
                                           (_tl2337923637_
                                            (##cdr _e2337723630_)))
                                       (if (gx#identifier? _hd2337823634_)
                                           (if (gx#free-identifier=?
                                                |gerbil/core::<match>[1]#_g28155_|
                                                _hd2337823634_)
                                               ((lambda (_L23640_)
                                                  (if (gx#stx-list? _L23640_)
                                                      (let ((_g2365323661_
                                                             (lambda (_g2365423657_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2365423657_))))
                                                        (let ((_g2365223714_
                                                               (lambda (_g2365423665_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L23668_)
                            (let ()
                              (let ((_g2368023688_
                                     (lambda (_g2368123684_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g2368123684_))))
                                (let ((_g2367923710_
                                       (lambda (_g2368123692_)
                                         ((lambda (_L23695_)
                                            (let ()
                                              (let ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L23668_ '())
                                                            (cons _L23695_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g2368123692_))))
                                  (_g2367923710_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _L23668_ _L23640_))
                                    (gx#stx-source _stx23366_)))))))
                          _g2365423665_))))
                  (_g2365223714_ (gx#genident 'e))))
              (_g2336923613_ _g2337223617_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl2337923637_)
                                               (_g2336923613_ _g2337223617_))
                                           (_g2336923613_ _g2337223617_))))
                                   (_g2336923613_ _g2337223617_))))
                           (_g2336923613_ _g2337223617_)))))
                (_g2336823718_ _stx23366_)))))))
    (define |gerbil/core::<match>[:0:]#match*|
      (lambda (_stx23722_)
        (let ((_g2372523749_
               (lambda (_g2372623745_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2372623745_))))
          (let ((_g2372423961_
                 (lambda (_g2372623753_)
                   (if (gx#stx-pair? _g2372623753_)
                       (let ((_e2372923756_ (gx#syntax-e _g2372623753_)))
                         (let ((_hd2373023760_ (##car _e2372923756_))
                               (_tl2373123763_ (##cdr _e2372923756_)))
                           (if (gx#stx-pair? _tl2373123763_)
                               (let ((_e2373223766_
                                      (gx#syntax-e _tl2373123763_)))
                                 (let ((_hd2373323770_ (##car _e2373223766_))
                                       (_tl2373423773_ (##cdr _e2373223766_)))
                                   (if (gx#stx-pair/null? _hd2373323770_)
                                       (if (fx>= (gx#stx-length _hd2373323770_)
                                                 '0)
                                           (let ((_g28156_
                                                  (gx#syntax-split-splice
                                                   _hd2373323770_
                                                   '0)))
                                             (begin
                                               (let ((_g28157_
                                                      (values-count _g28156_)))
                                                 (if (not (fx= _g28157_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28157_)))
                                               (let ((_target2373523776_
                                                      (values-ref _g28156_ 0))
                                                     (_tl2373723779_
                                                      (values-ref _g28156_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl2373723779_)
                                                     (letrec ((_loop2373823782_
                                                               (lambda (_hd2373623786_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _e2374223789_)
                         (if (gx#stx-pair? _hd2373623786_)
                             (let ((_e2373923792_
                                    (gx#syntax-e _hd2373623786_)))
                               (let ((_lp-hd2374023796_ (##car _e2373923792_))
                                     (_lp-tl2374123799_ (##cdr _e2373923792_)))
                                 (_loop2373823782_
                                  _lp-tl2374123799_
                                  (cons _lp-hd2374023796_ _e2374223789_))))
                             (let ((_e2374323802_ (reverse _e2374223789_)))
                               ((lambda (_L23806_ _L23808_)
                                  (if (gx#stx-list? _L23806_)
                                      (let ((_g2382623843_
                                             (lambda (_g2382723839_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2382723839_))))
                                        (let ((_g2382523949_
                                               (lambda (_g2382723847_)
                                                 (if (gx#stx-pair/null?
                                                      _g2382723847_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2382723847_)
                                                               '0)
                                                         (let ((_g28158_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2382723847_
                         '0)))
                   (begin
                     (let ((_g28159_ (values-count _g28158_)))
                       (if (not (fx= _g28159_ 2))
                           (error "Context expects 2 values" _g28159_)))
                     (let ((_target2382923850_ (values-ref _g28158_ 0))
                           (_tl2383123853_ (values-ref _g28158_ 1)))
                       (if (gx#stx-null? _tl2383123853_)
                           (letrec ((_loop2383223856_
                                     (lambda (_hd2383023860_ _$e2383623863_)
                                       (if (gx#stx-pair? _hd2383023860_)
                                           (let ((_e2383323866_
                                                  (gx#syntax-e
                                                   _hd2383023860_)))
                                             (let ((_lp-hd2383423870_
                                                    (##car _e2383323866_))
                                                   (_lp-tl2383523873_
                                                    (##cdr _e2383323866_)))
                                               (_loop2383223856_
                                                _lp-tl2383523873_
                                                (cons _lp-hd2383423870_
                                                      _$e2383623863_))))
                                           (let ((_$e2383723876_
                                                  (reverse _$e2383623863_)))
                                             ((lambda (_L23880_)
                                                (let ()
                                                  (let ((_g2389623904_
                                                         (lambda (_g2389723900_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2389723900_))))
                                                    (let ((_g2389523937_
                                                           (lambda (_g2389723908_)
                                                             ((lambda (_L23911_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (begin
                                          (gx#syntax-check-splice-targets
                                           _L23808_
                                           _L23880_)
                                          (foldr (lambda (_g2392523929_
                                                          _g2392623932_
                                                          _g2392723934_)
                                                   (cons (cons _g2392623932_
                                                               (cons _g2392523929_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _g2392723934_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L23808_
                                                 _L23880_))
                                        (cons _L23911_ '()))))))
                      _g2389723908_))))
              (_g2389523937_
               (|gerbil/core::<match>[1]#generate-match*|
                _stx23722_
                (begin
                  '#!void
                  (foldr (lambda (_g2394023943_ _g2394123946_)
                           (cons _g2394023943_ _g2394123946_))
                         '()
                         _L23880_))
                _L23806_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _$e2383723876_))))))
                             (_loop2383223856_ _target2382923850_ '()))
                           (_g2382623843_ _g2382723847_)))))
                 (_g2382623843_ _g2382723847_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2382623843_
                                                      _g2382723847_)))))
                                          (_g2382523949_
                                           (gx#gentemps
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g2395223955_
                                                              _g2395323958_)
                                                       (cons _g2395223955_
                                                             _g2395323958_))
                                                     '()
                                                     _L23808_))))))
                                      (_g2372523749_ _g2372623753_)))
                                _tl2373423773_
                                _e2374323802_))))))
               (_loop2373823782_ _target2373523776_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2372523749_
                                                      _g2372623753_)))))
                                           (_g2372523749_ _g2372623753_))
                                       (_g2372523749_ _g2372623753_))))
                               (_g2372523749_ _g2372623753_))))
                       (_g2372523749_ _g2372623753_)))))
            (_g2372423961_ _stx23722_)))))
    (define |gerbil/core::<match>[:0:]#with|
      (lambda (_$stx23967_)
        (let ((_g2397324056_
               (lambda (_g2397424052_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2397424052_))))
          (let ((_g2397224217_
                 (lambda (_g2397424060_)
                   (if (gx#stx-pair? _g2397424060_)
                       (let ((_e2401924063_ (gx#syntax-e _g2397424060_)))
                         (let ((_hd2402024067_ (##car _e2401924063_))
                               (_tl2402124070_ (##cdr _e2401924063_)))
                           (if (gx#stx-pair? _tl2402124070_)
                               (let ((_e2402224073_
                                      (gx#syntax-e _tl2402124070_)))
                                 (let ((_hd2402324077_ (##car _e2402224073_))
                                       (_tl2402424080_ (##cdr _e2402224073_)))
                                   (if (gx#stx-pair/null? _hd2402324077_)
                                       (if (fx>= (gx#stx-length _hd2402324077_)
                                                 '0)
                                           (let ((_g28160_
                                                  (gx#syntax-split-splice
                                                   _hd2402324077_
                                                   '0)))
                                             (begin
                                               (let ((_g28161_
                                                      (values-count _g28160_)))
                                                 (if (not (fx= _g28161_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28161_)))
                                               (let ((_target2402524083_
                                                      (values-ref _g28160_ 0))
                                                     (_tl2402724086_
                                                      (values-ref _g28160_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl2402724086_)
                                                     (letrec ((_loop2402824089_
                                                               (lambda (_hd2402624093_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr2403224096_
                                _hd2403324098_)
                         (if (gx#stx-pair? _hd2402624093_)
                             (let ((_e2402924101_
                                    (gx#syntax-e _hd2402624093_)))
                               (let ((_lp-hd2403024105_ (##car _e2402924101_))
                                     (_lp-tl2403124108_ (##cdr _e2402924101_)))
                                 (if (gx#stx-pair? _lp-hd2403024105_)
                                     (let ((_e2403624111_
                                            (gx#syntax-e _lp-hd2403024105_)))
                                       (let ((_hd2403724115_
                                              (##car _e2403624111_))
                                             (_tl2403824118_
                                              (##cdr _e2403624111_)))
                                         (if (gx#stx-pair? _tl2403824118_)
                                             (let ((_e2403924121_
                                                    (gx#syntax-e
                                                     _tl2403824118_)))
                                               (let ((_hd2404024125_
                                                      (##car _e2403924121_))
                                                     (_tl2404124128_
                                                      (##cdr _e2403924121_)))
                                                 (if (gx#stx-null?
                                                      _tl2404124128_)
                                                     (_loop2402824089_
                                                      _lp-tl2403124108_
                                                      (cons _hd2404024125_
                                                            _expr2403224096_)
                                                      (cons _hd2403724115_
                                                            _hd2403324098_))
                                                     (_g2397324056_
                                                      _g2397424060_))))
                                             (_g2397324056_ _g2397424060_))))
                                     (_g2397324056_ _g2397424060_))))
                             (let ((_expr2403424131_
                                    (reverse _expr2403224096_))
                                   (_hd2403524134_ (reverse _hd2403324098_)))
                               (if (gx#stx-pair/null? _tl2402424080_)
                                   (if (fx>= (gx#stx-length _tl2402424080_) '0)
                                       (let ((_g28162_
                                              (gx#syntax-split-splice
                                               _tl2402424080_
                                               '0)))
                                         (begin
                                           (let ((_g28163_
                                                  (values-count _g28162_)))
                                             (if (not (fx= _g28163_ 2))
                                                 (error "Context expects 2 values"
                                                        _g28163_)))
                                           (let ((_target2404224137_
                                                  (values-ref _g28162_ 0))
                                                 (_tl2404424140_
                                                  (values-ref _g28162_ 1)))
                                             (if (gx#stx-null? _tl2404424140_)
                                                 (letrec ((_loop2404524143_
                                                           (lambda (_hd2404324147_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _body2404924150_)
                     (if (gx#stx-pair? _hd2404324147_)
                         (let ((_e2404624153_ (gx#syntax-e _hd2404324147_)))
                           (let ((_lp-hd2404724157_ (##car _e2404624153_))
                                 (_lp-tl2404824160_ (##cdr _e2404624153_)))
                             (_loop2404524143_
                              _lp-tl2404824160_
                              (cons _lp-hd2404724157_ _body2404924150_))))
                         (let ((_body2405024163_ (reverse _body2404924150_)))
                           ((lambda (_L24167_ _L24169_ _L24170_)
                              (cons (gx#datum->syntax '#f 'match*)
                                    (cons (begin
                                            '#!void
                                            (foldr (lambda (_g2419224199_
                                                            _g2419324202_)
                                                     (cons _g2419224199_
                                                           _g2419324202_))
                                                   '()
                                                   _L24169_))
                                          (cons (cons (begin
                                                        '#!void
                                                        (foldr (lambda (_g2419424205_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2419524208_)
                         (cons _g2419424205_ _g2419524208_))
                       '()
                       _L24170_))
              (begin
                '#!void
                (foldr (lambda (_g2419624211_ _g2419724214_)
                         (cons _g2419624211_ _g2419724214_))
                       '()
                       _L24167_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                            _body2405024163_
                            _expr2403424131_
                            _hd2403524134_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop2404524143_
                                                    _target2404224137_
                                                    '()))
                                                 (_g2397324056_
                                                  _g2397424060_)))))
                                       (_g2397324056_ _g2397424060_))
                                   (_g2397324056_ _g2397424060_)))))))
               (_loop2402824089_ _target2402524083_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2397324056_
                                                      _g2397424060_)))))
                                           (_g2397324056_ _g2397424060_))
                                       (_g2397324056_ _g2397424060_))))
                               (_g2397324056_ _g2397424060_))))
                       (_g2397324056_ _g2397424060_)))))
            (let ((_g2397124329_
                   (lambda (_g2397424221_)
                     (if (gx#stx-pair? _g2397424221_)
                         (let ((_e2399524224_ (gx#syntax-e _g2397424221_)))
                           (let ((_hd2399624228_ (##car _e2399524224_))
                                 (_tl2399724231_ (##cdr _e2399524224_)))
                             (if (gx#stx-pair? _tl2399724231_)
                                 (let ((_e2399824234_
                                        (gx#syntax-e _tl2399724231_)))
                                   (let ((_hd2399924238_ (##car _e2399824234_))
                                         (_tl2400024241_
                                          (##cdr _e2399824234_)))
                                     (if (gx#stx-pair? _hd2399924238_)
                                         (let ((_e2400124244_
                                                (gx#syntax-e _hd2399924238_)))
                                           (let ((_hd2400224248_
                                                  (##car _e2400124244_))
                                                 (_tl2400324251_
                                                  (##cdr _e2400124244_)))
                                             (if (gx#stx-pair? _tl2400324251_)
                                                 (let ((_e2400424254_
                                                        (gx#syntax-e
                                                         _tl2400324251_)))
                                                   (let ((_hd2400524258_
                                                          (##car _e2400424254_))
                                                         (_tl2400624261_
                                                          (##cdr _e2400424254_)))
                                                     (if (gx#stx-null?
                                                          _tl2400624261_)
                                                         (if (gx#stx-pair/null?
                                                              _tl2400024241_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _tl2400024241_)
                               '0)
                         (let ((_g28164_
                                (gx#syntax-split-splice _tl2400024241_ '0)))
                           (begin
                             (let ((_g28165_ (values-count _g28164_)))
                               (if (not (fx= _g28165_ 2))
                                   (error "Context expects 2 values"
                                          _g28165_)))
                             (let ((_target2400724264_ (values-ref _g28164_ 0))
                                   (_tl2400924267_ (values-ref _g28164_ 1)))
                               (if (gx#stx-null? _tl2400924267_)
                                   (letrec ((_loop2401024270_
                                             (lambda (_hd2400824274_
                                                      _body2401424277_)
                                               (if (gx#stx-pair?
                                                    _hd2400824274_)
                                                   (let ((_e2401124280_
                                                          (gx#syntax-e
                                                           _hd2400824274_)))
                                                     (let ((_lp-hd2401224284_
                                                            (##car _e2401124280_))
                                                           (_lp-tl2401324287_
                                                            (##cdr _e2401124280_)))
                                                       (_loop2401024270_
                                                        _lp-tl2401324287_
                                                        (cons _lp-hd2401224284_
                                                              _body2401424277_))))
                                                   (let ((_body2401524290_
                                                          (reverse _body2401424277_)))
                                                     ((lambda (_L24294_
                                                               _L24296_
                                                               _L24297_
                                                               _L24298_)
                                                        (if (|gerbil/core::<match>[1]#match-pattern?|
                                                             _L24297_)
                                                            (cons _L24298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons _L24297_ (cons _L24296_ '())) '())
                                (begin
                                  '#!void
                                  (foldr (lambda (_g2432024323_ _g2432124326_)
                                           (cons _g2432024323_ _g2432124326_))
                                         '()
                                         _L24294_))))
                    (_g2397224217_ _g2397424221_)))
              _body2401524290_
              _hd2400524258_
              _hd2400224248_
              _hd2399624228_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop2401024270_ _target2400724264_ '()))
                                   (_g2397224217_ _g2397424221_)))))
                         (_g2397224217_ _g2397424221_))
                     (_g2397224217_ _g2397424221_))
                 (_g2397224217_ _g2397424221_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2397224217_
                                                  _g2397424221_))))
                                         (_g2397224217_ _g2397424221_))))
                                 (_g2397224217_ _g2397424221_))))
                         (_g2397224217_ _g2397424221_)))))
              (let ((_g2397024411_
                     (lambda (_g2397424333_)
                       (if (gx#stx-pair? _g2397424333_)
                           (let ((_e2397624336_ (gx#syntax-e _g2397424333_)))
                             (let ((_hd2397724340_ (##car _e2397624336_))
                                   (_tl2397824343_ (##cdr _e2397624336_)))
                               (if (gx#stx-pair? _tl2397824343_)
                                   (let ((_e2397924346_
                                          (gx#syntax-e _tl2397824343_)))
                                     (let ((_hd2398024350_
                                            (##car _e2397924346_))
                                           (_tl2398124353_
                                            (##cdr _e2397924346_)))
                                       (if (gx#stx-null? _hd2398024350_)
                                           (if (gx#stx-pair/null?
                                                _tl2398124353_)
                                               (if (fx>= (gx#stx-length
                                                          _tl2398124353_)
                                                         '0)
                                                   (let ((_g28166_
                                                          (gx#syntax-split-splice
                                                           _tl2398124353_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28167_
                                                              (values-count
                                                               _g28166_)))
                                                         (if (not (fx= _g28167_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28167_)))
               (let ((_target2398224356_ (values-ref _g28166_ 0))
                     (_tl2398424359_ (values-ref _g28166_ 1)))
                 (if (gx#stx-null? _tl2398424359_)
                     (letrec ((_loop2398524362_
                               (lambda (_hd2398324366_ _body2398924369_)
                                 (if (gx#stx-pair? _hd2398324366_)
                                     (let ((_e2398624372_
                                            (gx#syntax-e _hd2398324366_)))
                                       (let ((_lp-hd2398724376_
                                              (##car _e2398624372_))
                                             (_lp-tl2398824379_
                                              (##cdr _e2398624372_)))
                                         (_loop2398524362_
                                          _lp-tl2398824379_
                                          (cons _lp-hd2398724376_
                                                _body2398924369_))))
                                     (let ((_body2399024382_
                                            (reverse _body2398924369_)))
                                       ((lambda (_L24386_)
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons '()
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2440224405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2440324408_)
                         (cons _g2440224405_ _g2440324408_))
                       '()
                       _L24386_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body2399024382_))))))
                       (_loop2398524362_ _target2398224356_ '()))
                     (_g2397124329_ _g2397424333_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2397124329_
                                                    _g2397424333_))
                                               (_g2397124329_ _g2397424333_))
                                           (_g2397124329_ _g2397424333_))))
                                   (_g2397124329_ _g2397424333_))))
                           (_g2397124329_ _g2397424333_)))))
                (_g2397024411_ _$stx23967_)))))))
    (define |gerbil/core::<match>[:0:]#with*|
      (lambda (_$stx24419_)
        (let ((_g2442424476_
               (lambda (_g2442524472_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2442524472_))))
          (let ((_g2442324559_
                 (lambda (_g2442524480_)
                   (if (gx#stx-pair? _g2442524480_)
                       (let ((_e2445624483_ (gx#syntax-e _g2442524480_)))
                         (let ((_hd2445724487_ (##car _e2445624483_))
                               (_tl2445824490_ (##cdr _e2445624483_)))
                           (if (gx#stx-pair? _tl2445824490_)
                               (let ((_e2445924493_
                                      (gx#syntax-e _tl2445824490_)))
                                 (let ((_hd2446024497_ (##car _e2445924493_))
                                       (_tl2446124500_ (##cdr _e2445924493_)))
                                   (if (gx#stx-null? _hd2446024497_)
                                       (if (gx#stx-pair/null? _tl2446124500_)
                                           (if (fx>= (gx#stx-length
                                                      _tl2446124500_)
                                                     '0)
                                               (let ((_g28168_
                                                      (gx#syntax-split-splice
                                                       _tl2446124500_
                                                       '0)))
                                                 (begin
                                                   (let ((_g28169_
                                                          (values-count
                                                           _g28168_)))
                                                     (if (not (fx= _g28169_ 2))
                                                         (error "Context expects 2 values"
                                                                _g28169_)))
                                                   (let ((_target2446224503_
                                                          (values-ref
                                                           _g28168_
                                                           0))
                                                         (_tl2446424506_
                                                          (values-ref
                                                           _g28168_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl2446424506_)
                                                         (letrec ((_loop2446524509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd2446324513_ _body2446924516_)
                             (if (gx#stx-pair? _hd2446324513_)
                                 (let ((_e2446624519_
                                        (gx#syntax-e _hd2446324513_)))
                                   (let ((_lp-hd2446724523_
                                          (##car _e2446624519_))
                                         (_lp-tl2446824526_
                                          (##cdr _e2446624519_)))
                                     (_loop2446524509_
                                      _lp-tl2446824526_
                                      (cons _lp-hd2446724523_
                                            _body2446924516_))))
                                 (let ((_body2447024529_
                                        (reverse _body2446924516_)))
                                   ((lambda (_L24533_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g2455024553_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2455124556_)
                     (cons _g2455024553_ _g2455124556_))
                   '()
                   _L24533_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _body2447024529_))))))
                   (_loop2446524509_ _target2446224503_ '()))
                 (_g2442424476_ _g2442524480_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2442424476_ _g2442524480_))
                                           (_g2442424476_ _g2442524480_))
                                       (_g2442424476_ _g2442524480_))))
                               (_g2442424476_ _g2442524480_))))
                       (_g2442424476_ _g2442524480_)))))
            (let ((_g2442224685_
                   (lambda (_g2442524563_)
                     (if (gx#stx-pair? _g2442524563_)
                         (let ((_e2443124566_ (gx#syntax-e _g2442524563_)))
                           (let ((_hd2443224570_ (##car _e2443124566_))
                                 (_tl2443324573_ (##cdr _e2443124566_)))
                             (if (gx#stx-pair? _tl2443324573_)
                                 (let ((_e2443424576_
                                        (gx#syntax-e _tl2443324573_)))
                                   (let ((_hd2443524580_ (##car _e2443424576_))
                                         (_tl2443624583_
                                          (##cdr _e2443424576_)))
                                     (if (gx#stx-pair? _hd2443524580_)
                                         (let ((_e2443724586_
                                                (gx#syntax-e _hd2443524580_)))
                                           (let ((_hd2443824590_
                                                  (##car _e2443724586_))
                                                 (_tl2443924593_
                                                  (##cdr _e2443724586_)))
                                             (if (gx#stx-pair? _hd2443824590_)
                                                 (let ((_e2444024596_
                                                        (gx#syntax-e
                                                         _hd2443824590_)))
                                                   (let ((_hd2444124600_
                                                          (##car _e2444024596_))
                                                         (_tl2444224603_
                                                          (##cdr _e2444024596_)))
                                                     (if (gx#stx-pair?
                                                          _tl2444224603_)
                                                         (let ((_e2444324606_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2444224603_)))
                   (let ((_hd2444424610_ (##car _e2444324606_))
                         (_tl2444524613_ (##cdr _e2444324606_)))
                     (if (gx#stx-null? _tl2444524613_)
                         (if (gx#stx-pair/null? _tl2443624583_)
                             (if (fx>= (gx#stx-length _tl2443624583_) '0)
                                 (let ((_g28170_
                                        (gx#syntax-split-splice
                                         _tl2443624583_
                                         '0)))
                                   (begin
                                     (let ((_g28171_ (values-count _g28170_)))
                                       (if (not (fx= _g28171_ 2))
                                           (error "Context expects 2 values"
                                                  _g28171_)))
                                     (let ((_target2444624616_
                                            (values-ref _g28170_ 0))
                                           (_tl2444824619_
                                            (values-ref _g28170_ 1)))
                                       (if (gx#stx-null? _tl2444824619_)
                                           (letrec ((_loop2444924622_
                                                     (lambda (_hd2444724626_
                                                              _body2445324629_)
                                                       (if (gx#stx-pair?
                                                            _hd2444724626_)
                                                           (let ((_e2445024632_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd2444724626_)))
                     (let ((_lp-hd2445124636_ (##car _e2445024632_))
                           (_lp-tl2445224639_ (##cdr _e2445024632_)))
                       (_loop2444924622_
                        _lp-tl2445224639_
                        (cons _lp-hd2445124636_ _body2445324629_))))
                   (let ((_body2445424642_ (reverse _body2445324629_)))
                     ((lambda (_L24646_ _L24648_ _L24649_ _L24650_ _L24651_)
                        (cons (gx#datum->syntax '#f 'with)
                              (cons (cons (cons _L24650_ (cons _L24649_ '()))
                                          '())
                                    (cons (cons _L24651_
                                                (cons _L24648_
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2467624679_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2467724682_)
                         (cons _g2467624679_ _g2467724682_))
                       '()
                       _L24646_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))))
                      _body2445424642_
                      _tl2443924593_
                      _hd2444424610_
                      _hd2444124600_
                      _hd2443224570_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop2444924622_
                                              _target2444624616_
                                              '()))
                                           (_g2442324559_ _g2442524563_)))))
                                 (_g2442324559_ _g2442524563_))
                             (_g2442324559_ _g2442524563_))
                         (_g2442324559_ _g2442524563_))))
                 (_g2442324559_ _g2442524563_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2442324559_
                                                  _g2442524563_))))
                                         (_g2442324559_ _g2442524563_))))
                                 (_g2442324559_ _g2442524563_))))
                         (_g2442324559_ _g2442524563_)))))
              (_g2442224685_ _$stx24419_))))))
    (define |gerbil/core::<match>[:0:]#?|
      (lambda (_$stx24691_)
        (let ((_g2470224846_
               (lambda (_g2470324842_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2470324842_))))
          (let ((_g2470124941_
                 (lambda (_g2470324850_)
                   (if (gx#stx-pair? _g2470324850_)
                       (let ((_e2482324853_ (gx#syntax-e _g2470324850_)))
                         (let ((_hd2482424857_ (##car _e2482324853_))
                               (_tl2482524860_ (##cdr _e2482324853_)))
                           (if (gx#stx-pair? _tl2482524860_)
                               (let ((_e2482624863_
                                      (gx#syntax-e _tl2482524860_)))
                                 (let ((_hd2482724867_ (##car _e2482624863_))
                                       (_tl2482824870_ (##cdr _e2482624863_)))
                                   (if (gx#stx-pair? _tl2482824870_)
                                       (let ((_e2482924873_
                                              (gx#syntax-e _tl2482824870_)))
                                         (let ((_hd2483024877_
                                                (##car _e2482924873_))
                                               (_tl2483124880_
                                                (##cdr _e2482924873_)))
                                           (if (gx#stx-datum? _hd2483024877_)
                                               (if (equal? (gx#stx-e
                                                            _hd2483024877_)
                                                           '::)
                                                   (if (gx#stx-pair?
                                                        _tl2483124880_)
                                                       (let ((_e2483224883_
                                                              (gx#syntax-e
                                                               _tl2483124880_)))
                                                         (let ((_hd2483324887_
                                                                (##car _e2483224883_))
                                                               (_tl2483424890_
                                                                (##cdr _e2483224883_)))
                                                           (if (gx#stx-pair?
                                                                _tl2483424890_)
                                                               (let ((_e2483524893_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2483424890_)))
                         (let ((_hd2483624897_ (##car _e2483524893_))
                               (_tl2483724900_ (##cdr _e2483524893_)))
                           (if (gx#identifier? _hd2483624897_)
                               (if (gx#free-identifier=?
                                    |gerbil/core::<match>[1]#_g28172_|
                                    _hd2483624897_)
                                   (if (gx#stx-pair? _tl2483724900_)
                                       (let ((_e2483824903_
                                              (gx#syntax-e _tl2483724900_)))
                                         (let ((_hd2483924907_
                                                (##car _e2483824903_))
                                               (_tl2484024910_
                                                (##cdr _e2483824903_)))
                                           (if (gx#stx-null? _tl2484024910_)
                                               ((lambda (_L24913_
                                                         _L24915_
                                                         _L24916_
                                                         _L24917_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$obj)
                            '())
                      (cons (cons (gx#datum->syntax '#f 'and)
                                  (cons (cons _L24917_
                                              (cons _L24916_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '$obj)
                                                          '())))
                                        (cons (cons _L24913_
                                                    (cons (cons _L24915_
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
                                                _hd2483924907_
                                                _hd2483324887_
                                                _hd2482724867_
                                                _hd2482424857_)
                                               (_g2470224846_ _g2470324850_))))
                                       (_g2470224846_ _g2470324850_))
                                   (_g2470224846_ _g2470324850_))
                               (_g2470224846_ _g2470324850_))))
                       (_g2470224846_ _g2470324850_))))
               (_g2470224846_ _g2470324850_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2470224846_
                                                    _g2470324850_))
                                               (_g2470224846_ _g2470324850_))))
                                       (_g2470224846_ _g2470324850_))))
                               (_g2470224846_ _g2470324850_))))
                       (_g2470224846_ _g2470324850_)))))
            (let ((_g2470025009_
                   (lambda (_g2470324945_)
                     (if (gx#stx-pair? _g2470324945_)
                         (let ((_e2480724948_ (gx#syntax-e _g2470324945_)))
                           (let ((_hd2480824952_ (##car _e2480724948_))
                                 (_tl2480924955_ (##cdr _e2480724948_)))
                             (if (gx#stx-pair? _tl2480924955_)
                                 (let ((_e2481024958_
                                        (gx#syntax-e _tl2480924955_)))
                                   (let ((_hd2481124962_ (##car _e2481024958_))
                                         (_tl2481224965_
                                          (##cdr _e2481024958_)))
                                     (if (gx#stx-pair? _tl2481224965_)
                                         (let ((_e2481324968_
                                                (gx#syntax-e _tl2481224965_)))
                                           (let ((_hd2481424972_
                                                  (##car _e2481324968_))
                                                 (_tl2481524975_
                                                  (##cdr _e2481324968_)))
                                             (if (gx#stx-datum? _hd2481424972_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2481424972_)
                                                             '::)
                                                     (if (gx#stx-pair?
                                                          _tl2481524975_)
                                                         (let ((_e2481624978_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2481524975_)))
                   (let ((_hd2481724982_ (##car _e2481624978_))
                         (_tl2481824985_ (##cdr _e2481624978_)))
                     (if (gx#stx-null? _tl2481824985_)
                         ((lambda (_L24988_ _L24990_ _L24991_)
                            (cons (gx#datum->syntax '#f 'lambda)
                                  (cons (cons (gx#datum->syntax '#f '$obj) '())
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'alet)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$val)
                        (cons (cons _L24991_
                                    (cons _L24990_
                                          (cons (gx#datum->syntax '#f '$obj)
                                                '())))
                              '()))
                  (cons (cons _L24988_ (cons (gx#datum->syntax '#f '$val) '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          _hd2481724982_
                          _hd2481124962_
                          _hd2480824952_)
                         (_g2470124941_ _g2470324945_))))
                 (_g2470124941_ _g2470324945_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2470124941_
                                                      _g2470324945_))
                                                 (_g2470124941_
                                                  _g2470324945_))))
                                         (_g2470124941_ _g2470324945_))))
                                 (_g2470124941_ _g2470324945_))))
                         (_g2470124941_ _g2470324945_)))))
              (let ((_g2469925077_
                     (lambda (_g2470325013_)
                       (if (gx#stx-pair? _g2470325013_)
                           (let ((_e2479225016_ (gx#syntax-e _g2470325013_)))
                             (let ((_hd2479325020_ (##car _e2479225016_))
                                   (_tl2479425023_ (##cdr _e2479225016_)))
                               (if (gx#stx-pair? _tl2479425023_)
                                   (let ((_e2479525026_
                                          (gx#syntax-e _tl2479425023_)))
                                     (let ((_hd2479625030_
                                            (##car _e2479525026_))
                                           (_tl2479725033_
                                            (##cdr _e2479525026_)))
                                       (if (gx#stx-pair? _tl2479725033_)
                                           (let ((_e2479825036_
                                                  (gx#syntax-e
                                                   _tl2479725033_)))
                                             (let ((_hd2479925040_
                                                    (##car _e2479825036_))
                                                   (_tl2480025043_
                                                    (##cdr _e2479825036_)))
                                               (if (gx#identifier?
                                                    _hd2479925040_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core::<match>[1]#_g28173_|
                                                        _hd2479925040_)
                                                       (if (gx#stx-pair?
                                                            _tl2480025043_)
                                                           (let ((_e2480125046_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl2480025043_)))
                     (let ((_hd2480225050_ (##car _e2480125046_))
                           (_tl2480325053_ (##cdr _e2480125046_)))
                       (if (gx#stx-null? _tl2480325053_)
                           ((lambda (_L25056_ _L25058_ _L25059_)
                              (cons (gx#datum->syntax '#f 'lambda)
                                    (cons (cons (gx#datum->syntax '#f '$obj)
                                                '())
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'and)
                                                      (cons (cons _L25059_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L25058_
                                (cons (gx#datum->syntax '#f '$obj) '())))
                    (cons (cons _L25056_
                                (cons (gx#datum->syntax '#f '$obj) '()))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                            _hd2480225050_
                            _hd2479625030_
                            _hd2479325020_)
                           (_g2470025009_ _g2470325013_))))
                   (_g2470025009_ _g2470325013_))
               (_g2470025009_ _g2470325013_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2470025009_
                                                    _g2470325013_))))
                                           (_g2470025009_ _g2470325013_))))
                                   (_g2470025009_ _g2470325013_))))
                           (_g2470025009_ _g2470325013_)))))
                (let ((_g2469825119_
                       (lambda (_g2470325081_)
                         (if (gx#stx-pair? _g2470325081_)
                             (let ((_e2478325084_ (gx#syntax-e _g2470325081_)))
                               (let ((_hd2478425088_ (##car _e2478325084_))
                                     (_tl2478525091_ (##cdr _e2478325084_)))
                                 (if (gx#stx-pair? _tl2478525091_)
                                     (let ((_e2478625094_
                                            (gx#syntax-e _tl2478525091_)))
                                       (let ((_hd2478725098_
                                              (##car _e2478625094_))
                                             (_tl2478825101_
                                              (##cdr _e2478625094_)))
                                         (if (gx#stx-null? _tl2478825101_)
                                             ((lambda (_L25104_ _L25106_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '$obj)
                          '())
                    (cons (cons _L25106_
                                (cons _L25104_
                                      (cons (gx#datum->syntax '#f '$obj) '())))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd2478725098_
                                              _hd2478425088_)
                                             (_g2469925077_ _g2470325081_))))
                                     (_g2469925077_ _g2470325081_))))
                             (_g2469925077_ _g2470325081_)))))
                  (let ((_g2469725173_
                         (lambda (_g2470325123_)
                           (if (gx#stx-pair? _g2470325123_)
                               (let ((_e2477225126_
                                      (gx#syntax-e _g2470325123_)))
                                 (let ((_hd2477325130_ (##car _e2477225126_))
                                       (_tl2477425133_ (##cdr _e2477225126_)))
                                   (if (gx#stx-pair? _tl2477425133_)
                                       (let ((_e2477525136_
                                              (gx#syntax-e _tl2477425133_)))
                                         (let ((_hd2477625140_
                                                (##car _e2477525136_))
                                               (_tl2477725143_
                                                (##cdr _e2477525136_)))
                                           (if (gx#stx-pair? _tl2477725143_)
                                               (let ((_e2477825146_
                                                      (gx#syntax-e
                                                       _tl2477725143_)))
                                                 (let ((_hd2477925150_
                                                        (##car _e2477825146_))
                                                       (_tl2478025153_
                                                        (##cdr _e2477825146_)))
                                                   (if (gx#stx-null?
                                                        _tl2478025153_)
                                                       ((lambda (_L25156_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L25158_)
                  (cons _L25158_ (cons _L25156_ '())))
                _hd2477925150_
                _hd2477625140_)
               (_g2469825119_ _g2470325123_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2469825119_ _g2470325123_))))
                                       (_g2469825119_ _g2470325123_))))
                               (_g2469825119_ _g2470325123_)))))
                    (let ((_g2469625253_
                           (lambda (_g2470325177_)
                             (if (gx#stx-pair? _g2470325177_)
                                 (let ((_e2475525180_
                                        (gx#syntax-e _g2470325177_)))
                                   (let ((_hd2475625184_ (##car _e2475525180_))
                                         (_tl2475725187_
                                          (##cdr _e2475525180_)))
                                     (if (gx#stx-pair? _tl2475725187_)
                                         (let ((_e2475825190_
                                                (gx#syntax-e _tl2475725187_)))
                                           (let ((_hd2475925194_
                                                  (##car _e2475825190_))
                                                 (_tl2476025197_
                                                  (##cdr _e2475825190_)))
                                             (if (gx#stx-pair? _hd2475925194_)
                                                 (let ((_e2476125200_
                                                        (gx#syntax-e
                                                         _hd2475925194_)))
                                                   (let ((_hd2476225204_
                                                          (##car _e2476125200_))
                                                         (_tl2476325207_
                                                          (##cdr _e2476125200_)))
                                                     (if (gx#identifier?
                                                          _hd2476225204_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core::<match>[1]#_g28174_|
                                                              _hd2476225204_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2476325207_)
                         (let ((_e2476425210_ (gx#syntax-e _tl2476325207_)))
                           (let ((_hd2476525214_ (##car _e2476425210_))
                                 (_tl2476625217_ (##cdr _e2476425210_)))
                             (if (gx#stx-null? _tl2476625217_)
                                 (if (gx#stx-pair? _tl2476025197_)
                                     (let ((_e2476725220_
                                            (gx#syntax-e _tl2476025197_)))
                                       (let ((_hd2476825224_
                                              (##car _e2476725220_))
                                             (_tl2476925227_
                                              (##cdr _e2476725220_)))
                                         (if (gx#stx-null? _tl2476925227_)
                                             ((lambda (_L25230_
                                                       _L25232_
                                                       _L25233_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'not)
                                                      (cons (cons _L25233_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L25232_ (cons _L25230_ '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd2476825224_
                                              _hd2476525214_
                                              _hd2475625184_)
                                             (_g2469725173_ _g2470325177_))))
                                     (_g2469725173_ _g2470325177_))
                                 (_g2469725173_ _g2470325177_))))
                         (_g2469725173_ _g2470325177_))
                     (_g2469725173_ _g2470325177_))
                 (_g2469725173_ _g2470325177_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2469725173_
                                                  _g2470325177_))))
                                         (_g2469725173_ _g2470325177_))))
                                 (_g2469725173_ _g2470325177_)))))
                      (let ((_g2469525363_
                             (lambda (_g2470325257_)
                               (if (gx#stx-pair? _g2470325257_)
                                   (let ((_e2473125260_
                                          (gx#syntax-e _g2470325257_)))
                                     (let ((_hd2473225264_
                                            (##car _e2473125260_))
                                           (_tl2473325267_
                                            (##cdr _e2473125260_)))
                                       (if (gx#stx-pair? _tl2473325267_)
                                           (let ((_e2473425270_
                                                  (gx#syntax-e
                                                   _tl2473325267_)))
                                             (let ((_hd2473525274_
                                                    (##car _e2473425270_))
                                                   (_tl2473625277_
                                                    (##cdr _e2473425270_)))
                                               (if (gx#stx-pair?
                                                    _hd2473525274_)
                                                   (let ((_e2473725280_
                                                          (gx#syntax-e
                                                           _hd2473525274_)))
                                                     (let ((_hd2473825284_
                                                            (##car _e2473725280_))
                                                           (_tl2473925287_
                                                            (##cdr _e2473725280_)))
                                                       (if (gx#identifier?
                                                            _hd2473825284_)
                                                           (if (gx#free-identifier=?
                                                                |gerbil/core::<match>[1]#_g28175_|
                                                                _hd2473825284_)
                                                               (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl2473925287_)
                           (if (fx>= (gx#stx-length _tl2473925287_) '0)
                               (let ((_g28176_
                                      (gx#syntax-split-splice
                                       _tl2473925287_
                                       '0)))
                                 (begin
                                   (let ((_g28177_ (values-count _g28176_)))
                                     (if (not (fx= _g28177_ 2))
                                         (error "Context expects 2 values"
                                                _g28177_)))
                                   (let ((_target2474025290_
                                          (values-ref _g28176_ 0))
                                         (_tl2474225293_
                                          (values-ref _g28176_ 1)))
                                     (if (gx#stx-null? _tl2474225293_)
                                         (letrec ((_loop2474325296_
                                                   (lambda (_hd2474125300_
                                                            _pred2474725303_)
                                                     (if (gx#stx-pair?
                                                          _hd2474125300_)
                                                         (let ((_e2474425306_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2474125300_)))
                   (let ((_lp-hd2474525310_ (##car _e2474425306_))
                         (_lp-tl2474625313_ (##cdr _e2474425306_)))
                     (_loop2474325296_
                      _lp-tl2474625313_
                      (cons _lp-hd2474525310_ _pred2474725303_))))
                 (let ((_pred2474825316_ (reverse _pred2474725303_)))
                   (if (gx#stx-pair? _tl2473625277_)
                       (let ((_e2474925320_ (gx#syntax-e _tl2473625277_)))
                         (let ((_hd2475025324_ (##car _e2474925320_))
                               (_tl2475125327_ (##cdr _e2474925320_)))
                           (if (gx#stx-null? _tl2475125327_)
                               ((lambda (_L25330_ _L25332_ _L25333_)
                                  (cons (gx#datum->syntax '#f 'or)
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g2535425357_
                                                          _g2535525360_)
                                                   (cons (cons _L25333_
                                                               (cons _g2535425357_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L25330_ '())))
                 _g2535525360_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L25332_))))
                                _hd2475025324_
                                _pred2474825316_
                                _hd2473225264_)
                               (_g2469625253_ _g2470325257_))))
                       (_g2469625253_ _g2470325257_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop2474325296_
                                            _target2474025290_
                                            '()))
                                         (_g2469625253_ _g2470325257_)))))
                               (_g2469625253_ _g2470325257_))
                           (_g2469625253_ _g2470325257_))
                       (_g2469625253_ _g2470325257_))
                   (_g2469625253_ _g2470325257_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2469625253_
                                                    _g2470325257_))))
                                           (_g2469625253_ _g2470325257_))))
                                   (_g2469625253_ _g2470325257_)))))
                        (let ((_g2469425473_
                               (lambda (_g2470325367_)
                                 (if (gx#stx-pair? _g2470325367_)
                                     (let ((_e2470725370_
                                            (gx#syntax-e _g2470325367_)))
                                       (let ((_hd2470825374_
                                              (##car _e2470725370_))
                                             (_tl2470925377_
                                              (##cdr _e2470725370_)))
                                         (if (gx#stx-pair? _tl2470925377_)
                                             (let ((_e2471025380_
                                                    (gx#syntax-e
                                                     _tl2470925377_)))
                                               (let ((_hd2471125384_
                                                      (##car _e2471025380_))
                                                     (_tl2471225387_
                                                      (##cdr _e2471025380_)))
                                                 (if (gx#stx-pair?
                                                      _hd2471125384_)
                                                     (let ((_e2471325390_
                                                            (gx#syntax-e
                                                             _hd2471125384_)))
                                                       (let ((_hd2471425394_
                                                              (##car _e2471325390_))
                                                             (_tl2471525397_
                                                              (##cdr _e2471325390_)))
                                                         (if (gx#identifier?
                                                              _hd2471425394_)
                                                             (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          |gerbil/core::<match>[1]#_g28178_|
                          _hd2471425394_)
                         (if (gx#stx-pair/null? _tl2471525397_)
                             (if (fx>= (gx#stx-length _tl2471525397_) '0)
                                 (let ((_g28179_
                                        (gx#syntax-split-splice
                                         _tl2471525397_
                                         '0)))
                                   (begin
                                     (let ((_g28180_ (values-count _g28179_)))
                                       (if (not (fx= _g28180_ 2))
                                           (error "Context expects 2 values"
                                                  _g28180_)))
                                     (let ((_target2471625400_
                                            (values-ref _g28179_ 0))
                                           (_tl2471825403_
                                            (values-ref _g28179_ 1)))
                                       (if (gx#stx-null? _tl2471825403_)
                                           (letrec ((_loop2471925406_
                                                     (lambda (_hd2471725410_
                                                              _pred2472325413_)
                                                       (if (gx#stx-pair?
                                                            _hd2471725410_)
                                                           (let ((_e2472025416_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd2471725410_)))
                     (let ((_lp-hd2472125420_ (##car _e2472025416_))
                           (_lp-tl2472225423_ (##cdr _e2472025416_)))
                       (_loop2471925406_
                        _lp-tl2472225423_
                        (cons _lp-hd2472125420_ _pred2472325413_))))
                   (let ((_pred2472425426_ (reverse _pred2472325413_)))
                     (if (gx#stx-pair? _tl2471225387_)
                         (let ((_e2472525430_ (gx#syntax-e _tl2471225387_)))
                           (let ((_hd2472625434_ (##car _e2472525430_))
                                 (_tl2472725437_ (##cdr _e2472525430_)))
                             (if (gx#stx-null? _tl2472725437_)
                                 ((lambda (_L25440_ _L25442_ _L25443_)
                                    (cons (gx#datum->syntax '#f 'and)
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2546425467_
                                                            _g2546525470_)
                                                     (cons (cons _L25443_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _g2546425467_ (cons _L25440_ '())))
                   _g2546525470_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _L25442_))))
                                  _hd2472625434_
                                  _pred2472425426_
                                  _hd2470825374_)
                                 (_g2469525363_ _g2470325367_))))
                         (_g2469525363_ _g2470325367_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop2471925406_
                                              _target2471625400_
                                              '()))
                                           (_g2469525363_ _g2470325367_)))))
                                 (_g2469525363_ _g2470325367_))
                             (_g2469525363_ _g2470325367_))
                         (_g2469525363_ _g2470325367_))
                     (_g2469525363_ _g2470325367_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2469525363_
                                                      _g2470325367_))))
                                             (_g2469525363_ _g2470325367_))))
                                     (_g2469525363_ _g2470325367_)))))
                          (_g2469425473_ _$stx24691_))))))))))))
    (define |gerbil/core::<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx25479_)
        (let ((_g2548425518_
               (lambda (_g2548525514_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2548525514_))))
          (let ((_g2548325575_
                 (lambda (_g2548525522_)
                   (if (gx#stx-pair? _g2548525522_)
                       (let ((_e2550425525_ (gx#syntax-e _g2548525522_)))
                         (let ((_hd2550525529_ (##car _e2550425525_))
                               (_tl2550625532_ (##cdr _e2550425525_)))
                           (if (gx#stx-pair? _tl2550625532_)
                               (let ((_e2550725535_
                                      (gx#syntax-e _tl2550625532_)))
                                 (let ((_hd2550825539_ (##car _e2550725535_))
                                       (_tl2550925542_ (##cdr _e2550725535_)))
                                   (if (gx#stx-pair? _tl2550925542_)
                                       (let ((_e2551025545_
                                              (gx#syntax-e _tl2550925542_)))
                                         (let ((_hd2551125549_
                                                (##car _e2551025545_))
                                               (_tl2551225552_
                                                (##cdr _e2551025545_)))
                                           (if (gx#stx-null? _tl2551225552_)
                                               ((lambda (_L25555_
                                                         _L25557_
                                                         _L25558_)
                                                  (cons _L25558_
                                                        (cons _L25557_
                                                              (cons _L25555_
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
                                                _hd2551125549_
                                                _hd2550825539_
                                                _hd2550525529_)
                                               (_g2548425518_ _g2548525522_))))
                                       (_g2548425518_ _g2548525522_))))
                               (_g2548425518_ _g2548525522_))))
                       (_g2548425518_ _g2548525522_)))))
            (let ((_g2548225643_
                   (lambda (_g2548525579_)
                     (if (gx#stx-pair? _g2548525579_)
                         (let ((_e2548925582_ (gx#syntax-e _g2548525579_)))
                           (let ((_hd2549025586_ (##car _e2548925582_))
                                 (_tl2549125589_ (##cdr _e2548925582_)))
                             (if (gx#stx-pair? _tl2549125589_)
                                 (let ((_e2549225592_
                                        (gx#syntax-e _tl2549125589_)))
                                   (let ((_hd2549325596_ (##car _e2549225592_))
                                         (_tl2549425599_
                                          (##cdr _e2549225592_)))
                                     (if (gx#stx-pair? _tl2549425599_)
                                         (let ((_e2549525602_
                                                (gx#syntax-e _tl2549425599_)))
                                           (let ((_hd2549625606_
                                                  (##car _e2549525602_))
                                                 (_tl2549725609_
                                                  (##cdr _e2549525602_)))
                                             (if (gx#stx-pair? _tl2549725609_)
                                                 (let ((_e2549825612_
                                                        (gx#syntax-e
                                                         _tl2549725609_)))
                                                   (let ((_hd2549925616_
                                                          (##car _e2549825612_))
                                                         (_tl2550025619_
                                                          (##cdr _e2549825612_)))
                                                     (if (gx#stx-null?
                                                          _tl2550025619_)
                                                         ((lambda (_L25622_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L25624_
                           _L25625_)
                    (if (gx#identifier? _L25625_)
                        (cons (gx#datum->syntax '#f 'defsyntax)
                              (cons _L25625_
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'make-match-macro)
                                                (cons 'macro:
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let)
                          (cons (cons (cons (gx#datum->syntax '#f '$match-e)
                                            (cons _L25624_ '()))
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '$macro-e)
                                                  (cons _L25622_ '()))
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
                        (_g2548325575_ _g2548525579_)))
                  _hd2549925616_
                  _hd2549625606_
                  _hd2549325596_)
                 (_g2548325575_ _g2548525579_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2548325575_
                                                  _g2548525579_))))
                                         (_g2548325575_ _g2548525579_))))
                                 (_g2548325575_ _g2548525579_))))
                         (_g2548325575_ _g2548525579_)))))
              (_g2548225643_ _$stx25479_))))))
    (define |gerbil/core::<match>[:0:]#defrules-for-match|
      (lambda (_$stx25647_)
        (let ((_g2565125666_
               (lambda (_g2565225662_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2565225662_))))
          (let ((_g2565025709_
                 (lambda (_g2565225670_)
                   (if (gx#stx-pair? _g2565225670_)
                       (let ((_e2565525673_ (gx#syntax-e _g2565225670_)))
                         (let ((_hd2565625677_ (##car _e2565525673_))
                               (_tl2565725680_ (##cdr _e2565525673_)))
                           (if (gx#stx-pair? _tl2565725680_)
                               (let ((_e2565825683_
                                      (gx#syntax-e _tl2565725680_)))
                                 (let ((_hd2565925687_ (##car _e2565825683_))
                                       (_tl2566025690_ (##cdr _e2565825683_)))
                                   ((lambda (_L25693_ _L25695_)
                                      (cons (gx#datum->syntax
                                             '#f
                                             'defsyntax-for-match)
                                            (cons _L25695_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'syntax-rules)
                                                              _L25693_)
                                                        '()))))
                                    _tl2566025690_
                                    _hd2565925687_)))
                               (_g2565125666_ _g2565225670_))))
                       (_g2565125666_ _g2565225670_)))))
            (_g2565025709_ _$stx25647_)))))))
