(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<match>[1]#_g29457_|
    (gx#core-quote-syntax 'quasiquote))
  (define |gerbil/core::<match>[1]#_g29458_| (gx#core-quote-syntax 'quote))
  (define |gerbil/core::<match>[1]#_g29461_| (gx#core-quote-syntax 'vector))
  (define |gerbil/core::<match>[1]#_g29462_| (gx#core-quote-syntax 'values))
  (define |gerbil/core::<match>[1]#_g29463_| (gx#core-quote-syntax 'values))
  (define |gerbil/core::<match>[1]#_g29464_| (gx#core-quote-syntax 'box))
  (define |gerbil/core::<match>[1]#_g29465_| (gx#core-quote-syntax '@list))
  (define |gerbil/core::<match>[1]#_g29466_| (gx#core-quote-syntax 'cons*))
  (define |gerbil/core::<match>[1]#_g29467_| (gx#core-quote-syntax 'cons))
  (define |gerbil/core::<match>[1]#_g29468_| (gx#core-quote-syntax 'not))
  (define |gerbil/core::<match>[1]#_g29469_| (gx#core-quote-syntax 'or))
  (define |gerbil/core::<match>[1]#_g29470_| (gx#core-quote-syntax 'and))
  (define |gerbil/core::<match>[1]#_g29471_| (gx#core-quote-syntax '?))
  (define |gerbil/core::<match>[1]#_g29472_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g29473_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g29486_| (gx#core-quote-syntax 'else))
  (define |gerbil/core::<match>[1]#_g29487_| (gx#core-quote-syntax 'else))
  (define |gerbil/core::<match>[1]#_g29488_| (gx#core-quote-syntax '<...>))
  (define |gerbil/core::<match>[1]#_g29489_| (gx#core-quote-syntax '<>))
  (define |gerbil/core::<match>[1]#_g29506_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g29507_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g29508_| (gx#core-quote-syntax 'not))
  (define |gerbil/core::<match>[1]#_g29509_| (gx#core-quote-syntax 'or))
  (define |gerbil/core::<match>[1]#_g29512_| (gx#core-quote-syntax 'and))
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
      (lambda _$args23566_
        (apply make-class-instance
               |gerbil/core::<match>[1]#match-macro::t|
               _$args23566_)))
    (define |gerbil/core::<match>[1]#syntax-local-match-macro?|
      (lambda (_stx23563_)
        (if (gx#identifier? _stx23563_)
            (|gerbil/core::<match>[1]#match-macro?|
             (gx#syntax-local-value _stx23563_ false))
            '#f)))
    (define |gerbil/core::<match>[1]#parse-match-pattern|
      (let ((_opt-lambda2194523549_
             (lambda (_stx21947_ _match-stx21949_)
               (let ((_parse-qq21957_
                      (lambda (_hd21963_)
                        (let ((_g2196521972_
                               (lambda (_g2196621968_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2196621968_))))
                          (_g2196521972_ _hd21963_)))))
                 (let ((_parse-error21958_
                        (lambda (_hd21960_)
                          (apply gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; illegal pattern"
                                 (if _match-stx21949_
                                     (cons _match-stx21949_
                                           (cons _stx21947_
                                                 (cons _hd21960_ '())))
                                     (cons _stx21947_
                                           (cons _hd21960_ '())))))))
                   (letrec ((_parse121951_
                             (lambda (_hd22298_)
                               (let ((_g2232322454_
                                      (lambda (_g2232422450_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g2232422450_))))
                                 (let ((_g2232222465_
                                        (lambda (_g2232422458_)
                                          ((lambda ()
                                             (_parse-error21958_
                                              _hd22298_))))))
                                   (let ((_g2232122483_
                                          (lambda (_g2232422469_)
                                            ((lambda (_L22472_)
                                               (if (gx#stx-datum? _L22472_)
                                                   (cons 'datum:
                                                         (cons (gx#stx-e
                                                                _L22472_)
                                                               '()))
                                                   (_g2232222465_
                                                    _g2232422469_)))
                                             _g2232422469_))))
                                     (let ((_g2232022499_
                                            (lambda (_g2232422487_)
                                              ((lambda (_L22490_)
                                                 (if (if (gx#identifier?
                                                          _L22490_)
                                                         (not (gx#ellipsis?
                                                               _L22490_))
                                                         '#f)
                                                     (cons 'var:
                                                           (cons _L22490_ '()))
                                                     (_g2232122483_
                                                      _g2232422487_)))
                                               _g2232422487_))))
                                       (let ((_g2231922515_
                                              (lambda (_g2232422503_)
                                                ((lambda (_L22506_)
                                                   (if (gx#underscore?
                                                        _L22506_)
                                                       (cons 'any: '())
                                                       (_g2232022499_
                                                        _g2232422503_)))
                                                 _g2232422503_))))
                                         (let ((_g2231822547_
                                                (lambda (_g2232422519_)
                                                  (if (gx#stx-pair?
                                                       _g2232422519_)
                                                      (let ((_e2244322522_
                                                             (gx#syntax-e
                                                              _g2232422519_)))
                                                        (let ((_hd2244422526_
                                                               (##car _e2244322522_))
                                                              (_tl2244522529_
                                                               (##cdr _e2244322522_)))
                                                          ((lambda (_L22532_)
                                                             (if (|gerbil/core::<match>[1]#syntax-local-match-macro?|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L22532_)
                         (_parse121951_
                          (gx#core-apply-expander
                           (gx#syntax-local-e _L22532_)
                           (gx#stx-wrap-source
                            (cons 'match: _hd22298_)
                            (let ((_$e22543_ (gx#stx-source _hd22298_)))
                              (if _$e22543_
                                  _$e22543_
                                  (gx#stx-source _stx21947_))))))
                         (_g2231922515_ _g2232422519_)))
                   _hd2244422526_)))
              (_g2231922515_ _g2232422519_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_g2231722587_
                                                  (lambda (_g2232422551_)
                                                    (if (gx#stx-pair?
                                                         _g2232422551_)
                                                        (let ((_e2243622554_
                                                               (gx#syntax-e
                                                                _g2232422551_)))
                                                          (let ((_hd2243722558_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2243622554_))
                        (_tl2243822561_ (##cdr _e2243622554_)))
                    (if (gx#identifier? _hd2243722558_)
                        (if (gx#free-identifier=?
                             |gerbil/core::<match>[1]#_g29457_|
                             _hd2243722558_)
                            (if (gx#stx-pair? _tl2243822561_)
                                (let ((_e2243922564_
                                       (gx#syntax-e _tl2243822561_)))
                                  (let ((_hd2244022568_ (##car _e2243922564_))
                                        (_tl2244122571_ (##cdr _e2243922564_)))
                                    (if (gx#stx-null? _tl2244122571_)
                                        ((lambda (_L22574_)
                                           (_parse-qq21957_ _L22574_))
                                         _hd2244022568_)
                                        (_g2231822547_ _g2232422551_))))
                                (_g2231822547_ _g2232422551_))
                            (_g2231822547_ _g2232422551_))
                        (_g2231822547_ _g2232422551_))))
                (_g2231822547_ _g2232422551_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_g2231622627_
                                                    (lambda (_g2232422591_)
                                                      (if (gx#stx-pair?
                                                           _g2232422591_)
                                                          (let ((_e2242922594_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _g2232422591_)))
                    (let ((_hd2243022598_ (##car _e2242922594_))
                          (_tl2243122601_ (##cdr _e2242922594_)))
                      (if (gx#identifier? _hd2243022598_)
                          (if (gx#free-identifier=?
                               |gerbil/core::<match>[1]#_g29458_|
                               _hd2243022598_)
                              (if (gx#stx-pair? _tl2243122601_)
                                  (let ((_e2243222604_
                                         (gx#syntax-e _tl2243122601_)))
                                    (let ((_hd2243322608_
                                           (##car _e2243222604_))
                                          (_tl2243422611_
                                           (##cdr _e2243222604_)))
                                      (if (gx#stx-null? _tl2243422611_)
                                          ((lambda (_L22614_)
                                             (cons 'datum:
                                                   (cons (gx#stx-e _L22614_)
                                                         '())))
                                           _hd2243322608_)
                                          (_g2231722587_ _g2232422591_))))
                                  (_g2231722587_ _g2232422591_))
                              (_g2231722587_ _g2232422591_))
                          (_g2231722587_ _g2232422591_))))
                  (_g2231722587_ _g2232422591_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_g2231522677_
                                                      (lambda (_g2232422631_)
                                                        (if (gx#stx-pair?
                                                             _g2232422631_)
                                                            (let ((_e2242222634_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g2232422631_)))
                      (let ((_hd2242322638_ (##car _e2242222634_))
                            (_tl2242422641_ (##cdr _e2242222634_)))
                        (if (gx#stx-pair? _tl2242422641_)
                            (let ((_e2242522644_ (gx#syntax-e _tl2242422641_)))
                              (let ((_hd2242622648_ (##car _e2242522644_))
                                    (_tl2242722651_ (##cdr _e2242522644_)))
                                (if (gx#stx-null? _tl2242722651_)
                                    ((lambda (_L22654_ _L22656_)
                                       (if (if (gx#identifier? _L22656_)
                                               (let ((_$e22669_
                                                      (gx#free-identifier=?
                                                       _L22656_
                                                       (gx#datum->syntax
                                                        '#f
                                                        'eq?))))
                                                 (if _$e22669_
                                                     _$e22669_
                                                     (let ((_$e22673_
                                                            (gx#free-identifier=?
                                                             _L22656_
                                                             (gx#datum->syntax
                                                              '#f
                                                              'eqv?))))
                                                       (if _$e22673_
                                                           _$e22673_
                                                           (gx#free-identifier=?
                                                            _L22656_
                                                            (gx#datum->syntax
                                                             '#f
                                                             'equal?))))))
                                               '#f)
                                           (cons '?:
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'cut)
                                                             (cons _L22656_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f '<>)
                                 (cons _L22654_ '()))))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g2231622627_ _g2232422631_)))
                                     _hd2242622648_
                                     _hd2242322638_)
                                    (_g2231622627_ _g2232422631_))))
                            (_g2231622627_ _g2232422631_))))
                    (_g2231622627_ _g2232422631_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_g2231422707_
                                                        (lambda (_g2232422681_)
                                                          (if (gx#stx-pair?
                                                               _g2232422681_)
                                                              (let ((_e2241722684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _g2232422681_)))
                        (let ((_hd2241822688_ (##car _e2241722684_))
                              (_tl2241922691_ (##cdr _e2241722684_)))
                          ((lambda (_L22694_ _L22696_)
                             (if (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-class-info?|
                                  _L22696_)
                                 (cons 'class:
                                       (cons (gx#syntax-local-value _L22696_)
                                             (cons (_parse-class-body21956_
                                                    _L22694_)
                                                   '())))
                                 (_g2231522677_ _g2232422681_)))
                           _tl2241922691_
                           _hd2241822688_)))
                      (_g2231522677_ _g2232422681_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_g2231322737_
                                                          (lambda (_g2232422711_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2232422711_)
                        (let ((_e2241222714_ (gx#syntax-e _g2232422711_)))
                          (let ((_hd2241322718_ (##car _e2241222714_))
                                (_tl2241422721_ (##cdr _e2241222714_)))
                            ((lambda (_L22724_ _L22726_)
                               (if (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-struct-info?|
                                    _L22726_)
                                   (cons 'struct:
                                         (cons (gx#syntax-local-value _L22726_)
                                               (cons (_parse-vector21954_
                                                      _L22724_)
                                                     '())))
                                   (_g2231422707_ _g2232422711_)))
                             _tl2241422721_
                             _hd2241322718_)))
                        (_g2231422707_ _g2232422711_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_g2231222800_
                                                            (lambda (_g2232422741_)
                                                              (if (gx#stx-vector?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2232422741_)
                          (let ((_e2240022744_
                                 (vector->list (gx#syntax-e _g2232422741_))))
                            (if (gx#stx-pair/null? _e2240022744_)
                                (if (fx>= (gx#stx-length _e2240022744_) '0)
                                    (let ((_g29459_
                                           (gx#syntax-split-splice
                                            _e2240022744_
                                            '0)))
                                      (begin
                                        (let ((_g29460_
                                               (values-count _g29459_)))
                                          (if (not (fx= _g29460_ 2))
                                              (error "Context expects 2 values"
                                                     _g29460_)))
                                        (let ((_target2240122748_
                                               (values-ref _g29459_ 0))
                                              (_tl2240322751_
                                               (values-ref _g29459_ 1)))
                                          (if (gx#stx-null? _tl2240322751_)
                                              (letrec ((_loop2240422754_
                                                        (lambda (_hd2240222758_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body2240822761_)
                  (if (gx#stx-pair? _hd2240222758_)
                      (let ((_e2240522764_ (gx#syntax-e _hd2240222758_)))
                        (let ((_lp-hd2240622768_ (##car _e2240522764_))
                              (_lp-tl2240722771_ (##cdr _e2240522764_)))
                          (_loop2240422754_
                           _lp-tl2240722771_
                           (cons _lp-hd2240622768_ _body2240822761_))))
                      (let ((_body2240922774_ (reverse _body2240822761_)))
                        ((lambda (_L22778_)
                           (cons 'vector:
                                 (cons (_parse-vector21954_
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g2279122794_
                                                          _g2279222797_)
                                                   (cons _g2279122794_
                                                         _g2279222797_))
                                                 '()
                                                 _L22778_)))
                                       '())))
                         _body2240922774_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop2240422754_
                                                 _target2240122748_
                                                 '()))
                                              (_g2231322737_ _g2232422741_)))))
                                    (_g2231322737_ _g2232422741_))
                                (_g2231322737_ _g2232422741_)))
                          (_g2231322737_ _g2232422741_)))))
               (let ((_g2231122828_
                      (lambda (_g2232422804_)
                        (if (gx#stx-pair? _g2232422804_)
                            (let ((_e2239622807_ (gx#syntax-e _g2232422804_)))
                              (let ((_hd2239722811_ (##car _e2239622807_))
                                    (_tl2239822814_ (##cdr _e2239622807_)))
                                (if (gx#identifier? _hd2239722811_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core::<match>[1]#_g29461_|
                                         _hd2239722811_)
                                        ((lambda (_L22817_)
                                           (cons 'vector:
                                                 (cons (_parse-vector21954_
                                                        _L22817_)
                                                       '())))
                                         _tl2239822814_)
                                        (_g2231222800_ _g2232422804_))
                                    (_g2231222800_ _g2232422804_))))
                            (_g2231222800_ _g2232422804_)))))
                 (let ((_g2231022856_
                        (lambda (_g2232422832_)
                          (if (gx#stx-pair? _g2232422832_)
                              (let ((_e2239222835_
                                     (gx#syntax-e _g2232422832_)))
                                (let ((_hd2239322839_ (##car _e2239222835_))
                                      (_tl2239422842_ (##cdr _e2239222835_)))
                                  (if (gx#identifier? _hd2239322839_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core::<match>[1]#_g29462_|
                                           _hd2239322839_)
                                          ((lambda (_L22845_)
                                             (cons 'values:
                                                   (cons (_parse-vector21954_
                                                          _L22845_)
                                                         '())))
                                           _tl2239422842_)
                                          (_g2231122828_ _g2232422832_))
                                      (_g2231122828_ _g2232422832_))))
                              (_g2231122828_ _g2232422832_)))))
                   (let ((_g2230922896_
                          (lambda (_g2232422860_)
                            (if (gx#stx-pair? _g2232422860_)
                                (let ((_e2238522863_
                                       (gx#syntax-e _g2232422860_)))
                                  (let ((_hd2238622867_ (##car _e2238522863_))
                                        (_tl2238722870_ (##cdr _e2238522863_)))
                                    (if (gx#identifier? _hd2238622867_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core::<match>[1]#_g29463_|
                                             _hd2238622867_)
                                            (if (gx#stx-pair? _tl2238722870_)
                                                (let ((_e2238822873_
                                                       (gx#syntax-e
                                                        _tl2238722870_)))
                                                  (let ((_hd2238922877_
                                                         (##car _e2238822873_))
                                                        (_tl2239022880_
                                                         (##cdr _e2238822873_)))
                                                    (if (gx#stx-null?
                                                         _tl2239022880_)
                                                        ((lambda (_L22883_)
                                                           (_parse121951_
                                                            _L22883_))
                                                         _hd2238922877_)
                                                        (_g2231022856_
                                                         _g2232422860_))))
                                                (_g2231022856_ _g2232422860_))
                                            (_g2231022856_ _g2232422860_))
                                        (_g2231022856_ _g2232422860_))))
                                (_g2231022856_ _g2232422860_)))))
                     (let ((_g2230822917_
                            (lambda (_g2232422900_)
                              (if (gx#stx-box? _g2232422900_)
                                  (let ((_e2238322903_
                                         (unbox (gx#syntax-e _g2232422900_))))
                                    ((lambda (_L22907_)
                                       (cons 'box:
                                             (cons (_parse121951_ _L22907_)
                                                   '())))
                                     _e2238322903_))
                                  (_g2230922896_ _g2232422900_)))))
                       (let ((_g2230722957_
                              (lambda (_g2232422921_)
                                (if (gx#stx-pair? _g2232422921_)
                                    (let ((_e2237622924_
                                           (gx#syntax-e _g2232422921_)))
                                      (let ((_hd2237722928_
                                             (##car _e2237622924_))
                                            (_tl2237822931_
                                             (##cdr _e2237622924_)))
                                        (if (gx#identifier? _hd2237722928_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<match>[1]#_g29464_|
                                                 _hd2237722928_)
                                                (if (gx#stx-pair?
                                                     _tl2237822931_)
                                                    (let ((_e2237922934_
                                                           (gx#syntax-e
                                                            _tl2237822931_)))
                                                      (let ((_hd2238022938_
                                                             (##car _e2237922934_))
                                                            (_tl2238122941_
                                                             (##cdr _e2237922934_)))
                                                        (if (gx#stx-null?
                                                             _tl2238122941_)
                                                            ((lambda (_L22944_)
                                                               (cons 'box:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (_parse121951_ _L22944_) '())))
                     _hd2238022938_)
                    (_g2230822917_ _g2232422921_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2230822917_
                                                     _g2232422921_))
                                                (_g2230822917_ _g2232422921_))
                                            (_g2230822917_ _g2232422921_))))
                                    (_g2230822917_ _g2232422921_)))))
                         (let ((_g2230622985_
                                (lambda (_g2232422961_)
                                  (if (gx#stx-pair? _g2232422961_)
                                      (let ((_e2237222964_
                                             (gx#syntax-e _g2232422961_)))
                                        (let ((_hd2237322968_
                                               (##car _e2237222964_))
                                              (_tl2237422971_
                                               (##cdr _e2237222964_)))
                                          (if (gx#identifier? _hd2237322968_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core::<match>[1]#_g29465_|
                                                   _hd2237322968_)
                                                  ((lambda (_L22974_)
                                                     (_parse-list21953_
                                                      _L22974_))
                                                   _tl2237422971_)
                                                  (_g2230722957_
                                                   _g2232422961_))
                                              (_g2230722957_ _g2232422961_))))
                                      (_g2230722957_ _g2232422961_)))))
                           (let ((_g2230523041_
                                  (lambda (_g2232422989_)
                                    (if (gx#stx-pair? _g2232422989_)
                                        (let ((_e2236222992_
                                               (gx#syntax-e _g2232422989_)))
                                          (let ((_hd2236322996_
                                                 (##car _e2236222992_))
                                                (_tl2236422999_
                                                 (##cdr _e2236222992_)))
                                            (if (gx#identifier? _hd2236322996_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core::<match>[1]#_g29466_|
                                                     _hd2236322996_)
                                                    (if (gx#stx-pair?
                                                         _tl2236422999_)
                                                        (let ((_e2236523002_
                                                               (gx#syntax-e
                                                                _tl2236422999_)))
                                                          (let ((_hd2236623006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2236523002_))
                        (_tl2236723009_ (##cdr _e2236523002_)))
                    (if (gx#stx-pair? _tl2236723009_)
                        (let ((_e2236823012_ (gx#syntax-e _tl2236723009_)))
                          (let ((_hd2236923016_ (##car _e2236823012_))
                                (_tl2237023019_ (##cdr _e2236823012_)))
                            ((lambda (_L23022_ _L23024_ _L23025_)
                               (if (gx#stx-null? _L23022_)
                                   (cons 'cons:
                                         (cons (_parse121951_ _L23025_)
                                               (cons (_parse121951_ _L23024_)
                                                     '())))
                                   (cons 'cons:
                                         (cons (_parse121951_ _L23025_)
                                               (cons (_parse121951_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons*)
                                                            (cons _L23024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L23022_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                             _tl2237023019_
                             _hd2236923016_
                             _hd2236623006_)))
                        (_g2230622985_ _g2232422989_))))
                (_g2230622985_ _g2232422989_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2230622985_
                                                     _g2232422989_))
                                                (_g2230622985_
                                                 _g2232422989_))))
                                        (_g2230622985_ _g2232422989_)))))
                             (let ((_g2230423095_
                                    (lambda (_g2232423045_)
                                      (if (gx#stx-pair? _g2232423045_)
                                          (let ((_e2235023048_
                                                 (gx#syntax-e _g2232423045_)))
                                            (let ((_hd2235123052_
                                                   (##car _e2235023048_))
                                                  (_tl2235223055_
                                                   (##cdr _e2235023048_)))
                                              (if (gx#identifier?
                                                   _hd2235123052_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core::<match>[1]#_g29467_|
                                                       _hd2235123052_)
                                                      (if (gx#stx-pair?
                                                           _tl2235223055_)
                                                          (let ((_e2235323058_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2235223055_)))
                    (let ((_hd2235423062_ (##car _e2235323058_))
                          (_tl2235523065_ (##cdr _e2235323058_)))
                      (if (gx#stx-pair? _tl2235523065_)
                          (let ((_e2235623068_ (gx#syntax-e _tl2235523065_)))
                            (let ((_hd2235723072_ (##car _e2235623068_))
                                  (_tl2235823075_ (##cdr _e2235623068_)))
                              (if (gx#stx-null? _tl2235823075_)
                                  ((lambda (_L23078_ _L23080_)
                                     (cons 'cons:
                                           (cons (_parse121951_ _L23080_)
                                                 (cons (_parse121951_ _L23078_)
                                                       '()))))
                                   _hd2235723072_
                                   _hd2235423062_)
                                  (_g2230523041_ _g2232423045_))))
                          (_g2230523041_ _g2232423045_))))
                  (_g2230523041_ _g2232423045_))
              (_g2230523041_ _g2232423045_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2230523041_
                                                   _g2232423045_))))
                                          (_g2230523041_ _g2232423045_)))))
                               (let ((_g2230323135_
                                      (lambda (_g2232423099_)
                                        (if (gx#stx-pair? _g2232423099_)
                                            (let ((_e2234223102_
                                                   (gx#syntax-e
                                                    _g2232423099_)))
                                              (let ((_hd2234323106_
                                                     (##car _e2234223102_))
                                                    (_tl2234423109_
                                                     (##cdr _e2234223102_)))
                                                (if (gx#identifier?
                                                     _hd2234323106_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core::<match>[1]#_g29468_|
                                                         _hd2234323106_)
                                                        (if (gx#stx-pair?
                                                             _tl2234423109_)
                                                            (let ((_e2234523112_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl2234423109_)))
                      (let ((_hd2234623116_ (##car _e2234523112_))
                            (_tl2234723119_ (##cdr _e2234523112_)))
                        (if (gx#stx-null? _tl2234723119_)
                            ((lambda (_L23122_)
                               (cons 'not:
                                     (cons (_parse121951_ _L23122_) '())))
                             _hd2234623116_)
                            (_g2230423095_ _g2232423099_))))
                    (_g2230423095_ _g2232423099_))
                (_g2230423095_ _g2232423099_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2230423095_
                                                     _g2232423099_))))
                                            (_g2230423095_ _g2232423099_)))))
                                 (let ((_g2230223220_
                                        (lambda (_g2232423139_)
                                          (if (gx#stx-pair? _g2232423139_)
                                              (let ((_e2233823142_
                                                     (gx#syntax-e
                                                      _g2232423139_)))
                                                (let ((_hd2233923146_
                                                       (##car _e2233823142_))
                                                      (_tl2234023149_
                                                       (##cdr _e2233823142_)))
                                                  (if (gx#identifier?
                                                       _hd2233923146_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core::<match>[1]#_g29469_|
                                                           _hd2233923146_)
                                                          ((lambda (_L23152_)
                                                             (if (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L23152_)
                         (let ((_g2316423175_
                                (lambda (_g2316523171_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2316523171_))))
                           (let ((_g2316323186_
                                  (lambda (_g2316523179_)
                                    ((lambda ()
                                       (cons 'or:
                                             (gx#stx-map
                                              _parse121951_
                                              _L23152_)))))))
                             (let ((_g2316223216_
                                    (lambda (_g2316523190_)
                                      (if (gx#stx-pair? _g2316523190_)
                                          (let ((_e2316723193_
                                                 (gx#syntax-e _g2316523190_)))
                                            (let ((_hd2316823197_
                                                   (##car _e2316723193_))
                                                  (_tl2316923200_
                                                   (##cdr _e2316723193_)))
                                              (if (gx#stx-null? _tl2316923200_)
                                                  ((lambda (_L23203_)
                                                     (_parse121951_ _L23203_))
                                                   _hd2316823197_)
                                                  (_g2316323186_
                                                   _g2316523190_))))
                                          (_g2316323186_ _g2316523190_)))))
                               (_g2316223216_ _L23152_))))
                         (_g2230323135_ _g2232423139_)))
                   _tl2234023149_)
                  (_g2230323135_ _g2232423139_))
              (_g2230323135_ _g2232423139_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2230323135_ _g2232423139_)))))
                                   (let ((_g2230123305_
                                          (lambda (_g2232423224_)
                                            (if (gx#stx-pair? _g2232423224_)
                                                (let ((_e2233423227_
                                                       (gx#syntax-e
                                                        _g2232423224_)))
                                                  (let ((_hd2233523231_
                                                         (##car _e2233423227_))
                                                        (_tl2233623234_
                                                         (##cdr _e2233423227_)))
                                                    (if (gx#identifier?
                                                         _hd2233523231_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core::<match>[1]#_g29470_|
                                                             _hd2233523231_)
                                                            ((lambda (_L23237_)
                                                               (if (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L23237_)
                           (let ((_g2324923260_
                                  (lambda (_g2325023256_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g2325023256_))))
                             (let ((_g2324823271_
                                    (lambda (_g2325023264_)
                                      ((lambda ()
                                         (cons 'and:
                                               (gx#stx-map
                                                _parse121951_
                                                _L23237_)))))))
                               (let ((_g2324723301_
                                      (lambda (_g2325023275_)
                                        (if (gx#stx-pair? _g2325023275_)
                                            (let ((_e2325223278_
                                                   (gx#syntax-e
                                                    _g2325023275_)))
                                              (let ((_hd2325323282_
                                                     (##car _e2325223278_))
                                                    (_tl2325423285_
                                                     (##cdr _e2325223278_)))
                                                (if (gx#stx-null?
                                                     _tl2325423285_)
                                                    ((lambda (_L23288_)
                                                       (_parse121951_
                                                        _L23288_))
                                                     _hd2325323282_)
                                                    (_g2324823271_
                                                     _g2325023275_))))
                                            (_g2324823271_ _g2325023275_)))))
                                 (_g2324723301_ _L23237_))))
                           (_g2230223220_ _g2232423224_)))
                     _tl2233623234_)
                    (_g2230223220_ _g2232423224_))
                (_g2230223220_ _g2232423224_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2230223220_
                                                 _g2232423224_)))))
                                     (let ((_g2230023545_
                                            (lambda (_g2232423309_)
                                              (if (gx#stx-pair? _g2232423309_)
                                                  (let ((_e2232723312_
                                                         (gx#syntax-e
                                                          _g2232423309_)))
                                                    (let ((_hd2232823316_
                                                           (##car _e2232723312_))
                                                          (_tl2232923319_
                                                           (##cdr _e2232723312_)))
                                                      (if (gx#identifier?
                                                           _hd2232823316_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core::<match>[1]#_g29471_|
                                                               _hd2232823316_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2232923319_)
                          (let ((_e2233023322_ (gx#syntax-e _tl2232923319_)))
                            (let ((_hd2233123326_ (##car _e2233023322_))
                                  (_tl2233223329_ (##cdr _e2233023322_)))
                              ((lambda (_L23332_ _L23334_)
                                 (let ((_g2335123383_
                                        (lambda (_g2335223379_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g2335223379_))))
                                   (let ((_g2335023394_
                                          (lambda (_g2335223387_)
                                            ((lambda ()
                                               (_parse-error21958_
                                                _hd22298_))))))
                                     (let ((_g2334923462_
                                            (lambda (_g2335223398_)
                                              (if (gx#stx-pair? _g2335223398_)
                                                  (let ((_e2336623401_
                                                         (gx#syntax-e
                                                          _g2335223398_)))
                                                    (let ((_hd2336723405_
                                                           (##car _e2336623401_))
                                                          (_tl2336823408_
                                                           (##cdr _e2336623401_)))
                                                      (if (gx#stx-datum?
                                                           _hd2336723405_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2336723405_)
                              '::)
                      (if (gx#stx-pair? _tl2336823408_)
                          (let ((_e2336923411_ (gx#syntax-e _tl2336823408_)))
                            (let ((_hd2337023415_ (##car _e2336923411_))
                                  (_tl2337123418_ (##cdr _e2336923411_)))
                              (if (gx#stx-pair? _tl2337123418_)
                                  (let ((_e2337223421_
                                         (gx#syntax-e _tl2337123418_)))
                                    (let ((_hd2337323425_
                                           (##car _e2337223421_))
                                          (_tl2337423428_
                                           (##cdr _e2337223421_)))
                                      (if (gx#identifier? _hd2337323425_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core::<match>[1]#_g29472_|
                                               _hd2337323425_)
                                              (if (gx#stx-pair? _tl2337423428_)
                                                  (let ((_e2337523431_
                                                         (gx#syntax-e
                                                          _tl2337423428_)))
                                                    (let ((_hd2337623435_
                                                           (##car _e2337523431_))
                                                          (_tl2337723438_
                                                           (##cdr _e2337523431_)))
                                                      (if (gx#stx-null?
                                                           _tl2337723438_)
                                                          ((lambda (_L23441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L23443_)
                     (cons '?:
                           (cons _L23334_
                                 (cons '::
                                       (cons _L23443_
                                             (cons '=>:
                                                   (cons (_parse121951_
                                                          _L23441_)
                                                         '())))))))
                   _hd2337623435_
                   _hd2337023415_)
                  (_g2335023394_ _g2335223398_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2335023394_
                                                   _g2335223398_))
                                              (_g2335023394_ _g2335223398_))
                                          (_g2335023394_ _g2335223398_))))
                                  (_g2335023394_ _g2335223398_))))
                          (_g2335023394_ _g2335223398_))
                      (_g2335023394_ _g2335223398_))
                  (_g2335023394_ _g2335223398_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2335023394_
                                                   _g2335223398_)))))
                                       (let ((_g2334823502_
                                              (lambda (_g2335223466_)
                                                (if (gx#stx-pair?
                                                     _g2335223466_)
                                                    (let ((_e2335823469_
                                                           (gx#syntax-e
                                                            _g2335223466_)))
                                                      (let ((_hd2335923473_
                                                             (##car _e2335823469_))
                                                            (_tl2336023476_
                                                             (##cdr _e2335823469_)))
                                                        (if (gx#identifier?
                                                             _hd2335923473_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core::<match>[1]#_g29473_|
                         _hd2335923473_)
                        (if (gx#stx-pair? _tl2336023476_)
                            (let ((_e2336123479_ (gx#syntax-e _tl2336023476_)))
                              (let ((_hd2336223483_ (##car _e2336123479_))
                                    (_tl2336323486_ (##cdr _e2336123479_)))
                                (if (gx#stx-null? _tl2336323486_)
                                    ((lambda (_L23489_)
                                       (cons '?:
                                             (cons _L23334_
                                                   (cons '=>:
                                                         (cons (_parse121951_
                                                                _L23489_)
                                                               '())))))
                                     _hd2336223483_)
                                    (_g2334923462_ _g2335223466_))))
                            (_g2334923462_ _g2335223466_))
                        (_g2334923462_ _g2335223466_))
                    (_g2334923462_ _g2335223466_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2334923462_
                                                     _g2335223466_)))))
                                         (let ((_g2334723530_
                                                (lambda (_g2335223506_)
                                                  (if (gx#stx-pair?
                                                       _g2335223506_)
                                                      (let ((_e2335423509_
                                                             (gx#syntax-e
                                                              _g2335223506_)))
                                                        (let ((_hd2335523513_
                                                               (##car _e2335423509_))
                                                              (_tl2335623516_
                                                               (##cdr _e2335423509_)))
                                                          (if (gx#stx-null?
                                                               _tl2335623516_)
                                                              ((lambda (_L23519_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '?:
                               (cons _L23334_
                                     (cons (_parse121951_ _L23519_) '()))))
                       _hd2335523513_)
                      (_g2334823502_ _g2335223506_))))
              (_g2334823502_ _g2335223506_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_g2334623541_
                                                  (lambda (_g2335223534_)
                                                    (if (gx#stx-null?
                                                         _g2335223534_)
                                                        ((lambda ()
                                                           (cons '?:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L23334_ '()))))
                (_g2334723530_ _g2335223534_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2334623541_ _L23332_))))))))
                               _tl2233223329_
                               _hd2233123326_)))
                          (_g2230123305_ _g2232423309_))
                      (_g2230123305_ _g2232423309_))
                  (_g2230123305_ _g2232423309_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2230123305_
                                                   _g2232423309_)))))
                                       (_g2230023545_
                                        _hd22298_)))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (_parse-list21953_
                             (lambda (_body22133_)
                               (let ((_g2213922167_
                                      (lambda (_g2214022163_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g2214022163_))))
                                 (let ((_g2213822178_
                                        (lambda (_g2214022171_)
                                          ((lambda ()
                                             (if (gx#stx-null? _body22133_)
                                                 (cons 'null: '())
                                                 (if (not (gx#stx-pair?
                                                           _body22133_))
                                                     (_parse121951_
                                                      _body22133_)
                                                     (_parse-error21958_
                                                      _body22133_))))))))
                                   (let ((_g2213722210_
                                          (lambda (_g2214022182_)
                                            (if (gx#stx-pair? _g2214022182_)
                                                (let ((_e2215922185_
                                                       (gx#syntax-e
                                                        _g2214022182_)))
                                                  (let ((_hd2216022189_
                                                         (##car _e2215922185_))
                                                        (_tl2216122192_
                                                         (##cdr _e2215922185_)))
                                                    ((lambda (_L22195_
                                                              _L22197_)
                                                       (if (not (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L22197_))
                   (cons 'cons:
                         (cons (_parse121951_ _L22197_)
                               (cons (_parse-list21953_ _L22195_) '())))
                   (_g2213822178_ _g2214022182_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _tl2216122192_
                                                     _hd2216022189_)))
                                                (_g2213822178_
                                                 _g2214022182_)))))
                                     (let ((_g2213622254_
                                            (lambda (_g2214022214_)
                                              (if (gx#stx-pair? _g2214022214_)
                                                  (let ((_e2215122217_
                                                         (gx#syntax-e
                                                          _g2214022214_)))
                                                    (let ((_hd2215222221_
                                                           (##car _e2215122217_))
                                                          (_tl2215322224_
                                                           (##cdr _e2215122217_)))
                                                      (if (gx#stx-pair?
                                                           _tl2215322224_)
                                                          (let ((_e2215422227_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2215322224_)))
                    (let ((_hd2215522231_ (##car _e2215422227_))
                          (_tl2215622234_ (##cdr _e2215422227_)))
                      ((lambda (_L22237_ _L22239_ _L22240_)
                         (if (gx#ellipsis? _L22239_)
                             (cons 'splice:
                                   (cons (_parse121951_ _L22240_)
                                         (cons (_parse-list21953_ _L22237_)
                                               '())))
                             (_g2213722210_ _g2214022214_)))
                       _tl2215622234_
                       _hd2215522231_
                       _hd2215222221_)))
                  (_g2213722210_ _g2214022214_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2213722210_
                                                   _g2214022214_)))))
                                       (let ((_g2213522294_
                                              (lambda (_g2214022258_)
                                                (if (gx#stx-pair?
                                                     _g2214022258_)
                                                    (let ((_e2214222261_
                                                           (gx#syntax-e
                                                            _g2214022258_)))
                                                      (let ((_hd2214322265_
                                                             (##car _e2214222261_))
                                                            (_tl2214422268_
                                                             (##cdr _e2214222261_)))
                                                        (if (gx#stx-datum?
                                                             _hd2214322265_)
                                                            (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _hd2214322265_)
                                '::)
                        (if (gx#stx-pair? _tl2214422268_)
                            (let ((_e2214522271_ (gx#syntax-e _tl2214422268_)))
                              (let ((_hd2214622275_ (##car _e2214522271_))
                                    (_tl2214722278_ (##cdr _e2214522271_)))
                                (if (gx#stx-null? _tl2214722278_)
                                    ((lambda (_L22281_)
                                       (_parse121951_ _L22281_))
                                     _hd2214622275_)
                                    (_g2213622254_ _g2214022258_))))
                            (_g2213622254_ _g2214022258_))
                        (_g2213622254_ _g2214022258_))
                    (_g2213622254_ _g2214022258_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2213622254_
                                                     _g2214022258_)))))
                                         (_g2213522294_ _body22133_))))))))
                            (_parse-vector21954_
                             (lambda (_body22130_)
                               (if (_simple-vector?21955_ _body22130_)
                                   (cons 'simple:
                                         (cons (gx#stx-map
                                                _parse121951_
                                                _body22130_)
                                               '()))
                                   (cons 'list:
                                         (cons (_parse-list21953_ _body22130_)
                                               '())))))
                            (_simple-vector?21955_
                             (lambda (_body22067_)
                               (let ((_g2207122083_
                                      (lambda (_g2207222079_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g2207222079_))))
                                 (let ((_g2207022094_
                                        (lambda (_g2207222087_)
                                          ((lambda ()
                                             (gx#stx-null? _body22067_))))))
                                   (let ((_g2206922126_
                                          (lambda (_g2207222098_)
                                            (if (gx#stx-pair? _g2207222098_)
                                                (let ((_e2207522101_
                                                       (gx#syntax-e
                                                        _g2207222098_)))
                                                  (let ((_hd2207622105_
                                                         (##car _e2207522101_))
                                                        (_tl2207722108_
                                                         (##cdr _e2207522101_)))
                                                    ((lambda (_L22111_
                                                              _L22113_)
                                                       (if (not (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L22113_))
                   (_simple-vector?21955_ _L22111_)
                   '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _tl2207722108_
                                                     _hd2207622105_)))
                                                (_g2207022094_
                                                 _g2207222098_)))))
                                     (_g2206922126_ _body22067_))))))
                            (_parse-class-body21956_
                             (lambda (_body21976_)
                               ((letrec ((_recur21979_
                                          (lambda (_rest21982_)
                                            (let ((_g2198622002_
                                                   (lambda (_g2198721998_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2198721998_))))
                                              (let ((_g2198522013_
                                                     (lambda (_g2198722006_)
                                                       ((lambda ()
                                                          (if (gx#stx-null?
                                                               _rest21982_)
                                                              '()
                                                              (_parse-error21958_
                                                               _rest21982_)))))))
                                                (let ((_g2198422063_
                                                       (lambda (_g2198722017_)
                                                         (if (gx#stx-pair?
                                                              _g2198722017_)
                                                             (let ((_e2199122020_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g2198722017_)))
                       (let ((_hd2199222024_ (##car _e2199122020_))
                             (_tl2199322027_ (##cdr _e2199122020_)))
                         (if (gx#stx-pair? _tl2199322027_)
                             (let ((_e2199422030_
                                    (gx#syntax-e _tl2199322027_)))
                               (let ((_hd2199522034_ (##car _e2199422030_))
                                     (_tl2199622037_ (##cdr _e2199422030_)))
                                 ((lambda (_L22040_ _L22042_ _L22043_)
                                    (if (gx#stx-keyword? _L22043_)
                                        (cons* _L22043_
                                               (_parse121951_ _L22042_)
                                               (_recur21979_ _L22040_))
                                        (_g2198522013_ _g2198722017_)))
                                  _tl2199622037_
                                  _hd2199522034_
                                  _hd2199222024_)))
                             (_g2198522013_ _g2198722017_))))
                     (_g2198522013_ _g2198722017_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2198422063_
                                                   _rest21982_)))))))
                                  _recur21979_)
                                _body21976_))))
                     (_parse121951_ _stx21947_)))))))
        (lambda _g29475_
          (let ((_g29474_ (length _g29475_)))
            (cond ((fx= _g29474_ 1)
                   (apply (lambda (_stx23553_)
                            (let ((_match-stx23556_ '#f))
                              (_opt-lambda2194523549_
                               _stx23553_
                               _match-stx23556_)))
                          _g29475_))
                  ((fx= _g29474_ 2) (apply _opt-lambda2194523549_ _g29475_))
                  (else (error "No clause matching arguments" _g29475_)))))))
    (define |gerbil/core::<match>[1]#match-pattern?|
      (lambda (_stx21931_)
        (call-with-escape
         (lambda (_E21935_)
           (with-exception-handler
            (let ((_E!21938_ (current-exception-handler)))
              (lambda (_e21941_)
                (if (gx#syntax-error? _e21941_)
                    (_E21935_ '#f)
                    (_E!21938_ _e21941_))))
            (lambda ()
              (begin
                (|gerbil/core::<match>[1]#parse-match-pattern| _stx21931_)
                '#t)))))))
    (define |gerbil/core::<match>[1]#match-pattern-vars|
      (lambda (_ptree20786_)
        (letrec ((_loop20789_
                  (lambda (_ptree21064_ _vars21066_ _K21067_)
                    (let ((_g2107921169_
                           (lambda (_g2108021165_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2108021165_))))
                      (let ((_g2107821180_
                             (lambda (_g2108021173_)
                               ((lambda () (_K21067_ _vars21066_))))))
                        (let ((_g2107721227_
                               (lambda (_g2108021184_)
                                 (if (gx#stx-pair? _g2108021184_)
                                     (let ((_e2115821187_
                                            (gx#syntax-e _g2108021184_)))
                                       (let ((_hd2115921191_
                                              (##car _e2115821187_))
                                             (_tl2116021194_
                                              (##cdr _e2115821187_)))
                                         (if (gx#stx-datum? _hd2115921191_)
                                             (if (equal? (gx#stx-e
                                                          _hd2115921191_)
                                                         'var:)
                                                 (if (gx#stx-pair?
                                                      _tl2116021194_)
                                                     (let ((_e2116121197_
                                                            (gx#syntax-e
                                                             _tl2116021194_)))
                                                       (let ((_hd2116221201_
                                                              (##car _e2116121197_))
                                                             (_tl2116321204_
                                                              (##cdr _e2116121197_)))
                                                         (if (gx#stx-null?
                                                              _tl2116321204_)
                                                             ((lambda (_L21207_)
                                                                (if (find (lambda (_g2122121223_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (gx#bound-identifier=?
                                     _g2122121223_
                                     _L21207_))
                                  _vars21066_)
                            (_K21067_ _vars21066_)
                            (_K21067_ (cons _L21207_ _vars21066_))))
                      _hd2116221201_)
                     (_g2107821180_ _g2108021184_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2107821180_
                                                      _g2108021184_))
                                                 (_g2107821180_ _g2108021184_))
                                             (_g2107821180_ _g2108021184_))))
                                     (_g2107821180_ _g2108021184_)))))
                          (let ((_g2107621279_
                                 (lambda (_g2108021231_)
                                   (if (gx#stx-pair? _g2108021231_)
                                       (let ((_e2114821234_
                                              (gx#syntax-e _g2108021231_)))
                                         (let ((_hd2114921238_
                                                (##car _e2114821234_))
                                               (_tl2115021241_
                                                (##cdr _e2114821234_)))
                                           (if (gx#stx-datum? _hd2114921238_)
                                               (if (equal? (gx#stx-e
                                                            _hd2114921238_)
                                                           'class:)
                                                   (if (gx#stx-pair?
                                                        _tl2115021241_)
                                                       (let ((_e2115121244_
                                                              (gx#syntax-e
                                                               _tl2115021241_)))
                                                         (let ((_hd2115221248_
                                                                (##car _e2115121244_))
                                                               (_tl2115321251_
                                                                (##cdr _e2115121244_)))
                                                           (if (gx#stx-pair?
                                                                _tl2115321251_)
                                                               (let ((_e2115421254_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2115321251_)))
                         (let ((_hd2115521258_ (##car _e2115421254_))
                               (_tl2115621261_ (##cdr _e2115421254_)))
                           (if (gx#stx-null? _tl2115621261_)
                               ((lambda (_L21264_)
                                  (_loop-class-list20793_
                                   _L21264_
                                   _vars21066_
                                   _K21067_))
                                _hd2115521258_)
                               (_g2107721227_ _g2108021231_))))
                       (_g2107721227_ _g2108021231_))))
               (_g2107721227_ _g2108021231_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2107721227_
                                                    _g2108021231_))
                                               (_g2107721227_ _g2108021231_))))
                                       (_g2107721227_ _g2108021231_)))))
                            (let ((_g2107521331_
                                   (lambda (_g2108021283_)
                                     (if (gx#stx-pair? _g2108021283_)
                                         (let ((_e2113821286_
                                                (gx#syntax-e _g2108021283_)))
                                           (let ((_hd2113921290_
                                                  (##car _e2113821286_))
                                                 (_tl2114021293_
                                                  (##cdr _e2113821286_)))
                                             (if (gx#stx-datum? _hd2113921290_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2113921290_)
                                                             'struct:)
                                                     (if (gx#stx-pair?
                                                          _tl2114021293_)
                                                         (let ((_e2114121296_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2114021293_)))
                   (let ((_hd2114221300_ (##car _e2114121296_))
                         (_tl2114321303_ (##cdr _e2114121296_)))
                     (if (gx#stx-pair? _tl2114321303_)
                         (let ((_e2114421306_ (gx#syntax-e _tl2114321303_)))
                           (let ((_hd2114521310_ (##car _e2114421306_))
                                 (_tl2114621313_ (##cdr _e2114421306_)))
                             (if (gx#stx-null? _tl2114621313_)
                                 ((lambda (_L21316_)
                                    (_loop-vector20791_
                                     _L21316_
                                     _vars21066_
                                     _K21067_))
                                  _hd2114521310_)
                                 (_g2107621279_ _g2108021283_))))
                         (_g2107621279_ _g2108021283_))))
                 (_g2107621279_ _g2108021283_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2107621279_
                                                      _g2108021283_))
                                                 (_g2107621279_
                                                  _g2108021283_))))
                                         (_g2107621279_ _g2108021283_)))))
                              (let ((_g2107421377_
                                     (lambda (_g2108021335_)
                                       (if (gx#stx-pair? _g2108021335_)
                                           (let ((_e2113121338_
                                                  (gx#syntax-e _g2108021335_)))
                                             (let ((_hd2113221342_
                                                    (##car _e2113121338_))
                                                   (_tl2113321345_
                                                    (##cdr _e2113121338_)))
                                               (if (gx#stx-pair?
                                                    _tl2113321345_)
                                                   (let ((_e2113421348_
                                                          (gx#syntax-e
                                                           _tl2113321345_)))
                                                     (let ((_hd2113521352_
                                                            (##car _e2113421348_))
                                                           (_tl2113621355_
                                                            (##cdr _e2113421348_)))
                                                       (if (gx#stx-null?
                                                            _tl2113621355_)
                                                           ((lambda (_L21358_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L21360_)
                      (if (let ((_$e21373_ (gx#stx-eq? 'values: _L21360_)))
                            (if _$e21373_
                                _$e21373_
                                (gx#stx-eq? 'vector: _L21360_)))
                          (_loop-vector20791_ _L21358_ _vars21066_ _K21067_)
                          (_g2107521331_ _g2108021335_)))
                    _hd2113521352_
                    _hd2113221342_)
                   (_g2107521331_ _g2108021335_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2107521331_
                                                    _g2108021335_))))
                                           (_g2107521331_ _g2108021335_)))))
                                (let ((_g2107321417_
                                       (lambda (_g2108021381_)
                                         (if (gx#stx-pair? _g2108021381_)
                                             (let ((_e2112321384_
                                                    (gx#syntax-e
                                                     _g2108021381_)))
                                               (let ((_hd2112421388_
                                                      (##car _e2112321384_))
                                                     (_tl2112521391_
                                                      (##cdr _e2112321384_)))
                                                 (if (gx#stx-datum?
                                                      _hd2112421388_)
                                                     (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd2112421388_)
                         'box:)
                 (if (gx#stx-pair? _tl2112521391_)
                     (let ((_e2112621394_ (gx#syntax-e _tl2112521391_)))
                       (let ((_hd2112721398_ (##car _e2112621394_))
                             (_tl2112821401_ (##cdr _e2112621394_)))
                         (if (gx#stx-null? _tl2112821401_)
                             ((lambda (_L21404_)
                                (_loop20789_ _L21404_ _vars21066_ _K21067_))
                              _hd2112721398_)
                             (_g2107421377_ _g2108021381_))))
                     (_g2107421377_ _g2108021381_))
                 (_g2107421377_ _g2108021381_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2107421377_
                                                      _g2108021381_))))
                                             (_g2107421377_ _g2108021381_)))))
                                  (let ((_g2107221476_
                                         (lambda (_g2108021421_)
                                           (if (gx#stx-pair? _g2108021421_)
                                               (let ((_e2111321424_
                                                      (gx#syntax-e
                                                       _g2108021421_)))
                                                 (let ((_hd2111421428_
                                                        (##car _e2111321424_))
                                                       (_tl2111521431_
                                                        (##cdr _e2111321424_)))
                                                   (if (gx#stx-datum?
                                                        _hd2111421428_)
                                                       (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd2111421428_)
                           'splice:)
                   (if (gx#stx-pair? _tl2111521431_)
                       (let ((_e2111621434_ (gx#syntax-e _tl2111521431_)))
                         (let ((_hd2111721438_ (##car _e2111621434_))
                               (_tl2111821441_ (##cdr _e2111621434_)))
                           (if (gx#stx-pair? _tl2111821441_)
                               (let ((_e2111921444_
                                      (gx#syntax-e _tl2111821441_)))
                                 (let ((_hd2112021448_ (##car _e2111921444_))
                                       (_tl2112121451_ (##cdr _e2111921444_)))
                                   (if (gx#stx-null? _tl2112121451_)
                                       ((lambda (_L21454_ _L21456_)
                                          (_loop20789_
                                           _L21456_
                                           _vars21066_
                                           (lambda (_g2147021472_)
                                             (_loop20789_
                                              _L21454_
                                              _g2147021472_
                                              _K21067_))))
                                        _hd2112021448_
                                        _hd2111721438_)
                                       (_g2107321417_ _g2108021421_))))
                               (_g2107321417_ _g2108021421_))))
                       (_g2107321417_ _g2108021421_))
                   (_g2107321417_ _g2108021421_))
               (_g2107321417_ _g2108021421_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2107321417_
                                                _g2108021421_)))))
                                    (let ((_g2107121535_
                                           (lambda (_g2108021480_)
                                             (if (gx#stx-pair? _g2108021480_)
                                                 (let ((_e2110221483_
                                                        (gx#syntax-e
                                                         _g2108021480_)))
                                                   (let ((_hd2110321487_
                                                          (##car _e2110221483_))
                                                         (_tl2110421490_
                                                          (##cdr _e2110221483_)))
                                                     (if (gx#stx-datum?
                                                          _hd2110321487_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2110321487_)
                             'cons:)
                     (if (gx#stx-pair? _tl2110421490_)
                         (let ((_e2110521493_ (gx#syntax-e _tl2110421490_)))
                           (let ((_hd2110621497_ (##car _e2110521493_))
                                 (_tl2110721500_ (##cdr _e2110521493_)))
                             (if (gx#stx-pair? _tl2110721500_)
                                 (let ((_e2110821503_
                                        (gx#syntax-e _tl2110721500_)))
                                   (let ((_hd2110921507_ (##car _e2110821503_))
                                         (_tl2111021510_
                                          (##cdr _e2110821503_)))
                                     (if (gx#stx-null? _tl2111021510_)
                                         ((lambda (_L21513_ _L21515_)
                                            (_loop20789_
                                             _L21515_
                                             _vars21066_
                                             (lambda (_g2152921531_)
                                               (_loop20789_
                                                _L21513_
                                                _g2152921531_
                                                _K21067_))))
                                          _hd2110921507_
                                          _hd2110621497_)
                                         (_g2107221476_ _g2108021480_))))
                                 (_g2107221476_ _g2108021480_))))
                         (_g2107221476_ _g2108021480_))
                     (_g2107221476_ _g2108021480_))
                 (_g2107221476_ _g2108021480_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2107221476_
                                                  _g2108021480_)))))
                                      (let ((_g2107021575_
                                             (lambda (_g2108021539_)
                                               (if (gx#stx-pair? _g2108021539_)
                                                   (let ((_e2109421542_
                                                          (gx#syntax-e
                                                           _g2108021539_)))
                                                     (let ((_hd2109521546_
                                                            (##car _e2109421542_))
                                                           (_tl2109621549_
                                                            (##cdr _e2109421542_)))
                                                       (if (gx#stx-datum?
                                                            _hd2109521546_)
                                                           (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd2109521546_)
                               'not:)
                       (if (gx#stx-pair? _tl2109621549_)
                           (let ((_e2109721552_ (gx#syntax-e _tl2109621549_)))
                             (let ((_hd2109821556_ (##car _e2109721552_))
                                   (_tl2109921559_ (##cdr _e2109721552_)))
                               (if (gx#stx-null? _tl2109921559_)
                                   ((lambda (_L21562_)
                                      (_loop20789_
                                       _L21562_
                                       _vars21066_
                                       _K21067_))
                                    _hd2109821556_)
                                   (_g2107121535_ _g2108021539_))))
                           (_g2107121535_ _g2108021539_))
                       (_g2107121535_ _g2108021539_))
                   (_g2107121535_ _g2108021539_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2107121535_
                                                    _g2108021539_)))))
                                        (let ((_g2106921674_
                                               (lambda (_g2108021579_)
                                                 (if (gx#stx-pair?
                                                      _g2108021579_)
                                                     (let ((_e2109021582_
                                                            (gx#syntax-e
                                                             _g2108021579_)))
                                                       (let ((_hd2109121586_
                                                              (##car _e2109021582_))
                                                             (_tl2109221589_
                                                              (##cdr _e2109021582_)))
                                                         ((lambda (_L21592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L21594_)
                    (if (let ((_$e21605_ (gx#stx-eq? 'and: _L21594_)))
                          (if _$e21605_ _$e21605_ (gx#stx-eq? 'or: _L21594_)))
                        (let ((_g2161021622_
                               (lambda (_g2161121618_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2161121618_))))
                          (let ((_g2160921633_
                                 (lambda (_g2161121626_)
                                   ((lambda () (_K21067_ _vars21066_))))))
                            (let ((_g2160821670_
                                   (lambda (_g2161121637_)
                                     (if (gx#stx-pair? _g2161121637_)
                                         (let ((_e2161421640_
                                                (gx#syntax-e _g2161121637_)))
                                           (let ((_hd2161521644_
                                                  (##car _e2161421640_))
                                                 (_tl2161621647_
                                                  (##cdr _e2161421640_)))
                                             ((lambda (_L21650_ _L21652_)
                                                (_loop20789_
                                                 _L21652_
                                                 _vars21066_
                                                 (lambda (_g2166421666_)
                                                   (_loop20789_
                                                    (cons _L21594_ _L21650_)
                                                    _g2166421666_
                                                    _K21067_))))
                                              _tl2161621647_
                                              _hd2161521644_)))
                                         (_g2160921633_ _g2161121637_)))))
                              (_g2160821670_ _L21592_))))
                        (_g2107021575_ _g2108021579_)))
                  _tl2109221589_
                  _hd2109121586_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2107021575_
                                                      _g2108021579_)))))
                                          (let ((_g2106821927_
                                                 (lambda (_g2108021678_)
                                                   (if (gx#stx-pair?
                                                        _g2108021678_)
                                                       (let ((_e2108221681_
                                                              (gx#syntax-e
                                                               _g2108021678_)))
                                                         (let ((_hd2108321685_
                                                                (##car _e2108221681_))
                                                               (_tl2108421688_
                                                                (##cdr _e2108221681_)))
                                                           (if (gx#stx-datum?
                                                                _hd2108321685_)
                                                               (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _hd2108321685_)
                                   '?:)
                           (if (gx#stx-pair? _tl2108421688_)
                               (let ((_e2108521691_
                                      (gx#syntax-e _tl2108421688_)))
                                 (let ((_hd2108621695_ (##car _e2108521691_))
                                       (_tl2108721698_ (##cdr _e2108521691_)))
                                   ((lambda (_L21701_)
                                      (let ((_g2171721754_
                                             (lambda (_g2171821750_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2171821750_))))
                                        (let ((_g2171621765_
                                               (lambda (_g2171821758_)
                                                 ((lambda ()
                                                    (_K21067_ _vars21066_))))))
                                          (let ((_g2171521843_
                                                 (lambda (_g2171821769_)
                                                   (if (gx#stx-pair?
                                                        _g2171821769_)
                                                       (let ((_e2173421772_
                                                              (gx#syntax-e
                                                               _g2171821769_)))
                                                         (let ((_hd2173521776_
                                                                (##car _e2173421772_))
                                                               (_tl2173621779_
                                                                (##cdr _e2173421772_)))
                                                           (if (gx#stx-pair?
                                                                _tl2173621779_)
                                                               (let ((_e2173721782_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2173621779_)))
                         (let ((_hd2173821786_ (##car _e2173721782_))
                               (_tl2173921789_ (##cdr _e2173721782_)))
                           (if (gx#stx-datum? _hd2173821786_)
                               (if (equal? (gx#stx-e _hd2173821786_) '::)
                                   (if (gx#stx-pair? _tl2173921789_)
                                       (let ((_e2174021792_
                                              (gx#syntax-e _tl2173921789_)))
                                         (let ((_hd2174121796_
                                                (##car _e2174021792_))
                                               (_tl2174221799_
                                                (##cdr _e2174021792_)))
                                           (if (gx#stx-pair? _tl2174221799_)
                                               (let ((_e2174321802_
                                                      (gx#syntax-e
                                                       _tl2174221799_)))
                                                 (let ((_hd2174421806_
                                                        (##car _e2174321802_))
                                                       (_tl2174521809_
                                                        (##cdr _e2174321802_)))
                                                   (if (gx#stx-datum?
                                                        _hd2174421806_)
                                                       (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd2174421806_)
                           '=>:)
                   (if (gx#stx-pair? _tl2174521809_)
                       (let ((_e2174621812_ (gx#syntax-e _tl2174521809_)))
                         (let ((_hd2174721816_ (##car _e2174621812_))
                               (_tl2174821819_ (##cdr _e2174621812_)))
                           (if (gx#stx-null? _tl2174821819_)
                               ((lambda (_L21822_)
                                  (_loop20789_ _L21822_ _vars21066_ _K21067_))
                                _hd2174721816_)
                               (_g2171621765_ _g2171821769_))))
                       (_g2171621765_ _g2171821769_))
                   (_g2171621765_ _g2171821769_))
               (_g2171621765_ _g2171821769_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2171621765_ _g2171821769_))))
                                       (_g2171621765_ _g2171821769_))
                                   (_g2171621765_ _g2171821769_))
                               (_g2171621765_ _g2171821769_))))
                       (_g2171621765_ _g2171821769_))))
               (_g2171621765_ _g2171821769_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_g2171421895_
                                                   (lambda (_g2171821847_)
                                                     (if (gx#stx-pair?
                                                          _g2171821847_)
                                                         (let ((_e2172421850_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2171821847_)))
                   (let ((_hd2172521854_ (##car _e2172421850_))
                         (_tl2172621857_ (##cdr _e2172421850_)))
                     (if (gx#stx-pair? _tl2172621857_)
                         (let ((_e2172721860_ (gx#syntax-e _tl2172621857_)))
                           (let ((_hd2172821864_ (##car _e2172721860_))
                                 (_tl2172921867_ (##cdr _e2172721860_)))
                             (if (gx#stx-datum? _hd2172821864_)
                                 (if (equal? (gx#stx-e _hd2172821864_) '=>:)
                                     (if (gx#stx-pair? _tl2172921867_)
                                         (let ((_e2173021870_
                                                (gx#syntax-e _tl2172921867_)))
                                           (let ((_hd2173121874_
                                                  (##car _e2173021870_))
                                                 (_tl2173221877_
                                                  (##cdr _e2173021870_)))
                                             (if (gx#stx-null? _tl2173221877_)
                                                 ((lambda (_L21880_)
                                                    (_loop20789_
                                                     _L21880_
                                                     _vars21066_
                                                     _K21067_))
                                                  _hd2173121874_)
                                                 (_g2171521843_
                                                  _g2171821847_))))
                                         (_g2171521843_ _g2171821847_))
                                     (_g2171521843_ _g2171821847_))
                                 (_g2171521843_ _g2171821847_))))
                         (_g2171521843_ _g2171821847_))))
                 (_g2171521843_ _g2171821847_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g2171321923_
                                                     (lambda (_g2171821899_)
                                                       (if (gx#stx-pair?
                                                            _g2171821899_)
                                                           (let ((_e2172021902_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g2171821899_)))
                     (let ((_hd2172121906_ (##car _e2172021902_))
                           (_tl2172221909_ (##cdr _e2172021902_)))
                       (if (gx#stx-null? _tl2172221909_)
                           ((lambda (_L21912_)
                              (_loop20789_ _L21912_ _vars21066_ _K21067_))
                            _hd2172121906_)
                           (_g2171421895_ _g2171821899_))))
                   (_g2171421895_ _g2171821899_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2171321923_ _L21701_)))))))
                                    _tl2108721698_)))
                               (_g2106921674_ _g2108021678_))
                           (_g2106921674_ _g2108021678_))
                       (_g2106921674_ _g2108021678_))))
               (_g2106921674_ _g2108021678_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2106821927_
                                             _ptree21064_)))))))))))))))
                 (_loop-vector20791_
                  (lambda (_body20952_ _vars20954_ _K20955_)
                    (let ((_g2095820979_
                           (lambda (_g2095920975_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2095920975_))))
                      (let ((_g2095721020_
                             (lambda (_g2095920983_)
                               (if (gx#stx-pair? _g2095920983_)
                                   (let ((_e2096820986_
                                          (gx#syntax-e _g2095920983_)))
                                     (let ((_hd2096920990_
                                            (##car _e2096820986_))
                                           (_tl2097020993_
                                            (##cdr _e2096820986_)))
                                       (if (gx#stx-datum? _hd2096920990_)
                                           (if (equal? (gx#stx-e
                                                        _hd2096920990_)
                                                       'list:)
                                               (if (gx#stx-pair?
                                                    _tl2097020993_)
                                                   (let ((_e2097120996_
                                                          (gx#syntax-e
                                                           _tl2097020993_)))
                                                     (let ((_hd2097221000_
                                                            (##car _e2097120996_))
                                                           (_tl2097321003_
                                                            (##cdr _e2097120996_)))
                                                       (if (gx#stx-null?
                                                            _tl2097321003_)
                                                           ((lambda (_L21006_)
                                                              (_loop20789_
                                                               _L21006_
                                                               _vars20954_
                                                               _K20955_))
                                                            _hd2097221000_)
                                                           (_g2095820979_
                                                            _g2095920983_))))
                                                   (_g2095820979_
                                                    _g2095920983_))
                                               (_g2095820979_ _g2095920983_))
                                           (_g2095820979_ _g2095920983_))))
                                   (_g2095820979_ _g2095920983_)))))
                        (let ((_g2095621060_
                               (lambda (_g2095921024_)
                                 (if (gx#stx-pair? _g2095921024_)
                                     (let ((_e2096121027_
                                            (gx#syntax-e _g2095921024_)))
                                       (let ((_hd2096221031_
                                              (##car _e2096121027_))
                                             (_tl2096321034_
                                              (##cdr _e2096121027_)))
                                         (if (gx#stx-datum? _hd2096221031_)
                                             (if (equal? (gx#stx-e
                                                          _hd2096221031_)
                                                         'simple:)
                                                 (if (gx#stx-pair?
                                                      _tl2096321034_)
                                                     (let ((_e2096421037_
                                                            (gx#syntax-e
                                                             _tl2096321034_)))
                                                       (let ((_hd2096521041_
                                                              (##car _e2096421037_))
                                                             (_tl2096621044_
                                                              (##cdr _e2096421037_)))
                                                         (if (gx#stx-null?
                                                              _tl2096621044_)
                                                             ((lambda (_L21047_)
                                                                (_loop-list20792_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L21047_
                         _vars20954_
                         _K20955_))
                      _hd2096521041_)
                     (_g2095721020_ _g2095921024_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2095721020_
                                                      _g2095921024_))
                                                 (_g2095721020_ _g2095921024_))
                                             (_g2095721020_ _g2095921024_))))
                                     (_g2095721020_ _g2095921024_)))))
                          (_g2095621060_ _body20952_))))))
                 (_loop-list20792_
                  (lambda (_rest20882_ _vars20884_ _K20885_)
                    (let ((_g2088820900_
                           (lambda (_g2088920896_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2088920896_))))
                      (let ((_g2088720911_
                             (lambda (_g2088920904_)
                               ((lambda () (_K20885_ _vars20884_))))))
                        (let ((_g2088620948_
                               (lambda (_g2088920915_)
                                 (if (gx#stx-pair? _g2088920915_)
                                     (let ((_e2089220918_
                                            (gx#syntax-e _g2088920915_)))
                                       (let ((_hd2089320922_
                                              (##car _e2089220918_))
                                             (_tl2089420925_
                                              (##cdr _e2089220918_)))
                                         ((lambda (_L20928_ _L20930_)
                                            (_loop20789_
                                             _L20930_
                                             _vars20884_
                                             (lambda (_g2094220944_)
                                               (_loop-list20792_
                                                _L20928_
                                                _g2094220944_
                                                _K20885_))))
                                          _tl2089420925_
                                          _hd2089320922_)))
                                     (_g2088720911_ _g2088920915_)))))
                          (_g2088620948_ _rest20882_))))))
                 (_loop-class-list20793_
                  (lambda (_rest20795_ _vars20797_ _K20798_)
                    (let ((_g2080120816_
                           (lambda (_g2080220812_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2080220812_))))
                      (let ((_g2080020827_
                             (lambda (_g2080220820_)
                               ((lambda () (_K20798_ _vars20797_))))))
                        (let ((_g2079920878_
                               (lambda (_g2080220831_)
                                 (if (gx#stx-pair? _g2080220831_)
                                     (let ((_e2080520834_
                                            (gx#syntax-e _g2080220831_)))
                                       (let ((_hd2080620838_
                                              (##car _e2080520834_))
                                             (_tl2080720841_
                                              (##cdr _e2080520834_)))
                                         (if (gx#stx-pair? _tl2080720841_)
                                             (let ((_e2080820844_
                                                    (gx#syntax-e
                                                     _tl2080720841_)))
                                               (let ((_hd2080920848_
                                                      (##car _e2080820844_))
                                                     (_tl2081020851_
                                                      (##cdr _e2080820844_)))
                                                 ((lambda (_L20854_ _L20856_)
                                                    (_loop20789_
                                                     _L20856_
                                                     _vars20797_
                                                     (lambda (_g2087220874_)
                                                       (_loop-class-list20793_
                                                        _L20854_
                                                        _g2087220874_
                                                        _K20798_))))
                                                  _tl2081020851_
                                                  _hd2080920848_)))
                                             (_g2080020827_ _g2080220831_))))
                                     (_g2080020827_ _g2080220831_)))))
                          (_g2079920878_ _rest20795_)))))))
          (_loop20789_ _ptree20786_ '() values))))
    (define |gerbil/core::<match>[1]#generate-match1|
      (lambda (_stx17699_ _tgt17701_ _ptree17702_ _K17703_ _E17704_)
        (letrec ((_generate117706_
                  (lambda (_tgt19236_ _ptree19238_ _K19239_ _E19240_)
                    (let ((_g1924219250_
                           (lambda (_g1924319246_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1924319246_))))
                      (let ((_g1924120782_
                             (lambda (_g1924319254_)
                               ((lambda (_L19257_)
                                  (let ()
                                    (let ((_g1928319398_
                                           (lambda (_g1928419394_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1928419394_))))
                                      (let ((_g1928219419_
                                             (lambda (_g1928419402_)
                                               (if (gx#stx-pair? _g1928419402_)
                                                   (let ((_e1939019405_
                                                          (gx#syntax-e
                                                           _g1928419402_)))
                                                     (let ((_hd1939119409_
                                                            (##car _e1939019405_))
                                                           (_tl1939219412_
                                                            (##cdr _e1939019405_)))
                                                       (if (gx#stx-datum?
                                                            _hd1939119409_)
                                                           (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1939119409_)
                               'any:)
                       (if (gx#stx-null? _tl1939219412_)
                           ((lambda () _K19239_))
                           (_g1928319398_ _g1928419402_))
                       (_g1928319398_ _g1928419402_))
                   (_g1928319398_ _g1928419402_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1928319398_
                                                    _g1928419402_)))))
                                        (let ((_g1928119462_
                                               (lambda (_g1928419423_)
                                                 (if (gx#stx-pair?
                                                      _g1928419423_)
                                                     (let ((_e1938419426_
                                                            (gx#syntax-e
                                                             _g1928419423_)))
                                                       (let ((_hd1938519430_
                                                              (##car _e1938419426_))
                                                             (_tl1938619433_
                                                              (##cdr _e1938419426_)))
                                                         (if (gx#stx-datum?
                                                              _hd1938519430_)
                                                             (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _hd1938519430_)
                                 'var:)
                         (if (gx#stx-pair? _tl1938619433_)
                             (let ((_e1938719436_
                                    (gx#syntax-e _tl1938619433_)))
                               (let ((_hd1938819440_ (##car _e1938719436_))
                                     (_tl1938919443_ (##cdr _e1938719436_)))
                                 (if (gx#stx-null? _tl1938919443_)
                                     ((lambda (_L19446_)
                                        (cons (gx#datum->syntax '#f 'let)
                                              (cons (cons (cons _L19446_
                                                                (cons _L19257_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _K19239_ '()))))
                                      _hd1938819440_)
                                     (_g1928219419_ _g1928419423_))))
                             (_g1928219419_ _g1928419423_))
                         (_g1928219419_ _g1928419423_))
                     (_g1928219419_ _g1928419423_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1928219419_
                                                      _g1928419423_)))))
                                          (let ((_g1928019544_
                                                 (lambda (_g1928419466_)
                                                   (if (gx#stx-pair?
                                                        _g1928419466_)
                                                       (let ((_e1937719469_
                                                              (gx#syntax-e
                                                               _g1928419466_)))
                                                         (let ((_hd1937819473_
                                                                (##car _e1937719469_))
                                                               (_tl1937919476_
                                                                (##cdr _e1937719469_)))
                                                           (if (gx#stx-datum?
                                                                _hd1937819473_)
                                                               (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _hd1937819473_)
                                   'datum:)
                           (if (gx#stx-pair? _tl1937919476_)
                               (let ((_e1938019479_
                                      (gx#syntax-e _tl1937919476_)))
                                 (let ((_hd1938119483_ (##car _e1938019479_))
                                       (_tl1938219486_ (##cdr _e1938019479_)))
                                   (if (gx#stx-null? _tl1938219486_)
                                       ((lambda (_L19489_)
                                          (let ((_g1950219510_
                                                 (lambda (_g1950319506_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1950319506_))))
                                            (let ((_g1950119529_
                                                   (lambda (_g1950319514_)
                                                     ((lambda (_L19517_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'if)
                        (cons (cons _L19517_
                                    (cons _L19257_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L19489_ '()))
                                                '())))
                              (cons _K19239_ (cons _E19240_ '()))))))
              _g1950319514_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1950119529_
                                               (let ((_e19533_
                                                      (gx#stx-e _L19489_)))
                                                 (if (let ((_$e19536_
                                                            (symbol? _e19533_)))
                                                       (if _$e19536_
                                                           _$e19536_
                                                           (let ((_$e19540_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (keyword? _e19533_)))
                     (if _$e19540_ _$e19540_ (immediate? _e19533_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##eq?)
                                                     (if (number? _e19533_)
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eqv?)
                                                         (gx#datum->syntax
                                                          '#f
                                                          'equal?))))))))
                                        _hd1938119483_)
                                       (_g1928119462_ _g1928419466_))))
                               (_g1928119462_ _g1928419466_))
                           (_g1928119462_ _g1928419466_))
                       (_g1928119462_ _g1928419466_))))
               (_g1928119462_ _g1928419466_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_g1927919598_
                                                   (lambda (_g1928419548_)
                                                     (if (gx#stx-pair?
                                                          _g1928419548_)
                                                         (let ((_e1936719551_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1928419548_)))
                   (let ((_hd1936819555_ (##car _e1936719551_))
                         (_tl1936919558_ (##cdr _e1936719551_)))
                     (if (gx#stx-datum? _hd1936819555_)
                         (if (equal? (gx#stx-e _hd1936819555_) 'class:)
                             (if (gx#stx-pair? _tl1936919558_)
                                 (let ((_e1937019561_
                                        (gx#syntax-e _tl1936919558_)))
                                   (let ((_hd1937119565_ (##car _e1937019561_))
                                         (_tl1937219568_
                                          (##cdr _e1937019561_)))
                                     (if (gx#stx-pair? _tl1937219568_)
                                         (let ((_e1937319571_
                                                (gx#syntax-e _tl1937219568_)))
                                           (let ((_hd1937419575_
                                                  (##car _e1937319571_))
                                                 (_tl1937519578_
                                                  (##cdr _e1937319571_)))
                                             (if (gx#stx-null? _tl1937519578_)
                                                 ((lambda (_L19581_ _L19583_)
                                                    (_generate-class17712_
                                                     (gx#stx-e _L19583_)
                                                     _tgt19236_
                                                     _L19581_
                                                     _K19239_
                                                     _E19240_))
                                                  _hd1937419575_
                                                  _hd1937119565_)
                                                 (_g1928019544_
                                                  _g1928419548_))))
                                         (_g1928019544_ _g1928419548_))))
                                 (_g1928019544_ _g1928419548_))
                             (_g1928019544_ _g1928419548_))
                         (_g1928019544_ _g1928419548_))))
                 (_g1928019544_ _g1928419548_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g1927819652_
                                                     (lambda (_g1928419602_)
                                                       (if (gx#stx-pair?
                                                            _g1928419602_)
                                                           (let ((_e1935619605_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g1928419602_)))
                     (let ((_hd1935719609_ (##car _e1935619605_))
                           (_tl1935819612_ (##cdr _e1935619605_)))
                       (if (gx#stx-datum? _hd1935719609_)
                           (if (equal? (gx#stx-e _hd1935719609_) 'struct:)
                               (if (gx#stx-pair? _tl1935819612_)
                                   (let ((_e1935919615_
                                          (gx#syntax-e _tl1935819612_)))
                                     (let ((_hd1936019619_
                                            (##car _e1935919615_))
                                           (_tl1936119622_
                                            (##cdr _e1935919615_)))
                                       (if (gx#stx-pair? _tl1936119622_)
                                           (let ((_e1936219625_
                                                  (gx#syntax-e
                                                   _tl1936119622_)))
                                             (let ((_hd1936319629_
                                                    (##car _e1936219625_))
                                                   (_tl1936419632_
                                                    (##cdr _e1936219625_)))
                                               (if (gx#stx-null?
                                                    _tl1936419632_)
                                                   ((lambda (_L19635_ _L19637_)
                                                      (_generate-struct17711_
                                                       (gx#stx-e _L19637_)
                                                       _tgt19236_
                                                       _L19635_
                                                       _K19239_
                                                       _E19240_))
                                                    _hd1936319629_
                                                    _hd1936019619_)
                                                   (_g1927919598_
                                                    _g1928419602_))))
                                           (_g1927919598_ _g1928419602_))))
                                   (_g1927919598_ _g1928419602_))
                               (_g1927919598_ _g1928419602_))
                           (_g1927919598_ _g1928419602_))))
                   (_g1927919598_ _g1928419602_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_g1927719830_
                                                       (lambda (_g1928419656_)
                                                         (if (gx#stx-pair?
                                                              _g1928419656_)
                                                             (let ((_e1934819659_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g1928419656_)))
                       (let ((_hd1934919663_ (##car _e1934819659_))
                             (_tl1935019666_ (##cdr _e1934819659_)))
                         (if (gx#stx-datum? _hd1934919663_)
                             (if (equal? (gx#stx-e _hd1934919663_) 'vector:)
                                 (if (gx#stx-pair? _tl1935019666_)
                                     (let ((_e1935119669_
                                            (gx#syntax-e _tl1935019666_)))
                                       (let ((_hd1935219673_
                                              (##car _e1935119669_))
                                             (_tl1935319676_
                                              (##cdr _e1935119669_)))
                                         (if (gx#stx-null? _tl1935319676_)
                                             ((lambda (_L19679_)
                                                (let ((_g1969319714_
                                                       (lambda (_g1969419710_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1969419710_))))
                                                  (let ((_g1969219755_
                                                         (lambda (_g1969419718_)
                                                           (if (gx#stx-pair?
                                                                _g1969419718_)
                                                               (let ((_e1970319721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1969419718_)))
                         (let ((_hd1970419725_ (##car _e1970319721_))
                               (_tl1970519728_ (##cdr _e1970319721_)))
                           (if (gx#stx-datum? _hd1970419725_)
                               (if (equal? (gx#stx-e _hd1970419725_) 'list:)
                                   (if (gx#stx-pair? _tl1970519728_)
                                       (let ((_e1970619731_
                                              (gx#syntax-e _tl1970519728_)))
                                         (let ((_hd1970719735_
                                                (##car _e1970619731_))
                                               (_tl1970819738_
                                                (##cdr _e1970619731_)))
                                           (if (gx#stx-null? _tl1970819738_)
                                               ((lambda (_L19741_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'if)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'vector?)
                            (cons _L19257_ '()))
                      (cons (_generate-list-vector17710_
                             _tgt19236_
                             _L19741_
                             (gx#datum->syntax '#f 'subvector->list)
                             '0
                             _K19239_
                             _E19240_)
                            (cons _E19240_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1970719735_)
                                               (_g1969319714_ _g1969419718_))))
                                       (_g1969319714_ _g1969419718_))
                                   (_g1969319714_ _g1969419718_))
                               (_g1969319714_ _g1969419718_))))
                       (_g1969319714_ _g1969419718_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g1969119826_
                                                           (lambda (_g1969419759_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1969419759_)
                         (let ((_e1969619762_ (gx#syntax-e _g1969419759_)))
                           (let ((_hd1969719766_ (##car _e1969619762_))
                                 (_tl1969819769_ (##cdr _e1969619762_)))
                             (if (gx#stx-datum? _hd1969719766_)
                                 (if (equal? (gx#stx-e _hd1969719766_)
                                             'simple:)
                                     (if (gx#stx-pair? _tl1969819769_)
                                         (let ((_e1969919772_
                                                (gx#syntax-e _tl1969819769_)))
                                           (let ((_hd1970019776_
                                                  (##car _e1969919772_))
                                                 (_tl1970119779_
                                                  (##cdr _e1969919772_)))
                                             (if (gx#stx-null? _tl1970119779_)
                                                 ((lambda (_L19782_)
                                                    (let ((_g1979519803_
                                                           (lambda (_g1979619799_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g1979619799_))))
                                                      (let ((_g1979419822_
                                                             (lambda (_g1979619807_)
                                                               ((lambda (_L19810_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons (gx#datum->syntax '#f 'and)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##vector?)
                                                          (cons _L19257_ '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fx=)
                        (cons (cons (gx#datum->syntax '#f '##vector-length)
                                    (cons _L19257_ '()))
                              (cons _L19810_ '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (_generate-simple-vector17709_
                                               _tgt19236_
                                               _L19782_
                                               '0
                                               _K19239_
                                               _E19240_)
                                              (cons _E19240_ '()))))))
                        _g1979619807_))))
                (_g1979419822_ (gx#stx-length _L19782_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1970019776_)
                                                 (_g1969219755_
                                                  _g1969419759_))))
                                         (_g1969219755_ _g1969419759_))
                                     (_g1969219755_ _g1969419759_))
                                 (_g1969219755_ _g1969419759_))))
                         (_g1969219755_ _g1969419759_)))))
              (_g1969119826_ _L19679_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd1935219673_)
                                             (_g1927819652_ _g1928419656_))))
                                     (_g1927819652_ _g1928419656_))
                                 (_g1927819652_ _g1928419656_))
                             (_g1927819652_ _g1928419656_))))
                     (_g1927819652_ _g1928419656_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g1927620008_
                                                         (lambda (_g1928419834_)
                                                           (if (gx#stx-pair?
                                                                _g1928419834_)
                                                               (let ((_e1934119837_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1928419834_)))
                         (let ((_hd1934219841_ (##car _e1934119837_))
                               (_tl1934319844_ (##cdr _e1934119837_)))
                           (if (gx#stx-datum? _hd1934219841_)
                               (if (equal? (gx#stx-e _hd1934219841_) 'values:)
                                   (if (gx#stx-pair? _tl1934319844_)
                                       (let ((_e1934419847_
                                              (gx#syntax-e _tl1934319844_)))
                                         (let ((_hd1934519851_
                                                (##car _e1934419847_))
                                               (_tl1934619854_
                                                (##cdr _e1934419847_)))
                                           (if (gx#stx-null? _tl1934619854_)
                                               ((lambda (_L19857_)
                                                  (let ((_g1987119892_
                                                         (lambda (_g1987219888_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g1987219888_))))
                                                    (let ((_g1987019933_
                                                           (lambda (_g1987219896_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1987219896_)
                         (let ((_e1988119899_ (gx#syntax-e _g1987219896_)))
                           (let ((_hd1988219903_ (##car _e1988119899_))
                                 (_tl1988319906_ (##cdr _e1988119899_)))
                             (if (gx#stx-datum? _hd1988219903_)
                                 (if (equal? (gx#stx-e _hd1988219903_) 'list:)
                                     (if (gx#stx-pair? _tl1988319906_)
                                         (let ((_e1988419909_
                                                (gx#syntax-e _tl1988319906_)))
                                           (let ((_hd1988519913_
                                                  (##car _e1988419909_))
                                                 (_tl1988619916_
                                                  (##cdr _e1988419909_)))
                                             (if (gx#stx-null? _tl1988619916_)
                                                 ((lambda (_L19919_)
                                                    (_generate-list-vector17710_
                                                     _tgt19236_
                                                     _L19919_
                                                     (gx#datum->syntax
                                                      '#f
                                                      'values->list)
                                                     '0
                                                     _K19239_
                                                     _E19240_))
                                                  _hd1988519913_)
                                                 (_g1987119892_
                                                  _g1987219896_))))
                                         (_g1987119892_ _g1987219896_))
                                     (_g1987119892_ _g1987219896_))
                                 (_g1987119892_ _g1987219896_))))
                         (_g1987119892_ _g1987219896_)))))
              (let ((_g1986920004_
                     (lambda (_g1987219937_)
                       (if (gx#stx-pair? _g1987219937_)
                           (let ((_e1987419940_ (gx#syntax-e _g1987219937_)))
                             (let ((_hd1987519944_ (##car _e1987419940_))
                                   (_tl1987619947_ (##cdr _e1987419940_)))
                               (if (gx#stx-datum? _hd1987519944_)
                                   (if (equal? (gx#stx-e _hd1987519944_)
                                               'simple:)
                                       (if (gx#stx-pair? _tl1987619947_)
                                           (let ((_e1987719950_
                                                  (gx#syntax-e
                                                   _tl1987619947_)))
                                             (let ((_hd1987819954_
                                                    (##car _e1987719950_))
                                                   (_tl1987919957_
                                                    (##cdr _e1987719950_)))
                                               (if (gx#stx-null?
                                                    _tl1987919957_)
                                                   ((lambda (_L19960_)
                                                      (let ((_g1997319981_
                                                             (lambda (_g1997419977_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1997419977_))))
                                                        (let ((_g1997220000_
                                                               (lambda (_g1997419985_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L19988_)
                            (let ()
                              (cons (gx#datum->syntax '#f 'if)
                                    (cons (cons (gx#datum->syntax '#f '##fx=)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'values-count)
                                                            (cons _L19257_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _L19988_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (_generate-simple-vector17709_
                                                 _tgt19236_
                                                 _L19960_
                                                 '0
                                                 _K19239_
                                                 _E19240_)
                                                (cons _E19240_ '()))))))
                          _g1997419985_))))
                  (_g1997220000_ (gx#stx-length _L19960_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1987819954_)
                                                   (_g1987019933_
                                                    _g1987219937_))))
                                           (_g1987019933_ _g1987219937_))
                                       (_g1987019933_ _g1987219937_))
                                   (_g1987019933_ _g1987219937_))))
                           (_g1987019933_ _g1987219937_)))))
                (_g1986920004_ _L19857_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1934519851_)
                                               (_g1927719830_ _g1928419834_))))
                                       (_g1927719830_ _g1928419834_))
                                   (_g1927719830_ _g1928419834_))
                               (_g1927719830_ _g1928419834_))))
                       (_g1927719830_ _g1928419834_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g1927520079_
                                                           (lambda (_g1928420012_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1928420012_)
                         (let ((_e1933420015_ (gx#syntax-e _g1928420012_)))
                           (let ((_hd1933520019_ (##car _e1933420015_))
                                 (_tl1933620022_ (##cdr _e1933420015_)))
                             (if (gx#stx-datum? _hd1933520019_)
                                 (if (equal? (gx#stx-e _hd1933520019_) 'box:)
                                     (if (gx#stx-pair? _tl1933620022_)
                                         (let ((_e1933720025_
                                                (gx#syntax-e _tl1933620022_)))
                                           (let ((_hd1933820029_
                                                  (##car _e1933720025_))
                                                 (_tl1933920032_
                                                  (##cdr _e1933720025_)))
                                             (if (gx#stx-null? _tl1933920032_)
                                                 ((lambda (_L20035_)
                                                    (let ((_g2004820056_
                                                           (lambda (_g2004920052_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g2004920052_))))
                                                      (let ((_g2004720075_
                                                             (lambda (_g2004920060_)
                                                               ((lambda (_L20063_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons (gx#datum->syntax '#f '##box?)
                                              (cons _L19257_ '()))
                                        (cons (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L20063_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f '##unbox)
                                          (cons _L19257_ '()))
                                    '()))
                        '())
                  (cons (_generate117706_ _L20063_ _L20035_ _K19239_ _E19240_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _E19240_ '()))))))
                        _g2004920060_))))
                (_g2004720075_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1933820029_)
                                                 (_g1927620008_
                                                  _g1928420012_))))
                                         (_g1927620008_ _g1928420012_))
                                     (_g1927620008_ _g1928420012_))
                                 (_g1927620008_ _g1928420012_))))
                         (_g1927620008_ _g1928420012_)))))
              (let ((_g1927420133_
                     (lambda (_g1928420083_)
                       (if (gx#stx-pair? _g1928420083_)
                           (let ((_e1932420086_ (gx#syntax-e _g1928420083_)))
                             (let ((_hd1932520090_ (##car _e1932420086_))
                                   (_tl1932620093_ (##cdr _e1932420086_)))
                               (if (gx#stx-datum? _hd1932520090_)
                                   (if (equal? (gx#stx-e _hd1932520090_)
                                               'splice:)
                                       (if (gx#stx-pair? _tl1932620093_)
                                           (let ((_e1932720096_
                                                  (gx#syntax-e
                                                   _tl1932620093_)))
                                             (let ((_hd1932820100_
                                                    (##car _e1932720096_))
                                                   (_tl1932920103_
                                                    (##cdr _e1932720096_)))
                                               (if (gx#stx-pair?
                                                    _tl1932920103_)
                                                   (let ((_e1933020106_
                                                          (gx#syntax-e
                                                           _tl1932920103_)))
                                                     (let ((_hd1933120110_
                                                            (##car _e1933020106_))
                                                           (_tl1933220113_
                                                            (##cdr _e1933020106_)))
                                                       (if (gx#stx-null?
                                                            _tl1933220113_)
                                                           ((lambda (_L20116_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L20118_)
                      (_generate-splice17708_
                       _tgt19236_
                       _L20118_
                       _L20116_
                       _K19239_
                       _E19240_))
                    _hd1933120110_
                    _hd1932820100_)
                   (_g1927520079_ _g1928420083_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1927520079_
                                                    _g1928420083_))))
                                           (_g1927520079_ _g1928420083_))
                                       (_g1927520079_ _g1928420083_))
                                   (_g1927520079_ _g1928420083_))))
                           (_g1927520079_ _g1928420083_)))))
                (let ((_g1927320154_
                       (lambda (_g1928420137_)
                         (if (gx#stx-pair? _g1928420137_)
                             (let ((_e1931920140_ (gx#syntax-e _g1928420137_)))
                               (let ((_hd1932020144_ (##car _e1931920140_))
                                     (_tl1932120147_ (##cdr _e1931920140_)))
                                 (if (gx#stx-datum? _hd1932020144_)
                                     (if (equal? (gx#stx-e _hd1932020144_)
                                                 'null:)
                                         (if (gx#stx-null? _tl1932120147_)
                                             ((lambda ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'if)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '##null?)
                          (cons _L19257_ '()))
                    (cons _K19239_ (cons _E19240_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1927420133_ _g1928420137_))
                                         (_g1927420133_ _g1928420137_))
                                     (_g1927420133_ _g1928420137_))))
                             (_g1927420133_ _g1928420137_)))))
                  (let ((_g1927220273_
                         (lambda (_g1928420158_)
                           (if (gx#stx-pair? _g1928420158_)
                               (let ((_e1931020161_
                                      (gx#syntax-e _g1928420158_)))
                                 (let ((_hd1931120165_ (##car _e1931020161_))
                                       (_tl1931220168_ (##cdr _e1931020161_)))
                                   (if (gx#stx-datum? _hd1931120165_)
                                       (if (equal? (gx#stx-e _hd1931120165_)
                                                   'cons:)
                                           (if (gx#stx-pair? _tl1931220168_)
                                               (let ((_e1931320171_
                                                      (gx#syntax-e
                                                       _tl1931220168_)))
                                                 (let ((_hd1931420175_
                                                        (##car _e1931320171_))
                                                       (_tl1931520178_
                                                        (##cdr _e1931320171_)))
                                                   (if (gx#stx-pair?
                                                        _tl1931520178_)
                                                       (let ((_e1931620181_
                                                              (gx#syntax-e
                                                               _tl1931520178_)))
                                                         (let ((_hd1931720185_
                                                                (##car _e1931620181_))
                                                               (_tl1931820188_
                                                                (##cdr _e1931620181_)))
                                                           (if (gx#stx-null?
                                                                _tl1931820188_)
                                                               ((lambda (_L20191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L20193_)
                          (let ((_g2020920224_
                                 (lambda (_g2021020220_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2021020220_))))
                            (let ((_g2020820269_
                                   (lambda (_g2021020228_)
                                     (if (gx#stx-pair? _g2021020228_)
                                         (let ((_e2021320231_
                                                (gx#syntax-e _g2021020228_)))
                                           (let ((_hd2021420235_
                                                  (##car _e2021320231_))
                                                 (_tl2021520238_
                                                  (##cdr _e2021320231_)))
                                             (if (gx#stx-pair? _tl2021520238_)
                                                 (let ((_e2021620241_
                                                        (gx#syntax-e
                                                         _tl2021520238_)))
                                                   (let ((_hd2021720245_
                                                          (##car _e2021620241_))
                                                         (_tl2021820248_
                                                          (##cdr _e2021620241_)))
                                                     (if (gx#stx-null?
                                                          _tl2021820248_)
                                                         ((lambda (_L20251_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L20253_)
                    (let ()
                      (cons (gx#datum->syntax '#f 'if)
                            (cons (cons (gx#datum->syntax '#f '##pair?)
                                        (cons _L19257_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'let)
                                              (cons (cons (cons _L20253_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     '##car)
                                    (cons _L19257_ '()))
                              '()))
                  (cons (cons _L20251_
                              (cons (cons (gx#datum->syntax '#f '##cdr)
                                          (cons _L19257_ '()))
                                    '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (_generate117706_
                                                           _L20253_
                                                           _L20193_
                                                           (_generate117706_
                                                            _L20251_
                                                            _L20191_
                                                            _K19239_
                                                            _E19240_)
                                                           _E19240_)
                                                          '())))
                                        (cons _E19240_ '()))))))
                  _hd2021720245_
                  _hd2021420235_)
                 (_g2020920224_ _g2021020228_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2020920224_
                                                  _g2021020228_))))
                                         (_g2020920224_ _g2021020228_)))))
                              (_g2020820269_
                               (list (gx#genident 'hd) (gx#genident 'tl))))))
                        _hd1931720185_
                        _hd1931420175_)
                       (_g1927320154_ _g1928420158_))))
               (_g1927320154_ _g1928420158_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1927320154_ _g1928420158_))
                                           (_g1927320154_ _g1928420158_))
                                       (_g1927320154_ _g1928420158_))))
                               (_g1927320154_ _g1928420158_)))))
                    (let ((_g1927120313_
                           (lambda (_g1928420277_)
                             (if (gx#stx-pair? _g1928420277_)
                                 (let ((_e1930220280_
                                        (gx#syntax-e _g1928420277_)))
                                   (let ((_hd1930320284_ (##car _e1930220280_))
                                         (_tl1930420287_
                                          (##cdr _e1930220280_)))
                                     (if (gx#stx-datum? _hd1930320284_)
                                         (if (equal? (gx#stx-e _hd1930320284_)
                                                     'not:)
                                             (if (gx#stx-pair? _tl1930420287_)
                                                 (let ((_e1930520290_
                                                        (gx#syntax-e
                                                         _tl1930420287_)))
                                                   (let ((_hd1930620294_
                                                          (##car _e1930520290_))
                                                         (_tl1930720297_
                                                          (##cdr _e1930520290_)))
                                                     (if (gx#stx-null?
                                                          _tl1930720297_)
                                                         ((lambda (_L20300_)
                                                            (_generate117706_
                                                             _tgt19236_
                                                             _L20300_
                                                             _E19240_
                                                             _K19239_))
                                                          _hd1930620294_)
                                                         (_g1927220273_
                                                          _g1928420277_))))
                                                 (_g1927220273_ _g1928420277_))
                                             (_g1927220273_ _g1928420277_))
                                         (_g1927220273_ _g1928420277_))))
                                 (_g1927220273_ _g1928420277_)))))
                      (let ((_g1927020401_
                             (lambda (_g1928420317_)
                               (if (gx#stx-pair? _g1928420317_)
                                   (let ((_e1929820320_
                                          (gx#syntax-e _g1928420317_)))
                                     (let ((_hd1929920324_
                                            (##car _e1929820320_))
                                           (_tl1930020327_
                                            (##cdr _e1929820320_)))
                                       (if (gx#stx-datum? _hd1929920324_)
                                           (if (equal? (gx#stx-e
                                                        _hd1929920324_)
                                                       'or:)
                                               ((lambda (_L20330_)
                                                  (let ((_g2034220354_
                                                         (lambda (_g2034320350_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2034320350_))))
                                                    (let ((_g2034120365_
                                                           (lambda (_g2034320358_)
                                                             ((lambda ()
                                                                _E19240_)))))
                                                      (let ((_g2034020397_
                                                             (lambda (_g2034320369_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2034320369_)
                           (let ((_e2034620372_ (gx#syntax-e _g2034320369_)))
                             (let ((_hd2034720376_ (##car _e2034620372_))
                                   (_tl2034820379_ (##cdr _e2034620372_)))
                               ((lambda (_L20382_ _L20384_)
                                  (_generate117706_
                                   _tgt19236_
                                   _L20384_
                                   _K19239_
                                   (_generate117706_
                                    _tgt19236_
                                    (cons 'or: _L20382_)
                                    _K19239_
                                    _E19240_)))
                                _tl2034820379_
                                _hd2034720376_)))
                           (_g2034120365_ _g2034320369_)))))
                (_g2034020397_ _L20330_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl1930020327_)
                                               (_g1927120313_ _g1928420317_))
                                           (_g1927120313_ _g1928420317_))))
                                   (_g1927120313_ _g1928420317_)))))
                        (let ((_g1926920489_
                               (lambda (_g1928420405_)
                                 (if (gx#stx-pair? _g1928420405_)
                                     (let ((_e1929420408_
                                            (gx#syntax-e _g1928420405_)))
                                       (let ((_hd1929520412_
                                              (##car _e1929420408_))
                                             (_tl1929620415_
                                              (##cdr _e1929420408_)))
                                         (if (gx#stx-datum? _hd1929520412_)
                                             (if (equal? (gx#stx-e
                                                          _hd1929520412_)
                                                         'and:)
                                                 ((lambda (_L20418_)
                                                    (let ((_g2043020442_
                                                           (lambda (_g2043120438_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g2043120438_))))
                                                      (let ((_g2042920453_
                                                             (lambda (_g2043120446_)
                                                               ((lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _K19239_)))))
                (let ((_g2042820485_
                       (lambda (_g2043120457_)
                         (if (gx#stx-pair? _g2043120457_)
                             (let ((_e2043420460_ (gx#syntax-e _g2043120457_)))
                               (let ((_hd2043520464_ (##car _e2043420460_))
                                     (_tl2043620467_ (##cdr _e2043420460_)))
                                 ((lambda (_L20470_ _L20472_)
                                    (_generate117706_
                                     _tgt19236_
                                     _L20472_
                                     (_generate117706_
                                      _tgt19236_
                                      (cons 'and: _L20470_)
                                      _K19239_
                                      _E19240_)
                                     _E19240_))
                                  _tl2043620467_
                                  _hd2043520464_)))
                             (_g2042920453_ _g2043120457_)))))
                  (_g2042820485_ _L20418_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl1929620415_)
                                                 (_g1927020401_ _g1928420405_))
                                             (_g1927020401_ _g1928420405_))))
                                     (_g1927020401_ _g1928420405_)))))
                          (let ((_g1926820778_
                                 (lambda (_g1928420493_)
                                   (if (gx#stx-pair? _g1928420493_)
                                       (let ((_e1928720496_
                                              (gx#syntax-e _g1928420493_)))
                                         (let ((_hd1928820500_
                                                (##car _e1928720496_))
                                               (_tl1928920503_
                                                (##cdr _e1928720496_)))
                                           (if (gx#stx-datum? _hd1928820500_)
                                               (if (equal? (gx#stx-e
                                                            _hd1928820500_)
                                                           '?:)
                                                   (if (gx#stx-pair?
                                                        _tl1928920503_)
                                                       (let ((_e1929020506_
                                                              (gx#syntax-e
                                                               _tl1928920503_)))
                                                         (let ((_hd1929120510_
                                                                (##car _e1929020506_))
                                                               (_tl1929220513_
                                                                (##cdr _e1929020506_)))
                                                           ((lambda (_L20516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L20518_)
                      (let ((_g2053420566_
                             (lambda (_g2053520562_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g2053520562_))))
                        (let ((_g2053320664_
                               (lambda (_g2053520570_)
                                 (if (gx#stx-pair? _g2053520570_)
                                     (let ((_e2054920573_
                                            (gx#syntax-e _g2053520570_)))
                                       (let ((_hd2055020577_
                                              (##car _e2054920573_))
                                             (_tl2055120580_
                                              (##cdr _e2054920573_)))
                                         (if (gx#stx-datum? _hd2055020577_)
                                             (if (equal? (gx#stx-e
                                                          _hd2055020577_)
                                                         '::)
                                                 (if (gx#stx-pair?
                                                      _tl2055120580_)
                                                     (let ((_e2055220583_
                                                            (gx#syntax-e
                                                             _tl2055120580_)))
                                                       (let ((_hd2055320587_
                                                              (##car _e2055220583_))
                                                             (_tl2055420590_
                                                              (##cdr _e2055220583_)))
                                                         (if (gx#stx-pair?
                                                              _tl2055420590_)
                                                             (let ((_e2055520593_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl2055420590_)))
                       (let ((_hd2055620597_ (##car _e2055520593_))
                             (_tl2055720600_ (##cdr _e2055520593_)))
                         (if (gx#stx-datum? _hd2055620597_)
                             (if (equal? (gx#stx-e _hd2055620597_) '=>:)
                                 (if (gx#stx-pair? _tl2055720600_)
                                     (let ((_e2055820603_
                                            (gx#syntax-e _tl2055720600_)))
                                       (let ((_hd2055920607_
                                              (##car _e2055820603_))
                                             (_tl2056020610_
                                              (##cdr _e2055820603_)))
                                         (if (gx#stx-null? _tl2056020610_)
                                             ((lambda (_L20613_ _L20615_)
                                                (let ((_g2063320641_
                                                       (lambda (_g2063420637_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g2063420637_))))
                                                  (let ((_g2063220660_
                                                         (lambda (_g2063420645_)
                                                           ((lambda (_L20648_)
                                                              (let ()
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'if)
                              (cons (cons (gx#datum->syntax '#f '?)
                                          (cons _L20518_ (cons _L19257_ '())))
                                    (cons (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (cons _L20648_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _L20615_ (cons _L19257_ '())) '()))
                    '())
              (cons (_generate117706_ _L20648_ _L20613_ _K19239_ _E19240_)
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons _E19240_ '()))))))
                    _g2063420645_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2063220660_
                                                     (gx#genident 'e)))))
                                              _hd2055920607_
                                              _hd2055320587_)
                                             (_g2053420566_ _g2053520570_))))
                                     (_g2053420566_ _g2053520570_))
                                 (_g2053420566_ _g2053520570_))
                             (_g2053420566_ _g2053520570_))))
                     (_g2053420566_ _g2053520570_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2053420566_
                                                      _g2053520570_))
                                                 (_g2053420566_ _g2053520570_))
                                             (_g2053420566_ _g2053520570_))))
                                     (_g2053420566_ _g2053520570_)))))
                          (let ((_g2053220735_
                                 (lambda (_g2053520668_)
                                   (if (gx#stx-pair? _g2053520668_)
                                       (let ((_e2054120671_
                                              (gx#syntax-e _g2053520668_)))
                                         (let ((_hd2054220675_
                                                (##car _e2054120671_))
                                               (_tl2054320678_
                                                (##cdr _e2054120671_)))
                                           (if (gx#stx-datum? _hd2054220675_)
                                               (if (equal? (gx#stx-e
                                                            _hd2054220675_)
                                                           '=>:)
                                                   (if (gx#stx-pair?
                                                        _tl2054320678_)
                                                       (let ((_e2054420681_
                                                              (gx#syntax-e
                                                               _tl2054320678_)))
                                                         (let ((_hd2054520685_
                                                                (##car _e2054420681_))
                                                               (_tl2054620688_
                                                                (##cdr _e2054420681_)))
                                                           (if (gx#stx-null?
                                                                _tl2054620688_)
                                                               ((lambda (_L20691_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_g2070420712_
                                 (lambda (_g2070520708_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2070520708_))))
                            (let ((_g2070320731_
                                   (lambda (_g2070520716_)
                                     ((lambda (_L20719_)
                                        (let ()
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (cons _L20719_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _L20518_ (cons _L19257_ '())) '()))
                    '())
              (cons (cons (gx#datum->syntax '#f 'if)
                          (cons _L20719_
                                (cons (_generate117706_
                                       _L20719_
                                       _L20691_
                                       _K19239_
                                       _E19240_)
                                      (cons _E19240_ '()))))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2070520716_))))
                              (_g2070320731_ (gx#genident 'e)))))
                        _hd2054520685_)
                       (_g2053320664_ _g2053520668_))))
               (_g2053320664_ _g2053520668_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2053320664_
                                                    _g2053520668_))
                                               (_g2053320664_ _g2053520668_))))
                                       (_g2053320664_ _g2053520668_)))))
                            (let ((_g2053120763_
                                   (lambda (_g2053520739_)
                                     (if (gx#stx-pair? _g2053520739_)
                                         (let ((_e2053720742_
                                                (gx#syntax-e _g2053520739_)))
                                           (let ((_hd2053820746_
                                                  (##car _e2053720742_))
                                                 (_tl2053920749_
                                                  (##cdr _e2053720742_)))
                                             (if (gx#stx-null? _tl2053920749_)
                                                 ((lambda (_L20752_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '?)
                              (cons _L20518_ (cons _L19257_ '())))
                        (cons (_generate117706_
                               _tgt19236_
                               _L20752_
                               _K19239_
                               _E19240_)
                              (cons _E19240_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd2053820746_)
                                                 (_g2053220735_
                                                  _g2053520739_))))
                                         (_g2053220735_ _g2053520739_)))))
                              (let ((_g2053020774_
                                     (lambda (_g2053520767_)
                                       (if (gx#stx-null? _g2053520767_)
                                           ((lambda ()
                                              (cons (gx#datum->syntax '#f 'if)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '?)
                        (cons _L20518_ (cons _L19257_ '())))
                  (cons _K19239_ (cons _E19240_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g2053120763_ _g2053520767_)))))
                                (_g2053020774_ _L20516_)))))))
                    _tl1929220513_
                    _hd1929120510_)))
               (_g1926920489_ _g1928420493_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1926920489_
                                                    _g1928420493_))
                                               (_g1926920489_ _g1928420493_))))
                                       (_g1926920489_ _g1928420493_)))))
                            (_g1926820778_ _ptree19238_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _g1924319254_))))
                        (_g1924120782_ _tgt19236_)))))
                 (_generate-splice17708_
                  (lambda (_tgt18608_ _hd18610_ _rest18611_ _K18612_ _E18613_)
                    (let ((_g1861518632_
                           (lambda (_g1861618628_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1861618628_))))
                      (let ((_g1861419232_
                             (lambda (_g1861618636_)
                               (if (gx#stx-pair/null? _g1861618636_)
                                   (if (fx>= (gx#stx-length _g1861618636_) '0)
                                       (let ((_g29476_
                                              (gx#syntax-split-splice
                                               _g1861618636_
                                               '0)))
                                         (begin
                                           (let ((_g29477_
                                                  (values-count _g29476_)))
                                             (if (not (fx= _g29477_ 2))
                                                 (error "Context expects 2 values"
                                                        _g29477_)))
                                           (let ((_target1861818639_
                                                  (values-ref _g29476_ 0))
                                                 (_tl1862018642_
                                                  (values-ref _g29476_ 1)))
                                             (if (gx#stx-null? _tl1862018642_)
                                                 (letrec ((_loop1862118645_
                                                           (lambda (_hd1861918649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _var1862518652_)
                     (if (gx#stx-pair? _hd1861918649_)
                         (let ((_e1862218655_ (gx#syntax-e _hd1861918649_)))
                           (let ((_lp-hd1862318659_ (##car _e1862218655_))
                                 (_lp-tl1862418662_ (##cdr _e1862218655_)))
                             (_loop1862118645_
                              _lp-tl1862418662_
                              (cons _lp-hd1862318659_ _var1862518652_))))
                         (let ((_var1862618665_ (reverse _var1862518652_)))
                           ((lambda (_L18669_)
                              (let ()
                                (let ((_g1868518702_
                                       (lambda (_g1868618698_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1868618698_))))
                                  (let ((_g1868419220_
                                         (lambda (_g1868618706_)
                                           (if (gx#stx-pair/null?
                                                _g1868618706_)
                                               (if (fx>= (gx#stx-length
                                                          _g1868618706_)
                                                         '0)
                                                   (let ((_g29478_
                                                          (gx#syntax-split-splice
                                                           _g1868618706_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29479_
                                                              (values-count
                                                               _g29478_)))
                                                         (if (not (fx= _g29479_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29479_)))
               (let ((_target1868818709_ (values-ref _g29478_ 0))
                     (_tl1869018712_ (values-ref _g29478_ 1)))
                 (if (gx#stx-null? _tl1869018712_)
                     (letrec ((_loop1869118715_
                               (lambda (_hd1868918719_ _var-r1869518722_)
                                 (if (gx#stx-pair? _hd1868918719_)
                                     (let ((_e1869218725_
                                            (gx#syntax-e _hd1868918719_)))
                                       (let ((_lp-hd1869318729_
                                              (##car _e1869218725_))
                                             (_lp-tl1869418732_
                                              (##cdr _e1869218725_)))
                                         (_loop1869118715_
                                          _lp-tl1869418732_
                                          (cons _lp-hd1869318729_
                                                _var-r1869518722_))))
                                     (let ((_var-r1869618735_
                                            (reverse _var-r1869518722_)))
                                       ((lambda (_L18739_)
                                          (let ()
                                            (let ((_g1875618773_
                                                   (lambda (_g1875718769_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1875718769_))))
                                              (let ((_g1875519208_
                                                     (lambda (_g1875718777_)
                                                       (if (gx#stx-pair/null?
                                                            _g1875718777_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1875718777_)
                             '0)
                       (let ((_g29480_
                              (gx#syntax-split-splice _g1875718777_ '0)))
                         (begin
                           (let ((_g29481_ (values-count _g29480_)))
                             (if (not (fx= _g29481_ 2))
                                 (error "Context expects 2 values" _g29481_)))
                           (let ((_target1875918780_ (values-ref _g29480_ 0))
                                 (_tl1876118783_ (values-ref _g29480_ 1)))
                             (if (gx#stx-null? _tl1876118783_)
                                 (letrec ((_loop1876218786_
                                           (lambda (_hd1876018790_
                                                    _init1876618793_)
                                             (if (gx#stx-pair? _hd1876018790_)
                                                 (let ((_e1876318796_
                                                        (gx#syntax-e
                                                         _hd1876018790_)))
                                                   (let ((_lp-hd1876418800_
                                                          (##car _e1876318796_))
                                                         (_lp-tl1876518803_
                                                          (##cdr _e1876318796_)))
                                                     (_loop1876218786_
                                                      _lp-tl1876518803_
                                                      (cons _lp-hd1876418800_
                                                            _init1876618793_))))
                                                 (let ((_init1876718806_
                                                        (reverse _init1876618793_)))
                                                   ((lambda (_L18810_)
                                                      (let ()
                                                        (let ((_g1882718835_
                                                               (lambda (_g1882818831_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1882818831_))))
                  (let ((_g1882619204_
                         (lambda (_g1882818839_)
                           ((lambda (_L18842_)
                              (let ()
                                (let ((_g1885518863_
                                       (lambda (_g1885618859_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1885618859_))))
                                  (let ((_g1885419200_
                                         (lambda (_g1885618867_)
                                           ((lambda (_L18870_)
                                              (let ()
                                                (let ((_g1888318891_
                                                       (lambda (_g1888418887_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1888418887_))))
                                                  (let ((_g1888219196_
                                                         (lambda (_g1888418895_)
                                                           ((lambda (_L18898_)
                                                              (let ()
                                                                (let ((_g1891118919_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1891218915_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1891218915_))))
                          (let ((_g1891019192_
                                 (lambda (_g1891218923_)
                                   ((lambda (_L18926_)
                                      (let ()
                                        (let ((_g1893918947_
                                               (lambda (_g1894018943_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1894018943_))))
                                          (let ((_g1893819188_
                                                 (lambda (_g1894018951_)
                                                   ((lambda (_L18954_)
                                                      (let ()
                                                        (let ((_g1896718975_
                                                               (lambda (_g1896818971_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1896818971_))))
                  (let ((_g1896619184_
                         (lambda (_g1896818979_)
                           ((lambda (_L18982_)
                              (let ()
                                (let ((_g1899519003_
                                       (lambda (_g1899618999_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1899618999_))))
                                  (let ((_g1899419180_
                                         (lambda (_g1899619007_)
                                           ((lambda (_L19010_)
                                              (let ()
                                                (let ((_g1902319031_
                                                       (lambda (_g1902419027_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1902419027_))))
                                                  (let ((_g1902219165_
                                                         (lambda (_g1902419035_)
                                                           ((lambda (_L19038_)
                                                              (let ()
                                                                (let ((_g1905119059_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1905219055_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1905219055_))))
                          (let ((_g1905019153_
                                 (lambda (_g1905219063_)
                                   ((lambda (_L19066_)
                                      (let ()
                                        (let ((_g1907919087_
                                               (lambda (_g1908019083_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1908019083_))))
                                          (let ((_g1907819149_
                                                 (lambda (_g1908019091_)
                                                   ((lambda (_L19094_)
                                                      (let ()
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'letrec)
                        (cons (cons (cons _L18870_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L18982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr (lambda (_g1910819119_ _g1910919122_)
                                     (cons _g1910819119_ _g1910919122_))
                                   '()
                                   _L18669_)))
                    (cons _L19010_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (cons (cons _L18926_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons (cons _L18954_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _L18982_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1911019125_
                                                        _g1911119128_)
                                                 (cons _g1911019125_
                                                       _g1911119128_))
                                               '()
                                               _L18739_))))
                          (cons _L19094_ '())))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons _L18898_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons (cons _L18982_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1911219131_
                                                        _g1911319134_)
                                                 (cons _g1911219131_
                                                       _g1911319134_))
                                               '()
                                               _L18739_)))
                                (cons (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'pair?)
                                                        (cons _L18982_ '()))
                                                  (cons (cons _L18926_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '##car)
                                  (cons _L18982_ '()))
                            (cons _L18982_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g1911419137_
                                                    _g1911519140_)
                                             (cons _g1911419137_
                                                   _g1911519140_))
                                           '()
                                           _L18739_)))))
                (cons _L19066_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              (cons (cons _L18898_
                                          (cons _L18842_
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g1911619143_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1911719146_)
                   (cons _g1911619143_ _g1911719146_))
                 '()
                 _L18810_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1908019091_))))
                                            (_g1907819149_
                                             (_generate117706_
                                              _L18954_
                                              _hd18610_
                                              _L19038_
                                              _L19066_))))))
                                    _g1905219063_))))
                            (_g1905019153_
                             (cons _L18870_
                                   (cons _L18982_
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g1915619159_
                                                           _g1915719162_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'reverse)
                        (cons _g1915619159_ '()))
                  _g1915719162_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()
                                                  _L18739_)))))))))
                    _g1902419035_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1902219165_
                                                     (cons _L18898_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##cdr)
                               (cons _L18982_ '()))
                         (begin
                           (gx#syntax-check-splice-targets _L18739_ _L18669_)
                           (foldr (lambda (_g1916819172_
                                           _g1916919175_
                                           _g1917019177_)
                                    (cons (cons (gx#datum->syntax '#f 'cons)
                                                (cons _g1916919175_
                                                      (cons _g1916819172_
                                                            '())))
                                          _g1917019177_))
                                  '()
                                  _L18739_
                                  _L18669_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g1899619007_))))
                                    (_g1899419180_
                                     (_generate117706_
                                      _L18982_
                                      _rest18611_
                                      _K18612_
                                      _E18613_))))))
                            _g1896818979_))))
                    (_g1896619184_ (gx#genident 'rest))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1894018951_))))
                                            (_g1893819188_
                                             (gx#genident 'hd))))))
                                    _g1891218923_))))
                            (_g1891019192_ (gx#genident 'splice-try))))))
                    _g1888418895_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1888219196_
                                                     (gx#genident
                                                      'splice-loop))))))
                                            _g1885618867_))))
                                    (_g1885419200_
                                     (gx#genident 'splice-rest))))))
                            _g1882818839_))))
                    (_g1882619204_ _tgt18608_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _init1876718806_))))))
                                   (_loop1876218786_ _target1875918780_ '()))
                                 (_g1875618773_ _g1875718777_)))))
                       (_g1875618773_ _g1875718777_))
                   (_g1875618773_ _g1875718777_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1875519208_
                                                 (make-list
                                                  (gx#stx-length
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g1921119214_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1921219217_)
                      (cons _g1921119214_ _g1921219217_))
                    '()
                    _L18669_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         '@list)
                                                        '())))))))
                                        _var-r1869618735_))))))
                       (_loop1869118715_ _target1868818709_ '()))
                     (_g1868518702_ _g1868618706_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1868518702_
                                                    _g1868618706_))
                                               (_g1868518702_
                                                _g1868618706_)))))
                                    (_g1868419220_
                                     (gx#gentemps
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1922319226_
                                                        _g1922419229_)
                                                 (cons _g1922319226_
                                                       _g1922419229_))
                                               '()
                                               _L18669_))))))))
                            _var1862618665_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop1862118645_
                                                    _target1861818639_
                                                    '()))
                                                 (_g1861518632_
                                                  _g1861618636_)))))
                                       (_g1861518632_ _g1861618636_))
                                   (_g1861518632_ _g1861618636_)))))
                        (_g1861419232_
                         (|gerbil/core::<match>[1]#match-pattern-vars|
                          _hd18610_))))))
                 (_generate-simple-vector17709_
                  (lambda (_tgt18450_
                           _body18452_
                           _start18453_
                           _K18454_
                           _E18455_)
                    ((letrec ((_recur18457_
                               (lambda (_rest18460_ _off18462_)
                                 (let ((_g1846518477_
                                        (lambda (_g1846618473_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1846618473_))))
                                   (let ((_g1846418488_
                                          (lambda (_g1846618481_)
                                            ((lambda () _K18454_)))))
                                     (let ((_g1846318604_
                                            (lambda (_g1846618492_)
                                              (if (gx#stx-pair? _g1846618492_)
                                                  (let ((_e1846918495_
                                                         (gx#syntax-e
                                                          _g1846618492_)))
                                                    (let ((_hd1847018499_
                                                           (##car _e1846918495_))
                                                          (_tl1847118502_
                                                           (##cdr _e1846918495_)))
                                                      ((lambda (_L18505_
                                                                _L18507_)
                                                         (let ((_g1852218541_
                                                                (lambda (_g1852318537_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1852318537_))))
                   (let ((_g1852118600_
                          (lambda (_g1852318545_)
                            (if (gx#stx-pair? _g1852318545_)
                                (let ((_e1852718548_
                                       (gx#syntax-e _g1852318545_)))
                                  (let ((_hd1852818552_ (##car _e1852718548_))
                                        (_tl1852918555_ (##cdr _e1852718548_)))
                                    (if (gx#stx-pair? _tl1852918555_)
                                        (let ((_e1853018558_
                                               (gx#syntax-e _tl1852918555_)))
                                          (let ((_hd1853118562_
                                                 (##car _e1853018558_))
                                                (_tl1853218565_
                                                 (##cdr _e1853018558_)))
                                            (if (gx#stx-pair? _tl1853218565_)
                                                (let ((_e1853318568_
                                                       (gx#syntax-e
                                                        _tl1853218565_)))
                                                  (let ((_hd1853418572_
                                                         (##car _e1853318568_))
                                                        (_tl1853518575_
                                                         (##cdr _e1853318568_)))
                                                    (if (gx#stx-null?
                                                         _tl1853518575_)
                                                        ((lambda (_L18578_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18580_
                          _L18581_)
                   (let ()
                     (cons (gx#datum->syntax '#f 'let)
                           (cons (cons (cons _L18581_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##vector-ref)
                                                         (cons _L18580_
                                                               (cons _L18578_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())
                                 (cons (_generate117706_
                                        _L18581_
                                        _L18507_
                                        (_recur18457_
                                         _L18505_
                                         (fx1+ _off18462_))
                                        _E18455_)
                                       '())))))
                 _hd1853418572_
                 _hd1853118562_
                 _hd1852818552_)
                (_g1852218541_ _g1852318545_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1852218541_
                                                 _g1852318545_))))
                                        (_g1852218541_ _g1852318545_))))
                                (_g1852218541_ _g1852318545_)))))
                     (_g1852118600_
                      (list (gx#genident 'e) _tgt18450_ _off18462_)))))
               _tl1847118502_
               _hd1847018499_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1846418488_
                                                   _g1846618492_)))))
                                       (_g1846318604_ _rest18460_)))))))
                       _recur18457_)
                     _body18452_
                     _start18453_)))
                 (_generate-list-vector17710_
                  (lambda (_tgt18360_
                           _body18362_
                           _tgt->list18363_
                           _start18364_
                           _K18365_
                           _E18366_)
                    (let ((_g1836818387_
                           (lambda (_g1836918383_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1836918383_))))
                      (let ((_g1836718446_
                             (lambda (_g1836918391_)
                               (if (gx#stx-pair? _g1836918391_)
                                   (let ((_e1837318394_
                                          (gx#syntax-e _g1836918391_)))
                                     (let ((_hd1837418398_
                                            (##car _e1837318394_))
                                           (_tl1837518401_
                                            (##cdr _e1837318394_)))
                                       (if (gx#stx-pair? _tl1837518401_)
                                           (let ((_e1837618404_
                                                  (gx#syntax-e
                                                   _tl1837518401_)))
                                             (let ((_hd1837718408_
                                                    (##car _e1837618404_))
                                                   (_tl1837818411_
                                                    (##cdr _e1837618404_)))
                                               (if (gx#stx-pair?
                                                    _tl1837818411_)
                                                   (let ((_e1837918414_
                                                          (gx#syntax-e
                                                           _tl1837818411_)))
                                                     (let ((_hd1838018418_
                                                            (##car _e1837918414_))
                                                           (_tl1838118421_
                                                            (##cdr _e1837918414_)))
                                                       (if (gx#stx-null?
                                                            _tl1838118421_)
                                                           ((lambda (_L18424_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L18426_
                             _L18427_)
                      (let ()
                        (cons (gx#datum->syntax '#f 'let)
                              (cons (cons (cons _L18427_
                                                (cons (cons _L18424_
                                                            (cons _L18426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())
                                    (cons (_generate117706_
                                           _L18427_
                                           _body18362_
                                           _K18365_
                                           _E18366_)
                                          '())))))
                    _hd1838018418_
                    _hd1837718408_
                    _hd1837418398_)
                   (_g1836818387_ _g1836918391_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1836818387_
                                                    _g1836918391_))))
                                           (_g1836818387_ _g1836918391_))))
                                   (_g1836818387_ _g1836918391_)))))
                        (_g1836718446_
                         (list (gx#genident 'e)
                               _tgt18360_
                               _tgt->list18363_))))))
                 (_generate-struct17711_
                  (lambda (_info18093_
                           _tgt18095_
                           _body18096_
                           _K18097_
                           _E18098_)
                    (let ((_rtd18100_
                           (if (|gerbil/core::<MOP>::<MOP:2>[1]#extended-struct-info?|
                                _info18093_)
                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor|
                                _info18093_)
                               '#f)))
                      (let ((_fields18110_
                             ((letrec ((_lp18103_
                                        (lambda (_rtd18106_ _k18108_)
                                          (if _rtd18106_
                                              (_lp18103_
                                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor-e|
                                                (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-super|
                                                 _rtd18106_))
                                               (fx+ (length (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-fields|
                                                             _rtd18106_))
                                                    _k18108_))
                                              _k18108_))))
                                _lp18103_)
                              _rtd18100_
                              '0)))
                        (let ((_final?18113_
                               (if _rtd18100_
                                   (assgetq 'final:
                                            (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-plist|
                                             _rtd18100_))
                                   '#f)))
                          (let ((_g1811618124_
                                 (lambda (_g1811718120_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1811718120_))))
                            (let ((_g1811518356_
                                   (lambda (_g1811718128_)
                                     ((lambda (_L18131_)
                                        (let ()
                                          (let ((_g1814618154_
                                                 (lambda (_g1814718150_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1814718150_))))
                                            (let ((_g1814518352_
                                                   (lambda (_g1814718158_)
                                                     ((lambda (_L18161_)
                                                        (let ()
                                                          (let ((_g1817418182_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1817518178_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1817518178_))))
                    (let ((_g1817318348_
                           (lambda (_g1817518186_)
                             ((lambda (_L18189_)
                                (let ()
                                  (let ()
                                    (let ((_g1820518226_
                                           (lambda (_g1820618222_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1820618222_))))
                                      (let ((_g1820418269_
                                             (lambda (_g1820618230_)
                                               (if (gx#stx-pair? _g1820618230_)
                                                   (let ((_e1821518233_
                                                          (gx#syntax-e
                                                           _g1820618230_)))
                                                     (let ((_hd1821618237_
                                                            (##car _e1821518233_))
                                                           (_tl1821718240_
                                                            (##cdr _e1821518233_)))
                                                       (if (gx#stx-datum?
                                                            _hd1821618237_)
                                                           (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1821618237_)
                               'list:)
                       (if (gx#stx-pair? _tl1821718240_)
                           (let ((_e1821818243_ (gx#syntax-e _tl1821718240_)))
                             (let ((_hd1821918247_ (##car _e1821818243_))
                                   (_tl1822018250_ (##cdr _e1821818243_)))
                               (if (gx#stx-null? _tl1822018250_)
                                   ((lambda (_L18253_)
                                      (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons _L18189_
                                                        (cons _L18161_
                                                              (cons _L18131_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (_generate-list-vector17710_
                                                         _tgt18095_
                                                         _L18253_
                                                         (gx#datum->syntax
                                                          '#f
                                                          'struct->list)
                                                         '1
                                                         _K18097_
                                                         _E18098_)
                                                        (cons _E18098_ '())))))
                                    _hd1821918247_)
                                   (_g1820518226_ _g1820618230_))))
                           (_g1820518226_ _g1820618230_))
                       (_g1820518226_ _g1820618230_))
                   (_g1820518226_ _g1820618230_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1820518226_
                                                    _g1820618230_)))))
                                        (let ((_g1820318344_
                                               (lambda (_g1820618273_)
                                                 (if (gx#stx-pair?
                                                      _g1820618273_)
                                                     (let ((_e1820818276_
                                                            (gx#syntax-e
                                                             _g1820618273_)))
                                                       (let ((_hd1820918280_
                                                              (##car _e1820818276_))
                                                             (_tl1821018283_
                                                              (##cdr _e1820818276_)))
                                                         (if (gx#stx-datum?
                                                              _hd1820918280_)
                                                             (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _hd1820918280_)
                                 'simple:)
                         (if (gx#stx-pair? _tl1821018283_)
                             (let ((_e1821118286_
                                    (gx#syntax-e _tl1821018283_)))
                               (let ((_hd1821218290_ (##car _e1821118286_))
                                     (_tl1821318293_ (##cdr _e1821118286_)))
                                 (if (gx#stx-null? _tl1821318293_)
                                     ((lambda (_L18296_)
                                        (let ((_K18309_
                                               (_generate-simple-vector17709_
                                                _tgt18095_
                                                _L18296_
                                                '1
                                                _K18097_
                                                _E18098_)))
                                          (if (if _rtd18100_
                                                  (fx<= (gx#stx-length
                                                         _L18296_)
                                                        _fields18110_)
                                                  '#f)
                                              (cons (gx#datum->syntax '#f 'if)
                                                    (cons (cons _L18189_
                                                                (cons _L18161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L18131_ '())))
                  (cons _K18309_ (cons _E18098_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g1831218320_
                                                     (lambda (_g1831318316_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1831318316_))))
                                                (let ((_g1831118340_
                                                       (lambda (_g1831318324_)
                                                         ((lambda (_L18327_)
                                                            (let ()
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'if)
                            (cons (cons (gx#datum->syntax '#f 'and)
                                        (cons (cons _L18189_
                                                    (cons _L18161_
                                                          (cons _L18131_ '())))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##fx<)
                                                          (cons _L18327_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     '##vector-length)
                                    (cons _L18131_ '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons _K18309_ (cons _E18098_ '()))))))
                  _g1831318324_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1831118340_
                                                   (gx#stx-length
                                                    _L18296_)))))))
                                      _hd1821218290_)
                                     (_g1820418269_ _g1820618273_))))
                             (_g1820418269_ _g1820618273_))
                         (_g1820418269_ _g1820618273_))
                     (_g1820418269_ _g1820618273_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1820418269_
                                                      _g1820618273_)))))
                                          (_g1820318344_ _body18096_)))))))
                              _g1817518186_))))
                      (_g1817318348_
                       (if _final?18113_
                           (gx#datum->syntax '#f 'direct-struct-instance?)
                           (gx#datum->syntax '#f 'struct-instance?)))))))
              _g1814718158_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1814518352_
                                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                                                _info18093_))))))
                                      _g1811718128_))))
                              (_g1811518356_ _tgt18095_))))))))
                 (_generate-class17712_
                  (lambda (_info17714_
                           _tgt17716_
                           _body17717_
                           _K17718_
                           _E17719_)
                    (let ((_rtd17721_
                           (if (|gerbil/core::<MOP>::<MOP:2>[1]#extended-class-info?|
                                _info17714_)
                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor|
                                _info17714_)
                               '#f)))
                      (let ((_known-slot?17723_ #!void))
                        (letrec ((_rtd-known-slot?17725_
                                  (lambda (_rtd18074_ _slot18076_)
                                    (if _rtd18074_
                                        (let ((_$e18078_
                                               (memq _slot18076_
                                                     (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-slots|
                                                      _rtd18074_))))
                                          (if _$e18078_
                                              _$e18078_
                                              (ormap (lambda (_g1808118083_)
                                                       (_rtd-known-slot?17725_
                                                        _g1808118083_
                                                        _slot18076_))
                                                     (map |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor-e|
                                                          (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-super|
                                                           _rtd18074_)))))
                                        '#f)))
                                 (_recur17726_
                                  (lambda (_klass17860_ _rest17862_)
                                    (let ((_g1786517881_
                                           (lambda (_g1786617877_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1786617877_))))
                                      (let ((_g1786417892_
                                             (lambda (_g1786617885_)
                                               ((lambda () _K17718_)))))
                                        (let ((_g1786318070_
                                               (lambda (_g1786617896_)
                                                 (if (gx#stx-pair?
                                                      _g1786617896_)
                                                     (let ((_e1787017899_
                                                            (gx#syntax-e
                                                             _g1786617896_)))
                                                       (let ((_hd1787117903_
                                                              (##car _e1787017899_))
                                                             (_tl1787217906_
                                                              (##cdr _e1787017899_)))
                                                         (if (gx#stx-pair?
                                                              _tl1787217906_)
                                                             (let ((_e1787317909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1787217906_)))
                       (let ((_hd1787417913_ (##car _e1787317909_))
                             (_tl1787517916_ (##cdr _e1787317909_)))
                         ((lambda (_L17919_ _L17921_ _L17922_)
                            (let ((_g1793817946_
                                   (lambda (_g1793917942_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1793917942_))))
                              (let ((_g1793718066_
                                     (lambda (_g1793917950_)
                                       ((lambda (_L17953_)
                                          (let ()
                                            (let ((_g1796517973_
                                                   (lambda (_g1796617969_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1796617969_))))
                                              (let ((_g1796418062_
                                                     (lambda (_g1796617977_)
                                                       ((lambda (_L17980_)
                                                          (let ()
                                                            (let ((_g1799318001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g1799417997_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1799417997_))))
                      (let ((_g1799218058_
                             (lambda (_g1799418005_)
                               ((lambda (_L18008_)
                                  (let ()
                                    (let ((_g1802118029_
                                           (lambda (_g1802218025_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1802218025_))))
                                      (let ((_g1802018054_
                                             (lambda (_g1802218033_)
                                               ((lambda (_L18036_)
                                                  (let ()
                                                    (let ((_K18049_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons (cons (cons _L18036_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##vector-ref)
                                                       (cons _L17953_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'fx1+)
                                 (cons _L18008_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons (_generate117706_
                                      _L18036_
                                      _L17921_
                                      (_recur17726_ _klass17860_ _L17919_)
                                      _E17719_)
                                     '())))))
              (let ()
                (if (_known-slot?17723_ _L17922_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _L18008_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'class-slot-offset)
                                                        (cons _L17980_
                                                              (cons _L17922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons _K18049_ '())))
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _L18008_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'class-slot-offset)
                                                        (cons _L17980_
                                                              (cons _L17922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons (cons (gx#datum->syntax '#f 'if)
                                            (cons _L18008_
                                                  (cons _K18049_
                                                        (cons _E17719_ '()))))
                                      '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1802218033_))))
                                        (_g1802018054_ (gx#genident 'e))))))
                                _g1799418005_))))
                        (_g1799218058_ (gx#genident 'slot))))))
                _g1796617977_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1796418062_
                                                 _klass17860_)))))
                                        _g1793917950_))))
                                (_g1793718066_ _tgt17716_))))
                          _tl1787517916_
                          _hd1787417913_
                          _hd1787117903_)))
                     (_g1786417892_ _g1786617896_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1786417892_
                                                      _g1786617896_)))))
                                          (_g1786318070_ _rest17862_)))))))
                          (begin
                            (set! _known-slot?17723_
                                  (if _rtd17721_
                                      (lambda (_key18087_)
                                        (let ((_slot18090_
                                               (keyword->symbol
                                                (gx#stx-e _key18087_))))
                                          (_rtd-known-slot?17725_
                                           _rtd17721_
                                           _slot18090_)))
                                      false))
                            (let ((_final?17724_
                                   (if _rtd17721_
                                       (assgetq 'final:
                                                (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-plist|
                                                 _rtd17721_))
                                       '#f)))
                              (let ((_g1772817736_
                                     (lambda (_g1772917732_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1772917732_))))
                                (let ((_g1772717856_
                                       (lambda (_g1772917740_)
                                         ((lambda (_L17743_)
                                            (let ()
                                              (let ((_g1775817766_
                                                     (lambda (_g1775917762_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1775917762_))))
                                                (let ((_g1775717852_
                                                       (lambda (_g1775917770_)
                                                         ((lambda (_L17773_)
                                                            (let ()
                                                              (let ((_g1778617794_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1778717790_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1778717790_))))
                        (let ((_g1778517848_
                               (lambda (_g1778717798_)
                                 ((lambda (_L17801_)
                                    (let ()
                                      (let ((_g1781417822_
                                             (lambda (_g1781517818_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1781517818_))))
                                        (let ((_g1781317844_
                                               (lambda (_g1781517826_)
                                                 ((lambda (_L17829_)
                                                    (let ()
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'if)
                                                              (cons (cons _L17829_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons _L17801_ (cons _L17773_ '())))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (cons _L17743_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'object-type)
                              (cons _L17773_ '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (_recur17726_
                                                     _L17743_
                                                     _body17717_)
                                                    '())))
                                  (cons _E17719_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1781517826_))))
                                          (_g1781317844_
                                           (if _final?17724_
                                               (gx#datum->syntax
                                                '#f
                                                'direct-class-instance?)
                                               (gx#datum->syntax
                                                '#f
                                                'class-instance?)))))))
                                  _g1778717798_))))
                          (_g1778517848_
                           (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                            _info17714_))))))
                  _g1775917770_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1775717852_
                                                   _tgt17716_)))))
                                          _g1772917740_))))
                                  (_g1772717856_
                                   (gx#genident 'class))))))))))))
          (_generate117706_ _tgt17701_ _ptree17702_ _K17703_ _E17704_))))
    (define |gerbil/core::<match>[1]#generate-match*|
      (lambda (_stx16698_ _tgt-lst16700_ _clauses16701_)
        (let ((_parse-body16703_
               (lambda (_hd-len17521_)
                 ((letrec ((_lp17524_
                            (lambda (_rest17527_ _r17529_)
                              (let ((_g1753217544_
                                     (lambda (_g1753317540_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1753317540_))))
                                (let ((_g1753117555_
                                       (lambda (_g1753317548_)
                                         ((lambda () _r17529_)))))
                                  (let ((_g1753017695_
                                         (lambda (_g1753317559_)
                                           (if (gx#stx-pair? _g1753317559_)
                                               (let ((_e1753617562_
                                                      (gx#syntax-e
                                                       _g1753317559_)))
                                                 (let ((_hd1753717566_
                                                        (##car _e1753617562_))
                                                       (_tl1753817569_
                                                        (##cdr _e1753617562_)))
                                                   ((lambda (_L17572_ _L17574_)
                                                      (let ((_g1759117607_
                                                             (lambda (_g1759217603_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1759217603_))))
                                                        (let ((_g1759017618_
                                                               (lambda (_g1759217611_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal match clause"
                             _stx16698_
                             _L17574_))))))
                  (let ((_g1758917659_
                         (lambda (_g1759217622_)
                           (if (gx#stx-pair? _g1759217622_)
                               (let ((_e1759917625_
                                      (gx#syntax-e _g1759217622_)))
                                 (let ((_hd1760017629_ (##car _e1759917625_))
                                       (_tl1760117632_ (##cdr _e1759917625_)))
                                   ((lambda (_L17635_ _L17637_)
                                      (if (if (gx#stx-list? _L17637_)
                                              (if (fx= (gx#stx-length _L17637_)
                                                       _hd-len17521_)
                                                  (if (gx#stx-list? _L17635_)
                                                      (not (gx#stx-null?
                                                            _L17635_))
                                                      '#f)
                                                  '#f)
                                              '#f)
                                          (_lp17524_
                                           _L17572_
                                           (cons (cons (gx#genident 'try-match)
                                                       (cons (gx#stx-map
                                                              (lambda (_g1764917651_)
                                                                (|gerbil/core::<match>[1]#parse-match-pattern|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1764917651_
                         _stx16698_))
                      _L17637_)
                     (cons (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'begin) _L17635_)
                            (let ((_$e17655_ (gx#stx-source _L17574_)))
                              (if _$e17655_
                                  _$e17655_
                                  (gx#stx-source _stx16698_))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r17529_))
                                          (_g1759017618_ _g1759217622_)))
                                    _tl1760117632_
                                    _hd1760017629_)))
                               (_g1759017618_ _g1759217622_)))))
                    (let ((_g1758817691_
                           (lambda (_g1759217663_)
                             (if (gx#stx-pair? _g1759217663_)
                                 (let ((_e1759417666_
                                        (gx#syntax-e _g1759217663_)))
                                   (let ((_hd1759517670_ (##car _e1759417666_))
                                         (_tl1759617673_
                                          (##cdr _e1759417666_)))
                                     (if (gx#identifier? _hd1759517670_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core::<match>[1]#_g29486_|
                                              _hd1759517670_)
                                             ((lambda (_L17676_)
                                                (if (if (gx#stx-list? _L17676_)
                                                        (not (gx#stx-null?
                                                              _L17676_))
                                                        '#f)
                                                    (if (gx#stx-null? _L17572_)
                                                        (cons (cons (gx#genident
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             'else)
                            (cons '#f
                                  (cons (gx#stx-wrap-source
                                         (cons (gx#datum->syntax '#f 'begin)
                                               _L17676_)
                                         (let ((_$e17687_
                                                (gx#stx-source _L17574_)))
                                           (if _$e17687_
                                               _$e17687_
                                               (gx#stx-source _stx16698_))))
                                        '())))
                      _r17529_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; misplaced else"
                 _stx16698_
                 _L17574_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1758917659_
                                                     _g1759217663_)))
                                              _tl1759617673_)
                                             (_g1758917659_ _g1759217663_))
                                         (_g1758917659_ _g1759217663_))))
                                 (_g1758917659_ _g1759217663_)))))
                      (_g1758817691_ _L17574_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1753817569_
                                                    _hd1753717566_)))
                                               (_g1753117555_
                                                _g1753317559_)))))
                                    (_g1753017695_ _rest17527_)))))))
                    _lp17524_)
                  _clauses16701_
                  '()))))
          (let ((_generate116707_
                 (lambda (_clause16709_ _body16711_ _E16712_)
                   ((letrec ((_recur16714_
                              (lambda (_rest16717_ _rest-targets16719_)
                                (let ((_g1672216734_
                                       (lambda (_g1672316730_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1672316730_))))
                                  (let ((_g1672116745_
                                         (lambda (_g1672316738_)
                                           ((lambda () _body16711_)))))
                                    (let ((_g1672017016_
                                           (lambda (_g1672316749_)
                                             (if (gx#stx-pair? _g1672316749_)
                                                 (let ((_e1672616752_
                                                        (gx#syntax-e
                                                         _g1672316749_)))
                                                   (let ((_hd1672716756_
                                                          (##car _e1672616752_))
                                                         (_tl1672816759_
                                                          (##cdr _e1672616752_)))
                                                     ((lambda (_L16762_
                                                               _L16764_)
                                                        (let ((_g1678116793_
                                                               (lambda (_g1678216789_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1678216789_))))
                  (let ((_g1678017012_
                         (lambda (_g1678216797_)
                           (if (gx#stx-pair? _g1678216797_)
                               (let ((_e1678516800_
                                      (gx#syntax-e _g1678216797_)))
                                 (let ((_hd1678616804_ (##car _e1678516800_))
                                       (_tl1678716807_ (##cdr _e1678516800_)))
                                   ((lambda (_L16810_ _L16812_)
                                      (let ((_g1682416832_
                                             (lambda (_g1682516828_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1682516828_))))
                                        (let ((_g1682317008_
                                               (lambda (_g1682516836_)
                                                 ((lambda (_L16839_)
                                                    (let ()
                                                      (let ((_g1685116868_
                                                             (lambda (_g1685216864_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1685216864_))))
                                                        (let ((_g1685017004_
                                                               (lambda (_g1685216872_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#stx-pair/null? _g1685216872_)
                             (if (fx>= (gx#stx-length _g1685216872_) '0)
                                 (let ((_g29484_
                                        (gx#syntax-split-splice
                                         _g1685216872_
                                         '0)))
                                   (begin
                                     (let ((_g29485_ (values-count _g29484_)))
                                       (if (not (fx= _g29485_ 2))
                                           (error "Context expects 2 values"
                                                  _g29485_)))
                                     (let ((_target1685416875_
                                            (values-ref _g29484_ 0))
                                           (_tl1685616878_
                                            (values-ref _g29484_ 1)))
                                       (if (gx#stx-null? _tl1685616878_)
                                           (letrec ((_loop1685716881_
                                                     (lambda (_hd1685516885_
                                                              _var1686116888_)
                                                       (if (gx#stx-pair?
                                                            _hd1685516885_)
                                                           (let ((_e1685816891_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1685516885_)))
                     (let ((_lp-hd1685916895_ (##car _e1685816891_))
                           (_lp-tl1686016898_ (##cdr _e1685816891_)))
                       (_loop1685716881_
                        _lp-tl1686016898_
                        (cons _lp-hd1685916895_ _var1686116888_))))
                   (let ((_var1686216901_ (reverse _var1686116888_)))
                     ((lambda (_L16905_)
                        (let ()
                          (let ((_g1692216930_
                                 (lambda (_g1692316926_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1692316926_))))
                            (let ((_g1692117000_
                                   (lambda (_g1692316934_)
                                     ((lambda (_L16937_)
                                        (let ()
                                          (let ((_g1695016958_
                                                 (lambda (_g1695116954_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1695116954_))))
                                            (let ((_g1694916988_
                                                   (lambda (_g1695116962_)
                                                     ((lambda (_L16965_)
                                                        (let ()
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let)
                          (cons (cons (cons _L16839_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons (begin
                                                                '#!void
                                                                (foldr (lambda (_g1697916982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1698016985_)
                                 (cons _g1697916982_ _g1698016985_))
                               '()
                               _L16905_))
                      (cons _L16937_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons _L16965_ '()))))))
              _g1695116962_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1694916988_
                                               (|gerbil/core::<match>[1]#generate-match1|
                                                _stx16698_
                                                _L16812_
                                                _L16764_
                                                (cons _L16839_
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g1699116994_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1699216997_)
                         (cons _g1699116994_ _g1699216997_))
                       '()
                       _L16905_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _E16712_))))))
                                      _g1692316934_))))
                              (_g1692117000_
                               (_recur16714_ _L16762_ _L16810_))))))
                      _var1686216901_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1685716881_
                                              _target1685416875_
                                              '()))
                                           (_g1685116868_ _g1685216872_)))))
                                 (_g1685116868_ _g1685216872_))
                             (_g1685116868_ _g1685216872_)))))
                  (_g1685017004_
                   (|gerbil/core::<match>[1]#match-pattern-vars| _L16764_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1682516836_))))
                                          (_g1682317008_ (gx#genident 'K)))))
                                    _tl1678716807_
                                    _hd1678616804_)))
                               (_g1678116793_ _g1678216797_)))))
                    (_g1678017012_ _rest-targets16719_))))
              _tl1672816759_
              _hd1672716756_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1672116745_
                                                  _g1672316749_)))))
                                      (_g1672017016_ _rest16717_)))))))
                      _recur16714_)
                    _clause16709_
                    _tgt-lst16700_))))
            (letrec ((_generate-clauses16706_
                      (lambda (_rest17020_ _E17022_)
                        (let ((_g1702617042_
                               (lambda (_g1702717038_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1702717038_))))
                          (let ((_g1702517053_
                                 (lambda (_g1702717046_)
                                   ((lambda () _E17022_)))))
                            (let ((_g1702417229_
                                   (lambda (_g1702717057_)
                                     (if (gx#stx-pair? _g1702717057_)
                                         (let ((_e1703417060_
                                                (gx#syntax-e _g1702717057_)))
                                           (let ((_hd1703517064_
                                                  (##car _e1703417060_))
                                                 (_tl1703617067_
                                                  (##cdr _e1703417060_)))
                                             ((lambda (_L17070_ _L17072_)
                                                (let ((_g1708517104_
                                                       (lambda (_g1708617100_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1708617100_))))
                                                  (let ((_g1708417225_
                                                         (lambda (_g1708617108_)
                                                           (if (gx#stx-pair?
                                                                _g1708617108_)
                                                               (let ((_e1709017111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1708617108_)))
                         (let ((_hd1709117115_ (##car _e1709017111_))
                               (_tl1709217118_ (##cdr _e1709017111_)))
                           (if (gx#stx-pair? _tl1709217118_)
                               (let ((_e1709317121_
                                      (gx#syntax-e _tl1709217118_)))
                                 (let ((_hd1709417125_ (##car _e1709317121_))
                                       (_tl1709517128_ (##cdr _e1709317121_)))
                                   (if (gx#stx-pair? _tl1709517128_)
                                       (let ((_e1709617131_
                                              (gx#syntax-e _tl1709517128_)))
                                         (let ((_hd1709717135_
                                                (##car _e1709617131_))
                                               (_tl1709817138_
                                                (##cdr _e1709617131_)))
                                           (if (gx#stx-null? _tl1709817138_)
                                               ((lambda (_L17141_
                                                         _L17143_
                                                         _L17144_)
                                                  (let ((_g1716117176_
                                                         (lambda (_g1716217172_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g1716217172_))))
                                                    (let ((_g1716017221_
                                                           (lambda (_g1716217180_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1716217180_)
                         (let ((_e1716517183_ (gx#syntax-e _g1716217180_)))
                           (let ((_hd1716617187_ (##car _e1716517183_))
                                 (_tl1716717190_ (##cdr _e1716517183_)))
                             (if (gx#stx-pair? _tl1716717190_)
                                 (let ((_e1716817193_
                                        (gx#syntax-e _tl1716717190_)))
                                   (let ((_hd1716917197_ (##car _e1716817193_))
                                         (_tl1717017200_
                                          (##cdr _e1716817193_)))
                                     (if (gx#stx-null? _tl1717017200_)
                                         ((lambda (_L17203_ _L17205_)
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L17144_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f 'lambda)
                                          (cons '() (cons _L17205_ '())))
                                    '()))
                        '())
                  (cons _L17203_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd1716917197_
                                          _hd1716617187_)
                                         (_g1716117176_ _g1716217180_))))
                                 (_g1716117176_ _g1716217180_))))
                         (_g1716117176_ _g1716217180_)))))
              (_g1716017221_
               (list (if (gx#stx-e _L17143_)
                         (_generate116707_ _L17143_ _L17141_ _E17022_)
                         _L17141_)
                     (_generate-clauses16706_
                      _L17070_
                      (cons _L17144_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1709717135_
                                                _hd1709417125_
                                                _hd1709117115_)
                                               (_g1708517104_ _g1708617108_))))
                                       (_g1708517104_ _g1708617108_))))
                               (_g1708517104_ _g1708617108_))))
                       (_g1708517104_ _g1708617108_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1708417225_ _L17072_))))
                                              _tl1703617067_
                                              _hd1703517064_)))
                                         (_g1702517053_ _g1702717057_)))))
                              (let ((_g1702317334_
                                     (lambda (_g1702717233_)
                                       (if (gx#stx-pair? _g1702717233_)
                                           (let ((_e1702917236_
                                                  (gx#syntax-e _g1702717233_)))
                                             (let ((_hd1703017240_
                                                    (##car _e1702917236_))
                                                   (_tl1703117243_
                                                    (##cdr _e1702917236_)))
                                               (if (gx#stx-null?
                                                    _tl1703117243_)
                                                   ((lambda (_L17246_)
                                                      (let ((_g1725717275_
                                                             (lambda (_g1725817271_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1725817271_))))
                                                        (let ((_g1725617330_
                                                               (lambda (_g1725817279_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#stx-pair? _g1725817279_)
                             (let ((_e1726117282_ (gx#syntax-e _g1725817279_)))
                               (let ((_hd1726217286_ (##car _e1726117282_))
                                     (_tl1726317289_ (##cdr _e1726117282_)))
                                 (if (gx#stx-pair? _tl1726317289_)
                                     (let ((_e1726417292_
                                            (gx#syntax-e _tl1726317289_)))
                                       (let ((_hd1726517296_
                                              (##car _e1726417292_))
                                             (_tl1726617299_
                                              (##cdr _e1726417292_)))
                                         (if (gx#stx-pair? _tl1726617299_)
                                             (let ((_e1726717302_
                                                    (gx#syntax-e
                                                     _tl1726617299_)))
                                               (let ((_hd1726817306_
                                                      (##car _e1726717302_))
                                                     (_tl1726917309_
                                                      (##cdr _e1726717302_)))
                                                 (if (gx#stx-null?
                                                      _tl1726917309_)
                                                     ((lambda (_L17312_
                                                               _L17314_)
                                                        (if (gx#stx-e _L17314_)
                                                            (_generate116707_
                                                             _L17314_
                                                             _L17312_
                                                             _E17022_)
                                                            _L17312_))
                                                      _hd1726817306_
                                                      _hd1726517296_)
                                                     (_g1725717275_
                                                      _g1725817279_))))
                                             (_g1725717275_ _g1725817279_))))
                                     (_g1725717275_ _g1725817279_))))
                             (_g1725717275_ _g1725817279_)))))
                  (_g1725617330_ _L17246_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1703017240_)
                                                   (_g1702417229_
                                                    _g1702717233_))))
                                           (_g1702417229_ _g1702717233_)))))
                                (_g1702317334_ _rest17020_))))))))
              (let ((_generate-body16705_
                     (lambda (_body17338_)
                       (let ((_g1734117349_
                              (lambda (_g1734217345_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1734217345_))))
                         (let ((_g1734017517_
                                (lambda (_g1734217353_)
                                  ((lambda (_L17356_)
                                     (let ()
                                       (let ((_g1736817385_
                                              (lambda (_g1736917381_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g1736917381_))))
                                         (let ((_g1736717513_
                                                (lambda (_g1736917389_)
                                                  (if (gx#stx-pair/null?
                                                       _g1736917389_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1736917389_)
                        '0)
                  (let ((_g29482_ (gx#syntax-split-splice _g1736917389_ '0)))
                    (begin
                      (let ((_g29483_ (values-count _g29482_)))
                        (if (not (fx= _g29483_ 2))
                            (error "Context expects 2 values" _g29483_)))
                      (let ((_target1737117392_ (values-ref _g29482_ 0))
                            (_tl1737317395_ (values-ref _g29482_ 1)))
                        (if (gx#stx-null? _tl1737317395_)
                            (letrec ((_loop1737417398_
                                      (lambda (_hd1737217402_
                                               _target1737817405_)
                                        (if (gx#stx-pair? _hd1737217402_)
                                            (let ((_e1737517408_
                                                   (gx#syntax-e
                                                    _hd1737217402_)))
                                              (let ((_lp-hd1737617412_
                                                     (##car _e1737517408_))
                                                    (_lp-tl1737717415_
                                                     (##cdr _e1737517408_)))
                                                (_loop1737417398_
                                                 _lp-tl1737717415_
                                                 (cons _lp-hd1737617412_
                                                       _target1737817405_))))
                                            (let ((_target1737917418_
                                                   (reverse _target1737817405_)))
                                              ((lambda (_L17422_)
                                                 (let ()
                                                   (let ((_g1743917447_
                                                          (lambda (_g1744017443_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1744017443_))))
                                                     (let ((_g1743817501_
                                                            (lambda (_g1744017451_)
                                                              ((lambda (_L17454_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((_g1746717475_
                                  (lambda (_g1746817471_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1746817471_))))
                             (let ((_g1746617497_
                                    (lambda (_g1746817479_)
                                      ((lambda (_L17482_)
                                         (let ()
                                           (let ()
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _L17356_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L17454_ '()))
                       '())
                 (cons _L17482_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _g1746817479_))))
                               (_g1746617497_
                                (_generate-clauses16706_
                                 _body17338_
                                 (cons _L17356_ '())))))))
                       _g1744017451_))))
               (_g1743817501_
                (gx#stx-wrap-source
                 (cons (gx#datum->syntax '#f 'lambda)
                       (cons '()
                             (cons (cons (gx#datum->syntax '#f 'error)
                                         (cons '"No clause matching"
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g1750417507_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1750517510_)
                  (cons _g1750417507_ _g1750517510_))
                '()
                _L17422_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '())))
                 (gx#stx-source _stx16698_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _target1737917418_))))))
                              (_loop1737417398_ _target1737117392_ '()))
                            (_g1736817385_ _g1736917389_)))))
                  (_g1736817385_ _g1736917389_))
              (_g1736817385_ _g1736917389_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1736717513_ _tgt-lst16700_)))))
                                   _g1734217353_))))
                           (_g1734017517_ (gx#genident 'E)))))))
                (_generate-body16705_
                 (_parse-body16703_ (gx#stx-length _tgt-lst16700_)))))))))
    (define |gerbil/core::<match>[1]#generate-match|
      (lambda (_stx16600_ _tgt16602_ _clauses16603_)
        (let ((_reclause16605_
               (lambda (_clause16608_)
                 (let ((_g1661316628_
                        (lambda (_g1661416624_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1661416624_))))
                   (let ((_g1661216639_
                          (lambda (_g1661416632_)
                            ((lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal match clause"
                                _stx16600_
                                _clause16608_))))))
                     (let ((_g1661116673_
                            (lambda (_g1661416643_)
                              (if (gx#stx-pair? _g1661416643_)
                                  (let ((_e1662016646_
                                         (gx#syntax-e _g1661416643_)))
                                    (let ((_hd1662116650_
                                           (##car _e1662016646_))
                                          (_tl1662216653_
                                           (##cdr _e1662016646_)))
                                      ((lambda (_L16656_ _L16658_)
                                         (gx#stx-wrap-source
                                          (cons (cons _L16658_ '()) _L16656_)
                                          (gx#stx-source
                                           (gx#datum->syntax '#f 'clause))))
                                       _tl1662216653_
                                       _hd1662116650_)))
                                  (_g1661216639_ _g1661416643_)))))
                       (let ((_g1661016694_
                              (lambda (_g1661416677_)
                                (if (gx#stx-pair? _g1661416677_)
                                    (let ((_e1661516680_
                                           (gx#syntax-e _g1661416677_)))
                                      (let ((_hd1661616684_
                                             (##car _e1661516680_))
                                            (_tl1661716687_
                                             (##cdr _e1661516680_)))
                                        (if (gx#identifier? _hd1661616684_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<match>[1]#_g29487_|
                                                 _hd1661616684_)
                                                ((lambda () _clause16608_))
                                                (_g1661116673_ _g1661416677_))
                                            (_g1661116673_ _g1661416677_))))
                                    (_g1661116673_ _g1661416677_)))))
                         (_g1661016694_ _clause16608_))))))))
          (|gerbil/core::<match>[1]#generate-match*|
           _stx16600_
           (cons _tgt16602_ '())
           (gx#stx-map _reclause16605_ _clauses16603_)))))
    (define |gerbil/core::<match>[:0:]#match|
      (lambda (_stx23578_)
        (let ((_g2358323612_
               (lambda (_g2358423608_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2358423608_))))
          (let ((_g2358223720_
                 (lambda (_g2358423616_)
                   (if (gx#stx-pair? _g2358423616_)
                       (let ((_e2360123619_ (gx#syntax-e _g2358423616_)))
                         (let ((_hd2360223623_ (##car _e2360123619_))
                               (_tl2360323626_ (##cdr _e2360123619_)))
                           (if (gx#stx-pair? _tl2360323626_)
                               (let ((_e2360423629_
                                      (gx#syntax-e _tl2360323626_)))
                                 (let ((_hd2360523633_ (##car _e2360423629_))
                                       (_tl2360623636_ (##cdr _e2360423629_)))
                                   ((lambda (_L23639_ _L23641_)
                                      (if (gx#stx-list? _L23639_)
                                          (let ((_g2365523663_
                                                 (lambda (_g2365623659_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2365623659_))))
                                            (let ((_g2365423716_
                                                   (lambda (_g2365623667_)
                                                     ((lambda (_L23670_)
                                                        (let ()
                                                          (let ((_g2368223690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2368323686_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2368323686_))))
                    (let ((_g2368123712_
                           (lambda (_g2368323694_)
                             ((lambda (_L23697_)
                                (let ()
                                  (let ()
                                    (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (cons _L23670_
                                                            (cons _L23641_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _L23697_ '()))))))
                              _g2368323694_))))
                      (_g2368123712_
                       (|gerbil/core::<match>[1]#generate-match|
                        _stx23578_
                        _L23670_
                        _L23639_))))))
              _g2365623667_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2365423716_
                                               (gx#genident _L23641_))))
                                          (_g2358323612_ _g2358423616_)))
                                    _tl2360623636_
                                    _hd2360523633_)))
                               (_g2358323612_ _g2358423616_))))
                       (_g2358323612_ _g2358423616_)))))
            (let ((_g2358123825_
                   (lambda (_g2358423724_)
                     (if (gx#stx-pair? _g2358423724_)
                         (let ((_e2359323727_ (gx#syntax-e _g2358423724_)))
                           (let ((_hd2359423731_ (##car _e2359323727_))
                                 (_tl2359523734_ (##cdr _e2359323727_)))
                             (if (gx#stx-pair? _tl2359523734_)
                                 (let ((_e2359623737_
                                        (gx#syntax-e _tl2359523734_)))
                                   (let ((_hd2359723741_ (##car _e2359623737_))
                                         (_tl2359823744_
                                          (##cdr _e2359623737_)))
                                     (if (gx#identifier? _hd2359723741_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core::<match>[1]#_g29488_|
                                              _hd2359723741_)
                                             ((lambda (_L23747_)
                                                (if (gx#stx-list? _L23747_)
                                                    (let ((_g2376023768_
                                                           (lambda (_g2376123764_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g2376123764_))))
                                                      (let ((_g2375923821_
                                                             (lambda (_g2376123772_)
                                                               ((lambda (_L23775_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let ((_g2378723795_
                                   (lambda (_g2378823791_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2378823791_))))
                              (let ((_g2378623817_
                                     (lambda (_g2378823799_)
                                       ((lambda (_L23802_)
                                          (let ()
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons _L23775_
                                                          (cons _L23802_
                                                                '()))))))
                                        _g2378823799_))))
                                (_g2378623817_
                                 (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'match)
                                        (cons _L23775_ _L23747_))
                                  (gx#stx-source _stx23578_)))))))
                        _g2376123772_))))
                (_g2375923821_ (gx#genident 'args))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2358223720_
                                                     _g2358423724_)))
                                              _tl2359823744_)
                                             (_g2358223720_ _g2358423724_))
                                         (_g2358223720_ _g2358423724_))))
                                 (_g2358223720_ _g2358423724_))))
                         (_g2358223720_ _g2358423724_)))))
              (let ((_g2358023930_
                     (lambda (_g2358423829_)
                       (if (gx#stx-pair? _g2358423829_)
                           (let ((_e2358623832_ (gx#syntax-e _g2358423829_)))
                             (let ((_hd2358723836_ (##car _e2358623832_))
                                   (_tl2358823839_ (##cdr _e2358623832_)))
                               (if (gx#stx-pair? _tl2358823839_)
                                   (let ((_e2358923842_
                                          (gx#syntax-e _tl2358823839_)))
                                     (let ((_hd2359023846_
                                            (##car _e2358923842_))
                                           (_tl2359123849_
                                            (##cdr _e2358923842_)))
                                       (if (gx#identifier? _hd2359023846_)
                                           (if (gx#free-identifier=?
                                                |gerbil/core::<match>[1]#_g29489_|
                                                _hd2359023846_)
                                               ((lambda (_L23852_)
                                                  (if (gx#stx-list? _L23852_)
                                                      (let ((_g2386523873_
                                                             (lambda (_g2386623869_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2386623869_))))
                                                        (let ((_g2386423926_
                                                               (lambda (_g2386623877_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L23880_)
                            (let ()
                              (let ((_g2389223900_
                                     (lambda (_g2389323896_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g2389323896_))))
                                (let ((_g2389123922_
                                       (lambda (_g2389323904_)
                                         ((lambda (_L23907_)
                                            (let ()
                                              (let ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L23880_ '())
                                                            (cons _L23907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g2389323904_))))
                                  (_g2389123922_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _L23880_ _L23852_))
                                    (gx#stx-source _stx23578_)))))))
                          _g2386623877_))))
                  (_g2386423926_ (gx#genident 'e))))
              (_g2358123825_ _g2358423829_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl2359123849_)
                                               (_g2358123825_ _g2358423829_))
                                           (_g2358123825_ _g2358423829_))))
                                   (_g2358123825_ _g2358423829_))))
                           (_g2358123825_ _g2358423829_)))))
                (_g2358023930_ _stx23578_)))))))
    (define |gerbil/core::<match>[:0:]#match*|
      (lambda (_stx23934_)
        (let ((_g2393723961_
               (lambda (_g2393823957_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2393823957_))))
          (let ((_g2393624173_
                 (lambda (_g2393823965_)
                   (if (gx#stx-pair? _g2393823965_)
                       (let ((_e2394123968_ (gx#syntax-e _g2393823965_)))
                         (let ((_hd2394223972_ (##car _e2394123968_))
                               (_tl2394323975_ (##cdr _e2394123968_)))
                           (if (gx#stx-pair? _tl2394323975_)
                               (let ((_e2394423978_
                                      (gx#syntax-e _tl2394323975_)))
                                 (let ((_hd2394523982_ (##car _e2394423978_))
                                       (_tl2394623985_ (##cdr _e2394423978_)))
                                   (if (gx#stx-pair/null? _hd2394523982_)
                                       (if (fx>= (gx#stx-length _hd2394523982_)
                                                 '0)
                                           (let ((_g29490_
                                                  (gx#syntax-split-splice
                                                   _hd2394523982_
                                                   '0)))
                                             (begin
                                               (let ((_g29491_
                                                      (values-count _g29490_)))
                                                 (if (not (fx= _g29491_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29491_)))
                                               (let ((_target2394723988_
                                                      (values-ref _g29490_ 0))
                                                     (_tl2394923991_
                                                      (values-ref _g29490_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl2394923991_)
                                                     (letrec ((_loop2395023994_
                                                               (lambda (_hd2394823998_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _e2395424001_)
                         (if (gx#stx-pair? _hd2394823998_)
                             (let ((_e2395124004_
                                    (gx#syntax-e _hd2394823998_)))
                               (let ((_lp-hd2395224008_ (##car _e2395124004_))
                                     (_lp-tl2395324011_ (##cdr _e2395124004_)))
                                 (_loop2395023994_
                                  _lp-tl2395324011_
                                  (cons _lp-hd2395224008_ _e2395424001_))))
                             (let ((_e2395524014_ (reverse _e2395424001_)))
                               ((lambda (_L24018_ _L24020_)
                                  (if (gx#stx-list? _L24018_)
                                      (let ((_g2403824055_
                                             (lambda (_g2403924051_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2403924051_))))
                                        (let ((_g2403724161_
                                               (lambda (_g2403924059_)
                                                 (if (gx#stx-pair/null?
                                                      _g2403924059_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2403924059_)
                                                               '0)
                                                         (let ((_g29492_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2403924059_
                         '0)))
                   (begin
                     (let ((_g29493_ (values-count _g29492_)))
                       (if (not (fx= _g29493_ 2))
                           (error "Context expects 2 values" _g29493_)))
                     (let ((_target2404124062_ (values-ref _g29492_ 0))
                           (_tl2404324065_ (values-ref _g29492_ 1)))
                       (if (gx#stx-null? _tl2404324065_)
                           (letrec ((_loop2404424068_
                                     (lambda (_hd2404224072_ _$e2404824075_)
                                       (if (gx#stx-pair? _hd2404224072_)
                                           (let ((_e2404524078_
                                                  (gx#syntax-e
                                                   _hd2404224072_)))
                                             (let ((_lp-hd2404624082_
                                                    (##car _e2404524078_))
                                                   (_lp-tl2404724085_
                                                    (##cdr _e2404524078_)))
                                               (_loop2404424068_
                                                _lp-tl2404724085_
                                                (cons _lp-hd2404624082_
                                                      _$e2404824075_))))
                                           (let ((_$e2404924088_
                                                  (reverse _$e2404824075_)))
                                             ((lambda (_L24092_)
                                                (let ()
                                                  (let ((_g2410824116_
                                                         (lambda (_g2410924112_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2410924112_))))
                                                    (let ((_g2410724149_
                                                           (lambda (_g2410924120_)
                                                             ((lambda (_L24123_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (begin
                                          (gx#syntax-check-splice-targets
                                           _L24020_
                                           _L24092_)
                                          (foldr (lambda (_g2413724141_
                                                          _g2413824144_
                                                          _g2413924146_)
                                                   (cons (cons _g2413824144_
                                                               (cons _g2413724141_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _g2413924146_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L24020_
                                                 _L24092_))
                                        (cons _L24123_ '()))))))
                      _g2410924120_))))
              (_g2410724149_
               (|gerbil/core::<match>[1]#generate-match*|
                _stx23934_
                (begin
                  '#!void
                  (foldr (lambda (_g2415224155_ _g2415324158_)
                           (cons _g2415224155_ _g2415324158_))
                         '()
                         _L24092_))
                _L24018_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _$e2404924088_))))))
                             (_loop2404424068_ _target2404124062_ '()))
                           (_g2403824055_ _g2403924059_)))))
                 (_g2403824055_ _g2403924059_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2403824055_
                                                      _g2403924059_)))))
                                          (_g2403724161_
                                           (gx#gentemps
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g2416424167_
                                                              _g2416524170_)
                                                       (cons _g2416424167_
                                                             _g2416524170_))
                                                     '()
                                                     _L24020_))))))
                                      (_g2393723961_ _g2393823965_)))
                                _tl2394623985_
                                _e2395524014_))))))
               (_loop2395023994_ _target2394723988_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2393723961_
                                                      _g2393823965_)))))
                                           (_g2393723961_ _g2393823965_))
                                       (_g2393723961_ _g2393823965_))))
                               (_g2393723961_ _g2393823965_))))
                       (_g2393723961_ _g2393823965_)))))
            (_g2393624173_ _stx23934_)))))
    (define |gerbil/core::<match>[:0:]#with|
      (lambda (_$stx24179_)
        (let ((_g2418524268_
               (lambda (_g2418624264_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2418624264_))))
          (let ((_g2418424429_
                 (lambda (_g2418624272_)
                   (if (gx#stx-pair? _g2418624272_)
                       (let ((_e2423124275_ (gx#syntax-e _g2418624272_)))
                         (let ((_hd2423224279_ (##car _e2423124275_))
                               (_tl2423324282_ (##cdr _e2423124275_)))
                           (if (gx#stx-pair? _tl2423324282_)
                               (let ((_e2423424285_
                                      (gx#syntax-e _tl2423324282_)))
                                 (let ((_hd2423524289_ (##car _e2423424285_))
                                       (_tl2423624292_ (##cdr _e2423424285_)))
                                   (if (gx#stx-pair/null? _hd2423524289_)
                                       (if (fx>= (gx#stx-length _hd2423524289_)
                                                 '0)
                                           (let ((_g29494_
                                                  (gx#syntax-split-splice
                                                   _hd2423524289_
                                                   '0)))
                                             (begin
                                               (let ((_g29495_
                                                      (values-count _g29494_)))
                                                 (if (not (fx= _g29495_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29495_)))
                                               (let ((_target2423724295_
                                                      (values-ref _g29494_ 0))
                                                     (_tl2423924298_
                                                      (values-ref _g29494_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl2423924298_)
                                                     (letrec ((_loop2424024301_
                                                               (lambda (_hd2423824305_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr2424424308_
                                _hd2424524310_)
                         (if (gx#stx-pair? _hd2423824305_)
                             (let ((_e2424124313_
                                    (gx#syntax-e _hd2423824305_)))
                               (let ((_lp-hd2424224317_ (##car _e2424124313_))
                                     (_lp-tl2424324320_ (##cdr _e2424124313_)))
                                 (if (gx#stx-pair? _lp-hd2424224317_)
                                     (let ((_e2424824323_
                                            (gx#syntax-e _lp-hd2424224317_)))
                                       (let ((_hd2424924327_
                                              (##car _e2424824323_))
                                             (_tl2425024330_
                                              (##cdr _e2424824323_)))
                                         (if (gx#stx-pair? _tl2425024330_)
                                             (let ((_e2425124333_
                                                    (gx#syntax-e
                                                     _tl2425024330_)))
                                               (let ((_hd2425224337_
                                                      (##car _e2425124333_))
                                                     (_tl2425324340_
                                                      (##cdr _e2425124333_)))
                                                 (if (gx#stx-null?
                                                      _tl2425324340_)
                                                     (_loop2424024301_
                                                      _lp-tl2424324320_
                                                      (cons _hd2425224337_
                                                            _expr2424424308_)
                                                      (cons _hd2424924327_
                                                            _hd2424524310_))
                                                     (_g2418524268_
                                                      _g2418624272_))))
                                             (_g2418524268_ _g2418624272_))))
                                     (_g2418524268_ _g2418624272_))))
                             (let ((_expr2424624343_
                                    (reverse _expr2424424308_))
                                   (_hd2424724346_ (reverse _hd2424524310_)))
                               (if (gx#stx-pair/null? _tl2423624292_)
                                   (if (fx>= (gx#stx-length _tl2423624292_) '0)
                                       (let ((_g29496_
                                              (gx#syntax-split-splice
                                               _tl2423624292_
                                               '0)))
                                         (begin
                                           (let ((_g29497_
                                                  (values-count _g29496_)))
                                             (if (not (fx= _g29497_ 2))
                                                 (error "Context expects 2 values"
                                                        _g29497_)))
                                           (let ((_target2425424349_
                                                  (values-ref _g29496_ 0))
                                                 (_tl2425624352_
                                                  (values-ref _g29496_ 1)))
                                             (if (gx#stx-null? _tl2425624352_)
                                                 (letrec ((_loop2425724355_
                                                           (lambda (_hd2425524359_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _body2426124362_)
                     (if (gx#stx-pair? _hd2425524359_)
                         (let ((_e2425824365_ (gx#syntax-e _hd2425524359_)))
                           (let ((_lp-hd2425924369_ (##car _e2425824365_))
                                 (_lp-tl2426024372_ (##cdr _e2425824365_)))
                             (_loop2425724355_
                              _lp-tl2426024372_
                              (cons _lp-hd2425924369_ _body2426124362_))))
                         (let ((_body2426224375_ (reverse _body2426124362_)))
                           ((lambda (_L24379_ _L24381_ _L24382_)
                              (cons (gx#datum->syntax '#f 'match*)
                                    (cons (begin
                                            '#!void
                                            (foldr (lambda (_g2440424411_
                                                            _g2440524414_)
                                                     (cons _g2440424411_
                                                           _g2440524414_))
                                                   '()
                                                   _L24381_))
                                          (cons (cons (begin
                                                        '#!void
                                                        (foldr (lambda (_g2440624417_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2440724420_)
                         (cons _g2440624417_ _g2440724420_))
                       '()
                       _L24382_))
              (begin
                '#!void
                (foldr (lambda (_g2440824423_ _g2440924426_)
                         (cons _g2440824423_ _g2440924426_))
                       '()
                       _L24379_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                            _body2426224375_
                            _expr2424624343_
                            _hd2424724346_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop2425724355_
                                                    _target2425424349_
                                                    '()))
                                                 (_g2418524268_
                                                  _g2418624272_)))))
                                       (_g2418524268_ _g2418624272_))
                                   (_g2418524268_ _g2418624272_)))))))
               (_loop2424024301_ _target2423724295_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2418524268_
                                                      _g2418624272_)))))
                                           (_g2418524268_ _g2418624272_))
                                       (_g2418524268_ _g2418624272_))))
                               (_g2418524268_ _g2418624272_))))
                       (_g2418524268_ _g2418624272_)))))
            (let ((_g2418324541_
                   (lambda (_g2418624433_)
                     (if (gx#stx-pair? _g2418624433_)
                         (let ((_e2420724436_ (gx#syntax-e _g2418624433_)))
                           (let ((_hd2420824440_ (##car _e2420724436_))
                                 (_tl2420924443_ (##cdr _e2420724436_)))
                             (if (gx#stx-pair? _tl2420924443_)
                                 (let ((_e2421024446_
                                        (gx#syntax-e _tl2420924443_)))
                                   (let ((_hd2421124450_ (##car _e2421024446_))
                                         (_tl2421224453_
                                          (##cdr _e2421024446_)))
                                     (if (gx#stx-pair? _hd2421124450_)
                                         (let ((_e2421324456_
                                                (gx#syntax-e _hd2421124450_)))
                                           (let ((_hd2421424460_
                                                  (##car _e2421324456_))
                                                 (_tl2421524463_
                                                  (##cdr _e2421324456_)))
                                             (if (gx#stx-pair? _tl2421524463_)
                                                 (let ((_e2421624466_
                                                        (gx#syntax-e
                                                         _tl2421524463_)))
                                                   (let ((_hd2421724470_
                                                          (##car _e2421624466_))
                                                         (_tl2421824473_
                                                          (##cdr _e2421624466_)))
                                                     (if (gx#stx-null?
                                                          _tl2421824473_)
                                                         (if (gx#stx-pair/null?
                                                              _tl2421224453_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _tl2421224453_)
                               '0)
                         (let ((_g29498_
                                (gx#syntax-split-splice _tl2421224453_ '0)))
                           (begin
                             (let ((_g29499_ (values-count _g29498_)))
                               (if (not (fx= _g29499_ 2))
                                   (error "Context expects 2 values"
                                          _g29499_)))
                             (let ((_target2421924476_ (values-ref _g29498_ 0))
                                   (_tl2422124479_ (values-ref _g29498_ 1)))
                               (if (gx#stx-null? _tl2422124479_)
                                   (letrec ((_loop2422224482_
                                             (lambda (_hd2422024486_
                                                      _body2422624489_)
                                               (if (gx#stx-pair?
                                                    _hd2422024486_)
                                                   (let ((_e2422324492_
                                                          (gx#syntax-e
                                                           _hd2422024486_)))
                                                     (let ((_lp-hd2422424496_
                                                            (##car _e2422324492_))
                                                           (_lp-tl2422524499_
                                                            (##cdr _e2422324492_)))
                                                       (_loop2422224482_
                                                        _lp-tl2422524499_
                                                        (cons _lp-hd2422424496_
                                                              _body2422624489_))))
                                                   (let ((_body2422724502_
                                                          (reverse _body2422624489_)))
                                                     ((lambda (_L24506_
                                                               _L24508_
                                                               _L24509_
                                                               _L24510_)
                                                        (if (|gerbil/core::<match>[1]#match-pattern?|
                                                             _L24509_)
                                                            (cons _L24510_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons _L24509_ (cons _L24508_ '())) '())
                                (begin
                                  '#!void
                                  (foldr (lambda (_g2453224535_ _g2453324538_)
                                           (cons _g2453224535_ _g2453324538_))
                                         '()
                                         _L24506_))))
                    (_g2418424429_ _g2418624433_)))
              _body2422724502_
              _hd2421724470_
              _hd2421424460_
              _hd2420824440_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop2422224482_ _target2421924476_ '()))
                                   (_g2418424429_ _g2418624433_)))))
                         (_g2418424429_ _g2418624433_))
                     (_g2418424429_ _g2418624433_))
                 (_g2418424429_ _g2418624433_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2418424429_
                                                  _g2418624433_))))
                                         (_g2418424429_ _g2418624433_))))
                                 (_g2418424429_ _g2418624433_))))
                         (_g2418424429_ _g2418624433_)))))
              (let ((_g2418224623_
                     (lambda (_g2418624545_)
                       (if (gx#stx-pair? _g2418624545_)
                           (let ((_e2418824548_ (gx#syntax-e _g2418624545_)))
                             (let ((_hd2418924552_ (##car _e2418824548_))
                                   (_tl2419024555_ (##cdr _e2418824548_)))
                               (if (gx#stx-pair? _tl2419024555_)
                                   (let ((_e2419124558_
                                          (gx#syntax-e _tl2419024555_)))
                                     (let ((_hd2419224562_
                                            (##car _e2419124558_))
                                           (_tl2419324565_
                                            (##cdr _e2419124558_)))
                                       (if (gx#stx-null? _hd2419224562_)
                                           (if (gx#stx-pair/null?
                                                _tl2419324565_)
                                               (if (fx>= (gx#stx-length
                                                          _tl2419324565_)
                                                         '0)
                                                   (let ((_g29500_
                                                          (gx#syntax-split-splice
                                                           _tl2419324565_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29501_
                                                              (values-count
                                                               _g29500_)))
                                                         (if (not (fx= _g29501_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29501_)))
               (let ((_target2419424568_ (values-ref _g29500_ 0))
                     (_tl2419624571_ (values-ref _g29500_ 1)))
                 (if (gx#stx-null? _tl2419624571_)
                     (letrec ((_loop2419724574_
                               (lambda (_hd2419524578_ _body2420124581_)
                                 (if (gx#stx-pair? _hd2419524578_)
                                     (let ((_e2419824584_
                                            (gx#syntax-e _hd2419524578_)))
                                       (let ((_lp-hd2419924588_
                                              (##car _e2419824584_))
                                             (_lp-tl2420024591_
                                              (##cdr _e2419824584_)))
                                         (_loop2419724574_
                                          _lp-tl2420024591_
                                          (cons _lp-hd2419924588_
                                                _body2420124581_))))
                                     (let ((_body2420224594_
                                            (reverse _body2420124581_)))
                                       ((lambda (_L24598_)
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons '()
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2461424617_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2461524620_)
                         (cons _g2461424617_ _g2461524620_))
                       '()
                       _L24598_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body2420224594_))))))
                       (_loop2419724574_ _target2419424568_ '()))
                     (_g2418324541_ _g2418624545_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2418324541_
                                                    _g2418624545_))
                                               (_g2418324541_ _g2418624545_))
                                           (_g2418324541_ _g2418624545_))))
                                   (_g2418324541_ _g2418624545_))))
                           (_g2418324541_ _g2418624545_)))))
                (_g2418224623_ _$stx24179_)))))))
    (define |gerbil/core::<match>[:0:]#with*|
      (lambda (_$stx24631_)
        (let ((_g2463624688_
               (lambda (_g2463724684_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2463724684_))))
          (let ((_g2463524771_
                 (lambda (_g2463724692_)
                   (if (gx#stx-pair? _g2463724692_)
                       (let ((_e2466824695_ (gx#syntax-e _g2463724692_)))
                         (let ((_hd2466924699_ (##car _e2466824695_))
                               (_tl2467024702_ (##cdr _e2466824695_)))
                           (if (gx#stx-pair? _tl2467024702_)
                               (let ((_e2467124705_
                                      (gx#syntax-e _tl2467024702_)))
                                 (let ((_hd2467224709_ (##car _e2467124705_))
                                       (_tl2467324712_ (##cdr _e2467124705_)))
                                   (if (gx#stx-null? _hd2467224709_)
                                       (if (gx#stx-pair/null? _tl2467324712_)
                                           (if (fx>= (gx#stx-length
                                                      _tl2467324712_)
                                                     '0)
                                               (let ((_g29502_
                                                      (gx#syntax-split-splice
                                                       _tl2467324712_
                                                       '0)))
                                                 (begin
                                                   (let ((_g29503_
                                                          (values-count
                                                           _g29502_)))
                                                     (if (not (fx= _g29503_ 2))
                                                         (error "Context expects 2 values"
                                                                _g29503_)))
                                                   (let ((_target2467424715_
                                                          (values-ref
                                                           _g29502_
                                                           0))
                                                         (_tl2467624718_
                                                          (values-ref
                                                           _g29502_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl2467624718_)
                                                         (letrec ((_loop2467724721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd2467524725_ _body2468124728_)
                             (if (gx#stx-pair? _hd2467524725_)
                                 (let ((_e2467824731_
                                        (gx#syntax-e _hd2467524725_)))
                                   (let ((_lp-hd2467924735_
                                          (##car _e2467824731_))
                                         (_lp-tl2468024738_
                                          (##cdr _e2467824731_)))
                                     (_loop2467724721_
                                      _lp-tl2468024738_
                                      (cons _lp-hd2467924735_
                                            _body2468124728_))))
                                 (let ((_body2468224741_
                                        (reverse _body2468124728_)))
                                   ((lambda (_L24745_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g2476224765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2476324768_)
                     (cons _g2476224765_ _g2476324768_))
                   '()
                   _L24745_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _body2468224741_))))))
                   (_loop2467724721_ _target2467424715_ '()))
                 (_g2463624688_ _g2463724692_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2463624688_ _g2463724692_))
                                           (_g2463624688_ _g2463724692_))
                                       (_g2463624688_ _g2463724692_))))
                               (_g2463624688_ _g2463724692_))))
                       (_g2463624688_ _g2463724692_)))))
            (let ((_g2463424897_
                   (lambda (_g2463724775_)
                     (if (gx#stx-pair? _g2463724775_)
                         (let ((_e2464324778_ (gx#syntax-e _g2463724775_)))
                           (let ((_hd2464424782_ (##car _e2464324778_))
                                 (_tl2464524785_ (##cdr _e2464324778_)))
                             (if (gx#stx-pair? _tl2464524785_)
                                 (let ((_e2464624788_
                                        (gx#syntax-e _tl2464524785_)))
                                   (let ((_hd2464724792_ (##car _e2464624788_))
                                         (_tl2464824795_
                                          (##cdr _e2464624788_)))
                                     (if (gx#stx-pair? _hd2464724792_)
                                         (let ((_e2464924798_
                                                (gx#syntax-e _hd2464724792_)))
                                           (let ((_hd2465024802_
                                                  (##car _e2464924798_))
                                                 (_tl2465124805_
                                                  (##cdr _e2464924798_)))
                                             (if (gx#stx-pair? _hd2465024802_)
                                                 (let ((_e2465224808_
                                                        (gx#syntax-e
                                                         _hd2465024802_)))
                                                   (let ((_hd2465324812_
                                                          (##car _e2465224808_))
                                                         (_tl2465424815_
                                                          (##cdr _e2465224808_)))
                                                     (if (gx#stx-pair?
                                                          _tl2465424815_)
                                                         (let ((_e2465524818_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2465424815_)))
                   (let ((_hd2465624822_ (##car _e2465524818_))
                         (_tl2465724825_ (##cdr _e2465524818_)))
                     (if (gx#stx-null? _tl2465724825_)
                         (if (gx#stx-pair/null? _tl2464824795_)
                             (if (fx>= (gx#stx-length _tl2464824795_) '0)
                                 (let ((_g29504_
                                        (gx#syntax-split-splice
                                         _tl2464824795_
                                         '0)))
                                   (begin
                                     (let ((_g29505_ (values-count _g29504_)))
                                       (if (not (fx= _g29505_ 2))
                                           (error "Context expects 2 values"
                                                  _g29505_)))
                                     (let ((_target2465824828_
                                            (values-ref _g29504_ 0))
                                           (_tl2466024831_
                                            (values-ref _g29504_ 1)))
                                       (if (gx#stx-null? _tl2466024831_)
                                           (letrec ((_loop2466124834_
                                                     (lambda (_hd2465924838_
                                                              _body2466524841_)
                                                       (if (gx#stx-pair?
                                                            _hd2465924838_)
                                                           (let ((_e2466224844_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd2465924838_)))
                     (let ((_lp-hd2466324848_ (##car _e2466224844_))
                           (_lp-tl2466424851_ (##cdr _e2466224844_)))
                       (_loop2466124834_
                        _lp-tl2466424851_
                        (cons _lp-hd2466324848_ _body2466524841_))))
                   (let ((_body2466624854_ (reverse _body2466524841_)))
                     ((lambda (_L24858_ _L24860_ _L24861_ _L24862_ _L24863_)
                        (cons (gx#datum->syntax '#f 'with)
                              (cons (cons (cons _L24862_ (cons _L24861_ '()))
                                          '())
                                    (cons (cons _L24863_
                                                (cons _L24860_
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2488824891_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2488924894_)
                         (cons _g2488824891_ _g2488924894_))
                       '()
                       _L24858_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))))
                      _body2466624854_
                      _tl2465124805_
                      _hd2465624822_
                      _hd2465324812_
                      _hd2464424782_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop2466124834_
                                              _target2465824828_
                                              '()))
                                           (_g2463524771_ _g2463724775_)))))
                                 (_g2463524771_ _g2463724775_))
                             (_g2463524771_ _g2463724775_))
                         (_g2463524771_ _g2463724775_))))
                 (_g2463524771_ _g2463724775_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2463524771_
                                                  _g2463724775_))))
                                         (_g2463524771_ _g2463724775_))))
                                 (_g2463524771_ _g2463724775_))))
                         (_g2463524771_ _g2463724775_)))))
              (_g2463424897_ _$stx24631_))))))
    (define |gerbil/core::<match>[:0:]#?|
      (lambda (_$stx24903_)
        (let ((_g2491425058_
               (lambda (_g2491525054_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2491525054_))))
          (let ((_g2491325153_
                 (lambda (_g2491525062_)
                   (if (gx#stx-pair? _g2491525062_)
                       (let ((_e2503525065_ (gx#syntax-e _g2491525062_)))
                         (let ((_hd2503625069_ (##car _e2503525065_))
                               (_tl2503725072_ (##cdr _e2503525065_)))
                           (if (gx#stx-pair? _tl2503725072_)
                               (let ((_e2503825075_
                                      (gx#syntax-e _tl2503725072_)))
                                 (let ((_hd2503925079_ (##car _e2503825075_))
                                       (_tl2504025082_ (##cdr _e2503825075_)))
                                   (if (gx#stx-pair? _tl2504025082_)
                                       (let ((_e2504125085_
                                              (gx#syntax-e _tl2504025082_)))
                                         (let ((_hd2504225089_
                                                (##car _e2504125085_))
                                               (_tl2504325092_
                                                (##cdr _e2504125085_)))
                                           (if (gx#stx-datum? _hd2504225089_)
                                               (if (equal? (gx#stx-e
                                                            _hd2504225089_)
                                                           '::)
                                                   (if (gx#stx-pair?
                                                        _tl2504325092_)
                                                       (let ((_e2504425095_
                                                              (gx#syntax-e
                                                               _tl2504325092_)))
                                                         (let ((_hd2504525099_
                                                                (##car _e2504425095_))
                                                               (_tl2504625102_
                                                                (##cdr _e2504425095_)))
                                                           (if (gx#stx-pair?
                                                                _tl2504625102_)
                                                               (let ((_e2504725105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2504625102_)))
                         (let ((_hd2504825109_ (##car _e2504725105_))
                               (_tl2504925112_ (##cdr _e2504725105_)))
                           (if (gx#identifier? _hd2504825109_)
                               (if (gx#free-identifier=?
                                    |gerbil/core::<match>[1]#_g29506_|
                                    _hd2504825109_)
                                   (if (gx#stx-pair? _tl2504925112_)
                                       (let ((_e2505025115_
                                              (gx#syntax-e _tl2504925112_)))
                                         (let ((_hd2505125119_
                                                (##car _e2505025115_))
                                               (_tl2505225122_
                                                (##cdr _e2505025115_)))
                                           (if (gx#stx-null? _tl2505225122_)
                                               ((lambda (_L25125_
                                                         _L25127_
                                                         _L25128_
                                                         _L25129_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$obj)
                            '())
                      (cons (cons (gx#datum->syntax '#f 'and)
                                  (cons (cons _L25129_
                                              (cons _L25128_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '$obj)
                                                          '())))
                                        (cons (cons _L25125_
                                                    (cons (cons _L25127_
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
                                                _hd2505125119_
                                                _hd2504525099_
                                                _hd2503925079_
                                                _hd2503625069_)
                                               (_g2491425058_ _g2491525062_))))
                                       (_g2491425058_ _g2491525062_))
                                   (_g2491425058_ _g2491525062_))
                               (_g2491425058_ _g2491525062_))))
                       (_g2491425058_ _g2491525062_))))
               (_g2491425058_ _g2491525062_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2491425058_
                                                    _g2491525062_))
                                               (_g2491425058_ _g2491525062_))))
                                       (_g2491425058_ _g2491525062_))))
                               (_g2491425058_ _g2491525062_))))
                       (_g2491425058_ _g2491525062_)))))
            (let ((_g2491225221_
                   (lambda (_g2491525157_)
                     (if (gx#stx-pair? _g2491525157_)
                         (let ((_e2501925160_ (gx#syntax-e _g2491525157_)))
                           (let ((_hd2502025164_ (##car _e2501925160_))
                                 (_tl2502125167_ (##cdr _e2501925160_)))
                             (if (gx#stx-pair? _tl2502125167_)
                                 (let ((_e2502225170_
                                        (gx#syntax-e _tl2502125167_)))
                                   (let ((_hd2502325174_ (##car _e2502225170_))
                                         (_tl2502425177_
                                          (##cdr _e2502225170_)))
                                     (if (gx#stx-pair? _tl2502425177_)
                                         (let ((_e2502525180_
                                                (gx#syntax-e _tl2502425177_)))
                                           (let ((_hd2502625184_
                                                  (##car _e2502525180_))
                                                 (_tl2502725187_
                                                  (##cdr _e2502525180_)))
                                             (if (gx#stx-datum? _hd2502625184_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2502625184_)
                                                             '::)
                                                     (if (gx#stx-pair?
                                                          _tl2502725187_)
                                                         (let ((_e2502825190_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2502725187_)))
                   (let ((_hd2502925194_ (##car _e2502825190_))
                         (_tl2503025197_ (##cdr _e2502825190_)))
                     (if (gx#stx-null? _tl2503025197_)
                         ((lambda (_L25200_ _L25202_ _L25203_)
                            (cons (gx#datum->syntax '#f 'lambda)
                                  (cons (cons (gx#datum->syntax '#f '$obj) '())
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'alet)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$val)
                        (cons (cons _L25203_
                                    (cons _L25202_
                                          (cons (gx#datum->syntax '#f '$obj)
                                                '())))
                              '()))
                  (cons (cons _L25200_ (cons (gx#datum->syntax '#f '$val) '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          _hd2502925194_
                          _hd2502325174_
                          _hd2502025164_)
                         (_g2491325153_ _g2491525157_))))
                 (_g2491325153_ _g2491525157_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2491325153_
                                                      _g2491525157_))
                                                 (_g2491325153_
                                                  _g2491525157_))))
                                         (_g2491325153_ _g2491525157_))))
                                 (_g2491325153_ _g2491525157_))))
                         (_g2491325153_ _g2491525157_)))))
              (let ((_g2491125289_
                     (lambda (_g2491525225_)
                       (if (gx#stx-pair? _g2491525225_)
                           (let ((_e2500425228_ (gx#syntax-e _g2491525225_)))
                             (let ((_hd2500525232_ (##car _e2500425228_))
                                   (_tl2500625235_ (##cdr _e2500425228_)))
                               (if (gx#stx-pair? _tl2500625235_)
                                   (let ((_e2500725238_
                                          (gx#syntax-e _tl2500625235_)))
                                     (let ((_hd2500825242_
                                            (##car _e2500725238_))
                                           (_tl2500925245_
                                            (##cdr _e2500725238_)))
                                       (if (gx#stx-pair? _tl2500925245_)
                                           (let ((_e2501025248_
                                                  (gx#syntax-e
                                                   _tl2500925245_)))
                                             (let ((_hd2501125252_
                                                    (##car _e2501025248_))
                                                   (_tl2501225255_
                                                    (##cdr _e2501025248_)))
                                               (if (gx#identifier?
                                                    _hd2501125252_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core::<match>[1]#_g29507_|
                                                        _hd2501125252_)
                                                       (if (gx#stx-pair?
                                                            _tl2501225255_)
                                                           (let ((_e2501325258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl2501225255_)))
                     (let ((_hd2501425262_ (##car _e2501325258_))
                           (_tl2501525265_ (##cdr _e2501325258_)))
                       (if (gx#stx-null? _tl2501525265_)
                           ((lambda (_L25268_ _L25270_ _L25271_)
                              (cons (gx#datum->syntax '#f 'lambda)
                                    (cons (cons (gx#datum->syntax '#f '$obj)
                                                '())
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'and)
                                                      (cons (cons _L25271_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L25270_
                                (cons (gx#datum->syntax '#f '$obj) '())))
                    (cons (cons _L25268_
                                (cons (gx#datum->syntax '#f '$obj) '()))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                            _hd2501425262_
                            _hd2500825242_
                            _hd2500525232_)
                           (_g2491225221_ _g2491525225_))))
                   (_g2491225221_ _g2491525225_))
               (_g2491225221_ _g2491525225_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2491225221_
                                                    _g2491525225_))))
                                           (_g2491225221_ _g2491525225_))))
                                   (_g2491225221_ _g2491525225_))))
                           (_g2491225221_ _g2491525225_)))))
                (let ((_g2491025331_
                       (lambda (_g2491525293_)
                         (if (gx#stx-pair? _g2491525293_)
                             (let ((_e2499525296_ (gx#syntax-e _g2491525293_)))
                               (let ((_hd2499625300_ (##car _e2499525296_))
                                     (_tl2499725303_ (##cdr _e2499525296_)))
                                 (if (gx#stx-pair? _tl2499725303_)
                                     (let ((_e2499825306_
                                            (gx#syntax-e _tl2499725303_)))
                                       (let ((_hd2499925310_
                                              (##car _e2499825306_))
                                             (_tl2500025313_
                                              (##cdr _e2499825306_)))
                                         (if (gx#stx-null? _tl2500025313_)
                                             ((lambda (_L25316_ _L25318_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '$obj)
                          '())
                    (cons (cons _L25318_
                                (cons _L25316_
                                      (cons (gx#datum->syntax '#f '$obj) '())))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd2499925310_
                                              _hd2499625300_)
                                             (_g2491125289_ _g2491525293_))))
                                     (_g2491125289_ _g2491525293_))))
                             (_g2491125289_ _g2491525293_)))))
                  (let ((_g2490925385_
                         (lambda (_g2491525335_)
                           (if (gx#stx-pair? _g2491525335_)
                               (let ((_e2498425338_
                                      (gx#syntax-e _g2491525335_)))
                                 (let ((_hd2498525342_ (##car _e2498425338_))
                                       (_tl2498625345_ (##cdr _e2498425338_)))
                                   (if (gx#stx-pair? _tl2498625345_)
                                       (let ((_e2498725348_
                                              (gx#syntax-e _tl2498625345_)))
                                         (let ((_hd2498825352_
                                                (##car _e2498725348_))
                                               (_tl2498925355_
                                                (##cdr _e2498725348_)))
                                           (if (gx#stx-pair? _tl2498925355_)
                                               (let ((_e2499025358_
                                                      (gx#syntax-e
                                                       _tl2498925355_)))
                                                 (let ((_hd2499125362_
                                                        (##car _e2499025358_))
                                                       (_tl2499225365_
                                                        (##cdr _e2499025358_)))
                                                   (if (gx#stx-null?
                                                        _tl2499225365_)
                                                       ((lambda (_L25368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L25370_)
                  (cons _L25370_ (cons _L25368_ '())))
                _hd2499125362_
                _hd2498825352_)
               (_g2491025331_ _g2491525335_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2491025331_ _g2491525335_))))
                                       (_g2491025331_ _g2491525335_))))
                               (_g2491025331_ _g2491525335_)))))
                    (let ((_g2490825465_
                           (lambda (_g2491525389_)
                             (if (gx#stx-pair? _g2491525389_)
                                 (let ((_e2496725392_
                                        (gx#syntax-e _g2491525389_)))
                                   (let ((_hd2496825396_ (##car _e2496725392_))
                                         (_tl2496925399_
                                          (##cdr _e2496725392_)))
                                     (if (gx#stx-pair? _tl2496925399_)
                                         (let ((_e2497025402_
                                                (gx#syntax-e _tl2496925399_)))
                                           (let ((_hd2497125406_
                                                  (##car _e2497025402_))
                                                 (_tl2497225409_
                                                  (##cdr _e2497025402_)))
                                             (if (gx#stx-pair? _hd2497125406_)
                                                 (let ((_e2497325412_
                                                        (gx#syntax-e
                                                         _hd2497125406_)))
                                                   (let ((_hd2497425416_
                                                          (##car _e2497325412_))
                                                         (_tl2497525419_
                                                          (##cdr _e2497325412_)))
                                                     (if (gx#identifier?
                                                          _hd2497425416_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core::<match>[1]#_g29508_|
                                                              _hd2497425416_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2497525419_)
                         (let ((_e2497625422_ (gx#syntax-e _tl2497525419_)))
                           (let ((_hd2497725426_ (##car _e2497625422_))
                                 (_tl2497825429_ (##cdr _e2497625422_)))
                             (if (gx#stx-null? _tl2497825429_)
                                 (if (gx#stx-pair? _tl2497225409_)
                                     (let ((_e2497925432_
                                            (gx#syntax-e _tl2497225409_)))
                                       (let ((_hd2498025436_
                                              (##car _e2497925432_))
                                             (_tl2498125439_
                                              (##cdr _e2497925432_)))
                                         (if (gx#stx-null? _tl2498125439_)
                                             ((lambda (_L25442_
                                                       _L25444_
                                                       _L25445_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'not)
                                                      (cons (cons _L25445_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L25444_ (cons _L25442_ '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd2498025436_
                                              _hd2497725426_
                                              _hd2496825396_)
                                             (_g2490925385_ _g2491525389_))))
                                     (_g2490925385_ _g2491525389_))
                                 (_g2490925385_ _g2491525389_))))
                         (_g2490925385_ _g2491525389_))
                     (_g2490925385_ _g2491525389_))
                 (_g2490925385_ _g2491525389_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2490925385_
                                                  _g2491525389_))))
                                         (_g2490925385_ _g2491525389_))))
                                 (_g2490925385_ _g2491525389_)))))
                      (let ((_g2490725575_
                             (lambda (_g2491525469_)
                               (if (gx#stx-pair? _g2491525469_)
                                   (let ((_e2494325472_
                                          (gx#syntax-e _g2491525469_)))
                                     (let ((_hd2494425476_
                                            (##car _e2494325472_))
                                           (_tl2494525479_
                                            (##cdr _e2494325472_)))
                                       (if (gx#stx-pair? _tl2494525479_)
                                           (let ((_e2494625482_
                                                  (gx#syntax-e
                                                   _tl2494525479_)))
                                             (let ((_hd2494725486_
                                                    (##car _e2494625482_))
                                                   (_tl2494825489_
                                                    (##cdr _e2494625482_)))
                                               (if (gx#stx-pair?
                                                    _hd2494725486_)
                                                   (let ((_e2494925492_
                                                          (gx#syntax-e
                                                           _hd2494725486_)))
                                                     (let ((_hd2495025496_
                                                            (##car _e2494925492_))
                                                           (_tl2495125499_
                                                            (##cdr _e2494925492_)))
                                                       (if (gx#identifier?
                                                            _hd2495025496_)
                                                           (if (gx#free-identifier=?
                                                                |gerbil/core::<match>[1]#_g29509_|
                                                                _hd2495025496_)
                                                               (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl2495125499_)
                           (if (fx>= (gx#stx-length _tl2495125499_) '0)
                               (let ((_g29510_
                                      (gx#syntax-split-splice
                                       _tl2495125499_
                                       '0)))
                                 (begin
                                   (let ((_g29511_ (values-count _g29510_)))
                                     (if (not (fx= _g29511_ 2))
                                         (error "Context expects 2 values"
                                                _g29511_)))
                                   (let ((_target2495225502_
                                          (values-ref _g29510_ 0))
                                         (_tl2495425505_
                                          (values-ref _g29510_ 1)))
                                     (if (gx#stx-null? _tl2495425505_)
                                         (letrec ((_loop2495525508_
                                                   (lambda (_hd2495325512_
                                                            _pred2495925515_)
                                                     (if (gx#stx-pair?
                                                          _hd2495325512_)
                                                         (let ((_e2495625518_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2495325512_)))
                   (let ((_lp-hd2495725522_ (##car _e2495625518_))
                         (_lp-tl2495825525_ (##cdr _e2495625518_)))
                     (_loop2495525508_
                      _lp-tl2495825525_
                      (cons _lp-hd2495725522_ _pred2495925515_))))
                 (let ((_pred2496025528_ (reverse _pred2495925515_)))
                   (if (gx#stx-pair? _tl2494825489_)
                       (let ((_e2496125532_ (gx#syntax-e _tl2494825489_)))
                         (let ((_hd2496225536_ (##car _e2496125532_))
                               (_tl2496325539_ (##cdr _e2496125532_)))
                           (if (gx#stx-null? _tl2496325539_)
                               ((lambda (_L25542_ _L25544_ _L25545_)
                                  (cons (gx#datum->syntax '#f 'or)
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g2556625569_
                                                          _g2556725572_)
                                                   (cons (cons _L25545_
                                                               (cons _g2556625569_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L25542_ '())))
                 _g2556725572_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L25544_))))
                                _hd2496225536_
                                _pred2496025528_
                                _hd2494425476_)
                               (_g2490825465_ _g2491525469_))))
                       (_g2490825465_ _g2491525469_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop2495525508_
                                            _target2495225502_
                                            '()))
                                         (_g2490825465_ _g2491525469_)))))
                               (_g2490825465_ _g2491525469_))
                           (_g2490825465_ _g2491525469_))
                       (_g2490825465_ _g2491525469_))
                   (_g2490825465_ _g2491525469_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2490825465_
                                                    _g2491525469_))))
                                           (_g2490825465_ _g2491525469_))))
                                   (_g2490825465_ _g2491525469_)))))
                        (let ((_g2490625685_
                               (lambda (_g2491525579_)
                                 (if (gx#stx-pair? _g2491525579_)
                                     (let ((_e2491925582_
                                            (gx#syntax-e _g2491525579_)))
                                       (let ((_hd2492025586_
                                              (##car _e2491925582_))
                                             (_tl2492125589_
                                              (##cdr _e2491925582_)))
                                         (if (gx#stx-pair? _tl2492125589_)
                                             (let ((_e2492225592_
                                                    (gx#syntax-e
                                                     _tl2492125589_)))
                                               (let ((_hd2492325596_
                                                      (##car _e2492225592_))
                                                     (_tl2492425599_
                                                      (##cdr _e2492225592_)))
                                                 (if (gx#stx-pair?
                                                      _hd2492325596_)
                                                     (let ((_e2492525602_
                                                            (gx#syntax-e
                                                             _hd2492325596_)))
                                                       (let ((_hd2492625606_
                                                              (##car _e2492525602_))
                                                             (_tl2492725609_
                                                              (##cdr _e2492525602_)))
                                                         (if (gx#identifier?
                                                              _hd2492625606_)
                                                             (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          |gerbil/core::<match>[1]#_g29512_|
                          _hd2492625606_)
                         (if (gx#stx-pair/null? _tl2492725609_)
                             (if (fx>= (gx#stx-length _tl2492725609_) '0)
                                 (let ((_g29513_
                                        (gx#syntax-split-splice
                                         _tl2492725609_
                                         '0)))
                                   (begin
                                     (let ((_g29514_ (values-count _g29513_)))
                                       (if (not (fx= _g29514_ 2))
                                           (error "Context expects 2 values"
                                                  _g29514_)))
                                     (let ((_target2492825612_
                                            (values-ref _g29513_ 0))
                                           (_tl2493025615_
                                            (values-ref _g29513_ 1)))
                                       (if (gx#stx-null? _tl2493025615_)
                                           (letrec ((_loop2493125618_
                                                     (lambda (_hd2492925622_
                                                              _pred2493525625_)
                                                       (if (gx#stx-pair?
                                                            _hd2492925622_)
                                                           (let ((_e2493225628_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd2492925622_)))
                     (let ((_lp-hd2493325632_ (##car _e2493225628_))
                           (_lp-tl2493425635_ (##cdr _e2493225628_)))
                       (_loop2493125618_
                        _lp-tl2493425635_
                        (cons _lp-hd2493325632_ _pred2493525625_))))
                   (let ((_pred2493625638_ (reverse _pred2493525625_)))
                     (if (gx#stx-pair? _tl2492425599_)
                         (let ((_e2493725642_ (gx#syntax-e _tl2492425599_)))
                           (let ((_hd2493825646_ (##car _e2493725642_))
                                 (_tl2493925649_ (##cdr _e2493725642_)))
                             (if (gx#stx-null? _tl2493925649_)
                                 ((lambda (_L25652_ _L25654_ _L25655_)
                                    (cons (gx#datum->syntax '#f 'and)
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2567625679_
                                                            _g2567725682_)
                                                     (cons (cons _L25655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _g2567625679_ (cons _L25652_ '())))
                   _g2567725682_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _L25654_))))
                                  _hd2493825646_
                                  _pred2493625638_
                                  _hd2492025586_)
                                 (_g2490725575_ _g2491525579_))))
                         (_g2490725575_ _g2491525579_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop2493125618_
                                              _target2492825612_
                                              '()))
                                           (_g2490725575_ _g2491525579_)))))
                                 (_g2490725575_ _g2491525579_))
                             (_g2490725575_ _g2491525579_))
                         (_g2490725575_ _g2491525579_))
                     (_g2490725575_ _g2491525579_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2490725575_
                                                      _g2491525579_))))
                                             (_g2490725575_ _g2491525579_))))
                                     (_g2490725575_ _g2491525579_)))))
                          (_g2490625685_ _$stx24903_))))))))))))
    (define |gerbil/core::<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx25691_)
        (let ((_g2569625730_
               (lambda (_g2569725726_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2569725726_))))
          (let ((_g2569525787_
                 (lambda (_g2569725734_)
                   (if (gx#stx-pair? _g2569725734_)
                       (let ((_e2571625737_ (gx#syntax-e _g2569725734_)))
                         (let ((_hd2571725741_ (##car _e2571625737_))
                               (_tl2571825744_ (##cdr _e2571625737_)))
                           (if (gx#stx-pair? _tl2571825744_)
                               (let ((_e2571925747_
                                      (gx#syntax-e _tl2571825744_)))
                                 (let ((_hd2572025751_ (##car _e2571925747_))
                                       (_tl2572125754_ (##cdr _e2571925747_)))
                                   (if (gx#stx-pair? _tl2572125754_)
                                       (let ((_e2572225757_
                                              (gx#syntax-e _tl2572125754_)))
                                         (let ((_hd2572325761_
                                                (##car _e2572225757_))
                                               (_tl2572425764_
                                                (##cdr _e2572225757_)))
                                           (if (gx#stx-null? _tl2572425764_)
                                               ((lambda (_L25767_
                                                         _L25769_
                                                         _L25770_)
                                                  (cons _L25770_
                                                        (cons _L25769_
                                                              (cons _L25767_
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
                                                _hd2572325761_
                                                _hd2572025751_
                                                _hd2571725741_)
                                               (_g2569625730_ _g2569725734_))))
                                       (_g2569625730_ _g2569725734_))))
                               (_g2569625730_ _g2569725734_))))
                       (_g2569625730_ _g2569725734_)))))
            (let ((_g2569425855_
                   (lambda (_g2569725791_)
                     (if (gx#stx-pair? _g2569725791_)
                         (let ((_e2570125794_ (gx#syntax-e _g2569725791_)))
                           (let ((_hd2570225798_ (##car _e2570125794_))
                                 (_tl2570325801_ (##cdr _e2570125794_)))
                             (if (gx#stx-pair? _tl2570325801_)
                                 (let ((_e2570425804_
                                        (gx#syntax-e _tl2570325801_)))
                                   (let ((_hd2570525808_ (##car _e2570425804_))
                                         (_tl2570625811_
                                          (##cdr _e2570425804_)))
                                     (if (gx#stx-pair? _tl2570625811_)
                                         (let ((_e2570725814_
                                                (gx#syntax-e _tl2570625811_)))
                                           (let ((_hd2570825818_
                                                  (##car _e2570725814_))
                                                 (_tl2570925821_
                                                  (##cdr _e2570725814_)))
                                             (if (gx#stx-pair? _tl2570925821_)
                                                 (let ((_e2571025824_
                                                        (gx#syntax-e
                                                         _tl2570925821_)))
                                                   (let ((_hd2571125828_
                                                          (##car _e2571025824_))
                                                         (_tl2571225831_
                                                          (##cdr _e2571025824_)))
                                                     (if (gx#stx-null?
                                                          _tl2571225831_)
                                                         ((lambda (_L25834_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L25836_
                           _L25837_)
                    (if (gx#identifier? _L25837_)
                        (cons (gx#datum->syntax '#f 'defsyntax)
                              (cons _L25837_
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'make-match-macro)
                                                (cons 'macro:
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let)
                          (cons (cons (cons (gx#datum->syntax '#f '$match-e)
                                            (cons _L25836_ '()))
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '$macro-e)
                                                  (cons _L25834_ '()))
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
                        (_g2569525787_ _g2569725791_)))
                  _hd2571125828_
                  _hd2570825818_
                  _hd2570525808_)
                 (_g2569525787_ _g2569725791_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2569525787_
                                                  _g2569725791_))))
                                         (_g2569525787_ _g2569725791_))))
                                 (_g2569525787_ _g2569725791_))))
                         (_g2569525787_ _g2569725791_)))))
              (_g2569425855_ _$stx25691_))))))
    (define |gerbil/core::<match>[:0:]#defrules-for-match|
      (lambda (_$stx25859_)
        (let ((_g2586325878_
               (lambda (_g2586425874_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2586425874_))))
          (let ((_g2586225921_
                 (lambda (_g2586425882_)
                   (if (gx#stx-pair? _g2586425882_)
                       (let ((_e2586725885_ (gx#syntax-e _g2586425882_)))
                         (let ((_hd2586825889_ (##car _e2586725885_))
                               (_tl2586925892_ (##cdr _e2586725885_)))
                           (if (gx#stx-pair? _tl2586925892_)
                               (let ((_e2587025895_
                                      (gx#syntax-e _tl2586925892_)))
                                 (let ((_hd2587125899_ (##car _e2587025895_))
                                       (_tl2587225902_ (##cdr _e2587025895_)))
                                   ((lambda (_L25905_ _L25907_)
                                      (cons (gx#datum->syntax
                                             '#f
                                             'defsyntax-for-match)
                                            (cons _L25907_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'syntax-rules)
                                                              _L25905_)
                                                        '()))))
                                    _tl2587225902_
                                    _hd2587125899_)))
                               (_g2586325878_ _g2586425882_))))
                       (_g2586325878_ _g2586425882_)))))
            (_g2586225921_ _$stx25859_)))))))
