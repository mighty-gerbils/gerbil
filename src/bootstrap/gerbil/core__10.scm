(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<match>[1]#_g28563_|
    (gx#core-quote-syntax 'quasiquote))
  (define |gerbil/core::<match>[1]#_g28564_| (gx#core-quote-syntax 'quote))
  (define |gerbil/core::<match>[1]#_g28567_| (gx#core-quote-syntax 'vector))
  (define |gerbil/core::<match>[1]#_g28568_| (gx#core-quote-syntax 'values))
  (define |gerbil/core::<match>[1]#_g28569_| (gx#core-quote-syntax 'values))
  (define |gerbil/core::<match>[1]#_g28570_| (gx#core-quote-syntax 'box))
  (define |gerbil/core::<match>[1]#_g28571_| (gx#core-quote-syntax '@list))
  (define |gerbil/core::<match>[1]#_g28572_| (gx#core-quote-syntax 'cons*))
  (define |gerbil/core::<match>[1]#_g28573_| (gx#core-quote-syntax 'cons))
  (define |gerbil/core::<match>[1]#_g28574_| (gx#core-quote-syntax 'not))
  (define |gerbil/core::<match>[1]#_g28575_| (gx#core-quote-syntax 'or))
  (define |gerbil/core::<match>[1]#_g28576_| (gx#core-quote-syntax 'and))
  (define |gerbil/core::<match>[1]#_g28577_| (gx#core-quote-syntax '?))
  (define |gerbil/core::<match>[1]#_g28578_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g28579_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g28592_| (gx#core-quote-syntax 'else))
  (define |gerbil/core::<match>[1]#_g28593_| (gx#core-quote-syntax 'else))
  (define |gerbil/core::<match>[1]#_g28594_| (gx#core-quote-syntax '<...>))
  (define |gerbil/core::<match>[1]#_g28595_| (gx#core-quote-syntax '<>))
  (define |gerbil/core::<match>[1]#_g28612_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g28613_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g28614_| (gx#core-quote-syntax 'not))
  (define |gerbil/core::<match>[1]#_g28615_| (gx#core-quote-syntax 'or))
  (define |gerbil/core::<match>[1]#_g28618_| (gx#core-quote-syntax 'and))
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
      (lambda _$args23545_
        (apply make-class-instance
               |gerbil/core::<match>[1]#match-macro::t|
               _$args23545_)))
    (define |gerbil/core::<match>[1]#syntax-local-match-macro?|
      (lambda (_stx23542_)
        (if (gx#identifier? _stx23542_)
            (|gerbil/core::<match>[1]#match-macro?|
             (gx#syntax-local-value _stx23542_ false))
            '#f)))
    (define |gerbil/core::<match>[1]#parse-match-pattern|
      (let ((_opt-lambda2192423528_
             (lambda (_stx21926_ _match-stx21928_)
               (let ((_parse-qq21936_
                      (lambda (_hd21942_)
                        (let ((_g2194421951_
                               (lambda (_g2194521947_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2194521947_))))
                          (_g2194421951_ _hd21942_)))))
                 (let ((_parse-error21937_
                        (lambda (_hd21939_)
                          (apply gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; illegal pattern"
                                 (if _match-stx21928_
                                     (cons _match-stx21928_
                                           (cons _stx21926_
                                                 (cons _hd21939_ '())))
                                     (cons _stx21926_
                                           (cons _hd21939_ '())))))))
                   (letrec ((_parse121930_
                             (lambda (_hd22277_)
                               (let ((_g2230222433_
                                      (lambda (_g2230322429_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g2230322429_))))
                                 (let ((_g2230122444_
                                        (lambda (_g2230322437_)
                                          ((lambda ()
                                             (_parse-error21937_
                                              _hd22277_))))))
                                   (let ((_g2230022462_
                                          (lambda (_g2230322448_)
                                            ((lambda (_L22451_)
                                               (if (gx#stx-datum? _L22451_)
                                                   (cons 'datum:
                                                         (cons (gx#stx-e
                                                                _L22451_)
                                                               '()))
                                                   (_g2230122444_
                                                    _g2230322448_)))
                                             _g2230322448_))))
                                     (let ((_g2229922478_
                                            (lambda (_g2230322466_)
                                              ((lambda (_L22469_)
                                                 (if (if (gx#identifier?
                                                          _L22469_)
                                                         (not (gx#ellipsis?
                                                               _L22469_))
                                                         '#f)
                                                     (cons 'var:
                                                           (cons _L22469_ '()))
                                                     (_g2230022462_
                                                      _g2230322466_)))
                                               _g2230322466_))))
                                       (let ((_g2229822494_
                                              (lambda (_g2230322482_)
                                                ((lambda (_L22485_)
                                                   (if (gx#underscore?
                                                        _L22485_)
                                                       (cons 'any: '())
                                                       (_g2229922478_
                                                        _g2230322482_)))
                                                 _g2230322482_))))
                                         (let ((_g2229722526_
                                                (lambda (_g2230322498_)
                                                  (if (gx#stx-pair?
                                                       _g2230322498_)
                                                      (let ((_e2242222501_
                                                             (gx#syntax-e
                                                              _g2230322498_)))
                                                        (let ((_hd2242322505_
                                                               (##car _e2242222501_))
                                                              (_tl2242422508_
                                                               (##cdr _e2242222501_)))
                                                          ((lambda (_L22511_)
                                                             (if (|gerbil/core::<match>[1]#syntax-local-match-macro?|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L22511_)
                         (_parse121930_
                          (gx#core-apply-expander
                           (gx#syntax-local-e _L22511_)
                           (gx#stx-wrap-source
                            (cons 'match: _hd22277_)
                            (let ((_$e22522_ (gx#stx-source _hd22277_)))
                              (if _$e22522_
                                  _$e22522_
                                  (gx#stx-source _stx21926_))))))
                         (_g2229822494_ _g2230322498_)))
                   _hd2242322505_)))
              (_g2229822494_ _g2230322498_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_g2229622566_
                                                  (lambda (_g2230322530_)
                                                    (if (gx#stx-pair?
                                                         _g2230322530_)
                                                        (let ((_e2241522533_
                                                               (gx#syntax-e
                                                                _g2230322530_)))
                                                          (let ((_hd2241622537_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2241522533_))
                        (_tl2241722540_ (##cdr _e2241522533_)))
                    (if (gx#identifier? _hd2241622537_)
                        (if (gx#free-identifier=?
                             |gerbil/core::<match>[1]#_g28563_|
                             _hd2241622537_)
                            (if (gx#stx-pair? _tl2241722540_)
                                (let ((_e2241822543_
                                       (gx#syntax-e _tl2241722540_)))
                                  (let ((_hd2241922547_ (##car _e2241822543_))
                                        (_tl2242022550_ (##cdr _e2241822543_)))
                                    (if (gx#stx-null? _tl2242022550_)
                                        ((lambda (_L22553_)
                                           (_parse-qq21936_ _L22553_))
                                         _hd2241922547_)
                                        (_g2229722526_ _g2230322530_))))
                                (_g2229722526_ _g2230322530_))
                            (_g2229722526_ _g2230322530_))
                        (_g2229722526_ _g2230322530_))))
                (_g2229722526_ _g2230322530_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_g2229522606_
                                                    (lambda (_g2230322570_)
                                                      (if (gx#stx-pair?
                                                           _g2230322570_)
                                                          (let ((_e2240822573_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _g2230322570_)))
                    (let ((_hd2240922577_ (##car _e2240822573_))
                          (_tl2241022580_ (##cdr _e2240822573_)))
                      (if (gx#identifier? _hd2240922577_)
                          (if (gx#free-identifier=?
                               |gerbil/core::<match>[1]#_g28564_|
                               _hd2240922577_)
                              (if (gx#stx-pair? _tl2241022580_)
                                  (let ((_e2241122583_
                                         (gx#syntax-e _tl2241022580_)))
                                    (let ((_hd2241222587_
                                           (##car _e2241122583_))
                                          (_tl2241322590_
                                           (##cdr _e2241122583_)))
                                      (if (gx#stx-null? _tl2241322590_)
                                          ((lambda (_L22593_)
                                             (cons 'datum:
                                                   (cons (gx#stx-e _L22593_)
                                                         '())))
                                           _hd2241222587_)
                                          (_g2229622566_ _g2230322570_))))
                                  (_g2229622566_ _g2230322570_))
                              (_g2229622566_ _g2230322570_))
                          (_g2229622566_ _g2230322570_))))
                  (_g2229622566_ _g2230322570_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_g2229422656_
                                                      (lambda (_g2230322610_)
                                                        (if (gx#stx-pair?
                                                             _g2230322610_)
                                                            (let ((_e2240122613_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g2230322610_)))
                      (let ((_hd2240222617_ (##car _e2240122613_))
                            (_tl2240322620_ (##cdr _e2240122613_)))
                        (if (gx#stx-pair? _tl2240322620_)
                            (let ((_e2240422623_ (gx#syntax-e _tl2240322620_)))
                              (let ((_hd2240522627_ (##car _e2240422623_))
                                    (_tl2240622630_ (##cdr _e2240422623_)))
                                (if (gx#stx-null? _tl2240622630_)
                                    ((lambda (_L22633_ _L22635_)
                                       (if (if (gx#identifier? _L22635_)
                                               (let ((_$e22648_
                                                      (gx#free-identifier=?
                                                       _L22635_
                                                       (gx#datum->syntax
                                                        '#f
                                                        'eq?))))
                                                 (if _$e22648_
                                                     _$e22648_
                                                     (let ((_$e22652_
                                                            (gx#free-identifier=?
                                                             _L22635_
                                                             (gx#datum->syntax
                                                              '#f
                                                              'eqv?))))
                                                       (if _$e22652_
                                                           _$e22652_
                                                           (gx#free-identifier=?
                                                            _L22635_
                                                            (gx#datum->syntax
                                                             '#f
                                                             'equal?))))))
                                               '#f)
                                           (cons '?:
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'cut)
                                                             (cons _L22635_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f '<>)
                                 (cons _L22633_ '()))))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g2229522606_ _g2230322610_)))
                                     _hd2240522627_
                                     _hd2240222617_)
                                    (_g2229522606_ _g2230322610_))))
                            (_g2229522606_ _g2230322610_))))
                    (_g2229522606_ _g2230322610_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_g2229322686_
                                                        (lambda (_g2230322660_)
                                                          (if (gx#stx-pair?
                                                               _g2230322660_)
                                                              (let ((_e2239622663_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _g2230322660_)))
                        (let ((_hd2239722667_ (##car _e2239622663_))
                              (_tl2239822670_ (##cdr _e2239622663_)))
                          ((lambda (_L22673_ _L22675_)
                             (if (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-class-info?|
                                  _L22675_)
                                 (cons 'class:
                                       (cons (gx#syntax-local-value _L22675_)
                                             (cons (_parse-class-body21935_
                                                    _L22673_)
                                                   '())))
                                 (_g2229422656_ _g2230322660_)))
                           _tl2239822670_
                           _hd2239722667_)))
                      (_g2229422656_ _g2230322660_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_g2229222716_
                                                          (lambda (_g2230322690_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2230322690_)
                        (let ((_e2239122693_ (gx#syntax-e _g2230322690_)))
                          (let ((_hd2239222697_ (##car _e2239122693_))
                                (_tl2239322700_ (##cdr _e2239122693_)))
                            ((lambda (_L22703_ _L22705_)
                               (if (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-struct-info?|
                                    _L22705_)
                                   (cons 'struct:
                                         (cons (gx#syntax-local-value _L22705_)
                                               (cons (_parse-vector21933_
                                                      _L22703_)
                                                     '())))
                                   (_g2229322686_ _g2230322690_)))
                             _tl2239322700_
                             _hd2239222697_)))
                        (_g2229322686_ _g2230322690_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_g2229122779_
                                                            (lambda (_g2230322720_)
                                                              (if (gx#stx-vector?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2230322720_)
                          (let ((_e2237922723_
                                 (vector->list (gx#syntax-e _g2230322720_))))
                            (if (gx#stx-pair/null? _e2237922723_)
                                (if (fx>= (gx#stx-length _e2237922723_) '0)
                                    (let ((_g28565_
                                           (gx#syntax-split-splice
                                            _e2237922723_
                                            '0)))
                                      (begin
                                        (let ((_g28566_
                                               (values-count _g28565_)))
                                          (if (not (fx= _g28566_ 2))
                                              (error "Context expects 2 values"
                                                     _g28566_)))
                                        (let ((_target2238022727_
                                               (values-ref _g28565_ 0))
                                              (_tl2238222730_
                                               (values-ref _g28565_ 1)))
                                          (if (gx#stx-null? _tl2238222730_)
                                              (letrec ((_loop2238322733_
                                                        (lambda (_hd2238122737_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body2238722740_)
                  (if (gx#stx-pair? _hd2238122737_)
                      (let ((_e2238422743_ (gx#syntax-e _hd2238122737_)))
                        (let ((_lp-hd2238522747_ (##car _e2238422743_))
                              (_lp-tl2238622750_ (##cdr _e2238422743_)))
                          (_loop2238322733_
                           _lp-tl2238622750_
                           (cons _lp-hd2238522747_ _body2238722740_))))
                      (let ((_body2238822753_ (reverse _body2238722740_)))
                        ((lambda (_L22757_)
                           (cons 'vector:
                                 (cons (_parse-vector21933_
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g2277022773_
                                                          _g2277122776_)
                                                   (cons _g2277022773_
                                                         _g2277122776_))
                                                 '()
                                                 _L22757_)))
                                       '())))
                         _body2238822753_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop2238322733_
                                                 _target2238022727_
                                                 '()))
                                              (_g2229222716_ _g2230322720_)))))
                                    (_g2229222716_ _g2230322720_))
                                (_g2229222716_ _g2230322720_)))
                          (_g2229222716_ _g2230322720_)))))
               (let ((_g2229022807_
                      (lambda (_g2230322783_)
                        (if (gx#stx-pair? _g2230322783_)
                            (let ((_e2237522786_ (gx#syntax-e _g2230322783_)))
                              (let ((_hd2237622790_ (##car _e2237522786_))
                                    (_tl2237722793_ (##cdr _e2237522786_)))
                                (if (gx#identifier? _hd2237622790_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core::<match>[1]#_g28567_|
                                         _hd2237622790_)
                                        ((lambda (_L22796_)
                                           (cons 'vector:
                                                 (cons (_parse-vector21933_
                                                        _L22796_)
                                                       '())))
                                         _tl2237722793_)
                                        (_g2229122779_ _g2230322783_))
                                    (_g2229122779_ _g2230322783_))))
                            (_g2229122779_ _g2230322783_)))))
                 (let ((_g2228922835_
                        (lambda (_g2230322811_)
                          (if (gx#stx-pair? _g2230322811_)
                              (let ((_e2237122814_
                                     (gx#syntax-e _g2230322811_)))
                                (let ((_hd2237222818_ (##car _e2237122814_))
                                      (_tl2237322821_ (##cdr _e2237122814_)))
                                  (if (gx#identifier? _hd2237222818_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core::<match>[1]#_g28568_|
                                           _hd2237222818_)
                                          ((lambda (_L22824_)
                                             (cons 'values:
                                                   (cons (_parse-vector21933_
                                                          _L22824_)
                                                         '())))
                                           _tl2237322821_)
                                          (_g2229022807_ _g2230322811_))
                                      (_g2229022807_ _g2230322811_))))
                              (_g2229022807_ _g2230322811_)))))
                   (let ((_g2228822875_
                          (lambda (_g2230322839_)
                            (if (gx#stx-pair? _g2230322839_)
                                (let ((_e2236422842_
                                       (gx#syntax-e _g2230322839_)))
                                  (let ((_hd2236522846_ (##car _e2236422842_))
                                        (_tl2236622849_ (##cdr _e2236422842_)))
                                    (if (gx#identifier? _hd2236522846_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core::<match>[1]#_g28569_|
                                             _hd2236522846_)
                                            (if (gx#stx-pair? _tl2236622849_)
                                                (let ((_e2236722852_
                                                       (gx#syntax-e
                                                        _tl2236622849_)))
                                                  (let ((_hd2236822856_
                                                         (##car _e2236722852_))
                                                        (_tl2236922859_
                                                         (##cdr _e2236722852_)))
                                                    (if (gx#stx-null?
                                                         _tl2236922859_)
                                                        ((lambda (_L22862_)
                                                           (_parse121930_
                                                            _L22862_))
                                                         _hd2236822856_)
                                                        (_g2228922835_
                                                         _g2230322839_))))
                                                (_g2228922835_ _g2230322839_))
                                            (_g2228922835_ _g2230322839_))
                                        (_g2228922835_ _g2230322839_))))
                                (_g2228922835_ _g2230322839_)))))
                     (let ((_g2228722896_
                            (lambda (_g2230322879_)
                              (if (gx#stx-box? _g2230322879_)
                                  (let ((_e2236222882_
                                         (unbox (gx#syntax-e _g2230322879_))))
                                    ((lambda (_L22886_)
                                       (cons 'box:
                                             (cons (_parse121930_ _L22886_)
                                                   '())))
                                     _e2236222882_))
                                  (_g2228822875_ _g2230322879_)))))
                       (let ((_g2228622936_
                              (lambda (_g2230322900_)
                                (if (gx#stx-pair? _g2230322900_)
                                    (let ((_e2235522903_
                                           (gx#syntax-e _g2230322900_)))
                                      (let ((_hd2235622907_
                                             (##car _e2235522903_))
                                            (_tl2235722910_
                                             (##cdr _e2235522903_)))
                                        (if (gx#identifier? _hd2235622907_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<match>[1]#_g28570_|
                                                 _hd2235622907_)
                                                (if (gx#stx-pair?
                                                     _tl2235722910_)
                                                    (let ((_e2235822913_
                                                           (gx#syntax-e
                                                            _tl2235722910_)))
                                                      (let ((_hd2235922917_
                                                             (##car _e2235822913_))
                                                            (_tl2236022920_
                                                             (##cdr _e2235822913_)))
                                                        (if (gx#stx-null?
                                                             _tl2236022920_)
                                                            ((lambda (_L22923_)
                                                               (cons 'box:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (_parse121930_ _L22923_) '())))
                     _hd2235922917_)
                    (_g2228722896_ _g2230322900_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2228722896_
                                                     _g2230322900_))
                                                (_g2228722896_ _g2230322900_))
                                            (_g2228722896_ _g2230322900_))))
                                    (_g2228722896_ _g2230322900_)))))
                         (let ((_g2228522964_
                                (lambda (_g2230322940_)
                                  (if (gx#stx-pair? _g2230322940_)
                                      (let ((_e2235122943_
                                             (gx#syntax-e _g2230322940_)))
                                        (let ((_hd2235222947_
                                               (##car _e2235122943_))
                                              (_tl2235322950_
                                               (##cdr _e2235122943_)))
                                          (if (gx#identifier? _hd2235222947_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core::<match>[1]#_g28571_|
                                                   _hd2235222947_)
                                                  ((lambda (_L22953_)
                                                     (_parse-list21932_
                                                      _L22953_))
                                                   _tl2235322950_)
                                                  (_g2228622936_
                                                   _g2230322940_))
                                              (_g2228622936_ _g2230322940_))))
                                      (_g2228622936_ _g2230322940_)))))
                           (let ((_g2228423020_
                                  (lambda (_g2230322968_)
                                    (if (gx#stx-pair? _g2230322968_)
                                        (let ((_e2234122971_
                                               (gx#syntax-e _g2230322968_)))
                                          (let ((_hd2234222975_
                                                 (##car _e2234122971_))
                                                (_tl2234322978_
                                                 (##cdr _e2234122971_)))
                                            (if (gx#identifier? _hd2234222975_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core::<match>[1]#_g28572_|
                                                     _hd2234222975_)
                                                    (if (gx#stx-pair?
                                                         _tl2234322978_)
                                                        (let ((_e2234422981_
                                                               (gx#syntax-e
                                                                _tl2234322978_)))
                                                          (let ((_hd2234522985_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2234422981_))
                        (_tl2234622988_ (##cdr _e2234422981_)))
                    (if (gx#stx-pair? _tl2234622988_)
                        (let ((_e2234722991_ (gx#syntax-e _tl2234622988_)))
                          (let ((_hd2234822995_ (##car _e2234722991_))
                                (_tl2234922998_ (##cdr _e2234722991_)))
                            ((lambda (_L23001_ _L23003_ _L23004_)
                               (if (gx#stx-null? _L23001_)
                                   (cons 'cons:
                                         (cons (_parse121930_ _L23004_)
                                               (cons (_parse121930_ _L23003_)
                                                     '())))
                                   (cons 'cons:
                                         (cons (_parse121930_ _L23004_)
                                               (cons (_parse121930_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons*)
                                                            (cons _L23003_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L23001_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                             _tl2234922998_
                             _hd2234822995_
                             _hd2234522985_)))
                        (_g2228522964_ _g2230322968_))))
                (_g2228522964_ _g2230322968_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2228522964_
                                                     _g2230322968_))
                                                (_g2228522964_
                                                 _g2230322968_))))
                                        (_g2228522964_ _g2230322968_)))))
                             (let ((_g2228323074_
                                    (lambda (_g2230323024_)
                                      (if (gx#stx-pair? _g2230323024_)
                                          (let ((_e2232923027_
                                                 (gx#syntax-e _g2230323024_)))
                                            (let ((_hd2233023031_
                                                   (##car _e2232923027_))
                                                  (_tl2233123034_
                                                   (##cdr _e2232923027_)))
                                              (if (gx#identifier?
                                                   _hd2233023031_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core::<match>[1]#_g28573_|
                                                       _hd2233023031_)
                                                      (if (gx#stx-pair?
                                                           _tl2233123034_)
                                                          (let ((_e2233223037_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2233123034_)))
                    (let ((_hd2233323041_ (##car _e2233223037_))
                          (_tl2233423044_ (##cdr _e2233223037_)))
                      (if (gx#stx-pair? _tl2233423044_)
                          (let ((_e2233523047_ (gx#syntax-e _tl2233423044_)))
                            (let ((_hd2233623051_ (##car _e2233523047_))
                                  (_tl2233723054_ (##cdr _e2233523047_)))
                              (if (gx#stx-null? _tl2233723054_)
                                  ((lambda (_L23057_ _L23059_)
                                     (cons 'cons:
                                           (cons (_parse121930_ _L23059_)
                                                 (cons (_parse121930_ _L23057_)
                                                       '()))))
                                   _hd2233623051_
                                   _hd2233323041_)
                                  (_g2228423020_ _g2230323024_))))
                          (_g2228423020_ _g2230323024_))))
                  (_g2228423020_ _g2230323024_))
              (_g2228423020_ _g2230323024_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2228423020_
                                                   _g2230323024_))))
                                          (_g2228423020_ _g2230323024_)))))
                               (let ((_g2228223114_
                                      (lambda (_g2230323078_)
                                        (if (gx#stx-pair? _g2230323078_)
                                            (let ((_e2232123081_
                                                   (gx#syntax-e
                                                    _g2230323078_)))
                                              (let ((_hd2232223085_
                                                     (##car _e2232123081_))
                                                    (_tl2232323088_
                                                     (##cdr _e2232123081_)))
                                                (if (gx#identifier?
                                                     _hd2232223085_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core::<match>[1]#_g28574_|
                                                         _hd2232223085_)
                                                        (if (gx#stx-pair?
                                                             _tl2232323088_)
                                                            (let ((_e2232423091_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl2232323088_)))
                      (let ((_hd2232523095_ (##car _e2232423091_))
                            (_tl2232623098_ (##cdr _e2232423091_)))
                        (if (gx#stx-null? _tl2232623098_)
                            ((lambda (_L23101_)
                               (cons 'not:
                                     (cons (_parse121930_ _L23101_) '())))
                             _hd2232523095_)
                            (_g2228323074_ _g2230323078_))))
                    (_g2228323074_ _g2230323078_))
                (_g2228323074_ _g2230323078_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2228323074_
                                                     _g2230323078_))))
                                            (_g2228323074_ _g2230323078_)))))
                                 (let ((_g2228123199_
                                        (lambda (_g2230323118_)
                                          (if (gx#stx-pair? _g2230323118_)
                                              (let ((_e2231723121_
                                                     (gx#syntax-e
                                                      _g2230323118_)))
                                                (let ((_hd2231823125_
                                                       (##car _e2231723121_))
                                                      (_tl2231923128_
                                                       (##cdr _e2231723121_)))
                                                  (if (gx#identifier?
                                                       _hd2231823125_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core::<match>[1]#_g28575_|
                                                           _hd2231823125_)
                                                          ((lambda (_L23131_)
                                                             (if (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L23131_)
                         (let ((_g2314323154_
                                (lambda (_g2314423150_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2314423150_))))
                           (let ((_g2314223165_
                                  (lambda (_g2314423158_)
                                    ((lambda ()
                                       (cons 'or:
                                             (gx#stx-map
                                              _parse121930_
                                              _L23131_)))))))
                             (let ((_g2314123195_
                                    (lambda (_g2314423169_)
                                      (if (gx#stx-pair? _g2314423169_)
                                          (let ((_e2314623172_
                                                 (gx#syntax-e _g2314423169_)))
                                            (let ((_hd2314723176_
                                                   (##car _e2314623172_))
                                                  (_tl2314823179_
                                                   (##cdr _e2314623172_)))
                                              (if (gx#stx-null? _tl2314823179_)
                                                  ((lambda (_L23182_)
                                                     (_parse121930_ _L23182_))
                                                   _hd2314723176_)
                                                  (_g2314223165_
                                                   _g2314423169_))))
                                          (_g2314223165_ _g2314423169_)))))
                               (_g2314123195_ _L23131_))))
                         (_g2228223114_ _g2230323118_)))
                   _tl2231923128_)
                  (_g2228223114_ _g2230323118_))
              (_g2228223114_ _g2230323118_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2228223114_ _g2230323118_)))))
                                   (let ((_g2228023284_
                                          (lambda (_g2230323203_)
                                            (if (gx#stx-pair? _g2230323203_)
                                                (let ((_e2231323206_
                                                       (gx#syntax-e
                                                        _g2230323203_)))
                                                  (let ((_hd2231423210_
                                                         (##car _e2231323206_))
                                                        (_tl2231523213_
                                                         (##cdr _e2231323206_)))
                                                    (if (gx#identifier?
                                                         _hd2231423210_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core::<match>[1]#_g28576_|
                                                             _hd2231423210_)
                                                            ((lambda (_L23216_)
                                                               (if (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L23216_)
                           (let ((_g2322823239_
                                  (lambda (_g2322923235_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g2322923235_))))
                             (let ((_g2322723250_
                                    (lambda (_g2322923243_)
                                      ((lambda ()
                                         (cons 'and:
                                               (gx#stx-map
                                                _parse121930_
                                                _L23216_)))))))
                               (let ((_g2322623280_
                                      (lambda (_g2322923254_)
                                        (if (gx#stx-pair? _g2322923254_)
                                            (let ((_e2323123257_
                                                   (gx#syntax-e
                                                    _g2322923254_)))
                                              (let ((_hd2323223261_
                                                     (##car _e2323123257_))
                                                    (_tl2323323264_
                                                     (##cdr _e2323123257_)))
                                                (if (gx#stx-null?
                                                     _tl2323323264_)
                                                    ((lambda (_L23267_)
                                                       (_parse121930_
                                                        _L23267_))
                                                     _hd2323223261_)
                                                    (_g2322723250_
                                                     _g2322923254_))))
                                            (_g2322723250_ _g2322923254_)))))
                                 (_g2322623280_ _L23216_))))
                           (_g2228123199_ _g2230323203_)))
                     _tl2231523213_)
                    (_g2228123199_ _g2230323203_))
                (_g2228123199_ _g2230323203_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2228123199_
                                                 _g2230323203_)))))
                                     (let ((_g2227923524_
                                            (lambda (_g2230323288_)
                                              (if (gx#stx-pair? _g2230323288_)
                                                  (let ((_e2230623291_
                                                         (gx#syntax-e
                                                          _g2230323288_)))
                                                    (let ((_hd2230723295_
                                                           (##car _e2230623291_))
                                                          (_tl2230823298_
                                                           (##cdr _e2230623291_)))
                                                      (if (gx#identifier?
                                                           _hd2230723295_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core::<match>[1]#_g28577_|
                                                               _hd2230723295_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2230823298_)
                          (let ((_e2230923301_ (gx#syntax-e _tl2230823298_)))
                            (let ((_hd2231023305_ (##car _e2230923301_))
                                  (_tl2231123308_ (##cdr _e2230923301_)))
                              ((lambda (_L23311_ _L23313_)
                                 (let ((_g2333023362_
                                        (lambda (_g2333123358_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g2333123358_))))
                                   (let ((_g2332923373_
                                          (lambda (_g2333123366_)
                                            ((lambda ()
                                               (_parse-error21937_
                                                _hd22277_))))))
                                     (let ((_g2332823441_
                                            (lambda (_g2333123377_)
                                              (if (gx#stx-pair? _g2333123377_)
                                                  (let ((_e2334523380_
                                                         (gx#syntax-e
                                                          _g2333123377_)))
                                                    (let ((_hd2334623384_
                                                           (##car _e2334523380_))
                                                          (_tl2334723387_
                                                           (##cdr _e2334523380_)))
                                                      (if (gx#stx-datum?
                                                           _hd2334623384_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2334623384_)
                              '::)
                      (if (gx#stx-pair? _tl2334723387_)
                          (let ((_e2334823390_ (gx#syntax-e _tl2334723387_)))
                            (let ((_hd2334923394_ (##car _e2334823390_))
                                  (_tl2335023397_ (##cdr _e2334823390_)))
                              (if (gx#stx-pair? _tl2335023397_)
                                  (let ((_e2335123400_
                                         (gx#syntax-e _tl2335023397_)))
                                    (let ((_hd2335223404_
                                           (##car _e2335123400_))
                                          (_tl2335323407_
                                           (##cdr _e2335123400_)))
                                      (if (gx#identifier? _hd2335223404_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core::<match>[1]#_g28578_|
                                               _hd2335223404_)
                                              (if (gx#stx-pair? _tl2335323407_)
                                                  (let ((_e2335423410_
                                                         (gx#syntax-e
                                                          _tl2335323407_)))
                                                    (let ((_hd2335523414_
                                                           (##car _e2335423410_))
                                                          (_tl2335623417_
                                                           (##cdr _e2335423410_)))
                                                      (if (gx#stx-null?
                                                           _tl2335623417_)
                                                          ((lambda (_L23420_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L23422_)
                     (cons '?:
                           (cons _L23313_
                                 (cons '::
                                       (cons _L23422_
                                             (cons '=>:
                                                   (cons (_parse121930_
                                                          _L23420_)
                                                         '())))))))
                   _hd2335523414_
                   _hd2334923394_)
                  (_g2332923373_ _g2333123377_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2332923373_
                                                   _g2333123377_))
                                              (_g2332923373_ _g2333123377_))
                                          (_g2332923373_ _g2333123377_))))
                                  (_g2332923373_ _g2333123377_))))
                          (_g2332923373_ _g2333123377_))
                      (_g2332923373_ _g2333123377_))
                  (_g2332923373_ _g2333123377_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2332923373_
                                                   _g2333123377_)))))
                                       (let ((_g2332723481_
                                              (lambda (_g2333123445_)
                                                (if (gx#stx-pair?
                                                     _g2333123445_)
                                                    (let ((_e2333723448_
                                                           (gx#syntax-e
                                                            _g2333123445_)))
                                                      (let ((_hd2333823452_
                                                             (##car _e2333723448_))
                                                            (_tl2333923455_
                                                             (##cdr _e2333723448_)))
                                                        (if (gx#identifier?
                                                             _hd2333823452_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core::<match>[1]#_g28579_|
                         _hd2333823452_)
                        (if (gx#stx-pair? _tl2333923455_)
                            (let ((_e2334023458_ (gx#syntax-e _tl2333923455_)))
                              (let ((_hd2334123462_ (##car _e2334023458_))
                                    (_tl2334223465_ (##cdr _e2334023458_)))
                                (if (gx#stx-null? _tl2334223465_)
                                    ((lambda (_L23468_)
                                       (cons '?:
                                             (cons _L23313_
                                                   (cons '=>:
                                                         (cons (_parse121930_
                                                                _L23468_)
                                                               '())))))
                                     _hd2334123462_)
                                    (_g2332823441_ _g2333123445_))))
                            (_g2332823441_ _g2333123445_))
                        (_g2332823441_ _g2333123445_))
                    (_g2332823441_ _g2333123445_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2332823441_
                                                     _g2333123445_)))))
                                         (let ((_g2332623509_
                                                (lambda (_g2333123485_)
                                                  (if (gx#stx-pair?
                                                       _g2333123485_)
                                                      (let ((_e2333323488_
                                                             (gx#syntax-e
                                                              _g2333123485_)))
                                                        (let ((_hd2333423492_
                                                               (##car _e2333323488_))
                                                              (_tl2333523495_
                                                               (##cdr _e2333323488_)))
                                                          (if (gx#stx-null?
                                                               _tl2333523495_)
                                                              ((lambda (_L23498_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '?:
                               (cons _L23313_
                                     (cons (_parse121930_ _L23498_) '()))))
                       _hd2333423492_)
                      (_g2332723481_ _g2333123485_))))
              (_g2332723481_ _g2333123485_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_g2332523520_
                                                  (lambda (_g2333123513_)
                                                    (if (gx#stx-null?
                                                         _g2333123513_)
                                                        ((lambda ()
                                                           (cons '?:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L23313_ '()))))
                (_g2332623509_ _g2333123513_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2332523520_ _L23311_))))))))
                               _tl2231123308_
                               _hd2231023305_)))
                          (_g2228023284_ _g2230323288_))
                      (_g2228023284_ _g2230323288_))
                  (_g2228023284_ _g2230323288_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2228023284_
                                                   _g2230323288_)))))
                                       (_g2227923524_
                                        _hd22277_)))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (_parse-list21932_
                             (lambda (_body22112_)
                               (let ((_g2211822146_
                                      (lambda (_g2211922142_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g2211922142_))))
                                 (let ((_g2211722157_
                                        (lambda (_g2211922150_)
                                          ((lambda ()
                                             (if (gx#stx-null? _body22112_)
                                                 (cons 'null: '())
                                                 (if (not (gx#stx-pair?
                                                           _body22112_))
                                                     (_parse121930_
                                                      _body22112_)
                                                     (_parse-error21937_
                                                      _body22112_))))))))
                                   (let ((_g2211622189_
                                          (lambda (_g2211922161_)
                                            (if (gx#stx-pair? _g2211922161_)
                                                (let ((_e2213822164_
                                                       (gx#syntax-e
                                                        _g2211922161_)))
                                                  (let ((_hd2213922168_
                                                         (##car _e2213822164_))
                                                        (_tl2214022171_
                                                         (##cdr _e2213822164_)))
                                                    ((lambda (_L22174_
                                                              _L22176_)
                                                       (if (not (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L22176_))
                   (cons 'cons:
                         (cons (_parse121930_ _L22176_)
                               (cons (_parse-list21932_ _L22174_) '())))
                   (_g2211722157_ _g2211922161_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _tl2214022171_
                                                     _hd2213922168_)))
                                                (_g2211722157_
                                                 _g2211922161_)))))
                                     (let ((_g2211522233_
                                            (lambda (_g2211922193_)
                                              (if (gx#stx-pair? _g2211922193_)
                                                  (let ((_e2213022196_
                                                         (gx#syntax-e
                                                          _g2211922193_)))
                                                    (let ((_hd2213122200_
                                                           (##car _e2213022196_))
                                                          (_tl2213222203_
                                                           (##cdr _e2213022196_)))
                                                      (if (gx#stx-pair?
                                                           _tl2213222203_)
                                                          (let ((_e2213322206_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2213222203_)))
                    (let ((_hd2213422210_ (##car _e2213322206_))
                          (_tl2213522213_ (##cdr _e2213322206_)))
                      ((lambda (_L22216_ _L22218_ _L22219_)
                         (if (gx#ellipsis? _L22218_)
                             (cons 'splice:
                                   (cons (_parse121930_ _L22219_)
                                         (cons (_parse-list21932_ _L22216_)
                                               '())))
                             (_g2211622189_ _g2211922193_)))
                       _tl2213522213_
                       _hd2213422210_
                       _hd2213122200_)))
                  (_g2211622189_ _g2211922193_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2211622189_
                                                   _g2211922193_)))))
                                       (let ((_g2211422273_
                                              (lambda (_g2211922237_)
                                                (if (gx#stx-pair?
                                                     _g2211922237_)
                                                    (let ((_e2212122240_
                                                           (gx#syntax-e
                                                            _g2211922237_)))
                                                      (let ((_hd2212222244_
                                                             (##car _e2212122240_))
                                                            (_tl2212322247_
                                                             (##cdr _e2212122240_)))
                                                        (if (gx#stx-datum?
                                                             _hd2212222244_)
                                                            (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _hd2212222244_)
                                '::)
                        (if (gx#stx-pair? _tl2212322247_)
                            (let ((_e2212422250_ (gx#syntax-e _tl2212322247_)))
                              (let ((_hd2212522254_ (##car _e2212422250_))
                                    (_tl2212622257_ (##cdr _e2212422250_)))
                                (if (gx#stx-null? _tl2212622257_)
                                    ((lambda (_L22260_)
                                       (_parse121930_ _L22260_))
                                     _hd2212522254_)
                                    (_g2211522233_ _g2211922237_))))
                            (_g2211522233_ _g2211922237_))
                        (_g2211522233_ _g2211922237_))
                    (_g2211522233_ _g2211922237_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2211522233_
                                                     _g2211922237_)))))
                                         (_g2211422273_ _body22112_))))))))
                            (_parse-vector21933_
                             (lambda (_body22109_)
                               (if (_simple-vector?21934_ _body22109_)
                                   (cons 'simple:
                                         (cons (gx#stx-map
                                                _parse121930_
                                                _body22109_)
                                               '()))
                                   (cons 'list:
                                         (cons (_parse-list21932_ _body22109_)
                                               '())))))
                            (_simple-vector?21934_
                             (lambda (_body22046_)
                               (let ((_g2205022062_
                                      (lambda (_g2205122058_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g2205122058_))))
                                 (let ((_g2204922073_
                                        (lambda (_g2205122066_)
                                          ((lambda ()
                                             (gx#stx-null? _body22046_))))))
                                   (let ((_g2204822105_
                                          (lambda (_g2205122077_)
                                            (if (gx#stx-pair? _g2205122077_)
                                                (let ((_e2205422080_
                                                       (gx#syntax-e
                                                        _g2205122077_)))
                                                  (let ((_hd2205522084_
                                                         (##car _e2205422080_))
                                                        (_tl2205622087_
                                                         (##cdr _e2205422080_)))
                                                    ((lambda (_L22090_
                                                              _L22092_)
                                                       (if (not (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L22092_))
                   (_simple-vector?21934_ _L22090_)
                   '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _tl2205622087_
                                                     _hd2205522084_)))
                                                (_g2204922073_
                                                 _g2205122077_)))))
                                     (_g2204822105_ _body22046_))))))
                            (_parse-class-body21935_
                             (lambda (_body21955_)
                               ((letrec ((_recur21958_
                                          (lambda (_rest21961_)
                                            (let ((_g2196521981_
                                                   (lambda (_g2196621977_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2196621977_))))
                                              (let ((_g2196421992_
                                                     (lambda (_g2196621985_)
                                                       ((lambda ()
                                                          (if (gx#stx-null?
                                                               _rest21961_)
                                                              '()
                                                              (_parse-error21937_
                                                               _rest21961_)))))))
                                                (let ((_g2196322042_
                                                       (lambda (_g2196621996_)
                                                         (if (gx#stx-pair?
                                                              _g2196621996_)
                                                             (let ((_e2197021999_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g2196621996_)))
                       (let ((_hd2197122003_ (##car _e2197021999_))
                             (_tl2197222006_ (##cdr _e2197021999_)))
                         (if (gx#stx-pair? _tl2197222006_)
                             (let ((_e2197322009_
                                    (gx#syntax-e _tl2197222006_)))
                               (let ((_hd2197422013_ (##car _e2197322009_))
                                     (_tl2197522016_ (##cdr _e2197322009_)))
                                 ((lambda (_L22019_ _L22021_ _L22022_)
                                    (if (gx#stx-keyword? _L22022_)
                                        (cons* _L22022_
                                               (_parse121930_ _L22021_)
                                               (_recur21958_ _L22019_))
                                        (_g2196421992_ _g2196621996_)))
                                  _tl2197522016_
                                  _hd2197422013_
                                  _hd2197122003_)))
                             (_g2196421992_ _g2196621996_))))
                     (_g2196421992_ _g2196621996_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2196322042_
                                                   _rest21961_)))))))
                                  _recur21958_)
                                _body21955_))))
                     (_parse121930_ _stx21926_)))))))
        (lambda _g28581_
          (let ((_g28580_ (length _g28581_)))
            (cond ((fx= _g28580_ 1)
                   (apply (lambda (_stx23532_)
                            (let ((_match-stx23535_ '#f))
                              (_opt-lambda2192423528_
                               _stx23532_
                               _match-stx23535_)))
                          _g28581_))
                  ((fx= _g28580_ 2) (apply _opt-lambda2192423528_ _g28581_))
                  (else (error "No clause matching arguments" _g28581_)))))))
    (define |gerbil/core::<match>[1]#match-pattern?|
      (lambda (_stx21910_)
        (call-with-escape
         (lambda (_E21914_)
           (with-exception-handler
            (let ((_E!21917_ (current-exception-handler)))
              (lambda (_e21920_)
                (if (gx#syntax-error? _e21920_)
                    (_E21914_ '#f)
                    (_E!21917_ _e21920_))))
            (lambda ()
              (begin
                (|gerbil/core::<match>[1]#parse-match-pattern| _stx21910_)
                '#t)))))))
    (define |gerbil/core::<match>[1]#match-pattern-vars|
      (lambda (_ptree20765_)
        (letrec ((_loop20768_
                  (lambda (_ptree21043_ _vars21045_ _K21046_)
                    (let ((_g2105821148_
                           (lambda (_g2105921144_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2105921144_))))
                      (let ((_g2105721159_
                             (lambda (_g2105921152_)
                               ((lambda () (_K21046_ _vars21045_))))))
                        (let ((_g2105621206_
                               (lambda (_g2105921163_)
                                 (if (gx#stx-pair? _g2105921163_)
                                     (let ((_e2113721166_
                                            (gx#syntax-e _g2105921163_)))
                                       (let ((_hd2113821170_
                                              (##car _e2113721166_))
                                             (_tl2113921173_
                                              (##cdr _e2113721166_)))
                                         (if (gx#stx-datum? _hd2113821170_)
                                             (if (equal? (gx#stx-e
                                                          _hd2113821170_)
                                                         'var:)
                                                 (if (gx#stx-pair?
                                                      _tl2113921173_)
                                                     (let ((_e2114021176_
                                                            (gx#syntax-e
                                                             _tl2113921173_)))
                                                       (let ((_hd2114121180_
                                                              (##car _e2114021176_))
                                                             (_tl2114221183_
                                                              (##cdr _e2114021176_)))
                                                         (if (gx#stx-null?
                                                              _tl2114221183_)
                                                             ((lambda (_L21186_)
                                                                (if (find (lambda (_g2120021202_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (gx#bound-identifier=?
                                     _g2120021202_
                                     _L21186_))
                                  _vars21045_)
                            (_K21046_ _vars21045_)
                            (_K21046_ (cons _L21186_ _vars21045_))))
                      _hd2114121180_)
                     (_g2105721159_ _g2105921163_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2105721159_
                                                      _g2105921163_))
                                                 (_g2105721159_ _g2105921163_))
                                             (_g2105721159_ _g2105921163_))))
                                     (_g2105721159_ _g2105921163_)))))
                          (let ((_g2105521258_
                                 (lambda (_g2105921210_)
                                   (if (gx#stx-pair? _g2105921210_)
                                       (let ((_e2112721213_
                                              (gx#syntax-e _g2105921210_)))
                                         (let ((_hd2112821217_
                                                (##car _e2112721213_))
                                               (_tl2112921220_
                                                (##cdr _e2112721213_)))
                                           (if (gx#stx-datum? _hd2112821217_)
                                               (if (equal? (gx#stx-e
                                                            _hd2112821217_)
                                                           'class:)
                                                   (if (gx#stx-pair?
                                                        _tl2112921220_)
                                                       (let ((_e2113021223_
                                                              (gx#syntax-e
                                                               _tl2112921220_)))
                                                         (let ((_hd2113121227_
                                                                (##car _e2113021223_))
                                                               (_tl2113221230_
                                                                (##cdr _e2113021223_)))
                                                           (if (gx#stx-pair?
                                                                _tl2113221230_)
                                                               (let ((_e2113321233_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2113221230_)))
                         (let ((_hd2113421237_ (##car _e2113321233_))
                               (_tl2113521240_ (##cdr _e2113321233_)))
                           (if (gx#stx-null? _tl2113521240_)
                               ((lambda (_L21243_)
                                  (_loop-class-list20772_
                                   _L21243_
                                   _vars21045_
                                   _K21046_))
                                _hd2113421237_)
                               (_g2105621206_ _g2105921210_))))
                       (_g2105621206_ _g2105921210_))))
               (_g2105621206_ _g2105921210_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2105621206_
                                                    _g2105921210_))
                                               (_g2105621206_ _g2105921210_))))
                                       (_g2105621206_ _g2105921210_)))))
                            (let ((_g2105421310_
                                   (lambda (_g2105921262_)
                                     (if (gx#stx-pair? _g2105921262_)
                                         (let ((_e2111721265_
                                                (gx#syntax-e _g2105921262_)))
                                           (let ((_hd2111821269_
                                                  (##car _e2111721265_))
                                                 (_tl2111921272_
                                                  (##cdr _e2111721265_)))
                                             (if (gx#stx-datum? _hd2111821269_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2111821269_)
                                                             'struct:)
                                                     (if (gx#stx-pair?
                                                          _tl2111921272_)
                                                         (let ((_e2112021275_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2111921272_)))
                   (let ((_hd2112121279_ (##car _e2112021275_))
                         (_tl2112221282_ (##cdr _e2112021275_)))
                     (if (gx#stx-pair? _tl2112221282_)
                         (let ((_e2112321285_ (gx#syntax-e _tl2112221282_)))
                           (let ((_hd2112421289_ (##car _e2112321285_))
                                 (_tl2112521292_ (##cdr _e2112321285_)))
                             (if (gx#stx-null? _tl2112521292_)
                                 ((lambda (_L21295_)
                                    (_loop-vector20770_
                                     _L21295_
                                     _vars21045_
                                     _K21046_))
                                  _hd2112421289_)
                                 (_g2105521258_ _g2105921262_))))
                         (_g2105521258_ _g2105921262_))))
                 (_g2105521258_ _g2105921262_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2105521258_
                                                      _g2105921262_))
                                                 (_g2105521258_
                                                  _g2105921262_))))
                                         (_g2105521258_ _g2105921262_)))))
                              (let ((_g2105321356_
                                     (lambda (_g2105921314_)
                                       (if (gx#stx-pair? _g2105921314_)
                                           (let ((_e2111021317_
                                                  (gx#syntax-e _g2105921314_)))
                                             (let ((_hd2111121321_
                                                    (##car _e2111021317_))
                                                   (_tl2111221324_
                                                    (##cdr _e2111021317_)))
                                               (if (gx#stx-pair?
                                                    _tl2111221324_)
                                                   (let ((_e2111321327_
                                                          (gx#syntax-e
                                                           _tl2111221324_)))
                                                     (let ((_hd2111421331_
                                                            (##car _e2111321327_))
                                                           (_tl2111521334_
                                                            (##cdr _e2111321327_)))
                                                       (if (gx#stx-null?
                                                            _tl2111521334_)
                                                           ((lambda (_L21337_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L21339_)
                      (if (let ((_$e21352_ (gx#stx-eq? 'values: _L21339_)))
                            (if _$e21352_
                                _$e21352_
                                (gx#stx-eq? 'vector: _L21339_)))
                          (_loop-vector20770_ _L21337_ _vars21045_ _K21046_)
                          (_g2105421310_ _g2105921314_)))
                    _hd2111421331_
                    _hd2111121321_)
                   (_g2105421310_ _g2105921314_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2105421310_
                                                    _g2105921314_))))
                                           (_g2105421310_ _g2105921314_)))))
                                (let ((_g2105221396_
                                       (lambda (_g2105921360_)
                                         (if (gx#stx-pair? _g2105921360_)
                                             (let ((_e2110221363_
                                                    (gx#syntax-e
                                                     _g2105921360_)))
                                               (let ((_hd2110321367_
                                                      (##car _e2110221363_))
                                                     (_tl2110421370_
                                                      (##cdr _e2110221363_)))
                                                 (if (gx#stx-datum?
                                                      _hd2110321367_)
                                                     (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd2110321367_)
                         'box:)
                 (if (gx#stx-pair? _tl2110421370_)
                     (let ((_e2110521373_ (gx#syntax-e _tl2110421370_)))
                       (let ((_hd2110621377_ (##car _e2110521373_))
                             (_tl2110721380_ (##cdr _e2110521373_)))
                         (if (gx#stx-null? _tl2110721380_)
                             ((lambda (_L21383_)
                                (_loop20768_ _L21383_ _vars21045_ _K21046_))
                              _hd2110621377_)
                             (_g2105321356_ _g2105921360_))))
                     (_g2105321356_ _g2105921360_))
                 (_g2105321356_ _g2105921360_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2105321356_
                                                      _g2105921360_))))
                                             (_g2105321356_ _g2105921360_)))))
                                  (let ((_g2105121455_
                                         (lambda (_g2105921400_)
                                           (if (gx#stx-pair? _g2105921400_)
                                               (let ((_e2109221403_
                                                      (gx#syntax-e
                                                       _g2105921400_)))
                                                 (let ((_hd2109321407_
                                                        (##car _e2109221403_))
                                                       (_tl2109421410_
                                                        (##cdr _e2109221403_)))
                                                   (if (gx#stx-datum?
                                                        _hd2109321407_)
                                                       (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd2109321407_)
                           'splice:)
                   (if (gx#stx-pair? _tl2109421410_)
                       (let ((_e2109521413_ (gx#syntax-e _tl2109421410_)))
                         (let ((_hd2109621417_ (##car _e2109521413_))
                               (_tl2109721420_ (##cdr _e2109521413_)))
                           (if (gx#stx-pair? _tl2109721420_)
                               (let ((_e2109821423_
                                      (gx#syntax-e _tl2109721420_)))
                                 (let ((_hd2109921427_ (##car _e2109821423_))
                                       (_tl2110021430_ (##cdr _e2109821423_)))
                                   (if (gx#stx-null? _tl2110021430_)
                                       ((lambda (_L21433_ _L21435_)
                                          (_loop20768_
                                           _L21435_
                                           _vars21045_
                                           (lambda (_g2144921451_)
                                             (_loop20768_
                                              _L21433_
                                              _g2144921451_
                                              _K21046_))))
                                        _hd2109921427_
                                        _hd2109621417_)
                                       (_g2105221396_ _g2105921400_))))
                               (_g2105221396_ _g2105921400_))))
                       (_g2105221396_ _g2105921400_))
                   (_g2105221396_ _g2105921400_))
               (_g2105221396_ _g2105921400_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2105221396_
                                                _g2105921400_)))))
                                    (let ((_g2105021514_
                                           (lambda (_g2105921459_)
                                             (if (gx#stx-pair? _g2105921459_)
                                                 (let ((_e2108121462_
                                                        (gx#syntax-e
                                                         _g2105921459_)))
                                                   (let ((_hd2108221466_
                                                          (##car _e2108121462_))
                                                         (_tl2108321469_
                                                          (##cdr _e2108121462_)))
                                                     (if (gx#stx-datum?
                                                          _hd2108221466_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2108221466_)
                             'cons:)
                     (if (gx#stx-pair? _tl2108321469_)
                         (let ((_e2108421472_ (gx#syntax-e _tl2108321469_)))
                           (let ((_hd2108521476_ (##car _e2108421472_))
                                 (_tl2108621479_ (##cdr _e2108421472_)))
                             (if (gx#stx-pair? _tl2108621479_)
                                 (let ((_e2108721482_
                                        (gx#syntax-e _tl2108621479_)))
                                   (let ((_hd2108821486_ (##car _e2108721482_))
                                         (_tl2108921489_
                                          (##cdr _e2108721482_)))
                                     (if (gx#stx-null? _tl2108921489_)
                                         ((lambda (_L21492_ _L21494_)
                                            (_loop20768_
                                             _L21494_
                                             _vars21045_
                                             (lambda (_g2150821510_)
                                               (_loop20768_
                                                _L21492_
                                                _g2150821510_
                                                _K21046_))))
                                          _hd2108821486_
                                          _hd2108521476_)
                                         (_g2105121455_ _g2105921459_))))
                                 (_g2105121455_ _g2105921459_))))
                         (_g2105121455_ _g2105921459_))
                     (_g2105121455_ _g2105921459_))
                 (_g2105121455_ _g2105921459_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2105121455_
                                                  _g2105921459_)))))
                                      (let ((_g2104921554_
                                             (lambda (_g2105921518_)
                                               (if (gx#stx-pair? _g2105921518_)
                                                   (let ((_e2107321521_
                                                          (gx#syntax-e
                                                           _g2105921518_)))
                                                     (let ((_hd2107421525_
                                                            (##car _e2107321521_))
                                                           (_tl2107521528_
                                                            (##cdr _e2107321521_)))
                                                       (if (gx#stx-datum?
                                                            _hd2107421525_)
                                                           (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd2107421525_)
                               'not:)
                       (if (gx#stx-pair? _tl2107521528_)
                           (let ((_e2107621531_ (gx#syntax-e _tl2107521528_)))
                             (let ((_hd2107721535_ (##car _e2107621531_))
                                   (_tl2107821538_ (##cdr _e2107621531_)))
                               (if (gx#stx-null? _tl2107821538_)
                                   ((lambda (_L21541_)
                                      (_loop20768_
                                       _L21541_
                                       _vars21045_
                                       _K21046_))
                                    _hd2107721535_)
                                   (_g2105021514_ _g2105921518_))))
                           (_g2105021514_ _g2105921518_))
                       (_g2105021514_ _g2105921518_))
                   (_g2105021514_ _g2105921518_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2105021514_
                                                    _g2105921518_)))))
                                        (let ((_g2104821653_
                                               (lambda (_g2105921558_)
                                                 (if (gx#stx-pair?
                                                      _g2105921558_)
                                                     (let ((_e2106921561_
                                                            (gx#syntax-e
                                                             _g2105921558_)))
                                                       (let ((_hd2107021565_
                                                              (##car _e2106921561_))
                                                             (_tl2107121568_
                                                              (##cdr _e2106921561_)))
                                                         ((lambda (_L21571_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L21573_)
                    (if (let ((_$e21584_ (gx#stx-eq? 'and: _L21573_)))
                          (if _$e21584_ _$e21584_ (gx#stx-eq? 'or: _L21573_)))
                        (let ((_g2158921601_
                               (lambda (_g2159021597_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2159021597_))))
                          (let ((_g2158821612_
                                 (lambda (_g2159021605_)
                                   ((lambda () (_K21046_ _vars21045_))))))
                            (let ((_g2158721649_
                                   (lambda (_g2159021616_)
                                     (if (gx#stx-pair? _g2159021616_)
                                         (let ((_e2159321619_
                                                (gx#syntax-e _g2159021616_)))
                                           (let ((_hd2159421623_
                                                  (##car _e2159321619_))
                                                 (_tl2159521626_
                                                  (##cdr _e2159321619_)))
                                             ((lambda (_L21629_ _L21631_)
                                                (_loop20768_
                                                 _L21631_
                                                 _vars21045_
                                                 (lambda (_g2164321645_)
                                                   (_loop20768_
                                                    (cons _L21573_ _L21629_)
                                                    _g2164321645_
                                                    _K21046_))))
                                              _tl2159521626_
                                              _hd2159421623_)))
                                         (_g2158821612_ _g2159021616_)))))
                              (_g2158721649_ _L21571_))))
                        (_g2104921554_ _g2105921558_)))
                  _tl2107121568_
                  _hd2107021565_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2104921554_
                                                      _g2105921558_)))))
                                          (let ((_g2104721906_
                                                 (lambda (_g2105921657_)
                                                   (if (gx#stx-pair?
                                                        _g2105921657_)
                                                       (let ((_e2106121660_
                                                              (gx#syntax-e
                                                               _g2105921657_)))
                                                         (let ((_hd2106221664_
                                                                (##car _e2106121660_))
                                                               (_tl2106321667_
                                                                (##cdr _e2106121660_)))
                                                           (if (gx#stx-datum?
                                                                _hd2106221664_)
                                                               (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _hd2106221664_)
                                   '?:)
                           (if (gx#stx-pair? _tl2106321667_)
                               (let ((_e2106421670_
                                      (gx#syntax-e _tl2106321667_)))
                                 (let ((_hd2106521674_ (##car _e2106421670_))
                                       (_tl2106621677_ (##cdr _e2106421670_)))
                                   ((lambda (_L21680_)
                                      (let ((_g2169621733_
                                             (lambda (_g2169721729_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2169721729_))))
                                        (let ((_g2169521744_
                                               (lambda (_g2169721737_)
                                                 ((lambda ()
                                                    (_K21046_ _vars21045_))))))
                                          (let ((_g2169421822_
                                                 (lambda (_g2169721748_)
                                                   (if (gx#stx-pair?
                                                        _g2169721748_)
                                                       (let ((_e2171321751_
                                                              (gx#syntax-e
                                                               _g2169721748_)))
                                                         (let ((_hd2171421755_
                                                                (##car _e2171321751_))
                                                               (_tl2171521758_
                                                                (##cdr _e2171321751_)))
                                                           (if (gx#stx-pair?
                                                                _tl2171521758_)
                                                               (let ((_e2171621761_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2171521758_)))
                         (let ((_hd2171721765_ (##car _e2171621761_))
                               (_tl2171821768_ (##cdr _e2171621761_)))
                           (if (gx#stx-datum? _hd2171721765_)
                               (if (equal? (gx#stx-e _hd2171721765_) '::)
                                   (if (gx#stx-pair? _tl2171821768_)
                                       (let ((_e2171921771_
                                              (gx#syntax-e _tl2171821768_)))
                                         (let ((_hd2172021775_
                                                (##car _e2171921771_))
                                               (_tl2172121778_
                                                (##cdr _e2171921771_)))
                                           (if (gx#stx-pair? _tl2172121778_)
                                               (let ((_e2172221781_
                                                      (gx#syntax-e
                                                       _tl2172121778_)))
                                                 (let ((_hd2172321785_
                                                        (##car _e2172221781_))
                                                       (_tl2172421788_
                                                        (##cdr _e2172221781_)))
                                                   (if (gx#stx-datum?
                                                        _hd2172321785_)
                                                       (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd2172321785_)
                           '=>:)
                   (if (gx#stx-pair? _tl2172421788_)
                       (let ((_e2172521791_ (gx#syntax-e _tl2172421788_)))
                         (let ((_hd2172621795_ (##car _e2172521791_))
                               (_tl2172721798_ (##cdr _e2172521791_)))
                           (if (gx#stx-null? _tl2172721798_)
                               ((lambda (_L21801_)
                                  (_loop20768_ _L21801_ _vars21045_ _K21046_))
                                _hd2172621795_)
                               (_g2169521744_ _g2169721748_))))
                       (_g2169521744_ _g2169721748_))
                   (_g2169521744_ _g2169721748_))
               (_g2169521744_ _g2169721748_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2169521744_ _g2169721748_))))
                                       (_g2169521744_ _g2169721748_))
                                   (_g2169521744_ _g2169721748_))
                               (_g2169521744_ _g2169721748_))))
                       (_g2169521744_ _g2169721748_))))
               (_g2169521744_ _g2169721748_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_g2169321874_
                                                   (lambda (_g2169721826_)
                                                     (if (gx#stx-pair?
                                                          _g2169721826_)
                                                         (let ((_e2170321829_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2169721826_)))
                   (let ((_hd2170421833_ (##car _e2170321829_))
                         (_tl2170521836_ (##cdr _e2170321829_)))
                     (if (gx#stx-pair? _tl2170521836_)
                         (let ((_e2170621839_ (gx#syntax-e _tl2170521836_)))
                           (let ((_hd2170721843_ (##car _e2170621839_))
                                 (_tl2170821846_ (##cdr _e2170621839_)))
                             (if (gx#stx-datum? _hd2170721843_)
                                 (if (equal? (gx#stx-e _hd2170721843_) '=>:)
                                     (if (gx#stx-pair? _tl2170821846_)
                                         (let ((_e2170921849_
                                                (gx#syntax-e _tl2170821846_)))
                                           (let ((_hd2171021853_
                                                  (##car _e2170921849_))
                                                 (_tl2171121856_
                                                  (##cdr _e2170921849_)))
                                             (if (gx#stx-null? _tl2171121856_)
                                                 ((lambda (_L21859_)
                                                    (_loop20768_
                                                     _L21859_
                                                     _vars21045_
                                                     _K21046_))
                                                  _hd2171021853_)
                                                 (_g2169421822_
                                                  _g2169721826_))))
                                         (_g2169421822_ _g2169721826_))
                                     (_g2169421822_ _g2169721826_))
                                 (_g2169421822_ _g2169721826_))))
                         (_g2169421822_ _g2169721826_))))
                 (_g2169421822_ _g2169721826_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g2169221902_
                                                     (lambda (_g2169721878_)
                                                       (if (gx#stx-pair?
                                                            _g2169721878_)
                                                           (let ((_e2169921881_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g2169721878_)))
                     (let ((_hd2170021885_ (##car _e2169921881_))
                           (_tl2170121888_ (##cdr _e2169921881_)))
                       (if (gx#stx-null? _tl2170121888_)
                           ((lambda (_L21891_)
                              (_loop20768_ _L21891_ _vars21045_ _K21046_))
                            _hd2170021885_)
                           (_g2169321874_ _g2169721878_))))
                   (_g2169321874_ _g2169721878_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2169221902_ _L21680_)))))))
                                    _tl2106621677_)))
                               (_g2104821653_ _g2105921657_))
                           (_g2104821653_ _g2105921657_))
                       (_g2104821653_ _g2105921657_))))
               (_g2104821653_ _g2105921657_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2104721906_
                                             _ptree21043_)))))))))))))))
                 (_loop-vector20770_
                  (lambda (_body20931_ _vars20933_ _K20934_)
                    (let ((_g2093720958_
                           (lambda (_g2093820954_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2093820954_))))
                      (let ((_g2093620999_
                             (lambda (_g2093820962_)
                               (if (gx#stx-pair? _g2093820962_)
                                   (let ((_e2094720965_
                                          (gx#syntax-e _g2093820962_)))
                                     (let ((_hd2094820969_
                                            (##car _e2094720965_))
                                           (_tl2094920972_
                                            (##cdr _e2094720965_)))
                                       (if (gx#stx-datum? _hd2094820969_)
                                           (if (equal? (gx#stx-e
                                                        _hd2094820969_)
                                                       'list:)
                                               (if (gx#stx-pair?
                                                    _tl2094920972_)
                                                   (let ((_e2095020975_
                                                          (gx#syntax-e
                                                           _tl2094920972_)))
                                                     (let ((_hd2095120979_
                                                            (##car _e2095020975_))
                                                           (_tl2095220982_
                                                            (##cdr _e2095020975_)))
                                                       (if (gx#stx-null?
                                                            _tl2095220982_)
                                                           ((lambda (_L20985_)
                                                              (_loop20768_
                                                               _L20985_
                                                               _vars20933_
                                                               _K20934_))
                                                            _hd2095120979_)
                                                           (_g2093720958_
                                                            _g2093820962_))))
                                                   (_g2093720958_
                                                    _g2093820962_))
                                               (_g2093720958_ _g2093820962_))
                                           (_g2093720958_ _g2093820962_))))
                                   (_g2093720958_ _g2093820962_)))))
                        (let ((_g2093521039_
                               (lambda (_g2093821003_)
                                 (if (gx#stx-pair? _g2093821003_)
                                     (let ((_e2094021006_
                                            (gx#syntax-e _g2093821003_)))
                                       (let ((_hd2094121010_
                                              (##car _e2094021006_))
                                             (_tl2094221013_
                                              (##cdr _e2094021006_)))
                                         (if (gx#stx-datum? _hd2094121010_)
                                             (if (equal? (gx#stx-e
                                                          _hd2094121010_)
                                                         'simple:)
                                                 (if (gx#stx-pair?
                                                      _tl2094221013_)
                                                     (let ((_e2094321016_
                                                            (gx#syntax-e
                                                             _tl2094221013_)))
                                                       (let ((_hd2094421020_
                                                              (##car _e2094321016_))
                                                             (_tl2094521023_
                                                              (##cdr _e2094321016_)))
                                                         (if (gx#stx-null?
                                                              _tl2094521023_)
                                                             ((lambda (_L21026_)
                                                                (_loop-list20771_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L21026_
                         _vars20933_
                         _K20934_))
                      _hd2094421020_)
                     (_g2093620999_ _g2093821003_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2093620999_
                                                      _g2093821003_))
                                                 (_g2093620999_ _g2093821003_))
                                             (_g2093620999_ _g2093821003_))))
                                     (_g2093620999_ _g2093821003_)))))
                          (_g2093521039_ _body20931_))))))
                 (_loop-list20771_
                  (lambda (_rest20861_ _vars20863_ _K20864_)
                    (let ((_g2086720879_
                           (lambda (_g2086820875_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2086820875_))))
                      (let ((_g2086620890_
                             (lambda (_g2086820883_)
                               ((lambda () (_K20864_ _vars20863_))))))
                        (let ((_g2086520927_
                               (lambda (_g2086820894_)
                                 (if (gx#stx-pair? _g2086820894_)
                                     (let ((_e2087120897_
                                            (gx#syntax-e _g2086820894_)))
                                       (let ((_hd2087220901_
                                              (##car _e2087120897_))
                                             (_tl2087320904_
                                              (##cdr _e2087120897_)))
                                         ((lambda (_L20907_ _L20909_)
                                            (_loop20768_
                                             _L20909_
                                             _vars20863_
                                             (lambda (_g2092120923_)
                                               (_loop-list20771_
                                                _L20907_
                                                _g2092120923_
                                                _K20864_))))
                                          _tl2087320904_
                                          _hd2087220901_)))
                                     (_g2086620890_ _g2086820894_)))))
                          (_g2086520927_ _rest20861_))))))
                 (_loop-class-list20772_
                  (lambda (_rest20774_ _vars20776_ _K20777_)
                    (let ((_g2078020795_
                           (lambda (_g2078120791_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2078120791_))))
                      (let ((_g2077920806_
                             (lambda (_g2078120799_)
                               ((lambda () (_K20777_ _vars20776_))))))
                        (let ((_g2077820857_
                               (lambda (_g2078120810_)
                                 (if (gx#stx-pair? _g2078120810_)
                                     (let ((_e2078420813_
                                            (gx#syntax-e _g2078120810_)))
                                       (let ((_hd2078520817_
                                              (##car _e2078420813_))
                                             (_tl2078620820_
                                              (##cdr _e2078420813_)))
                                         (if (gx#stx-pair? _tl2078620820_)
                                             (let ((_e2078720823_
                                                    (gx#syntax-e
                                                     _tl2078620820_)))
                                               (let ((_hd2078820827_
                                                      (##car _e2078720823_))
                                                     (_tl2078920830_
                                                      (##cdr _e2078720823_)))
                                                 ((lambda (_L20833_ _L20835_)
                                                    (_loop20768_
                                                     _L20835_
                                                     _vars20776_
                                                     (lambda (_g2085120853_)
                                                       (_loop-class-list20772_
                                                        _L20833_
                                                        _g2085120853_
                                                        _K20777_))))
                                                  _tl2078920830_
                                                  _hd2078820827_)))
                                             (_g2077920806_ _g2078120810_))))
                                     (_g2077920806_ _g2078120810_)))))
                          (_g2077820857_ _rest20774_)))))))
          (_loop20768_ _ptree20765_ '() values))))
    (define |gerbil/core::<match>[1]#generate-match1|
      (lambda (_stx17678_ _tgt17680_ _ptree17681_ _K17682_ _E17683_)
        (letrec ((_generate117685_
                  (lambda (_tgt19215_ _ptree19217_ _K19218_ _E19219_)
                    (let ((_g1922119229_
                           (lambda (_g1922219225_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1922219225_))))
                      (let ((_g1922020761_
                             (lambda (_g1922219233_)
                               ((lambda (_L19236_)
                                  (let ()
                                    (let ((_g1926219377_
                                           (lambda (_g1926319373_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1926319373_))))
                                      (let ((_g1926119398_
                                             (lambda (_g1926319381_)
                                               (if (gx#stx-pair? _g1926319381_)
                                                   (let ((_e1936919384_
                                                          (gx#syntax-e
                                                           _g1926319381_)))
                                                     (let ((_hd1937019388_
                                                            (##car _e1936919384_))
                                                           (_tl1937119391_
                                                            (##cdr _e1936919384_)))
                                                       (if (gx#stx-datum?
                                                            _hd1937019388_)
                                                           (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1937019388_)
                               'any:)
                       (if (gx#stx-null? _tl1937119391_)
                           ((lambda () _K19218_))
                           (_g1926219377_ _g1926319381_))
                       (_g1926219377_ _g1926319381_))
                   (_g1926219377_ _g1926319381_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1926219377_
                                                    _g1926319381_)))))
                                        (let ((_g1926019441_
                                               (lambda (_g1926319402_)
                                                 (if (gx#stx-pair?
                                                      _g1926319402_)
                                                     (let ((_e1936319405_
                                                            (gx#syntax-e
                                                             _g1926319402_)))
                                                       (let ((_hd1936419409_
                                                              (##car _e1936319405_))
                                                             (_tl1936519412_
                                                              (##cdr _e1936319405_)))
                                                         (if (gx#stx-datum?
                                                              _hd1936419409_)
                                                             (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _hd1936419409_)
                                 'var:)
                         (if (gx#stx-pair? _tl1936519412_)
                             (let ((_e1936619415_
                                    (gx#syntax-e _tl1936519412_)))
                               (let ((_hd1936719419_ (##car _e1936619415_))
                                     (_tl1936819422_ (##cdr _e1936619415_)))
                                 (if (gx#stx-null? _tl1936819422_)
                                     ((lambda (_L19425_)
                                        (cons (gx#datum->syntax '#f 'let)
                                              (cons (cons (cons _L19425_
                                                                (cons _L19236_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _K19218_ '()))))
                                      _hd1936719419_)
                                     (_g1926119398_ _g1926319402_))))
                             (_g1926119398_ _g1926319402_))
                         (_g1926119398_ _g1926319402_))
                     (_g1926119398_ _g1926319402_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1926119398_
                                                      _g1926319402_)))))
                                          (let ((_g1925919523_
                                                 (lambda (_g1926319445_)
                                                   (if (gx#stx-pair?
                                                        _g1926319445_)
                                                       (let ((_e1935619448_
                                                              (gx#syntax-e
                                                               _g1926319445_)))
                                                         (let ((_hd1935719452_
                                                                (##car _e1935619448_))
                                                               (_tl1935819455_
                                                                (##cdr _e1935619448_)))
                                                           (if (gx#stx-datum?
                                                                _hd1935719452_)
                                                               (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _hd1935719452_)
                                   'datum:)
                           (if (gx#stx-pair? _tl1935819455_)
                               (let ((_e1935919458_
                                      (gx#syntax-e _tl1935819455_)))
                                 (let ((_hd1936019462_ (##car _e1935919458_))
                                       (_tl1936119465_ (##cdr _e1935919458_)))
                                   (if (gx#stx-null? _tl1936119465_)
                                       ((lambda (_L19468_)
                                          (let ((_g1948119489_
                                                 (lambda (_g1948219485_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1948219485_))))
                                            (let ((_g1948019508_
                                                   (lambda (_g1948219493_)
                                                     ((lambda (_L19496_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'if)
                        (cons (cons _L19496_
                                    (cons _L19236_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L19468_ '()))
                                                '())))
                              (cons _K19218_ (cons _E19219_ '()))))))
              _g1948219493_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1948019508_
                                               (let ((_e19512_
                                                      (gx#stx-e _L19468_)))
                                                 (if (let ((_$e19515_
                                                            (symbol? _e19512_)))
                                                       (if _$e19515_
                                                           _$e19515_
                                                           (let ((_$e19519_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (keyword? _e19512_)))
                     (if _$e19519_ _$e19519_ (immediate? _e19512_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##eq?)
                                                     (if (number? _e19512_)
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eqv?)
                                                         (gx#datum->syntax
                                                          '#f
                                                          'equal?))))))))
                                        _hd1936019462_)
                                       (_g1926019441_ _g1926319445_))))
                               (_g1926019441_ _g1926319445_))
                           (_g1926019441_ _g1926319445_))
                       (_g1926019441_ _g1926319445_))))
               (_g1926019441_ _g1926319445_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_g1925819577_
                                                   (lambda (_g1926319527_)
                                                     (if (gx#stx-pair?
                                                          _g1926319527_)
                                                         (let ((_e1934619530_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1926319527_)))
                   (let ((_hd1934719534_ (##car _e1934619530_))
                         (_tl1934819537_ (##cdr _e1934619530_)))
                     (if (gx#stx-datum? _hd1934719534_)
                         (if (equal? (gx#stx-e _hd1934719534_) 'class:)
                             (if (gx#stx-pair? _tl1934819537_)
                                 (let ((_e1934919540_
                                        (gx#syntax-e _tl1934819537_)))
                                   (let ((_hd1935019544_ (##car _e1934919540_))
                                         (_tl1935119547_
                                          (##cdr _e1934919540_)))
                                     (if (gx#stx-pair? _tl1935119547_)
                                         (let ((_e1935219550_
                                                (gx#syntax-e _tl1935119547_)))
                                           (let ((_hd1935319554_
                                                  (##car _e1935219550_))
                                                 (_tl1935419557_
                                                  (##cdr _e1935219550_)))
                                             (if (gx#stx-null? _tl1935419557_)
                                                 ((lambda (_L19560_ _L19562_)
                                                    (_generate-class17691_
                                                     (gx#stx-e _L19562_)
                                                     _tgt19215_
                                                     _L19560_
                                                     _K19218_
                                                     _E19219_))
                                                  _hd1935319554_
                                                  _hd1935019544_)
                                                 (_g1925919523_
                                                  _g1926319527_))))
                                         (_g1925919523_ _g1926319527_))))
                                 (_g1925919523_ _g1926319527_))
                             (_g1925919523_ _g1926319527_))
                         (_g1925919523_ _g1926319527_))))
                 (_g1925919523_ _g1926319527_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g1925719631_
                                                     (lambda (_g1926319581_)
                                                       (if (gx#stx-pair?
                                                            _g1926319581_)
                                                           (let ((_e1933519584_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g1926319581_)))
                     (let ((_hd1933619588_ (##car _e1933519584_))
                           (_tl1933719591_ (##cdr _e1933519584_)))
                       (if (gx#stx-datum? _hd1933619588_)
                           (if (equal? (gx#stx-e _hd1933619588_) 'struct:)
                               (if (gx#stx-pair? _tl1933719591_)
                                   (let ((_e1933819594_
                                          (gx#syntax-e _tl1933719591_)))
                                     (let ((_hd1933919598_
                                            (##car _e1933819594_))
                                           (_tl1934019601_
                                            (##cdr _e1933819594_)))
                                       (if (gx#stx-pair? _tl1934019601_)
                                           (let ((_e1934119604_
                                                  (gx#syntax-e
                                                   _tl1934019601_)))
                                             (let ((_hd1934219608_
                                                    (##car _e1934119604_))
                                                   (_tl1934319611_
                                                    (##cdr _e1934119604_)))
                                               (if (gx#stx-null?
                                                    _tl1934319611_)
                                                   ((lambda (_L19614_ _L19616_)
                                                      (_generate-struct17690_
                                                       (gx#stx-e _L19616_)
                                                       _tgt19215_
                                                       _L19614_
                                                       _K19218_
                                                       _E19219_))
                                                    _hd1934219608_
                                                    _hd1933919598_)
                                                   (_g1925819577_
                                                    _g1926319581_))))
                                           (_g1925819577_ _g1926319581_))))
                                   (_g1925819577_ _g1926319581_))
                               (_g1925819577_ _g1926319581_))
                           (_g1925819577_ _g1926319581_))))
                   (_g1925819577_ _g1926319581_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_g1925619809_
                                                       (lambda (_g1926319635_)
                                                         (if (gx#stx-pair?
                                                              _g1926319635_)
                                                             (let ((_e1932719638_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g1926319635_)))
                       (let ((_hd1932819642_ (##car _e1932719638_))
                             (_tl1932919645_ (##cdr _e1932719638_)))
                         (if (gx#stx-datum? _hd1932819642_)
                             (if (equal? (gx#stx-e _hd1932819642_) 'vector:)
                                 (if (gx#stx-pair? _tl1932919645_)
                                     (let ((_e1933019648_
                                            (gx#syntax-e _tl1932919645_)))
                                       (let ((_hd1933119652_
                                              (##car _e1933019648_))
                                             (_tl1933219655_
                                              (##cdr _e1933019648_)))
                                         (if (gx#stx-null? _tl1933219655_)
                                             ((lambda (_L19658_)
                                                (let ((_g1967219693_
                                                       (lambda (_g1967319689_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1967319689_))))
                                                  (let ((_g1967119734_
                                                         (lambda (_g1967319697_)
                                                           (if (gx#stx-pair?
                                                                _g1967319697_)
                                                               (let ((_e1968219700_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1967319697_)))
                         (let ((_hd1968319704_ (##car _e1968219700_))
                               (_tl1968419707_ (##cdr _e1968219700_)))
                           (if (gx#stx-datum? _hd1968319704_)
                               (if (equal? (gx#stx-e _hd1968319704_) 'list:)
                                   (if (gx#stx-pair? _tl1968419707_)
                                       (let ((_e1968519710_
                                              (gx#syntax-e _tl1968419707_)))
                                         (let ((_hd1968619714_
                                                (##car _e1968519710_))
                                               (_tl1968719717_
                                                (##cdr _e1968519710_)))
                                           (if (gx#stx-null? _tl1968719717_)
                                               ((lambda (_L19720_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'if)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'vector?)
                            (cons _L19236_ '()))
                      (cons (_generate-list-vector17689_
                             _tgt19215_
                             _L19720_
                             (gx#datum->syntax '#f 'subvector->list)
                             '0
                             _K19218_
                             _E19219_)
                            (cons _E19219_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1968619714_)
                                               (_g1967219693_ _g1967319697_))))
                                       (_g1967219693_ _g1967319697_))
                                   (_g1967219693_ _g1967319697_))
                               (_g1967219693_ _g1967319697_))))
                       (_g1967219693_ _g1967319697_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g1967019805_
                                                           (lambda (_g1967319738_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1967319738_)
                         (let ((_e1967519741_ (gx#syntax-e _g1967319738_)))
                           (let ((_hd1967619745_ (##car _e1967519741_))
                                 (_tl1967719748_ (##cdr _e1967519741_)))
                             (if (gx#stx-datum? _hd1967619745_)
                                 (if (equal? (gx#stx-e _hd1967619745_)
                                             'simple:)
                                     (if (gx#stx-pair? _tl1967719748_)
                                         (let ((_e1967819751_
                                                (gx#syntax-e _tl1967719748_)))
                                           (let ((_hd1967919755_
                                                  (##car _e1967819751_))
                                                 (_tl1968019758_
                                                  (##cdr _e1967819751_)))
                                             (if (gx#stx-null? _tl1968019758_)
                                                 ((lambda (_L19761_)
                                                    (let ((_g1977419782_
                                                           (lambda (_g1977519778_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g1977519778_))))
                                                      (let ((_g1977319801_
                                                             (lambda (_g1977519786_)
                                                               ((lambda (_L19789_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons (gx#datum->syntax '#f 'and)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##vector?)
                                                          (cons _L19236_ '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fx=)
                        (cons (cons (gx#datum->syntax '#f '##vector-length)
                                    (cons _L19236_ '()))
                              (cons _L19789_ '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (_generate-simple-vector17688_
                                               _tgt19215_
                                               _L19761_
                                               '0
                                               _K19218_
                                               _E19219_)
                                              (cons _E19219_ '()))))))
                        _g1977519786_))))
                (_g1977319801_ (gx#stx-length _L19761_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1967919755_)
                                                 (_g1967119734_
                                                  _g1967319738_))))
                                         (_g1967119734_ _g1967319738_))
                                     (_g1967119734_ _g1967319738_))
                                 (_g1967119734_ _g1967319738_))))
                         (_g1967119734_ _g1967319738_)))))
              (_g1967019805_ _L19658_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd1933119652_)
                                             (_g1925719631_ _g1926319635_))))
                                     (_g1925719631_ _g1926319635_))
                                 (_g1925719631_ _g1926319635_))
                             (_g1925719631_ _g1926319635_))))
                     (_g1925719631_ _g1926319635_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g1925519987_
                                                         (lambda (_g1926319813_)
                                                           (if (gx#stx-pair?
                                                                _g1926319813_)
                                                               (let ((_e1932019816_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1926319813_)))
                         (let ((_hd1932119820_ (##car _e1932019816_))
                               (_tl1932219823_ (##cdr _e1932019816_)))
                           (if (gx#stx-datum? _hd1932119820_)
                               (if (equal? (gx#stx-e _hd1932119820_) 'values:)
                                   (if (gx#stx-pair? _tl1932219823_)
                                       (let ((_e1932319826_
                                              (gx#syntax-e _tl1932219823_)))
                                         (let ((_hd1932419830_
                                                (##car _e1932319826_))
                                               (_tl1932519833_
                                                (##cdr _e1932319826_)))
                                           (if (gx#stx-null? _tl1932519833_)
                                               ((lambda (_L19836_)
                                                  (let ((_g1985019871_
                                                         (lambda (_g1985119867_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g1985119867_))))
                                                    (let ((_g1984919912_
                                                           (lambda (_g1985119875_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1985119875_)
                         (let ((_e1986019878_ (gx#syntax-e _g1985119875_)))
                           (let ((_hd1986119882_ (##car _e1986019878_))
                                 (_tl1986219885_ (##cdr _e1986019878_)))
                             (if (gx#stx-datum? _hd1986119882_)
                                 (if (equal? (gx#stx-e _hd1986119882_) 'list:)
                                     (if (gx#stx-pair? _tl1986219885_)
                                         (let ((_e1986319888_
                                                (gx#syntax-e _tl1986219885_)))
                                           (let ((_hd1986419892_
                                                  (##car _e1986319888_))
                                                 (_tl1986519895_
                                                  (##cdr _e1986319888_)))
                                             (if (gx#stx-null? _tl1986519895_)
                                                 ((lambda (_L19898_)
                                                    (_generate-list-vector17689_
                                                     _tgt19215_
                                                     _L19898_
                                                     (gx#datum->syntax
                                                      '#f
                                                      'values->list)
                                                     '0
                                                     _K19218_
                                                     _E19219_))
                                                  _hd1986419892_)
                                                 (_g1985019871_
                                                  _g1985119875_))))
                                         (_g1985019871_ _g1985119875_))
                                     (_g1985019871_ _g1985119875_))
                                 (_g1985019871_ _g1985119875_))))
                         (_g1985019871_ _g1985119875_)))))
              (let ((_g1984819983_
                     (lambda (_g1985119916_)
                       (if (gx#stx-pair? _g1985119916_)
                           (let ((_e1985319919_ (gx#syntax-e _g1985119916_)))
                             (let ((_hd1985419923_ (##car _e1985319919_))
                                   (_tl1985519926_ (##cdr _e1985319919_)))
                               (if (gx#stx-datum? _hd1985419923_)
                                   (if (equal? (gx#stx-e _hd1985419923_)
                                               'simple:)
                                       (if (gx#stx-pair? _tl1985519926_)
                                           (let ((_e1985619929_
                                                  (gx#syntax-e
                                                   _tl1985519926_)))
                                             (let ((_hd1985719933_
                                                    (##car _e1985619929_))
                                                   (_tl1985819936_
                                                    (##cdr _e1985619929_)))
                                               (if (gx#stx-null?
                                                    _tl1985819936_)
                                                   ((lambda (_L19939_)
                                                      (let ((_g1995219960_
                                                             (lambda (_g1995319956_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1995319956_))))
                                                        (let ((_g1995119979_
                                                               (lambda (_g1995319964_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L19967_)
                            (let ()
                              (cons (gx#datum->syntax '#f 'if)
                                    (cons (cons (gx#datum->syntax '#f '##fx=)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'values-count)
                                                            (cons _L19236_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _L19967_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (_generate-simple-vector17688_
                                                 _tgt19215_
                                                 _L19939_
                                                 '0
                                                 _K19218_
                                                 _E19219_)
                                                (cons _E19219_ '()))))))
                          _g1995319964_))))
                  (_g1995119979_ (gx#stx-length _L19939_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1985719933_)
                                                   (_g1984919912_
                                                    _g1985119916_))))
                                           (_g1984919912_ _g1985119916_))
                                       (_g1984919912_ _g1985119916_))
                                   (_g1984919912_ _g1985119916_))))
                           (_g1984919912_ _g1985119916_)))))
                (_g1984819983_ _L19836_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1932419830_)
                                               (_g1925619809_ _g1926319813_))))
                                       (_g1925619809_ _g1926319813_))
                                   (_g1925619809_ _g1926319813_))
                               (_g1925619809_ _g1926319813_))))
                       (_g1925619809_ _g1926319813_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g1925420058_
                                                           (lambda (_g1926319991_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1926319991_)
                         (let ((_e1931319994_ (gx#syntax-e _g1926319991_)))
                           (let ((_hd1931419998_ (##car _e1931319994_))
                                 (_tl1931520001_ (##cdr _e1931319994_)))
                             (if (gx#stx-datum? _hd1931419998_)
                                 (if (equal? (gx#stx-e _hd1931419998_) 'box:)
                                     (if (gx#stx-pair? _tl1931520001_)
                                         (let ((_e1931620004_
                                                (gx#syntax-e _tl1931520001_)))
                                           (let ((_hd1931720008_
                                                  (##car _e1931620004_))
                                                 (_tl1931820011_
                                                  (##cdr _e1931620004_)))
                                             (if (gx#stx-null? _tl1931820011_)
                                                 ((lambda (_L20014_)
                                                    (let ((_g2002720035_
                                                           (lambda (_g2002820031_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g2002820031_))))
                                                      (let ((_g2002620054_
                                                             (lambda (_g2002820039_)
                                                               ((lambda (_L20042_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons (gx#datum->syntax '#f '##box?)
                                              (cons _L19236_ '()))
                                        (cons (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L20042_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f '##unbox)
                                          (cons _L19236_ '()))
                                    '()))
                        '())
                  (cons (_generate117685_ _L20042_ _L20014_ _K19218_ _E19219_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _E19219_ '()))))))
                        _g2002820039_))))
                (_g2002620054_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1931720008_)
                                                 (_g1925519987_
                                                  _g1926319991_))))
                                         (_g1925519987_ _g1926319991_))
                                     (_g1925519987_ _g1926319991_))
                                 (_g1925519987_ _g1926319991_))))
                         (_g1925519987_ _g1926319991_)))))
              (let ((_g1925320112_
                     (lambda (_g1926320062_)
                       (if (gx#stx-pair? _g1926320062_)
                           (let ((_e1930320065_ (gx#syntax-e _g1926320062_)))
                             (let ((_hd1930420069_ (##car _e1930320065_))
                                   (_tl1930520072_ (##cdr _e1930320065_)))
                               (if (gx#stx-datum? _hd1930420069_)
                                   (if (equal? (gx#stx-e _hd1930420069_)
                                               'splice:)
                                       (if (gx#stx-pair? _tl1930520072_)
                                           (let ((_e1930620075_
                                                  (gx#syntax-e
                                                   _tl1930520072_)))
                                             (let ((_hd1930720079_
                                                    (##car _e1930620075_))
                                                   (_tl1930820082_
                                                    (##cdr _e1930620075_)))
                                               (if (gx#stx-pair?
                                                    _tl1930820082_)
                                                   (let ((_e1930920085_
                                                          (gx#syntax-e
                                                           _tl1930820082_)))
                                                     (let ((_hd1931020089_
                                                            (##car _e1930920085_))
                                                           (_tl1931120092_
                                                            (##cdr _e1930920085_)))
                                                       (if (gx#stx-null?
                                                            _tl1931120092_)
                                                           ((lambda (_L20095_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L20097_)
                      (_generate-splice17687_
                       _tgt19215_
                       _L20097_
                       _L20095_
                       _K19218_
                       _E19219_))
                    _hd1931020089_
                    _hd1930720079_)
                   (_g1925420058_ _g1926320062_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1925420058_
                                                    _g1926320062_))))
                                           (_g1925420058_ _g1926320062_))
                                       (_g1925420058_ _g1926320062_))
                                   (_g1925420058_ _g1926320062_))))
                           (_g1925420058_ _g1926320062_)))))
                (let ((_g1925220133_
                       (lambda (_g1926320116_)
                         (if (gx#stx-pair? _g1926320116_)
                             (let ((_e1929820119_ (gx#syntax-e _g1926320116_)))
                               (let ((_hd1929920123_ (##car _e1929820119_))
                                     (_tl1930020126_ (##cdr _e1929820119_)))
                                 (if (gx#stx-datum? _hd1929920123_)
                                     (if (equal? (gx#stx-e _hd1929920123_)
                                                 'null:)
                                         (if (gx#stx-null? _tl1930020126_)
                                             ((lambda ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'if)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '##null?)
                          (cons _L19236_ '()))
                    (cons _K19218_ (cons _E19219_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1925320112_ _g1926320116_))
                                         (_g1925320112_ _g1926320116_))
                                     (_g1925320112_ _g1926320116_))))
                             (_g1925320112_ _g1926320116_)))))
                  (let ((_g1925120252_
                         (lambda (_g1926320137_)
                           (if (gx#stx-pair? _g1926320137_)
                               (let ((_e1928920140_
                                      (gx#syntax-e _g1926320137_)))
                                 (let ((_hd1929020144_ (##car _e1928920140_))
                                       (_tl1929120147_ (##cdr _e1928920140_)))
                                   (if (gx#stx-datum? _hd1929020144_)
                                       (if (equal? (gx#stx-e _hd1929020144_)
                                                   'cons:)
                                           (if (gx#stx-pair? _tl1929120147_)
                                               (let ((_e1929220150_
                                                      (gx#syntax-e
                                                       _tl1929120147_)))
                                                 (let ((_hd1929320154_
                                                        (##car _e1929220150_))
                                                       (_tl1929420157_
                                                        (##cdr _e1929220150_)))
                                                   (if (gx#stx-pair?
                                                        _tl1929420157_)
                                                       (let ((_e1929520160_
                                                              (gx#syntax-e
                                                               _tl1929420157_)))
                                                         (let ((_hd1929620164_
                                                                (##car _e1929520160_))
                                                               (_tl1929720167_
                                                                (##cdr _e1929520160_)))
                                                           (if (gx#stx-null?
                                                                _tl1929720167_)
                                                               ((lambda (_L20170_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L20172_)
                          (let ((_g2018820203_
                                 (lambda (_g2018920199_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2018920199_))))
                            (let ((_g2018720248_
                                   (lambda (_g2018920207_)
                                     (if (gx#stx-pair? _g2018920207_)
                                         (let ((_e2019220210_
                                                (gx#syntax-e _g2018920207_)))
                                           (let ((_hd2019320214_
                                                  (##car _e2019220210_))
                                                 (_tl2019420217_
                                                  (##cdr _e2019220210_)))
                                             (if (gx#stx-pair? _tl2019420217_)
                                                 (let ((_e2019520220_
                                                        (gx#syntax-e
                                                         _tl2019420217_)))
                                                   (let ((_hd2019620224_
                                                          (##car _e2019520220_))
                                                         (_tl2019720227_
                                                          (##cdr _e2019520220_)))
                                                     (if (gx#stx-null?
                                                          _tl2019720227_)
                                                         ((lambda (_L20230_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L20232_)
                    (let ()
                      (cons (gx#datum->syntax '#f 'if)
                            (cons (cons (gx#datum->syntax '#f '##pair?)
                                        (cons _L19236_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'let)
                                              (cons (cons (cons _L20232_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     '##car)
                                    (cons _L19236_ '()))
                              '()))
                  (cons (cons _L20230_
                              (cons (cons (gx#datum->syntax '#f '##cdr)
                                          (cons _L19236_ '()))
                                    '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (_generate117685_
                                                           _L20232_
                                                           _L20172_
                                                           (_generate117685_
                                                            _L20230_
                                                            _L20170_
                                                            _K19218_
                                                            _E19219_)
                                                           _E19219_)
                                                          '())))
                                        (cons _E19219_ '()))))))
                  _hd2019620224_
                  _hd2019320214_)
                 (_g2018820203_ _g2018920207_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2018820203_
                                                  _g2018920207_))))
                                         (_g2018820203_ _g2018920207_)))))
                              (_g2018720248_
                               (list (gx#genident 'hd) (gx#genident 'tl))))))
                        _hd1929620164_
                        _hd1929320154_)
                       (_g1925220133_ _g1926320137_))))
               (_g1925220133_ _g1926320137_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1925220133_ _g1926320137_))
                                           (_g1925220133_ _g1926320137_))
                                       (_g1925220133_ _g1926320137_))))
                               (_g1925220133_ _g1926320137_)))))
                    (let ((_g1925020292_
                           (lambda (_g1926320256_)
                             (if (gx#stx-pair? _g1926320256_)
                                 (let ((_e1928120259_
                                        (gx#syntax-e _g1926320256_)))
                                   (let ((_hd1928220263_ (##car _e1928120259_))
                                         (_tl1928320266_
                                          (##cdr _e1928120259_)))
                                     (if (gx#stx-datum? _hd1928220263_)
                                         (if (equal? (gx#stx-e _hd1928220263_)
                                                     'not:)
                                             (if (gx#stx-pair? _tl1928320266_)
                                                 (let ((_e1928420269_
                                                        (gx#syntax-e
                                                         _tl1928320266_)))
                                                   (let ((_hd1928520273_
                                                          (##car _e1928420269_))
                                                         (_tl1928620276_
                                                          (##cdr _e1928420269_)))
                                                     (if (gx#stx-null?
                                                          _tl1928620276_)
                                                         ((lambda (_L20279_)
                                                            (_generate117685_
                                                             _tgt19215_
                                                             _L20279_
                                                             _E19219_
                                                             _K19218_))
                                                          _hd1928520273_)
                                                         (_g1925120252_
                                                          _g1926320256_))))
                                                 (_g1925120252_ _g1926320256_))
                                             (_g1925120252_ _g1926320256_))
                                         (_g1925120252_ _g1926320256_))))
                                 (_g1925120252_ _g1926320256_)))))
                      (let ((_g1924920380_
                             (lambda (_g1926320296_)
                               (if (gx#stx-pair? _g1926320296_)
                                   (let ((_e1927720299_
                                          (gx#syntax-e _g1926320296_)))
                                     (let ((_hd1927820303_
                                            (##car _e1927720299_))
                                           (_tl1927920306_
                                            (##cdr _e1927720299_)))
                                       (if (gx#stx-datum? _hd1927820303_)
                                           (if (equal? (gx#stx-e
                                                        _hd1927820303_)
                                                       'or:)
                                               ((lambda (_L20309_)
                                                  (let ((_g2032120333_
                                                         (lambda (_g2032220329_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2032220329_))))
                                                    (let ((_g2032020344_
                                                           (lambda (_g2032220337_)
                                                             ((lambda ()
                                                                _E19219_)))))
                                                      (let ((_g2031920376_
                                                             (lambda (_g2032220348_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2032220348_)
                           (let ((_e2032520351_ (gx#syntax-e _g2032220348_)))
                             (let ((_hd2032620355_ (##car _e2032520351_))
                                   (_tl2032720358_ (##cdr _e2032520351_)))
                               ((lambda (_L20361_ _L20363_)
                                  (_generate117685_
                                   _tgt19215_
                                   _L20363_
                                   _K19218_
                                   (_generate117685_
                                    _tgt19215_
                                    (cons 'or: _L20361_)
                                    _K19218_
                                    _E19219_)))
                                _tl2032720358_
                                _hd2032620355_)))
                           (_g2032020344_ _g2032220348_)))))
                (_g2031920376_ _L20309_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl1927920306_)
                                               (_g1925020292_ _g1926320296_))
                                           (_g1925020292_ _g1926320296_))))
                                   (_g1925020292_ _g1926320296_)))))
                        (let ((_g1924820468_
                               (lambda (_g1926320384_)
                                 (if (gx#stx-pair? _g1926320384_)
                                     (let ((_e1927320387_
                                            (gx#syntax-e _g1926320384_)))
                                       (let ((_hd1927420391_
                                              (##car _e1927320387_))
                                             (_tl1927520394_
                                              (##cdr _e1927320387_)))
                                         (if (gx#stx-datum? _hd1927420391_)
                                             (if (equal? (gx#stx-e
                                                          _hd1927420391_)
                                                         'and:)
                                                 ((lambda (_L20397_)
                                                    (let ((_g2040920421_
                                                           (lambda (_g2041020417_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g2041020417_))))
                                                      (let ((_g2040820432_
                                                             (lambda (_g2041020425_)
                                                               ((lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _K19218_)))))
                (let ((_g2040720464_
                       (lambda (_g2041020436_)
                         (if (gx#stx-pair? _g2041020436_)
                             (let ((_e2041320439_ (gx#syntax-e _g2041020436_)))
                               (let ((_hd2041420443_ (##car _e2041320439_))
                                     (_tl2041520446_ (##cdr _e2041320439_)))
                                 ((lambda (_L20449_ _L20451_)
                                    (_generate117685_
                                     _tgt19215_
                                     _L20451_
                                     (_generate117685_
                                      _tgt19215_
                                      (cons 'and: _L20449_)
                                      _K19218_
                                      _E19219_)
                                     _E19219_))
                                  _tl2041520446_
                                  _hd2041420443_)))
                             (_g2040820432_ _g2041020436_)))))
                  (_g2040720464_ _L20397_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl1927520394_)
                                                 (_g1924920380_ _g1926320384_))
                                             (_g1924920380_ _g1926320384_))))
                                     (_g1924920380_ _g1926320384_)))))
                          (let ((_g1924720757_
                                 (lambda (_g1926320472_)
                                   (if (gx#stx-pair? _g1926320472_)
                                       (let ((_e1926620475_
                                              (gx#syntax-e _g1926320472_)))
                                         (let ((_hd1926720479_
                                                (##car _e1926620475_))
                                               (_tl1926820482_
                                                (##cdr _e1926620475_)))
                                           (if (gx#stx-datum? _hd1926720479_)
                                               (if (equal? (gx#stx-e
                                                            _hd1926720479_)
                                                           '?:)
                                                   (if (gx#stx-pair?
                                                        _tl1926820482_)
                                                       (let ((_e1926920485_
                                                              (gx#syntax-e
                                                               _tl1926820482_)))
                                                         (let ((_hd1927020489_
                                                                (##car _e1926920485_))
                                                               (_tl1927120492_
                                                                (##cdr _e1926920485_)))
                                                           ((lambda (_L20495_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L20497_)
                      (let ((_g2051320545_
                             (lambda (_g2051420541_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g2051420541_))))
                        (let ((_g2051220643_
                               (lambda (_g2051420549_)
                                 (if (gx#stx-pair? _g2051420549_)
                                     (let ((_e2052820552_
                                            (gx#syntax-e _g2051420549_)))
                                       (let ((_hd2052920556_
                                              (##car _e2052820552_))
                                             (_tl2053020559_
                                              (##cdr _e2052820552_)))
                                         (if (gx#stx-datum? _hd2052920556_)
                                             (if (equal? (gx#stx-e
                                                          _hd2052920556_)
                                                         '::)
                                                 (if (gx#stx-pair?
                                                      _tl2053020559_)
                                                     (let ((_e2053120562_
                                                            (gx#syntax-e
                                                             _tl2053020559_)))
                                                       (let ((_hd2053220566_
                                                              (##car _e2053120562_))
                                                             (_tl2053320569_
                                                              (##cdr _e2053120562_)))
                                                         (if (gx#stx-pair?
                                                              _tl2053320569_)
                                                             (let ((_e2053420572_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl2053320569_)))
                       (let ((_hd2053520576_ (##car _e2053420572_))
                             (_tl2053620579_ (##cdr _e2053420572_)))
                         (if (gx#stx-datum? _hd2053520576_)
                             (if (equal? (gx#stx-e _hd2053520576_) '=>:)
                                 (if (gx#stx-pair? _tl2053620579_)
                                     (let ((_e2053720582_
                                            (gx#syntax-e _tl2053620579_)))
                                       (let ((_hd2053820586_
                                              (##car _e2053720582_))
                                             (_tl2053920589_
                                              (##cdr _e2053720582_)))
                                         (if (gx#stx-null? _tl2053920589_)
                                             ((lambda (_L20592_ _L20594_)
                                                (let ((_g2061220620_
                                                       (lambda (_g2061320616_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g2061320616_))))
                                                  (let ((_g2061120639_
                                                         (lambda (_g2061320624_)
                                                           ((lambda (_L20627_)
                                                              (let ()
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'if)
                              (cons (cons (gx#datum->syntax '#f '?)
                                          (cons _L20497_ (cons _L19236_ '())))
                                    (cons (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (cons _L20627_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _L20594_ (cons _L19236_ '())) '()))
                    '())
              (cons (_generate117685_ _L20627_ _L20592_ _K19218_ _E19219_)
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons _E19219_ '()))))))
                    _g2061320624_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2061120639_
                                                     (gx#genident 'e)))))
                                              _hd2053820586_
                                              _hd2053220566_)
                                             (_g2051320545_ _g2051420549_))))
                                     (_g2051320545_ _g2051420549_))
                                 (_g2051320545_ _g2051420549_))
                             (_g2051320545_ _g2051420549_))))
                     (_g2051320545_ _g2051420549_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2051320545_
                                                      _g2051420549_))
                                                 (_g2051320545_ _g2051420549_))
                                             (_g2051320545_ _g2051420549_))))
                                     (_g2051320545_ _g2051420549_)))))
                          (let ((_g2051120714_
                                 (lambda (_g2051420647_)
                                   (if (gx#stx-pair? _g2051420647_)
                                       (let ((_e2052020650_
                                              (gx#syntax-e _g2051420647_)))
                                         (let ((_hd2052120654_
                                                (##car _e2052020650_))
                                               (_tl2052220657_
                                                (##cdr _e2052020650_)))
                                           (if (gx#stx-datum? _hd2052120654_)
                                               (if (equal? (gx#stx-e
                                                            _hd2052120654_)
                                                           '=>:)
                                                   (if (gx#stx-pair?
                                                        _tl2052220657_)
                                                       (let ((_e2052320660_
                                                              (gx#syntax-e
                                                               _tl2052220657_)))
                                                         (let ((_hd2052420664_
                                                                (##car _e2052320660_))
                                                               (_tl2052520667_
                                                                (##cdr _e2052320660_)))
                                                           (if (gx#stx-null?
                                                                _tl2052520667_)
                                                               ((lambda (_L20670_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_g2068320691_
                                 (lambda (_g2068420687_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2068420687_))))
                            (let ((_g2068220710_
                                   (lambda (_g2068420695_)
                                     ((lambda (_L20698_)
                                        (let ()
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (cons _L20698_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _L20497_ (cons _L19236_ '())) '()))
                    '())
              (cons (cons (gx#datum->syntax '#f 'if)
                          (cons _L20698_
                                (cons (_generate117685_
                                       _L20698_
                                       _L20670_
                                       _K19218_
                                       _E19219_)
                                      (cons _E19219_ '()))))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2068420695_))))
                              (_g2068220710_ (gx#genident 'e)))))
                        _hd2052420664_)
                       (_g2051220643_ _g2051420647_))))
               (_g2051220643_ _g2051420647_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2051220643_
                                                    _g2051420647_))
                                               (_g2051220643_ _g2051420647_))))
                                       (_g2051220643_ _g2051420647_)))))
                            (let ((_g2051020742_
                                   (lambda (_g2051420718_)
                                     (if (gx#stx-pair? _g2051420718_)
                                         (let ((_e2051620721_
                                                (gx#syntax-e _g2051420718_)))
                                           (let ((_hd2051720725_
                                                  (##car _e2051620721_))
                                                 (_tl2051820728_
                                                  (##cdr _e2051620721_)))
                                             (if (gx#stx-null? _tl2051820728_)
                                                 ((lambda (_L20731_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '?)
                              (cons _L20497_ (cons _L19236_ '())))
                        (cons (_generate117685_
                               _tgt19215_
                               _L20731_
                               _K19218_
                               _E19219_)
                              (cons _E19219_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd2051720725_)
                                                 (_g2051120714_
                                                  _g2051420718_))))
                                         (_g2051120714_ _g2051420718_)))))
                              (let ((_g2050920753_
                                     (lambda (_g2051420746_)
                                       (if (gx#stx-null? _g2051420746_)
                                           ((lambda ()
                                              (cons (gx#datum->syntax '#f 'if)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '?)
                        (cons _L20497_ (cons _L19236_ '())))
                  (cons _K19218_ (cons _E19219_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g2051020742_ _g2051420746_)))))
                                (_g2050920753_ _L20495_)))))))
                    _tl1927120492_
                    _hd1927020489_)))
               (_g1924820468_ _g1926320472_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1924820468_
                                                    _g1926320472_))
                                               (_g1924820468_ _g1926320472_))))
                                       (_g1924820468_ _g1926320472_)))))
                            (_g1924720757_ _ptree19217_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _g1922219233_))))
                        (_g1922020761_ _tgt19215_)))))
                 (_generate-splice17687_
                  (lambda (_tgt18587_ _hd18589_ _rest18590_ _K18591_ _E18592_)
                    (let ((_g1859418611_
                           (lambda (_g1859518607_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1859518607_))))
                      (let ((_g1859319211_
                             (lambda (_g1859518615_)
                               (if (gx#stx-pair/null? _g1859518615_)
                                   (if (fx>= (gx#stx-length _g1859518615_) '0)
                                       (let ((_g28582_
                                              (gx#syntax-split-splice
                                               _g1859518615_
                                               '0)))
                                         (begin
                                           (let ((_g28583_
                                                  (values-count _g28582_)))
                                             (if (not (fx= _g28583_ 2))
                                                 (error "Context expects 2 values"
                                                        _g28583_)))
                                           (let ((_target1859718618_
                                                  (values-ref _g28582_ 0))
                                                 (_tl1859918621_
                                                  (values-ref _g28582_ 1)))
                                             (if (gx#stx-null? _tl1859918621_)
                                                 (letrec ((_loop1860018624_
                                                           (lambda (_hd1859818628_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _var1860418631_)
                     (if (gx#stx-pair? _hd1859818628_)
                         (let ((_e1860118634_ (gx#syntax-e _hd1859818628_)))
                           (let ((_lp-hd1860218638_ (##car _e1860118634_))
                                 (_lp-tl1860318641_ (##cdr _e1860118634_)))
                             (_loop1860018624_
                              _lp-tl1860318641_
                              (cons _lp-hd1860218638_ _var1860418631_))))
                         (let ((_var1860518644_ (reverse _var1860418631_)))
                           ((lambda (_L18648_)
                              (let ()
                                (let ((_g1866418681_
                                       (lambda (_g1866518677_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1866518677_))))
                                  (let ((_g1866319199_
                                         (lambda (_g1866518685_)
                                           (if (gx#stx-pair/null?
                                                _g1866518685_)
                                               (if (fx>= (gx#stx-length
                                                          _g1866518685_)
                                                         '0)
                                                   (let ((_g28584_
                                                          (gx#syntax-split-splice
                                                           _g1866518685_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28585_
                                                              (values-count
                                                               _g28584_)))
                                                         (if (not (fx= _g28585_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28585_)))
               (let ((_target1866718688_ (values-ref _g28584_ 0))
                     (_tl1866918691_ (values-ref _g28584_ 1)))
                 (if (gx#stx-null? _tl1866918691_)
                     (letrec ((_loop1867018694_
                               (lambda (_hd1866818698_ _var-r1867418701_)
                                 (if (gx#stx-pair? _hd1866818698_)
                                     (let ((_e1867118704_
                                            (gx#syntax-e _hd1866818698_)))
                                       (let ((_lp-hd1867218708_
                                              (##car _e1867118704_))
                                             (_lp-tl1867318711_
                                              (##cdr _e1867118704_)))
                                         (_loop1867018694_
                                          _lp-tl1867318711_
                                          (cons _lp-hd1867218708_
                                                _var-r1867418701_))))
                                     (let ((_var-r1867518714_
                                            (reverse _var-r1867418701_)))
                                       ((lambda (_L18718_)
                                          (let ()
                                            (let ((_g1873518752_
                                                   (lambda (_g1873618748_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1873618748_))))
                                              (let ((_g1873419187_
                                                     (lambda (_g1873618756_)
                                                       (if (gx#stx-pair/null?
                                                            _g1873618756_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1873618756_)
                             '0)
                       (let ((_g28586_
                              (gx#syntax-split-splice _g1873618756_ '0)))
                         (begin
                           (let ((_g28587_ (values-count _g28586_)))
                             (if (not (fx= _g28587_ 2))
                                 (error "Context expects 2 values" _g28587_)))
                           (let ((_target1873818759_ (values-ref _g28586_ 0))
                                 (_tl1874018762_ (values-ref _g28586_ 1)))
                             (if (gx#stx-null? _tl1874018762_)
                                 (letrec ((_loop1874118765_
                                           (lambda (_hd1873918769_
                                                    _init1874518772_)
                                             (if (gx#stx-pair? _hd1873918769_)
                                                 (let ((_e1874218775_
                                                        (gx#syntax-e
                                                         _hd1873918769_)))
                                                   (let ((_lp-hd1874318779_
                                                          (##car _e1874218775_))
                                                         (_lp-tl1874418782_
                                                          (##cdr _e1874218775_)))
                                                     (_loop1874118765_
                                                      _lp-tl1874418782_
                                                      (cons _lp-hd1874318779_
                                                            _init1874518772_))))
                                                 (let ((_init1874618785_
                                                        (reverse _init1874518772_)))
                                                   ((lambda (_L18789_)
                                                      (let ()
                                                        (let ((_g1880618814_
                                                               (lambda (_g1880718810_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1880718810_))))
                  (let ((_g1880519183_
                         (lambda (_g1880718818_)
                           ((lambda (_L18821_)
                              (let ()
                                (let ((_g1883418842_
                                       (lambda (_g1883518838_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1883518838_))))
                                  (let ((_g1883319179_
                                         (lambda (_g1883518846_)
                                           ((lambda (_L18849_)
                                              (let ()
                                                (let ((_g1886218870_
                                                       (lambda (_g1886318866_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1886318866_))))
                                                  (let ((_g1886119175_
                                                         (lambda (_g1886318874_)
                                                           ((lambda (_L18877_)
                                                              (let ()
                                                                (let ((_g1889018898_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1889118894_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1889118894_))))
                          (let ((_g1888919171_
                                 (lambda (_g1889118902_)
                                   ((lambda (_L18905_)
                                      (let ()
                                        (let ((_g1891818926_
                                               (lambda (_g1891918922_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1891918922_))))
                                          (let ((_g1891719167_
                                                 (lambda (_g1891918930_)
                                                   ((lambda (_L18933_)
                                                      (let ()
                                                        (let ((_g1894618954_
                                                               (lambda (_g1894718950_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1894718950_))))
                  (let ((_g1894519163_
                         (lambda (_g1894718958_)
                           ((lambda (_L18961_)
                              (let ()
                                (let ((_g1897418982_
                                       (lambda (_g1897518978_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1897518978_))))
                                  (let ((_g1897319159_
                                         (lambda (_g1897518986_)
                                           ((lambda (_L18989_)
                                              (let ()
                                                (let ((_g1900219010_
                                                       (lambda (_g1900319006_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1900319006_))))
                                                  (let ((_g1900119144_
                                                         (lambda (_g1900319014_)
                                                           ((lambda (_L19017_)
                                                              (let ()
                                                                (let ((_g1903019038_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1903119034_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1903119034_))))
                          (let ((_g1902919132_
                                 (lambda (_g1903119042_)
                                   ((lambda (_L19045_)
                                      (let ()
                                        (let ((_g1905819066_
                                               (lambda (_g1905919062_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1905919062_))))
                                          (let ((_g1905719128_
                                                 (lambda (_g1905919070_)
                                                   ((lambda (_L19073_)
                                                      (let ()
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'letrec)
                        (cons (cons (cons _L18849_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L18961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr (lambda (_g1908719098_ _g1908819101_)
                                     (cons _g1908719098_ _g1908819101_))
                                   '()
                                   _L18648_)))
                    (cons _L18989_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (cons (cons _L18905_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons (cons _L18933_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _L18961_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1908919104_
                                                        _g1909019107_)
                                                 (cons _g1908919104_
                                                       _g1909019107_))
                                               '()
                                               _L18718_))))
                          (cons _L19073_ '())))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons _L18877_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons (cons _L18961_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1909119110_
                                                        _g1909219113_)
                                                 (cons _g1909119110_
                                                       _g1909219113_))
                                               '()
                                               _L18718_)))
                                (cons (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'pair?)
                                                        (cons _L18961_ '()))
                                                  (cons (cons _L18905_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '##car)
                                  (cons _L18961_ '()))
                            (cons _L18961_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g1909319116_
                                                    _g1909419119_)
                                             (cons _g1909319116_
                                                   _g1909419119_))
                                           '()
                                           _L18718_)))))
                (cons _L19045_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              (cons (cons _L18877_
                                          (cons _L18821_
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g1909519122_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1909619125_)
                   (cons _g1909519122_ _g1909619125_))
                 '()
                 _L18789_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1905919070_))))
                                            (_g1905719128_
                                             (_generate117685_
                                              _L18933_
                                              _hd18589_
                                              _L19017_
                                              _L19045_))))))
                                    _g1903119042_))))
                            (_g1902919132_
                             (cons _L18849_
                                   (cons _L18961_
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g1913519138_
                                                           _g1913619141_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'reverse)
                        (cons _g1913519138_ '()))
                  _g1913619141_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()
                                                  _L18718_)))))))))
                    _g1900319014_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1900119144_
                                                     (cons _L18877_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##cdr)
                               (cons _L18961_ '()))
                         (begin
                           (gx#syntax-check-splice-targets _L18718_ _L18648_)
                           (foldr (lambda (_g1914719151_
                                           _g1914819154_
                                           _g1914919156_)
                                    (cons (cons (gx#datum->syntax '#f 'cons)
                                                (cons _g1914819154_
                                                      (cons _g1914719151_
                                                            '())))
                                          _g1914919156_))
                                  '()
                                  _L18718_
                                  _L18648_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g1897518986_))))
                                    (_g1897319159_
                                     (_generate117685_
                                      _L18961_
                                      _rest18590_
                                      _K18591_
                                      _E18592_))))))
                            _g1894718958_))))
                    (_g1894519163_ (gx#genident 'rest))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1891918930_))))
                                            (_g1891719167_
                                             (gx#genident 'hd))))))
                                    _g1889118902_))))
                            (_g1888919171_ (gx#genident 'splice-try))))))
                    _g1886318874_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1886119175_
                                                     (gx#genident
                                                      'splice-loop))))))
                                            _g1883518846_))))
                                    (_g1883319179_
                                     (gx#genident 'splice-rest))))))
                            _g1880718818_))))
                    (_g1880519183_ _tgt18587_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _init1874618785_))))))
                                   (_loop1874118765_ _target1873818759_ '()))
                                 (_g1873518752_ _g1873618756_)))))
                       (_g1873518752_ _g1873618756_))
                   (_g1873518752_ _g1873618756_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1873419187_
                                                 (make-list
                                                  (gx#stx-length
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g1919019193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1919119196_)
                      (cons _g1919019193_ _g1919119196_))
                    '()
                    _L18648_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         '@list)
                                                        '())))))))
                                        _var-r1867518714_))))))
                       (_loop1867018694_ _target1866718688_ '()))
                     (_g1866418681_ _g1866518685_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1866418681_
                                                    _g1866518685_))
                                               (_g1866418681_
                                                _g1866518685_)))))
                                    (_g1866319199_
                                     (gx#gentemps
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1920219205_
                                                        _g1920319208_)
                                                 (cons _g1920219205_
                                                       _g1920319208_))
                                               '()
                                               _L18648_))))))))
                            _var1860518644_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop1860018624_
                                                    _target1859718618_
                                                    '()))
                                                 (_g1859418611_
                                                  _g1859518615_)))))
                                       (_g1859418611_ _g1859518615_))
                                   (_g1859418611_ _g1859518615_)))))
                        (_g1859319211_
                         (|gerbil/core::<match>[1]#match-pattern-vars|
                          _hd18589_))))))
                 (_generate-simple-vector17688_
                  (lambda (_tgt18429_
                           _body18431_
                           _start18432_
                           _K18433_
                           _E18434_)
                    ((letrec ((_recur18436_
                               (lambda (_rest18439_ _off18441_)
                                 (let ((_g1844418456_
                                        (lambda (_g1844518452_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1844518452_))))
                                   (let ((_g1844318467_
                                          (lambda (_g1844518460_)
                                            ((lambda () _K18433_)))))
                                     (let ((_g1844218583_
                                            (lambda (_g1844518471_)
                                              (if (gx#stx-pair? _g1844518471_)
                                                  (let ((_e1844818474_
                                                         (gx#syntax-e
                                                          _g1844518471_)))
                                                    (let ((_hd1844918478_
                                                           (##car _e1844818474_))
                                                          (_tl1845018481_
                                                           (##cdr _e1844818474_)))
                                                      ((lambda (_L18484_
                                                                _L18486_)
                                                         (let ((_g1850118520_
                                                                (lambda (_g1850218516_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1850218516_))))
                   (let ((_g1850018579_
                          (lambda (_g1850218524_)
                            (if (gx#stx-pair? _g1850218524_)
                                (let ((_e1850618527_
                                       (gx#syntax-e _g1850218524_)))
                                  (let ((_hd1850718531_ (##car _e1850618527_))
                                        (_tl1850818534_ (##cdr _e1850618527_)))
                                    (if (gx#stx-pair? _tl1850818534_)
                                        (let ((_e1850918537_
                                               (gx#syntax-e _tl1850818534_)))
                                          (let ((_hd1851018541_
                                                 (##car _e1850918537_))
                                                (_tl1851118544_
                                                 (##cdr _e1850918537_)))
                                            (if (gx#stx-pair? _tl1851118544_)
                                                (let ((_e1851218547_
                                                       (gx#syntax-e
                                                        _tl1851118544_)))
                                                  (let ((_hd1851318551_
                                                         (##car _e1851218547_))
                                                        (_tl1851418554_
                                                         (##cdr _e1851218547_)))
                                                    (if (gx#stx-null?
                                                         _tl1851418554_)
                                                        ((lambda (_L18557_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18559_
                          _L18560_)
                   (let ()
                     (cons (gx#datum->syntax '#f 'let)
                           (cons (cons (cons _L18560_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##vector-ref)
                                                         (cons _L18559_
                                                               (cons _L18557_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())
                                 (cons (_generate117685_
                                        _L18560_
                                        _L18486_
                                        (_recur18436_
                                         _L18484_
                                         (fx1+ _off18441_))
                                        _E18434_)
                                       '())))))
                 _hd1851318551_
                 _hd1851018541_
                 _hd1850718531_)
                (_g1850118520_ _g1850218524_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1850118520_
                                                 _g1850218524_))))
                                        (_g1850118520_ _g1850218524_))))
                                (_g1850118520_ _g1850218524_)))))
                     (_g1850018579_
                      (list (gx#genident 'e) _tgt18429_ _off18441_)))))
               _tl1845018481_
               _hd1844918478_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1844318467_
                                                   _g1844518471_)))))
                                       (_g1844218583_ _rest18439_)))))))
                       _recur18436_)
                     _body18431_
                     _start18432_)))
                 (_generate-list-vector17689_
                  (lambda (_tgt18339_
                           _body18341_
                           _tgt->list18342_
                           _start18343_
                           _K18344_
                           _E18345_)
                    (let ((_g1834718366_
                           (lambda (_g1834818362_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1834818362_))))
                      (let ((_g1834618425_
                             (lambda (_g1834818370_)
                               (if (gx#stx-pair? _g1834818370_)
                                   (let ((_e1835218373_
                                          (gx#syntax-e _g1834818370_)))
                                     (let ((_hd1835318377_
                                            (##car _e1835218373_))
                                           (_tl1835418380_
                                            (##cdr _e1835218373_)))
                                       (if (gx#stx-pair? _tl1835418380_)
                                           (let ((_e1835518383_
                                                  (gx#syntax-e
                                                   _tl1835418380_)))
                                             (let ((_hd1835618387_
                                                    (##car _e1835518383_))
                                                   (_tl1835718390_
                                                    (##cdr _e1835518383_)))
                                               (if (gx#stx-pair?
                                                    _tl1835718390_)
                                                   (let ((_e1835818393_
                                                          (gx#syntax-e
                                                           _tl1835718390_)))
                                                     (let ((_hd1835918397_
                                                            (##car _e1835818393_))
                                                           (_tl1836018400_
                                                            (##cdr _e1835818393_)))
                                                       (if (gx#stx-null?
                                                            _tl1836018400_)
                                                           ((lambda (_L18403_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L18405_
                             _L18406_)
                      (let ()
                        (cons (gx#datum->syntax '#f 'let)
                              (cons (cons (cons _L18406_
                                                (cons (cons _L18403_
                                                            (cons _L18405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())
                                    (cons (_generate117685_
                                           _L18406_
                                           _body18341_
                                           _K18344_
                                           _E18345_)
                                          '())))))
                    _hd1835918397_
                    _hd1835618387_
                    _hd1835318377_)
                   (_g1834718366_ _g1834818370_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1834718366_
                                                    _g1834818370_))))
                                           (_g1834718366_ _g1834818370_))))
                                   (_g1834718366_ _g1834818370_)))))
                        (_g1834618425_
                         (list (gx#genident 'e)
                               _tgt18339_
                               _tgt->list18342_))))))
                 (_generate-struct17690_
                  (lambda (_info18072_
                           _tgt18074_
                           _body18075_
                           _K18076_
                           _E18077_)
                    (let ((_rtd18079_
                           (if (|gerbil/core::<MOP>::<MOP:2>[1]#extended-struct-info?|
                                _info18072_)
                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor|
                                _info18072_)
                               '#f)))
                      (let ((_fields18089_
                             ((letrec ((_lp18082_
                                        (lambda (_rtd18085_ _k18087_)
                                          (if _rtd18085_
                                              (_lp18082_
                                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor-e|
                                                (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-super|
                                                 _rtd18085_))
                                               (fx+ (length (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-fields|
                                                             _rtd18085_))
                                                    _k18087_))
                                              _k18087_))))
                                _lp18082_)
                              _rtd18079_
                              '0)))
                        (let ((_final?18092_
                               (if _rtd18079_
                                   (assgetq 'final:
                                            (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-plist|
                                             _rtd18079_))
                                   '#f)))
                          (let ((_g1809518103_
                                 (lambda (_g1809618099_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1809618099_))))
                            (let ((_g1809418335_
                                   (lambda (_g1809618107_)
                                     ((lambda (_L18110_)
                                        (let ()
                                          (let ((_g1812518133_
                                                 (lambda (_g1812618129_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1812618129_))))
                                            (let ((_g1812418331_
                                                   (lambda (_g1812618137_)
                                                     ((lambda (_L18140_)
                                                        (let ()
                                                          (let ((_g1815318161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1815418157_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1815418157_))))
                    (let ((_g1815218327_
                           (lambda (_g1815418165_)
                             ((lambda (_L18168_)
                                (let ()
                                  (let ()
                                    (let ((_g1818418205_
                                           (lambda (_g1818518201_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1818518201_))))
                                      (let ((_g1818318248_
                                             (lambda (_g1818518209_)
                                               (if (gx#stx-pair? _g1818518209_)
                                                   (let ((_e1819418212_
                                                          (gx#syntax-e
                                                           _g1818518209_)))
                                                     (let ((_hd1819518216_
                                                            (##car _e1819418212_))
                                                           (_tl1819618219_
                                                            (##cdr _e1819418212_)))
                                                       (if (gx#stx-datum?
                                                            _hd1819518216_)
                                                           (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1819518216_)
                               'list:)
                       (if (gx#stx-pair? _tl1819618219_)
                           (let ((_e1819718222_ (gx#syntax-e _tl1819618219_)))
                             (let ((_hd1819818226_ (##car _e1819718222_))
                                   (_tl1819918229_ (##cdr _e1819718222_)))
                               (if (gx#stx-null? _tl1819918229_)
                                   ((lambda (_L18232_)
                                      (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons _L18168_
                                                        (cons _L18140_
                                                              (cons _L18110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (_generate-list-vector17689_
                                                         _tgt18074_
                                                         _L18232_
                                                         (gx#datum->syntax
                                                          '#f
                                                          'struct->list)
                                                         '1
                                                         _K18076_
                                                         _E18077_)
                                                        (cons _E18077_ '())))))
                                    _hd1819818226_)
                                   (_g1818418205_ _g1818518209_))))
                           (_g1818418205_ _g1818518209_))
                       (_g1818418205_ _g1818518209_))
                   (_g1818418205_ _g1818518209_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1818418205_
                                                    _g1818518209_)))))
                                        (let ((_g1818218323_
                                               (lambda (_g1818518252_)
                                                 (if (gx#stx-pair?
                                                      _g1818518252_)
                                                     (let ((_e1818718255_
                                                            (gx#syntax-e
                                                             _g1818518252_)))
                                                       (let ((_hd1818818259_
                                                              (##car _e1818718255_))
                                                             (_tl1818918262_
                                                              (##cdr _e1818718255_)))
                                                         (if (gx#stx-datum?
                                                              _hd1818818259_)
                                                             (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _hd1818818259_)
                                 'simple:)
                         (if (gx#stx-pair? _tl1818918262_)
                             (let ((_e1819018265_
                                    (gx#syntax-e _tl1818918262_)))
                               (let ((_hd1819118269_ (##car _e1819018265_))
                                     (_tl1819218272_ (##cdr _e1819018265_)))
                                 (if (gx#stx-null? _tl1819218272_)
                                     ((lambda (_L18275_)
                                        (let ((_K18288_
                                               (_generate-simple-vector17688_
                                                _tgt18074_
                                                _L18275_
                                                '1
                                                _K18076_
                                                _E18077_)))
                                          (if (if _rtd18079_
                                                  (fx<= (gx#stx-length
                                                         _L18275_)
                                                        _fields18089_)
                                                  '#f)
                                              (cons (gx#datum->syntax '#f 'if)
                                                    (cons (cons _L18168_
                                                                (cons _L18140_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L18110_ '())))
                  (cons _K18288_ (cons _E18077_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g1829118299_
                                                     (lambda (_g1829218295_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1829218295_))))
                                                (let ((_g1829018319_
                                                       (lambda (_g1829218303_)
                                                         ((lambda (_L18306_)
                                                            (let ()
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'if)
                            (cons (cons (gx#datum->syntax '#f 'and)
                                        (cons (cons _L18168_
                                                    (cons _L18140_
                                                          (cons _L18110_ '())))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##fx<)
                                                          (cons _L18306_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     '##vector-length)
                                    (cons _L18110_ '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons _K18288_ (cons _E18077_ '()))))))
                  _g1829218303_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1829018319_
                                                   (gx#stx-length
                                                    _L18275_)))))))
                                      _hd1819118269_)
                                     (_g1818318248_ _g1818518252_))))
                             (_g1818318248_ _g1818518252_))
                         (_g1818318248_ _g1818518252_))
                     (_g1818318248_ _g1818518252_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1818318248_
                                                      _g1818518252_)))))
                                          (_g1818218323_ _body18075_)))))))
                              _g1815418165_))))
                      (_g1815218327_
                       (if _final?18092_
                           (gx#datum->syntax '#f 'direct-struct-instance?)
                           (gx#datum->syntax '#f 'struct-instance?)))))))
              _g1812618137_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1812418331_
                                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                                                _info18072_))))))
                                      _g1809618107_))))
                              (_g1809418335_ _tgt18074_))))))))
                 (_generate-class17691_
                  (lambda (_info17693_
                           _tgt17695_
                           _body17696_
                           _K17697_
                           _E17698_)
                    (let ((_rtd17700_
                           (if (|gerbil/core::<MOP>::<MOP:2>[1]#extended-class-info?|
                                _info17693_)
                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor|
                                _info17693_)
                               '#f)))
                      (let ((_known-slot?17702_ #!void))
                        (letrec ((_rtd-known-slot?17704_
                                  (lambda (_rtd18053_ _slot18055_)
                                    (if _rtd18053_
                                        (let ((_$e18057_
                                               (memq _slot18055_
                                                     (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-slots|
                                                      _rtd18053_))))
                                          (if _$e18057_
                                              _$e18057_
                                              (ormap (lambda (_g1806018062_)
                                                       (_rtd-known-slot?17704_
                                                        _g1806018062_
                                                        _slot18055_))
                                                     (map |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor-e|
                                                          (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-super|
                                                           _rtd18053_)))))
                                        '#f)))
                                 (_recur17705_
                                  (lambda (_klass17839_ _rest17841_)
                                    (let ((_g1784417860_
                                           (lambda (_g1784517856_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1784517856_))))
                                      (let ((_g1784317871_
                                             (lambda (_g1784517864_)
                                               ((lambda () _K17697_)))))
                                        (let ((_g1784218049_
                                               (lambda (_g1784517875_)
                                                 (if (gx#stx-pair?
                                                      _g1784517875_)
                                                     (let ((_e1784917878_
                                                            (gx#syntax-e
                                                             _g1784517875_)))
                                                       (let ((_hd1785017882_
                                                              (##car _e1784917878_))
                                                             (_tl1785117885_
                                                              (##cdr _e1784917878_)))
                                                         (if (gx#stx-pair?
                                                              _tl1785117885_)
                                                             (let ((_e1785217888_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1785117885_)))
                       (let ((_hd1785317892_ (##car _e1785217888_))
                             (_tl1785417895_ (##cdr _e1785217888_)))
                         ((lambda (_L17898_ _L17900_ _L17901_)
                            (let ((_g1791717925_
                                   (lambda (_g1791817921_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1791817921_))))
                              (let ((_g1791618045_
                                     (lambda (_g1791817929_)
                                       ((lambda (_L17932_)
                                          (let ()
                                            (let ((_g1794417952_
                                                   (lambda (_g1794517948_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1794517948_))))
                                              (let ((_g1794318041_
                                                     (lambda (_g1794517956_)
                                                       ((lambda (_L17959_)
                                                          (let ()
                                                            (let ((_g1797217980_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g1797317976_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1797317976_))))
                      (let ((_g1797118037_
                             (lambda (_g1797317984_)
                               ((lambda (_L17987_)
                                  (let ()
                                    (let ((_g1800018008_
                                           (lambda (_g1800118004_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1800118004_))))
                                      (let ((_g1799918033_
                                             (lambda (_g1800118012_)
                                               ((lambda (_L18015_)
                                                  (let ()
                                                    (let ((_K18028_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons (cons (cons _L18015_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##vector-ref)
                                                       (cons _L17932_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'fx1+)
                                 (cons _L17987_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons (_generate117685_
                                      _L18015_
                                      _L17900_
                                      (_recur17705_ _klass17839_ _L17898_)
                                      _E17698_)
                                     '())))))
              (let ()
                (if (_known-slot?17702_ _L17901_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _L17987_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'class-slot-offset)
                                                        (cons _L17959_
                                                              (cons _L17901_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons _K18028_ '())))
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _L17987_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'class-slot-offset)
                                                        (cons _L17959_
                                                              (cons _L17901_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons (cons (gx#datum->syntax '#f 'if)
                                            (cons _L17987_
                                                  (cons _K18028_
                                                        (cons _E17698_ '()))))
                                      '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1800118012_))))
                                        (_g1799918033_ (gx#genident 'e))))))
                                _g1797317984_))))
                        (_g1797118037_ (gx#genident 'slot))))))
                _g1794517956_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1794318041_
                                                 _klass17839_)))))
                                        _g1791817929_))))
                                (_g1791618045_ _tgt17695_))))
                          _tl1785417895_
                          _hd1785317892_
                          _hd1785017882_)))
                     (_g1784317871_ _g1784517875_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1784317871_
                                                      _g1784517875_)))))
                                          (_g1784218049_ _rest17841_)))))))
                          (begin
                            (set! _known-slot?17702_
                                  (if _rtd17700_
                                      (lambda (_key18066_)
                                        (let ((_slot18069_
                                               (keyword->symbol
                                                (gx#stx-e _key18066_))))
                                          (_rtd-known-slot?17704_
                                           _rtd17700_
                                           _slot18069_)))
                                      false))
                            (let ((_final?17703_
                                   (if _rtd17700_
                                       (assgetq 'final:
                                                (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-plist|
                                                 _rtd17700_))
                                       '#f)))
                              (let ((_g1770717715_
                                     (lambda (_g1770817711_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1770817711_))))
                                (let ((_g1770617835_
                                       (lambda (_g1770817719_)
                                         ((lambda (_L17722_)
                                            (let ()
                                              (let ((_g1773717745_
                                                     (lambda (_g1773817741_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1773817741_))))
                                                (let ((_g1773617831_
                                                       (lambda (_g1773817749_)
                                                         ((lambda (_L17752_)
                                                            (let ()
                                                              (let ((_g1776517773_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1776617769_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1776617769_))))
                        (let ((_g1776417827_
                               (lambda (_g1776617777_)
                                 ((lambda (_L17780_)
                                    (let ()
                                      (let ((_g1779317801_
                                             (lambda (_g1779417797_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1779417797_))))
                                        (let ((_g1779217823_
                                               (lambda (_g1779417805_)
                                                 ((lambda (_L17808_)
                                                    (let ()
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'if)
                                                              (cons (cons _L17808_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons _L17780_ (cons _L17752_ '())))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (cons _L17722_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'object-type)
                              (cons _L17752_ '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (_recur17705_
                                                     _L17722_
                                                     _body17696_)
                                                    '())))
                                  (cons _E17698_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1779417805_))))
                                          (_g1779217823_
                                           (if _final?17703_
                                               (gx#datum->syntax
                                                '#f
                                                'direct-class-instance?)
                                               (gx#datum->syntax
                                                '#f
                                                'class-instance?)))))))
                                  _g1776617777_))))
                          (_g1776417827_
                           (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                            _info17693_))))))
                  _g1773817749_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1773617831_
                                                   _tgt17695_)))))
                                          _g1770817719_))))
                                  (_g1770617835_
                                   (gx#genident 'class))))))))))))
          (_generate117685_ _tgt17680_ _ptree17681_ _K17682_ _E17683_))))
    (define |gerbil/core::<match>[1]#generate-match*|
      (lambda (_stx16677_ _tgt-lst16679_ _clauses16680_)
        (let ((_parse-body16682_
               (lambda (_hd-len17500_)
                 ((letrec ((_lp17503_
                            (lambda (_rest17506_ _r17508_)
                              (let ((_g1751117523_
                                     (lambda (_g1751217519_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1751217519_))))
                                (let ((_g1751017534_
                                       (lambda (_g1751217527_)
                                         ((lambda () _r17508_)))))
                                  (let ((_g1750917674_
                                         (lambda (_g1751217538_)
                                           (if (gx#stx-pair? _g1751217538_)
                                               (let ((_e1751517541_
                                                      (gx#syntax-e
                                                       _g1751217538_)))
                                                 (let ((_hd1751617545_
                                                        (##car _e1751517541_))
                                                       (_tl1751717548_
                                                        (##cdr _e1751517541_)))
                                                   ((lambda (_L17551_ _L17553_)
                                                      (let ((_g1757017586_
                                                             (lambda (_g1757117582_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1757117582_))))
                                                        (let ((_g1756917597_
                                                               (lambda (_g1757117590_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal match clause"
                             _stx16677_
                             _L17553_))))))
                  (let ((_g1756817638_
                         (lambda (_g1757117601_)
                           (if (gx#stx-pair? _g1757117601_)
                               (let ((_e1757817604_
                                      (gx#syntax-e _g1757117601_)))
                                 (let ((_hd1757917608_ (##car _e1757817604_))
                                       (_tl1758017611_ (##cdr _e1757817604_)))
                                   ((lambda (_L17614_ _L17616_)
                                      (if (if (gx#stx-list? _L17616_)
                                              (if (fx= (gx#stx-length _L17616_)
                                                       _hd-len17500_)
                                                  (if (gx#stx-list? _L17614_)
                                                      (not (gx#stx-null?
                                                            _L17614_))
                                                      '#f)
                                                  '#f)
                                              '#f)
                                          (_lp17503_
                                           _L17551_
                                           (cons (cons (gx#genident 'try-match)
                                                       (cons (gx#stx-map
                                                              (lambda (_g1762817630_)
                                                                (|gerbil/core::<match>[1]#parse-match-pattern|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1762817630_
                         _stx16677_))
                      _L17616_)
                     (cons (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'begin) _L17614_)
                            (let ((_$e17634_ (gx#stx-source _L17553_)))
                              (if _$e17634_
                                  _$e17634_
                                  (gx#stx-source _stx16677_))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r17508_))
                                          (_g1756917597_ _g1757117601_)))
                                    _tl1758017611_
                                    _hd1757917608_)))
                               (_g1756917597_ _g1757117601_)))))
                    (let ((_g1756717670_
                           (lambda (_g1757117642_)
                             (if (gx#stx-pair? _g1757117642_)
                                 (let ((_e1757317645_
                                        (gx#syntax-e _g1757117642_)))
                                   (let ((_hd1757417649_ (##car _e1757317645_))
                                         (_tl1757517652_
                                          (##cdr _e1757317645_)))
                                     (if (gx#identifier? _hd1757417649_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core::<match>[1]#_g28592_|
                                              _hd1757417649_)
                                             ((lambda (_L17655_)
                                                (if (if (gx#stx-list? _L17655_)
                                                        (not (gx#stx-null?
                                                              _L17655_))
                                                        '#f)
                                                    (if (gx#stx-null? _L17551_)
                                                        (cons (cons (gx#genident
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             'else)
                            (cons '#f
                                  (cons (gx#stx-wrap-source
                                         (cons (gx#datum->syntax '#f 'begin)
                                               _L17655_)
                                         (let ((_$e17666_
                                                (gx#stx-source _L17553_)))
                                           (if _$e17666_
                                               _$e17666_
                                               (gx#stx-source _stx16677_))))
                                        '())))
                      _r17508_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; misplaced else"
                 _stx16677_
                 _L17553_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1756817638_
                                                     _g1757117642_)))
                                              _tl1757517652_)
                                             (_g1756817638_ _g1757117642_))
                                         (_g1756817638_ _g1757117642_))))
                                 (_g1756817638_ _g1757117642_)))))
                      (_g1756717670_ _L17553_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1751717548_
                                                    _hd1751617545_)))
                                               (_g1751017534_
                                                _g1751217538_)))))
                                    (_g1750917674_ _rest17506_)))))))
                    _lp17503_)
                  _clauses16680_
                  '()))))
          (let ((_generate116686_
                 (lambda (_clause16688_ _body16690_ _E16691_)
                   ((letrec ((_recur16693_
                              (lambda (_rest16696_ _rest-targets16698_)
                                (let ((_g1670116713_
                                       (lambda (_g1670216709_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1670216709_))))
                                  (let ((_g1670016724_
                                         (lambda (_g1670216717_)
                                           ((lambda () _body16690_)))))
                                    (let ((_g1669916995_
                                           (lambda (_g1670216728_)
                                             (if (gx#stx-pair? _g1670216728_)
                                                 (let ((_e1670516731_
                                                        (gx#syntax-e
                                                         _g1670216728_)))
                                                   (let ((_hd1670616735_
                                                          (##car _e1670516731_))
                                                         (_tl1670716738_
                                                          (##cdr _e1670516731_)))
                                                     ((lambda (_L16741_
                                                               _L16743_)
                                                        (let ((_g1676016772_
                                                               (lambda (_g1676116768_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1676116768_))))
                  (let ((_g1675916991_
                         (lambda (_g1676116776_)
                           (if (gx#stx-pair? _g1676116776_)
                               (let ((_e1676416779_
                                      (gx#syntax-e _g1676116776_)))
                                 (let ((_hd1676516783_ (##car _e1676416779_))
                                       (_tl1676616786_ (##cdr _e1676416779_)))
                                   ((lambda (_L16789_ _L16791_)
                                      (let ((_g1680316811_
                                             (lambda (_g1680416807_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1680416807_))))
                                        (let ((_g1680216987_
                                               (lambda (_g1680416815_)
                                                 ((lambda (_L16818_)
                                                    (let ()
                                                      (let ((_g1683016847_
                                                             (lambda (_g1683116843_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1683116843_))))
                                                        (let ((_g1682916983_
                                                               (lambda (_g1683116851_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#stx-pair/null? _g1683116851_)
                             (if (fx>= (gx#stx-length _g1683116851_) '0)
                                 (let ((_g28590_
                                        (gx#syntax-split-splice
                                         _g1683116851_
                                         '0)))
                                   (begin
                                     (let ((_g28591_ (values-count _g28590_)))
                                       (if (not (fx= _g28591_ 2))
                                           (error "Context expects 2 values"
                                                  _g28591_)))
                                     (let ((_target1683316854_
                                            (values-ref _g28590_ 0))
                                           (_tl1683516857_
                                            (values-ref _g28590_ 1)))
                                       (if (gx#stx-null? _tl1683516857_)
                                           (letrec ((_loop1683616860_
                                                     (lambda (_hd1683416864_
                                                              _var1684016867_)
                                                       (if (gx#stx-pair?
                                                            _hd1683416864_)
                                                           (let ((_e1683716870_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1683416864_)))
                     (let ((_lp-hd1683816874_ (##car _e1683716870_))
                           (_lp-tl1683916877_ (##cdr _e1683716870_)))
                       (_loop1683616860_
                        _lp-tl1683916877_
                        (cons _lp-hd1683816874_ _var1684016867_))))
                   (let ((_var1684116880_ (reverse _var1684016867_)))
                     ((lambda (_L16884_)
                        (let ()
                          (let ((_g1690116909_
                                 (lambda (_g1690216905_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1690216905_))))
                            (let ((_g1690016979_
                                   (lambda (_g1690216913_)
                                     ((lambda (_L16916_)
                                        (let ()
                                          (let ((_g1692916937_
                                                 (lambda (_g1693016933_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1693016933_))))
                                            (let ((_g1692816967_
                                                   (lambda (_g1693016941_)
                                                     ((lambda (_L16944_)
                                                        (let ()
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let)
                          (cons (cons (cons _L16818_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons (begin
                                                                '#!void
                                                                (foldr (lambda (_g1695816961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1695916964_)
                                 (cons _g1695816961_ _g1695916964_))
                               '()
                               _L16884_))
                      (cons _L16916_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons _L16944_ '()))))))
              _g1693016941_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1692816967_
                                               (|gerbil/core::<match>[1]#generate-match1|
                                                _stx16677_
                                                _L16791_
                                                _L16743_
                                                (cons _L16818_
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g1697016973_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1697116976_)
                         (cons _g1697016973_ _g1697116976_))
                       '()
                       _L16884_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _E16691_))))))
                                      _g1690216913_))))
                              (_g1690016979_
                               (_recur16693_ _L16741_ _L16789_))))))
                      _var1684116880_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1683616860_
                                              _target1683316854_
                                              '()))
                                           (_g1683016847_ _g1683116851_)))))
                                 (_g1683016847_ _g1683116851_))
                             (_g1683016847_ _g1683116851_)))))
                  (_g1682916983_
                   (|gerbil/core::<match>[1]#match-pattern-vars| _L16743_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1680416815_))))
                                          (_g1680216987_ (gx#genident 'K)))))
                                    _tl1676616786_
                                    _hd1676516783_)))
                               (_g1676016772_ _g1676116776_)))))
                    (_g1675916991_ _rest-targets16698_))))
              _tl1670716738_
              _hd1670616735_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1670016724_
                                                  _g1670216728_)))))
                                      (_g1669916995_ _rest16696_)))))))
                      _recur16693_)
                    _clause16688_
                    _tgt-lst16679_))))
            (letrec ((_generate-clauses16685_
                      (lambda (_rest16999_ _E17001_)
                        (let ((_g1700517021_
                               (lambda (_g1700617017_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1700617017_))))
                          (let ((_g1700417032_
                                 (lambda (_g1700617025_)
                                   ((lambda () _E17001_)))))
                            (let ((_g1700317208_
                                   (lambda (_g1700617036_)
                                     (if (gx#stx-pair? _g1700617036_)
                                         (let ((_e1701317039_
                                                (gx#syntax-e _g1700617036_)))
                                           (let ((_hd1701417043_
                                                  (##car _e1701317039_))
                                                 (_tl1701517046_
                                                  (##cdr _e1701317039_)))
                                             ((lambda (_L17049_ _L17051_)
                                                (let ((_g1706417083_
                                                       (lambda (_g1706517079_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1706517079_))))
                                                  (let ((_g1706317204_
                                                         (lambda (_g1706517087_)
                                                           (if (gx#stx-pair?
                                                                _g1706517087_)
                                                               (let ((_e1706917090_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1706517087_)))
                         (let ((_hd1707017094_ (##car _e1706917090_))
                               (_tl1707117097_ (##cdr _e1706917090_)))
                           (if (gx#stx-pair? _tl1707117097_)
                               (let ((_e1707217100_
                                      (gx#syntax-e _tl1707117097_)))
                                 (let ((_hd1707317104_ (##car _e1707217100_))
                                       (_tl1707417107_ (##cdr _e1707217100_)))
                                   (if (gx#stx-pair? _tl1707417107_)
                                       (let ((_e1707517110_
                                              (gx#syntax-e _tl1707417107_)))
                                         (let ((_hd1707617114_
                                                (##car _e1707517110_))
                                               (_tl1707717117_
                                                (##cdr _e1707517110_)))
                                           (if (gx#stx-null? _tl1707717117_)
                                               ((lambda (_L17120_
                                                         _L17122_
                                                         _L17123_)
                                                  (let ((_g1714017155_
                                                         (lambda (_g1714117151_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g1714117151_))))
                                                    (let ((_g1713917200_
                                                           (lambda (_g1714117159_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1714117159_)
                         (let ((_e1714417162_ (gx#syntax-e _g1714117159_)))
                           (let ((_hd1714517166_ (##car _e1714417162_))
                                 (_tl1714617169_ (##cdr _e1714417162_)))
                             (if (gx#stx-pair? _tl1714617169_)
                                 (let ((_e1714717172_
                                        (gx#syntax-e _tl1714617169_)))
                                   (let ((_hd1714817176_ (##car _e1714717172_))
                                         (_tl1714917179_
                                          (##cdr _e1714717172_)))
                                     (if (gx#stx-null? _tl1714917179_)
                                         ((lambda (_L17182_ _L17184_)
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L17123_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f 'lambda)
                                          (cons '() (cons _L17184_ '())))
                                    '()))
                        '())
                  (cons _L17182_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd1714817176_
                                          _hd1714517166_)
                                         (_g1714017155_ _g1714117159_))))
                                 (_g1714017155_ _g1714117159_))))
                         (_g1714017155_ _g1714117159_)))))
              (_g1713917200_
               (list (if (gx#stx-e _L17122_)
                         (_generate116686_ _L17122_ _L17120_ _E17001_)
                         _L17120_)
                     (_generate-clauses16685_
                      _L17049_
                      (cons _L17123_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1707617114_
                                                _hd1707317104_
                                                _hd1707017094_)
                                               (_g1706417083_ _g1706517087_))))
                                       (_g1706417083_ _g1706517087_))))
                               (_g1706417083_ _g1706517087_))))
                       (_g1706417083_ _g1706517087_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1706317204_ _L17051_))))
                                              _tl1701517046_
                                              _hd1701417043_)))
                                         (_g1700417032_ _g1700617036_)))))
                              (let ((_g1700217313_
                                     (lambda (_g1700617212_)
                                       (if (gx#stx-pair? _g1700617212_)
                                           (let ((_e1700817215_
                                                  (gx#syntax-e _g1700617212_)))
                                             (let ((_hd1700917219_
                                                    (##car _e1700817215_))
                                                   (_tl1701017222_
                                                    (##cdr _e1700817215_)))
                                               (if (gx#stx-null?
                                                    _tl1701017222_)
                                                   ((lambda (_L17225_)
                                                      (let ((_g1723617254_
                                                             (lambda (_g1723717250_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1723717250_))))
                                                        (let ((_g1723517309_
                                                               (lambda (_g1723717258_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#stx-pair? _g1723717258_)
                             (let ((_e1724017261_ (gx#syntax-e _g1723717258_)))
                               (let ((_hd1724117265_ (##car _e1724017261_))
                                     (_tl1724217268_ (##cdr _e1724017261_)))
                                 (if (gx#stx-pair? _tl1724217268_)
                                     (let ((_e1724317271_
                                            (gx#syntax-e _tl1724217268_)))
                                       (let ((_hd1724417275_
                                              (##car _e1724317271_))
                                             (_tl1724517278_
                                              (##cdr _e1724317271_)))
                                         (if (gx#stx-pair? _tl1724517278_)
                                             (let ((_e1724617281_
                                                    (gx#syntax-e
                                                     _tl1724517278_)))
                                               (let ((_hd1724717285_
                                                      (##car _e1724617281_))
                                                     (_tl1724817288_
                                                      (##cdr _e1724617281_)))
                                                 (if (gx#stx-null?
                                                      _tl1724817288_)
                                                     ((lambda (_L17291_
                                                               _L17293_)
                                                        (if (gx#stx-e _L17293_)
                                                            (_generate116686_
                                                             _L17293_
                                                             _L17291_
                                                             _E17001_)
                                                            _L17291_))
                                                      _hd1724717285_
                                                      _hd1724417275_)
                                                     (_g1723617254_
                                                      _g1723717258_))))
                                             (_g1723617254_ _g1723717258_))))
                                     (_g1723617254_ _g1723717258_))))
                             (_g1723617254_ _g1723717258_)))))
                  (_g1723517309_ _L17225_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1700917219_)
                                                   (_g1700317208_
                                                    _g1700617212_))))
                                           (_g1700317208_ _g1700617212_)))))
                                (_g1700217313_ _rest16999_))))))))
              (let ((_generate-body16684_
                     (lambda (_body17317_)
                       (let ((_g1732017328_
                              (lambda (_g1732117324_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1732117324_))))
                         (let ((_g1731917496_
                                (lambda (_g1732117332_)
                                  ((lambda (_L17335_)
                                     (let ()
                                       (let ((_g1734717364_
                                              (lambda (_g1734817360_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g1734817360_))))
                                         (let ((_g1734617492_
                                                (lambda (_g1734817368_)
                                                  (if (gx#stx-pair/null?
                                                       _g1734817368_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1734817368_)
                        '0)
                  (let ((_g28588_ (gx#syntax-split-splice _g1734817368_ '0)))
                    (begin
                      (let ((_g28589_ (values-count _g28588_)))
                        (if (not (fx= _g28589_ 2))
                            (error "Context expects 2 values" _g28589_)))
                      (let ((_target1735017371_ (values-ref _g28588_ 0))
                            (_tl1735217374_ (values-ref _g28588_ 1)))
                        (if (gx#stx-null? _tl1735217374_)
                            (letrec ((_loop1735317377_
                                      (lambda (_hd1735117381_
                                               _target1735717384_)
                                        (if (gx#stx-pair? _hd1735117381_)
                                            (let ((_e1735417387_
                                                   (gx#syntax-e
                                                    _hd1735117381_)))
                                              (let ((_lp-hd1735517391_
                                                     (##car _e1735417387_))
                                                    (_lp-tl1735617394_
                                                     (##cdr _e1735417387_)))
                                                (_loop1735317377_
                                                 _lp-tl1735617394_
                                                 (cons _lp-hd1735517391_
                                                       _target1735717384_))))
                                            (let ((_target1735817397_
                                                   (reverse _target1735717384_)))
                                              ((lambda (_L17401_)
                                                 (let ()
                                                   (let ((_g1741817426_
                                                          (lambda (_g1741917422_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1741917422_))))
                                                     (let ((_g1741717480_
                                                            (lambda (_g1741917430_)
                                                              ((lambda (_L17433_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((_g1744617454_
                                  (lambda (_g1744717450_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1744717450_))))
                             (let ((_g1744517476_
                                    (lambda (_g1744717458_)
                                      ((lambda (_L17461_)
                                         (let ()
                                           (let ()
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _L17335_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L17433_ '()))
                       '())
                 (cons _L17461_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _g1744717458_))))
                               (_g1744517476_
                                (_generate-clauses16685_
                                 _body17317_
                                 (cons _L17335_ '())))))))
                       _g1741917430_))))
               (_g1741717480_
                (gx#stx-wrap-source
                 (cons (gx#datum->syntax '#f 'lambda)
                       (cons '()
                             (cons (cons (gx#datum->syntax '#f 'error)
                                         (cons '"No clause matching"
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g1748317486_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1748417489_)
                  (cons _g1748317486_ _g1748417489_))
                '()
                _L17401_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '())))
                 (gx#stx-source _stx16677_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _target1735817397_))))))
                              (_loop1735317377_ _target1735017371_ '()))
                            (_g1734717364_ _g1734817368_)))))
                  (_g1734717364_ _g1734817368_))
              (_g1734717364_ _g1734817368_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1734617492_ _tgt-lst16679_)))))
                                   _g1732117332_))))
                           (_g1731917496_ (gx#genident 'E)))))))
                (_generate-body16684_
                 (_parse-body16682_ (gx#stx-length _tgt-lst16679_)))))))))
    (define |gerbil/core::<match>[1]#generate-match|
      (lambda (_stx16579_ _tgt16581_ _clauses16582_)
        (let ((_reclause16584_
               (lambda (_clause16587_)
                 (let ((_g1659216607_
                        (lambda (_g1659316603_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1659316603_))))
                   (let ((_g1659116618_
                          (lambda (_g1659316611_)
                            ((lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal match clause"
                                _stx16579_
                                _clause16587_))))))
                     (let ((_g1659016652_
                            (lambda (_g1659316622_)
                              (if (gx#stx-pair? _g1659316622_)
                                  (let ((_e1659916625_
                                         (gx#syntax-e _g1659316622_)))
                                    (let ((_hd1660016629_
                                           (##car _e1659916625_))
                                          (_tl1660116632_
                                           (##cdr _e1659916625_)))
                                      ((lambda (_L16635_ _L16637_)
                                         (gx#stx-wrap-source
                                          (cons (cons _L16637_ '()) _L16635_)
                                          (gx#stx-source
                                           (gx#datum->syntax '#f 'clause))))
                                       _tl1660116632_
                                       _hd1660016629_)))
                                  (_g1659116618_ _g1659316622_)))))
                       (let ((_g1658916673_
                              (lambda (_g1659316656_)
                                (if (gx#stx-pair? _g1659316656_)
                                    (let ((_e1659416659_
                                           (gx#syntax-e _g1659316656_)))
                                      (let ((_hd1659516663_
                                             (##car _e1659416659_))
                                            (_tl1659616666_
                                             (##cdr _e1659416659_)))
                                        (if (gx#identifier? _hd1659516663_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<match>[1]#_g28593_|
                                                 _hd1659516663_)
                                                ((lambda () _clause16587_))
                                                (_g1659016652_ _g1659316656_))
                                            (_g1659016652_ _g1659316656_))))
                                    (_g1659016652_ _g1659316656_)))))
                         (_g1658916673_ _clause16587_))))))))
          (|gerbil/core::<match>[1]#generate-match*|
           _stx16579_
           (cons _tgt16581_ '())
           (gx#stx-map _reclause16584_ _clauses16582_)))))
    (define |gerbil/core::<match>[:0:]#match|
      (lambda (_stx23557_)
        (let ((_g2356223591_
               (lambda (_g2356323587_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2356323587_))))
          (let ((_g2356123699_
                 (lambda (_g2356323595_)
                   (if (gx#stx-pair? _g2356323595_)
                       (let ((_e2358023598_ (gx#syntax-e _g2356323595_)))
                         (let ((_hd2358123602_ (##car _e2358023598_))
                               (_tl2358223605_ (##cdr _e2358023598_)))
                           (if (gx#stx-pair? _tl2358223605_)
                               (let ((_e2358323608_
                                      (gx#syntax-e _tl2358223605_)))
                                 (let ((_hd2358423612_ (##car _e2358323608_))
                                       (_tl2358523615_ (##cdr _e2358323608_)))
                                   ((lambda (_L23618_ _L23620_)
                                      (if (gx#stx-list? _L23618_)
                                          (let ((_g2363423642_
                                                 (lambda (_g2363523638_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2363523638_))))
                                            (let ((_g2363323695_
                                                   (lambda (_g2363523646_)
                                                     ((lambda (_L23649_)
                                                        (let ()
                                                          (let ((_g2366123669_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2366223665_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2366223665_))))
                    (let ((_g2366023691_
                           (lambda (_g2366223673_)
                             ((lambda (_L23676_)
                                (let ()
                                  (let ()
                                    (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (cons _L23649_
                                                            (cons _L23620_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _L23676_ '()))))))
                              _g2366223673_))))
                      (_g2366023691_
                       (|gerbil/core::<match>[1]#generate-match|
                        _stx23557_
                        _L23649_
                        _L23618_))))))
              _g2363523646_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2363323695_
                                               (gx#genident _L23620_))))
                                          (_g2356223591_ _g2356323595_)))
                                    _tl2358523615_
                                    _hd2358423612_)))
                               (_g2356223591_ _g2356323595_))))
                       (_g2356223591_ _g2356323595_)))))
            (let ((_g2356023804_
                   (lambda (_g2356323703_)
                     (if (gx#stx-pair? _g2356323703_)
                         (let ((_e2357223706_ (gx#syntax-e _g2356323703_)))
                           (let ((_hd2357323710_ (##car _e2357223706_))
                                 (_tl2357423713_ (##cdr _e2357223706_)))
                             (if (gx#stx-pair? _tl2357423713_)
                                 (let ((_e2357523716_
                                        (gx#syntax-e _tl2357423713_)))
                                   (let ((_hd2357623720_ (##car _e2357523716_))
                                         (_tl2357723723_
                                          (##cdr _e2357523716_)))
                                     (if (gx#identifier? _hd2357623720_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core::<match>[1]#_g28594_|
                                              _hd2357623720_)
                                             ((lambda (_L23726_)
                                                (if (gx#stx-list? _L23726_)
                                                    (let ((_g2373923747_
                                                           (lambda (_g2374023743_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g2374023743_))))
                                                      (let ((_g2373823800_
                                                             (lambda (_g2374023751_)
                                                               ((lambda (_L23754_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let ((_g2376623774_
                                   (lambda (_g2376723770_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2376723770_))))
                              (let ((_g2376523796_
                                     (lambda (_g2376723778_)
                                       ((lambda (_L23781_)
                                          (let ()
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons _L23754_
                                                          (cons _L23781_
                                                                '()))))))
                                        _g2376723778_))))
                                (_g2376523796_
                                 (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'match)
                                        (cons _L23754_ _L23726_))
                                  (gx#stx-source _stx23557_)))))))
                        _g2374023751_))))
                (_g2373823800_ (gx#genident 'args))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2356123699_
                                                     _g2356323703_)))
                                              _tl2357723723_)
                                             (_g2356123699_ _g2356323703_))
                                         (_g2356123699_ _g2356323703_))))
                                 (_g2356123699_ _g2356323703_))))
                         (_g2356123699_ _g2356323703_)))))
              (let ((_g2355923909_
                     (lambda (_g2356323808_)
                       (if (gx#stx-pair? _g2356323808_)
                           (let ((_e2356523811_ (gx#syntax-e _g2356323808_)))
                             (let ((_hd2356623815_ (##car _e2356523811_))
                                   (_tl2356723818_ (##cdr _e2356523811_)))
                               (if (gx#stx-pair? _tl2356723818_)
                                   (let ((_e2356823821_
                                          (gx#syntax-e _tl2356723818_)))
                                     (let ((_hd2356923825_
                                            (##car _e2356823821_))
                                           (_tl2357023828_
                                            (##cdr _e2356823821_)))
                                       (if (gx#identifier? _hd2356923825_)
                                           (if (gx#free-identifier=?
                                                |gerbil/core::<match>[1]#_g28595_|
                                                _hd2356923825_)
                                               ((lambda (_L23831_)
                                                  (if (gx#stx-list? _L23831_)
                                                      (let ((_g2384423852_
                                                             (lambda (_g2384523848_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2384523848_))))
                                                        (let ((_g2384323905_
                                                               (lambda (_g2384523856_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L23859_)
                            (let ()
                              (let ((_g2387123879_
                                     (lambda (_g2387223875_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g2387223875_))))
                                (let ((_g2387023901_
                                       (lambda (_g2387223883_)
                                         ((lambda (_L23886_)
                                            (let ()
                                              (let ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L23859_ '())
                                                            (cons _L23886_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g2387223883_))))
                                  (_g2387023901_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _L23859_ _L23831_))
                                    (gx#stx-source _stx23557_)))))))
                          _g2384523856_))))
                  (_g2384323905_ (gx#genident 'e))))
              (_g2356023804_ _g2356323808_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl2357023828_)
                                               (_g2356023804_ _g2356323808_))
                                           (_g2356023804_ _g2356323808_))))
                                   (_g2356023804_ _g2356323808_))))
                           (_g2356023804_ _g2356323808_)))))
                (_g2355923909_ _stx23557_)))))))
    (define |gerbil/core::<match>[:0:]#match*|
      (lambda (_stx23913_)
        (let ((_g2391623940_
               (lambda (_g2391723936_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2391723936_))))
          (let ((_g2391524152_
                 (lambda (_g2391723944_)
                   (if (gx#stx-pair? _g2391723944_)
                       (let ((_e2392023947_ (gx#syntax-e _g2391723944_)))
                         (let ((_hd2392123951_ (##car _e2392023947_))
                               (_tl2392223954_ (##cdr _e2392023947_)))
                           (if (gx#stx-pair? _tl2392223954_)
                               (let ((_e2392323957_
                                      (gx#syntax-e _tl2392223954_)))
                                 (let ((_hd2392423961_ (##car _e2392323957_))
                                       (_tl2392523964_ (##cdr _e2392323957_)))
                                   (if (gx#stx-pair/null? _hd2392423961_)
                                       (if (fx>= (gx#stx-length _hd2392423961_)
                                                 '0)
                                           (let ((_g28596_
                                                  (gx#syntax-split-splice
                                                   _hd2392423961_
                                                   '0)))
                                             (begin
                                               (let ((_g28597_
                                                      (values-count _g28596_)))
                                                 (if (not (fx= _g28597_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28597_)))
                                               (let ((_target2392623967_
                                                      (values-ref _g28596_ 0))
                                                     (_tl2392823970_
                                                      (values-ref _g28596_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl2392823970_)
                                                     (letrec ((_loop2392923973_
                                                               (lambda (_hd2392723977_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _e2393323980_)
                         (if (gx#stx-pair? _hd2392723977_)
                             (let ((_e2393023983_
                                    (gx#syntax-e _hd2392723977_)))
                               (let ((_lp-hd2393123987_ (##car _e2393023983_))
                                     (_lp-tl2393223990_ (##cdr _e2393023983_)))
                                 (_loop2392923973_
                                  _lp-tl2393223990_
                                  (cons _lp-hd2393123987_ _e2393323980_))))
                             (let ((_e2393423993_ (reverse _e2393323980_)))
                               ((lambda (_L23997_ _L23999_)
                                  (if (gx#stx-list? _L23997_)
                                      (let ((_g2401724034_
                                             (lambda (_g2401824030_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2401824030_))))
                                        (let ((_g2401624140_
                                               (lambda (_g2401824038_)
                                                 (if (gx#stx-pair/null?
                                                      _g2401824038_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2401824038_)
                                                               '0)
                                                         (let ((_g28598_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2401824038_
                         '0)))
                   (begin
                     (let ((_g28599_ (values-count _g28598_)))
                       (if (not (fx= _g28599_ 2))
                           (error "Context expects 2 values" _g28599_)))
                     (let ((_target2402024041_ (values-ref _g28598_ 0))
                           (_tl2402224044_ (values-ref _g28598_ 1)))
                       (if (gx#stx-null? _tl2402224044_)
                           (letrec ((_loop2402324047_
                                     (lambda (_hd2402124051_ _$e2402724054_)
                                       (if (gx#stx-pair? _hd2402124051_)
                                           (let ((_e2402424057_
                                                  (gx#syntax-e
                                                   _hd2402124051_)))
                                             (let ((_lp-hd2402524061_
                                                    (##car _e2402424057_))
                                                   (_lp-tl2402624064_
                                                    (##cdr _e2402424057_)))
                                               (_loop2402324047_
                                                _lp-tl2402624064_
                                                (cons _lp-hd2402524061_
                                                      _$e2402724054_))))
                                           (let ((_$e2402824067_
                                                  (reverse _$e2402724054_)))
                                             ((lambda (_L24071_)
                                                (let ()
                                                  (let ((_g2408724095_
                                                         (lambda (_g2408824091_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2408824091_))))
                                                    (let ((_g2408624128_
                                                           (lambda (_g2408824099_)
                                                             ((lambda (_L24102_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (begin
                                          (gx#syntax-check-splice-targets
                                           _L23999_
                                           _L24071_)
                                          (foldr (lambda (_g2411624120_
                                                          _g2411724123_
                                                          _g2411824125_)
                                                   (cons (cons _g2411724123_
                                                               (cons _g2411624120_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _g2411824125_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L23999_
                                                 _L24071_))
                                        (cons _L24102_ '()))))))
                      _g2408824099_))))
              (_g2408624128_
               (|gerbil/core::<match>[1]#generate-match*|
                _stx23913_
                (begin
                  '#!void
                  (foldr (lambda (_g2413124134_ _g2413224137_)
                           (cons _g2413124134_ _g2413224137_))
                         '()
                         _L24071_))
                _L23997_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _$e2402824067_))))))
                             (_loop2402324047_ _target2402024041_ '()))
                           (_g2401724034_ _g2401824038_)))))
                 (_g2401724034_ _g2401824038_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2401724034_
                                                      _g2401824038_)))))
                                          (_g2401624140_
                                           (gx#gentemps
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g2414324146_
                                                              _g2414424149_)
                                                       (cons _g2414324146_
                                                             _g2414424149_))
                                                     '()
                                                     _L23999_))))))
                                      (_g2391623940_ _g2391723944_)))
                                _tl2392523964_
                                _e2393423993_))))))
               (_loop2392923973_ _target2392623967_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2391623940_
                                                      _g2391723944_)))))
                                           (_g2391623940_ _g2391723944_))
                                       (_g2391623940_ _g2391723944_))))
                               (_g2391623940_ _g2391723944_))))
                       (_g2391623940_ _g2391723944_)))))
            (_g2391524152_ _stx23913_)))))
    (define |gerbil/core::<match>[:0:]#with|
      (lambda (_$stx24158_)
        (let ((_g2416424247_
               (lambda (_g2416524243_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2416524243_))))
          (let ((_g2416324408_
                 (lambda (_g2416524251_)
                   (if (gx#stx-pair? _g2416524251_)
                       (let ((_e2421024254_ (gx#syntax-e _g2416524251_)))
                         (let ((_hd2421124258_ (##car _e2421024254_))
                               (_tl2421224261_ (##cdr _e2421024254_)))
                           (if (gx#stx-pair? _tl2421224261_)
                               (let ((_e2421324264_
                                      (gx#syntax-e _tl2421224261_)))
                                 (let ((_hd2421424268_ (##car _e2421324264_))
                                       (_tl2421524271_ (##cdr _e2421324264_)))
                                   (if (gx#stx-pair/null? _hd2421424268_)
                                       (if (fx>= (gx#stx-length _hd2421424268_)
                                                 '0)
                                           (let ((_g28600_
                                                  (gx#syntax-split-splice
                                                   _hd2421424268_
                                                   '0)))
                                             (begin
                                               (let ((_g28601_
                                                      (values-count _g28600_)))
                                                 (if (not (fx= _g28601_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28601_)))
                                               (let ((_target2421624274_
                                                      (values-ref _g28600_ 0))
                                                     (_tl2421824277_
                                                      (values-ref _g28600_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl2421824277_)
                                                     (letrec ((_loop2421924280_
                                                               (lambda (_hd2421724284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr2422324287_
                                _hd2422424289_)
                         (if (gx#stx-pair? _hd2421724284_)
                             (let ((_e2422024292_
                                    (gx#syntax-e _hd2421724284_)))
                               (let ((_lp-hd2422124296_ (##car _e2422024292_))
                                     (_lp-tl2422224299_ (##cdr _e2422024292_)))
                                 (if (gx#stx-pair? _lp-hd2422124296_)
                                     (let ((_e2422724302_
                                            (gx#syntax-e _lp-hd2422124296_)))
                                       (let ((_hd2422824306_
                                              (##car _e2422724302_))
                                             (_tl2422924309_
                                              (##cdr _e2422724302_)))
                                         (if (gx#stx-pair? _tl2422924309_)
                                             (let ((_e2423024312_
                                                    (gx#syntax-e
                                                     _tl2422924309_)))
                                               (let ((_hd2423124316_
                                                      (##car _e2423024312_))
                                                     (_tl2423224319_
                                                      (##cdr _e2423024312_)))
                                                 (if (gx#stx-null?
                                                      _tl2423224319_)
                                                     (_loop2421924280_
                                                      _lp-tl2422224299_
                                                      (cons _hd2423124316_
                                                            _expr2422324287_)
                                                      (cons _hd2422824306_
                                                            _hd2422424289_))
                                                     (_g2416424247_
                                                      _g2416524251_))))
                                             (_g2416424247_ _g2416524251_))))
                                     (_g2416424247_ _g2416524251_))))
                             (let ((_expr2422524322_
                                    (reverse _expr2422324287_))
                                   (_hd2422624325_ (reverse _hd2422424289_)))
                               (if (gx#stx-pair/null? _tl2421524271_)
                                   (if (fx>= (gx#stx-length _tl2421524271_) '0)
                                       (let ((_g28602_
                                              (gx#syntax-split-splice
                                               _tl2421524271_
                                               '0)))
                                         (begin
                                           (let ((_g28603_
                                                  (values-count _g28602_)))
                                             (if (not (fx= _g28603_ 2))
                                                 (error "Context expects 2 values"
                                                        _g28603_)))
                                           (let ((_target2423324328_
                                                  (values-ref _g28602_ 0))
                                                 (_tl2423524331_
                                                  (values-ref _g28602_ 1)))
                                             (if (gx#stx-null? _tl2423524331_)
                                                 (letrec ((_loop2423624334_
                                                           (lambda (_hd2423424338_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _body2424024341_)
                     (if (gx#stx-pair? _hd2423424338_)
                         (let ((_e2423724344_ (gx#syntax-e _hd2423424338_)))
                           (let ((_lp-hd2423824348_ (##car _e2423724344_))
                                 (_lp-tl2423924351_ (##cdr _e2423724344_)))
                             (_loop2423624334_
                              _lp-tl2423924351_
                              (cons _lp-hd2423824348_ _body2424024341_))))
                         (let ((_body2424124354_ (reverse _body2424024341_)))
                           ((lambda (_L24358_ _L24360_ _L24361_)
                              (cons (gx#datum->syntax '#f 'match*)
                                    (cons (begin
                                            '#!void
                                            (foldr (lambda (_g2438324390_
                                                            _g2438424393_)
                                                     (cons _g2438324390_
                                                           _g2438424393_))
                                                   '()
                                                   _L24360_))
                                          (cons (cons (begin
                                                        '#!void
                                                        (foldr (lambda (_g2438524396_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2438624399_)
                         (cons _g2438524396_ _g2438624399_))
                       '()
                       _L24361_))
              (begin
                '#!void
                (foldr (lambda (_g2438724402_ _g2438824405_)
                         (cons _g2438724402_ _g2438824405_))
                       '()
                       _L24358_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                            _body2424124354_
                            _expr2422524322_
                            _hd2422624325_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop2423624334_
                                                    _target2423324328_
                                                    '()))
                                                 (_g2416424247_
                                                  _g2416524251_)))))
                                       (_g2416424247_ _g2416524251_))
                                   (_g2416424247_ _g2416524251_)))))))
               (_loop2421924280_ _target2421624274_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2416424247_
                                                      _g2416524251_)))))
                                           (_g2416424247_ _g2416524251_))
                                       (_g2416424247_ _g2416524251_))))
                               (_g2416424247_ _g2416524251_))))
                       (_g2416424247_ _g2416524251_)))))
            (let ((_g2416224520_
                   (lambda (_g2416524412_)
                     (if (gx#stx-pair? _g2416524412_)
                         (let ((_e2418624415_ (gx#syntax-e _g2416524412_)))
                           (let ((_hd2418724419_ (##car _e2418624415_))
                                 (_tl2418824422_ (##cdr _e2418624415_)))
                             (if (gx#stx-pair? _tl2418824422_)
                                 (let ((_e2418924425_
                                        (gx#syntax-e _tl2418824422_)))
                                   (let ((_hd2419024429_ (##car _e2418924425_))
                                         (_tl2419124432_
                                          (##cdr _e2418924425_)))
                                     (if (gx#stx-pair? _hd2419024429_)
                                         (let ((_e2419224435_
                                                (gx#syntax-e _hd2419024429_)))
                                           (let ((_hd2419324439_
                                                  (##car _e2419224435_))
                                                 (_tl2419424442_
                                                  (##cdr _e2419224435_)))
                                             (if (gx#stx-pair? _tl2419424442_)
                                                 (let ((_e2419524445_
                                                        (gx#syntax-e
                                                         _tl2419424442_)))
                                                   (let ((_hd2419624449_
                                                          (##car _e2419524445_))
                                                         (_tl2419724452_
                                                          (##cdr _e2419524445_)))
                                                     (if (gx#stx-null?
                                                          _tl2419724452_)
                                                         (if (gx#stx-pair/null?
                                                              _tl2419124432_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _tl2419124432_)
                               '0)
                         (let ((_g28604_
                                (gx#syntax-split-splice _tl2419124432_ '0)))
                           (begin
                             (let ((_g28605_ (values-count _g28604_)))
                               (if (not (fx= _g28605_ 2))
                                   (error "Context expects 2 values"
                                          _g28605_)))
                             (let ((_target2419824455_ (values-ref _g28604_ 0))
                                   (_tl2420024458_ (values-ref _g28604_ 1)))
                               (if (gx#stx-null? _tl2420024458_)
                                   (letrec ((_loop2420124461_
                                             (lambda (_hd2419924465_
                                                      _body2420524468_)
                                               (if (gx#stx-pair?
                                                    _hd2419924465_)
                                                   (let ((_e2420224471_
                                                          (gx#syntax-e
                                                           _hd2419924465_)))
                                                     (let ((_lp-hd2420324475_
                                                            (##car _e2420224471_))
                                                           (_lp-tl2420424478_
                                                            (##cdr _e2420224471_)))
                                                       (_loop2420124461_
                                                        _lp-tl2420424478_
                                                        (cons _lp-hd2420324475_
                                                              _body2420524468_))))
                                                   (let ((_body2420624481_
                                                          (reverse _body2420524468_)))
                                                     ((lambda (_L24485_
                                                               _L24487_
                                                               _L24488_
                                                               _L24489_)
                                                        (if (|gerbil/core::<match>[1]#match-pattern?|
                                                             _L24488_)
                                                            (cons _L24489_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons _L24488_ (cons _L24487_ '())) '())
                                (begin
                                  '#!void
                                  (foldr (lambda (_g2451124514_ _g2451224517_)
                                           (cons _g2451124514_ _g2451224517_))
                                         '()
                                         _L24485_))))
                    (_g2416324408_ _g2416524412_)))
              _body2420624481_
              _hd2419624449_
              _hd2419324439_
              _hd2418724419_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop2420124461_ _target2419824455_ '()))
                                   (_g2416324408_ _g2416524412_)))))
                         (_g2416324408_ _g2416524412_))
                     (_g2416324408_ _g2416524412_))
                 (_g2416324408_ _g2416524412_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2416324408_
                                                  _g2416524412_))))
                                         (_g2416324408_ _g2416524412_))))
                                 (_g2416324408_ _g2416524412_))))
                         (_g2416324408_ _g2416524412_)))))
              (let ((_g2416124602_
                     (lambda (_g2416524524_)
                       (if (gx#stx-pair? _g2416524524_)
                           (let ((_e2416724527_ (gx#syntax-e _g2416524524_)))
                             (let ((_hd2416824531_ (##car _e2416724527_))
                                   (_tl2416924534_ (##cdr _e2416724527_)))
                               (if (gx#stx-pair? _tl2416924534_)
                                   (let ((_e2417024537_
                                          (gx#syntax-e _tl2416924534_)))
                                     (let ((_hd2417124541_
                                            (##car _e2417024537_))
                                           (_tl2417224544_
                                            (##cdr _e2417024537_)))
                                       (if (gx#stx-null? _hd2417124541_)
                                           (if (gx#stx-pair/null?
                                                _tl2417224544_)
                                               (if (fx>= (gx#stx-length
                                                          _tl2417224544_)
                                                         '0)
                                                   (let ((_g28606_
                                                          (gx#syntax-split-splice
                                                           _tl2417224544_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28607_
                                                              (values-count
                                                               _g28606_)))
                                                         (if (not (fx= _g28607_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28607_)))
               (let ((_target2417324547_ (values-ref _g28606_ 0))
                     (_tl2417524550_ (values-ref _g28606_ 1)))
                 (if (gx#stx-null? _tl2417524550_)
                     (letrec ((_loop2417624553_
                               (lambda (_hd2417424557_ _body2418024560_)
                                 (if (gx#stx-pair? _hd2417424557_)
                                     (let ((_e2417724563_
                                            (gx#syntax-e _hd2417424557_)))
                                       (let ((_lp-hd2417824567_
                                              (##car _e2417724563_))
                                             (_lp-tl2417924570_
                                              (##cdr _e2417724563_)))
                                         (_loop2417624553_
                                          _lp-tl2417924570_
                                          (cons _lp-hd2417824567_
                                                _body2418024560_))))
                                     (let ((_body2418124573_
                                            (reverse _body2418024560_)))
                                       ((lambda (_L24577_)
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons '()
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2459324596_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2459424599_)
                         (cons _g2459324596_ _g2459424599_))
                       '()
                       _L24577_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body2418124573_))))))
                       (_loop2417624553_ _target2417324547_ '()))
                     (_g2416224520_ _g2416524524_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2416224520_
                                                    _g2416524524_))
                                               (_g2416224520_ _g2416524524_))
                                           (_g2416224520_ _g2416524524_))))
                                   (_g2416224520_ _g2416524524_))))
                           (_g2416224520_ _g2416524524_)))))
                (_g2416124602_ _$stx24158_)))))))
    (define |gerbil/core::<match>[:0:]#with*|
      (lambda (_$stx24610_)
        (let ((_g2461524667_
               (lambda (_g2461624663_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2461624663_))))
          (let ((_g2461424750_
                 (lambda (_g2461624671_)
                   (if (gx#stx-pair? _g2461624671_)
                       (let ((_e2464724674_ (gx#syntax-e _g2461624671_)))
                         (let ((_hd2464824678_ (##car _e2464724674_))
                               (_tl2464924681_ (##cdr _e2464724674_)))
                           (if (gx#stx-pair? _tl2464924681_)
                               (let ((_e2465024684_
                                      (gx#syntax-e _tl2464924681_)))
                                 (let ((_hd2465124688_ (##car _e2465024684_))
                                       (_tl2465224691_ (##cdr _e2465024684_)))
                                   (if (gx#stx-null? _hd2465124688_)
                                       (if (gx#stx-pair/null? _tl2465224691_)
                                           (if (fx>= (gx#stx-length
                                                      _tl2465224691_)
                                                     '0)
                                               (let ((_g28608_
                                                      (gx#syntax-split-splice
                                                       _tl2465224691_
                                                       '0)))
                                                 (begin
                                                   (let ((_g28609_
                                                          (values-count
                                                           _g28608_)))
                                                     (if (not (fx= _g28609_ 2))
                                                         (error "Context expects 2 values"
                                                                _g28609_)))
                                                   (let ((_target2465324694_
                                                          (values-ref
                                                           _g28608_
                                                           0))
                                                         (_tl2465524697_
                                                          (values-ref
                                                           _g28608_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl2465524697_)
                                                         (letrec ((_loop2465624700_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd2465424704_ _body2466024707_)
                             (if (gx#stx-pair? _hd2465424704_)
                                 (let ((_e2465724710_
                                        (gx#syntax-e _hd2465424704_)))
                                   (let ((_lp-hd2465824714_
                                          (##car _e2465724710_))
                                         (_lp-tl2465924717_
                                          (##cdr _e2465724710_)))
                                     (_loop2465624700_
                                      _lp-tl2465924717_
                                      (cons _lp-hd2465824714_
                                            _body2466024707_))))
                                 (let ((_body2466124720_
                                        (reverse _body2466024707_)))
                                   ((lambda (_L24724_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g2474124744_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2474224747_)
                     (cons _g2474124744_ _g2474224747_))
                   '()
                   _L24724_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _body2466124720_))))))
                   (_loop2465624700_ _target2465324694_ '()))
                 (_g2461524667_ _g2461624671_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2461524667_ _g2461624671_))
                                           (_g2461524667_ _g2461624671_))
                                       (_g2461524667_ _g2461624671_))))
                               (_g2461524667_ _g2461624671_))))
                       (_g2461524667_ _g2461624671_)))))
            (let ((_g2461324876_
                   (lambda (_g2461624754_)
                     (if (gx#stx-pair? _g2461624754_)
                         (let ((_e2462224757_ (gx#syntax-e _g2461624754_)))
                           (let ((_hd2462324761_ (##car _e2462224757_))
                                 (_tl2462424764_ (##cdr _e2462224757_)))
                             (if (gx#stx-pair? _tl2462424764_)
                                 (let ((_e2462524767_
                                        (gx#syntax-e _tl2462424764_)))
                                   (let ((_hd2462624771_ (##car _e2462524767_))
                                         (_tl2462724774_
                                          (##cdr _e2462524767_)))
                                     (if (gx#stx-pair? _hd2462624771_)
                                         (let ((_e2462824777_
                                                (gx#syntax-e _hd2462624771_)))
                                           (let ((_hd2462924781_
                                                  (##car _e2462824777_))
                                                 (_tl2463024784_
                                                  (##cdr _e2462824777_)))
                                             (if (gx#stx-pair? _hd2462924781_)
                                                 (let ((_e2463124787_
                                                        (gx#syntax-e
                                                         _hd2462924781_)))
                                                   (let ((_hd2463224791_
                                                          (##car _e2463124787_))
                                                         (_tl2463324794_
                                                          (##cdr _e2463124787_)))
                                                     (if (gx#stx-pair?
                                                          _tl2463324794_)
                                                         (let ((_e2463424797_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2463324794_)))
                   (let ((_hd2463524801_ (##car _e2463424797_))
                         (_tl2463624804_ (##cdr _e2463424797_)))
                     (if (gx#stx-null? _tl2463624804_)
                         (if (gx#stx-pair/null? _tl2462724774_)
                             (if (fx>= (gx#stx-length _tl2462724774_) '0)
                                 (let ((_g28610_
                                        (gx#syntax-split-splice
                                         _tl2462724774_
                                         '0)))
                                   (begin
                                     (let ((_g28611_ (values-count _g28610_)))
                                       (if (not (fx= _g28611_ 2))
                                           (error "Context expects 2 values"
                                                  _g28611_)))
                                     (let ((_target2463724807_
                                            (values-ref _g28610_ 0))
                                           (_tl2463924810_
                                            (values-ref _g28610_ 1)))
                                       (if (gx#stx-null? _tl2463924810_)
                                           (letrec ((_loop2464024813_
                                                     (lambda (_hd2463824817_
                                                              _body2464424820_)
                                                       (if (gx#stx-pair?
                                                            _hd2463824817_)
                                                           (let ((_e2464124823_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd2463824817_)))
                     (let ((_lp-hd2464224827_ (##car _e2464124823_))
                           (_lp-tl2464324830_ (##cdr _e2464124823_)))
                       (_loop2464024813_
                        _lp-tl2464324830_
                        (cons _lp-hd2464224827_ _body2464424820_))))
                   (let ((_body2464524833_ (reverse _body2464424820_)))
                     ((lambda (_L24837_ _L24839_ _L24840_ _L24841_ _L24842_)
                        (cons (gx#datum->syntax '#f 'with)
                              (cons (cons (cons _L24841_ (cons _L24840_ '()))
                                          '())
                                    (cons (cons _L24842_
                                                (cons _L24839_
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2486724870_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2486824873_)
                         (cons _g2486724870_ _g2486824873_))
                       '()
                       _L24837_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))))
                      _body2464524833_
                      _tl2463024784_
                      _hd2463524801_
                      _hd2463224791_
                      _hd2462324761_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop2464024813_
                                              _target2463724807_
                                              '()))
                                           (_g2461424750_ _g2461624754_)))))
                                 (_g2461424750_ _g2461624754_))
                             (_g2461424750_ _g2461624754_))
                         (_g2461424750_ _g2461624754_))))
                 (_g2461424750_ _g2461624754_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2461424750_
                                                  _g2461624754_))))
                                         (_g2461424750_ _g2461624754_))))
                                 (_g2461424750_ _g2461624754_))))
                         (_g2461424750_ _g2461624754_)))))
              (_g2461324876_ _$stx24610_))))))
    (define |gerbil/core::<match>[:0:]#?|
      (lambda (_$stx24882_)
        (let ((_g2489325037_
               (lambda (_g2489425033_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2489425033_))))
          (let ((_g2489225132_
                 (lambda (_g2489425041_)
                   (if (gx#stx-pair? _g2489425041_)
                       (let ((_e2501425044_ (gx#syntax-e _g2489425041_)))
                         (let ((_hd2501525048_ (##car _e2501425044_))
                               (_tl2501625051_ (##cdr _e2501425044_)))
                           (if (gx#stx-pair? _tl2501625051_)
                               (let ((_e2501725054_
                                      (gx#syntax-e _tl2501625051_)))
                                 (let ((_hd2501825058_ (##car _e2501725054_))
                                       (_tl2501925061_ (##cdr _e2501725054_)))
                                   (if (gx#stx-pair? _tl2501925061_)
                                       (let ((_e2502025064_
                                              (gx#syntax-e _tl2501925061_)))
                                         (let ((_hd2502125068_
                                                (##car _e2502025064_))
                                               (_tl2502225071_
                                                (##cdr _e2502025064_)))
                                           (if (gx#stx-datum? _hd2502125068_)
                                               (if (equal? (gx#stx-e
                                                            _hd2502125068_)
                                                           '::)
                                                   (if (gx#stx-pair?
                                                        _tl2502225071_)
                                                       (let ((_e2502325074_
                                                              (gx#syntax-e
                                                               _tl2502225071_)))
                                                         (let ((_hd2502425078_
                                                                (##car _e2502325074_))
                                                               (_tl2502525081_
                                                                (##cdr _e2502325074_)))
                                                           (if (gx#stx-pair?
                                                                _tl2502525081_)
                                                               (let ((_e2502625084_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2502525081_)))
                         (let ((_hd2502725088_ (##car _e2502625084_))
                               (_tl2502825091_ (##cdr _e2502625084_)))
                           (if (gx#identifier? _hd2502725088_)
                               (if (gx#free-identifier=?
                                    |gerbil/core::<match>[1]#_g28612_|
                                    _hd2502725088_)
                                   (if (gx#stx-pair? _tl2502825091_)
                                       (let ((_e2502925094_
                                              (gx#syntax-e _tl2502825091_)))
                                         (let ((_hd2503025098_
                                                (##car _e2502925094_))
                                               (_tl2503125101_
                                                (##cdr _e2502925094_)))
                                           (if (gx#stx-null? _tl2503125101_)
                                               ((lambda (_L25104_
                                                         _L25106_
                                                         _L25107_
                                                         _L25108_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$obj)
                            '())
                      (cons (cons (gx#datum->syntax '#f 'and)
                                  (cons (cons _L25108_
                                              (cons _L25107_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '$obj)
                                                          '())))
                                        (cons (cons _L25104_
                                                    (cons (cons _L25106_
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
                                                _hd2503025098_
                                                _hd2502425078_
                                                _hd2501825058_
                                                _hd2501525048_)
                                               (_g2489325037_ _g2489425041_))))
                                       (_g2489325037_ _g2489425041_))
                                   (_g2489325037_ _g2489425041_))
                               (_g2489325037_ _g2489425041_))))
                       (_g2489325037_ _g2489425041_))))
               (_g2489325037_ _g2489425041_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2489325037_
                                                    _g2489425041_))
                                               (_g2489325037_ _g2489425041_))))
                                       (_g2489325037_ _g2489425041_))))
                               (_g2489325037_ _g2489425041_))))
                       (_g2489325037_ _g2489425041_)))))
            (let ((_g2489125200_
                   (lambda (_g2489425136_)
                     (if (gx#stx-pair? _g2489425136_)
                         (let ((_e2499825139_ (gx#syntax-e _g2489425136_)))
                           (let ((_hd2499925143_ (##car _e2499825139_))
                                 (_tl2500025146_ (##cdr _e2499825139_)))
                             (if (gx#stx-pair? _tl2500025146_)
                                 (let ((_e2500125149_
                                        (gx#syntax-e _tl2500025146_)))
                                   (let ((_hd2500225153_ (##car _e2500125149_))
                                         (_tl2500325156_
                                          (##cdr _e2500125149_)))
                                     (if (gx#stx-pair? _tl2500325156_)
                                         (let ((_e2500425159_
                                                (gx#syntax-e _tl2500325156_)))
                                           (let ((_hd2500525163_
                                                  (##car _e2500425159_))
                                                 (_tl2500625166_
                                                  (##cdr _e2500425159_)))
                                             (if (gx#stx-datum? _hd2500525163_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2500525163_)
                                                             '::)
                                                     (if (gx#stx-pair?
                                                          _tl2500625166_)
                                                         (let ((_e2500725169_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2500625166_)))
                   (let ((_hd2500825173_ (##car _e2500725169_))
                         (_tl2500925176_ (##cdr _e2500725169_)))
                     (if (gx#stx-null? _tl2500925176_)
                         ((lambda (_L25179_ _L25181_ _L25182_)
                            (cons (gx#datum->syntax '#f 'lambda)
                                  (cons (cons (gx#datum->syntax '#f '$obj) '())
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'alet)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$val)
                        (cons (cons _L25182_
                                    (cons _L25181_
                                          (cons (gx#datum->syntax '#f '$obj)
                                                '())))
                              '()))
                  (cons (cons _L25179_ (cons (gx#datum->syntax '#f '$val) '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          _hd2500825173_
                          _hd2500225153_
                          _hd2499925143_)
                         (_g2489225132_ _g2489425136_))))
                 (_g2489225132_ _g2489425136_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2489225132_
                                                      _g2489425136_))
                                                 (_g2489225132_
                                                  _g2489425136_))))
                                         (_g2489225132_ _g2489425136_))))
                                 (_g2489225132_ _g2489425136_))))
                         (_g2489225132_ _g2489425136_)))))
              (let ((_g2489025268_
                     (lambda (_g2489425204_)
                       (if (gx#stx-pair? _g2489425204_)
                           (let ((_e2498325207_ (gx#syntax-e _g2489425204_)))
                             (let ((_hd2498425211_ (##car _e2498325207_))
                                   (_tl2498525214_ (##cdr _e2498325207_)))
                               (if (gx#stx-pair? _tl2498525214_)
                                   (let ((_e2498625217_
                                          (gx#syntax-e _tl2498525214_)))
                                     (let ((_hd2498725221_
                                            (##car _e2498625217_))
                                           (_tl2498825224_
                                            (##cdr _e2498625217_)))
                                       (if (gx#stx-pair? _tl2498825224_)
                                           (let ((_e2498925227_
                                                  (gx#syntax-e
                                                   _tl2498825224_)))
                                             (let ((_hd2499025231_
                                                    (##car _e2498925227_))
                                                   (_tl2499125234_
                                                    (##cdr _e2498925227_)))
                                               (if (gx#identifier?
                                                    _hd2499025231_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core::<match>[1]#_g28613_|
                                                        _hd2499025231_)
                                                       (if (gx#stx-pair?
                                                            _tl2499125234_)
                                                           (let ((_e2499225237_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl2499125234_)))
                     (let ((_hd2499325241_ (##car _e2499225237_))
                           (_tl2499425244_ (##cdr _e2499225237_)))
                       (if (gx#stx-null? _tl2499425244_)
                           ((lambda (_L25247_ _L25249_ _L25250_)
                              (cons (gx#datum->syntax '#f 'lambda)
                                    (cons (cons (gx#datum->syntax '#f '$obj)
                                                '())
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'and)
                                                      (cons (cons _L25250_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L25249_
                                (cons (gx#datum->syntax '#f '$obj) '())))
                    (cons (cons _L25247_
                                (cons (gx#datum->syntax '#f '$obj) '()))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                            _hd2499325241_
                            _hd2498725221_
                            _hd2498425211_)
                           (_g2489125200_ _g2489425204_))))
                   (_g2489125200_ _g2489425204_))
               (_g2489125200_ _g2489425204_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2489125200_
                                                    _g2489425204_))))
                                           (_g2489125200_ _g2489425204_))))
                                   (_g2489125200_ _g2489425204_))))
                           (_g2489125200_ _g2489425204_)))))
                (let ((_g2488925310_
                       (lambda (_g2489425272_)
                         (if (gx#stx-pair? _g2489425272_)
                             (let ((_e2497425275_ (gx#syntax-e _g2489425272_)))
                               (let ((_hd2497525279_ (##car _e2497425275_))
                                     (_tl2497625282_ (##cdr _e2497425275_)))
                                 (if (gx#stx-pair? _tl2497625282_)
                                     (let ((_e2497725285_
                                            (gx#syntax-e _tl2497625282_)))
                                       (let ((_hd2497825289_
                                              (##car _e2497725285_))
                                             (_tl2497925292_
                                              (##cdr _e2497725285_)))
                                         (if (gx#stx-null? _tl2497925292_)
                                             ((lambda (_L25295_ _L25297_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '$obj)
                          '())
                    (cons (cons _L25297_
                                (cons _L25295_
                                      (cons (gx#datum->syntax '#f '$obj) '())))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd2497825289_
                                              _hd2497525279_)
                                             (_g2489025268_ _g2489425272_))))
                                     (_g2489025268_ _g2489425272_))))
                             (_g2489025268_ _g2489425272_)))))
                  (let ((_g2488825364_
                         (lambda (_g2489425314_)
                           (if (gx#stx-pair? _g2489425314_)
                               (let ((_e2496325317_
                                      (gx#syntax-e _g2489425314_)))
                                 (let ((_hd2496425321_ (##car _e2496325317_))
                                       (_tl2496525324_ (##cdr _e2496325317_)))
                                   (if (gx#stx-pair? _tl2496525324_)
                                       (let ((_e2496625327_
                                              (gx#syntax-e _tl2496525324_)))
                                         (let ((_hd2496725331_
                                                (##car _e2496625327_))
                                               (_tl2496825334_
                                                (##cdr _e2496625327_)))
                                           (if (gx#stx-pair? _tl2496825334_)
                                               (let ((_e2496925337_
                                                      (gx#syntax-e
                                                       _tl2496825334_)))
                                                 (let ((_hd2497025341_
                                                        (##car _e2496925337_))
                                                       (_tl2497125344_
                                                        (##cdr _e2496925337_)))
                                                   (if (gx#stx-null?
                                                        _tl2497125344_)
                                                       ((lambda (_L25347_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L25349_)
                  (cons _L25349_ (cons _L25347_ '())))
                _hd2497025341_
                _hd2496725331_)
               (_g2488925310_ _g2489425314_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2488925310_ _g2489425314_))))
                                       (_g2488925310_ _g2489425314_))))
                               (_g2488925310_ _g2489425314_)))))
                    (let ((_g2488725444_
                           (lambda (_g2489425368_)
                             (if (gx#stx-pair? _g2489425368_)
                                 (let ((_e2494625371_
                                        (gx#syntax-e _g2489425368_)))
                                   (let ((_hd2494725375_ (##car _e2494625371_))
                                         (_tl2494825378_
                                          (##cdr _e2494625371_)))
                                     (if (gx#stx-pair? _tl2494825378_)
                                         (let ((_e2494925381_
                                                (gx#syntax-e _tl2494825378_)))
                                           (let ((_hd2495025385_
                                                  (##car _e2494925381_))
                                                 (_tl2495125388_
                                                  (##cdr _e2494925381_)))
                                             (if (gx#stx-pair? _hd2495025385_)
                                                 (let ((_e2495225391_
                                                        (gx#syntax-e
                                                         _hd2495025385_)))
                                                   (let ((_hd2495325395_
                                                          (##car _e2495225391_))
                                                         (_tl2495425398_
                                                          (##cdr _e2495225391_)))
                                                     (if (gx#identifier?
                                                          _hd2495325395_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core::<match>[1]#_g28614_|
                                                              _hd2495325395_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2495425398_)
                         (let ((_e2495525401_ (gx#syntax-e _tl2495425398_)))
                           (let ((_hd2495625405_ (##car _e2495525401_))
                                 (_tl2495725408_ (##cdr _e2495525401_)))
                             (if (gx#stx-null? _tl2495725408_)
                                 (if (gx#stx-pair? _tl2495125388_)
                                     (let ((_e2495825411_
                                            (gx#syntax-e _tl2495125388_)))
                                       (let ((_hd2495925415_
                                              (##car _e2495825411_))
                                             (_tl2496025418_
                                              (##cdr _e2495825411_)))
                                         (if (gx#stx-null? _tl2496025418_)
                                             ((lambda (_L25421_
                                                       _L25423_
                                                       _L25424_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'not)
                                                      (cons (cons _L25424_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L25423_ (cons _L25421_ '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd2495925415_
                                              _hd2495625405_
                                              _hd2494725375_)
                                             (_g2488825364_ _g2489425368_))))
                                     (_g2488825364_ _g2489425368_))
                                 (_g2488825364_ _g2489425368_))))
                         (_g2488825364_ _g2489425368_))
                     (_g2488825364_ _g2489425368_))
                 (_g2488825364_ _g2489425368_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2488825364_
                                                  _g2489425368_))))
                                         (_g2488825364_ _g2489425368_))))
                                 (_g2488825364_ _g2489425368_)))))
                      (let ((_g2488625554_
                             (lambda (_g2489425448_)
                               (if (gx#stx-pair? _g2489425448_)
                                   (let ((_e2492225451_
                                          (gx#syntax-e _g2489425448_)))
                                     (let ((_hd2492325455_
                                            (##car _e2492225451_))
                                           (_tl2492425458_
                                            (##cdr _e2492225451_)))
                                       (if (gx#stx-pair? _tl2492425458_)
                                           (let ((_e2492525461_
                                                  (gx#syntax-e
                                                   _tl2492425458_)))
                                             (let ((_hd2492625465_
                                                    (##car _e2492525461_))
                                                   (_tl2492725468_
                                                    (##cdr _e2492525461_)))
                                               (if (gx#stx-pair?
                                                    _hd2492625465_)
                                                   (let ((_e2492825471_
                                                          (gx#syntax-e
                                                           _hd2492625465_)))
                                                     (let ((_hd2492925475_
                                                            (##car _e2492825471_))
                                                           (_tl2493025478_
                                                            (##cdr _e2492825471_)))
                                                       (if (gx#identifier?
                                                            _hd2492925475_)
                                                           (if (gx#free-identifier=?
                                                                |gerbil/core::<match>[1]#_g28615_|
                                                                _hd2492925475_)
                                                               (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl2493025478_)
                           (if (fx>= (gx#stx-length _tl2493025478_) '0)
                               (let ((_g28616_
                                      (gx#syntax-split-splice
                                       _tl2493025478_
                                       '0)))
                                 (begin
                                   (let ((_g28617_ (values-count _g28616_)))
                                     (if (not (fx= _g28617_ 2))
                                         (error "Context expects 2 values"
                                                _g28617_)))
                                   (let ((_target2493125481_
                                          (values-ref _g28616_ 0))
                                         (_tl2493325484_
                                          (values-ref _g28616_ 1)))
                                     (if (gx#stx-null? _tl2493325484_)
                                         (letrec ((_loop2493425487_
                                                   (lambda (_hd2493225491_
                                                            _pred2493825494_)
                                                     (if (gx#stx-pair?
                                                          _hd2493225491_)
                                                         (let ((_e2493525497_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2493225491_)))
                   (let ((_lp-hd2493625501_ (##car _e2493525497_))
                         (_lp-tl2493725504_ (##cdr _e2493525497_)))
                     (_loop2493425487_
                      _lp-tl2493725504_
                      (cons _lp-hd2493625501_ _pred2493825494_))))
                 (let ((_pred2493925507_ (reverse _pred2493825494_)))
                   (if (gx#stx-pair? _tl2492725468_)
                       (let ((_e2494025511_ (gx#syntax-e _tl2492725468_)))
                         (let ((_hd2494125515_ (##car _e2494025511_))
                               (_tl2494225518_ (##cdr _e2494025511_)))
                           (if (gx#stx-null? _tl2494225518_)
                               ((lambda (_L25521_ _L25523_ _L25524_)
                                  (cons (gx#datum->syntax '#f 'or)
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g2554525548_
                                                          _g2554625551_)
                                                   (cons (cons _L25524_
                                                               (cons _g2554525548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L25521_ '())))
                 _g2554625551_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L25523_))))
                                _hd2494125515_
                                _pred2493925507_
                                _hd2492325455_)
                               (_g2488725444_ _g2489425448_))))
                       (_g2488725444_ _g2489425448_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop2493425487_
                                            _target2493125481_
                                            '()))
                                         (_g2488725444_ _g2489425448_)))))
                               (_g2488725444_ _g2489425448_))
                           (_g2488725444_ _g2489425448_))
                       (_g2488725444_ _g2489425448_))
                   (_g2488725444_ _g2489425448_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2488725444_
                                                    _g2489425448_))))
                                           (_g2488725444_ _g2489425448_))))
                                   (_g2488725444_ _g2489425448_)))))
                        (let ((_g2488525664_
                               (lambda (_g2489425558_)
                                 (if (gx#stx-pair? _g2489425558_)
                                     (let ((_e2489825561_
                                            (gx#syntax-e _g2489425558_)))
                                       (let ((_hd2489925565_
                                              (##car _e2489825561_))
                                             (_tl2490025568_
                                              (##cdr _e2489825561_)))
                                         (if (gx#stx-pair? _tl2490025568_)
                                             (let ((_e2490125571_
                                                    (gx#syntax-e
                                                     _tl2490025568_)))
                                               (let ((_hd2490225575_
                                                      (##car _e2490125571_))
                                                     (_tl2490325578_
                                                      (##cdr _e2490125571_)))
                                                 (if (gx#stx-pair?
                                                      _hd2490225575_)
                                                     (let ((_e2490425581_
                                                            (gx#syntax-e
                                                             _hd2490225575_)))
                                                       (let ((_hd2490525585_
                                                              (##car _e2490425581_))
                                                             (_tl2490625588_
                                                              (##cdr _e2490425581_)))
                                                         (if (gx#identifier?
                                                              _hd2490525585_)
                                                             (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          |gerbil/core::<match>[1]#_g28618_|
                          _hd2490525585_)
                         (if (gx#stx-pair/null? _tl2490625588_)
                             (if (fx>= (gx#stx-length _tl2490625588_) '0)
                                 (let ((_g28619_
                                        (gx#syntax-split-splice
                                         _tl2490625588_
                                         '0)))
                                   (begin
                                     (let ((_g28620_ (values-count _g28619_)))
                                       (if (not (fx= _g28620_ 2))
                                           (error "Context expects 2 values"
                                                  _g28620_)))
                                     (let ((_target2490725591_
                                            (values-ref _g28619_ 0))
                                           (_tl2490925594_
                                            (values-ref _g28619_ 1)))
                                       (if (gx#stx-null? _tl2490925594_)
                                           (letrec ((_loop2491025597_
                                                     (lambda (_hd2490825601_
                                                              _pred2491425604_)
                                                       (if (gx#stx-pair?
                                                            _hd2490825601_)
                                                           (let ((_e2491125607_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd2490825601_)))
                     (let ((_lp-hd2491225611_ (##car _e2491125607_))
                           (_lp-tl2491325614_ (##cdr _e2491125607_)))
                       (_loop2491025597_
                        _lp-tl2491325614_
                        (cons _lp-hd2491225611_ _pred2491425604_))))
                   (let ((_pred2491525617_ (reverse _pred2491425604_)))
                     (if (gx#stx-pair? _tl2490325578_)
                         (let ((_e2491625621_ (gx#syntax-e _tl2490325578_)))
                           (let ((_hd2491725625_ (##car _e2491625621_))
                                 (_tl2491825628_ (##cdr _e2491625621_)))
                             (if (gx#stx-null? _tl2491825628_)
                                 ((lambda (_L25631_ _L25633_ _L25634_)
                                    (cons (gx#datum->syntax '#f 'and)
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2565525658_
                                                            _g2565625661_)
                                                     (cons (cons _L25634_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _g2565525658_ (cons _L25631_ '())))
                   _g2565625661_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _L25633_))))
                                  _hd2491725625_
                                  _pred2491525617_
                                  _hd2489925565_)
                                 (_g2488625554_ _g2489425558_))))
                         (_g2488625554_ _g2489425558_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop2491025597_
                                              _target2490725591_
                                              '()))
                                           (_g2488625554_ _g2489425558_)))))
                                 (_g2488625554_ _g2489425558_))
                             (_g2488625554_ _g2489425558_))
                         (_g2488625554_ _g2489425558_))
                     (_g2488625554_ _g2489425558_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2488625554_
                                                      _g2489425558_))))
                                             (_g2488625554_ _g2489425558_))))
                                     (_g2488625554_ _g2489425558_)))))
                          (_g2488525664_ _$stx24882_))))))))))))
    (define |gerbil/core::<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx25670_)
        (let ((_g2567525709_
               (lambda (_g2567625705_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2567625705_))))
          (let ((_g2567425766_
                 (lambda (_g2567625713_)
                   (if (gx#stx-pair? _g2567625713_)
                       (let ((_e2569525716_ (gx#syntax-e _g2567625713_)))
                         (let ((_hd2569625720_ (##car _e2569525716_))
                               (_tl2569725723_ (##cdr _e2569525716_)))
                           (if (gx#stx-pair? _tl2569725723_)
                               (let ((_e2569825726_
                                      (gx#syntax-e _tl2569725723_)))
                                 (let ((_hd2569925730_ (##car _e2569825726_))
                                       (_tl2570025733_ (##cdr _e2569825726_)))
                                   (if (gx#stx-pair? _tl2570025733_)
                                       (let ((_e2570125736_
                                              (gx#syntax-e _tl2570025733_)))
                                         (let ((_hd2570225740_
                                                (##car _e2570125736_))
                                               (_tl2570325743_
                                                (##cdr _e2570125736_)))
                                           (if (gx#stx-null? _tl2570325743_)
                                               ((lambda (_L25746_
                                                         _L25748_
                                                         _L25749_)
                                                  (cons _L25749_
                                                        (cons _L25748_
                                                              (cons _L25746_
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
                                                _hd2570225740_
                                                _hd2569925730_
                                                _hd2569625720_)
                                               (_g2567525709_ _g2567625713_))))
                                       (_g2567525709_ _g2567625713_))))
                               (_g2567525709_ _g2567625713_))))
                       (_g2567525709_ _g2567625713_)))))
            (let ((_g2567325834_
                   (lambda (_g2567625770_)
                     (if (gx#stx-pair? _g2567625770_)
                         (let ((_e2568025773_ (gx#syntax-e _g2567625770_)))
                           (let ((_hd2568125777_ (##car _e2568025773_))
                                 (_tl2568225780_ (##cdr _e2568025773_)))
                             (if (gx#stx-pair? _tl2568225780_)
                                 (let ((_e2568325783_
                                        (gx#syntax-e _tl2568225780_)))
                                   (let ((_hd2568425787_ (##car _e2568325783_))
                                         (_tl2568525790_
                                          (##cdr _e2568325783_)))
                                     (if (gx#stx-pair? _tl2568525790_)
                                         (let ((_e2568625793_
                                                (gx#syntax-e _tl2568525790_)))
                                           (let ((_hd2568725797_
                                                  (##car _e2568625793_))
                                                 (_tl2568825800_
                                                  (##cdr _e2568625793_)))
                                             (if (gx#stx-pair? _tl2568825800_)
                                                 (let ((_e2568925803_
                                                        (gx#syntax-e
                                                         _tl2568825800_)))
                                                   (let ((_hd2569025807_
                                                          (##car _e2568925803_))
                                                         (_tl2569125810_
                                                          (##cdr _e2568925803_)))
                                                     (if (gx#stx-null?
                                                          _tl2569125810_)
                                                         ((lambda (_L25813_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L25815_
                           _L25816_)
                    (if (gx#identifier? _L25816_)
                        (cons (gx#datum->syntax '#f 'defsyntax)
                              (cons _L25816_
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'make-match-macro)
                                                (cons 'macro:
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let)
                          (cons (cons (cons (gx#datum->syntax '#f '$match-e)
                                            (cons _L25815_ '()))
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '$macro-e)
                                                  (cons _L25813_ '()))
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
                        (_g2567425766_ _g2567625770_)))
                  _hd2569025807_
                  _hd2568725797_
                  _hd2568425787_)
                 (_g2567425766_ _g2567625770_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2567425766_
                                                  _g2567625770_))))
                                         (_g2567425766_ _g2567625770_))))
                                 (_g2567425766_ _g2567625770_))))
                         (_g2567425766_ _g2567625770_)))))
              (_g2567325834_ _$stx25670_))))))
    (define |gerbil/core::<match>[:0:]#defrules-for-match|
      (lambda (_$stx25838_)
        (let ((_g2584225857_
               (lambda (_g2584325853_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2584325853_))))
          (let ((_g2584125900_
                 (lambda (_g2584325861_)
                   (if (gx#stx-pair? _g2584325861_)
                       (let ((_e2584625864_ (gx#syntax-e _g2584325861_)))
                         (let ((_hd2584725868_ (##car _e2584625864_))
                               (_tl2584825871_ (##cdr _e2584625864_)))
                           (if (gx#stx-pair? _tl2584825871_)
                               (let ((_e2584925874_
                                      (gx#syntax-e _tl2584825871_)))
                                 (let ((_hd2585025878_ (##car _e2584925874_))
                                       (_tl2585125881_ (##cdr _e2584925874_)))
                                   ((lambda (_L25884_ _L25886_)
                                      (cons (gx#datum->syntax
                                             '#f
                                             'defsyntax-for-match)
                                            (cons _L25886_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'syntax-rules)
                                                              _L25884_)
                                                        '()))))
                                    _tl2585125881_
                                    _hd2585025878_)))
                               (_g2584225857_ _g2584325861_))))
                       (_g2584225857_ _g2584325861_)))))
            (_g2584125900_ _$stx25838_)))))))
