(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<match>[1]#_g28422_|
    (gx#core-quote-syntax 'quasiquote))
  (define |gerbil/core::<match>[1]#_g28423_| (gx#core-quote-syntax 'quote))
  (define |gerbil/core::<match>[1]#_g28426_| (gx#core-quote-syntax 'vector))
  (define |gerbil/core::<match>[1]#_g28427_| (gx#core-quote-syntax 'values))
  (define |gerbil/core::<match>[1]#_g28428_| (gx#core-quote-syntax 'values))
  (define |gerbil/core::<match>[1]#_g28429_| (gx#core-quote-syntax 'box))
  (define |gerbil/core::<match>[1]#_g28430_| (gx#core-quote-syntax '@list))
  (define |gerbil/core::<match>[1]#_g28431_| (gx#core-quote-syntax 'cons*))
  (define |gerbil/core::<match>[1]#_g28432_| (gx#core-quote-syntax 'cons))
  (define |gerbil/core::<match>[1]#_g28433_| (gx#core-quote-syntax 'not))
  (define |gerbil/core::<match>[1]#_g28434_| (gx#core-quote-syntax 'or))
  (define |gerbil/core::<match>[1]#_g28435_| (gx#core-quote-syntax 'and))
  (define |gerbil/core::<match>[1]#_g28436_| (gx#core-quote-syntax '?))
  (define |gerbil/core::<match>[1]#_g28437_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g28438_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g28451_| (gx#core-quote-syntax 'else))
  (define |gerbil/core::<match>[1]#_g28452_| (gx#core-quote-syntax 'else))
  (define |gerbil/core::<match>[1]#_g28453_| (gx#core-quote-syntax '<...>))
  (define |gerbil/core::<match>[1]#_g28454_| (gx#core-quote-syntax '<>))
  (define |gerbil/core::<match>[1]#_g28471_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g28472_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g28473_| (gx#core-quote-syntax 'not))
  (define |gerbil/core::<match>[1]#_g28474_| (gx#core-quote-syntax 'or))
  (define |gerbil/core::<match>[1]#_g28477_| (gx#core-quote-syntax 'and))
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
      (lambda _$args23390_
        (apply make-class-instance
               |gerbil/core::<match>[1]#match-macro::t|
               _$args23390_)))
    (define |gerbil/core::<match>[1]#syntax-local-match-macro?|
      (lambda (_stx23387_)
        (if (gx#identifier? _stx23387_)
            (|gerbil/core::<match>[1]#match-macro?|
             (gx#syntax-local-value _stx23387_ false))
            '#f)))
    (define |gerbil/core::<match>[1]#parse-match-pattern|
      (let ((_opt-lambda2176923373_
             (lambda (_stx21771_ _match-stx21773_)
               (let ((_parse-qq21781_
                      (lambda (_hd21787_)
                        (let ((_g2178921796_
                               (lambda (_g2179021792_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2179021792_))))
                          (_g2178921796_ _hd21787_)))))
                 (let ((_parse-error21782_
                        (lambda (_hd21784_)
                          (apply gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; illegal pattern"
                                 (if _match-stx21773_
                                     (cons _match-stx21773_
                                           (cons _stx21771_
                                                 (cons _hd21784_ '())))
                                     (cons _stx21771_
                                           (cons _hd21784_ '())))))))
                   (letrec ((_parse121775_
                             (lambda (_hd22122_)
                               (let ((_g2214722278_
                                      (lambda (_g2214822274_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g2214822274_))))
                                 (let ((_g2214622289_
                                        (lambda (_g2214822282_)
                                          ((lambda ()
                                             (_parse-error21782_
                                              _hd22122_))))))
                                   (let ((_g2214522307_
                                          (lambda (_g2214822293_)
                                            ((lambda (_L22296_)
                                               (if (gx#stx-datum? _L22296_)
                                                   (cons 'datum:
                                                         (cons (gx#stx-e
                                                                _L22296_)
                                                               '()))
                                                   (_g2214622289_
                                                    _g2214822293_)))
                                             _g2214822293_))))
                                     (let ((_g2214422323_
                                            (lambda (_g2214822311_)
                                              ((lambda (_L22314_)
                                                 (if (if (gx#identifier?
                                                          _L22314_)
                                                         (not (gx#ellipsis?
                                                               _L22314_))
                                                         '#f)
                                                     (cons 'var:
                                                           (cons _L22314_ '()))
                                                     (_g2214522307_
                                                      _g2214822311_)))
                                               _g2214822311_))))
                                       (let ((_g2214322339_
                                              (lambda (_g2214822327_)
                                                ((lambda (_L22330_)
                                                   (if (gx#underscore?
                                                        _L22330_)
                                                       (cons 'any: '())
                                                       (_g2214422323_
                                                        _g2214822327_)))
                                                 _g2214822327_))))
                                         (let ((_g2214222371_
                                                (lambda (_g2214822343_)
                                                  (if (gx#stx-pair?
                                                       _g2214822343_)
                                                      (let ((_e2226722346_
                                                             (gx#syntax-e
                                                              _g2214822343_)))
                                                        (let ((_hd2226822350_
                                                               (##car _e2226722346_))
                                                              (_tl2226922353_
                                                               (##cdr _e2226722346_)))
                                                          ((lambda (_L22356_)
                                                             (if (|gerbil/core::<match>[1]#syntax-local-match-macro?|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L22356_)
                         (_parse121775_
                          (gx#core-apply-expander
                           (gx#syntax-local-e _L22356_)
                           (gx#stx-wrap-source
                            (cons 'match: _hd22122_)
                            (let ((_$e22367_ (gx#stx-source _hd22122_)))
                              (if _$e22367_
                                  _$e22367_
                                  (gx#stx-source _stx21771_))))))
                         (_g2214322339_ _g2214822343_)))
                   _hd2226822350_)))
              (_g2214322339_ _g2214822343_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_g2214122411_
                                                  (lambda (_g2214822375_)
                                                    (if (gx#stx-pair?
                                                         _g2214822375_)
                                                        (let ((_e2226022378_
                                                               (gx#syntax-e
                                                                _g2214822375_)))
                                                          (let ((_hd2226122382_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2226022378_))
                        (_tl2226222385_ (##cdr _e2226022378_)))
                    (if (gx#identifier? _hd2226122382_)
                        (if (gx#free-identifier=?
                             |gerbil/core::<match>[1]#_g28422_|
                             _hd2226122382_)
                            (if (gx#stx-pair? _tl2226222385_)
                                (let ((_e2226322388_
                                       (gx#syntax-e _tl2226222385_)))
                                  (let ((_hd2226422392_ (##car _e2226322388_))
                                        (_tl2226522395_ (##cdr _e2226322388_)))
                                    (if (gx#stx-null? _tl2226522395_)
                                        ((lambda (_L22398_)
                                           (_parse-qq21781_ _L22398_))
                                         _hd2226422392_)
                                        (_g2214222371_ _g2214822375_))))
                                (_g2214222371_ _g2214822375_))
                            (_g2214222371_ _g2214822375_))
                        (_g2214222371_ _g2214822375_))))
                (_g2214222371_ _g2214822375_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_g2214022451_
                                                    (lambda (_g2214822415_)
                                                      (if (gx#stx-pair?
                                                           _g2214822415_)
                                                          (let ((_e2225322418_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _g2214822415_)))
                    (let ((_hd2225422422_ (##car _e2225322418_))
                          (_tl2225522425_ (##cdr _e2225322418_)))
                      (if (gx#identifier? _hd2225422422_)
                          (if (gx#free-identifier=?
                               |gerbil/core::<match>[1]#_g28423_|
                               _hd2225422422_)
                              (if (gx#stx-pair? _tl2225522425_)
                                  (let ((_e2225622428_
                                         (gx#syntax-e _tl2225522425_)))
                                    (let ((_hd2225722432_
                                           (##car _e2225622428_))
                                          (_tl2225822435_
                                           (##cdr _e2225622428_)))
                                      (if (gx#stx-null? _tl2225822435_)
                                          ((lambda (_L22438_)
                                             (cons 'datum:
                                                   (cons (gx#stx-e _L22438_)
                                                         '())))
                                           _hd2225722432_)
                                          (_g2214122411_ _g2214822415_))))
                                  (_g2214122411_ _g2214822415_))
                              (_g2214122411_ _g2214822415_))
                          (_g2214122411_ _g2214822415_))))
                  (_g2214122411_ _g2214822415_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_g2213922501_
                                                      (lambda (_g2214822455_)
                                                        (if (gx#stx-pair?
                                                             _g2214822455_)
                                                            (let ((_e2224622458_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g2214822455_)))
                      (let ((_hd2224722462_ (##car _e2224622458_))
                            (_tl2224822465_ (##cdr _e2224622458_)))
                        (if (gx#stx-pair? _tl2224822465_)
                            (let ((_e2224922468_ (gx#syntax-e _tl2224822465_)))
                              (let ((_hd2225022472_ (##car _e2224922468_))
                                    (_tl2225122475_ (##cdr _e2224922468_)))
                                (if (gx#stx-null? _tl2225122475_)
                                    ((lambda (_L22478_ _L22480_)
                                       (if (if (gx#identifier? _L22480_)
                                               (let ((_$e22493_
                                                      (gx#free-identifier=?
                                                       _L22480_
                                                       (gx#datum->syntax
                                                        '#f
                                                        'eq?))))
                                                 (if _$e22493_
                                                     _$e22493_
                                                     (let ((_$e22497_
                                                            (gx#free-identifier=?
                                                             _L22480_
                                                             (gx#datum->syntax
                                                              '#f
                                                              'eqv?))))
                                                       (if _$e22497_
                                                           _$e22497_
                                                           (gx#free-identifier=?
                                                            _L22480_
                                                            (gx#datum->syntax
                                                             '#f
                                                             'equal?))))))
                                               '#f)
                                           (cons '?:
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'cut)
                                                             (cons _L22480_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f '<>)
                                 (cons _L22478_ '()))))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g2214022451_ _g2214822455_)))
                                     _hd2225022472_
                                     _hd2224722462_)
                                    (_g2214022451_ _g2214822455_))))
                            (_g2214022451_ _g2214822455_))))
                    (_g2214022451_ _g2214822455_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_g2213822531_
                                                        (lambda (_g2214822505_)
                                                          (if (gx#stx-pair?
                                                               _g2214822505_)
                                                              (let ((_e2224122508_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _g2214822505_)))
                        (let ((_hd2224222512_ (##car _e2224122508_))
                              (_tl2224322515_ (##cdr _e2224122508_)))
                          ((lambda (_L22518_ _L22520_)
                             (if (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-class-info?|
                                  _L22520_)
                                 (cons 'class:
                                       (cons (gx#syntax-local-value _L22520_)
                                             (cons (_parse-class-body21780_
                                                    _L22518_)
                                                   '())))
                                 (_g2213922501_ _g2214822505_)))
                           _tl2224322515_
                           _hd2224222512_)))
                      (_g2213922501_ _g2214822505_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_g2213722561_
                                                          (lambda (_g2214822535_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2214822535_)
                        (let ((_e2223622538_ (gx#syntax-e _g2214822535_)))
                          (let ((_hd2223722542_ (##car _e2223622538_))
                                (_tl2223822545_ (##cdr _e2223622538_)))
                            ((lambda (_L22548_ _L22550_)
                               (if (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-struct-info?|
                                    _L22550_)
                                   (cons 'struct:
                                         (cons (gx#syntax-local-value _L22550_)
                                               (cons (_parse-vector21778_
                                                      _L22548_)
                                                     '())))
                                   (_g2213822531_ _g2214822535_)))
                             _tl2223822545_
                             _hd2223722542_)))
                        (_g2213822531_ _g2214822535_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_g2213622624_
                                                            (lambda (_g2214822565_)
                                                              (if (gx#stx-vector?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2214822565_)
                          (let ((_e2222422568_
                                 (vector->list (gx#syntax-e _g2214822565_))))
                            (if (gx#stx-pair/null? _e2222422568_)
                                (if (fx>= (gx#stx-length _e2222422568_) '0)
                                    (let ((_g28424_
                                           (gx#syntax-split-splice
                                            _e2222422568_
                                            '0)))
                                      (begin
                                        (let ((_g28425_
                                               (values-count _g28424_)))
                                          (if (not (fx= _g28425_ 2))
                                              (error "Context expects 2 values"
                                                     _g28425_)))
                                        (let ((_target2222522572_
                                               (values-ref _g28424_ 0))
                                              (_tl2222722575_
                                               (values-ref _g28424_ 1)))
                                          (if (gx#stx-null? _tl2222722575_)
                                              (letrec ((_loop2222822578_
                                                        (lambda (_hd2222622582_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body2223222585_)
                  (if (gx#stx-pair? _hd2222622582_)
                      (let ((_e2222922588_ (gx#syntax-e _hd2222622582_)))
                        (let ((_lp-hd2223022592_ (##car _e2222922588_))
                              (_lp-tl2223122595_ (##cdr _e2222922588_)))
                          (_loop2222822578_
                           _lp-tl2223122595_
                           (cons _lp-hd2223022592_ _body2223222585_))))
                      (let ((_body2223322598_ (reverse _body2223222585_)))
                        ((lambda (_L22602_)
                           (cons 'vector:
                                 (cons (_parse-vector21778_
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g2261522618_
                                                          _g2261622621_)
                                                   (cons _g2261522618_
                                                         _g2261622621_))
                                                 '()
                                                 _L22602_)))
                                       '())))
                         _body2223322598_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop2222822578_
                                                 _target2222522572_
                                                 '()))
                                              (_g2213722561_ _g2214822565_)))))
                                    (_g2213722561_ _g2214822565_))
                                (_g2213722561_ _g2214822565_)))
                          (_g2213722561_ _g2214822565_)))))
               (let ((_g2213522652_
                      (lambda (_g2214822628_)
                        (if (gx#stx-pair? _g2214822628_)
                            (let ((_e2222022631_ (gx#syntax-e _g2214822628_)))
                              (let ((_hd2222122635_ (##car _e2222022631_))
                                    (_tl2222222638_ (##cdr _e2222022631_)))
                                (if (gx#identifier? _hd2222122635_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core::<match>[1]#_g28426_|
                                         _hd2222122635_)
                                        ((lambda (_L22641_)
                                           (cons 'vector:
                                                 (cons (_parse-vector21778_
                                                        _L22641_)
                                                       '())))
                                         _tl2222222638_)
                                        (_g2213622624_ _g2214822628_))
                                    (_g2213622624_ _g2214822628_))))
                            (_g2213622624_ _g2214822628_)))))
                 (let ((_g2213422680_
                        (lambda (_g2214822656_)
                          (if (gx#stx-pair? _g2214822656_)
                              (let ((_e2221622659_
                                     (gx#syntax-e _g2214822656_)))
                                (let ((_hd2221722663_ (##car _e2221622659_))
                                      (_tl2221822666_ (##cdr _e2221622659_)))
                                  (if (gx#identifier? _hd2221722663_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core::<match>[1]#_g28427_|
                                           _hd2221722663_)
                                          ((lambda (_L22669_)
                                             (cons 'values:
                                                   (cons (_parse-vector21778_
                                                          _L22669_)
                                                         '())))
                                           _tl2221822666_)
                                          (_g2213522652_ _g2214822656_))
                                      (_g2213522652_ _g2214822656_))))
                              (_g2213522652_ _g2214822656_)))))
                   (let ((_g2213322720_
                          (lambda (_g2214822684_)
                            (if (gx#stx-pair? _g2214822684_)
                                (let ((_e2220922687_
                                       (gx#syntax-e _g2214822684_)))
                                  (let ((_hd2221022691_ (##car _e2220922687_))
                                        (_tl2221122694_ (##cdr _e2220922687_)))
                                    (if (gx#identifier? _hd2221022691_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core::<match>[1]#_g28428_|
                                             _hd2221022691_)
                                            (if (gx#stx-pair? _tl2221122694_)
                                                (let ((_e2221222697_
                                                       (gx#syntax-e
                                                        _tl2221122694_)))
                                                  (let ((_hd2221322701_
                                                         (##car _e2221222697_))
                                                        (_tl2221422704_
                                                         (##cdr _e2221222697_)))
                                                    (if (gx#stx-null?
                                                         _tl2221422704_)
                                                        ((lambda (_L22707_)
                                                           (_parse121775_
                                                            _L22707_))
                                                         _hd2221322701_)
                                                        (_g2213422680_
                                                         _g2214822684_))))
                                                (_g2213422680_ _g2214822684_))
                                            (_g2213422680_ _g2214822684_))
                                        (_g2213422680_ _g2214822684_))))
                                (_g2213422680_ _g2214822684_)))))
                     (let ((_g2213222741_
                            (lambda (_g2214822724_)
                              (if (gx#stx-box? _g2214822724_)
                                  (let ((_e2220722727_
                                         (unbox (gx#syntax-e _g2214822724_))))
                                    ((lambda (_L22731_)
                                       (cons 'box:
                                             (cons (_parse121775_ _L22731_)
                                                   '())))
                                     _e2220722727_))
                                  (_g2213322720_ _g2214822724_)))))
                       (let ((_g2213122781_
                              (lambda (_g2214822745_)
                                (if (gx#stx-pair? _g2214822745_)
                                    (let ((_e2220022748_
                                           (gx#syntax-e _g2214822745_)))
                                      (let ((_hd2220122752_
                                             (##car _e2220022748_))
                                            (_tl2220222755_
                                             (##cdr _e2220022748_)))
                                        (if (gx#identifier? _hd2220122752_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<match>[1]#_g28429_|
                                                 _hd2220122752_)
                                                (if (gx#stx-pair?
                                                     _tl2220222755_)
                                                    (let ((_e2220322758_
                                                           (gx#syntax-e
                                                            _tl2220222755_)))
                                                      (let ((_hd2220422762_
                                                             (##car _e2220322758_))
                                                            (_tl2220522765_
                                                             (##cdr _e2220322758_)))
                                                        (if (gx#stx-null?
                                                             _tl2220522765_)
                                                            ((lambda (_L22768_)
                                                               (cons 'box:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (_parse121775_ _L22768_) '())))
                     _hd2220422762_)
                    (_g2213222741_ _g2214822745_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2213222741_
                                                     _g2214822745_))
                                                (_g2213222741_ _g2214822745_))
                                            (_g2213222741_ _g2214822745_))))
                                    (_g2213222741_ _g2214822745_)))))
                         (let ((_g2213022809_
                                (lambda (_g2214822785_)
                                  (if (gx#stx-pair? _g2214822785_)
                                      (let ((_e2219622788_
                                             (gx#syntax-e _g2214822785_)))
                                        (let ((_hd2219722792_
                                               (##car _e2219622788_))
                                              (_tl2219822795_
                                               (##cdr _e2219622788_)))
                                          (if (gx#identifier? _hd2219722792_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core::<match>[1]#_g28430_|
                                                   _hd2219722792_)
                                                  ((lambda (_L22798_)
                                                     (_parse-list21777_
                                                      _L22798_))
                                                   _tl2219822795_)
                                                  (_g2213122781_
                                                   _g2214822785_))
                                              (_g2213122781_ _g2214822785_))))
                                      (_g2213122781_ _g2214822785_)))))
                           (let ((_g2212922865_
                                  (lambda (_g2214822813_)
                                    (if (gx#stx-pair? _g2214822813_)
                                        (let ((_e2218622816_
                                               (gx#syntax-e _g2214822813_)))
                                          (let ((_hd2218722820_
                                                 (##car _e2218622816_))
                                                (_tl2218822823_
                                                 (##cdr _e2218622816_)))
                                            (if (gx#identifier? _hd2218722820_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core::<match>[1]#_g28431_|
                                                     _hd2218722820_)
                                                    (if (gx#stx-pair?
                                                         _tl2218822823_)
                                                        (let ((_e2218922826_
                                                               (gx#syntax-e
                                                                _tl2218822823_)))
                                                          (let ((_hd2219022830_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2218922826_))
                        (_tl2219122833_ (##cdr _e2218922826_)))
                    (if (gx#stx-pair? _tl2219122833_)
                        (let ((_e2219222836_ (gx#syntax-e _tl2219122833_)))
                          (let ((_hd2219322840_ (##car _e2219222836_))
                                (_tl2219422843_ (##cdr _e2219222836_)))
                            ((lambda (_L22846_ _L22848_ _L22849_)
                               (if (gx#stx-null? _L22846_)
                                   (cons 'cons:
                                         (cons (_parse121775_ _L22849_)
                                               (cons (_parse121775_ _L22848_)
                                                     '())))
                                   (cons 'cons:
                                         (cons (_parse121775_ _L22849_)
                                               (cons (_parse121775_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons*)
                                                            (cons _L22848_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L22846_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                             _tl2219422843_
                             _hd2219322840_
                             _hd2219022830_)))
                        (_g2213022809_ _g2214822813_))))
                (_g2213022809_ _g2214822813_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2213022809_
                                                     _g2214822813_))
                                                (_g2213022809_
                                                 _g2214822813_))))
                                        (_g2213022809_ _g2214822813_)))))
                             (let ((_g2212822919_
                                    (lambda (_g2214822869_)
                                      (if (gx#stx-pair? _g2214822869_)
                                          (let ((_e2217422872_
                                                 (gx#syntax-e _g2214822869_)))
                                            (let ((_hd2217522876_
                                                   (##car _e2217422872_))
                                                  (_tl2217622879_
                                                   (##cdr _e2217422872_)))
                                              (if (gx#identifier?
                                                   _hd2217522876_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core::<match>[1]#_g28432_|
                                                       _hd2217522876_)
                                                      (if (gx#stx-pair?
                                                           _tl2217622879_)
                                                          (let ((_e2217722882_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2217622879_)))
                    (let ((_hd2217822886_ (##car _e2217722882_))
                          (_tl2217922889_ (##cdr _e2217722882_)))
                      (if (gx#stx-pair? _tl2217922889_)
                          (let ((_e2218022892_ (gx#syntax-e _tl2217922889_)))
                            (let ((_hd2218122896_ (##car _e2218022892_))
                                  (_tl2218222899_ (##cdr _e2218022892_)))
                              (if (gx#stx-null? _tl2218222899_)
                                  ((lambda (_L22902_ _L22904_)
                                     (cons 'cons:
                                           (cons (_parse121775_ _L22904_)
                                                 (cons (_parse121775_ _L22902_)
                                                       '()))))
                                   _hd2218122896_
                                   _hd2217822886_)
                                  (_g2212922865_ _g2214822869_))))
                          (_g2212922865_ _g2214822869_))))
                  (_g2212922865_ _g2214822869_))
              (_g2212922865_ _g2214822869_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2212922865_
                                                   _g2214822869_))))
                                          (_g2212922865_ _g2214822869_)))))
                               (let ((_g2212722959_
                                      (lambda (_g2214822923_)
                                        (if (gx#stx-pair? _g2214822923_)
                                            (let ((_e2216622926_
                                                   (gx#syntax-e
                                                    _g2214822923_)))
                                              (let ((_hd2216722930_
                                                     (##car _e2216622926_))
                                                    (_tl2216822933_
                                                     (##cdr _e2216622926_)))
                                                (if (gx#identifier?
                                                     _hd2216722930_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core::<match>[1]#_g28433_|
                                                         _hd2216722930_)
                                                        (if (gx#stx-pair?
                                                             _tl2216822933_)
                                                            (let ((_e2216922936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl2216822933_)))
                      (let ((_hd2217022940_ (##car _e2216922936_))
                            (_tl2217122943_ (##cdr _e2216922936_)))
                        (if (gx#stx-null? _tl2217122943_)
                            ((lambda (_L22946_)
                               (cons 'not:
                                     (cons (_parse121775_ _L22946_) '())))
                             _hd2217022940_)
                            (_g2212822919_ _g2214822923_))))
                    (_g2212822919_ _g2214822923_))
                (_g2212822919_ _g2214822923_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2212822919_
                                                     _g2214822923_))))
                                            (_g2212822919_ _g2214822923_)))))
                                 (let ((_g2212623044_
                                        (lambda (_g2214822963_)
                                          (if (gx#stx-pair? _g2214822963_)
                                              (let ((_e2216222966_
                                                     (gx#syntax-e
                                                      _g2214822963_)))
                                                (let ((_hd2216322970_
                                                       (##car _e2216222966_))
                                                      (_tl2216422973_
                                                       (##cdr _e2216222966_)))
                                                  (if (gx#identifier?
                                                       _hd2216322970_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core::<match>[1]#_g28434_|
                                                           _hd2216322970_)
                                                          ((lambda (_L22976_)
                                                             (if (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L22976_)
                         (let ((_g2298822999_
                                (lambda (_g2298922995_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2298922995_))))
                           (let ((_g2298723010_
                                  (lambda (_g2298923003_)
                                    ((lambda ()
                                       (cons 'or:
                                             (gx#stx-map
                                              _parse121775_
                                              _L22976_)))))))
                             (let ((_g2298623040_
                                    (lambda (_g2298923014_)
                                      (if (gx#stx-pair? _g2298923014_)
                                          (let ((_e2299123017_
                                                 (gx#syntax-e _g2298923014_)))
                                            (let ((_hd2299223021_
                                                   (##car _e2299123017_))
                                                  (_tl2299323024_
                                                   (##cdr _e2299123017_)))
                                              (if (gx#stx-null? _tl2299323024_)
                                                  ((lambda (_L23027_)
                                                     (_parse121775_ _L23027_))
                                                   _hd2299223021_)
                                                  (_g2298723010_
                                                   _g2298923014_))))
                                          (_g2298723010_ _g2298923014_)))))
                               (_g2298623040_ _L22976_))))
                         (_g2212722959_ _g2214822963_)))
                   _tl2216422973_)
                  (_g2212722959_ _g2214822963_))
              (_g2212722959_ _g2214822963_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2212722959_ _g2214822963_)))))
                                   (let ((_g2212523129_
                                          (lambda (_g2214823048_)
                                            (if (gx#stx-pair? _g2214823048_)
                                                (let ((_e2215823051_
                                                       (gx#syntax-e
                                                        _g2214823048_)))
                                                  (let ((_hd2215923055_
                                                         (##car _e2215823051_))
                                                        (_tl2216023058_
                                                         (##cdr _e2215823051_)))
                                                    (if (gx#identifier?
                                                         _hd2215923055_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core::<match>[1]#_g28435_|
                                                             _hd2215923055_)
                                                            ((lambda (_L23061_)
                                                               (if (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L23061_)
                           (let ((_g2307323084_
                                  (lambda (_g2307423080_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g2307423080_))))
                             (let ((_g2307223095_
                                    (lambda (_g2307423088_)
                                      ((lambda ()
                                         (cons 'and:
                                               (gx#stx-map
                                                _parse121775_
                                                _L23061_)))))))
                               (let ((_g2307123125_
                                      (lambda (_g2307423099_)
                                        (if (gx#stx-pair? _g2307423099_)
                                            (let ((_e2307623102_
                                                   (gx#syntax-e
                                                    _g2307423099_)))
                                              (let ((_hd2307723106_
                                                     (##car _e2307623102_))
                                                    (_tl2307823109_
                                                     (##cdr _e2307623102_)))
                                                (if (gx#stx-null?
                                                     _tl2307823109_)
                                                    ((lambda (_L23112_)
                                                       (_parse121775_
                                                        _L23112_))
                                                     _hd2307723106_)
                                                    (_g2307223095_
                                                     _g2307423099_))))
                                            (_g2307223095_ _g2307423099_)))))
                                 (_g2307123125_ _L23061_))))
                           (_g2212623044_ _g2214823048_)))
                     _tl2216023058_)
                    (_g2212623044_ _g2214823048_))
                (_g2212623044_ _g2214823048_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2212623044_
                                                 _g2214823048_)))))
                                     (let ((_g2212423369_
                                            (lambda (_g2214823133_)
                                              (if (gx#stx-pair? _g2214823133_)
                                                  (let ((_e2215123136_
                                                         (gx#syntax-e
                                                          _g2214823133_)))
                                                    (let ((_hd2215223140_
                                                           (##car _e2215123136_))
                                                          (_tl2215323143_
                                                           (##cdr _e2215123136_)))
                                                      (if (gx#identifier?
                                                           _hd2215223140_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core::<match>[1]#_g28436_|
                                                               _hd2215223140_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2215323143_)
                          (let ((_e2215423146_ (gx#syntax-e _tl2215323143_)))
                            (let ((_hd2215523150_ (##car _e2215423146_))
                                  (_tl2215623153_ (##cdr _e2215423146_)))
                              ((lambda (_L23156_ _L23158_)
                                 (let ((_g2317523207_
                                        (lambda (_g2317623203_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g2317623203_))))
                                   (let ((_g2317423218_
                                          (lambda (_g2317623211_)
                                            ((lambda ()
                                               (_parse-error21782_
                                                _hd22122_))))))
                                     (let ((_g2317323286_
                                            (lambda (_g2317623222_)
                                              (if (gx#stx-pair? _g2317623222_)
                                                  (let ((_e2319023225_
                                                         (gx#syntax-e
                                                          _g2317623222_)))
                                                    (let ((_hd2319123229_
                                                           (##car _e2319023225_))
                                                          (_tl2319223232_
                                                           (##cdr _e2319023225_)))
                                                      (if (gx#stx-datum?
                                                           _hd2319123229_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2319123229_)
                              '::)
                      (if (gx#stx-pair? _tl2319223232_)
                          (let ((_e2319323235_ (gx#syntax-e _tl2319223232_)))
                            (let ((_hd2319423239_ (##car _e2319323235_))
                                  (_tl2319523242_ (##cdr _e2319323235_)))
                              (if (gx#stx-pair? _tl2319523242_)
                                  (let ((_e2319623245_
                                         (gx#syntax-e _tl2319523242_)))
                                    (let ((_hd2319723249_
                                           (##car _e2319623245_))
                                          (_tl2319823252_
                                           (##cdr _e2319623245_)))
                                      (if (gx#identifier? _hd2319723249_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core::<match>[1]#_g28437_|
                                               _hd2319723249_)
                                              (if (gx#stx-pair? _tl2319823252_)
                                                  (let ((_e2319923255_
                                                         (gx#syntax-e
                                                          _tl2319823252_)))
                                                    (let ((_hd2320023259_
                                                           (##car _e2319923255_))
                                                          (_tl2320123262_
                                                           (##cdr _e2319923255_)))
                                                      (if (gx#stx-null?
                                                           _tl2320123262_)
                                                          ((lambda (_L23265_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L23267_)
                     (cons '?:
                           (cons _L23158_
                                 (cons '::
                                       (cons _L23267_
                                             (cons '=>:
                                                   (cons (_parse121775_
                                                          _L23265_)
                                                         '())))))))
                   _hd2320023259_
                   _hd2319423239_)
                  (_g2317423218_ _g2317623222_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2317423218_
                                                   _g2317623222_))
                                              (_g2317423218_ _g2317623222_))
                                          (_g2317423218_ _g2317623222_))))
                                  (_g2317423218_ _g2317623222_))))
                          (_g2317423218_ _g2317623222_))
                      (_g2317423218_ _g2317623222_))
                  (_g2317423218_ _g2317623222_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2317423218_
                                                   _g2317623222_)))))
                                       (let ((_g2317223326_
                                              (lambda (_g2317623290_)
                                                (if (gx#stx-pair?
                                                     _g2317623290_)
                                                    (let ((_e2318223293_
                                                           (gx#syntax-e
                                                            _g2317623290_)))
                                                      (let ((_hd2318323297_
                                                             (##car _e2318223293_))
                                                            (_tl2318423300_
                                                             (##cdr _e2318223293_)))
                                                        (if (gx#identifier?
                                                             _hd2318323297_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core::<match>[1]#_g28438_|
                         _hd2318323297_)
                        (if (gx#stx-pair? _tl2318423300_)
                            (let ((_e2318523303_ (gx#syntax-e _tl2318423300_)))
                              (let ((_hd2318623307_ (##car _e2318523303_))
                                    (_tl2318723310_ (##cdr _e2318523303_)))
                                (if (gx#stx-null? _tl2318723310_)
                                    ((lambda (_L23313_)
                                       (cons '?:
                                             (cons _L23158_
                                                   (cons '=>:
                                                         (cons (_parse121775_
                                                                _L23313_)
                                                               '())))))
                                     _hd2318623307_)
                                    (_g2317323286_ _g2317623290_))))
                            (_g2317323286_ _g2317623290_))
                        (_g2317323286_ _g2317623290_))
                    (_g2317323286_ _g2317623290_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2317323286_
                                                     _g2317623290_)))))
                                         (let ((_g2317123354_
                                                (lambda (_g2317623330_)
                                                  (if (gx#stx-pair?
                                                       _g2317623330_)
                                                      (let ((_e2317823333_
                                                             (gx#syntax-e
                                                              _g2317623330_)))
                                                        (let ((_hd2317923337_
                                                               (##car _e2317823333_))
                                                              (_tl2318023340_
                                                               (##cdr _e2317823333_)))
                                                          (if (gx#stx-null?
                                                               _tl2318023340_)
                                                              ((lambda (_L23343_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '?:
                               (cons _L23158_
                                     (cons (_parse121775_ _L23343_) '()))))
                       _hd2317923337_)
                      (_g2317223326_ _g2317623330_))))
              (_g2317223326_ _g2317623330_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_g2317023365_
                                                  (lambda (_g2317623358_)
                                                    (if (gx#stx-null?
                                                         _g2317623358_)
                                                        ((lambda ()
                                                           (cons '?:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L23158_ '()))))
                (_g2317123354_ _g2317623358_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2317023365_ _L23156_))))))))
                               _tl2215623153_
                               _hd2215523150_)))
                          (_g2212523129_ _g2214823133_))
                      (_g2212523129_ _g2214823133_))
                  (_g2212523129_ _g2214823133_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2212523129_
                                                   _g2214823133_)))))
                                       (_g2212423369_
                                        _hd22122_)))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (_parse-list21777_
                             (lambda (_body21957_)
                               (let ((_g2196321991_
                                      (lambda (_g2196421987_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g2196421987_))))
                                 (let ((_g2196222002_
                                        (lambda (_g2196421995_)
                                          ((lambda ()
                                             (if (gx#stx-null? _body21957_)
                                                 (cons 'null: '())
                                                 (if (not (gx#stx-pair?
                                                           _body21957_))
                                                     (_parse121775_
                                                      _body21957_)
                                                     (_parse-error21782_
                                                      _body21957_))))))))
                                   (let ((_g2196122034_
                                          (lambda (_g2196422006_)
                                            (if (gx#stx-pair? _g2196422006_)
                                                (let ((_e2198322009_
                                                       (gx#syntax-e
                                                        _g2196422006_)))
                                                  (let ((_hd2198422013_
                                                         (##car _e2198322009_))
                                                        (_tl2198522016_
                                                         (##cdr _e2198322009_)))
                                                    ((lambda (_L22019_
                                                              _L22021_)
                                                       (if (not (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L22021_))
                   (cons 'cons:
                         (cons (_parse121775_ _L22021_)
                               (cons (_parse-list21777_ _L22019_) '())))
                   (_g2196222002_ _g2196422006_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _tl2198522016_
                                                     _hd2198422013_)))
                                                (_g2196222002_
                                                 _g2196422006_)))))
                                     (let ((_g2196022078_
                                            (lambda (_g2196422038_)
                                              (if (gx#stx-pair? _g2196422038_)
                                                  (let ((_e2197522041_
                                                         (gx#syntax-e
                                                          _g2196422038_)))
                                                    (let ((_hd2197622045_
                                                           (##car _e2197522041_))
                                                          (_tl2197722048_
                                                           (##cdr _e2197522041_)))
                                                      (if (gx#stx-pair?
                                                           _tl2197722048_)
                                                          (let ((_e2197822051_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2197722048_)))
                    (let ((_hd2197922055_ (##car _e2197822051_))
                          (_tl2198022058_ (##cdr _e2197822051_)))
                      ((lambda (_L22061_ _L22063_ _L22064_)
                         (if (gx#ellipsis? _L22063_)
                             (cons 'splice:
                                   (cons (_parse121775_ _L22064_)
                                         (cons (_parse-list21777_ _L22061_)
                                               '())))
                             (_g2196122034_ _g2196422038_)))
                       _tl2198022058_
                       _hd2197922055_
                       _hd2197622045_)))
                  (_g2196122034_ _g2196422038_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2196122034_
                                                   _g2196422038_)))))
                                       (let ((_g2195922118_
                                              (lambda (_g2196422082_)
                                                (if (gx#stx-pair?
                                                     _g2196422082_)
                                                    (let ((_e2196622085_
                                                           (gx#syntax-e
                                                            _g2196422082_)))
                                                      (let ((_hd2196722089_
                                                             (##car _e2196622085_))
                                                            (_tl2196822092_
                                                             (##cdr _e2196622085_)))
                                                        (if (gx#stx-datum?
                                                             _hd2196722089_)
                                                            (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _hd2196722089_)
                                '::)
                        (if (gx#stx-pair? _tl2196822092_)
                            (let ((_e2196922095_ (gx#syntax-e _tl2196822092_)))
                              (let ((_hd2197022099_ (##car _e2196922095_))
                                    (_tl2197122102_ (##cdr _e2196922095_)))
                                (if (gx#stx-null? _tl2197122102_)
                                    ((lambda (_L22105_)
                                       (_parse121775_ _L22105_))
                                     _hd2197022099_)
                                    (_g2196022078_ _g2196422082_))))
                            (_g2196022078_ _g2196422082_))
                        (_g2196022078_ _g2196422082_))
                    (_g2196022078_ _g2196422082_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2196022078_
                                                     _g2196422082_)))))
                                         (_g2195922118_ _body21957_))))))))
                            (_parse-vector21778_
                             (lambda (_body21954_)
                               (if (_simple-vector?21779_ _body21954_)
                                   (cons 'simple:
                                         (cons (gx#stx-map
                                                _parse121775_
                                                _body21954_)
                                               '()))
                                   (cons 'list:
                                         (cons (_parse-list21777_ _body21954_)
                                               '())))))
                            (_simple-vector?21779_
                             (lambda (_body21891_)
                               (let ((_g2189521907_
                                      (lambda (_g2189621903_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g2189621903_))))
                                 (let ((_g2189421918_
                                        (lambda (_g2189621911_)
                                          ((lambda ()
                                             (gx#stx-null? _body21891_))))))
                                   (let ((_g2189321950_
                                          (lambda (_g2189621922_)
                                            (if (gx#stx-pair? _g2189621922_)
                                                (let ((_e2189921925_
                                                       (gx#syntax-e
                                                        _g2189621922_)))
                                                  (let ((_hd2190021929_
                                                         (##car _e2189921925_))
                                                        (_tl2190121932_
                                                         (##cdr _e2189921925_)))
                                                    ((lambda (_L21935_
                                                              _L21937_)
                                                       (if (not (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L21937_))
                   (_simple-vector?21779_ _L21935_)
                   '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _tl2190121932_
                                                     _hd2190021929_)))
                                                (_g2189421918_
                                                 _g2189621922_)))))
                                     (_g2189321950_ _body21891_))))))
                            (_parse-class-body21780_
                             (lambda (_body21800_)
                               ((letrec ((_recur21803_
                                          (lambda (_rest21806_)
                                            (let ((_g2181021826_
                                                   (lambda (_g2181121822_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2181121822_))))
                                              (let ((_g2180921837_
                                                     (lambda (_g2181121830_)
                                                       ((lambda ()
                                                          (if (gx#stx-null?
                                                               _rest21806_)
                                                              '()
                                                              (_parse-error21782_
                                                               _rest21806_)))))))
                                                (let ((_g2180821887_
                                                       (lambda (_g2181121841_)
                                                         (if (gx#stx-pair?
                                                              _g2181121841_)
                                                             (let ((_e2181521844_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g2181121841_)))
                       (let ((_hd2181621848_ (##car _e2181521844_))
                             (_tl2181721851_ (##cdr _e2181521844_)))
                         (if (gx#stx-pair? _tl2181721851_)
                             (let ((_e2181821854_
                                    (gx#syntax-e _tl2181721851_)))
                               (let ((_hd2181921858_ (##car _e2181821854_))
                                     (_tl2182021861_ (##cdr _e2181821854_)))
                                 ((lambda (_L21864_ _L21866_ _L21867_)
                                    (if (gx#stx-keyword? _L21867_)
                                        (cons* _L21867_
                                               (_parse121775_ _L21866_)
                                               (_recur21803_ _L21864_))
                                        (_g2180921837_ _g2181121841_)))
                                  _tl2182021861_
                                  _hd2181921858_
                                  _hd2181621848_)))
                             (_g2180921837_ _g2181121841_))))
                     (_g2180921837_ _g2181121841_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2180821887_
                                                   _rest21806_)))))))
                                  _recur21803_)
                                _body21800_))))
                     (_parse121775_ _stx21771_)))))))
        (lambda _g28440_
          (let ((_g28439_ (length _g28440_)))
            (cond ((fx= _g28439_ 1)
                   (apply (lambda (_stx23377_)
                            (let ((_match-stx23380_ '#f))
                              (_opt-lambda2176923373_
                               _stx23377_
                               _match-stx23380_)))
                          _g28440_))
                  ((fx= _g28439_ 2)
                   (apply (lambda (_stx23383_ _match-stx23385_)
                            (_opt-lambda2176923373_
                             _stx23383_
                             _match-stx23385_))
                          _g28440_))
                  (else (error "No clause matching arguments" _g28440_)))))))
    (define |gerbil/core::<match>[1]#match-pattern?|
      (lambda (_stx21755_)
        (call-with-escape
         (lambda (_E21759_)
           (with-exception-handler
            (let ((_E!21762_ (current-exception-handler)))
              (lambda (_e21765_)
                (if (gx#syntax-error? _e21765_)
                    (_E21759_ '#f)
                    (_E!21762_ _e21765_))))
            (lambda ()
              (begin
                (|gerbil/core::<match>[1]#parse-match-pattern| _stx21755_)
                '#t)))))))
    (define |gerbil/core::<match>[1]#match-pattern-vars|
      (lambda (_ptree20610_)
        (letrec ((_loop20613_
                  (lambda (_ptree20888_ _vars20890_ _K20891_)
                    (let ((_g2090320993_
                           (lambda (_g2090420989_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2090420989_))))
                      (let ((_g2090221004_
                             (lambda (_g2090420997_)
                               ((lambda () (_K20891_ _vars20890_))))))
                        (let ((_g2090121051_
                               (lambda (_g2090421008_)
                                 (if (gx#stx-pair? _g2090421008_)
                                     (let ((_e2098221011_
                                            (gx#syntax-e _g2090421008_)))
                                       (let ((_hd2098321015_
                                              (##car _e2098221011_))
                                             (_tl2098421018_
                                              (##cdr _e2098221011_)))
                                         (if (gx#stx-datum? _hd2098321015_)
                                             (if (equal? (gx#stx-e
                                                          _hd2098321015_)
                                                         'var:)
                                                 (if (gx#stx-pair?
                                                      _tl2098421018_)
                                                     (let ((_e2098521021_
                                                            (gx#syntax-e
                                                             _tl2098421018_)))
                                                       (let ((_hd2098621025_
                                                              (##car _e2098521021_))
                                                             (_tl2098721028_
                                                              (##cdr _e2098521021_)))
                                                         (if (gx#stx-null?
                                                              _tl2098721028_)
                                                             ((lambda (_L21031_)
                                                                (if (find (lambda (_g2104521047_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (gx#bound-identifier=?
                                     _g2104521047_
                                     _L21031_))
                                  _vars20890_)
                            (_K20891_ _vars20890_)
                            (_K20891_ (cons _L21031_ _vars20890_))))
                      _hd2098621025_)
                     (_g2090221004_ _g2090421008_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2090221004_
                                                      _g2090421008_))
                                                 (_g2090221004_ _g2090421008_))
                                             (_g2090221004_ _g2090421008_))))
                                     (_g2090221004_ _g2090421008_)))))
                          (let ((_g2090021103_
                                 (lambda (_g2090421055_)
                                   (if (gx#stx-pair? _g2090421055_)
                                       (let ((_e2097221058_
                                              (gx#syntax-e _g2090421055_)))
                                         (let ((_hd2097321062_
                                                (##car _e2097221058_))
                                               (_tl2097421065_
                                                (##cdr _e2097221058_)))
                                           (if (gx#stx-datum? _hd2097321062_)
                                               (if (equal? (gx#stx-e
                                                            _hd2097321062_)
                                                           'class:)
                                                   (if (gx#stx-pair?
                                                        _tl2097421065_)
                                                       (let ((_e2097521068_
                                                              (gx#syntax-e
                                                               _tl2097421065_)))
                                                         (let ((_hd2097621072_
                                                                (##car _e2097521068_))
                                                               (_tl2097721075_
                                                                (##cdr _e2097521068_)))
                                                           (if (gx#stx-pair?
                                                                _tl2097721075_)
                                                               (let ((_e2097821078_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2097721075_)))
                         (let ((_hd2097921082_ (##car _e2097821078_))
                               (_tl2098021085_ (##cdr _e2097821078_)))
                           (if (gx#stx-null? _tl2098021085_)
                               ((lambda (_L21088_)
                                  (_loop-class-list20617_
                                   _L21088_
                                   _vars20890_
                                   _K20891_))
                                _hd2097921082_)
                               (_g2090121051_ _g2090421055_))))
                       (_g2090121051_ _g2090421055_))))
               (_g2090121051_ _g2090421055_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2090121051_
                                                    _g2090421055_))
                                               (_g2090121051_ _g2090421055_))))
                                       (_g2090121051_ _g2090421055_)))))
                            (let ((_g2089921155_
                                   (lambda (_g2090421107_)
                                     (if (gx#stx-pair? _g2090421107_)
                                         (let ((_e2096221110_
                                                (gx#syntax-e _g2090421107_)))
                                           (let ((_hd2096321114_
                                                  (##car _e2096221110_))
                                                 (_tl2096421117_
                                                  (##cdr _e2096221110_)))
                                             (if (gx#stx-datum? _hd2096321114_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2096321114_)
                                                             'struct:)
                                                     (if (gx#stx-pair?
                                                          _tl2096421117_)
                                                         (let ((_e2096521120_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2096421117_)))
                   (let ((_hd2096621124_ (##car _e2096521120_))
                         (_tl2096721127_ (##cdr _e2096521120_)))
                     (if (gx#stx-pair? _tl2096721127_)
                         (let ((_e2096821130_ (gx#syntax-e _tl2096721127_)))
                           (let ((_hd2096921134_ (##car _e2096821130_))
                                 (_tl2097021137_ (##cdr _e2096821130_)))
                             (if (gx#stx-null? _tl2097021137_)
                                 ((lambda (_L21140_)
                                    (_loop-vector20615_
                                     _L21140_
                                     _vars20890_
                                     _K20891_))
                                  _hd2096921134_)
                                 (_g2090021103_ _g2090421107_))))
                         (_g2090021103_ _g2090421107_))))
                 (_g2090021103_ _g2090421107_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2090021103_
                                                      _g2090421107_))
                                                 (_g2090021103_
                                                  _g2090421107_))))
                                         (_g2090021103_ _g2090421107_)))))
                              (let ((_g2089821201_
                                     (lambda (_g2090421159_)
                                       (if (gx#stx-pair? _g2090421159_)
                                           (let ((_e2095521162_
                                                  (gx#syntax-e _g2090421159_)))
                                             (let ((_hd2095621166_
                                                    (##car _e2095521162_))
                                                   (_tl2095721169_
                                                    (##cdr _e2095521162_)))
                                               (if (gx#stx-pair?
                                                    _tl2095721169_)
                                                   (let ((_e2095821172_
                                                          (gx#syntax-e
                                                           _tl2095721169_)))
                                                     (let ((_hd2095921176_
                                                            (##car _e2095821172_))
                                                           (_tl2096021179_
                                                            (##cdr _e2095821172_)))
                                                       (if (gx#stx-null?
                                                            _tl2096021179_)
                                                           ((lambda (_L21182_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L21184_)
                      (if (let ((_$e21197_ (gx#stx-eq? 'values: _L21184_)))
                            (if _$e21197_
                                _$e21197_
                                (gx#stx-eq? 'vector: _L21184_)))
                          (_loop-vector20615_ _L21182_ _vars20890_ _K20891_)
                          (_g2089921155_ _g2090421159_)))
                    _hd2095921176_
                    _hd2095621166_)
                   (_g2089921155_ _g2090421159_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2089921155_
                                                    _g2090421159_))))
                                           (_g2089921155_ _g2090421159_)))))
                                (let ((_g2089721241_
                                       (lambda (_g2090421205_)
                                         (if (gx#stx-pair? _g2090421205_)
                                             (let ((_e2094721208_
                                                    (gx#syntax-e
                                                     _g2090421205_)))
                                               (let ((_hd2094821212_
                                                      (##car _e2094721208_))
                                                     (_tl2094921215_
                                                      (##cdr _e2094721208_)))
                                                 (if (gx#stx-datum?
                                                      _hd2094821212_)
                                                     (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd2094821212_)
                         'box:)
                 (if (gx#stx-pair? _tl2094921215_)
                     (let ((_e2095021218_ (gx#syntax-e _tl2094921215_)))
                       (let ((_hd2095121222_ (##car _e2095021218_))
                             (_tl2095221225_ (##cdr _e2095021218_)))
                         (if (gx#stx-null? _tl2095221225_)
                             ((lambda (_L21228_)
                                (_loop20613_ _L21228_ _vars20890_ _K20891_))
                              _hd2095121222_)
                             (_g2089821201_ _g2090421205_))))
                     (_g2089821201_ _g2090421205_))
                 (_g2089821201_ _g2090421205_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2089821201_
                                                      _g2090421205_))))
                                             (_g2089821201_ _g2090421205_)))))
                                  (let ((_g2089621300_
                                         (lambda (_g2090421245_)
                                           (if (gx#stx-pair? _g2090421245_)
                                               (let ((_e2093721248_
                                                      (gx#syntax-e
                                                       _g2090421245_)))
                                                 (let ((_hd2093821252_
                                                        (##car _e2093721248_))
                                                       (_tl2093921255_
                                                        (##cdr _e2093721248_)))
                                                   (if (gx#stx-datum?
                                                        _hd2093821252_)
                                                       (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd2093821252_)
                           'splice:)
                   (if (gx#stx-pair? _tl2093921255_)
                       (let ((_e2094021258_ (gx#syntax-e _tl2093921255_)))
                         (let ((_hd2094121262_ (##car _e2094021258_))
                               (_tl2094221265_ (##cdr _e2094021258_)))
                           (if (gx#stx-pair? _tl2094221265_)
                               (let ((_e2094321268_
                                      (gx#syntax-e _tl2094221265_)))
                                 (let ((_hd2094421272_ (##car _e2094321268_))
                                       (_tl2094521275_ (##cdr _e2094321268_)))
                                   (if (gx#stx-null? _tl2094521275_)
                                       ((lambda (_L21278_ _L21280_)
                                          (_loop20613_
                                           _L21280_
                                           _vars20890_
                                           (lambda (_g2129421296_)
                                             (_loop20613_
                                              _L21278_
                                              _g2129421296_
                                              _K20891_))))
                                        _hd2094421272_
                                        _hd2094121262_)
                                       (_g2089721241_ _g2090421245_))))
                               (_g2089721241_ _g2090421245_))))
                       (_g2089721241_ _g2090421245_))
                   (_g2089721241_ _g2090421245_))
               (_g2089721241_ _g2090421245_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2089721241_
                                                _g2090421245_)))))
                                    (let ((_g2089521359_
                                           (lambda (_g2090421304_)
                                             (if (gx#stx-pair? _g2090421304_)
                                                 (let ((_e2092621307_
                                                        (gx#syntax-e
                                                         _g2090421304_)))
                                                   (let ((_hd2092721311_
                                                          (##car _e2092621307_))
                                                         (_tl2092821314_
                                                          (##cdr _e2092621307_)))
                                                     (if (gx#stx-datum?
                                                          _hd2092721311_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2092721311_)
                             'cons:)
                     (if (gx#stx-pair? _tl2092821314_)
                         (let ((_e2092921317_ (gx#syntax-e _tl2092821314_)))
                           (let ((_hd2093021321_ (##car _e2092921317_))
                                 (_tl2093121324_ (##cdr _e2092921317_)))
                             (if (gx#stx-pair? _tl2093121324_)
                                 (let ((_e2093221327_
                                        (gx#syntax-e _tl2093121324_)))
                                   (let ((_hd2093321331_ (##car _e2093221327_))
                                         (_tl2093421334_
                                          (##cdr _e2093221327_)))
                                     (if (gx#stx-null? _tl2093421334_)
                                         ((lambda (_L21337_ _L21339_)
                                            (_loop20613_
                                             _L21339_
                                             _vars20890_
                                             (lambda (_g2135321355_)
                                               (_loop20613_
                                                _L21337_
                                                _g2135321355_
                                                _K20891_))))
                                          _hd2093321331_
                                          _hd2093021321_)
                                         (_g2089621300_ _g2090421304_))))
                                 (_g2089621300_ _g2090421304_))))
                         (_g2089621300_ _g2090421304_))
                     (_g2089621300_ _g2090421304_))
                 (_g2089621300_ _g2090421304_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2089621300_
                                                  _g2090421304_)))))
                                      (let ((_g2089421399_
                                             (lambda (_g2090421363_)
                                               (if (gx#stx-pair? _g2090421363_)
                                                   (let ((_e2091821366_
                                                          (gx#syntax-e
                                                           _g2090421363_)))
                                                     (let ((_hd2091921370_
                                                            (##car _e2091821366_))
                                                           (_tl2092021373_
                                                            (##cdr _e2091821366_)))
                                                       (if (gx#stx-datum?
                                                            _hd2091921370_)
                                                           (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd2091921370_)
                               'not:)
                       (if (gx#stx-pair? _tl2092021373_)
                           (let ((_e2092121376_ (gx#syntax-e _tl2092021373_)))
                             (let ((_hd2092221380_ (##car _e2092121376_))
                                   (_tl2092321383_ (##cdr _e2092121376_)))
                               (if (gx#stx-null? _tl2092321383_)
                                   ((lambda (_L21386_)
                                      (_loop20613_
                                       _L21386_
                                       _vars20890_
                                       _K20891_))
                                    _hd2092221380_)
                                   (_g2089521359_ _g2090421363_))))
                           (_g2089521359_ _g2090421363_))
                       (_g2089521359_ _g2090421363_))
                   (_g2089521359_ _g2090421363_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2089521359_
                                                    _g2090421363_)))))
                                        (let ((_g2089321498_
                                               (lambda (_g2090421403_)
                                                 (if (gx#stx-pair?
                                                      _g2090421403_)
                                                     (let ((_e2091421406_
                                                            (gx#syntax-e
                                                             _g2090421403_)))
                                                       (let ((_hd2091521410_
                                                              (##car _e2091421406_))
                                                             (_tl2091621413_
                                                              (##cdr _e2091421406_)))
                                                         ((lambda (_L21416_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L21418_)
                    (if (let ((_$e21429_ (gx#stx-eq? 'and: _L21418_)))
                          (if _$e21429_ _$e21429_ (gx#stx-eq? 'or: _L21418_)))
                        (let ((_g2143421446_
                               (lambda (_g2143521442_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2143521442_))))
                          (let ((_g2143321457_
                                 (lambda (_g2143521450_)
                                   ((lambda () (_K20891_ _vars20890_))))))
                            (let ((_g2143221494_
                                   (lambda (_g2143521461_)
                                     (if (gx#stx-pair? _g2143521461_)
                                         (let ((_e2143821464_
                                                (gx#syntax-e _g2143521461_)))
                                           (let ((_hd2143921468_
                                                  (##car _e2143821464_))
                                                 (_tl2144021471_
                                                  (##cdr _e2143821464_)))
                                             ((lambda (_L21474_ _L21476_)
                                                (_loop20613_
                                                 _L21476_
                                                 _vars20890_
                                                 (lambda (_g2148821490_)
                                                   (_loop20613_
                                                    (cons _L21418_ _L21474_)
                                                    _g2148821490_
                                                    _K20891_))))
                                              _tl2144021471_
                                              _hd2143921468_)))
                                         (_g2143321457_ _g2143521461_)))))
                              (_g2143221494_ _L21416_))))
                        (_g2089421399_ _g2090421403_)))
                  _tl2091621413_
                  _hd2091521410_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2089421399_
                                                      _g2090421403_)))))
                                          (let ((_g2089221751_
                                                 (lambda (_g2090421502_)
                                                   (if (gx#stx-pair?
                                                        _g2090421502_)
                                                       (let ((_e2090621505_
                                                              (gx#syntax-e
                                                               _g2090421502_)))
                                                         (let ((_hd2090721509_
                                                                (##car _e2090621505_))
                                                               (_tl2090821512_
                                                                (##cdr _e2090621505_)))
                                                           (if (gx#stx-datum?
                                                                _hd2090721509_)
                                                               (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _hd2090721509_)
                                   '?:)
                           (if (gx#stx-pair? _tl2090821512_)
                               (let ((_e2090921515_
                                      (gx#syntax-e _tl2090821512_)))
                                 (let ((_hd2091021519_ (##car _e2090921515_))
                                       (_tl2091121522_ (##cdr _e2090921515_)))
                                   ((lambda (_L21525_)
                                      (let ((_g2154121578_
                                             (lambda (_g2154221574_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2154221574_))))
                                        (let ((_g2154021589_
                                               (lambda (_g2154221582_)
                                                 ((lambda ()
                                                    (_K20891_ _vars20890_))))))
                                          (let ((_g2153921667_
                                                 (lambda (_g2154221593_)
                                                   (if (gx#stx-pair?
                                                        _g2154221593_)
                                                       (let ((_e2155821596_
                                                              (gx#syntax-e
                                                               _g2154221593_)))
                                                         (let ((_hd2155921600_
                                                                (##car _e2155821596_))
                                                               (_tl2156021603_
                                                                (##cdr _e2155821596_)))
                                                           (if (gx#stx-pair?
                                                                _tl2156021603_)
                                                               (let ((_e2156121606_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2156021603_)))
                         (let ((_hd2156221610_ (##car _e2156121606_))
                               (_tl2156321613_ (##cdr _e2156121606_)))
                           (if (gx#stx-datum? _hd2156221610_)
                               (if (equal? (gx#stx-e _hd2156221610_) '::)
                                   (if (gx#stx-pair? _tl2156321613_)
                                       (let ((_e2156421616_
                                              (gx#syntax-e _tl2156321613_)))
                                         (let ((_hd2156521620_
                                                (##car _e2156421616_))
                                               (_tl2156621623_
                                                (##cdr _e2156421616_)))
                                           (if (gx#stx-pair? _tl2156621623_)
                                               (let ((_e2156721626_
                                                      (gx#syntax-e
                                                       _tl2156621623_)))
                                                 (let ((_hd2156821630_
                                                        (##car _e2156721626_))
                                                       (_tl2156921633_
                                                        (##cdr _e2156721626_)))
                                                   (if (gx#stx-datum?
                                                        _hd2156821630_)
                                                       (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd2156821630_)
                           '=>:)
                   (if (gx#stx-pair? _tl2156921633_)
                       (let ((_e2157021636_ (gx#syntax-e _tl2156921633_)))
                         (let ((_hd2157121640_ (##car _e2157021636_))
                               (_tl2157221643_ (##cdr _e2157021636_)))
                           (if (gx#stx-null? _tl2157221643_)
                               ((lambda (_L21646_)
                                  (_loop20613_ _L21646_ _vars20890_ _K20891_))
                                _hd2157121640_)
                               (_g2154021589_ _g2154221593_))))
                       (_g2154021589_ _g2154221593_))
                   (_g2154021589_ _g2154221593_))
               (_g2154021589_ _g2154221593_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2154021589_ _g2154221593_))))
                                       (_g2154021589_ _g2154221593_))
                                   (_g2154021589_ _g2154221593_))
                               (_g2154021589_ _g2154221593_))))
                       (_g2154021589_ _g2154221593_))))
               (_g2154021589_ _g2154221593_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_g2153821719_
                                                   (lambda (_g2154221671_)
                                                     (if (gx#stx-pair?
                                                          _g2154221671_)
                                                         (let ((_e2154821674_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2154221671_)))
                   (let ((_hd2154921678_ (##car _e2154821674_))
                         (_tl2155021681_ (##cdr _e2154821674_)))
                     (if (gx#stx-pair? _tl2155021681_)
                         (let ((_e2155121684_ (gx#syntax-e _tl2155021681_)))
                           (let ((_hd2155221688_ (##car _e2155121684_))
                                 (_tl2155321691_ (##cdr _e2155121684_)))
                             (if (gx#stx-datum? _hd2155221688_)
                                 (if (equal? (gx#stx-e _hd2155221688_) '=>:)
                                     (if (gx#stx-pair? _tl2155321691_)
                                         (let ((_e2155421694_
                                                (gx#syntax-e _tl2155321691_)))
                                           (let ((_hd2155521698_
                                                  (##car _e2155421694_))
                                                 (_tl2155621701_
                                                  (##cdr _e2155421694_)))
                                             (if (gx#stx-null? _tl2155621701_)
                                                 ((lambda (_L21704_)
                                                    (_loop20613_
                                                     _L21704_
                                                     _vars20890_
                                                     _K20891_))
                                                  _hd2155521698_)
                                                 (_g2153921667_
                                                  _g2154221671_))))
                                         (_g2153921667_ _g2154221671_))
                                     (_g2153921667_ _g2154221671_))
                                 (_g2153921667_ _g2154221671_))))
                         (_g2153921667_ _g2154221671_))))
                 (_g2153921667_ _g2154221671_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g2153721747_
                                                     (lambda (_g2154221723_)
                                                       (if (gx#stx-pair?
                                                            _g2154221723_)
                                                           (let ((_e2154421726_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g2154221723_)))
                     (let ((_hd2154521730_ (##car _e2154421726_))
                           (_tl2154621733_ (##cdr _e2154421726_)))
                       (if (gx#stx-null? _tl2154621733_)
                           ((lambda (_L21736_)
                              (_loop20613_ _L21736_ _vars20890_ _K20891_))
                            _hd2154521730_)
                           (_g2153821719_ _g2154221723_))))
                   (_g2153821719_ _g2154221723_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2153721747_ _L21525_)))))))
                                    _tl2091121522_)))
                               (_g2089321498_ _g2090421502_))
                           (_g2089321498_ _g2090421502_))
                       (_g2089321498_ _g2090421502_))))
               (_g2089321498_ _g2090421502_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2089221751_
                                             _ptree20888_)))))))))))))))
                 (_loop-vector20615_
                  (lambda (_body20776_ _vars20778_ _K20779_)
                    (let ((_g2078220803_
                           (lambda (_g2078320799_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2078320799_))))
                      (let ((_g2078120844_
                             (lambda (_g2078320807_)
                               (if (gx#stx-pair? _g2078320807_)
                                   (let ((_e2079220810_
                                          (gx#syntax-e _g2078320807_)))
                                     (let ((_hd2079320814_
                                            (##car _e2079220810_))
                                           (_tl2079420817_
                                            (##cdr _e2079220810_)))
                                       (if (gx#stx-datum? _hd2079320814_)
                                           (if (equal? (gx#stx-e
                                                        _hd2079320814_)
                                                       'list:)
                                               (if (gx#stx-pair?
                                                    _tl2079420817_)
                                                   (let ((_e2079520820_
                                                          (gx#syntax-e
                                                           _tl2079420817_)))
                                                     (let ((_hd2079620824_
                                                            (##car _e2079520820_))
                                                           (_tl2079720827_
                                                            (##cdr _e2079520820_)))
                                                       (if (gx#stx-null?
                                                            _tl2079720827_)
                                                           ((lambda (_L20830_)
                                                              (_loop20613_
                                                               _L20830_
                                                               _vars20778_
                                                               _K20779_))
                                                            _hd2079620824_)
                                                           (_g2078220803_
                                                            _g2078320807_))))
                                                   (_g2078220803_
                                                    _g2078320807_))
                                               (_g2078220803_ _g2078320807_))
                                           (_g2078220803_ _g2078320807_))))
                                   (_g2078220803_ _g2078320807_)))))
                        (let ((_g2078020884_
                               (lambda (_g2078320848_)
                                 (if (gx#stx-pair? _g2078320848_)
                                     (let ((_e2078520851_
                                            (gx#syntax-e _g2078320848_)))
                                       (let ((_hd2078620855_
                                              (##car _e2078520851_))
                                             (_tl2078720858_
                                              (##cdr _e2078520851_)))
                                         (if (gx#stx-datum? _hd2078620855_)
                                             (if (equal? (gx#stx-e
                                                          _hd2078620855_)
                                                         'simple:)
                                                 (if (gx#stx-pair?
                                                      _tl2078720858_)
                                                     (let ((_e2078820861_
                                                            (gx#syntax-e
                                                             _tl2078720858_)))
                                                       (let ((_hd2078920865_
                                                              (##car _e2078820861_))
                                                             (_tl2079020868_
                                                              (##cdr _e2078820861_)))
                                                         (if (gx#stx-null?
                                                              _tl2079020868_)
                                                             ((lambda (_L20871_)
                                                                (_loop-list20616_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L20871_
                         _vars20778_
                         _K20779_))
                      _hd2078920865_)
                     (_g2078120844_ _g2078320848_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2078120844_
                                                      _g2078320848_))
                                                 (_g2078120844_ _g2078320848_))
                                             (_g2078120844_ _g2078320848_))))
                                     (_g2078120844_ _g2078320848_)))))
                          (_g2078020884_ _body20776_))))))
                 (_loop-list20616_
                  (lambda (_rest20706_ _vars20708_ _K20709_)
                    (let ((_g2071220724_
                           (lambda (_g2071320720_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2071320720_))))
                      (let ((_g2071120735_
                             (lambda (_g2071320728_)
                               ((lambda () (_K20709_ _vars20708_))))))
                        (let ((_g2071020772_
                               (lambda (_g2071320739_)
                                 (if (gx#stx-pair? _g2071320739_)
                                     (let ((_e2071620742_
                                            (gx#syntax-e _g2071320739_)))
                                       (let ((_hd2071720746_
                                              (##car _e2071620742_))
                                             (_tl2071820749_
                                              (##cdr _e2071620742_)))
                                         ((lambda (_L20752_ _L20754_)
                                            (_loop20613_
                                             _L20754_
                                             _vars20708_
                                             (lambda (_g2076620768_)
                                               (_loop-list20616_
                                                _L20752_
                                                _g2076620768_
                                                _K20709_))))
                                          _tl2071820749_
                                          _hd2071720746_)))
                                     (_g2071120735_ _g2071320739_)))))
                          (_g2071020772_ _rest20706_))))))
                 (_loop-class-list20617_
                  (lambda (_rest20619_ _vars20621_ _K20622_)
                    (let ((_g2062520640_
                           (lambda (_g2062620636_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2062620636_))))
                      (let ((_g2062420651_
                             (lambda (_g2062620644_)
                               ((lambda () (_K20622_ _vars20621_))))))
                        (let ((_g2062320702_
                               (lambda (_g2062620655_)
                                 (if (gx#stx-pair? _g2062620655_)
                                     (let ((_e2062920658_
                                            (gx#syntax-e _g2062620655_)))
                                       (let ((_hd2063020662_
                                              (##car _e2062920658_))
                                             (_tl2063120665_
                                              (##cdr _e2062920658_)))
                                         (if (gx#stx-pair? _tl2063120665_)
                                             (let ((_e2063220668_
                                                    (gx#syntax-e
                                                     _tl2063120665_)))
                                               (let ((_hd2063320672_
                                                      (##car _e2063220668_))
                                                     (_tl2063420675_
                                                      (##cdr _e2063220668_)))
                                                 ((lambda (_L20678_ _L20680_)
                                                    (_loop20613_
                                                     _L20680_
                                                     _vars20621_
                                                     (lambda (_g2069620698_)
                                                       (_loop-class-list20617_
                                                        _L20678_
                                                        _g2069620698_
                                                        _K20622_))))
                                                  _tl2063420675_
                                                  _hd2063320672_)))
                                             (_g2062420651_ _g2062620655_))))
                                     (_g2062420651_ _g2062620655_)))))
                          (_g2062320702_ _rest20619_)))))))
          (_loop20613_ _ptree20610_ '() values))))
    (define |gerbil/core::<match>[1]#generate-match1|
      (lambda (_stx17523_ _tgt17525_ _ptree17526_ _K17527_ _E17528_)
        (letrec ((_generate117530_
                  (lambda (_tgt19060_ _ptree19062_ _K19063_ _E19064_)
                    (let ((_g1906619074_
                           (lambda (_g1906719070_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1906719070_))))
                      (let ((_g1906520606_
                             (lambda (_g1906719078_)
                               ((lambda (_L19081_)
                                  (let ()
                                    (let ((_g1910719222_
                                           (lambda (_g1910819218_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1910819218_))))
                                      (let ((_g1910619243_
                                             (lambda (_g1910819226_)
                                               (if (gx#stx-pair? _g1910819226_)
                                                   (let ((_e1921419229_
                                                          (gx#syntax-e
                                                           _g1910819226_)))
                                                     (let ((_hd1921519233_
                                                            (##car _e1921419229_))
                                                           (_tl1921619236_
                                                            (##cdr _e1921419229_)))
                                                       (if (gx#stx-datum?
                                                            _hd1921519233_)
                                                           (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1921519233_)
                               'any:)
                       (if (gx#stx-null? _tl1921619236_)
                           ((lambda () _K19063_))
                           (_g1910719222_ _g1910819226_))
                       (_g1910719222_ _g1910819226_))
                   (_g1910719222_ _g1910819226_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1910719222_
                                                    _g1910819226_)))))
                                        (let ((_g1910519286_
                                               (lambda (_g1910819247_)
                                                 (if (gx#stx-pair?
                                                      _g1910819247_)
                                                     (let ((_e1920819250_
                                                            (gx#syntax-e
                                                             _g1910819247_)))
                                                       (let ((_hd1920919254_
                                                              (##car _e1920819250_))
                                                             (_tl1921019257_
                                                              (##cdr _e1920819250_)))
                                                         (if (gx#stx-datum?
                                                              _hd1920919254_)
                                                             (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _hd1920919254_)
                                 'var:)
                         (if (gx#stx-pair? _tl1921019257_)
                             (let ((_e1921119260_
                                    (gx#syntax-e _tl1921019257_)))
                               (let ((_hd1921219264_ (##car _e1921119260_))
                                     (_tl1921319267_ (##cdr _e1921119260_)))
                                 (if (gx#stx-null? _tl1921319267_)
                                     ((lambda (_L19270_)
                                        (cons (gx#datum->syntax '#f 'let)
                                              (cons (cons (cons _L19270_
                                                                (cons _L19081_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _K19063_ '()))))
                                      _hd1921219264_)
                                     (_g1910619243_ _g1910819247_))))
                             (_g1910619243_ _g1910819247_))
                         (_g1910619243_ _g1910819247_))
                     (_g1910619243_ _g1910819247_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1910619243_
                                                      _g1910819247_)))))
                                          (let ((_g1910419368_
                                                 (lambda (_g1910819290_)
                                                   (if (gx#stx-pair?
                                                        _g1910819290_)
                                                       (let ((_e1920119293_
                                                              (gx#syntax-e
                                                               _g1910819290_)))
                                                         (let ((_hd1920219297_
                                                                (##car _e1920119293_))
                                                               (_tl1920319300_
                                                                (##cdr _e1920119293_)))
                                                           (if (gx#stx-datum?
                                                                _hd1920219297_)
                                                               (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _hd1920219297_)
                                   'datum:)
                           (if (gx#stx-pair? _tl1920319300_)
                               (let ((_e1920419303_
                                      (gx#syntax-e _tl1920319300_)))
                                 (let ((_hd1920519307_ (##car _e1920419303_))
                                       (_tl1920619310_ (##cdr _e1920419303_)))
                                   (if (gx#stx-null? _tl1920619310_)
                                       ((lambda (_L19313_)
                                          (let ((_g1932619334_
                                                 (lambda (_g1932719330_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1932719330_))))
                                            (let ((_g1932519353_
                                                   (lambda (_g1932719338_)
                                                     ((lambda (_L19341_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'if)
                        (cons (cons _L19341_
                                    (cons _L19081_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L19313_ '()))
                                                '())))
                              (cons _K19063_ (cons _E19064_ '()))))))
              _g1932719338_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1932519353_
                                               (let ((_e19357_
                                                      (gx#stx-e _L19313_)))
                                                 (if (let ((_$e19360_
                                                            (symbol? _e19357_)))
                                                       (if _$e19360_
                                                           _$e19360_
                                                           (let ((_$e19364_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (keyword? _e19357_)))
                     (if _$e19364_ _$e19364_ (immediate? _e19357_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##eq?)
                                                     (if (number? _e19357_)
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eqv?)
                                                         (gx#datum->syntax
                                                          '#f
                                                          'equal?))))))))
                                        _hd1920519307_)
                                       (_g1910519286_ _g1910819290_))))
                               (_g1910519286_ _g1910819290_))
                           (_g1910519286_ _g1910819290_))
                       (_g1910519286_ _g1910819290_))))
               (_g1910519286_ _g1910819290_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_g1910319422_
                                                   (lambda (_g1910819372_)
                                                     (if (gx#stx-pair?
                                                          _g1910819372_)
                                                         (let ((_e1919119375_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1910819372_)))
                   (let ((_hd1919219379_ (##car _e1919119375_))
                         (_tl1919319382_ (##cdr _e1919119375_)))
                     (if (gx#stx-datum? _hd1919219379_)
                         (if (equal? (gx#stx-e _hd1919219379_) 'class:)
                             (if (gx#stx-pair? _tl1919319382_)
                                 (let ((_e1919419385_
                                        (gx#syntax-e _tl1919319382_)))
                                   (let ((_hd1919519389_ (##car _e1919419385_))
                                         (_tl1919619392_
                                          (##cdr _e1919419385_)))
                                     (if (gx#stx-pair? _tl1919619392_)
                                         (let ((_e1919719395_
                                                (gx#syntax-e _tl1919619392_)))
                                           (let ((_hd1919819399_
                                                  (##car _e1919719395_))
                                                 (_tl1919919402_
                                                  (##cdr _e1919719395_)))
                                             (if (gx#stx-null? _tl1919919402_)
                                                 ((lambda (_L19405_ _L19407_)
                                                    (_generate-class17536_
                                                     (gx#stx-e _L19407_)
                                                     _tgt19060_
                                                     _L19405_
                                                     _K19063_
                                                     _E19064_))
                                                  _hd1919819399_
                                                  _hd1919519389_)
                                                 (_g1910419368_
                                                  _g1910819372_))))
                                         (_g1910419368_ _g1910819372_))))
                                 (_g1910419368_ _g1910819372_))
                             (_g1910419368_ _g1910819372_))
                         (_g1910419368_ _g1910819372_))))
                 (_g1910419368_ _g1910819372_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g1910219476_
                                                     (lambda (_g1910819426_)
                                                       (if (gx#stx-pair?
                                                            _g1910819426_)
                                                           (let ((_e1918019429_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g1910819426_)))
                     (let ((_hd1918119433_ (##car _e1918019429_))
                           (_tl1918219436_ (##cdr _e1918019429_)))
                       (if (gx#stx-datum? _hd1918119433_)
                           (if (equal? (gx#stx-e _hd1918119433_) 'struct:)
                               (if (gx#stx-pair? _tl1918219436_)
                                   (let ((_e1918319439_
                                          (gx#syntax-e _tl1918219436_)))
                                     (let ((_hd1918419443_
                                            (##car _e1918319439_))
                                           (_tl1918519446_
                                            (##cdr _e1918319439_)))
                                       (if (gx#stx-pair? _tl1918519446_)
                                           (let ((_e1918619449_
                                                  (gx#syntax-e
                                                   _tl1918519446_)))
                                             (let ((_hd1918719453_
                                                    (##car _e1918619449_))
                                                   (_tl1918819456_
                                                    (##cdr _e1918619449_)))
                                               (if (gx#stx-null?
                                                    _tl1918819456_)
                                                   ((lambda (_L19459_ _L19461_)
                                                      (_generate-struct17535_
                                                       (gx#stx-e _L19461_)
                                                       _tgt19060_
                                                       _L19459_
                                                       _K19063_
                                                       _E19064_))
                                                    _hd1918719453_
                                                    _hd1918419443_)
                                                   (_g1910319422_
                                                    _g1910819426_))))
                                           (_g1910319422_ _g1910819426_))))
                                   (_g1910319422_ _g1910819426_))
                               (_g1910319422_ _g1910819426_))
                           (_g1910319422_ _g1910819426_))))
                   (_g1910319422_ _g1910819426_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_g1910119654_
                                                       (lambda (_g1910819480_)
                                                         (if (gx#stx-pair?
                                                              _g1910819480_)
                                                             (let ((_e1917219483_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g1910819480_)))
                       (let ((_hd1917319487_ (##car _e1917219483_))
                             (_tl1917419490_ (##cdr _e1917219483_)))
                         (if (gx#stx-datum? _hd1917319487_)
                             (if (equal? (gx#stx-e _hd1917319487_) 'vector:)
                                 (if (gx#stx-pair? _tl1917419490_)
                                     (let ((_e1917519493_
                                            (gx#syntax-e _tl1917419490_)))
                                       (let ((_hd1917619497_
                                              (##car _e1917519493_))
                                             (_tl1917719500_
                                              (##cdr _e1917519493_)))
                                         (if (gx#stx-null? _tl1917719500_)
                                             ((lambda (_L19503_)
                                                (let ((_g1951719538_
                                                       (lambda (_g1951819534_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1951819534_))))
                                                  (let ((_g1951619579_
                                                         (lambda (_g1951819542_)
                                                           (if (gx#stx-pair?
                                                                _g1951819542_)
                                                               (let ((_e1952719545_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1951819542_)))
                         (let ((_hd1952819549_ (##car _e1952719545_))
                               (_tl1952919552_ (##cdr _e1952719545_)))
                           (if (gx#stx-datum? _hd1952819549_)
                               (if (equal? (gx#stx-e _hd1952819549_) 'list:)
                                   (if (gx#stx-pair? _tl1952919552_)
                                       (let ((_e1953019555_
                                              (gx#syntax-e _tl1952919552_)))
                                         (let ((_hd1953119559_
                                                (##car _e1953019555_))
                                               (_tl1953219562_
                                                (##cdr _e1953019555_)))
                                           (if (gx#stx-null? _tl1953219562_)
                                               ((lambda (_L19565_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'if)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'vector?)
                            (cons _L19081_ '()))
                      (cons (_generate-list-vector17534_
                             _tgt19060_
                             _L19565_
                             (gx#datum->syntax '#f 'subvector->list)
                             '0
                             _K19063_
                             _E19064_)
                            (cons _E19064_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1953119559_)
                                               (_g1951719538_ _g1951819542_))))
                                       (_g1951719538_ _g1951819542_))
                                   (_g1951719538_ _g1951819542_))
                               (_g1951719538_ _g1951819542_))))
                       (_g1951719538_ _g1951819542_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g1951519650_
                                                           (lambda (_g1951819583_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1951819583_)
                         (let ((_e1952019586_ (gx#syntax-e _g1951819583_)))
                           (let ((_hd1952119590_ (##car _e1952019586_))
                                 (_tl1952219593_ (##cdr _e1952019586_)))
                             (if (gx#stx-datum? _hd1952119590_)
                                 (if (equal? (gx#stx-e _hd1952119590_)
                                             'simple:)
                                     (if (gx#stx-pair? _tl1952219593_)
                                         (let ((_e1952319596_
                                                (gx#syntax-e _tl1952219593_)))
                                           (let ((_hd1952419600_
                                                  (##car _e1952319596_))
                                                 (_tl1952519603_
                                                  (##cdr _e1952319596_)))
                                             (if (gx#stx-null? _tl1952519603_)
                                                 ((lambda (_L19606_)
                                                    (let ((_g1961919627_
                                                           (lambda (_g1962019623_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g1962019623_))))
                                                      (let ((_g1961819646_
                                                             (lambda (_g1962019631_)
                                                               ((lambda (_L19634_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons (gx#datum->syntax '#f 'and)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##vector?)
                                                          (cons _L19081_ '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fx=)
                        (cons (cons (gx#datum->syntax '#f '##vector-length)
                                    (cons _L19081_ '()))
                              (cons _L19634_ '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (_generate-simple-vector17533_
                                               _tgt19060_
                                               _L19606_
                                               '0
                                               _K19063_
                                               _E19064_)
                                              (cons _E19064_ '()))))))
                        _g1962019631_))))
                (_g1961819646_ (gx#stx-length _L19606_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1952419600_)
                                                 (_g1951619579_
                                                  _g1951819583_))))
                                         (_g1951619579_ _g1951819583_))
                                     (_g1951619579_ _g1951819583_))
                                 (_g1951619579_ _g1951819583_))))
                         (_g1951619579_ _g1951819583_)))))
              (_g1951519650_ _L19503_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd1917619497_)
                                             (_g1910219476_ _g1910819480_))))
                                     (_g1910219476_ _g1910819480_))
                                 (_g1910219476_ _g1910819480_))
                             (_g1910219476_ _g1910819480_))))
                     (_g1910219476_ _g1910819480_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g1910019832_
                                                         (lambda (_g1910819658_)
                                                           (if (gx#stx-pair?
                                                                _g1910819658_)
                                                               (let ((_e1916519661_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1910819658_)))
                         (let ((_hd1916619665_ (##car _e1916519661_))
                               (_tl1916719668_ (##cdr _e1916519661_)))
                           (if (gx#stx-datum? _hd1916619665_)
                               (if (equal? (gx#stx-e _hd1916619665_) 'values:)
                                   (if (gx#stx-pair? _tl1916719668_)
                                       (let ((_e1916819671_
                                              (gx#syntax-e _tl1916719668_)))
                                         (let ((_hd1916919675_
                                                (##car _e1916819671_))
                                               (_tl1917019678_
                                                (##cdr _e1916819671_)))
                                           (if (gx#stx-null? _tl1917019678_)
                                               ((lambda (_L19681_)
                                                  (let ((_g1969519716_
                                                         (lambda (_g1969619712_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g1969619712_))))
                                                    (let ((_g1969419757_
                                                           (lambda (_g1969619720_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1969619720_)
                         (let ((_e1970519723_ (gx#syntax-e _g1969619720_)))
                           (let ((_hd1970619727_ (##car _e1970519723_))
                                 (_tl1970719730_ (##cdr _e1970519723_)))
                             (if (gx#stx-datum? _hd1970619727_)
                                 (if (equal? (gx#stx-e _hd1970619727_) 'list:)
                                     (if (gx#stx-pair? _tl1970719730_)
                                         (let ((_e1970819733_
                                                (gx#syntax-e _tl1970719730_)))
                                           (let ((_hd1970919737_
                                                  (##car _e1970819733_))
                                                 (_tl1971019740_
                                                  (##cdr _e1970819733_)))
                                             (if (gx#stx-null? _tl1971019740_)
                                                 ((lambda (_L19743_)
                                                    (_generate-list-vector17534_
                                                     _tgt19060_
                                                     _L19743_
                                                     (gx#datum->syntax
                                                      '#f
                                                      'values->list)
                                                     '0
                                                     _K19063_
                                                     _E19064_))
                                                  _hd1970919737_)
                                                 (_g1969519716_
                                                  _g1969619720_))))
                                         (_g1969519716_ _g1969619720_))
                                     (_g1969519716_ _g1969619720_))
                                 (_g1969519716_ _g1969619720_))))
                         (_g1969519716_ _g1969619720_)))))
              (let ((_g1969319828_
                     (lambda (_g1969619761_)
                       (if (gx#stx-pair? _g1969619761_)
                           (let ((_e1969819764_ (gx#syntax-e _g1969619761_)))
                             (let ((_hd1969919768_ (##car _e1969819764_))
                                   (_tl1970019771_ (##cdr _e1969819764_)))
                               (if (gx#stx-datum? _hd1969919768_)
                                   (if (equal? (gx#stx-e _hd1969919768_)
                                               'simple:)
                                       (if (gx#stx-pair? _tl1970019771_)
                                           (let ((_e1970119774_
                                                  (gx#syntax-e
                                                   _tl1970019771_)))
                                             (let ((_hd1970219778_
                                                    (##car _e1970119774_))
                                                   (_tl1970319781_
                                                    (##cdr _e1970119774_)))
                                               (if (gx#stx-null?
                                                    _tl1970319781_)
                                                   ((lambda (_L19784_)
                                                      (let ((_g1979719805_
                                                             (lambda (_g1979819801_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1979819801_))))
                                                        (let ((_g1979619824_
                                                               (lambda (_g1979819809_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L19812_)
                            (let ()
                              (cons (gx#datum->syntax '#f 'if)
                                    (cons (cons (gx#datum->syntax '#f '##fx=)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'values-count)
                                                            (cons _L19081_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _L19812_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (_generate-simple-vector17533_
                                                 _tgt19060_
                                                 _L19784_
                                                 '0
                                                 _K19063_
                                                 _E19064_)
                                                (cons _E19064_ '()))))))
                          _g1979819809_))))
                  (_g1979619824_ (gx#stx-length _L19784_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1970219778_)
                                                   (_g1969419757_
                                                    _g1969619761_))))
                                           (_g1969419757_ _g1969619761_))
                                       (_g1969419757_ _g1969619761_))
                                   (_g1969419757_ _g1969619761_))))
                           (_g1969419757_ _g1969619761_)))))
                (_g1969319828_ _L19681_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1916919675_)
                                               (_g1910119654_ _g1910819658_))))
                                       (_g1910119654_ _g1910819658_))
                                   (_g1910119654_ _g1910819658_))
                               (_g1910119654_ _g1910819658_))))
                       (_g1910119654_ _g1910819658_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g1909919903_
                                                           (lambda (_g1910819836_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1910819836_)
                         (let ((_e1915819839_ (gx#syntax-e _g1910819836_)))
                           (let ((_hd1915919843_ (##car _e1915819839_))
                                 (_tl1916019846_ (##cdr _e1915819839_)))
                             (if (gx#stx-datum? _hd1915919843_)
                                 (if (equal? (gx#stx-e _hd1915919843_) 'box:)
                                     (if (gx#stx-pair? _tl1916019846_)
                                         (let ((_e1916119849_
                                                (gx#syntax-e _tl1916019846_)))
                                           (let ((_hd1916219853_
                                                  (##car _e1916119849_))
                                                 (_tl1916319856_
                                                  (##cdr _e1916119849_)))
                                             (if (gx#stx-null? _tl1916319856_)
                                                 ((lambda (_L19859_)
                                                    (let ((_g1987219880_
                                                           (lambda (_g1987319876_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g1987319876_))))
                                                      (let ((_g1987119899_
                                                             (lambda (_g1987319884_)
                                                               ((lambda (_L19887_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons (gx#datum->syntax '#f '##box?)
                                              (cons _L19081_ '()))
                                        (cons (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L19887_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f '##unbox)
                                          (cons _L19081_ '()))
                                    '()))
                        '())
                  (cons (_generate117530_ _L19887_ _L19859_ _K19063_ _E19064_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _E19064_ '()))))))
                        _g1987319884_))))
                (_g1987119899_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1916219853_)
                                                 (_g1910019832_
                                                  _g1910819836_))))
                                         (_g1910019832_ _g1910819836_))
                                     (_g1910019832_ _g1910819836_))
                                 (_g1910019832_ _g1910819836_))))
                         (_g1910019832_ _g1910819836_)))))
              (let ((_g1909819957_
                     (lambda (_g1910819907_)
                       (if (gx#stx-pair? _g1910819907_)
                           (let ((_e1914819910_ (gx#syntax-e _g1910819907_)))
                             (let ((_hd1914919914_ (##car _e1914819910_))
                                   (_tl1915019917_ (##cdr _e1914819910_)))
                               (if (gx#stx-datum? _hd1914919914_)
                                   (if (equal? (gx#stx-e _hd1914919914_)
                                               'splice:)
                                       (if (gx#stx-pair? _tl1915019917_)
                                           (let ((_e1915119920_
                                                  (gx#syntax-e
                                                   _tl1915019917_)))
                                             (let ((_hd1915219924_
                                                    (##car _e1915119920_))
                                                   (_tl1915319927_
                                                    (##cdr _e1915119920_)))
                                               (if (gx#stx-pair?
                                                    _tl1915319927_)
                                                   (let ((_e1915419930_
                                                          (gx#syntax-e
                                                           _tl1915319927_)))
                                                     (let ((_hd1915519934_
                                                            (##car _e1915419930_))
                                                           (_tl1915619937_
                                                            (##cdr _e1915419930_)))
                                                       (if (gx#stx-null?
                                                            _tl1915619937_)
                                                           ((lambda (_L19940_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L19942_)
                      (_generate-splice17532_
                       _tgt19060_
                       _L19942_
                       _L19940_
                       _K19063_
                       _E19064_))
                    _hd1915519934_
                    _hd1915219924_)
                   (_g1909919903_ _g1910819907_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1909919903_
                                                    _g1910819907_))))
                                           (_g1909919903_ _g1910819907_))
                                       (_g1909919903_ _g1910819907_))
                                   (_g1909919903_ _g1910819907_))))
                           (_g1909919903_ _g1910819907_)))))
                (let ((_g1909719978_
                       (lambda (_g1910819961_)
                         (if (gx#stx-pair? _g1910819961_)
                             (let ((_e1914319964_ (gx#syntax-e _g1910819961_)))
                               (let ((_hd1914419968_ (##car _e1914319964_))
                                     (_tl1914519971_ (##cdr _e1914319964_)))
                                 (if (gx#stx-datum? _hd1914419968_)
                                     (if (equal? (gx#stx-e _hd1914419968_)
                                                 'null:)
                                         (if (gx#stx-null? _tl1914519971_)
                                             ((lambda ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'if)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '##null?)
                          (cons _L19081_ '()))
                    (cons _K19063_ (cons _E19064_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1909819957_ _g1910819961_))
                                         (_g1909819957_ _g1910819961_))
                                     (_g1909819957_ _g1910819961_))))
                             (_g1909819957_ _g1910819961_)))))
                  (let ((_g1909620097_
                         (lambda (_g1910819982_)
                           (if (gx#stx-pair? _g1910819982_)
                               (let ((_e1913419985_
                                      (gx#syntax-e _g1910819982_)))
                                 (let ((_hd1913519989_ (##car _e1913419985_))
                                       (_tl1913619992_ (##cdr _e1913419985_)))
                                   (if (gx#stx-datum? _hd1913519989_)
                                       (if (equal? (gx#stx-e _hd1913519989_)
                                                   'cons:)
                                           (if (gx#stx-pair? _tl1913619992_)
                                               (let ((_e1913719995_
                                                      (gx#syntax-e
                                                       _tl1913619992_)))
                                                 (let ((_hd1913819999_
                                                        (##car _e1913719995_))
                                                       (_tl1913920002_
                                                        (##cdr _e1913719995_)))
                                                   (if (gx#stx-pair?
                                                        _tl1913920002_)
                                                       (let ((_e1914020005_
                                                              (gx#syntax-e
                                                               _tl1913920002_)))
                                                         (let ((_hd1914120009_
                                                                (##car _e1914020005_))
                                                               (_tl1914220012_
                                                                (##cdr _e1914020005_)))
                                                           (if (gx#stx-null?
                                                                _tl1914220012_)
                                                               ((lambda (_L20015_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L20017_)
                          (let ((_g2003320048_
                                 (lambda (_g2003420044_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2003420044_))))
                            (let ((_g2003220093_
                                   (lambda (_g2003420052_)
                                     (if (gx#stx-pair? _g2003420052_)
                                         (let ((_e2003720055_
                                                (gx#syntax-e _g2003420052_)))
                                           (let ((_hd2003820059_
                                                  (##car _e2003720055_))
                                                 (_tl2003920062_
                                                  (##cdr _e2003720055_)))
                                             (if (gx#stx-pair? _tl2003920062_)
                                                 (let ((_e2004020065_
                                                        (gx#syntax-e
                                                         _tl2003920062_)))
                                                   (let ((_hd2004120069_
                                                          (##car _e2004020065_))
                                                         (_tl2004220072_
                                                          (##cdr _e2004020065_)))
                                                     (if (gx#stx-null?
                                                          _tl2004220072_)
                                                         ((lambda (_L20075_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L20077_)
                    (let ()
                      (cons (gx#datum->syntax '#f 'if)
                            (cons (cons (gx#datum->syntax '#f '##pair?)
                                        (cons _L19081_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'let)
                                              (cons (cons (cons _L20077_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     '##car)
                                    (cons _L19081_ '()))
                              '()))
                  (cons (cons _L20075_
                              (cons (cons (gx#datum->syntax '#f '##cdr)
                                          (cons _L19081_ '()))
                                    '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (_generate117530_
                                                           _L20077_
                                                           _L20017_
                                                           (_generate117530_
                                                            _L20075_
                                                            _L20015_
                                                            _K19063_
                                                            _E19064_)
                                                           _E19064_)
                                                          '())))
                                        (cons _E19064_ '()))))))
                  _hd2004120069_
                  _hd2003820059_)
                 (_g2003320048_ _g2003420052_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2003320048_
                                                  _g2003420052_))))
                                         (_g2003320048_ _g2003420052_)))))
                              (_g2003220093_
                               (list (gx#genident 'hd) (gx#genident 'tl))))))
                        _hd1914120009_
                        _hd1913819999_)
                       (_g1909719978_ _g1910819982_))))
               (_g1909719978_ _g1910819982_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1909719978_ _g1910819982_))
                                           (_g1909719978_ _g1910819982_))
                                       (_g1909719978_ _g1910819982_))))
                               (_g1909719978_ _g1910819982_)))))
                    (let ((_g1909520137_
                           (lambda (_g1910820101_)
                             (if (gx#stx-pair? _g1910820101_)
                                 (let ((_e1912620104_
                                        (gx#syntax-e _g1910820101_)))
                                   (let ((_hd1912720108_ (##car _e1912620104_))
                                         (_tl1912820111_
                                          (##cdr _e1912620104_)))
                                     (if (gx#stx-datum? _hd1912720108_)
                                         (if (equal? (gx#stx-e _hd1912720108_)
                                                     'not:)
                                             (if (gx#stx-pair? _tl1912820111_)
                                                 (let ((_e1912920114_
                                                        (gx#syntax-e
                                                         _tl1912820111_)))
                                                   (let ((_hd1913020118_
                                                          (##car _e1912920114_))
                                                         (_tl1913120121_
                                                          (##cdr _e1912920114_)))
                                                     (if (gx#stx-null?
                                                          _tl1913120121_)
                                                         ((lambda (_L20124_)
                                                            (_generate117530_
                                                             _tgt19060_
                                                             _L20124_
                                                             _E19064_
                                                             _K19063_))
                                                          _hd1913020118_)
                                                         (_g1909620097_
                                                          _g1910820101_))))
                                                 (_g1909620097_ _g1910820101_))
                                             (_g1909620097_ _g1910820101_))
                                         (_g1909620097_ _g1910820101_))))
                                 (_g1909620097_ _g1910820101_)))))
                      (let ((_g1909420225_
                             (lambda (_g1910820141_)
                               (if (gx#stx-pair? _g1910820141_)
                                   (let ((_e1912220144_
                                          (gx#syntax-e _g1910820141_)))
                                     (let ((_hd1912320148_
                                            (##car _e1912220144_))
                                           (_tl1912420151_
                                            (##cdr _e1912220144_)))
                                       (if (gx#stx-datum? _hd1912320148_)
                                           (if (equal? (gx#stx-e
                                                        _hd1912320148_)
                                                       'or:)
                                               ((lambda (_L20154_)
                                                  (let ((_g2016620178_
                                                         (lambda (_g2016720174_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2016720174_))))
                                                    (let ((_g2016520189_
                                                           (lambda (_g2016720182_)
                                                             ((lambda ()
                                                                _E19064_)))))
                                                      (let ((_g2016420221_
                                                             (lambda (_g2016720193_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2016720193_)
                           (let ((_e2017020196_ (gx#syntax-e _g2016720193_)))
                             (let ((_hd2017120200_ (##car _e2017020196_))
                                   (_tl2017220203_ (##cdr _e2017020196_)))
                               ((lambda (_L20206_ _L20208_)
                                  (_generate117530_
                                   _tgt19060_
                                   _L20208_
                                   _K19063_
                                   (_generate117530_
                                    _tgt19060_
                                    (cons 'or: _L20206_)
                                    _K19063_
                                    _E19064_)))
                                _tl2017220203_
                                _hd2017120200_)))
                           (_g2016520189_ _g2016720193_)))))
                (_g2016420221_ _L20154_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl1912420151_)
                                               (_g1909520137_ _g1910820141_))
                                           (_g1909520137_ _g1910820141_))))
                                   (_g1909520137_ _g1910820141_)))))
                        (let ((_g1909320313_
                               (lambda (_g1910820229_)
                                 (if (gx#stx-pair? _g1910820229_)
                                     (let ((_e1911820232_
                                            (gx#syntax-e _g1910820229_)))
                                       (let ((_hd1911920236_
                                              (##car _e1911820232_))
                                             (_tl1912020239_
                                              (##cdr _e1911820232_)))
                                         (if (gx#stx-datum? _hd1911920236_)
                                             (if (equal? (gx#stx-e
                                                          _hd1911920236_)
                                                         'and:)
                                                 ((lambda (_L20242_)
                                                    (let ((_g2025420266_
                                                           (lambda (_g2025520262_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g2025520262_))))
                                                      (let ((_g2025320277_
                                                             (lambda (_g2025520270_)
                                                               ((lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _K19063_)))))
                (let ((_g2025220309_
                       (lambda (_g2025520281_)
                         (if (gx#stx-pair? _g2025520281_)
                             (let ((_e2025820284_ (gx#syntax-e _g2025520281_)))
                               (let ((_hd2025920288_ (##car _e2025820284_))
                                     (_tl2026020291_ (##cdr _e2025820284_)))
                                 ((lambda (_L20294_ _L20296_)
                                    (_generate117530_
                                     _tgt19060_
                                     _L20296_
                                     (_generate117530_
                                      _tgt19060_
                                      (cons 'and: _L20294_)
                                      _K19063_
                                      _E19064_)
                                     _E19064_))
                                  _tl2026020291_
                                  _hd2025920288_)))
                             (_g2025320277_ _g2025520281_)))))
                  (_g2025220309_ _L20242_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl1912020239_)
                                                 (_g1909420225_ _g1910820229_))
                                             (_g1909420225_ _g1910820229_))))
                                     (_g1909420225_ _g1910820229_)))))
                          (let ((_g1909220602_
                                 (lambda (_g1910820317_)
                                   (if (gx#stx-pair? _g1910820317_)
                                       (let ((_e1911120320_
                                              (gx#syntax-e _g1910820317_)))
                                         (let ((_hd1911220324_
                                                (##car _e1911120320_))
                                               (_tl1911320327_
                                                (##cdr _e1911120320_)))
                                           (if (gx#stx-datum? _hd1911220324_)
                                               (if (equal? (gx#stx-e
                                                            _hd1911220324_)
                                                           '?:)
                                                   (if (gx#stx-pair?
                                                        _tl1911320327_)
                                                       (let ((_e1911420330_
                                                              (gx#syntax-e
                                                               _tl1911320327_)))
                                                         (let ((_hd1911520334_
                                                                (##car _e1911420330_))
                                                               (_tl1911620337_
                                                                (##cdr _e1911420330_)))
                                                           ((lambda (_L20340_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L20342_)
                      (let ((_g2035820390_
                             (lambda (_g2035920386_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g2035920386_))))
                        (let ((_g2035720488_
                               (lambda (_g2035920394_)
                                 (if (gx#stx-pair? _g2035920394_)
                                     (let ((_e2037320397_
                                            (gx#syntax-e _g2035920394_)))
                                       (let ((_hd2037420401_
                                              (##car _e2037320397_))
                                             (_tl2037520404_
                                              (##cdr _e2037320397_)))
                                         (if (gx#stx-datum? _hd2037420401_)
                                             (if (equal? (gx#stx-e
                                                          _hd2037420401_)
                                                         '::)
                                                 (if (gx#stx-pair?
                                                      _tl2037520404_)
                                                     (let ((_e2037620407_
                                                            (gx#syntax-e
                                                             _tl2037520404_)))
                                                       (let ((_hd2037720411_
                                                              (##car _e2037620407_))
                                                             (_tl2037820414_
                                                              (##cdr _e2037620407_)))
                                                         (if (gx#stx-pair?
                                                              _tl2037820414_)
                                                             (let ((_e2037920417_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl2037820414_)))
                       (let ((_hd2038020421_ (##car _e2037920417_))
                             (_tl2038120424_ (##cdr _e2037920417_)))
                         (if (gx#stx-datum? _hd2038020421_)
                             (if (equal? (gx#stx-e _hd2038020421_) '=>:)
                                 (if (gx#stx-pair? _tl2038120424_)
                                     (let ((_e2038220427_
                                            (gx#syntax-e _tl2038120424_)))
                                       (let ((_hd2038320431_
                                              (##car _e2038220427_))
                                             (_tl2038420434_
                                              (##cdr _e2038220427_)))
                                         (if (gx#stx-null? _tl2038420434_)
                                             ((lambda (_L20437_ _L20439_)
                                                (let ((_g2045720465_
                                                       (lambda (_g2045820461_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g2045820461_))))
                                                  (let ((_g2045620484_
                                                         (lambda (_g2045820469_)
                                                           ((lambda (_L20472_)
                                                              (let ()
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'if)
                              (cons (cons (gx#datum->syntax '#f '?)
                                          (cons _L20342_ (cons _L19081_ '())))
                                    (cons (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (cons _L20472_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _L20439_ (cons _L19081_ '())) '()))
                    '())
              (cons (_generate117530_ _L20472_ _L20437_ _K19063_ _E19064_)
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons _E19064_ '()))))))
                    _g2045820469_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2045620484_
                                                     (gx#genident 'e)))))
                                              _hd2038320431_
                                              _hd2037720411_)
                                             (_g2035820390_ _g2035920394_))))
                                     (_g2035820390_ _g2035920394_))
                                 (_g2035820390_ _g2035920394_))
                             (_g2035820390_ _g2035920394_))))
                     (_g2035820390_ _g2035920394_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2035820390_
                                                      _g2035920394_))
                                                 (_g2035820390_ _g2035920394_))
                                             (_g2035820390_ _g2035920394_))))
                                     (_g2035820390_ _g2035920394_)))))
                          (let ((_g2035620559_
                                 (lambda (_g2035920492_)
                                   (if (gx#stx-pair? _g2035920492_)
                                       (let ((_e2036520495_
                                              (gx#syntax-e _g2035920492_)))
                                         (let ((_hd2036620499_
                                                (##car _e2036520495_))
                                               (_tl2036720502_
                                                (##cdr _e2036520495_)))
                                           (if (gx#stx-datum? _hd2036620499_)
                                               (if (equal? (gx#stx-e
                                                            _hd2036620499_)
                                                           '=>:)
                                                   (if (gx#stx-pair?
                                                        _tl2036720502_)
                                                       (let ((_e2036820505_
                                                              (gx#syntax-e
                                                               _tl2036720502_)))
                                                         (let ((_hd2036920509_
                                                                (##car _e2036820505_))
                                                               (_tl2037020512_
                                                                (##cdr _e2036820505_)))
                                                           (if (gx#stx-null?
                                                                _tl2037020512_)
                                                               ((lambda (_L20515_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_g2052820536_
                                 (lambda (_g2052920532_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2052920532_))))
                            (let ((_g2052720555_
                                   (lambda (_g2052920540_)
                                     ((lambda (_L20543_)
                                        (let ()
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (cons _L20543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _L20342_ (cons _L19081_ '())) '()))
                    '())
              (cons (cons (gx#datum->syntax '#f 'if)
                          (cons _L20543_
                                (cons (_generate117530_
                                       _L20543_
                                       _L20515_
                                       _K19063_
                                       _E19064_)
                                      (cons _E19064_ '()))))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2052920540_))))
                              (_g2052720555_ (gx#genident 'e)))))
                        _hd2036920509_)
                       (_g2035720488_ _g2035920492_))))
               (_g2035720488_ _g2035920492_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2035720488_
                                                    _g2035920492_))
                                               (_g2035720488_ _g2035920492_))))
                                       (_g2035720488_ _g2035920492_)))))
                            (let ((_g2035520587_
                                   (lambda (_g2035920563_)
                                     (if (gx#stx-pair? _g2035920563_)
                                         (let ((_e2036120566_
                                                (gx#syntax-e _g2035920563_)))
                                           (let ((_hd2036220570_
                                                  (##car _e2036120566_))
                                                 (_tl2036320573_
                                                  (##cdr _e2036120566_)))
                                             (if (gx#stx-null? _tl2036320573_)
                                                 ((lambda (_L20576_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '?)
                              (cons _L20342_ (cons _L19081_ '())))
                        (cons (_generate117530_
                               _tgt19060_
                               _L20576_
                               _K19063_
                               _E19064_)
                              (cons _E19064_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd2036220570_)
                                                 (_g2035620559_
                                                  _g2035920563_))))
                                         (_g2035620559_ _g2035920563_)))))
                              (let ((_g2035420598_
                                     (lambda (_g2035920591_)
                                       (if (gx#stx-null? _g2035920591_)
                                           ((lambda ()
                                              (cons (gx#datum->syntax '#f 'if)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '?)
                        (cons _L20342_ (cons _L19081_ '())))
                  (cons _K19063_ (cons _E19064_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g2035520587_ _g2035920591_)))))
                                (_g2035420598_ _L20340_)))))))
                    _tl1911620337_
                    _hd1911520334_)))
               (_g1909320313_ _g1910820317_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1909320313_
                                                    _g1910820317_))
                                               (_g1909320313_ _g1910820317_))))
                                       (_g1909320313_ _g1910820317_)))))
                            (_g1909220602_ _ptree19062_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _g1906719078_))))
                        (_g1906520606_ _tgt19060_)))))
                 (_generate-splice17532_
                  (lambda (_tgt18432_ _hd18434_ _rest18435_ _K18436_ _E18437_)
                    (let ((_g1843918456_
                           (lambda (_g1844018452_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1844018452_))))
                      (let ((_g1843819056_
                             (lambda (_g1844018460_)
                               (if (gx#stx-pair/null? _g1844018460_)
                                   (if (fx>= (gx#stx-length _g1844018460_) '0)
                                       (let ((_g28441_
                                              (gx#syntax-split-splice
                                               _g1844018460_
                                               '0)))
                                         (begin
                                           (let ((_g28442_
                                                  (values-count _g28441_)))
                                             (if (not (fx= _g28442_ 2))
                                                 (error "Context expects 2 values"
                                                        _g28442_)))
                                           (let ((_target1844218463_
                                                  (values-ref _g28441_ 0))
                                                 (_tl1844418466_
                                                  (values-ref _g28441_ 1)))
                                             (if (gx#stx-null? _tl1844418466_)
                                                 (letrec ((_loop1844518469_
                                                           (lambda (_hd1844318473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _var1844918476_)
                     (if (gx#stx-pair? _hd1844318473_)
                         (let ((_e1844618479_ (gx#syntax-e _hd1844318473_)))
                           (let ((_lp-hd1844718483_ (##car _e1844618479_))
                                 (_lp-tl1844818486_ (##cdr _e1844618479_)))
                             (_loop1844518469_
                              _lp-tl1844818486_
                              (cons _lp-hd1844718483_ _var1844918476_))))
                         (let ((_var1845018489_ (reverse _var1844918476_)))
                           ((lambda (_L18493_)
                              (let ()
                                (let ((_g1850918526_
                                       (lambda (_g1851018522_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1851018522_))))
                                  (let ((_g1850819044_
                                         (lambda (_g1851018530_)
                                           (if (gx#stx-pair/null?
                                                _g1851018530_)
                                               (if (fx>= (gx#stx-length
                                                          _g1851018530_)
                                                         '0)
                                                   (let ((_g28443_
                                                          (gx#syntax-split-splice
                                                           _g1851018530_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28444_
                                                              (values-count
                                                               _g28443_)))
                                                         (if (not (fx= _g28444_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28444_)))
               (let ((_target1851218533_ (values-ref _g28443_ 0))
                     (_tl1851418536_ (values-ref _g28443_ 1)))
                 (if (gx#stx-null? _tl1851418536_)
                     (letrec ((_loop1851518539_
                               (lambda (_hd1851318543_ _var-r1851918546_)
                                 (if (gx#stx-pair? _hd1851318543_)
                                     (let ((_e1851618549_
                                            (gx#syntax-e _hd1851318543_)))
                                       (let ((_lp-hd1851718553_
                                              (##car _e1851618549_))
                                             (_lp-tl1851818556_
                                              (##cdr _e1851618549_)))
                                         (_loop1851518539_
                                          _lp-tl1851818556_
                                          (cons _lp-hd1851718553_
                                                _var-r1851918546_))))
                                     (let ((_var-r1852018559_
                                            (reverse _var-r1851918546_)))
                                       ((lambda (_L18563_)
                                          (let ()
                                            (let ((_g1858018597_
                                                   (lambda (_g1858118593_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1858118593_))))
                                              (let ((_g1857919032_
                                                     (lambda (_g1858118601_)
                                                       (if (gx#stx-pair/null?
                                                            _g1858118601_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1858118601_)
                             '0)
                       (let ((_g28445_
                              (gx#syntax-split-splice _g1858118601_ '0)))
                         (begin
                           (let ((_g28446_ (values-count _g28445_)))
                             (if (not (fx= _g28446_ 2))
                                 (error "Context expects 2 values" _g28446_)))
                           (let ((_target1858318604_ (values-ref _g28445_ 0))
                                 (_tl1858518607_ (values-ref _g28445_ 1)))
                             (if (gx#stx-null? _tl1858518607_)
                                 (letrec ((_loop1858618610_
                                           (lambda (_hd1858418614_
                                                    _init1859018617_)
                                             (if (gx#stx-pair? _hd1858418614_)
                                                 (let ((_e1858718620_
                                                        (gx#syntax-e
                                                         _hd1858418614_)))
                                                   (let ((_lp-hd1858818624_
                                                          (##car _e1858718620_))
                                                         (_lp-tl1858918627_
                                                          (##cdr _e1858718620_)))
                                                     (_loop1858618610_
                                                      _lp-tl1858918627_
                                                      (cons _lp-hd1858818624_
                                                            _init1859018617_))))
                                                 (let ((_init1859118630_
                                                        (reverse _init1859018617_)))
                                                   ((lambda (_L18634_)
                                                      (let ()
                                                        (let ((_g1865118659_
                                                               (lambda (_g1865218655_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1865218655_))))
                  (let ((_g1865019028_
                         (lambda (_g1865218663_)
                           ((lambda (_L18666_)
                              (let ()
                                (let ((_g1867918687_
                                       (lambda (_g1868018683_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1868018683_))))
                                  (let ((_g1867819024_
                                         (lambda (_g1868018691_)
                                           ((lambda (_L18694_)
                                              (let ()
                                                (let ((_g1870718715_
                                                       (lambda (_g1870818711_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1870818711_))))
                                                  (let ((_g1870619020_
                                                         (lambda (_g1870818719_)
                                                           ((lambda (_L18722_)
                                                              (let ()
                                                                (let ((_g1873518743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1873618739_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1873618739_))))
                          (let ((_g1873419016_
                                 (lambda (_g1873618747_)
                                   ((lambda (_L18750_)
                                      (let ()
                                        (let ((_g1876318771_
                                               (lambda (_g1876418767_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1876418767_))))
                                          (let ((_g1876219012_
                                                 (lambda (_g1876418775_)
                                                   ((lambda (_L18778_)
                                                      (let ()
                                                        (let ((_g1879118799_
                                                               (lambda (_g1879218795_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1879218795_))))
                  (let ((_g1879019008_
                         (lambda (_g1879218803_)
                           ((lambda (_L18806_)
                              (let ()
                                (let ((_g1881918827_
                                       (lambda (_g1882018823_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1882018823_))))
                                  (let ((_g1881819004_
                                         (lambda (_g1882018831_)
                                           ((lambda (_L18834_)
                                              (let ()
                                                (let ((_g1884718855_
                                                       (lambda (_g1884818851_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1884818851_))))
                                                  (let ((_g1884618989_
                                                         (lambda (_g1884818859_)
                                                           ((lambda (_L18862_)
                                                              (let ()
                                                                (let ((_g1887518883_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1887618879_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1887618879_))))
                          (let ((_g1887418977_
                                 (lambda (_g1887618887_)
                                   ((lambda (_L18890_)
                                      (let ()
                                        (let ((_g1890318911_
                                               (lambda (_g1890418907_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1890418907_))))
                                          (let ((_g1890218973_
                                                 (lambda (_g1890418915_)
                                                   ((lambda (_L18918_)
                                                      (let ()
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'letrec)
                        (cons (cons (cons _L18694_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L18806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr (lambda (_g1893218943_ _g1893318946_)
                                     (cons _g1893218943_ _g1893318946_))
                                   '()
                                   _L18493_)))
                    (cons _L18834_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (cons (cons _L18750_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons (cons _L18778_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _L18806_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1893418949_
                                                        _g1893518952_)
                                                 (cons _g1893418949_
                                                       _g1893518952_))
                                               '()
                                               _L18563_))))
                          (cons _L18918_ '())))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons _L18722_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons (cons _L18806_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1893618955_
                                                        _g1893718958_)
                                                 (cons _g1893618955_
                                                       _g1893718958_))
                                               '()
                                               _L18563_)))
                                (cons (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'pair?)
                                                        (cons _L18806_ '()))
                                                  (cons (cons _L18750_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '##car)
                                  (cons _L18806_ '()))
                            (cons _L18806_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g1893818961_
                                                    _g1893918964_)
                                             (cons _g1893818961_
                                                   _g1893918964_))
                                           '()
                                           _L18563_)))))
                (cons _L18890_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              (cons (cons _L18722_
                                          (cons _L18666_
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g1894018967_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1894118970_)
                   (cons _g1894018967_ _g1894118970_))
                 '()
                 _L18634_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1890418915_))))
                                            (_g1890218973_
                                             (_generate117530_
                                              _L18778_
                                              _hd18434_
                                              _L18862_
                                              _L18890_))))))
                                    _g1887618887_))))
                            (_g1887418977_
                             (cons _L18694_
                                   (cons _L18806_
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g1898018983_
                                                           _g1898118986_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'reverse)
                        (cons _g1898018983_ '()))
                  _g1898118986_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()
                                                  _L18563_)))))))))
                    _g1884818859_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1884618989_
                                                     (cons _L18722_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##cdr)
                               (cons _L18806_ '()))
                         (begin
                           (gx#syntax-check-splice-targets _L18563_ _L18493_)
                           (foldr (lambda (_g1899218996_
                                           _g1899318999_
                                           _g1899419001_)
                                    (cons (cons (gx#datum->syntax '#f 'cons)
                                                (cons _g1899318999_
                                                      (cons _g1899218996_
                                                            '())))
                                          _g1899419001_))
                                  '()
                                  _L18563_
                                  _L18493_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g1882018831_))))
                                    (_g1881819004_
                                     (_generate117530_
                                      _L18806_
                                      _rest18435_
                                      _K18436_
                                      _E18437_))))))
                            _g1879218803_))))
                    (_g1879019008_ (gx#genident 'rest))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1876418775_))))
                                            (_g1876219012_
                                             (gx#genident 'hd))))))
                                    _g1873618747_))))
                            (_g1873419016_ (gx#genident 'splice-try))))))
                    _g1870818719_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1870619020_
                                                     (gx#genident
                                                      'splice-loop))))))
                                            _g1868018691_))))
                                    (_g1867819024_
                                     (gx#genident 'splice-rest))))))
                            _g1865218663_))))
                    (_g1865019028_ _tgt18432_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _init1859118630_))))))
                                   (_loop1858618610_ _target1858318604_ '()))
                                 (_g1858018597_ _g1858118601_)))))
                       (_g1858018597_ _g1858118601_))
                   (_g1858018597_ _g1858118601_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1857919032_
                                                 (make-list
                                                  (gx#stx-length
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g1903519038_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1903619041_)
                      (cons _g1903519038_ _g1903619041_))
                    '()
                    _L18493_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         '@list)
                                                        '())))))))
                                        _var-r1852018559_))))))
                       (_loop1851518539_ _target1851218533_ '()))
                     (_g1850918526_ _g1851018530_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1850918526_
                                                    _g1851018530_))
                                               (_g1850918526_
                                                _g1851018530_)))))
                                    (_g1850819044_
                                     (gx#gentemps
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1904719050_
                                                        _g1904819053_)
                                                 (cons _g1904719050_
                                                       _g1904819053_))
                                               '()
                                               _L18493_))))))))
                            _var1845018489_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop1844518469_
                                                    _target1844218463_
                                                    '()))
                                                 (_g1843918456_
                                                  _g1844018460_)))))
                                       (_g1843918456_ _g1844018460_))
                                   (_g1843918456_ _g1844018460_)))))
                        (_g1843819056_
                         (|gerbil/core::<match>[1]#match-pattern-vars|
                          _hd18434_))))))
                 (_generate-simple-vector17533_
                  (lambda (_tgt18274_
                           _body18276_
                           _start18277_
                           _K18278_
                           _E18279_)
                    ((letrec ((_recur18281_
                               (lambda (_rest18284_ _off18286_)
                                 (let ((_g1828918301_
                                        (lambda (_g1829018297_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1829018297_))))
                                   (let ((_g1828818312_
                                          (lambda (_g1829018305_)
                                            ((lambda () _K18278_)))))
                                     (let ((_g1828718428_
                                            (lambda (_g1829018316_)
                                              (if (gx#stx-pair? _g1829018316_)
                                                  (let ((_e1829318319_
                                                         (gx#syntax-e
                                                          _g1829018316_)))
                                                    (let ((_hd1829418323_
                                                           (##car _e1829318319_))
                                                          (_tl1829518326_
                                                           (##cdr _e1829318319_)))
                                                      ((lambda (_L18329_
                                                                _L18331_)
                                                         (let ((_g1834618365_
                                                                (lambda (_g1834718361_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1834718361_))))
                   (let ((_g1834518424_
                          (lambda (_g1834718369_)
                            (if (gx#stx-pair? _g1834718369_)
                                (let ((_e1835118372_
                                       (gx#syntax-e _g1834718369_)))
                                  (let ((_hd1835218376_ (##car _e1835118372_))
                                        (_tl1835318379_ (##cdr _e1835118372_)))
                                    (if (gx#stx-pair? _tl1835318379_)
                                        (let ((_e1835418382_
                                               (gx#syntax-e _tl1835318379_)))
                                          (let ((_hd1835518386_
                                                 (##car _e1835418382_))
                                                (_tl1835618389_
                                                 (##cdr _e1835418382_)))
                                            (if (gx#stx-pair? _tl1835618389_)
                                                (let ((_e1835718392_
                                                       (gx#syntax-e
                                                        _tl1835618389_)))
                                                  (let ((_hd1835818396_
                                                         (##car _e1835718392_))
                                                        (_tl1835918399_
                                                         (##cdr _e1835718392_)))
                                                    (if (gx#stx-null?
                                                         _tl1835918399_)
                                                        ((lambda (_L18402_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18404_
                          _L18405_)
                   (let ()
                     (cons (gx#datum->syntax '#f 'let)
                           (cons (cons (cons _L18405_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##vector-ref)
                                                         (cons _L18404_
                                                               (cons _L18402_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())
                                 (cons (_generate117530_
                                        _L18405_
                                        _L18331_
                                        (_recur18281_
                                         _L18329_
                                         (fx1+ _off18286_))
                                        _E18279_)
                                       '())))))
                 _hd1835818396_
                 _hd1835518386_
                 _hd1835218376_)
                (_g1834618365_ _g1834718369_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1834618365_
                                                 _g1834718369_))))
                                        (_g1834618365_ _g1834718369_))))
                                (_g1834618365_ _g1834718369_)))))
                     (_g1834518424_
                      (list (gx#genident 'e) _tgt18274_ _off18286_)))))
               _tl1829518326_
               _hd1829418323_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1828818312_
                                                   _g1829018316_)))))
                                       (_g1828718428_ _rest18284_)))))))
                       _recur18281_)
                     _body18276_
                     _start18277_)))
                 (_generate-list-vector17534_
                  (lambda (_tgt18184_
                           _body18186_
                           _tgt->list18187_
                           _start18188_
                           _K18189_
                           _E18190_)
                    (let ((_g1819218211_
                           (lambda (_g1819318207_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1819318207_))))
                      (let ((_g1819118270_
                             (lambda (_g1819318215_)
                               (if (gx#stx-pair? _g1819318215_)
                                   (let ((_e1819718218_
                                          (gx#syntax-e _g1819318215_)))
                                     (let ((_hd1819818222_
                                            (##car _e1819718218_))
                                           (_tl1819918225_
                                            (##cdr _e1819718218_)))
                                       (if (gx#stx-pair? _tl1819918225_)
                                           (let ((_e1820018228_
                                                  (gx#syntax-e
                                                   _tl1819918225_)))
                                             (let ((_hd1820118232_
                                                    (##car _e1820018228_))
                                                   (_tl1820218235_
                                                    (##cdr _e1820018228_)))
                                               (if (gx#stx-pair?
                                                    _tl1820218235_)
                                                   (let ((_e1820318238_
                                                          (gx#syntax-e
                                                           _tl1820218235_)))
                                                     (let ((_hd1820418242_
                                                            (##car _e1820318238_))
                                                           (_tl1820518245_
                                                            (##cdr _e1820318238_)))
                                                       (if (gx#stx-null?
                                                            _tl1820518245_)
                                                           ((lambda (_L18248_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L18250_
                             _L18251_)
                      (let ()
                        (cons (gx#datum->syntax '#f 'let)
                              (cons (cons (cons _L18251_
                                                (cons (cons _L18248_
                                                            (cons _L18250_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())
                                    (cons (_generate117530_
                                           _L18251_
                                           _body18186_
                                           _K18189_
                                           _E18190_)
                                          '())))))
                    _hd1820418242_
                    _hd1820118232_
                    _hd1819818222_)
                   (_g1819218211_ _g1819318215_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1819218211_
                                                    _g1819318215_))))
                                           (_g1819218211_ _g1819318215_))))
                                   (_g1819218211_ _g1819318215_)))))
                        (_g1819118270_
                         (list (gx#genident 'e)
                               _tgt18184_
                               _tgt->list18187_))))))
                 (_generate-struct17535_
                  (lambda (_info17917_
                           _tgt17919_
                           _body17920_
                           _K17921_
                           _E17922_)
                    (let ((_rtd17924_
                           (if (|gerbil/core::<MOP>::<MOP:2>[1]#extended-struct-info?|
                                _info17917_)
                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor|
                                _info17917_)
                               '#f)))
                      (let ((_fields17934_
                             ((letrec ((_lp17927_
                                        (lambda (_rtd17930_ _k17932_)
                                          (if _rtd17930_
                                              (_lp17927_
                                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor-e|
                                                (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-super|
                                                 _rtd17930_))
                                               (fx+ (length (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-fields|
                                                             _rtd17930_))
                                                    _k17932_))
                                              _k17932_))))
                                _lp17927_)
                              _rtd17924_
                              '0)))
                        (let ((_final?17937_
                               (if _rtd17924_
                                   (assgetq 'final:
                                            (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-plist|
                                             _rtd17924_))
                                   '#f)))
                          (let ((_g1794017948_
                                 (lambda (_g1794117944_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1794117944_))))
                            (let ((_g1793918180_
                                   (lambda (_g1794117952_)
                                     ((lambda (_L17955_)
                                        (let ()
                                          (let ((_g1797017978_
                                                 (lambda (_g1797117974_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1797117974_))))
                                            (let ((_g1796918176_
                                                   (lambda (_g1797117982_)
                                                     ((lambda (_L17985_)
                                                        (let ()
                                                          (let ((_g1799818006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1799918002_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1799918002_))))
                    (let ((_g1799718172_
                           (lambda (_g1799918010_)
                             ((lambda (_L18013_)
                                (let ()
                                  (let ()
                                    (let ((_g1802918050_
                                           (lambda (_g1803018046_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1803018046_))))
                                      (let ((_g1802818093_
                                             (lambda (_g1803018054_)
                                               (if (gx#stx-pair? _g1803018054_)
                                                   (let ((_e1803918057_
                                                          (gx#syntax-e
                                                           _g1803018054_)))
                                                     (let ((_hd1804018061_
                                                            (##car _e1803918057_))
                                                           (_tl1804118064_
                                                            (##cdr _e1803918057_)))
                                                       (if (gx#stx-datum?
                                                            _hd1804018061_)
                                                           (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1804018061_)
                               'list:)
                       (if (gx#stx-pair? _tl1804118064_)
                           (let ((_e1804218067_ (gx#syntax-e _tl1804118064_)))
                             (let ((_hd1804318071_ (##car _e1804218067_))
                                   (_tl1804418074_ (##cdr _e1804218067_)))
                               (if (gx#stx-null? _tl1804418074_)
                                   ((lambda (_L18077_)
                                      (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons _L18013_
                                                        (cons _L17985_
                                                              (cons _L17955_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (_generate-list-vector17534_
                                                         _tgt17919_
                                                         _L18077_
                                                         (gx#datum->syntax
                                                          '#f
                                                          'struct->list)
                                                         '1
                                                         _K17921_
                                                         _E17922_)
                                                        (cons _E17922_ '())))))
                                    _hd1804318071_)
                                   (_g1802918050_ _g1803018054_))))
                           (_g1802918050_ _g1803018054_))
                       (_g1802918050_ _g1803018054_))
                   (_g1802918050_ _g1803018054_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1802918050_
                                                    _g1803018054_)))))
                                        (let ((_g1802718168_
                                               (lambda (_g1803018097_)
                                                 (if (gx#stx-pair?
                                                      _g1803018097_)
                                                     (let ((_e1803218100_
                                                            (gx#syntax-e
                                                             _g1803018097_)))
                                                       (let ((_hd1803318104_
                                                              (##car _e1803218100_))
                                                             (_tl1803418107_
                                                              (##cdr _e1803218100_)))
                                                         (if (gx#stx-datum?
                                                              _hd1803318104_)
                                                             (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _hd1803318104_)
                                 'simple:)
                         (if (gx#stx-pair? _tl1803418107_)
                             (let ((_e1803518110_
                                    (gx#syntax-e _tl1803418107_)))
                               (let ((_hd1803618114_ (##car _e1803518110_))
                                     (_tl1803718117_ (##cdr _e1803518110_)))
                                 (if (gx#stx-null? _tl1803718117_)
                                     ((lambda (_L18120_)
                                        (let ((_K18133_
                                               (_generate-simple-vector17533_
                                                _tgt17919_
                                                _L18120_
                                                '1
                                                _K17921_
                                                _E17922_)))
                                          (if (if _rtd17924_
                                                  (fx<= (gx#stx-length
                                                         _L18120_)
                                                        _fields17934_)
                                                  '#f)
                                              (cons (gx#datum->syntax '#f 'if)
                                                    (cons (cons _L18013_
                                                                (cons _L17985_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L17955_ '())))
                  (cons _K18133_ (cons _E17922_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g1813618144_
                                                     (lambda (_g1813718140_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1813718140_))))
                                                (let ((_g1813518164_
                                                       (lambda (_g1813718148_)
                                                         ((lambda (_L18151_)
                                                            (let ()
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'if)
                            (cons (cons (gx#datum->syntax '#f 'and)
                                        (cons (cons _L18013_
                                                    (cons _L17985_
                                                          (cons _L17955_ '())))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##fx<)
                                                          (cons _L18151_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     '##vector-length)
                                    (cons _L17955_ '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons _K18133_ (cons _E17922_ '()))))))
                  _g1813718148_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1813518164_
                                                   (gx#stx-length
                                                    _L18120_)))))))
                                      _hd1803618114_)
                                     (_g1802818093_ _g1803018097_))))
                             (_g1802818093_ _g1803018097_))
                         (_g1802818093_ _g1803018097_))
                     (_g1802818093_ _g1803018097_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1802818093_
                                                      _g1803018097_)))))
                                          (_g1802718168_ _body17920_)))))))
                              _g1799918010_))))
                      (_g1799718172_
                       (if _final?17937_
                           (gx#datum->syntax '#f 'direct-struct-instance?)
                           (gx#datum->syntax '#f 'struct-instance?)))))))
              _g1797117982_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1796918176_
                                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                                                _info17917_))))))
                                      _g1794117952_))))
                              (_g1793918180_ _tgt17919_))))))))
                 (_generate-class17536_
                  (lambda (_info17538_
                           _tgt17540_
                           _body17541_
                           _K17542_
                           _E17543_)
                    (let ((_rtd17545_
                           (if (|gerbil/core::<MOP>::<MOP:2>[1]#extended-class-info?|
                                _info17538_)
                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor|
                                _info17538_)
                               '#f)))
                      (let ((_known-slot?17547_ #!void))
                        (letrec ((_rtd-known-slot?17549_
                                  (lambda (_rtd17898_ _slot17900_)
                                    (if _rtd17898_
                                        (let ((_$e17902_
                                               (memq _slot17900_
                                                     (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-slots|
                                                      _rtd17898_))))
                                          (if _$e17902_
                                              _$e17902_
                                              (ormap (lambda (_g1790517907_)
                                                       (_rtd-known-slot?17549_
                                                        _g1790517907_
                                                        _slot17900_))
                                                     (map |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor-e|
                                                          (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-super|
                                                           _rtd17898_)))))
                                        '#f)))
                                 (_recur17550_
                                  (lambda (_klass17684_ _rest17686_)
                                    (let ((_g1768917705_
                                           (lambda (_g1769017701_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1769017701_))))
                                      (let ((_g1768817716_
                                             (lambda (_g1769017709_)
                                               ((lambda () _K17542_)))))
                                        (let ((_g1768717894_
                                               (lambda (_g1769017720_)
                                                 (if (gx#stx-pair?
                                                      _g1769017720_)
                                                     (let ((_e1769417723_
                                                            (gx#syntax-e
                                                             _g1769017720_)))
                                                       (let ((_hd1769517727_
                                                              (##car _e1769417723_))
                                                             (_tl1769617730_
                                                              (##cdr _e1769417723_)))
                                                         (if (gx#stx-pair?
                                                              _tl1769617730_)
                                                             (let ((_e1769717733_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1769617730_)))
                       (let ((_hd1769817737_ (##car _e1769717733_))
                             (_tl1769917740_ (##cdr _e1769717733_)))
                         ((lambda (_L17743_ _L17745_ _L17746_)
                            (let ((_g1776217770_
                                   (lambda (_g1776317766_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1776317766_))))
                              (let ((_g1776117890_
                                     (lambda (_g1776317774_)
                                       ((lambda (_L17777_)
                                          (let ()
                                            (let ((_g1778917797_
                                                   (lambda (_g1779017793_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1779017793_))))
                                              (let ((_g1778817886_
                                                     (lambda (_g1779017801_)
                                                       ((lambda (_L17804_)
                                                          (let ()
                                                            (let ((_g1781717825_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g1781817821_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1781817821_))))
                      (let ((_g1781617882_
                             (lambda (_g1781817829_)
                               ((lambda (_L17832_)
                                  (let ()
                                    (let ((_g1784517853_
                                           (lambda (_g1784617849_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1784617849_))))
                                      (let ((_g1784417878_
                                             (lambda (_g1784617857_)
                                               ((lambda (_L17860_)
                                                  (let ()
                                                    (let ((_K17873_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons (cons (cons _L17860_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##vector-ref)
                                                       (cons _L17777_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'fx1+)
                                 (cons _L17832_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons (_generate117530_
                                      _L17860_
                                      _L17745_
                                      (_recur17550_ _klass17684_ _L17743_)
                                      _E17543_)
                                     '())))))
              (let ()
                (if (_known-slot?17547_ _L17746_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _L17832_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'class-slot-offset)
                                                        (cons _L17804_
                                                              (cons _L17746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons _K17873_ '())))
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _L17832_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'class-slot-offset)
                                                        (cons _L17804_
                                                              (cons _L17746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons (cons (gx#datum->syntax '#f 'if)
                                            (cons _L17832_
                                                  (cons _K17873_
                                                        (cons _E17543_ '()))))
                                      '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1784617857_))))
                                        (_g1784417878_ (gx#genident 'e))))))
                                _g1781817829_))))
                        (_g1781617882_ (gx#genident 'slot))))))
                _g1779017801_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1778817886_
                                                 _klass17684_)))))
                                        _g1776317774_))))
                                (_g1776117890_ _tgt17540_))))
                          _tl1769917740_
                          _hd1769817737_
                          _hd1769517727_)))
                     (_g1768817716_ _g1769017720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1768817716_
                                                      _g1769017720_)))))
                                          (_g1768717894_ _rest17686_)))))))
                          (begin
                            (set! _known-slot?17547_
                                  (if _rtd17545_
                                      (lambda (_key17911_)
                                        (let ((_slot17914_
                                               (keyword->symbol
                                                (gx#stx-e _key17911_))))
                                          (_rtd-known-slot?17549_
                                           _rtd17545_
                                           _slot17914_)))
                                      false))
                            (let ((_final?17548_
                                   (if _rtd17545_
                                       (assgetq 'final:
                                                (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-plist|
                                                 _rtd17545_))
                                       '#f)))
                              (let ((_g1755217560_
                                     (lambda (_g1755317556_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1755317556_))))
                                (let ((_g1755117680_
                                       (lambda (_g1755317564_)
                                         ((lambda (_L17567_)
                                            (let ()
                                              (let ((_g1758217590_
                                                     (lambda (_g1758317586_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1758317586_))))
                                                (let ((_g1758117676_
                                                       (lambda (_g1758317594_)
                                                         ((lambda (_L17597_)
                                                            (let ()
                                                              (let ((_g1761017618_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1761117614_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1761117614_))))
                        (let ((_g1760917672_
                               (lambda (_g1761117622_)
                                 ((lambda (_L17625_)
                                    (let ()
                                      (let ((_g1763817646_
                                             (lambda (_g1763917642_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1763917642_))))
                                        (let ((_g1763717668_
                                               (lambda (_g1763917650_)
                                                 ((lambda (_L17653_)
                                                    (let ()
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'if)
                                                              (cons (cons _L17653_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons _L17625_ (cons _L17597_ '())))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (cons _L17567_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'object-type)
                              (cons _L17597_ '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (_recur17550_
                                                     _L17567_
                                                     _body17541_)
                                                    '())))
                                  (cons _E17543_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1763917650_))))
                                          (_g1763717668_
                                           (if _final?17548_
                                               (gx#datum->syntax
                                                '#f
                                                'direct-class-instance?)
                                               (gx#datum->syntax
                                                '#f
                                                'class-instance?)))))))
                                  _g1761117622_))))
                          (_g1760917672_
                           (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                            _info17538_))))))
                  _g1758317594_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1758117676_
                                                   _tgt17540_)))))
                                          _g1755317564_))))
                                  (_g1755117680_
                                   (gx#genident 'class))))))))))))
          (_generate117530_ _tgt17525_ _ptree17526_ _K17527_ _E17528_))))
    (define |gerbil/core::<match>[1]#generate-match*|
      (lambda (_stx16522_ _tgt-lst16524_ _clauses16525_)
        (let ((_parse-body16527_
               (lambda (_hd-len17345_)
                 ((letrec ((_lp17348_
                            (lambda (_rest17351_ _r17353_)
                              (let ((_g1735617368_
                                     (lambda (_g1735717364_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1735717364_))))
                                (let ((_g1735517379_
                                       (lambda (_g1735717372_)
                                         ((lambda () _r17353_)))))
                                  (let ((_g1735417519_
                                         (lambda (_g1735717383_)
                                           (if (gx#stx-pair? _g1735717383_)
                                               (let ((_e1736017386_
                                                      (gx#syntax-e
                                                       _g1735717383_)))
                                                 (let ((_hd1736117390_
                                                        (##car _e1736017386_))
                                                       (_tl1736217393_
                                                        (##cdr _e1736017386_)))
                                                   ((lambda (_L17396_ _L17398_)
                                                      (let ((_g1741517431_
                                                             (lambda (_g1741617427_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1741617427_))))
                                                        (let ((_g1741417442_
                                                               (lambda (_g1741617435_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal match clause"
                             _stx16522_
                             _L17398_))))))
                  (let ((_g1741317483_
                         (lambda (_g1741617446_)
                           (if (gx#stx-pair? _g1741617446_)
                               (let ((_e1742317449_
                                      (gx#syntax-e _g1741617446_)))
                                 (let ((_hd1742417453_ (##car _e1742317449_))
                                       (_tl1742517456_ (##cdr _e1742317449_)))
                                   ((lambda (_L17459_ _L17461_)
                                      (if (if (gx#stx-list? _L17461_)
                                              (if (fx= (gx#stx-length _L17461_)
                                                       _hd-len17345_)
                                                  (if (gx#stx-list? _L17459_)
                                                      (not (gx#stx-null?
                                                            _L17459_))
                                                      '#f)
                                                  '#f)
                                              '#f)
                                          (_lp17348_
                                           _L17396_
                                           (cons (cons (gx#genident 'try-match)
                                                       (cons (gx#stx-map
                                                              (lambda (_g1747317475_)
                                                                (|gerbil/core::<match>[1]#parse-match-pattern|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1747317475_
                         _stx16522_))
                      _L17461_)
                     (cons (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'begin) _L17459_)
                            (let ((_$e17479_ (gx#stx-source _L17398_)))
                              (if _$e17479_
                                  _$e17479_
                                  (gx#stx-source _stx16522_))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r17353_))
                                          (_g1741417442_ _g1741617446_)))
                                    _tl1742517456_
                                    _hd1742417453_)))
                               (_g1741417442_ _g1741617446_)))))
                    (let ((_g1741217515_
                           (lambda (_g1741617487_)
                             (if (gx#stx-pair? _g1741617487_)
                                 (let ((_e1741817490_
                                        (gx#syntax-e _g1741617487_)))
                                   (let ((_hd1741917494_ (##car _e1741817490_))
                                         (_tl1742017497_
                                          (##cdr _e1741817490_)))
                                     (if (gx#identifier? _hd1741917494_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core::<match>[1]#_g28451_|
                                              _hd1741917494_)
                                             ((lambda (_L17500_)
                                                (if (if (gx#stx-list? _L17500_)
                                                        (not (gx#stx-null?
                                                              _L17500_))
                                                        '#f)
                                                    (if (gx#stx-null? _L17396_)
                                                        (cons (cons (gx#genident
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             'else)
                            (cons '#f
                                  (cons (gx#stx-wrap-source
                                         (cons (gx#datum->syntax '#f 'begin)
                                               _L17500_)
                                         (let ((_$e17511_
                                                (gx#stx-source _L17398_)))
                                           (if _$e17511_
                                               _$e17511_
                                               (gx#stx-source _stx16522_))))
                                        '())))
                      _r17353_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; misplaced else"
                 _stx16522_
                 _L17398_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1741317483_
                                                     _g1741617487_)))
                                              _tl1742017497_)
                                             (_g1741317483_ _g1741617487_))
                                         (_g1741317483_ _g1741617487_))))
                                 (_g1741317483_ _g1741617487_)))))
                      (_g1741217515_ _L17398_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1736217393_
                                                    _hd1736117390_)))
                                               (_g1735517379_
                                                _g1735717383_)))))
                                    (_g1735417519_ _rest17351_)))))))
                    _lp17348_)
                  _clauses16525_
                  '()))))
          (let ((_generate116531_
                 (lambda (_clause16533_ _body16535_ _E16536_)
                   ((letrec ((_recur16538_
                              (lambda (_rest16541_ _rest-targets16543_)
                                (let ((_g1654616558_
                                       (lambda (_g1654716554_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1654716554_))))
                                  (let ((_g1654516569_
                                         (lambda (_g1654716562_)
                                           ((lambda () _body16535_)))))
                                    (let ((_g1654416840_
                                           (lambda (_g1654716573_)
                                             (if (gx#stx-pair? _g1654716573_)
                                                 (let ((_e1655016576_
                                                        (gx#syntax-e
                                                         _g1654716573_)))
                                                   (let ((_hd1655116580_
                                                          (##car _e1655016576_))
                                                         (_tl1655216583_
                                                          (##cdr _e1655016576_)))
                                                     ((lambda (_L16586_
                                                               _L16588_)
                                                        (let ((_g1660516617_
                                                               (lambda (_g1660616613_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1660616613_))))
                  (let ((_g1660416836_
                         (lambda (_g1660616621_)
                           (if (gx#stx-pair? _g1660616621_)
                               (let ((_e1660916624_
                                      (gx#syntax-e _g1660616621_)))
                                 (let ((_hd1661016628_ (##car _e1660916624_))
                                       (_tl1661116631_ (##cdr _e1660916624_)))
                                   ((lambda (_L16634_ _L16636_)
                                      (let ((_g1664816656_
                                             (lambda (_g1664916652_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1664916652_))))
                                        (let ((_g1664716832_
                                               (lambda (_g1664916660_)
                                                 ((lambda (_L16663_)
                                                    (let ()
                                                      (let ((_g1667516692_
                                                             (lambda (_g1667616688_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1667616688_))))
                                                        (let ((_g1667416828_
                                                               (lambda (_g1667616696_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#stx-pair/null? _g1667616696_)
                             (if (fx>= (gx#stx-length _g1667616696_) '0)
                                 (let ((_g28449_
                                        (gx#syntax-split-splice
                                         _g1667616696_
                                         '0)))
                                   (begin
                                     (let ((_g28450_ (values-count _g28449_)))
                                       (if (not (fx= _g28450_ 2))
                                           (error "Context expects 2 values"
                                                  _g28450_)))
                                     (let ((_target1667816699_
                                            (values-ref _g28449_ 0))
                                           (_tl1668016702_
                                            (values-ref _g28449_ 1)))
                                       (if (gx#stx-null? _tl1668016702_)
                                           (letrec ((_loop1668116705_
                                                     (lambda (_hd1667916709_
                                                              _var1668516712_)
                                                       (if (gx#stx-pair?
                                                            _hd1667916709_)
                                                           (let ((_e1668216715_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1667916709_)))
                     (let ((_lp-hd1668316719_ (##car _e1668216715_))
                           (_lp-tl1668416722_ (##cdr _e1668216715_)))
                       (_loop1668116705_
                        _lp-tl1668416722_
                        (cons _lp-hd1668316719_ _var1668516712_))))
                   (let ((_var1668616725_ (reverse _var1668516712_)))
                     ((lambda (_L16729_)
                        (let ()
                          (let ((_g1674616754_
                                 (lambda (_g1674716750_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1674716750_))))
                            (let ((_g1674516824_
                                   (lambda (_g1674716758_)
                                     ((lambda (_L16761_)
                                        (let ()
                                          (let ((_g1677416782_
                                                 (lambda (_g1677516778_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1677516778_))))
                                            (let ((_g1677316812_
                                                   (lambda (_g1677516786_)
                                                     ((lambda (_L16789_)
                                                        (let ()
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let)
                          (cons (cons (cons _L16663_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons (begin
                                                                '#!void
                                                                (foldr (lambda (_g1680316806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1680416809_)
                                 (cons _g1680316806_ _g1680416809_))
                               '()
                               _L16729_))
                      (cons _L16761_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons _L16789_ '()))))))
              _g1677516786_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1677316812_
                                               (|gerbil/core::<match>[1]#generate-match1|
                                                _stx16522_
                                                _L16636_
                                                _L16588_
                                                (cons _L16663_
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g1681516818_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1681616821_)
                         (cons _g1681516818_ _g1681616821_))
                       '()
                       _L16729_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _E16536_))))))
                                      _g1674716758_))))
                              (_g1674516824_
                               (_recur16538_ _L16586_ _L16634_))))))
                      _var1668616725_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1668116705_
                                              _target1667816699_
                                              '()))
                                           (_g1667516692_ _g1667616696_)))))
                                 (_g1667516692_ _g1667616696_))
                             (_g1667516692_ _g1667616696_)))))
                  (_g1667416828_
                   (|gerbil/core::<match>[1]#match-pattern-vars| _L16588_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1664916660_))))
                                          (_g1664716832_ (gx#genident 'K)))))
                                    _tl1661116631_
                                    _hd1661016628_)))
                               (_g1660516617_ _g1660616621_)))))
                    (_g1660416836_ _rest-targets16543_))))
              _tl1655216583_
              _hd1655116580_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1654516569_
                                                  _g1654716573_)))))
                                      (_g1654416840_ _rest16541_)))))))
                      _recur16538_)
                    _clause16533_
                    _tgt-lst16524_))))
            (letrec ((_generate-clauses16530_
                      (lambda (_rest16844_ _E16846_)
                        (let ((_g1685016866_
                               (lambda (_g1685116862_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1685116862_))))
                          (let ((_g1684916877_
                                 (lambda (_g1685116870_)
                                   ((lambda () _E16846_)))))
                            (let ((_g1684817053_
                                   (lambda (_g1685116881_)
                                     (if (gx#stx-pair? _g1685116881_)
                                         (let ((_e1685816884_
                                                (gx#syntax-e _g1685116881_)))
                                           (let ((_hd1685916888_
                                                  (##car _e1685816884_))
                                                 (_tl1686016891_
                                                  (##cdr _e1685816884_)))
                                             ((lambda (_L16894_ _L16896_)
                                                (let ((_g1690916928_
                                                       (lambda (_g1691016924_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1691016924_))))
                                                  (let ((_g1690817049_
                                                         (lambda (_g1691016932_)
                                                           (if (gx#stx-pair?
                                                                _g1691016932_)
                                                               (let ((_e1691416935_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1691016932_)))
                         (let ((_hd1691516939_ (##car _e1691416935_))
                               (_tl1691616942_ (##cdr _e1691416935_)))
                           (if (gx#stx-pair? _tl1691616942_)
                               (let ((_e1691716945_
                                      (gx#syntax-e _tl1691616942_)))
                                 (let ((_hd1691816949_ (##car _e1691716945_))
                                       (_tl1691916952_ (##cdr _e1691716945_)))
                                   (if (gx#stx-pair? _tl1691916952_)
                                       (let ((_e1692016955_
                                              (gx#syntax-e _tl1691916952_)))
                                         (let ((_hd1692116959_
                                                (##car _e1692016955_))
                                               (_tl1692216962_
                                                (##cdr _e1692016955_)))
                                           (if (gx#stx-null? _tl1692216962_)
                                               ((lambda (_L16965_
                                                         _L16967_
                                                         _L16968_)
                                                  (let ((_g1698517000_
                                                         (lambda (_g1698616996_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g1698616996_))))
                                                    (let ((_g1698417045_
                                                           (lambda (_g1698617004_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1698617004_)
                         (let ((_e1698917007_ (gx#syntax-e _g1698617004_)))
                           (let ((_hd1699017011_ (##car _e1698917007_))
                                 (_tl1699117014_ (##cdr _e1698917007_)))
                             (if (gx#stx-pair? _tl1699117014_)
                                 (let ((_e1699217017_
                                        (gx#syntax-e _tl1699117014_)))
                                   (let ((_hd1699317021_ (##car _e1699217017_))
                                         (_tl1699417024_
                                          (##cdr _e1699217017_)))
                                     (if (gx#stx-null? _tl1699417024_)
                                         ((lambda (_L17027_ _L17029_)
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L16968_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f 'lambda)
                                          (cons '() (cons _L17029_ '())))
                                    '()))
                        '())
                  (cons _L17027_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd1699317021_
                                          _hd1699017011_)
                                         (_g1698517000_ _g1698617004_))))
                                 (_g1698517000_ _g1698617004_))))
                         (_g1698517000_ _g1698617004_)))))
              (_g1698417045_
               (list (if (gx#stx-e _L16967_)
                         (_generate116531_ _L16967_ _L16965_ _E16846_)
                         _L16965_)
                     (_generate-clauses16530_
                      _L16894_
                      (cons _L16968_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1692116959_
                                                _hd1691816949_
                                                _hd1691516939_)
                                               (_g1690916928_ _g1691016932_))))
                                       (_g1690916928_ _g1691016932_))))
                               (_g1690916928_ _g1691016932_))))
                       (_g1690916928_ _g1691016932_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1690817049_ _L16896_))))
                                              _tl1686016891_
                                              _hd1685916888_)))
                                         (_g1684916877_ _g1685116881_)))))
                              (let ((_g1684717158_
                                     (lambda (_g1685117057_)
                                       (if (gx#stx-pair? _g1685117057_)
                                           (let ((_e1685317060_
                                                  (gx#syntax-e _g1685117057_)))
                                             (let ((_hd1685417064_
                                                    (##car _e1685317060_))
                                                   (_tl1685517067_
                                                    (##cdr _e1685317060_)))
                                               (if (gx#stx-null?
                                                    _tl1685517067_)
                                                   ((lambda (_L17070_)
                                                      (let ((_g1708117099_
                                                             (lambda (_g1708217095_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1708217095_))))
                                                        (let ((_g1708017154_
                                                               (lambda (_g1708217103_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#stx-pair? _g1708217103_)
                             (let ((_e1708517106_ (gx#syntax-e _g1708217103_)))
                               (let ((_hd1708617110_ (##car _e1708517106_))
                                     (_tl1708717113_ (##cdr _e1708517106_)))
                                 (if (gx#stx-pair? _tl1708717113_)
                                     (let ((_e1708817116_
                                            (gx#syntax-e _tl1708717113_)))
                                       (let ((_hd1708917120_
                                              (##car _e1708817116_))
                                             (_tl1709017123_
                                              (##cdr _e1708817116_)))
                                         (if (gx#stx-pair? _tl1709017123_)
                                             (let ((_e1709117126_
                                                    (gx#syntax-e
                                                     _tl1709017123_)))
                                               (let ((_hd1709217130_
                                                      (##car _e1709117126_))
                                                     (_tl1709317133_
                                                      (##cdr _e1709117126_)))
                                                 (if (gx#stx-null?
                                                      _tl1709317133_)
                                                     ((lambda (_L17136_
                                                               _L17138_)
                                                        (if (gx#stx-e _L17138_)
                                                            (_generate116531_
                                                             _L17138_
                                                             _L17136_
                                                             _E16846_)
                                                            _L17136_))
                                                      _hd1709217130_
                                                      _hd1708917120_)
                                                     (_g1708117099_
                                                      _g1708217103_))))
                                             (_g1708117099_ _g1708217103_))))
                                     (_g1708117099_ _g1708217103_))))
                             (_g1708117099_ _g1708217103_)))))
                  (_g1708017154_ _L17070_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1685417064_)
                                                   (_g1684817053_
                                                    _g1685117057_))))
                                           (_g1684817053_ _g1685117057_)))))
                                (_g1684717158_ _rest16844_))))))))
              (let ((_generate-body16529_
                     (lambda (_body17162_)
                       (let ((_g1716517173_
                              (lambda (_g1716617169_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1716617169_))))
                         (let ((_g1716417341_
                                (lambda (_g1716617177_)
                                  ((lambda (_L17180_)
                                     (let ()
                                       (let ((_g1719217209_
                                              (lambda (_g1719317205_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g1719317205_))))
                                         (let ((_g1719117337_
                                                (lambda (_g1719317213_)
                                                  (if (gx#stx-pair/null?
                                                       _g1719317213_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1719317213_)
                        '0)
                  (let ((_g28447_ (gx#syntax-split-splice _g1719317213_ '0)))
                    (begin
                      (let ((_g28448_ (values-count _g28447_)))
                        (if (not (fx= _g28448_ 2))
                            (error "Context expects 2 values" _g28448_)))
                      (let ((_target1719517216_ (values-ref _g28447_ 0))
                            (_tl1719717219_ (values-ref _g28447_ 1)))
                        (if (gx#stx-null? _tl1719717219_)
                            (letrec ((_loop1719817222_
                                      (lambda (_hd1719617226_
                                               _target1720217229_)
                                        (if (gx#stx-pair? _hd1719617226_)
                                            (let ((_e1719917232_
                                                   (gx#syntax-e
                                                    _hd1719617226_)))
                                              (let ((_lp-hd1720017236_
                                                     (##car _e1719917232_))
                                                    (_lp-tl1720117239_
                                                     (##cdr _e1719917232_)))
                                                (_loop1719817222_
                                                 _lp-tl1720117239_
                                                 (cons _lp-hd1720017236_
                                                       _target1720217229_))))
                                            (let ((_target1720317242_
                                                   (reverse _target1720217229_)))
                                              ((lambda (_L17246_)
                                                 (let ()
                                                   (let ((_g1726317271_
                                                          (lambda (_g1726417267_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1726417267_))))
                                                     (let ((_g1726217325_
                                                            (lambda (_g1726417275_)
                                                              ((lambda (_L17278_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((_g1729117299_
                                  (lambda (_g1729217295_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1729217295_))))
                             (let ((_g1729017321_
                                    (lambda (_g1729217303_)
                                      ((lambda (_L17306_)
                                         (let ()
                                           (let ()
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _L17180_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L17278_ '()))
                       '())
                 (cons _L17306_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _g1729217303_))))
                               (_g1729017321_
                                (_generate-clauses16530_
                                 _body17162_
                                 (cons _L17180_ '())))))))
                       _g1726417275_))))
               (_g1726217325_
                (gx#stx-wrap-source
                 (cons (gx#datum->syntax '#f 'lambda)
                       (cons '()
                             (cons (cons (gx#datum->syntax '#f 'error)
                                         (cons '"No clause matching"
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g1732817331_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1732917334_)
                  (cons _g1732817331_ _g1732917334_))
                '()
                _L17246_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '())))
                 (gx#stx-source _stx16522_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _target1720317242_))))))
                              (_loop1719817222_ _target1719517216_ '()))
                            (_g1719217209_ _g1719317213_)))))
                  (_g1719217209_ _g1719317213_))
              (_g1719217209_ _g1719317213_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1719117337_ _tgt-lst16524_)))))
                                   _g1716617177_))))
                           (_g1716417341_ (gx#genident 'E)))))))
                (_generate-body16529_
                 (_parse-body16527_ (gx#stx-length _tgt-lst16524_)))))))))
    (define |gerbil/core::<match>[1]#generate-match|
      (lambda (_stx16424_ _tgt16426_ _clauses16427_)
        (let ((_reclause16429_
               (lambda (_clause16432_)
                 (let ((_g1643716452_
                        (lambda (_g1643816448_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1643816448_))))
                   (let ((_g1643616463_
                          (lambda (_g1643816456_)
                            ((lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal match clause"
                                _stx16424_
                                _clause16432_))))))
                     (let ((_g1643516497_
                            (lambda (_g1643816467_)
                              (if (gx#stx-pair? _g1643816467_)
                                  (let ((_e1644416470_
                                         (gx#syntax-e _g1643816467_)))
                                    (let ((_hd1644516474_
                                           (##car _e1644416470_))
                                          (_tl1644616477_
                                           (##cdr _e1644416470_)))
                                      ((lambda (_L16480_ _L16482_)
                                         (gx#stx-wrap-source
                                          (cons (cons _L16482_ '()) _L16480_)
                                          (gx#stx-source
                                           (gx#datum->syntax '#f 'clause))))
                                       _tl1644616477_
                                       _hd1644516474_)))
                                  (_g1643616463_ _g1643816467_)))))
                       (let ((_g1643416518_
                              (lambda (_g1643816501_)
                                (if (gx#stx-pair? _g1643816501_)
                                    (let ((_e1643916504_
                                           (gx#syntax-e _g1643816501_)))
                                      (let ((_hd1644016508_
                                             (##car _e1643916504_))
                                            (_tl1644116511_
                                             (##cdr _e1643916504_)))
                                        (if (gx#identifier? _hd1644016508_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<match>[1]#_g28452_|
                                                 _hd1644016508_)
                                                ((lambda () _clause16432_))
                                                (_g1643516497_ _g1643816501_))
                                            (_g1643516497_ _g1643816501_))))
                                    (_g1643516497_ _g1643816501_)))))
                         (_g1643416518_ _clause16432_))))))))
          (|gerbil/core::<match>[1]#generate-match*|
           _stx16424_
           (cons _tgt16426_ '())
           (gx#stx-map _reclause16429_ _clauses16427_)))))
    (define |gerbil/core::<match>[:0:]#match|
      (lambda (_stx23402_)
        (let ((_g2340723436_
               (lambda (_g2340823432_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2340823432_))))
          (let ((_g2340623544_
                 (lambda (_g2340823440_)
                   (if (gx#stx-pair? _g2340823440_)
                       (let ((_e2342523443_ (gx#syntax-e _g2340823440_)))
                         (let ((_hd2342623447_ (##car _e2342523443_))
                               (_tl2342723450_ (##cdr _e2342523443_)))
                           (if (gx#stx-pair? _tl2342723450_)
                               (let ((_e2342823453_
                                      (gx#syntax-e _tl2342723450_)))
                                 (let ((_hd2342923457_ (##car _e2342823453_))
                                       (_tl2343023460_ (##cdr _e2342823453_)))
                                   ((lambda (_L23463_ _L23465_)
                                      (if (gx#stx-list? _L23463_)
                                          (let ((_g2347923487_
                                                 (lambda (_g2348023483_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2348023483_))))
                                            (let ((_g2347823540_
                                                   (lambda (_g2348023491_)
                                                     ((lambda (_L23494_)
                                                        (let ()
                                                          (let ((_g2350623514_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2350723510_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2350723510_))))
                    (let ((_g2350523536_
                           (lambda (_g2350723518_)
                             ((lambda (_L23521_)
                                (let ()
                                  (let ()
                                    (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (cons _L23494_
                                                            (cons _L23465_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _L23521_ '()))))))
                              _g2350723518_))))
                      (_g2350523536_
                       (|gerbil/core::<match>[1]#generate-match|
                        _stx23402_
                        _L23494_
                        _L23463_))))))
              _g2348023491_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2347823540_
                                               (gx#genident _L23465_))))
                                          (_g2340723436_ _g2340823440_)))
                                    _tl2343023460_
                                    _hd2342923457_)))
                               (_g2340723436_ _g2340823440_))))
                       (_g2340723436_ _g2340823440_)))))
            (let ((_g2340523649_
                   (lambda (_g2340823548_)
                     (if (gx#stx-pair? _g2340823548_)
                         (let ((_e2341723551_ (gx#syntax-e _g2340823548_)))
                           (let ((_hd2341823555_ (##car _e2341723551_))
                                 (_tl2341923558_ (##cdr _e2341723551_)))
                             (if (gx#stx-pair? _tl2341923558_)
                                 (let ((_e2342023561_
                                        (gx#syntax-e _tl2341923558_)))
                                   (let ((_hd2342123565_ (##car _e2342023561_))
                                         (_tl2342223568_
                                          (##cdr _e2342023561_)))
                                     (if (gx#identifier? _hd2342123565_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core::<match>[1]#_g28453_|
                                              _hd2342123565_)
                                             ((lambda (_L23571_)
                                                (if (gx#stx-list? _L23571_)
                                                    (let ((_g2358423592_
                                                           (lambda (_g2358523588_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g2358523588_))))
                                                      (let ((_g2358323645_
                                                             (lambda (_g2358523596_)
                                                               ((lambda (_L23599_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let ((_g2361123619_
                                   (lambda (_g2361223615_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2361223615_))))
                              (let ((_g2361023641_
                                     (lambda (_g2361223623_)
                                       ((lambda (_L23626_)
                                          (let ()
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons _L23599_
                                                          (cons _L23626_
                                                                '()))))))
                                        _g2361223623_))))
                                (_g2361023641_
                                 (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'match)
                                        (cons _L23599_ _L23571_))
                                  (gx#stx-source _stx23402_)))))))
                        _g2358523596_))))
                (_g2358323645_ (gx#genident 'args))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2340623544_
                                                     _g2340823548_)))
                                              _tl2342223568_)
                                             (_g2340623544_ _g2340823548_))
                                         (_g2340623544_ _g2340823548_))))
                                 (_g2340623544_ _g2340823548_))))
                         (_g2340623544_ _g2340823548_)))))
              (let ((_g2340423754_
                     (lambda (_g2340823653_)
                       (if (gx#stx-pair? _g2340823653_)
                           (let ((_e2341023656_ (gx#syntax-e _g2340823653_)))
                             (let ((_hd2341123660_ (##car _e2341023656_))
                                   (_tl2341223663_ (##cdr _e2341023656_)))
                               (if (gx#stx-pair? _tl2341223663_)
                                   (let ((_e2341323666_
                                          (gx#syntax-e _tl2341223663_)))
                                     (let ((_hd2341423670_
                                            (##car _e2341323666_))
                                           (_tl2341523673_
                                            (##cdr _e2341323666_)))
                                       (if (gx#identifier? _hd2341423670_)
                                           (if (gx#free-identifier=?
                                                |gerbil/core::<match>[1]#_g28454_|
                                                _hd2341423670_)
                                               ((lambda (_L23676_)
                                                  (if (gx#stx-list? _L23676_)
                                                      (let ((_g2368923697_
                                                             (lambda (_g2369023693_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2369023693_))))
                                                        (let ((_g2368823750_
                                                               (lambda (_g2369023701_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L23704_)
                            (let ()
                              (let ((_g2371623724_
                                     (lambda (_g2371723720_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g2371723720_))))
                                (let ((_g2371523746_
                                       (lambda (_g2371723728_)
                                         ((lambda (_L23731_)
                                            (let ()
                                              (let ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L23704_ '())
                                                            (cons _L23731_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g2371723728_))))
                                  (_g2371523746_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _L23704_ _L23676_))
                                    (gx#stx-source _stx23402_)))))))
                          _g2369023701_))))
                  (_g2368823750_ (gx#genident 'e))))
              (_g2340523649_ _g2340823653_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl2341523673_)
                                               (_g2340523649_ _g2340823653_))
                                           (_g2340523649_ _g2340823653_))))
                                   (_g2340523649_ _g2340823653_))))
                           (_g2340523649_ _g2340823653_)))))
                (_g2340423754_ _stx23402_)))))))
    (define |gerbil/core::<match>[:0:]#match*|
      (lambda (_stx23758_)
        (let ((_g2376123785_
               (lambda (_g2376223781_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2376223781_))))
          (let ((_g2376023997_
                 (lambda (_g2376223789_)
                   (if (gx#stx-pair? _g2376223789_)
                       (let ((_e2376523792_ (gx#syntax-e _g2376223789_)))
                         (let ((_hd2376623796_ (##car _e2376523792_))
                               (_tl2376723799_ (##cdr _e2376523792_)))
                           (if (gx#stx-pair? _tl2376723799_)
                               (let ((_e2376823802_
                                      (gx#syntax-e _tl2376723799_)))
                                 (let ((_hd2376923806_ (##car _e2376823802_))
                                       (_tl2377023809_ (##cdr _e2376823802_)))
                                   (if (gx#stx-pair/null? _hd2376923806_)
                                       (if (fx>= (gx#stx-length _hd2376923806_)
                                                 '0)
                                           (let ((_g28455_
                                                  (gx#syntax-split-splice
                                                   _hd2376923806_
                                                   '0)))
                                             (begin
                                               (let ((_g28456_
                                                      (values-count _g28455_)))
                                                 (if (not (fx= _g28456_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28456_)))
                                               (let ((_target2377123812_
                                                      (values-ref _g28455_ 0))
                                                     (_tl2377323815_
                                                      (values-ref _g28455_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl2377323815_)
                                                     (letrec ((_loop2377423818_
                                                               (lambda (_hd2377223822_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _e2377823825_)
                         (if (gx#stx-pair? _hd2377223822_)
                             (let ((_e2377523828_
                                    (gx#syntax-e _hd2377223822_)))
                               (let ((_lp-hd2377623832_ (##car _e2377523828_))
                                     (_lp-tl2377723835_ (##cdr _e2377523828_)))
                                 (_loop2377423818_
                                  _lp-tl2377723835_
                                  (cons _lp-hd2377623832_ _e2377823825_))))
                             (let ((_e2377923838_ (reverse _e2377823825_)))
                               ((lambda (_L23842_ _L23844_)
                                  (if (gx#stx-list? _L23842_)
                                      (let ((_g2386223879_
                                             (lambda (_g2386323875_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2386323875_))))
                                        (let ((_g2386123985_
                                               (lambda (_g2386323883_)
                                                 (if (gx#stx-pair/null?
                                                      _g2386323883_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2386323883_)
                                                               '0)
                                                         (let ((_g28457_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2386323883_
                         '0)))
                   (begin
                     (let ((_g28458_ (values-count _g28457_)))
                       (if (not (fx= _g28458_ 2))
                           (error "Context expects 2 values" _g28458_)))
                     (let ((_target2386523886_ (values-ref _g28457_ 0))
                           (_tl2386723889_ (values-ref _g28457_ 1)))
                       (if (gx#stx-null? _tl2386723889_)
                           (letrec ((_loop2386823892_
                                     (lambda (_hd2386623896_ _$e2387223899_)
                                       (if (gx#stx-pair? _hd2386623896_)
                                           (let ((_e2386923902_
                                                  (gx#syntax-e
                                                   _hd2386623896_)))
                                             (let ((_lp-hd2387023906_
                                                    (##car _e2386923902_))
                                                   (_lp-tl2387123909_
                                                    (##cdr _e2386923902_)))
                                               (_loop2386823892_
                                                _lp-tl2387123909_
                                                (cons _lp-hd2387023906_
                                                      _$e2387223899_))))
                                           (let ((_$e2387323912_
                                                  (reverse _$e2387223899_)))
                                             ((lambda (_L23916_)
                                                (let ()
                                                  (let ((_g2393223940_
                                                         (lambda (_g2393323936_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2393323936_))))
                                                    (let ((_g2393123973_
                                                           (lambda (_g2393323944_)
                                                             ((lambda (_L23947_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (begin
                                          (gx#syntax-check-splice-targets
                                           _L23844_
                                           _L23916_)
                                          (foldr (lambda (_g2396123965_
                                                          _g2396223968_
                                                          _g2396323970_)
                                                   (cons (cons _g2396223968_
                                                               (cons _g2396123965_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _g2396323970_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L23844_
                                                 _L23916_))
                                        (cons _L23947_ '()))))))
                      _g2393323944_))))
              (_g2393123973_
               (|gerbil/core::<match>[1]#generate-match*|
                _stx23758_
                (begin
                  '#!void
                  (foldr (lambda (_g2397623979_ _g2397723982_)
                           (cons _g2397623979_ _g2397723982_))
                         '()
                         _L23916_))
                _L23842_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _$e2387323912_))))))
                             (_loop2386823892_ _target2386523886_ '()))
                           (_g2386223879_ _g2386323883_)))))
                 (_g2386223879_ _g2386323883_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2386223879_
                                                      _g2386323883_)))))
                                          (_g2386123985_
                                           (gx#gentemps
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g2398823991_
                                                              _g2398923994_)
                                                       (cons _g2398823991_
                                                             _g2398923994_))
                                                     '()
                                                     _L23844_))))))
                                      (_g2376123785_ _g2376223789_)))
                                _tl2377023809_
                                _e2377923838_))))))
               (_loop2377423818_ _target2377123812_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2376123785_
                                                      _g2376223789_)))))
                                           (_g2376123785_ _g2376223789_))
                                       (_g2376123785_ _g2376223789_))))
                               (_g2376123785_ _g2376223789_))))
                       (_g2376123785_ _g2376223789_)))))
            (_g2376023997_ _stx23758_)))))
    (define |gerbil/core::<match>[:0:]#with|
      (lambda (_$stx24003_)
        (let ((_g2400924092_
               (lambda (_g2401024088_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2401024088_))))
          (let ((_g2400824253_
                 (lambda (_g2401024096_)
                   (if (gx#stx-pair? _g2401024096_)
                       (let ((_e2405524099_ (gx#syntax-e _g2401024096_)))
                         (let ((_hd2405624103_ (##car _e2405524099_))
                               (_tl2405724106_ (##cdr _e2405524099_)))
                           (if (gx#stx-pair? _tl2405724106_)
                               (let ((_e2405824109_
                                      (gx#syntax-e _tl2405724106_)))
                                 (let ((_hd2405924113_ (##car _e2405824109_))
                                       (_tl2406024116_ (##cdr _e2405824109_)))
                                   (if (gx#stx-pair/null? _hd2405924113_)
                                       (if (fx>= (gx#stx-length _hd2405924113_)
                                                 '0)
                                           (let ((_g28459_
                                                  (gx#syntax-split-splice
                                                   _hd2405924113_
                                                   '0)))
                                             (begin
                                               (let ((_g28460_
                                                      (values-count _g28459_)))
                                                 (if (not (fx= _g28460_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28460_)))
                                               (let ((_target2406124119_
                                                      (values-ref _g28459_ 0))
                                                     (_tl2406324122_
                                                      (values-ref _g28459_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl2406324122_)
                                                     (letrec ((_loop2406424125_
                                                               (lambda (_hd2406224129_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr2406824132_
                                _hd2406924134_)
                         (if (gx#stx-pair? _hd2406224129_)
                             (let ((_e2406524137_
                                    (gx#syntax-e _hd2406224129_)))
                               (let ((_lp-hd2406624141_ (##car _e2406524137_))
                                     (_lp-tl2406724144_ (##cdr _e2406524137_)))
                                 (if (gx#stx-pair? _lp-hd2406624141_)
                                     (let ((_e2407224147_
                                            (gx#syntax-e _lp-hd2406624141_)))
                                       (let ((_hd2407324151_
                                              (##car _e2407224147_))
                                             (_tl2407424154_
                                              (##cdr _e2407224147_)))
                                         (if (gx#stx-pair? _tl2407424154_)
                                             (let ((_e2407524157_
                                                    (gx#syntax-e
                                                     _tl2407424154_)))
                                               (let ((_hd2407624161_
                                                      (##car _e2407524157_))
                                                     (_tl2407724164_
                                                      (##cdr _e2407524157_)))
                                                 (if (gx#stx-null?
                                                      _tl2407724164_)
                                                     (_loop2406424125_
                                                      _lp-tl2406724144_
                                                      (cons _hd2407624161_
                                                            _expr2406824132_)
                                                      (cons _hd2407324151_
                                                            _hd2406924134_))
                                                     (_g2400924092_
                                                      _g2401024096_))))
                                             (_g2400924092_ _g2401024096_))))
                                     (_g2400924092_ _g2401024096_))))
                             (let ((_expr2407024167_
                                    (reverse _expr2406824132_))
                                   (_hd2407124170_ (reverse _hd2406924134_)))
                               (if (gx#stx-pair/null? _tl2406024116_)
                                   (if (fx>= (gx#stx-length _tl2406024116_) '0)
                                       (let ((_g28461_
                                              (gx#syntax-split-splice
                                               _tl2406024116_
                                               '0)))
                                         (begin
                                           (let ((_g28462_
                                                  (values-count _g28461_)))
                                             (if (not (fx= _g28462_ 2))
                                                 (error "Context expects 2 values"
                                                        _g28462_)))
                                           (let ((_target2407824173_
                                                  (values-ref _g28461_ 0))
                                                 (_tl2408024176_
                                                  (values-ref _g28461_ 1)))
                                             (if (gx#stx-null? _tl2408024176_)
                                                 (letrec ((_loop2408124179_
                                                           (lambda (_hd2407924183_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _body2408524186_)
                     (if (gx#stx-pair? _hd2407924183_)
                         (let ((_e2408224189_ (gx#syntax-e _hd2407924183_)))
                           (let ((_lp-hd2408324193_ (##car _e2408224189_))
                                 (_lp-tl2408424196_ (##cdr _e2408224189_)))
                             (_loop2408124179_
                              _lp-tl2408424196_
                              (cons _lp-hd2408324193_ _body2408524186_))))
                         (let ((_body2408624199_ (reverse _body2408524186_)))
                           ((lambda (_L24203_ _L24205_ _L24206_)
                              (cons (gx#datum->syntax '#f 'match*)
                                    (cons (begin
                                            '#!void
                                            (foldr (lambda (_g2422824235_
                                                            _g2422924238_)
                                                     (cons _g2422824235_
                                                           _g2422924238_))
                                                   '()
                                                   _L24205_))
                                          (cons (cons (begin
                                                        '#!void
                                                        (foldr (lambda (_g2423024241_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2423124244_)
                         (cons _g2423024241_ _g2423124244_))
                       '()
                       _L24206_))
              (begin
                '#!void
                (foldr (lambda (_g2423224247_ _g2423324250_)
                         (cons _g2423224247_ _g2423324250_))
                       '()
                       _L24203_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                            _body2408624199_
                            _expr2407024167_
                            _hd2407124170_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop2408124179_
                                                    _target2407824173_
                                                    '()))
                                                 (_g2400924092_
                                                  _g2401024096_)))))
                                       (_g2400924092_ _g2401024096_))
                                   (_g2400924092_ _g2401024096_)))))))
               (_loop2406424125_ _target2406124119_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2400924092_
                                                      _g2401024096_)))))
                                           (_g2400924092_ _g2401024096_))
                                       (_g2400924092_ _g2401024096_))))
                               (_g2400924092_ _g2401024096_))))
                       (_g2400924092_ _g2401024096_)))))
            (let ((_g2400724365_
                   (lambda (_g2401024257_)
                     (if (gx#stx-pair? _g2401024257_)
                         (let ((_e2403124260_ (gx#syntax-e _g2401024257_)))
                           (let ((_hd2403224264_ (##car _e2403124260_))
                                 (_tl2403324267_ (##cdr _e2403124260_)))
                             (if (gx#stx-pair? _tl2403324267_)
                                 (let ((_e2403424270_
                                        (gx#syntax-e _tl2403324267_)))
                                   (let ((_hd2403524274_ (##car _e2403424270_))
                                         (_tl2403624277_
                                          (##cdr _e2403424270_)))
                                     (if (gx#stx-pair? _hd2403524274_)
                                         (let ((_e2403724280_
                                                (gx#syntax-e _hd2403524274_)))
                                           (let ((_hd2403824284_
                                                  (##car _e2403724280_))
                                                 (_tl2403924287_
                                                  (##cdr _e2403724280_)))
                                             (if (gx#stx-pair? _tl2403924287_)
                                                 (let ((_e2404024290_
                                                        (gx#syntax-e
                                                         _tl2403924287_)))
                                                   (let ((_hd2404124294_
                                                          (##car _e2404024290_))
                                                         (_tl2404224297_
                                                          (##cdr _e2404024290_)))
                                                     (if (gx#stx-null?
                                                          _tl2404224297_)
                                                         (if (gx#stx-pair/null?
                                                              _tl2403624277_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _tl2403624277_)
                               '0)
                         (let ((_g28463_
                                (gx#syntax-split-splice _tl2403624277_ '0)))
                           (begin
                             (let ((_g28464_ (values-count _g28463_)))
                               (if (not (fx= _g28464_ 2))
                                   (error "Context expects 2 values"
                                          _g28464_)))
                             (let ((_target2404324300_ (values-ref _g28463_ 0))
                                   (_tl2404524303_ (values-ref _g28463_ 1)))
                               (if (gx#stx-null? _tl2404524303_)
                                   (letrec ((_loop2404624306_
                                             (lambda (_hd2404424310_
                                                      _body2405024313_)
                                               (if (gx#stx-pair?
                                                    _hd2404424310_)
                                                   (let ((_e2404724316_
                                                          (gx#syntax-e
                                                           _hd2404424310_)))
                                                     (let ((_lp-hd2404824320_
                                                            (##car _e2404724316_))
                                                           (_lp-tl2404924323_
                                                            (##cdr _e2404724316_)))
                                                       (_loop2404624306_
                                                        _lp-tl2404924323_
                                                        (cons _lp-hd2404824320_
                                                              _body2405024313_))))
                                                   (let ((_body2405124326_
                                                          (reverse _body2405024313_)))
                                                     ((lambda (_L24330_
                                                               _L24332_
                                                               _L24333_
                                                               _L24334_)
                                                        (if (|gerbil/core::<match>[1]#match-pattern?|
                                                             _L24333_)
                                                            (cons _L24334_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons _L24333_ (cons _L24332_ '())) '())
                                (begin
                                  '#!void
                                  (foldr (lambda (_g2435624359_ _g2435724362_)
                                           (cons _g2435624359_ _g2435724362_))
                                         '()
                                         _L24330_))))
                    (_g2400824253_ _g2401024257_)))
              _body2405124326_
              _hd2404124294_
              _hd2403824284_
              _hd2403224264_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop2404624306_ _target2404324300_ '()))
                                   (_g2400824253_ _g2401024257_)))))
                         (_g2400824253_ _g2401024257_))
                     (_g2400824253_ _g2401024257_))
                 (_g2400824253_ _g2401024257_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2400824253_
                                                  _g2401024257_))))
                                         (_g2400824253_ _g2401024257_))))
                                 (_g2400824253_ _g2401024257_))))
                         (_g2400824253_ _g2401024257_)))))
              (let ((_g2400624447_
                     (lambda (_g2401024369_)
                       (if (gx#stx-pair? _g2401024369_)
                           (let ((_e2401224372_ (gx#syntax-e _g2401024369_)))
                             (let ((_hd2401324376_ (##car _e2401224372_))
                                   (_tl2401424379_ (##cdr _e2401224372_)))
                               (if (gx#stx-pair? _tl2401424379_)
                                   (let ((_e2401524382_
                                          (gx#syntax-e _tl2401424379_)))
                                     (let ((_hd2401624386_
                                            (##car _e2401524382_))
                                           (_tl2401724389_
                                            (##cdr _e2401524382_)))
                                       (if (gx#stx-null? _hd2401624386_)
                                           (if (gx#stx-pair/null?
                                                _tl2401724389_)
                                               (if (fx>= (gx#stx-length
                                                          _tl2401724389_)
                                                         '0)
                                                   (let ((_g28465_
                                                          (gx#syntax-split-splice
                                                           _tl2401724389_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28466_
                                                              (values-count
                                                               _g28465_)))
                                                         (if (not (fx= _g28466_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28466_)))
               (let ((_target2401824392_ (values-ref _g28465_ 0))
                     (_tl2402024395_ (values-ref _g28465_ 1)))
                 (if (gx#stx-null? _tl2402024395_)
                     (letrec ((_loop2402124398_
                               (lambda (_hd2401924402_ _body2402524405_)
                                 (if (gx#stx-pair? _hd2401924402_)
                                     (let ((_e2402224408_
                                            (gx#syntax-e _hd2401924402_)))
                                       (let ((_lp-hd2402324412_
                                              (##car _e2402224408_))
                                             (_lp-tl2402424415_
                                              (##cdr _e2402224408_)))
                                         (_loop2402124398_
                                          _lp-tl2402424415_
                                          (cons _lp-hd2402324412_
                                                _body2402524405_))))
                                     (let ((_body2402624418_
                                            (reverse _body2402524405_)))
                                       ((lambda (_L24422_)
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons '()
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2443824441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2443924444_)
                         (cons _g2443824441_ _g2443924444_))
                       '()
                       _L24422_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body2402624418_))))))
                       (_loop2402124398_ _target2401824392_ '()))
                     (_g2400724365_ _g2401024369_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2400724365_
                                                    _g2401024369_))
                                               (_g2400724365_ _g2401024369_))
                                           (_g2400724365_ _g2401024369_))))
                                   (_g2400724365_ _g2401024369_))))
                           (_g2400724365_ _g2401024369_)))))
                (_g2400624447_ _$stx24003_)))))))
    (define |gerbil/core::<match>[:0:]#with*|
      (lambda (_$stx24455_)
        (let ((_g2446024512_
               (lambda (_g2446124508_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2446124508_))))
          (let ((_g2445924595_
                 (lambda (_g2446124516_)
                   (if (gx#stx-pair? _g2446124516_)
                       (let ((_e2449224519_ (gx#syntax-e _g2446124516_)))
                         (let ((_hd2449324523_ (##car _e2449224519_))
                               (_tl2449424526_ (##cdr _e2449224519_)))
                           (if (gx#stx-pair? _tl2449424526_)
                               (let ((_e2449524529_
                                      (gx#syntax-e _tl2449424526_)))
                                 (let ((_hd2449624533_ (##car _e2449524529_))
                                       (_tl2449724536_ (##cdr _e2449524529_)))
                                   (if (gx#stx-null? _hd2449624533_)
                                       (if (gx#stx-pair/null? _tl2449724536_)
                                           (if (fx>= (gx#stx-length
                                                      _tl2449724536_)
                                                     '0)
                                               (let ((_g28467_
                                                      (gx#syntax-split-splice
                                                       _tl2449724536_
                                                       '0)))
                                                 (begin
                                                   (let ((_g28468_
                                                          (values-count
                                                           _g28467_)))
                                                     (if (not (fx= _g28468_ 2))
                                                         (error "Context expects 2 values"
                                                                _g28468_)))
                                                   (let ((_target2449824539_
                                                          (values-ref
                                                           _g28467_
                                                           0))
                                                         (_tl2450024542_
                                                          (values-ref
                                                           _g28467_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl2450024542_)
                                                         (letrec ((_loop2450124545_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd2449924549_ _body2450524552_)
                             (if (gx#stx-pair? _hd2449924549_)
                                 (let ((_e2450224555_
                                        (gx#syntax-e _hd2449924549_)))
                                   (let ((_lp-hd2450324559_
                                          (##car _e2450224555_))
                                         (_lp-tl2450424562_
                                          (##cdr _e2450224555_)))
                                     (_loop2450124545_
                                      _lp-tl2450424562_
                                      (cons _lp-hd2450324559_
                                            _body2450524552_))))
                                 (let ((_body2450624565_
                                        (reverse _body2450524552_)))
                                   ((lambda (_L24569_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g2458624589_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2458724592_)
                     (cons _g2458624589_ _g2458724592_))
                   '()
                   _L24569_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _body2450624565_))))))
                   (_loop2450124545_ _target2449824539_ '()))
                 (_g2446024512_ _g2446124516_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2446024512_ _g2446124516_))
                                           (_g2446024512_ _g2446124516_))
                                       (_g2446024512_ _g2446124516_))))
                               (_g2446024512_ _g2446124516_))))
                       (_g2446024512_ _g2446124516_)))))
            (let ((_g2445824721_
                   (lambda (_g2446124599_)
                     (if (gx#stx-pair? _g2446124599_)
                         (let ((_e2446724602_ (gx#syntax-e _g2446124599_)))
                           (let ((_hd2446824606_ (##car _e2446724602_))
                                 (_tl2446924609_ (##cdr _e2446724602_)))
                             (if (gx#stx-pair? _tl2446924609_)
                                 (let ((_e2447024612_
                                        (gx#syntax-e _tl2446924609_)))
                                   (let ((_hd2447124616_ (##car _e2447024612_))
                                         (_tl2447224619_
                                          (##cdr _e2447024612_)))
                                     (if (gx#stx-pair? _hd2447124616_)
                                         (let ((_e2447324622_
                                                (gx#syntax-e _hd2447124616_)))
                                           (let ((_hd2447424626_
                                                  (##car _e2447324622_))
                                                 (_tl2447524629_
                                                  (##cdr _e2447324622_)))
                                             (if (gx#stx-pair? _hd2447424626_)
                                                 (let ((_e2447624632_
                                                        (gx#syntax-e
                                                         _hd2447424626_)))
                                                   (let ((_hd2447724636_
                                                          (##car _e2447624632_))
                                                         (_tl2447824639_
                                                          (##cdr _e2447624632_)))
                                                     (if (gx#stx-pair?
                                                          _tl2447824639_)
                                                         (let ((_e2447924642_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2447824639_)))
                   (let ((_hd2448024646_ (##car _e2447924642_))
                         (_tl2448124649_ (##cdr _e2447924642_)))
                     (if (gx#stx-null? _tl2448124649_)
                         (if (gx#stx-pair/null? _tl2447224619_)
                             (if (fx>= (gx#stx-length _tl2447224619_) '0)
                                 (let ((_g28469_
                                        (gx#syntax-split-splice
                                         _tl2447224619_
                                         '0)))
                                   (begin
                                     (let ((_g28470_ (values-count _g28469_)))
                                       (if (not (fx= _g28470_ 2))
                                           (error "Context expects 2 values"
                                                  _g28470_)))
                                     (let ((_target2448224652_
                                            (values-ref _g28469_ 0))
                                           (_tl2448424655_
                                            (values-ref _g28469_ 1)))
                                       (if (gx#stx-null? _tl2448424655_)
                                           (letrec ((_loop2448524658_
                                                     (lambda (_hd2448324662_
                                                              _body2448924665_)
                                                       (if (gx#stx-pair?
                                                            _hd2448324662_)
                                                           (let ((_e2448624668_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd2448324662_)))
                     (let ((_lp-hd2448724672_ (##car _e2448624668_))
                           (_lp-tl2448824675_ (##cdr _e2448624668_)))
                       (_loop2448524658_
                        _lp-tl2448824675_
                        (cons _lp-hd2448724672_ _body2448924665_))))
                   (let ((_body2449024678_ (reverse _body2448924665_)))
                     ((lambda (_L24682_ _L24684_ _L24685_ _L24686_ _L24687_)
                        (cons (gx#datum->syntax '#f 'with)
                              (cons (cons (cons _L24686_ (cons _L24685_ '()))
                                          '())
                                    (cons (cons _L24687_
                                                (cons _L24684_
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2471224715_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2471324718_)
                         (cons _g2471224715_ _g2471324718_))
                       '()
                       _L24682_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))))
                      _body2449024678_
                      _tl2447524629_
                      _hd2448024646_
                      _hd2447724636_
                      _hd2446824606_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop2448524658_
                                              _target2448224652_
                                              '()))
                                           (_g2445924595_ _g2446124599_)))))
                                 (_g2445924595_ _g2446124599_))
                             (_g2445924595_ _g2446124599_))
                         (_g2445924595_ _g2446124599_))))
                 (_g2445924595_ _g2446124599_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2445924595_
                                                  _g2446124599_))))
                                         (_g2445924595_ _g2446124599_))))
                                 (_g2445924595_ _g2446124599_))))
                         (_g2445924595_ _g2446124599_)))))
              (_g2445824721_ _$stx24455_))))))
    (define |gerbil/core::<match>[:0:]#?|
      (lambda (_$stx24727_)
        (let ((_g2473824882_
               (lambda (_g2473924878_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2473924878_))))
          (let ((_g2473724977_
                 (lambda (_g2473924886_)
                   (if (gx#stx-pair? _g2473924886_)
                       (let ((_e2485924889_ (gx#syntax-e _g2473924886_)))
                         (let ((_hd2486024893_ (##car _e2485924889_))
                               (_tl2486124896_ (##cdr _e2485924889_)))
                           (if (gx#stx-pair? _tl2486124896_)
                               (let ((_e2486224899_
                                      (gx#syntax-e _tl2486124896_)))
                                 (let ((_hd2486324903_ (##car _e2486224899_))
                                       (_tl2486424906_ (##cdr _e2486224899_)))
                                   (if (gx#stx-pair? _tl2486424906_)
                                       (let ((_e2486524909_
                                              (gx#syntax-e _tl2486424906_)))
                                         (let ((_hd2486624913_
                                                (##car _e2486524909_))
                                               (_tl2486724916_
                                                (##cdr _e2486524909_)))
                                           (if (gx#stx-datum? _hd2486624913_)
                                               (if (equal? (gx#stx-e
                                                            _hd2486624913_)
                                                           '::)
                                                   (if (gx#stx-pair?
                                                        _tl2486724916_)
                                                       (let ((_e2486824919_
                                                              (gx#syntax-e
                                                               _tl2486724916_)))
                                                         (let ((_hd2486924923_
                                                                (##car _e2486824919_))
                                                               (_tl2487024926_
                                                                (##cdr _e2486824919_)))
                                                           (if (gx#stx-pair?
                                                                _tl2487024926_)
                                                               (let ((_e2487124929_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2487024926_)))
                         (let ((_hd2487224933_ (##car _e2487124929_))
                               (_tl2487324936_ (##cdr _e2487124929_)))
                           (if (gx#identifier? _hd2487224933_)
                               (if (gx#free-identifier=?
                                    |gerbil/core::<match>[1]#_g28471_|
                                    _hd2487224933_)
                                   (if (gx#stx-pair? _tl2487324936_)
                                       (let ((_e2487424939_
                                              (gx#syntax-e _tl2487324936_)))
                                         (let ((_hd2487524943_
                                                (##car _e2487424939_))
                                               (_tl2487624946_
                                                (##cdr _e2487424939_)))
                                           (if (gx#stx-null? _tl2487624946_)
                                               ((lambda (_L24949_
                                                         _L24951_
                                                         _L24952_
                                                         _L24953_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$obj)
                            '())
                      (cons (cons (gx#datum->syntax '#f 'and)
                                  (cons (cons _L24953_
                                              (cons _L24952_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '$obj)
                                                          '())))
                                        (cons (cons _L24949_
                                                    (cons (cons _L24951_
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
                                                _hd2487524943_
                                                _hd2486924923_
                                                _hd2486324903_
                                                _hd2486024893_)
                                               (_g2473824882_ _g2473924886_))))
                                       (_g2473824882_ _g2473924886_))
                                   (_g2473824882_ _g2473924886_))
                               (_g2473824882_ _g2473924886_))))
                       (_g2473824882_ _g2473924886_))))
               (_g2473824882_ _g2473924886_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2473824882_
                                                    _g2473924886_))
                                               (_g2473824882_ _g2473924886_))))
                                       (_g2473824882_ _g2473924886_))))
                               (_g2473824882_ _g2473924886_))))
                       (_g2473824882_ _g2473924886_)))))
            (let ((_g2473625045_
                   (lambda (_g2473924981_)
                     (if (gx#stx-pair? _g2473924981_)
                         (let ((_e2484324984_ (gx#syntax-e _g2473924981_)))
                           (let ((_hd2484424988_ (##car _e2484324984_))
                                 (_tl2484524991_ (##cdr _e2484324984_)))
                             (if (gx#stx-pair? _tl2484524991_)
                                 (let ((_e2484624994_
                                        (gx#syntax-e _tl2484524991_)))
                                   (let ((_hd2484724998_ (##car _e2484624994_))
                                         (_tl2484825001_
                                          (##cdr _e2484624994_)))
                                     (if (gx#stx-pair? _tl2484825001_)
                                         (let ((_e2484925004_
                                                (gx#syntax-e _tl2484825001_)))
                                           (let ((_hd2485025008_
                                                  (##car _e2484925004_))
                                                 (_tl2485125011_
                                                  (##cdr _e2484925004_)))
                                             (if (gx#stx-datum? _hd2485025008_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2485025008_)
                                                             '::)
                                                     (if (gx#stx-pair?
                                                          _tl2485125011_)
                                                         (let ((_e2485225014_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2485125011_)))
                   (let ((_hd2485325018_ (##car _e2485225014_))
                         (_tl2485425021_ (##cdr _e2485225014_)))
                     (if (gx#stx-null? _tl2485425021_)
                         ((lambda (_L25024_ _L25026_ _L25027_)
                            (cons (gx#datum->syntax '#f 'lambda)
                                  (cons (cons (gx#datum->syntax '#f '$obj) '())
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'alet)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$val)
                        (cons (cons _L25027_
                                    (cons _L25026_
                                          (cons (gx#datum->syntax '#f '$obj)
                                                '())))
                              '()))
                  (cons (cons _L25024_ (cons (gx#datum->syntax '#f '$val) '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          _hd2485325018_
                          _hd2484724998_
                          _hd2484424988_)
                         (_g2473724977_ _g2473924981_))))
                 (_g2473724977_ _g2473924981_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2473724977_
                                                      _g2473924981_))
                                                 (_g2473724977_
                                                  _g2473924981_))))
                                         (_g2473724977_ _g2473924981_))))
                                 (_g2473724977_ _g2473924981_))))
                         (_g2473724977_ _g2473924981_)))))
              (let ((_g2473525113_
                     (lambda (_g2473925049_)
                       (if (gx#stx-pair? _g2473925049_)
                           (let ((_e2482825052_ (gx#syntax-e _g2473925049_)))
                             (let ((_hd2482925056_ (##car _e2482825052_))
                                   (_tl2483025059_ (##cdr _e2482825052_)))
                               (if (gx#stx-pair? _tl2483025059_)
                                   (let ((_e2483125062_
                                          (gx#syntax-e _tl2483025059_)))
                                     (let ((_hd2483225066_
                                            (##car _e2483125062_))
                                           (_tl2483325069_
                                            (##cdr _e2483125062_)))
                                       (if (gx#stx-pair? _tl2483325069_)
                                           (let ((_e2483425072_
                                                  (gx#syntax-e
                                                   _tl2483325069_)))
                                             (let ((_hd2483525076_
                                                    (##car _e2483425072_))
                                                   (_tl2483625079_
                                                    (##cdr _e2483425072_)))
                                               (if (gx#identifier?
                                                    _hd2483525076_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core::<match>[1]#_g28472_|
                                                        _hd2483525076_)
                                                       (if (gx#stx-pair?
                                                            _tl2483625079_)
                                                           (let ((_e2483725082_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl2483625079_)))
                     (let ((_hd2483825086_ (##car _e2483725082_))
                           (_tl2483925089_ (##cdr _e2483725082_)))
                       (if (gx#stx-null? _tl2483925089_)
                           ((lambda (_L25092_ _L25094_ _L25095_)
                              (cons (gx#datum->syntax '#f 'lambda)
                                    (cons (cons (gx#datum->syntax '#f '$obj)
                                                '())
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'and)
                                                      (cons (cons _L25095_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L25094_
                                (cons (gx#datum->syntax '#f '$obj) '())))
                    (cons (cons _L25092_
                                (cons (gx#datum->syntax '#f '$obj) '()))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                            _hd2483825086_
                            _hd2483225066_
                            _hd2482925056_)
                           (_g2473625045_ _g2473925049_))))
                   (_g2473625045_ _g2473925049_))
               (_g2473625045_ _g2473925049_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2473625045_
                                                    _g2473925049_))))
                                           (_g2473625045_ _g2473925049_))))
                                   (_g2473625045_ _g2473925049_))))
                           (_g2473625045_ _g2473925049_)))))
                (let ((_g2473425155_
                       (lambda (_g2473925117_)
                         (if (gx#stx-pair? _g2473925117_)
                             (let ((_e2481925120_ (gx#syntax-e _g2473925117_)))
                               (let ((_hd2482025124_ (##car _e2481925120_))
                                     (_tl2482125127_ (##cdr _e2481925120_)))
                                 (if (gx#stx-pair? _tl2482125127_)
                                     (let ((_e2482225130_
                                            (gx#syntax-e _tl2482125127_)))
                                       (let ((_hd2482325134_
                                              (##car _e2482225130_))
                                             (_tl2482425137_
                                              (##cdr _e2482225130_)))
                                         (if (gx#stx-null? _tl2482425137_)
                                             ((lambda (_L25140_ _L25142_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '$obj)
                          '())
                    (cons (cons _L25142_
                                (cons _L25140_
                                      (cons (gx#datum->syntax '#f '$obj) '())))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd2482325134_
                                              _hd2482025124_)
                                             (_g2473525113_ _g2473925117_))))
                                     (_g2473525113_ _g2473925117_))))
                             (_g2473525113_ _g2473925117_)))))
                  (let ((_g2473325209_
                         (lambda (_g2473925159_)
                           (if (gx#stx-pair? _g2473925159_)
                               (let ((_e2480825162_
                                      (gx#syntax-e _g2473925159_)))
                                 (let ((_hd2480925166_ (##car _e2480825162_))
                                       (_tl2481025169_ (##cdr _e2480825162_)))
                                   (if (gx#stx-pair? _tl2481025169_)
                                       (let ((_e2481125172_
                                              (gx#syntax-e _tl2481025169_)))
                                         (let ((_hd2481225176_
                                                (##car _e2481125172_))
                                               (_tl2481325179_
                                                (##cdr _e2481125172_)))
                                           (if (gx#stx-pair? _tl2481325179_)
                                               (let ((_e2481425182_
                                                      (gx#syntax-e
                                                       _tl2481325179_)))
                                                 (let ((_hd2481525186_
                                                        (##car _e2481425182_))
                                                       (_tl2481625189_
                                                        (##cdr _e2481425182_)))
                                                   (if (gx#stx-null?
                                                        _tl2481625189_)
                                                       ((lambda (_L25192_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L25194_)
                  (cons _L25194_ (cons _L25192_ '())))
                _hd2481525186_
                _hd2481225176_)
               (_g2473425155_ _g2473925159_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2473425155_ _g2473925159_))))
                                       (_g2473425155_ _g2473925159_))))
                               (_g2473425155_ _g2473925159_)))))
                    (let ((_g2473225289_
                           (lambda (_g2473925213_)
                             (if (gx#stx-pair? _g2473925213_)
                                 (let ((_e2479125216_
                                        (gx#syntax-e _g2473925213_)))
                                   (let ((_hd2479225220_ (##car _e2479125216_))
                                         (_tl2479325223_
                                          (##cdr _e2479125216_)))
                                     (if (gx#stx-pair? _tl2479325223_)
                                         (let ((_e2479425226_
                                                (gx#syntax-e _tl2479325223_)))
                                           (let ((_hd2479525230_
                                                  (##car _e2479425226_))
                                                 (_tl2479625233_
                                                  (##cdr _e2479425226_)))
                                             (if (gx#stx-pair? _hd2479525230_)
                                                 (let ((_e2479725236_
                                                        (gx#syntax-e
                                                         _hd2479525230_)))
                                                   (let ((_hd2479825240_
                                                          (##car _e2479725236_))
                                                         (_tl2479925243_
                                                          (##cdr _e2479725236_)))
                                                     (if (gx#identifier?
                                                          _hd2479825240_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core::<match>[1]#_g28473_|
                                                              _hd2479825240_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2479925243_)
                         (let ((_e2480025246_ (gx#syntax-e _tl2479925243_)))
                           (let ((_hd2480125250_ (##car _e2480025246_))
                                 (_tl2480225253_ (##cdr _e2480025246_)))
                             (if (gx#stx-null? _tl2480225253_)
                                 (if (gx#stx-pair? _tl2479625233_)
                                     (let ((_e2480325256_
                                            (gx#syntax-e _tl2479625233_)))
                                       (let ((_hd2480425260_
                                              (##car _e2480325256_))
                                             (_tl2480525263_
                                              (##cdr _e2480325256_)))
                                         (if (gx#stx-null? _tl2480525263_)
                                             ((lambda (_L25266_
                                                       _L25268_
                                                       _L25269_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'not)
                                                      (cons (cons _L25269_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L25268_ (cons _L25266_ '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd2480425260_
                                              _hd2480125250_
                                              _hd2479225220_)
                                             (_g2473325209_ _g2473925213_))))
                                     (_g2473325209_ _g2473925213_))
                                 (_g2473325209_ _g2473925213_))))
                         (_g2473325209_ _g2473925213_))
                     (_g2473325209_ _g2473925213_))
                 (_g2473325209_ _g2473925213_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2473325209_
                                                  _g2473925213_))))
                                         (_g2473325209_ _g2473925213_))))
                                 (_g2473325209_ _g2473925213_)))))
                      (let ((_g2473125399_
                             (lambda (_g2473925293_)
                               (if (gx#stx-pair? _g2473925293_)
                                   (let ((_e2476725296_
                                          (gx#syntax-e _g2473925293_)))
                                     (let ((_hd2476825300_
                                            (##car _e2476725296_))
                                           (_tl2476925303_
                                            (##cdr _e2476725296_)))
                                       (if (gx#stx-pair? _tl2476925303_)
                                           (let ((_e2477025306_
                                                  (gx#syntax-e
                                                   _tl2476925303_)))
                                             (let ((_hd2477125310_
                                                    (##car _e2477025306_))
                                                   (_tl2477225313_
                                                    (##cdr _e2477025306_)))
                                               (if (gx#stx-pair?
                                                    _hd2477125310_)
                                                   (let ((_e2477325316_
                                                          (gx#syntax-e
                                                           _hd2477125310_)))
                                                     (let ((_hd2477425320_
                                                            (##car _e2477325316_))
                                                           (_tl2477525323_
                                                            (##cdr _e2477325316_)))
                                                       (if (gx#identifier?
                                                            _hd2477425320_)
                                                           (if (gx#free-identifier=?
                                                                |gerbil/core::<match>[1]#_g28474_|
                                                                _hd2477425320_)
                                                               (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl2477525323_)
                           (if (fx>= (gx#stx-length _tl2477525323_) '0)
                               (let ((_g28475_
                                      (gx#syntax-split-splice
                                       _tl2477525323_
                                       '0)))
                                 (begin
                                   (let ((_g28476_ (values-count _g28475_)))
                                     (if (not (fx= _g28476_ 2))
                                         (error "Context expects 2 values"
                                                _g28476_)))
                                   (let ((_target2477625326_
                                          (values-ref _g28475_ 0))
                                         (_tl2477825329_
                                          (values-ref _g28475_ 1)))
                                     (if (gx#stx-null? _tl2477825329_)
                                         (letrec ((_loop2477925332_
                                                   (lambda (_hd2477725336_
                                                            _pred2478325339_)
                                                     (if (gx#stx-pair?
                                                          _hd2477725336_)
                                                         (let ((_e2478025342_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2477725336_)))
                   (let ((_lp-hd2478125346_ (##car _e2478025342_))
                         (_lp-tl2478225349_ (##cdr _e2478025342_)))
                     (_loop2477925332_
                      _lp-tl2478225349_
                      (cons _lp-hd2478125346_ _pred2478325339_))))
                 (let ((_pred2478425352_ (reverse _pred2478325339_)))
                   (if (gx#stx-pair? _tl2477225313_)
                       (let ((_e2478525356_ (gx#syntax-e _tl2477225313_)))
                         (let ((_hd2478625360_ (##car _e2478525356_))
                               (_tl2478725363_ (##cdr _e2478525356_)))
                           (if (gx#stx-null? _tl2478725363_)
                               ((lambda (_L25366_ _L25368_ _L25369_)
                                  (cons (gx#datum->syntax '#f 'or)
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g2539025393_
                                                          _g2539125396_)
                                                   (cons (cons _L25369_
                                                               (cons _g2539025393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L25366_ '())))
                 _g2539125396_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L25368_))))
                                _hd2478625360_
                                _pred2478425352_
                                _hd2476825300_)
                               (_g2473225289_ _g2473925293_))))
                       (_g2473225289_ _g2473925293_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop2477925332_
                                            _target2477625326_
                                            '()))
                                         (_g2473225289_ _g2473925293_)))))
                               (_g2473225289_ _g2473925293_))
                           (_g2473225289_ _g2473925293_))
                       (_g2473225289_ _g2473925293_))
                   (_g2473225289_ _g2473925293_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2473225289_
                                                    _g2473925293_))))
                                           (_g2473225289_ _g2473925293_))))
                                   (_g2473225289_ _g2473925293_)))))
                        (let ((_g2473025509_
                               (lambda (_g2473925403_)
                                 (if (gx#stx-pair? _g2473925403_)
                                     (let ((_e2474325406_
                                            (gx#syntax-e _g2473925403_)))
                                       (let ((_hd2474425410_
                                              (##car _e2474325406_))
                                             (_tl2474525413_
                                              (##cdr _e2474325406_)))
                                         (if (gx#stx-pair? _tl2474525413_)
                                             (let ((_e2474625416_
                                                    (gx#syntax-e
                                                     _tl2474525413_)))
                                               (let ((_hd2474725420_
                                                      (##car _e2474625416_))
                                                     (_tl2474825423_
                                                      (##cdr _e2474625416_)))
                                                 (if (gx#stx-pair?
                                                      _hd2474725420_)
                                                     (let ((_e2474925426_
                                                            (gx#syntax-e
                                                             _hd2474725420_)))
                                                       (let ((_hd2475025430_
                                                              (##car _e2474925426_))
                                                             (_tl2475125433_
                                                              (##cdr _e2474925426_)))
                                                         (if (gx#identifier?
                                                              _hd2475025430_)
                                                             (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          |gerbil/core::<match>[1]#_g28477_|
                          _hd2475025430_)
                         (if (gx#stx-pair/null? _tl2475125433_)
                             (if (fx>= (gx#stx-length _tl2475125433_) '0)
                                 (let ((_g28478_
                                        (gx#syntax-split-splice
                                         _tl2475125433_
                                         '0)))
                                   (begin
                                     (let ((_g28479_ (values-count _g28478_)))
                                       (if (not (fx= _g28479_ 2))
                                           (error "Context expects 2 values"
                                                  _g28479_)))
                                     (let ((_target2475225436_
                                            (values-ref _g28478_ 0))
                                           (_tl2475425439_
                                            (values-ref _g28478_ 1)))
                                       (if (gx#stx-null? _tl2475425439_)
                                           (letrec ((_loop2475525442_
                                                     (lambda (_hd2475325446_
                                                              _pred2475925449_)
                                                       (if (gx#stx-pair?
                                                            _hd2475325446_)
                                                           (let ((_e2475625452_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd2475325446_)))
                     (let ((_lp-hd2475725456_ (##car _e2475625452_))
                           (_lp-tl2475825459_ (##cdr _e2475625452_)))
                       (_loop2475525442_
                        _lp-tl2475825459_
                        (cons _lp-hd2475725456_ _pred2475925449_))))
                   (let ((_pred2476025462_ (reverse _pred2475925449_)))
                     (if (gx#stx-pair? _tl2474825423_)
                         (let ((_e2476125466_ (gx#syntax-e _tl2474825423_)))
                           (let ((_hd2476225470_ (##car _e2476125466_))
                                 (_tl2476325473_ (##cdr _e2476125466_)))
                             (if (gx#stx-null? _tl2476325473_)
                                 ((lambda (_L25476_ _L25478_ _L25479_)
                                    (cons (gx#datum->syntax '#f 'and)
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2550025503_
                                                            _g2550125506_)
                                                     (cons (cons _L25479_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _g2550025503_ (cons _L25476_ '())))
                   _g2550125506_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _L25478_))))
                                  _hd2476225470_
                                  _pred2476025462_
                                  _hd2474425410_)
                                 (_g2473125399_ _g2473925403_))))
                         (_g2473125399_ _g2473925403_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop2475525442_
                                              _target2475225436_
                                              '()))
                                           (_g2473125399_ _g2473925403_)))))
                                 (_g2473125399_ _g2473925403_))
                             (_g2473125399_ _g2473925403_))
                         (_g2473125399_ _g2473925403_))
                     (_g2473125399_ _g2473925403_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2473125399_
                                                      _g2473925403_))))
                                             (_g2473125399_ _g2473925403_))))
                                     (_g2473125399_ _g2473925403_)))))
                          (_g2473025509_ _$stx24727_))))))))))))
    (define |gerbil/core::<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx25515_)
        (let ((_g2552025554_
               (lambda (_g2552125550_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2552125550_))))
          (let ((_g2551925611_
                 (lambda (_g2552125558_)
                   (if (gx#stx-pair? _g2552125558_)
                       (let ((_e2554025561_ (gx#syntax-e _g2552125558_)))
                         (let ((_hd2554125565_ (##car _e2554025561_))
                               (_tl2554225568_ (##cdr _e2554025561_)))
                           (if (gx#stx-pair? _tl2554225568_)
                               (let ((_e2554325571_
                                      (gx#syntax-e _tl2554225568_)))
                                 (let ((_hd2554425575_ (##car _e2554325571_))
                                       (_tl2554525578_ (##cdr _e2554325571_)))
                                   (if (gx#stx-pair? _tl2554525578_)
                                       (let ((_e2554625581_
                                              (gx#syntax-e _tl2554525578_)))
                                         (let ((_hd2554725585_
                                                (##car _e2554625581_))
                                               (_tl2554825588_
                                                (##cdr _e2554625581_)))
                                           (if (gx#stx-null? _tl2554825588_)
                                               ((lambda (_L25591_
                                                         _L25593_
                                                         _L25594_)
                                                  (cons _L25594_
                                                        (cons _L25593_
                                                              (cons _L25591_
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
                                                _hd2554725585_
                                                _hd2554425575_
                                                _hd2554125565_)
                                               (_g2552025554_ _g2552125558_))))
                                       (_g2552025554_ _g2552125558_))))
                               (_g2552025554_ _g2552125558_))))
                       (_g2552025554_ _g2552125558_)))))
            (let ((_g2551825679_
                   (lambda (_g2552125615_)
                     (if (gx#stx-pair? _g2552125615_)
                         (let ((_e2552525618_ (gx#syntax-e _g2552125615_)))
                           (let ((_hd2552625622_ (##car _e2552525618_))
                                 (_tl2552725625_ (##cdr _e2552525618_)))
                             (if (gx#stx-pair? _tl2552725625_)
                                 (let ((_e2552825628_
                                        (gx#syntax-e _tl2552725625_)))
                                   (let ((_hd2552925632_ (##car _e2552825628_))
                                         (_tl2553025635_
                                          (##cdr _e2552825628_)))
                                     (if (gx#stx-pair? _tl2553025635_)
                                         (let ((_e2553125638_
                                                (gx#syntax-e _tl2553025635_)))
                                           (let ((_hd2553225642_
                                                  (##car _e2553125638_))
                                                 (_tl2553325645_
                                                  (##cdr _e2553125638_)))
                                             (if (gx#stx-pair? _tl2553325645_)
                                                 (let ((_e2553425648_
                                                        (gx#syntax-e
                                                         _tl2553325645_)))
                                                   (let ((_hd2553525652_
                                                          (##car _e2553425648_))
                                                         (_tl2553625655_
                                                          (##cdr _e2553425648_)))
                                                     (if (gx#stx-null?
                                                          _tl2553625655_)
                                                         ((lambda (_L25658_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L25660_
                           _L25661_)
                    (if (gx#identifier? _L25661_)
                        (cons (gx#datum->syntax '#f 'defsyntax)
                              (cons _L25661_
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'make-match-macro)
                                                (cons 'macro:
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let)
                          (cons (cons (cons (gx#datum->syntax '#f '$match-e)
                                            (cons _L25660_ '()))
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '$macro-e)
                                                  (cons _L25658_ '()))
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
                        (_g2551925611_ _g2552125615_)))
                  _hd2553525652_
                  _hd2553225642_
                  _hd2552925632_)
                 (_g2551925611_ _g2552125615_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2551925611_
                                                  _g2552125615_))))
                                         (_g2551925611_ _g2552125615_))))
                                 (_g2551925611_ _g2552125615_))))
                         (_g2551925611_ _g2552125615_)))))
              (_g2551825679_ _$stx25515_))))))
    (define |gerbil/core::<match>[:0:]#defrules-for-match|
      (lambda (_$stx25683_)
        (let ((_g2568725702_
               (lambda (_g2568825698_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2568825698_))))
          (let ((_g2568625745_
                 (lambda (_g2568825706_)
                   (if (gx#stx-pair? _g2568825706_)
                       (let ((_e2569125709_ (gx#syntax-e _g2568825706_)))
                         (let ((_hd2569225713_ (##car _e2569125709_))
                               (_tl2569325716_ (##cdr _e2569125709_)))
                           (if (gx#stx-pair? _tl2569325716_)
                               (let ((_e2569425719_
                                      (gx#syntax-e _tl2569325716_)))
                                 (let ((_hd2569525723_ (##car _e2569425719_))
                                       (_tl2569625726_ (##cdr _e2569425719_)))
                                   ((lambda (_L25729_ _L25731_)
                                      (cons (gx#datum->syntax
                                             '#f
                                             'defsyntax-for-match)
                                            (cons _L25731_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'syntax-rules)
                                                              _L25729_)
                                                        '()))))
                                    _tl2569625726_
                                    _hd2569525723_)))
                               (_g2568725702_ _g2568825706_))))
                       (_g2568725702_ _g2568825706_)))))
            (_g2568625745_ _$stx25683_)))))))
