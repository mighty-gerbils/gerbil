(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<match>[1]#_g29771_| (gx#core-quote-syntax 'apply))
  (define |gerbil/core::<match>[1]#_g29772_|
    (gx#core-quote-syntax 'quasiquote))
  (define |gerbil/core::<match>[1]#_g29773_| (gx#core-quote-syntax 'quote))
  (define |gerbil/core::<match>[1]#_g29776_| (gx#core-quote-syntax 'vector))
  (define |gerbil/core::<match>[1]#_g29777_| (gx#core-quote-syntax 'values))
  (define |gerbil/core::<match>[1]#_g29778_| (gx#core-quote-syntax 'values))
  (define |gerbil/core::<match>[1]#_g29779_| (gx#core-quote-syntax 'box))
  (define |gerbil/core::<match>[1]#_g29780_| (gx#core-quote-syntax '@list))
  (define |gerbil/core::<match>[1]#_g29781_| (gx#core-quote-syntax 'cons*))
  (define |gerbil/core::<match>[1]#_g29782_| (gx#core-quote-syntax 'cons))
  (define |gerbil/core::<match>[1]#_g29783_| (gx#core-quote-syntax 'not))
  (define |gerbil/core::<match>[1]#_g29784_| (gx#core-quote-syntax 'or))
  (define |gerbil/core::<match>[1]#_g29785_| (gx#core-quote-syntax 'and))
  (define |gerbil/core::<match>[1]#_g29786_| (gx#core-quote-syntax '?))
  (define |gerbil/core::<match>[1]#_g29787_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g29788_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g29801_| (gx#core-quote-syntax 'else))
  (define |gerbil/core::<match>[1]#_g29802_| (gx#core-quote-syntax 'else))
  (define |gerbil/core::<match>[1]#_g29803_| (gx#core-quote-syntax '<...>))
  (define |gerbil/core::<match>[1]#_g29804_| (gx#core-quote-syntax '<>))
  (define |gerbil/core::<match>[1]#_g29821_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g29822_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g29823_| (gx#core-quote-syntax 'not))
  (define |gerbil/core::<match>[1]#_g29824_| (gx#core-quote-syntax 'or))
  (define |gerbil/core::<match>[1]#_g29827_| (gx#core-quote-syntax 'and))
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
      (lambda _$args23880_
        (apply make-class-instance
               |gerbil/core::<match>[1]#match-macro::t|
               _$args23880_)))
    (define |gerbil/core::<match>[1]#syntax-local-match-macro?|
      (lambda (_stx23877_)
        (if (gx#identifier? _stx23877_)
            (|gerbil/core::<match>[1]#match-macro?|
             (gx#syntax-local-value _stx23877_ false))
            '#f)))
    (define |gerbil/core::<match>[1]#parse-match-pattern|
      (let ((_opt-lambda2219323863_
             (lambda (_stx22195_ _match-stx22197_)
               (let ((_parse-qq22205_
                      (lambda (_hd22211_)
                        (let ((_g2221322220_
                               (lambda (_g2221422216_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2221422216_))))
                          (_g2221322220_ _hd22211_)))))
                 (let ((_parse-error22206_
                        (lambda (_hd22208_)
                          (apply gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; illegal pattern"
                                 (if _match-stx22197_
                                     (cons _match-stx22197_
                                           (cons _stx22195_
                                                 (cons _hd22208_ '())))
                                     (cons _stx22195_
                                           (cons _hd22208_ '())))))))
                   (letrec ((_parse122199_
                             (lambda (_hd22546_)
                               (let ((_g2257222714_
                                      (lambda (_g2257322710_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g2257322710_))))
                                 (let ((_g2257122725_
                                        (lambda (_g2257322718_)
                                          ((lambda ()
                                             (_parse-error22206_
                                              _hd22546_))))))
                                   (let ((_g2257022743_
                                          (lambda (_g2257322729_)
                                            ((lambda (_L22732_)
                                               (if (gx#stx-datum? _L22732_)
                                                   (cons 'datum:
                                                         (cons (gx#stx-e
                                                                _L22732_)
                                                               '()))
                                                   (_g2257122725_
                                                    _g2257322729_)))
                                             _g2257322729_))))
                                     (let ((_g2256922759_
                                            (lambda (_g2257322747_)
                                              ((lambda (_L22750_)
                                                 (if (if (gx#identifier?
                                                          _L22750_)
                                                         (not (gx#ellipsis?
                                                               _L22750_))
                                                         '#f)
                                                     (cons 'var:
                                                           (cons _L22750_ '()))
                                                     (_g2257022743_
                                                      _g2257322747_)))
                                               _g2257322747_))))
                                       (let ((_g2256822775_
                                              (lambda (_g2257322763_)
                                                ((lambda (_L22766_)
                                                   (if (gx#underscore?
                                                        _L22766_)
                                                       (cons 'any: '())
                                                       (_g2256922759_
                                                        _g2257322763_)))
                                                 _g2257322763_))))
                                         (let ((_g2256722807_
                                                (lambda (_g2257322779_)
                                                  (if (gx#stx-pair?
                                                       _g2257322779_)
                                                      (let ((_e2270322782_
                                                             (gx#syntax-e
                                                              _g2257322779_)))
                                                        (let ((_hd2270422786_
                                                               (##car _e2270322782_))
                                                              (_tl2270522789_
                                                               (##cdr _e2270322782_)))
                                                          ((lambda (_L22792_)
                                                             (if (|gerbil/core::<match>[1]#syntax-local-match-macro?|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L22792_)
                         (_parse122199_
                          (gx#core-apply-expander
                           (gx#syntax-local-e _L22792_)
                           (gx#stx-wrap-source
                            (cons 'match: _hd22546_)
                            (let ((_$e22803_ (gx#stx-source _hd22546_)))
                              (if _$e22803_
                                  _$e22803_
                                  (gx#stx-source _stx22195_))))))
                         (_g2256822775_ _g2257322779_)))
                   _hd2270422786_)))
              (_g2256822775_ _g2257322779_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_g2256622861_
                                                  (lambda (_g2257322811_)
                                                    (if (gx#stx-pair?
                                                         _g2257322811_)
                                                        (let ((_e2269322814_
                                                               (gx#syntax-e
                                                                _g2257322811_)))
                                                          (let ((_hd2269422818_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2269322814_))
                        (_tl2269522821_ (##cdr _e2269322814_)))
                    (if (gx#identifier? _hd2269422818_)
                        (if (gx#free-identifier=?
                             |gerbil/core::<match>[1]#_g29771_|
                             _hd2269422818_)
                            (if (gx#stx-pair? _tl2269522821_)
                                (let ((_e2269622824_
                                       (gx#syntax-e _tl2269522821_)))
                                  (let ((_hd2269722828_ (##car _e2269622824_))
                                        (_tl2269822831_ (##cdr _e2269622824_)))
                                    (if (gx#stx-pair? _tl2269822831_)
                                        (let ((_e2269922834_
                                               (gx#syntax-e _tl2269822831_)))
                                          (let ((_hd2270022838_
                                                 (##car _e2269922834_))
                                                (_tl2270122841_
                                                 (##cdr _e2269922834_)))
                                            (if (gx#stx-null? _tl2270122841_)
                                                ((lambda (_L22844_ _L22846_)
                                                   (cons 'apply:
                                                         (cons _L22846_
                                                               (cons (_parse122199_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L22844_)
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd2270022838_
                                                 _hd2269722828_)
                                                (_g2256722807_
                                                 _g2257322811_))))
                                        (_g2256722807_ _g2257322811_))))
                                (_g2256722807_ _g2257322811_))
                            (_g2256722807_ _g2257322811_))
                        (_g2256722807_ _g2257322811_))))
                (_g2256722807_ _g2257322811_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_g2256522901_
                                                    (lambda (_g2257322865_)
                                                      (if (gx#stx-pair?
                                                           _g2257322865_)
                                                          (let ((_e2268522868_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _g2257322865_)))
                    (let ((_hd2268622872_ (##car _e2268522868_))
                          (_tl2268722875_ (##cdr _e2268522868_)))
                      (if (gx#identifier? _hd2268622872_)
                          (if (gx#free-identifier=?
                               |gerbil/core::<match>[1]#_g29772_|
                               _hd2268622872_)
                              (if (gx#stx-pair? _tl2268722875_)
                                  (let ((_e2268822878_
                                         (gx#syntax-e _tl2268722875_)))
                                    (let ((_hd2268922882_
                                           (##car _e2268822878_))
                                          (_tl2269022885_
                                           (##cdr _e2268822878_)))
                                      (if (gx#stx-null? _tl2269022885_)
                                          ((lambda (_L22888_)
                                             (_parse-qq22205_ _L22888_))
                                           _hd2268922882_)
                                          (_g2256622861_ _g2257322865_))))
                                  (_g2256622861_ _g2257322865_))
                              (_g2256622861_ _g2257322865_))
                          (_g2256622861_ _g2257322865_))))
                  (_g2256622861_ _g2257322865_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_g2256422941_
                                                      (lambda (_g2257322905_)
                                                        (if (gx#stx-pair?
                                                             _g2257322905_)
                                                            (let ((_e2267822908_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g2257322905_)))
                      (let ((_hd2267922912_ (##car _e2267822908_))
                            (_tl2268022915_ (##cdr _e2267822908_)))
                        (if (gx#identifier? _hd2267922912_)
                            (if (gx#free-identifier=?
                                 |gerbil/core::<match>[1]#_g29773_|
                                 _hd2267922912_)
                                (if (gx#stx-pair? _tl2268022915_)
                                    (let ((_e2268122918_
                                           (gx#syntax-e _tl2268022915_)))
                                      (let ((_hd2268222922_
                                             (##car _e2268122918_))
                                            (_tl2268322925_
                                             (##cdr _e2268122918_)))
                                        (if (gx#stx-null? _tl2268322925_)
                                            ((lambda (_L22928_)
                                               (cons 'datum:
                                                     (cons (gx#stx-e _L22928_)
                                                           '())))
                                             _hd2268222922_)
                                            (_g2256522901_ _g2257322905_))))
                                    (_g2256522901_ _g2257322905_))
                                (_g2256522901_ _g2257322905_))
                            (_g2256522901_ _g2257322905_))))
                    (_g2256522901_ _g2257322905_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_g2256322991_
                                                        (lambda (_g2257322945_)
                                                          (if (gx#stx-pair?
                                                               _g2257322945_)
                                                              (let ((_e2267122948_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _g2257322945_)))
                        (let ((_hd2267222952_ (##car _e2267122948_))
                              (_tl2267322955_ (##cdr _e2267122948_)))
                          (if (gx#stx-pair? _tl2267322955_)
                              (let ((_e2267422958_
                                     (gx#syntax-e _tl2267322955_)))
                                (let ((_hd2267522962_ (##car _e2267422958_))
                                      (_tl2267622965_ (##cdr _e2267422958_)))
                                  (if (gx#stx-null? _tl2267622965_)
                                      ((lambda (_L22968_ _L22970_)
                                         (if (if (gx#identifier? _L22970_)
                                                 (let ((_$e22983_
                                                        (gx#free-identifier=?
                                                         _L22970_
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))))
                                                   (if _$e22983_
                                                       _$e22983_
                                                       (let ((_$e22987_
                                                              (gx#free-identifier=?
                                                               _L22970_
                                                               (gx#datum->syntax
                                                                '#f
                                                                'eqv?))))
                                                         (if _$e22987_
                                                             _$e22987_
                                                             (gx#free-identifier=?
                                                              _L22970_
                                                              (gx#datum->syntax
                                                               '#f
                                                               'equal?))))))
                                                 '#f)
                                             (cons '?:
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'cut)
                                                               (cons _L22970_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f '<>)
                                   (cons _L22968_ '()))))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2256422941_ _g2257322945_)))
                                       _hd2267522962_
                                       _hd2267222952_)
                                      (_g2256422941_ _g2257322945_))))
                              (_g2256422941_ _g2257322945_))))
                      (_g2256422941_ _g2257322945_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_g2256223021_
                                                          (lambda (_g2257322995_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2257322995_)
                        (let ((_e2266622998_ (gx#syntax-e _g2257322995_)))
                          (let ((_hd2266723002_ (##car _e2266622998_))
                                (_tl2266823005_ (##cdr _e2266622998_)))
                            ((lambda (_L23008_ _L23010_)
                               (if (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-class-info?|
                                    _L23010_)
                                   (cons 'class:
                                         (cons (gx#syntax-local-value _L23010_)
                                               (cons (_parse-class-body22204_
                                                      _L23008_)
                                                     '())))
                                   (_g2256322991_ _g2257322995_)))
                             _tl2266823005_
                             _hd2266723002_)))
                        (_g2256322991_ _g2257322995_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_g2256123051_
                                                            (lambda (_g2257323025_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2257323025_)
                          (let ((_e2266123028_ (gx#syntax-e _g2257323025_)))
                            (let ((_hd2266223032_ (##car _e2266123028_))
                                  (_tl2266323035_ (##cdr _e2266123028_)))
                              ((lambda (_L23038_ _L23040_)
                                 (if (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-struct-info?|
                                      _L23040_)
                                     (cons 'struct:
                                           (cons (gx#syntax-local-value
                                                  _L23040_)
                                                 (cons (_parse-vector22202_
                                                        _L23038_)
                                                       '())))
                                     (_g2256223021_ _g2257323025_)))
                               _tl2266323035_
                               _hd2266223032_)))
                          (_g2256223021_ _g2257323025_)))))
               (let ((_g2256023114_
                      (lambda (_g2257323055_)
                        (if (gx#stx-vector? _g2257323055_)
                            (let ((_e2264923058_
                                   (vector->list (gx#syntax-e _g2257323055_))))
                              (if (gx#stx-pair/null? _e2264923058_)
                                  (if (fx>= (gx#stx-length _e2264923058_) '0)
                                      (let ((_g29774_
                                             (gx#syntax-split-splice
                                              _e2264923058_
                                              '0)))
                                        (begin
                                          (let ((_g29775_
                                                 (values-count _g29774_)))
                                            (if (not (fx= _g29775_ 2))
                                                (error "Context expects 2 values"
                                                       _g29775_)))
                                          (let ((_target2265023062_
                                                 (values-ref _g29774_ 0))
                                                (_tl2265223065_
                                                 (values-ref _g29774_ 1)))
                                            (if (gx#stx-null? _tl2265223065_)
                                                (letrec ((_loop2265323068_
                                                          (lambda (_hd2265123072_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body2265723075_)
                    (if (gx#stx-pair? _hd2265123072_)
                        (let ((_e2265423078_ (gx#syntax-e _hd2265123072_)))
                          (let ((_lp-hd2265523082_ (##car _e2265423078_))
                                (_lp-tl2265623085_ (##cdr _e2265423078_)))
                            (_loop2265323068_
                             _lp-tl2265623085_
                             (cons _lp-hd2265523082_ _body2265723075_))))
                        (let ((_body2265823088_ (reverse _body2265723075_)))
                          ((lambda (_L23092_)
                             (cons 'vector:
                                   (cons (_parse-vector22202_
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2310523108_
                                                            _g2310623111_)
                                                     (cons _g2310523108_
                                                           _g2310623111_))
                                                   '()
                                                   _L23092_)))
                                         '())))
                           _body2265823088_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2265323068_
                                                   _target2265023062_
                                                   '()))
                                                (_g2256123051_
                                                 _g2257323055_)))))
                                      (_g2256123051_ _g2257323055_))
                                  (_g2256123051_ _g2257323055_)))
                            (_g2256123051_ _g2257323055_)))))
                 (let ((_g2255923142_
                        (lambda (_g2257323118_)
                          (if (gx#stx-pair? _g2257323118_)
                              (let ((_e2264523121_
                                     (gx#syntax-e _g2257323118_)))
                                (let ((_hd2264623125_ (##car _e2264523121_))
                                      (_tl2264723128_ (##cdr _e2264523121_)))
                                  (if (gx#identifier? _hd2264623125_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core::<match>[1]#_g29776_|
                                           _hd2264623125_)
                                          ((lambda (_L23131_)
                                             (cons 'vector:
                                                   (cons (_parse-vector22202_
                                                          _L23131_)
                                                         '())))
                                           _tl2264723128_)
                                          (_g2256023114_ _g2257323118_))
                                      (_g2256023114_ _g2257323118_))))
                              (_g2256023114_ _g2257323118_)))))
                   (let ((_g2255823170_
                          (lambda (_g2257323146_)
                            (if (gx#stx-pair? _g2257323146_)
                                (let ((_e2264123149_
                                       (gx#syntax-e _g2257323146_)))
                                  (let ((_hd2264223153_ (##car _e2264123149_))
                                        (_tl2264323156_ (##cdr _e2264123149_)))
                                    (if (gx#identifier? _hd2264223153_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core::<match>[1]#_g29777_|
                                             _hd2264223153_)
                                            ((lambda (_L23159_)
                                               (cons 'values:
                                                     (cons (_parse-vector22202_
                                                            _L23159_)
                                                           '())))
                                             _tl2264323156_)
                                            (_g2255923142_ _g2257323146_))
                                        (_g2255923142_ _g2257323146_))))
                                (_g2255923142_ _g2257323146_)))))
                     (let ((_g2255723210_
                            (lambda (_g2257323174_)
                              (if (gx#stx-pair? _g2257323174_)
                                  (let ((_e2263423177_
                                         (gx#syntax-e _g2257323174_)))
                                    (let ((_hd2263523181_
                                           (##car _e2263423177_))
                                          (_tl2263623184_
                                           (##cdr _e2263423177_)))
                                      (if (gx#identifier? _hd2263523181_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core::<match>[1]#_g29778_|
                                               _hd2263523181_)
                                              (if (gx#stx-pair? _tl2263623184_)
                                                  (let ((_e2263723187_
                                                         (gx#syntax-e
                                                          _tl2263623184_)))
                                                    (let ((_hd2263823191_
                                                           (##car _e2263723187_))
                                                          (_tl2263923194_
                                                           (##cdr _e2263723187_)))
                                                      (if (gx#stx-null?
                                                           _tl2263923194_)
                                                          ((lambda (_L23197_)
                                                             (_parse122199_
                                                              _L23197_))
                                                           _hd2263823191_)
                                                          (_g2255823170_
                                                           _g2257323174_))))
                                                  (_g2255823170_
                                                   _g2257323174_))
                                              (_g2255823170_ _g2257323174_))
                                          (_g2255823170_ _g2257323174_))))
                                  (_g2255823170_ _g2257323174_)))))
                       (let ((_g2255623231_
                              (lambda (_g2257323214_)
                                (if (gx#stx-box? _g2257323214_)
                                    (let ((_e2263223217_
                                           (unbox (gx#syntax-e
                                                   _g2257323214_))))
                                      ((lambda (_L23221_)
                                         (cons 'box:
                                               (cons (_parse122199_ _L23221_)
                                                     '())))
                                       _e2263223217_))
                                    (_g2255723210_ _g2257323214_)))))
                         (let ((_g2255523271_
                                (lambda (_g2257323235_)
                                  (if (gx#stx-pair? _g2257323235_)
                                      (let ((_e2262523238_
                                             (gx#syntax-e _g2257323235_)))
                                        (let ((_hd2262623242_
                                               (##car _e2262523238_))
                                              (_tl2262723245_
                                               (##cdr _e2262523238_)))
                                          (if (gx#identifier? _hd2262623242_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core::<match>[1]#_g29779_|
                                                   _hd2262623242_)
                                                  (if (gx#stx-pair?
                                                       _tl2262723245_)
                                                      (let ((_e2262823248_
                                                             (gx#syntax-e
                                                              _tl2262723245_)))
                                                        (let ((_hd2262923252_
                                                               (##car _e2262823248_))
                                                              (_tl2263023255_
                                                               (##cdr _e2262823248_)))
                                                          (if (gx#stx-null?
                                                               _tl2263023255_)
                                                              ((lambda (_L23258_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons 'box: (cons (_parse122199_ _L23258_) '())))
                       _hd2262923252_)
                      (_g2255623231_ _g2257323235_))))
              (_g2255623231_ _g2257323235_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2255623231_
                                                   _g2257323235_))
                                              (_g2255623231_ _g2257323235_))))
                                      (_g2255623231_ _g2257323235_)))))
                           (let ((_g2255423299_
                                  (lambda (_g2257323275_)
                                    (if (gx#stx-pair? _g2257323275_)
                                        (let ((_e2262123278_
                                               (gx#syntax-e _g2257323275_)))
                                          (let ((_hd2262223282_
                                                 (##car _e2262123278_))
                                                (_tl2262323285_
                                                 (##cdr _e2262123278_)))
                                            (if (gx#identifier? _hd2262223282_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core::<match>[1]#_g29780_|
                                                     _hd2262223282_)
                                                    ((lambda (_L23288_)
                                                       (_parse-list22201_
                                                        _L23288_))
                                                     _tl2262323285_)
                                                    (_g2255523271_
                                                     _g2257323275_))
                                                (_g2255523271_
                                                 _g2257323275_))))
                                        (_g2255523271_ _g2257323275_)))))
                             (let ((_g2255323355_
                                    (lambda (_g2257323303_)
                                      (if (gx#stx-pair? _g2257323303_)
                                          (let ((_e2261123306_
                                                 (gx#syntax-e _g2257323303_)))
                                            (let ((_hd2261223310_
                                                   (##car _e2261123306_))
                                                  (_tl2261323313_
                                                   (##cdr _e2261123306_)))
                                              (if (gx#identifier?
                                                   _hd2261223310_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core::<match>[1]#_g29781_|
                                                       _hd2261223310_)
                                                      (if (gx#stx-pair?
                                                           _tl2261323313_)
                                                          (let ((_e2261423316_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2261323313_)))
                    (let ((_hd2261523320_ (##car _e2261423316_))
                          (_tl2261623323_ (##cdr _e2261423316_)))
                      (if (gx#stx-pair? _tl2261623323_)
                          (let ((_e2261723326_ (gx#syntax-e _tl2261623323_)))
                            (let ((_hd2261823330_ (##car _e2261723326_))
                                  (_tl2261923333_ (##cdr _e2261723326_)))
                              ((lambda (_L23336_ _L23338_ _L23339_)
                                 (if (gx#stx-null? _L23336_)
                                     (cons 'cons:
                                           (cons (_parse122199_ _L23339_)
                                                 (cons (_parse122199_ _L23338_)
                                                       '())))
                                     (cons 'cons:
                                           (cons (_parse122199_ _L23339_)
                                                 (cons (_parse122199_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'cons*)
                                                              (cons _L23338_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L23336_)))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _tl2261923333_
                               _hd2261823330_
                               _hd2261523320_)))
                          (_g2255423299_ _g2257323303_))))
                  (_g2255423299_ _g2257323303_))
              (_g2255423299_ _g2257323303_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2255423299_
                                                   _g2257323303_))))
                                          (_g2255423299_ _g2257323303_)))))
                               (let ((_g2255223409_
                                      (lambda (_g2257323359_)
                                        (if (gx#stx-pair? _g2257323359_)
                                            (let ((_e2259923362_
                                                   (gx#syntax-e
                                                    _g2257323359_)))
                                              (let ((_hd2260023366_
                                                     (##car _e2259923362_))
                                                    (_tl2260123369_
                                                     (##cdr _e2259923362_)))
                                                (if (gx#identifier?
                                                     _hd2260023366_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core::<match>[1]#_g29782_|
                                                         _hd2260023366_)
                                                        (if (gx#stx-pair?
                                                             _tl2260123369_)
                                                            (let ((_e2260223372_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl2260123369_)))
                      (let ((_hd2260323376_ (##car _e2260223372_))
                            (_tl2260423379_ (##cdr _e2260223372_)))
                        (if (gx#stx-pair? _tl2260423379_)
                            (let ((_e2260523382_ (gx#syntax-e _tl2260423379_)))
                              (let ((_hd2260623386_ (##car _e2260523382_))
                                    (_tl2260723389_ (##cdr _e2260523382_)))
                                (if (gx#stx-null? _tl2260723389_)
                                    ((lambda (_L23392_ _L23394_)
                                       (cons 'cons:
                                             (cons (_parse122199_ _L23394_)
                                                   (cons (_parse122199_
                                                          _L23392_)
                                                         '()))))
                                     _hd2260623386_
                                     _hd2260323376_)
                                    (_g2255323355_ _g2257323359_))))
                            (_g2255323355_ _g2257323359_))))
                    (_g2255323355_ _g2257323359_))
                (_g2255323355_ _g2257323359_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2255323355_
                                                     _g2257323359_))))
                                            (_g2255323355_ _g2257323359_)))))
                                 (let ((_g2255123449_
                                        (lambda (_g2257323413_)
                                          (if (gx#stx-pair? _g2257323413_)
                                              (let ((_e2259123416_
                                                     (gx#syntax-e
                                                      _g2257323413_)))
                                                (let ((_hd2259223420_
                                                       (##car _e2259123416_))
                                                      (_tl2259323423_
                                                       (##cdr _e2259123416_)))
                                                  (if (gx#identifier?
                                                       _hd2259223420_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core::<match>[1]#_g29783_|
                                                           _hd2259223420_)
                                                          (if (gx#stx-pair?
                                                               _tl2259323423_)
                                                              (let ((_e2259423426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl2259323423_)))
                        (let ((_hd2259523430_ (##car _e2259423426_))
                              (_tl2259623433_ (##cdr _e2259423426_)))
                          (if (gx#stx-null? _tl2259623433_)
                              ((lambda (_L23436_)
                                 (cons 'not:
                                       (cons (_parse122199_ _L23436_) '())))
                               _hd2259523430_)
                              (_g2255223409_ _g2257323413_))))
                      (_g2255223409_ _g2257323413_))
                  (_g2255223409_ _g2257323413_))
              (_g2255223409_ _g2257323413_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2255223409_ _g2257323413_)))))
                                   (let ((_g2255023534_
                                          (lambda (_g2257323453_)
                                            (if (gx#stx-pair? _g2257323453_)
                                                (let ((_e2258723456_
                                                       (gx#syntax-e
                                                        _g2257323453_)))
                                                  (let ((_hd2258823460_
                                                         (##car _e2258723456_))
                                                        (_tl2258923463_
                                                         (##cdr _e2258723456_)))
                                                    (if (gx#identifier?
                                                         _hd2258823460_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core::<match>[1]#_g29784_|
                                                             _hd2258823460_)
                                                            ((lambda (_L23466_)
                                                               (if (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L23466_)
                           (let ((_g2347823489_
                                  (lambda (_g2347923485_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g2347923485_))))
                             (let ((_g2347723500_
                                    (lambda (_g2347923493_)
                                      ((lambda ()
                                         (cons 'or:
                                               (gx#stx-map
                                                _parse122199_
                                                _L23466_)))))))
                               (let ((_g2347623530_
                                      (lambda (_g2347923504_)
                                        (if (gx#stx-pair? _g2347923504_)
                                            (let ((_e2348123507_
                                                   (gx#syntax-e
                                                    _g2347923504_)))
                                              (let ((_hd2348223511_
                                                     (##car _e2348123507_))
                                                    (_tl2348323514_
                                                     (##cdr _e2348123507_)))
                                                (if (gx#stx-null?
                                                     _tl2348323514_)
                                                    ((lambda (_L23517_)
                                                       (_parse122199_
                                                        _L23517_))
                                                     _hd2348223511_)
                                                    (_g2347723500_
                                                     _g2347923504_))))
                                            (_g2347723500_ _g2347923504_)))))
                                 (_g2347623530_ _L23466_))))
                           (_g2255123449_ _g2257323453_)))
                     _tl2258923463_)
                    (_g2255123449_ _g2257323453_))
                (_g2255123449_ _g2257323453_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2255123449_
                                                 _g2257323453_)))))
                                     (let ((_g2254923619_
                                            (lambda (_g2257323538_)
                                              (if (gx#stx-pair? _g2257323538_)
                                                  (let ((_e2258323541_
                                                         (gx#syntax-e
                                                          _g2257323538_)))
                                                    (let ((_hd2258423545_
                                                           (##car _e2258323541_))
                                                          (_tl2258523548_
                                                           (##cdr _e2258323541_)))
                                                      (if (gx#identifier?
                                                           _hd2258423545_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core::<match>[1]#_g29785_|
                                                               _hd2258423545_)
                                                              ((lambda (_L23551_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#stx-list? _L23551_)
                             (let ((_g2356323574_
                                    (lambda (_g2356423570_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g2356423570_))))
                               (let ((_g2356223585_
                                      (lambda (_g2356423578_)
                                        ((lambda ()
                                           (cons 'and:
                                                 (gx#stx-map
                                                  _parse122199_
                                                  _L23551_)))))))
                                 (let ((_g2356123615_
                                        (lambda (_g2356423589_)
                                          (if (gx#stx-pair? _g2356423589_)
                                              (let ((_e2356623592_
                                                     (gx#syntax-e
                                                      _g2356423589_)))
                                                (let ((_hd2356723596_
                                                       (##car _e2356623592_))
                                                      (_tl2356823599_
                                                       (##cdr _e2356623592_)))
                                                  (if (gx#stx-null?
                                                       _tl2356823599_)
                                                      ((lambda (_L23602_)
                                                         (_parse122199_
                                                          _L23602_))
                                                       _hd2356723596_)
                                                      (_g2356223585_
                                                       _g2356423589_))))
                                              (_g2356223585_ _g2356423589_)))))
                                   (_g2356123615_ _L23551_))))
                             (_g2255023534_ _g2257323538_)))
                       _tl2258523548_)
                      (_g2255023534_ _g2257323538_))
                  (_g2255023534_ _g2257323538_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2255023534_
                                                   _g2257323538_)))))
                                       (let ((_g2254823859_
                                              (lambda (_g2257323623_)
                                                (if (gx#stx-pair?
                                                     _g2257323623_)
                                                    (let ((_e2257623626_
                                                           (gx#syntax-e
                                                            _g2257323623_)))
                                                      (let ((_hd2257723630_
                                                             (##car _e2257623626_))
                                                            (_tl2257823633_
                                                             (##cdr _e2257623626_)))
                                                        (if (gx#identifier?
                                                             _hd2257723630_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core::<match>[1]#_g29786_|
                         _hd2257723630_)
                        (if (gx#stx-pair? _tl2257823633_)
                            (let ((_e2257923636_ (gx#syntax-e _tl2257823633_)))
                              (let ((_hd2258023640_ (##car _e2257923636_))
                                    (_tl2258123643_ (##cdr _e2257923636_)))
                                ((lambda (_L23646_ _L23648_)
                                   (let ((_g2366523697_
                                          (lambda (_g2366623693_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g2366623693_))))
                                     (let ((_g2366423708_
                                            (lambda (_g2366623701_)
                                              ((lambda ()
                                                 (_parse-error22206_
                                                  _hd22546_))))))
                                       (let ((_g2366323776_
                                              (lambda (_g2366623712_)
                                                (if (gx#stx-pair?
                                                     _g2366623712_)
                                                    (let ((_e2368023715_
                                                           (gx#syntax-e
                                                            _g2366623712_)))
                                                      (let ((_hd2368123719_
                                                             (##car _e2368023715_))
                                                            (_tl2368223722_
                                                             (##cdr _e2368023715_)))
                                                        (if (gx#stx-datum?
                                                             _hd2368123719_)
                                                            (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _hd2368123719_)
                                '::)
                        (if (gx#stx-pair? _tl2368223722_)
                            (let ((_e2368323725_ (gx#syntax-e _tl2368223722_)))
                              (let ((_hd2368423729_ (##car _e2368323725_))
                                    (_tl2368523732_ (##cdr _e2368323725_)))
                                (if (gx#stx-pair? _tl2368523732_)
                                    (let ((_e2368623735_
                                           (gx#syntax-e _tl2368523732_)))
                                      (let ((_hd2368723739_
                                             (##car _e2368623735_))
                                            (_tl2368823742_
                                             (##cdr _e2368623735_)))
                                        (if (gx#identifier? _hd2368723739_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<match>[1]#_g29787_|
                                                 _hd2368723739_)
                                                (if (gx#stx-pair?
                                                     _tl2368823742_)
                                                    (let ((_e2368923745_
                                                           (gx#syntax-e
                                                            _tl2368823742_)))
                                                      (let ((_hd2369023749_
                                                             (##car _e2368923745_))
                                                            (_tl2369123752_
                                                             (##cdr _e2368923745_)))
                                                        (if (gx#stx-null?
                                                             _tl2369123752_)
                                                            ((lambda (_L23755_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L23757_)
                       (cons '?:
                             (cons _L23648_
                                   (cons '::
                                         (cons _L23757_
                                               (cons '=>:
                                                     (cons (_parse122199_
                                                            _L23755_)
                                                           '())))))))
                     _hd2369023749_
                     _hd2368423729_)
                    (_g2366423708_ _g2366623712_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2366423708_
                                                     _g2366623712_))
                                                (_g2366423708_ _g2366623712_))
                                            (_g2366423708_ _g2366623712_))))
                                    (_g2366423708_ _g2366623712_))))
                            (_g2366423708_ _g2366623712_))
                        (_g2366423708_ _g2366623712_))
                    (_g2366423708_ _g2366623712_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2366423708_
                                                     _g2366623712_)))))
                                         (let ((_g2366223816_
                                                (lambda (_g2366623780_)
                                                  (if (gx#stx-pair?
                                                       _g2366623780_)
                                                      (let ((_e2367223783_
                                                             (gx#syntax-e
                                                              _g2366623780_)))
                                                        (let ((_hd2367323787_
                                                               (##car _e2367223783_))
                                                              (_tl2367423790_
                                                               (##cdr _e2367223783_)))
                                                          (if (gx#identifier?
                                                               _hd2367323787_)
                                                              (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           |gerbil/core::<match>[1]#_g29788_|
                           _hd2367323787_)
                          (if (gx#stx-pair? _tl2367423790_)
                              (let ((_e2367523793_
                                     (gx#syntax-e _tl2367423790_)))
                                (let ((_hd2367623797_ (##car _e2367523793_))
                                      (_tl2367723800_ (##cdr _e2367523793_)))
                                  (if (gx#stx-null? _tl2367723800_)
                                      ((lambda (_L23803_)
                                         (cons '?:
                                               (cons _L23648_
                                                     (cons '=>:
                                                           (cons (_parse122199_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L23803_)
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd2367623797_)
                                      (_g2366323776_ _g2366623780_))))
                              (_g2366323776_ _g2366623780_))
                          (_g2366323776_ _g2366623780_))
                      (_g2366323776_ _g2366623780_))))
              (_g2366323776_ _g2366623780_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_g2366123844_
                                                  (lambda (_g2366623820_)
                                                    (if (gx#stx-pair?
                                                         _g2366623820_)
                                                        (let ((_e2366823823_
                                                               (gx#syntax-e
                                                                _g2366623820_)))
                                                          (let ((_hd2366923827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2366823823_))
                        (_tl2367023830_ (##cdr _e2366823823_)))
                    (if (gx#stx-null? _tl2367023830_)
                        ((lambda (_L23833_)
                           (cons '?:
                                 (cons _L23648_
                                       (cons (_parse122199_ _L23833_) '()))))
                         _hd2366923827_)
                        (_g2366223816_ _g2366623820_))))
                (_g2366223816_ _g2366623820_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_g2366023855_
                                                    (lambda (_g2366623848_)
                                                      (if (gx#stx-null?
                                                           _g2366623848_)
                                                          ((lambda ()
                                                             (cons '?:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L23648_ '()))))
                  (_g2366123844_ _g2366623848_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2366023855_ _L23646_))))))))
                                 _tl2258123643_
                                 _hd2258023640_)))
                            (_g2254923619_ _g2257323623_))
                        (_g2254923619_ _g2257323623_))
                    (_g2254923619_ _g2257323623_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2254923619_
                                                     _g2257323623_)))))
                                         (_g2254823859_
                                          _hd22546_))))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (_parse-list22201_
                             (lambda (_body22381_)
                               (let ((_g2238722415_
                                      (lambda (_g2238822411_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g2238822411_))))
                                 (let ((_g2238622426_
                                        (lambda (_g2238822419_)
                                          ((lambda ()
                                             (if (gx#stx-null? _body22381_)
                                                 (cons 'null: '())
                                                 (if (not (gx#stx-pair?
                                                           _body22381_))
                                                     (_parse122199_
                                                      _body22381_)
                                                     (_parse-error22206_
                                                      _body22381_))))))))
                                   (let ((_g2238522458_
                                          (lambda (_g2238822430_)
                                            (if (gx#stx-pair? _g2238822430_)
                                                (let ((_e2240722433_
                                                       (gx#syntax-e
                                                        _g2238822430_)))
                                                  (let ((_hd2240822437_
                                                         (##car _e2240722433_))
                                                        (_tl2240922440_
                                                         (##cdr _e2240722433_)))
                                                    ((lambda (_L22443_
                                                              _L22445_)
                                                       (if (not (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L22445_))
                   (cons 'cons:
                         (cons (_parse122199_ _L22445_)
                               (cons (_parse-list22201_ _L22443_) '())))
                   (_g2238622426_ _g2238822430_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _tl2240922440_
                                                     _hd2240822437_)))
                                                (_g2238622426_
                                                 _g2238822430_)))))
                                     (let ((_g2238422502_
                                            (lambda (_g2238822462_)
                                              (if (gx#stx-pair? _g2238822462_)
                                                  (let ((_e2239922465_
                                                         (gx#syntax-e
                                                          _g2238822462_)))
                                                    (let ((_hd2240022469_
                                                           (##car _e2239922465_))
                                                          (_tl2240122472_
                                                           (##cdr _e2239922465_)))
                                                      (if (gx#stx-pair?
                                                           _tl2240122472_)
                                                          (let ((_e2240222475_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2240122472_)))
                    (let ((_hd2240322479_ (##car _e2240222475_))
                          (_tl2240422482_ (##cdr _e2240222475_)))
                      ((lambda (_L22485_ _L22487_ _L22488_)
                         (if (gx#ellipsis? _L22487_)
                             (cons 'splice:
                                   (cons (_parse122199_ _L22488_)
                                         (cons (_parse-list22201_ _L22485_)
                                               '())))
                             (_g2238522458_ _g2238822462_)))
                       _tl2240422482_
                       _hd2240322479_
                       _hd2240022469_)))
                  (_g2238522458_ _g2238822462_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2238522458_
                                                   _g2238822462_)))))
                                       (let ((_g2238322542_
                                              (lambda (_g2238822506_)
                                                (if (gx#stx-pair?
                                                     _g2238822506_)
                                                    (let ((_e2239022509_
                                                           (gx#syntax-e
                                                            _g2238822506_)))
                                                      (let ((_hd2239122513_
                                                             (##car _e2239022509_))
                                                            (_tl2239222516_
                                                             (##cdr _e2239022509_)))
                                                        (if (gx#stx-datum?
                                                             _hd2239122513_)
                                                            (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _hd2239122513_)
                                '::)
                        (if (gx#stx-pair? _tl2239222516_)
                            (let ((_e2239322519_ (gx#syntax-e _tl2239222516_)))
                              (let ((_hd2239422523_ (##car _e2239322519_))
                                    (_tl2239522526_ (##cdr _e2239322519_)))
                                (if (gx#stx-null? _tl2239522526_)
                                    ((lambda (_L22529_)
                                       (_parse122199_ _L22529_))
                                     _hd2239422523_)
                                    (_g2238422502_ _g2238822506_))))
                            (_g2238422502_ _g2238822506_))
                        (_g2238422502_ _g2238822506_))
                    (_g2238422502_ _g2238822506_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2238422502_
                                                     _g2238822506_)))))
                                         (_g2238322542_ _body22381_))))))))
                            (_parse-vector22202_
                             (lambda (_body22378_)
                               (if (_simple-vector?22203_ _body22378_)
                                   (cons 'simple:
                                         (cons (gx#stx-map
                                                _parse122199_
                                                _body22378_)
                                               '()))
                                   (cons 'list:
                                         (cons (_parse-list22201_ _body22378_)
                                               '())))))
                            (_simple-vector?22203_
                             (lambda (_body22315_)
                               (let ((_g2231922331_
                                      (lambda (_g2232022327_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g2232022327_))))
                                 (let ((_g2231822342_
                                        (lambda (_g2232022335_)
                                          ((lambda ()
                                             (gx#stx-null? _body22315_))))))
                                   (let ((_g2231722374_
                                          (lambda (_g2232022346_)
                                            (if (gx#stx-pair? _g2232022346_)
                                                (let ((_e2232322349_
                                                       (gx#syntax-e
                                                        _g2232022346_)))
                                                  (let ((_hd2232422353_
                                                         (##car _e2232322349_))
                                                        (_tl2232522356_
                                                         (##cdr _e2232322349_)))
                                                    ((lambda (_L22359_
                                                              _L22361_)
                                                       (if (not (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L22361_))
                   (_simple-vector?22203_ _L22359_)
                   '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _tl2232522356_
                                                     _hd2232422353_)))
                                                (_g2231822342_
                                                 _g2232022346_)))))
                                     (_g2231722374_ _body22315_))))))
                            (_parse-class-body22204_
                             (lambda (_body22224_)
                               ((letrec ((_recur22227_
                                          (lambda (_rest22230_)
                                            (let ((_g2223422250_
                                                   (lambda (_g2223522246_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2223522246_))))
                                              (let ((_g2223322261_
                                                     (lambda (_g2223522254_)
                                                       ((lambda ()
                                                          (if (gx#stx-null?
                                                               _rest22230_)
                                                              '()
                                                              (_parse-error22206_
                                                               _rest22230_)))))))
                                                (let ((_g2223222311_
                                                       (lambda (_g2223522265_)
                                                         (if (gx#stx-pair?
                                                              _g2223522265_)
                                                             (let ((_e2223922268_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g2223522265_)))
                       (let ((_hd2224022272_ (##car _e2223922268_))
                             (_tl2224122275_ (##cdr _e2223922268_)))
                         (if (gx#stx-pair? _tl2224122275_)
                             (let ((_e2224222278_
                                    (gx#syntax-e _tl2224122275_)))
                               (let ((_hd2224322282_ (##car _e2224222278_))
                                     (_tl2224422285_ (##cdr _e2224222278_)))
                                 ((lambda (_L22288_ _L22290_ _L22291_)
                                    (if (gx#stx-keyword? _L22291_)
                                        (cons* _L22291_
                                               (_parse122199_ _L22290_)
                                               (_recur22227_ _L22288_))
                                        (_g2223322261_ _g2223522265_)))
                                  _tl2224422285_
                                  _hd2224322282_
                                  _hd2224022272_)))
                             (_g2223322261_ _g2223522265_))))
                     (_g2223322261_ _g2223522265_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2223222311_
                                                   _rest22230_)))))))
                                  _recur22227_)
                                _body22224_))))
                     (_parse122199_ _stx22195_)))))))
        (lambda _g29790_
          (let ((_g29789_ (length _g29790_)))
            (cond ((fx= _g29789_ 1)
                   (apply (lambda (_stx23867_)
                            (let ((_match-stx23870_ '#f))
                              (_opt-lambda2219323863_
                               _stx23867_
                               _match-stx23870_)))
                          _g29790_))
                  ((fx= _g29789_ 2) (apply _opt-lambda2219323863_ _g29790_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    |gerbil/core::<match>[1]#parse-match-pattern|
                    _g29790_)))))))
    (define |gerbil/core::<match>[1]#match-pattern?|
      (lambda (_stx22179_)
        (call-with-escape
         (lambda (_E22183_)
           (with-exception-handler
            (let ((_E!22186_ (current-exception-handler)))
              (lambda (_e22189_)
                (if (gx#syntax-error? _e22189_)
                    (_E22183_ '#f)
                    (_E!22186_ _e22189_))))
            (lambda ()
              (begin
                (|gerbil/core::<match>[1]#parse-match-pattern| _stx22179_)
                '#t)))))))
    (define |gerbil/core::<match>[1]#match-pattern-vars|
      (lambda (_ptree20968_)
        (letrec ((_loop20971_
                  (lambda (_ptree21246_ _vars21248_ _K21249_)
                    (let ((_g2126221363_
                           (lambda (_g2126321359_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2126321359_))))
                      (let ((_g2126121374_
                             (lambda (_g2126321367_)
                               ((lambda () (_K21249_ _vars21248_))))))
                        (let ((_g2126021421_
                               (lambda (_g2126321378_)
                                 (if (gx#stx-pair? _g2126321378_)
                                     (let ((_e2135221381_
                                            (gx#syntax-e _g2126321378_)))
                                       (let ((_hd2135321385_
                                              (##car _e2135221381_))
                                             (_tl2135421388_
                                              (##cdr _e2135221381_)))
                                         (if (gx#stx-datum? _hd2135321385_)
                                             (if (equal? (gx#stx-e
                                                          _hd2135321385_)
                                                         'var:)
                                                 (if (gx#stx-pair?
                                                      _tl2135421388_)
                                                     (let ((_e2135521391_
                                                            (gx#syntax-e
                                                             _tl2135421388_)))
                                                       (let ((_hd2135621395_
                                                              (##car _e2135521391_))
                                                             (_tl2135721398_
                                                              (##cdr _e2135521391_)))
                                                         (if (gx#stx-null?
                                                              _tl2135721398_)
                                                             ((lambda (_L21401_)
                                                                (if (find (lambda (_g2141521417_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (gx#bound-identifier=?
                                     _g2141521417_
                                     _L21401_))
                                  _vars21248_)
                            (_K21249_ _vars21248_)
                            (_K21249_ (cons _L21401_ _vars21248_))))
                      _hd2135621395_)
                     (_g2126121374_ _g2126321378_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2126121374_
                                                      _g2126321378_))
                                                 (_g2126121374_ _g2126321378_))
                                             (_g2126121374_ _g2126321378_))))
                                     (_g2126121374_ _g2126321378_)))))
                          (let ((_g2125921475_
                                 (lambda (_g2126321425_)
                                   (if (gx#stx-pair? _g2126321425_)
                                       (let ((_e2134221428_
                                              (gx#syntax-e _g2126321425_)))
                                         (let ((_hd2134321432_
                                                (##car _e2134221428_))
                                               (_tl2134421435_
                                                (##cdr _e2134221428_)))
                                           (if (gx#stx-datum? _hd2134321432_)
                                               (if (equal? (gx#stx-e
                                                            _hd2134321432_)
                                                           'apply:)
                                                   (if (gx#stx-pair?
                                                        _tl2134421435_)
                                                       (let ((_e2134521438_
                                                              (gx#syntax-e
                                                               _tl2134421435_)))
                                                         (let ((_hd2134621442_
                                                                (##car _e2134521438_))
                                                               (_tl2134721445_
                                                                (##cdr _e2134521438_)))
                                                           (if (gx#stx-pair?
                                                                _tl2134721445_)
                                                               (let ((_e2134821448_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2134721445_)))
                         (let ((_hd2134921452_ (##car _e2134821448_))
                               (_tl2135021455_ (##cdr _e2134821448_)))
                           (if (gx#stx-null? _tl2135021455_)
                               ((lambda (_L21458_ _L21460_)
                                  (_loop20971_ _L21458_ _vars21248_ _K21249_))
                                _hd2134921452_
                                _hd2134621442_)
                               (_g2126021421_ _g2126321425_))))
                       (_g2126021421_ _g2126321425_))))
               (_g2126021421_ _g2126321425_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2126021421_
                                                    _g2126321425_))
                                               (_g2126021421_ _g2126321425_))))
                                       (_g2126021421_ _g2126321425_)))))
                            (let ((_g2125821527_
                                   (lambda (_g2126321479_)
                                     (if (gx#stx-pair? _g2126321479_)
                                         (let ((_e2133121482_
                                                (gx#syntax-e _g2126321479_)))
                                           (let ((_hd2133221486_
                                                  (##car _e2133121482_))
                                                 (_tl2133321489_
                                                  (##cdr _e2133121482_)))
                                             (if (gx#stx-datum? _hd2133221486_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2133221486_)
                                                             'class:)
                                                     (if (gx#stx-pair?
                                                          _tl2133321489_)
                                                         (let ((_e2133421492_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2133321489_)))
                   (let ((_hd2133521496_ (##car _e2133421492_))
                         (_tl2133621499_ (##cdr _e2133421492_)))
                     (if (gx#stx-pair? _tl2133621499_)
                         (let ((_e2133721502_ (gx#syntax-e _tl2133621499_)))
                           (let ((_hd2133821506_ (##car _e2133721502_))
                                 (_tl2133921509_ (##cdr _e2133721502_)))
                             (if (gx#stx-null? _tl2133921509_)
                                 ((lambda (_L21512_)
                                    (_loop-class-list20975_
                                     _L21512_
                                     _vars21248_
                                     _K21249_))
                                  _hd2133821506_)
                                 (_g2125921475_ _g2126321479_))))
                         (_g2125921475_ _g2126321479_))))
                 (_g2125921475_ _g2126321479_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2125921475_
                                                      _g2126321479_))
                                                 (_g2125921475_
                                                  _g2126321479_))))
                                         (_g2125921475_ _g2126321479_)))))
                              (let ((_g2125721579_
                                     (lambda (_g2126321531_)
                                       (if (gx#stx-pair? _g2126321531_)
                                           (let ((_e2132121534_
                                                  (gx#syntax-e _g2126321531_)))
                                             (let ((_hd2132221538_
                                                    (##car _e2132121534_))
                                                   (_tl2132321541_
                                                    (##cdr _e2132121534_)))
                                               (if (gx#stx-datum?
                                                    _hd2132221538_)
                                                   (if (equal? (gx#stx-e
                                                                _hd2132221538_)
                                                               'struct:)
                                                       (if (gx#stx-pair?
                                                            _tl2132321541_)
                                                           (let ((_e2132421544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl2132321541_)))
                     (let ((_hd2132521548_ (##car _e2132421544_))
                           (_tl2132621551_ (##cdr _e2132421544_)))
                       (if (gx#stx-pair? _tl2132621551_)
                           (let ((_e2132721554_ (gx#syntax-e _tl2132621551_)))
                             (let ((_hd2132821558_ (##car _e2132721554_))
                                   (_tl2132921561_ (##cdr _e2132721554_)))
                               (if (gx#stx-null? _tl2132921561_)
                                   ((lambda (_L21564_)
                                      (_loop-vector20973_
                                       _L21564_
                                       _vars21248_
                                       _K21249_))
                                    _hd2132821558_)
                                   (_g2125821527_ _g2126321531_))))
                           (_g2125821527_ _g2126321531_))))
                   (_g2125821527_ _g2126321531_))
               (_g2125821527_ _g2126321531_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2125821527_
                                                    _g2126321531_))))
                                           (_g2125821527_ _g2126321531_)))))
                                (let ((_g2125621625_
                                       (lambda (_g2126321583_)
                                         (if (gx#stx-pair? _g2126321583_)
                                             (let ((_e2131421586_
                                                    (gx#syntax-e
                                                     _g2126321583_)))
                                               (let ((_hd2131521590_
                                                      (##car _e2131421586_))
                                                     (_tl2131621593_
                                                      (##cdr _e2131421586_)))
                                                 (if (gx#stx-pair?
                                                      _tl2131621593_)
                                                     (let ((_e2131721596_
                                                            (gx#syntax-e
                                                             _tl2131621593_)))
                                                       (let ((_hd2131821600_
                                                              (##car _e2131721596_))
                                                             (_tl2131921603_
                                                              (##cdr _e2131721596_)))
                                                         (if (gx#stx-null?
                                                              _tl2131921603_)
                                                             ((lambda (_L21606_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L21608_)
                        (if (let ((_$e21621_ (gx#stx-eq? 'values: _L21608_)))
                              (if _$e21621_
                                  _$e21621_
                                  (gx#stx-eq? 'vector: _L21608_)))
                            (_loop-vector20973_ _L21606_ _vars21248_ _K21249_)
                            (_g2125721579_ _g2126321583_)))
                      _hd2131821600_
                      _hd2131521590_)
                     (_g2125721579_ _g2126321583_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2125721579_
                                                      _g2126321583_))))
                                             (_g2125721579_ _g2126321583_)))))
                                  (let ((_g2125521665_
                                         (lambda (_g2126321629_)
                                           (if (gx#stx-pair? _g2126321629_)
                                               (let ((_e2130621632_
                                                      (gx#syntax-e
                                                       _g2126321629_)))
                                                 (let ((_hd2130721636_
                                                        (##car _e2130621632_))
                                                       (_tl2130821639_
                                                        (##cdr _e2130621632_)))
                                                   (if (gx#stx-datum?
                                                        _hd2130721636_)
                                                       (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd2130721636_)
                           'box:)
                   (if (gx#stx-pair? _tl2130821639_)
                       (let ((_e2130921642_ (gx#syntax-e _tl2130821639_)))
                         (let ((_hd2131021646_ (##car _e2130921642_))
                               (_tl2131121649_ (##cdr _e2130921642_)))
                           (if (gx#stx-null? _tl2131121649_)
                               ((lambda (_L21652_)
                                  (_loop20971_ _L21652_ _vars21248_ _K21249_))
                                _hd2131021646_)
                               (_g2125621625_ _g2126321629_))))
                       (_g2125621625_ _g2126321629_))
                   (_g2125621625_ _g2126321629_))
               (_g2125621625_ _g2126321629_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2125621625_
                                                _g2126321629_)))))
                                    (let ((_g2125421724_
                                           (lambda (_g2126321669_)
                                             (if (gx#stx-pair? _g2126321669_)
                                                 (let ((_e2129621672_
                                                        (gx#syntax-e
                                                         _g2126321669_)))
                                                   (let ((_hd2129721676_
                                                          (##car _e2129621672_))
                                                         (_tl2129821679_
                                                          (##cdr _e2129621672_)))
                                                     (if (gx#stx-datum?
                                                          _hd2129721676_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2129721676_)
                             'splice:)
                     (if (gx#stx-pair? _tl2129821679_)
                         (let ((_e2129921682_ (gx#syntax-e _tl2129821679_)))
                           (let ((_hd2130021686_ (##car _e2129921682_))
                                 (_tl2130121689_ (##cdr _e2129921682_)))
                             (if (gx#stx-pair? _tl2130121689_)
                                 (let ((_e2130221692_
                                        (gx#syntax-e _tl2130121689_)))
                                   (let ((_hd2130321696_ (##car _e2130221692_))
                                         (_tl2130421699_
                                          (##cdr _e2130221692_)))
                                     (if (gx#stx-null? _tl2130421699_)
                                         ((lambda (_L21702_ _L21704_)
                                            (_loop20971_
                                             _L21704_
                                             _vars21248_
                                             (lambda (_g2171821720_)
                                               (_loop20971_
                                                _L21702_
                                                _g2171821720_
                                                _K21249_))))
                                          _hd2130321696_
                                          _hd2130021686_)
                                         (_g2125521665_ _g2126321669_))))
                                 (_g2125521665_ _g2126321669_))))
                         (_g2125521665_ _g2126321669_))
                     (_g2125521665_ _g2126321669_))
                 (_g2125521665_ _g2126321669_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2125521665_
                                                  _g2126321669_)))))
                                      (let ((_g2125321783_
                                             (lambda (_g2126321728_)
                                               (if (gx#stx-pair? _g2126321728_)
                                                   (let ((_e2128521731_
                                                          (gx#syntax-e
                                                           _g2126321728_)))
                                                     (let ((_hd2128621735_
                                                            (##car _e2128521731_))
                                                           (_tl2128721738_
                                                            (##cdr _e2128521731_)))
                                                       (if (gx#stx-datum?
                                                            _hd2128621735_)
                                                           (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd2128621735_)
                               'cons:)
                       (if (gx#stx-pair? _tl2128721738_)
                           (let ((_e2128821741_ (gx#syntax-e _tl2128721738_)))
                             (let ((_hd2128921745_ (##car _e2128821741_))
                                   (_tl2129021748_ (##cdr _e2128821741_)))
                               (if (gx#stx-pair? _tl2129021748_)
                                   (let ((_e2129121751_
                                          (gx#syntax-e _tl2129021748_)))
                                     (let ((_hd2129221755_
                                            (##car _e2129121751_))
                                           (_tl2129321758_
                                            (##cdr _e2129121751_)))
                                       (if (gx#stx-null? _tl2129321758_)
                                           ((lambda (_L21761_ _L21763_)
                                              (_loop20971_
                                               _L21763_
                                               _vars21248_
                                               (lambda (_g2177721779_)
                                                 (_loop20971_
                                                  _L21761_
                                                  _g2177721779_
                                                  _K21249_))))
                                            _hd2129221755_
                                            _hd2128921745_)
                                           (_g2125421724_ _g2126321728_))))
                                   (_g2125421724_ _g2126321728_))))
                           (_g2125421724_ _g2126321728_))
                       (_g2125421724_ _g2126321728_))
                   (_g2125421724_ _g2126321728_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2125421724_
                                                    _g2126321728_)))))
                                        (let ((_g2125221823_
                                               (lambda (_g2126321787_)
                                                 (if (gx#stx-pair?
                                                      _g2126321787_)
                                                     (let ((_e2127721790_
                                                            (gx#syntax-e
                                                             _g2126321787_)))
                                                       (let ((_hd2127821794_
                                                              (##car _e2127721790_))
                                                             (_tl2127921797_
                                                              (##cdr _e2127721790_)))
                                                         (if (gx#stx-datum?
                                                              _hd2127821794_)
                                                             (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _hd2127821794_)
                                 'not:)
                         (if (gx#stx-pair? _tl2127921797_)
                             (let ((_e2128021800_
                                    (gx#syntax-e _tl2127921797_)))
                               (let ((_hd2128121804_ (##car _e2128021800_))
                                     (_tl2128221807_ (##cdr _e2128021800_)))
                                 (if (gx#stx-null? _tl2128221807_)
                                     ((lambda (_L21810_)
                                        (_loop20971_
                                         _L21810_
                                         _vars21248_
                                         _K21249_))
                                      _hd2128121804_)
                                     (_g2125321783_ _g2126321787_))))
                             (_g2125321783_ _g2126321787_))
                         (_g2125321783_ _g2126321787_))
                     (_g2125321783_ _g2126321787_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2125321783_
                                                      _g2126321787_)))))
                                          (let ((_g2125121922_
                                                 (lambda (_g2126321827_)
                                                   (if (gx#stx-pair?
                                                        _g2126321827_)
                                                       (let ((_e2127321830_
                                                              (gx#syntax-e
                                                               _g2126321827_)))
                                                         (let ((_hd2127421834_
                                                                (##car _e2127321830_))
                                                               (_tl2127521837_
                                                                (##cdr _e2127321830_)))
                                                           ((lambda (_L21840_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L21842_)
                      (if (let ((_$e21853_ (gx#stx-eq? 'and: _L21842_)))
                            (if _$e21853_
                                _$e21853_
                                (gx#stx-eq? 'or: _L21842_)))
                          (let ((_g2185821870_
                                 (lambda (_g2185921866_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2185921866_))))
                            (let ((_g2185721881_
                                   (lambda (_g2185921874_)
                                     ((lambda () (_K21249_ _vars21248_))))))
                              (let ((_g2185621918_
                                     (lambda (_g2185921885_)
                                       (if (gx#stx-pair? _g2185921885_)
                                           (let ((_e2186221888_
                                                  (gx#syntax-e _g2185921885_)))
                                             (let ((_hd2186321892_
                                                    (##car _e2186221888_))
                                                   (_tl2186421895_
                                                    (##cdr _e2186221888_)))
                                               ((lambda (_L21898_ _L21900_)
                                                  (_loop20971_
                                                   _L21900_
                                                   _vars21248_
                                                   (lambda (_g2191221914_)
                                                     (_loop20971_
                                                      (cons _L21842_ _L21898_)
                                                      _g2191221914_
                                                      _K21249_))))
                                                _tl2186421895_
                                                _hd2186321892_)))
                                           (_g2185721881_ _g2185921885_)))))
                                (_g2185621918_ _L21840_))))
                          (_g2125221823_ _g2126321827_)))
                    _tl2127521837_
                    _hd2127421834_)))
               (_g2125221823_ _g2126321827_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_g2125022175_
                                                   (lambda (_g2126321926_)
                                                     (if (gx#stx-pair?
                                                          _g2126321926_)
                                                         (let ((_e2126521929_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2126321926_)))
                   (let ((_hd2126621933_ (##car _e2126521929_))
                         (_tl2126721936_ (##cdr _e2126521929_)))
                     (if (gx#stx-datum? _hd2126621933_)
                         (if (equal? (gx#stx-e _hd2126621933_) '?:)
                             (if (gx#stx-pair? _tl2126721936_)
                                 (let ((_e2126821939_
                                        (gx#syntax-e _tl2126721936_)))
                                   (let ((_hd2126921943_ (##car _e2126821939_))
                                         (_tl2127021946_
                                          (##cdr _e2126821939_)))
                                     ((lambda (_L21949_)
                                        (let ((_g2196522002_
                                               (lambda (_g2196621998_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g2196621998_))))
                                          (let ((_g2196422013_
                                                 (lambda (_g2196622006_)
                                                   ((lambda ()
                                                      (_K21249_
                                                       _vars21248_))))))
                                            (let ((_g2196322091_
                                                   (lambda (_g2196622017_)
                                                     (if (gx#stx-pair?
                                                          _g2196622017_)
                                                         (let ((_e2198222020_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2196622017_)))
                   (let ((_hd2198322024_ (##car _e2198222020_))
                         (_tl2198422027_ (##cdr _e2198222020_)))
                     (if (gx#stx-pair? _tl2198422027_)
                         (let ((_e2198522030_ (gx#syntax-e _tl2198422027_)))
                           (let ((_hd2198622034_ (##car _e2198522030_))
                                 (_tl2198722037_ (##cdr _e2198522030_)))
                             (if (gx#stx-datum? _hd2198622034_)
                                 (if (equal? (gx#stx-e _hd2198622034_) '::)
                                     (if (gx#stx-pair? _tl2198722037_)
                                         (let ((_e2198822040_
                                                (gx#syntax-e _tl2198722037_)))
                                           (let ((_hd2198922044_
                                                  (##car _e2198822040_))
                                                 (_tl2199022047_
                                                  (##cdr _e2198822040_)))
                                             (if (gx#stx-pair? _tl2199022047_)
                                                 (let ((_e2199122050_
                                                        (gx#syntax-e
                                                         _tl2199022047_)))
                                                   (let ((_hd2199222054_
                                                          (##car _e2199122050_))
                                                         (_tl2199322057_
                                                          (##cdr _e2199122050_)))
                                                     (if (gx#stx-datum?
                                                          _hd2199222054_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2199222054_)
                             '=>:)
                     (if (gx#stx-pair? _tl2199322057_)
                         (let ((_e2199422060_ (gx#syntax-e _tl2199322057_)))
                           (let ((_hd2199522064_ (##car _e2199422060_))
                                 (_tl2199622067_ (##cdr _e2199422060_)))
                             (if (gx#stx-null? _tl2199622067_)
                                 ((lambda (_L22070_)
                                    (_loop20971_
                                     _L22070_
                                     _vars21248_
                                     _K21249_))
                                  _hd2199522064_)
                                 (_g2196422013_ _g2196622017_))))
                         (_g2196422013_ _g2196622017_))
                     (_g2196422013_ _g2196622017_))
                 (_g2196422013_ _g2196622017_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2196422013_
                                                  _g2196622017_))))
                                         (_g2196422013_ _g2196622017_))
                                     (_g2196422013_ _g2196622017_))
                                 (_g2196422013_ _g2196622017_))))
                         (_g2196422013_ _g2196622017_))))
                 (_g2196422013_ _g2196622017_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g2196222143_
                                                     (lambda (_g2196622095_)
                                                       (if (gx#stx-pair?
                                                            _g2196622095_)
                                                           (let ((_e2197222098_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g2196622095_)))
                     (let ((_hd2197322102_ (##car _e2197222098_))
                           (_tl2197422105_ (##cdr _e2197222098_)))
                       (if (gx#stx-pair? _tl2197422105_)
                           (let ((_e2197522108_ (gx#syntax-e _tl2197422105_)))
                             (let ((_hd2197622112_ (##car _e2197522108_))
                                   (_tl2197722115_ (##cdr _e2197522108_)))
                               (if (gx#stx-datum? _hd2197622112_)
                                   (if (equal? (gx#stx-e _hd2197622112_) '=>:)
                                       (if (gx#stx-pair? _tl2197722115_)
                                           (let ((_e2197822118_
                                                  (gx#syntax-e
                                                   _tl2197722115_)))
                                             (let ((_hd2197922122_
                                                    (##car _e2197822118_))
                                                   (_tl2198022125_
                                                    (##cdr _e2197822118_)))
                                               (if (gx#stx-null?
                                                    _tl2198022125_)
                                                   ((lambda (_L22128_)
                                                      (_loop20971_
                                                       _L22128_
                                                       _vars21248_
                                                       _K21249_))
                                                    _hd2197922122_)
                                                   (_g2196322091_
                                                    _g2196622095_))))
                                           (_g2196322091_ _g2196622095_))
                                       (_g2196322091_ _g2196622095_))
                                   (_g2196322091_ _g2196622095_))))
                           (_g2196322091_ _g2196622095_))))
                   (_g2196322091_ _g2196622095_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_g2196122171_
                                                       (lambda (_g2196622147_)
                                                         (if (gx#stx-pair?
                                                              _g2196622147_)
                                                             (let ((_e2196822150_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g2196622147_)))
                       (let ((_hd2196922154_ (##car _e2196822150_))
                             (_tl2197022157_ (##cdr _e2196822150_)))
                         (if (gx#stx-null? _tl2197022157_)
                             ((lambda (_L22160_)
                                (_loop20971_ _L22160_ _vars21248_ _K21249_))
                              _hd2196922154_)
                             (_g2196222143_ _g2196622147_))))
                     (_g2196222143_ _g2196622147_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2196122171_
                                                   _L21949_)))))))
                                      _tl2127021946_)))
                                 (_g2125121922_ _g2126321926_))
                             (_g2125121922_ _g2126321926_))
                         (_g2125121922_ _g2126321926_))))
                 (_g2125121922_ _g2126321926_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2125022175_
                                               _ptree21246_))))))))))))))))
                 (_loop-vector20973_
                  (lambda (_body21134_ _vars21136_ _K21137_)
                    (let ((_g2114021161_
                           (lambda (_g2114121157_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2114121157_))))
                      (let ((_g2113921202_
                             (lambda (_g2114121165_)
                               (if (gx#stx-pair? _g2114121165_)
                                   (let ((_e2115021168_
                                          (gx#syntax-e _g2114121165_)))
                                     (let ((_hd2115121172_
                                            (##car _e2115021168_))
                                           (_tl2115221175_
                                            (##cdr _e2115021168_)))
                                       (if (gx#stx-datum? _hd2115121172_)
                                           (if (equal? (gx#stx-e
                                                        _hd2115121172_)
                                                       'list:)
                                               (if (gx#stx-pair?
                                                    _tl2115221175_)
                                                   (let ((_e2115321178_
                                                          (gx#syntax-e
                                                           _tl2115221175_)))
                                                     (let ((_hd2115421182_
                                                            (##car _e2115321178_))
                                                           (_tl2115521185_
                                                            (##cdr _e2115321178_)))
                                                       (if (gx#stx-null?
                                                            _tl2115521185_)
                                                           ((lambda (_L21188_)
                                                              (_loop20971_
                                                               _L21188_
                                                               _vars21136_
                                                               _K21137_))
                                                            _hd2115421182_)
                                                           (_g2114021161_
                                                            _g2114121165_))))
                                                   (_g2114021161_
                                                    _g2114121165_))
                                               (_g2114021161_ _g2114121165_))
                                           (_g2114021161_ _g2114121165_))))
                                   (_g2114021161_ _g2114121165_)))))
                        (let ((_g2113821242_
                               (lambda (_g2114121206_)
                                 (if (gx#stx-pair? _g2114121206_)
                                     (let ((_e2114321209_
                                            (gx#syntax-e _g2114121206_)))
                                       (let ((_hd2114421213_
                                              (##car _e2114321209_))
                                             (_tl2114521216_
                                              (##cdr _e2114321209_)))
                                         (if (gx#stx-datum? _hd2114421213_)
                                             (if (equal? (gx#stx-e
                                                          _hd2114421213_)
                                                         'simple:)
                                                 (if (gx#stx-pair?
                                                      _tl2114521216_)
                                                     (let ((_e2114621219_
                                                            (gx#syntax-e
                                                             _tl2114521216_)))
                                                       (let ((_hd2114721223_
                                                              (##car _e2114621219_))
                                                             (_tl2114821226_
                                                              (##cdr _e2114621219_)))
                                                         (if (gx#stx-null?
                                                              _tl2114821226_)
                                                             ((lambda (_L21229_)
                                                                (_loop-list20974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L21229_
                         _vars21136_
                         _K21137_))
                      _hd2114721223_)
                     (_g2113921202_ _g2114121206_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2113921202_
                                                      _g2114121206_))
                                                 (_g2113921202_ _g2114121206_))
                                             (_g2113921202_ _g2114121206_))))
                                     (_g2113921202_ _g2114121206_)))))
                          (_g2113821242_ _body21134_))))))
                 (_loop-list20974_
                  (lambda (_rest21064_ _vars21066_ _K21067_)
                    (let ((_g2107021082_
                           (lambda (_g2107121078_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2107121078_))))
                      (let ((_g2106921093_
                             (lambda (_g2107121086_)
                               ((lambda () (_K21067_ _vars21066_))))))
                        (let ((_g2106821130_
                               (lambda (_g2107121097_)
                                 (if (gx#stx-pair? _g2107121097_)
                                     (let ((_e2107421100_
                                            (gx#syntax-e _g2107121097_)))
                                       (let ((_hd2107521104_
                                              (##car _e2107421100_))
                                             (_tl2107621107_
                                              (##cdr _e2107421100_)))
                                         ((lambda (_L21110_ _L21112_)
                                            (_loop20971_
                                             _L21112_
                                             _vars21066_
                                             (lambda (_g2112421126_)
                                               (_loop-list20974_
                                                _L21110_
                                                _g2112421126_
                                                _K21067_))))
                                          _tl2107621107_
                                          _hd2107521104_)))
                                     (_g2106921093_ _g2107121097_)))))
                          (_g2106821130_ _rest21064_))))))
                 (_loop-class-list20975_
                  (lambda (_rest20977_ _vars20979_ _K20980_)
                    (let ((_g2098320998_
                           (lambda (_g2098420994_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2098420994_))))
                      (let ((_g2098221009_
                             (lambda (_g2098421002_)
                               ((lambda () (_K20980_ _vars20979_))))))
                        (let ((_g2098121060_
                               (lambda (_g2098421013_)
                                 (if (gx#stx-pair? _g2098421013_)
                                     (let ((_e2098721016_
                                            (gx#syntax-e _g2098421013_)))
                                       (let ((_hd2098821020_
                                              (##car _e2098721016_))
                                             (_tl2098921023_
                                              (##cdr _e2098721016_)))
                                         (if (gx#stx-pair? _tl2098921023_)
                                             (let ((_e2099021026_
                                                    (gx#syntax-e
                                                     _tl2098921023_)))
                                               (let ((_hd2099121030_
                                                      (##car _e2099021026_))
                                                     (_tl2099221033_
                                                      (##cdr _e2099021026_)))
                                                 ((lambda (_L21036_ _L21038_)
                                                    (_loop20971_
                                                     _L21038_
                                                     _vars20979_
                                                     (lambda (_g2105421056_)
                                                       (_loop-class-list20975_
                                                        _L21036_
                                                        _g2105421056_
                                                        _K20980_))))
                                                  _tl2099221033_
                                                  _hd2099121030_)))
                                             (_g2098221009_ _g2098421013_))))
                                     (_g2098221009_ _g2098421013_)))))
                          (_g2098121060_ _rest20977_)))))))
          (_loop20971_ _ptree20968_ '() values))))
    (define |gerbil/core::<match>[1]#generate-match1|
      (lambda (_stx17784_ _tgt17786_ _ptree17787_ _K17788_ _E17789_)
        (letrec ((_generate117791_
                  (lambda (_tgt19321_ _ptree19323_ _K19324_ _E19325_)
                    (let ((_g1932719335_
                           (lambda (_g1932819331_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1932819331_))))
                      (let ((_g1932620964_
                             (lambda (_g1932819339_)
                               ((lambda (_L19342_)
                                  (let ()
                                    (let ((_g1936919495_
                                           (lambda (_g1937019491_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1937019491_))))
                                      (let ((_g1936819516_
                                             (lambda (_g1937019499_)
                                               (if (gx#stx-pair? _g1937019499_)
                                                   (let ((_e1948719502_
                                                          (gx#syntax-e
                                                           _g1937019499_)))
                                                     (let ((_hd1948819506_
                                                            (##car _e1948719502_))
                                                           (_tl1948919509_
                                                            (##cdr _e1948719502_)))
                                                       (if (gx#stx-datum?
                                                            _hd1948819506_)
                                                           (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1948819506_)
                               'any:)
                       (if (gx#stx-null? _tl1948919509_)
                           ((lambda () _K19324_))
                           (_g1936919495_ _g1937019499_))
                       (_g1936919495_ _g1937019499_))
                   (_g1936919495_ _g1937019499_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1936919495_
                                                    _g1937019499_)))))
                                        (let ((_g1936719559_
                                               (lambda (_g1937019520_)
                                                 (if (gx#stx-pair?
                                                      _g1937019520_)
                                                     (let ((_e1948119523_
                                                            (gx#syntax-e
                                                             _g1937019520_)))
                                                       (let ((_hd1948219527_
                                                              (##car _e1948119523_))
                                                             (_tl1948319530_
                                                              (##cdr _e1948119523_)))
                                                         (if (gx#stx-datum?
                                                              _hd1948219527_)
                                                             (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _hd1948219527_)
                                 'var:)
                         (if (gx#stx-pair? _tl1948319530_)
                             (let ((_e1948419533_
                                    (gx#syntax-e _tl1948319530_)))
                               (let ((_hd1948519537_ (##car _e1948419533_))
                                     (_tl1948619540_ (##cdr _e1948419533_)))
                                 (if (gx#stx-null? _tl1948619540_)
                                     ((lambda (_L19543_)
                                        (cons (gx#datum->syntax '#f 'let)
                                              (cons (cons (cons _L19543_
                                                                (cons _L19342_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _K19324_ '()))))
                                      _hd1948519537_)
                                     (_g1936819516_ _g1937019520_))))
                             (_g1936819516_ _g1937019520_))
                         (_g1936819516_ _g1937019520_))
                     (_g1936819516_ _g1937019520_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1936819516_
                                                      _g1937019520_)))))
                                          (let ((_g1936619644_
                                                 (lambda (_g1937019563_)
                                                   (if (gx#stx-pair?
                                                        _g1937019563_)
                                                       (let ((_e1947119566_
                                                              (gx#syntax-e
                                                               _g1937019563_)))
                                                         (let ((_hd1947219570_
                                                                (##car _e1947119566_))
                                                               (_tl1947319573_
                                                                (##cdr _e1947119566_)))
                                                           (if (gx#stx-datum?
                                                                _hd1947219570_)
                                                               (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _hd1947219570_)
                                   'apply:)
                           (if (gx#stx-pair? _tl1947319573_)
                               (let ((_e1947419576_
                                      (gx#syntax-e _tl1947319573_)))
                                 (let ((_hd1947519580_ (##car _e1947419576_))
                                       (_tl1947619583_ (##cdr _e1947419576_)))
                                   (if (gx#stx-pair? _tl1947619583_)
                                       (let ((_e1947719586_
                                              (gx#syntax-e _tl1947619583_)))
                                         (let ((_hd1947819590_
                                                (##car _e1947719586_))
                                               (_tl1947919593_
                                                (##cdr _e1947719586_)))
                                           (if (gx#stx-null? _tl1947919593_)
                                               ((lambda (_L19596_ _L19598_)
                                                  (let ((_g1961319621_
                                                         (lambda (_g1961419617_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g1961419617_))))
                                                    (let ((_g1961219640_
                                                           (lambda (_g1961419625_)
                                                             ((lambda (_L19628_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'let)
                                (cons (cons (cons _L19628_
                                                  (cons (cons _L19598_
                                                              (cons _L19342_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())
                                      (cons (_generate117791_
                                             _L19628_
                                             _L19596_
                                             _K19324_
                                             _E19325_)
                                            '())))))
                      _g1961419625_))))
              (_g1961219640_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1947819590_
                                                _hd1947519580_)
                                               (_g1936719559_ _g1937019563_))))
                                       (_g1936719559_ _g1937019563_))))
                               (_g1936719559_ _g1937019563_))
                           (_g1936719559_ _g1937019563_))
                       (_g1936719559_ _g1937019563_))))
               (_g1936719559_ _g1937019563_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_g1936519726_
                                                   (lambda (_g1937019648_)
                                                     (if (gx#stx-pair?
                                                          _g1937019648_)
                                                         (let ((_e1946319651_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1937019648_)))
                   (let ((_hd1946419655_ (##car _e1946319651_))
                         (_tl1946519658_ (##cdr _e1946319651_)))
                     (if (gx#stx-datum? _hd1946419655_)
                         (if (equal? (gx#stx-e _hd1946419655_) 'datum:)
                             (if (gx#stx-pair? _tl1946519658_)
                                 (let ((_e1946619661_
                                        (gx#syntax-e _tl1946519658_)))
                                   (let ((_hd1946719665_ (##car _e1946619661_))
                                         (_tl1946819668_
                                          (##cdr _e1946619661_)))
                                     (if (gx#stx-null? _tl1946819668_)
                                         ((lambda (_L19671_)
                                            (let ((_g1968419692_
                                                   (lambda (_g1968519688_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1968519688_))))
                                              (let ((_g1968319711_
                                                     (lambda (_g1968519696_)
                                                       ((lambda (_L19699_)
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'if)
                          (cons (cons _L19699_
                                      (cons _L19342_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons _L19671_ '()))
                                                  '())))
                                (cons _K19324_ (cons _E19325_ '()))))))
                _g1968519696_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1968319711_
                                                 (let ((_e19715_
                                                        (gx#stx-e _L19671_)))
                                                   (if (let ((_$e19718_
                                                              (symbol? _e19715_)))
                                                         (if _$e19718_
                                                             _$e19718_
                                                             (let ((_$e19722_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (keyword? _e19715_)))
                       (if _$e19722_ _$e19722_ (immediate? _e19715_)))))
               (gx#datum->syntax '#f '##eq?)
               (if (number? _e19715_)
                   (gx#datum->syntax '#f 'eqv?)
                   (gx#datum->syntax '#f 'equal?))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd1946719665_)
                                         (_g1936619644_ _g1937019648_))))
                                 (_g1936619644_ _g1937019648_))
                             (_g1936619644_ _g1937019648_))
                         (_g1936619644_ _g1937019648_))))
                 (_g1936619644_ _g1937019648_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g1936419780_
                                                     (lambda (_g1937019730_)
                                                       (if (gx#stx-pair?
                                                            _g1937019730_)
                                                           (let ((_e1945319733_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g1937019730_)))
                     (let ((_hd1945419737_ (##car _e1945319733_))
                           (_tl1945519740_ (##cdr _e1945319733_)))
                       (if (gx#stx-datum? _hd1945419737_)
                           (if (equal? (gx#stx-e _hd1945419737_) 'class:)
                               (if (gx#stx-pair? _tl1945519740_)
                                   (let ((_e1945619743_
                                          (gx#syntax-e _tl1945519740_)))
                                     (let ((_hd1945719747_
                                            (##car _e1945619743_))
                                           (_tl1945819750_
                                            (##cdr _e1945619743_)))
                                       (if (gx#stx-pair? _tl1945819750_)
                                           (let ((_e1945919753_
                                                  (gx#syntax-e
                                                   _tl1945819750_)))
                                             (let ((_hd1946019757_
                                                    (##car _e1945919753_))
                                                   (_tl1946119760_
                                                    (##cdr _e1945919753_)))
                                               (if (gx#stx-null?
                                                    _tl1946119760_)
                                                   ((lambda (_L19763_ _L19765_)
                                                      (_generate-class17797_
                                                       (gx#stx-e _L19765_)
                                                       _tgt19321_
                                                       _L19763_
                                                       _K19324_
                                                       _E19325_))
                                                    _hd1946019757_
                                                    _hd1945719747_)
                                                   (_g1936519726_
                                                    _g1937019730_))))
                                           (_g1936519726_ _g1937019730_))))
                                   (_g1936519726_ _g1937019730_))
                               (_g1936519726_ _g1937019730_))
                           (_g1936519726_ _g1937019730_))))
                   (_g1936519726_ _g1937019730_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_g1936319834_
                                                       (lambda (_g1937019784_)
                                                         (if (gx#stx-pair?
                                                              _g1937019784_)
                                                             (let ((_e1944219787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g1937019784_)))
                       (let ((_hd1944319791_ (##car _e1944219787_))
                             (_tl1944419794_ (##cdr _e1944219787_)))
                         (if (gx#stx-datum? _hd1944319791_)
                             (if (equal? (gx#stx-e _hd1944319791_) 'struct:)
                                 (if (gx#stx-pair? _tl1944419794_)
                                     (let ((_e1944519797_
                                            (gx#syntax-e _tl1944419794_)))
                                       (let ((_hd1944619801_
                                              (##car _e1944519797_))
                                             (_tl1944719804_
                                              (##cdr _e1944519797_)))
                                         (if (gx#stx-pair? _tl1944719804_)
                                             (let ((_e1944819807_
                                                    (gx#syntax-e
                                                     _tl1944719804_)))
                                               (let ((_hd1944919811_
                                                      (##car _e1944819807_))
                                                     (_tl1945019814_
                                                      (##cdr _e1944819807_)))
                                                 (if (gx#stx-null?
                                                      _tl1945019814_)
                                                     ((lambda (_L19817_
                                                               _L19819_)
                                                        (_generate-struct17796_
                                                         (gx#stx-e _L19819_)
                                                         _tgt19321_
                                                         _L19817_
                                                         _K19324_
                                                         _E19325_))
                                                      _hd1944919811_
                                                      _hd1944619801_)
                                                     (_g1936419780_
                                                      _g1937019784_))))
                                             (_g1936419780_ _g1937019784_))))
                                     (_g1936419780_ _g1937019784_))
                                 (_g1936419780_ _g1937019784_))
                             (_g1936419780_ _g1937019784_))))
                     (_g1936419780_ _g1937019784_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g1936220012_
                                                         (lambda (_g1937019838_)
                                                           (if (gx#stx-pair?
                                                                _g1937019838_)
                                                               (let ((_e1943419841_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1937019838_)))
                         (let ((_hd1943519845_ (##car _e1943419841_))
                               (_tl1943619848_ (##cdr _e1943419841_)))
                           (if (gx#stx-datum? _hd1943519845_)
                               (if (equal? (gx#stx-e _hd1943519845_) 'vector:)
                                   (if (gx#stx-pair? _tl1943619848_)
                                       (let ((_e1943719851_
                                              (gx#syntax-e _tl1943619848_)))
                                         (let ((_hd1943819855_
                                                (##car _e1943719851_))
                                               (_tl1943919858_
                                                (##cdr _e1943719851_)))
                                           (if (gx#stx-null? _tl1943919858_)
                                               ((lambda (_L19861_)
                                                  (let ((_g1987519896_
                                                         (lambda (_g1987619892_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g1987619892_))))
                                                    (let ((_g1987419937_
                                                           (lambda (_g1987619900_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1987619900_)
                         (let ((_e1988519903_ (gx#syntax-e _g1987619900_)))
                           (let ((_hd1988619907_ (##car _e1988519903_))
                                 (_tl1988719910_ (##cdr _e1988519903_)))
                             (if (gx#stx-datum? _hd1988619907_)
                                 (if (equal? (gx#stx-e _hd1988619907_) 'list:)
                                     (if (gx#stx-pair? _tl1988719910_)
                                         (let ((_e1988819913_
                                                (gx#syntax-e _tl1988719910_)))
                                           (let ((_hd1988919917_
                                                  (##car _e1988819913_))
                                                 (_tl1989019920_
                                                  (##cdr _e1988819913_)))
                                             (if (gx#stx-null? _tl1989019920_)
                                                 ((lambda (_L19923_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'vector?)
                              (cons _L19342_ '()))
                        (cons (_generate-list-vector17795_
                               _tgt19321_
                               _L19923_
                               (gx#datum->syntax '#f 'subvector->list)
                               '0
                               _K19324_
                               _E19325_)
                              (cons _E19325_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1988919917_)
                                                 (_g1987519896_
                                                  _g1987619900_))))
                                         (_g1987519896_ _g1987619900_))
                                     (_g1987519896_ _g1987619900_))
                                 (_g1987519896_ _g1987619900_))))
                         (_g1987519896_ _g1987619900_)))))
              (let ((_g1987320008_
                     (lambda (_g1987619941_)
                       (if (gx#stx-pair? _g1987619941_)
                           (let ((_e1987819944_ (gx#syntax-e _g1987619941_)))
                             (let ((_hd1987919948_ (##car _e1987819944_))
                                   (_tl1988019951_ (##cdr _e1987819944_)))
                               (if (gx#stx-datum? _hd1987919948_)
                                   (if (equal? (gx#stx-e _hd1987919948_)
                                               'simple:)
                                       (if (gx#stx-pair? _tl1988019951_)
                                           (let ((_e1988119954_
                                                  (gx#syntax-e
                                                   _tl1988019951_)))
                                             (let ((_hd1988219958_
                                                    (##car _e1988119954_))
                                                   (_tl1988319961_
                                                    (##cdr _e1988119954_)))
                                               (if (gx#stx-null?
                                                    _tl1988319961_)
                                                   ((lambda (_L19964_)
                                                      (let ((_g1997719985_
                                                             (lambda (_g1997819981_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1997819981_))))
                                                        (let ((_g1997620004_
                                                               (lambda (_g1997819989_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L19992_)
                            (let ()
                              (cons (gx#datum->syntax '#f 'if)
                                    (cons (cons (gx#datum->syntax '#f 'and)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '##vector?)
                                                            (cons _L19342_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons (gx#datum->syntax '#f '##fx=)
                          (cons (cons (gx#datum->syntax '#f '##vector-length)
                                      (cons _L19342_ '()))
                                (cons _L19992_ '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (_generate-simple-vector17794_
                                                 _tgt19321_
                                                 _L19964_
                                                 '0
                                                 _K19324_
                                                 _E19325_)
                                                (cons _E19325_ '()))))))
                          _g1997819989_))))
                  (_g1997620004_ (gx#stx-length _L19964_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1988219958_)
                                                   (_g1987419937_
                                                    _g1987619941_))))
                                           (_g1987419937_ _g1987619941_))
                                       (_g1987419937_ _g1987619941_))
                                   (_g1987419937_ _g1987619941_))))
                           (_g1987419937_ _g1987619941_)))))
                (_g1987320008_ _L19861_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1943819855_)
                                               (_g1936319834_ _g1937019838_))))
                                       (_g1936319834_ _g1937019838_))
                                   (_g1936319834_ _g1937019838_))
                               (_g1936319834_ _g1937019838_))))
                       (_g1936319834_ _g1937019838_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g1936120190_
                                                           (lambda (_g1937020016_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1937020016_)
                         (let ((_e1942720019_ (gx#syntax-e _g1937020016_)))
                           (let ((_hd1942820023_ (##car _e1942720019_))
                                 (_tl1942920026_ (##cdr _e1942720019_)))
                             (if (gx#stx-datum? _hd1942820023_)
                                 (if (equal? (gx#stx-e _hd1942820023_)
                                             'values:)
                                     (if (gx#stx-pair? _tl1942920026_)
                                         (let ((_e1943020029_
                                                (gx#syntax-e _tl1942920026_)))
                                           (let ((_hd1943120033_
                                                  (##car _e1943020029_))
                                                 (_tl1943220036_
                                                  (##cdr _e1943020029_)))
                                             (if (gx#stx-null? _tl1943220036_)
                                                 ((lambda (_L20039_)
                                                    (let ((_g2005320074_
                                                           (lambda (_g2005420070_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g2005420070_))))
                                                      (let ((_g2005220115_
                                                             (lambda (_g2005420078_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2005420078_)
                           (let ((_e2006320081_ (gx#syntax-e _g2005420078_)))
                             (let ((_hd2006420085_ (##car _e2006320081_))
                                   (_tl2006520088_ (##cdr _e2006320081_)))
                               (if (gx#stx-datum? _hd2006420085_)
                                   (if (equal? (gx#stx-e _hd2006420085_)
                                               'list:)
                                       (if (gx#stx-pair? _tl2006520088_)
                                           (let ((_e2006620091_
                                                  (gx#syntax-e
                                                   _tl2006520088_)))
                                             (let ((_hd2006720095_
                                                    (##car _e2006620091_))
                                                   (_tl2006820098_
                                                    (##cdr _e2006620091_)))
                                               (if (gx#stx-null?
                                                    _tl2006820098_)
                                                   ((lambda (_L20101_)
                                                      (_generate-list-vector17795_
                                                       _tgt19321_
                                                       _L20101_
                                                       (gx#datum->syntax
                                                        '#f
                                                        'values->list)
                                                       '0
                                                       _K19324_
                                                       _E19325_))
                                                    _hd2006720095_)
                                                   (_g2005320074_
                                                    _g2005420078_))))
                                           (_g2005320074_ _g2005420078_))
                                       (_g2005320074_ _g2005420078_))
                                   (_g2005320074_ _g2005420078_))))
                           (_g2005320074_ _g2005420078_)))))
                (let ((_g2005120186_
                       (lambda (_g2005420119_)
                         (if (gx#stx-pair? _g2005420119_)
                             (let ((_e2005620122_ (gx#syntax-e _g2005420119_)))
                               (let ((_hd2005720126_ (##car _e2005620122_))
                                     (_tl2005820129_ (##cdr _e2005620122_)))
                                 (if (gx#stx-datum? _hd2005720126_)
                                     (if (equal? (gx#stx-e _hd2005720126_)
                                                 'simple:)
                                         (if (gx#stx-pair? _tl2005820129_)
                                             (let ((_e2005920132_
                                                    (gx#syntax-e
                                                     _tl2005820129_)))
                                               (let ((_hd2006020136_
                                                      (##car _e2005920132_))
                                                     (_tl2006120139_
                                                      (##cdr _e2005920132_)))
                                                 (if (gx#stx-null?
                                                      _tl2006120139_)
                                                     ((lambda (_L20142_)
                                                        (let ((_g2015520163_
                                                               (lambda (_g2015620159_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g2015620159_))))
                  (let ((_g2015420182_
                         (lambda (_g2015620167_)
                           ((lambda (_L20170_)
                              (let ()
                                (cons (gx#datum->syntax '#f 'if)
                                      (cons (cons (gx#datum->syntax '#f '##fx=)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'values-count)
                                                              (cons _L19342_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _L20170_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (_generate-simple-vector17794_
                                                   _tgt19321_
                                                   _L20142_
                                                   '0
                                                   _K19324_
                                                   _E19325_)
                                                  (cons _E19325_ '()))))))
                            _g2015620167_))))
                    (_g2015420182_ (gx#stx-length _L20142_)))))
              _hd2006020136_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2005220115_
                                                      _g2005420119_))))
                                             (_g2005220115_ _g2005420119_))
                                         (_g2005220115_ _g2005420119_))
                                     (_g2005220115_ _g2005420119_))))
                             (_g2005220115_ _g2005420119_)))))
                  (_g2005120186_ _L20039_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1943120033_)
                                                 (_g1936220012_
                                                  _g1937020016_))))
                                         (_g1936220012_ _g1937020016_))
                                     (_g1936220012_ _g1937020016_))
                                 (_g1936220012_ _g1937020016_))))
                         (_g1936220012_ _g1937020016_)))))
              (let ((_g1936020261_
                     (lambda (_g1937020194_)
                       (if (gx#stx-pair? _g1937020194_)
                           (let ((_e1942020197_ (gx#syntax-e _g1937020194_)))
                             (let ((_hd1942120201_ (##car _e1942020197_))
                                   (_tl1942220204_ (##cdr _e1942020197_)))
                               (if (gx#stx-datum? _hd1942120201_)
                                   (if (equal? (gx#stx-e _hd1942120201_) 'box:)
                                       (if (gx#stx-pair? _tl1942220204_)
                                           (let ((_e1942320207_
                                                  (gx#syntax-e
                                                   _tl1942220204_)))
                                             (let ((_hd1942420211_
                                                    (##car _e1942320207_))
                                                   (_tl1942520214_
                                                    (##cdr _e1942320207_)))
                                               (if (gx#stx-null?
                                                    _tl1942520214_)
                                                   ((lambda (_L20217_)
                                                      (let ((_g2023020238_
                                                             (lambda (_g2023120234_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2023120234_))))
                                                        (let ((_g2022920257_
                                                               (lambda (_g2023120242_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L20245_)
                            (let ()
                              (cons (gx#datum->syntax '#f 'if)
                                    (cons (cons (gx#datum->syntax '#f '##box?)
                                                (cons _L19342_ '()))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'let)
                                                      (cons (cons (cons _L20245_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons (gx#datum->syntax '#f '##unbox)
                                            (cons _L19342_ '()))
                                      '()))
                          '())
                    (cons (_generate117791_
                           _L20245_
                           _L20217_
                           _K19324_
                           _E19325_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _E19325_ '()))))))
                          _g2023120242_))))
                  (_g2022920257_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1942420211_)
                                                   (_g1936120190_
                                                    _g1937020194_))))
                                           (_g1936120190_ _g1937020194_))
                                       (_g1936120190_ _g1937020194_))
                                   (_g1936120190_ _g1937020194_))))
                           (_g1936120190_ _g1937020194_)))))
                (let ((_g1935920315_
                       (lambda (_g1937020265_)
                         (if (gx#stx-pair? _g1937020265_)
                             (let ((_e1941020268_ (gx#syntax-e _g1937020265_)))
                               (let ((_hd1941120272_ (##car _e1941020268_))
                                     (_tl1941220275_ (##cdr _e1941020268_)))
                                 (if (gx#stx-datum? _hd1941120272_)
                                     (if (equal? (gx#stx-e _hd1941120272_)
                                                 'splice:)
                                         (if (gx#stx-pair? _tl1941220275_)
                                             (let ((_e1941320278_
                                                    (gx#syntax-e
                                                     _tl1941220275_)))
                                               (let ((_hd1941420282_
                                                      (##car _e1941320278_))
                                                     (_tl1941520285_
                                                      (##cdr _e1941320278_)))
                                                 (if (gx#stx-pair?
                                                      _tl1941520285_)
                                                     (let ((_e1941620288_
                                                            (gx#syntax-e
                                                             _tl1941520285_)))
                                                       (let ((_hd1941720292_
                                                              (##car _e1941620288_))
                                                             (_tl1941820295_
                                                              (##cdr _e1941620288_)))
                                                         (if (gx#stx-null?
                                                              _tl1941820295_)
                                                             ((lambda (_L20298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L20300_)
                        (_generate-splice17793_
                         _tgt19321_
                         _L20300_
                         _L20298_
                         _K19324_
                         _E19325_))
                      _hd1941720292_
                      _hd1941420282_)
                     (_g1936020261_ _g1937020265_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1936020261_
                                                      _g1937020265_))))
                                             (_g1936020261_ _g1937020265_))
                                         (_g1936020261_ _g1937020265_))
                                     (_g1936020261_ _g1937020265_))))
                             (_g1936020261_ _g1937020265_)))))
                  (let ((_g1935820336_
                         (lambda (_g1937020319_)
                           (if (gx#stx-pair? _g1937020319_)
                               (let ((_e1940520322_
                                      (gx#syntax-e _g1937020319_)))
                                 (let ((_hd1940620326_ (##car _e1940520322_))
                                       (_tl1940720329_ (##cdr _e1940520322_)))
                                   (if (gx#stx-datum? _hd1940620326_)
                                       (if (equal? (gx#stx-e _hd1940620326_)
                                                   'null:)
                                           (if (gx#stx-null? _tl1940720329_)
                                               ((lambda ()
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'if)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '##null?)
                            (cons _L19342_ '()))
                      (cons _K19324_ (cons _E19325_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1935920315_ _g1937020319_))
                                           (_g1935920315_ _g1937020319_))
                                       (_g1935920315_ _g1937020319_))))
                               (_g1935920315_ _g1937020319_)))))
                    (let ((_g1935720455_
                           (lambda (_g1937020340_)
                             (if (gx#stx-pair? _g1937020340_)
                                 (let ((_e1939620343_
                                        (gx#syntax-e _g1937020340_)))
                                   (let ((_hd1939720347_ (##car _e1939620343_))
                                         (_tl1939820350_
                                          (##cdr _e1939620343_)))
                                     (if (gx#stx-datum? _hd1939720347_)
                                         (if (equal? (gx#stx-e _hd1939720347_)
                                                     'cons:)
                                             (if (gx#stx-pair? _tl1939820350_)
                                                 (let ((_e1939920353_
                                                        (gx#syntax-e
                                                         _tl1939820350_)))
                                                   (let ((_hd1940020357_
                                                          (##car _e1939920353_))
                                                         (_tl1940120360_
                                                          (##cdr _e1939920353_)))
                                                     (if (gx#stx-pair?
                                                          _tl1940120360_)
                                                         (let ((_e1940220363_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1940120360_)))
                   (let ((_hd1940320367_ (##car _e1940220363_))
                         (_tl1940420370_ (##cdr _e1940220363_)))
                     (if (gx#stx-null? _tl1940420370_)
                         ((lambda (_L20373_ _L20375_)
                            (let ((_g2039120406_
                                   (lambda (_g2039220402_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2039220402_))))
                              (let ((_g2039020451_
                                     (lambda (_g2039220410_)
                                       (if (gx#stx-pair? _g2039220410_)
                                           (let ((_e2039520413_
                                                  (gx#syntax-e _g2039220410_)))
                                             (let ((_hd2039620417_
                                                    (##car _e2039520413_))
                                                   (_tl2039720420_
                                                    (##cdr _e2039520413_)))
                                               (if (gx#stx-pair?
                                                    _tl2039720420_)
                                                   (let ((_e2039820423_
                                                          (gx#syntax-e
                                                           _tl2039720420_)))
                                                     (let ((_hd2039920427_
                                                            (##car _e2039820423_))
                                                           (_tl2040020430_
                                                            (##cdr _e2039820423_)))
                                                       (if (gx#stx-null?
                                                            _tl2040020430_)
                                                           ((lambda (_L20433_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L20435_)
                      (let ()
                        (cons (gx#datum->syntax '#f 'if)
                              (cons (cons (gx#datum->syntax '#f '##pair?)
                                          (cons _L19342_ '()))
                                    (cons (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (cons _L20435_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f '##car)
                                      (cons _L19342_ '()))
                                '()))
                    (cons (cons _L20433_
                                (cons (cons (gx#datum->syntax '#f '##cdr)
                                            (cons _L19342_ '()))
                                      '()))
                          '()))
              (cons (_generate117791_
                     _L20435_
                     _L20375_
                     (_generate117791_ _L20433_ _L20373_ _K19324_ _E19325_)
                     _E19325_)
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons _E19325_ '()))))))
                    _hd2039920427_
                    _hd2039620417_)
                   (_g2039120406_ _g2039220410_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2039120406_
                                                    _g2039220410_))))
                                           (_g2039120406_ _g2039220410_)))))
                                (_g2039020451_
                                 (list (gx#genident 'hd) (gx#genident 'tl))))))
                          _hd1940320367_
                          _hd1940020357_)
                         (_g1935820336_ _g1937020340_))))
                 (_g1935820336_ _g1937020340_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1935820336_ _g1937020340_))
                                             (_g1935820336_ _g1937020340_))
                                         (_g1935820336_ _g1937020340_))))
                                 (_g1935820336_ _g1937020340_)))))
                      (let ((_g1935620495_
                             (lambda (_g1937020459_)
                               (if (gx#stx-pair? _g1937020459_)
                                   (let ((_e1938820462_
                                          (gx#syntax-e _g1937020459_)))
                                     (let ((_hd1938920466_
                                            (##car _e1938820462_))
                                           (_tl1939020469_
                                            (##cdr _e1938820462_)))
                                       (if (gx#stx-datum? _hd1938920466_)
                                           (if (equal? (gx#stx-e
                                                        _hd1938920466_)
                                                       'not:)
                                               (if (gx#stx-pair?
                                                    _tl1939020469_)
                                                   (let ((_e1939120472_
                                                          (gx#syntax-e
                                                           _tl1939020469_)))
                                                     (let ((_hd1939220476_
                                                            (##car _e1939120472_))
                                                           (_tl1939320479_
                                                            (##cdr _e1939120472_)))
                                                       (if (gx#stx-null?
                                                            _tl1939320479_)
                                                           ((lambda (_L20482_)
                                                              (_generate117791_
                                                               _tgt19321_
                                                               _L20482_
                                                               _E19325_
                                                               _K19324_))
                                                            _hd1939220476_)
                                                           (_g1935720455_
                                                            _g1937020459_))))
                                                   (_g1935720455_
                                                    _g1937020459_))
                                               (_g1935720455_ _g1937020459_))
                                           (_g1935720455_ _g1937020459_))))
                                   (_g1935720455_ _g1937020459_)))))
                        (let ((_g1935520583_
                               (lambda (_g1937020499_)
                                 (if (gx#stx-pair? _g1937020499_)
                                     (let ((_e1938420502_
                                            (gx#syntax-e _g1937020499_)))
                                       (let ((_hd1938520506_
                                              (##car _e1938420502_))
                                             (_tl1938620509_
                                              (##cdr _e1938420502_)))
                                         (if (gx#stx-datum? _hd1938520506_)
                                             (if (equal? (gx#stx-e
                                                          _hd1938520506_)
                                                         'or:)
                                                 ((lambda (_L20512_)
                                                    (let ((_g2052420536_
                                                           (lambda (_g2052520532_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g2052520532_))))
                                                      (let ((_g2052320547_
                                                             (lambda (_g2052520540_)
                                                               ((lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _E19325_)))))
                (let ((_g2052220579_
                       (lambda (_g2052520551_)
                         (if (gx#stx-pair? _g2052520551_)
                             (let ((_e2052820554_ (gx#syntax-e _g2052520551_)))
                               (let ((_hd2052920558_ (##car _e2052820554_))
                                     (_tl2053020561_ (##cdr _e2052820554_)))
                                 ((lambda (_L20564_ _L20566_)
                                    (_generate117791_
                                     _tgt19321_
                                     _L20566_
                                     _K19324_
                                     (_generate117791_
                                      _tgt19321_
                                      (cons 'or: _L20564_)
                                      _K19324_
                                      _E19325_)))
                                  _tl2053020561_
                                  _hd2052920558_)))
                             (_g2052320547_ _g2052520551_)))))
                  (_g2052220579_ _L20512_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl1938620509_)
                                                 (_g1935620495_ _g1937020499_))
                                             (_g1935620495_ _g1937020499_))))
                                     (_g1935620495_ _g1937020499_)))))
                          (let ((_g1935420671_
                                 (lambda (_g1937020587_)
                                   (if (gx#stx-pair? _g1937020587_)
                                       (let ((_e1938020590_
                                              (gx#syntax-e _g1937020587_)))
                                         (let ((_hd1938120594_
                                                (##car _e1938020590_))
                                               (_tl1938220597_
                                                (##cdr _e1938020590_)))
                                           (if (gx#stx-datum? _hd1938120594_)
                                               (if (equal? (gx#stx-e
                                                            _hd1938120594_)
                                                           'and:)
                                                   ((lambda (_L20600_)
                                                      (let ((_g2061220624_
                                                             (lambda (_g2061320620_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2061320620_))))
                                                        (let ((_g2061120635_
                                                               (lambda (_g2061320628_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda () _K19324_)))))
                  (let ((_g2061020667_
                         (lambda (_g2061320639_)
                           (if (gx#stx-pair? _g2061320639_)
                               (let ((_e2061620642_
                                      (gx#syntax-e _g2061320639_)))
                                 (let ((_hd2061720646_ (##car _e2061620642_))
                                       (_tl2061820649_ (##cdr _e2061620642_)))
                                   ((lambda (_L20652_ _L20654_)
                                      (_generate117791_
                                       _tgt19321_
                                       _L20654_
                                       (_generate117791_
                                        _tgt19321_
                                        (cons 'and: _L20652_)
                                        _K19324_
                                        _E19325_)
                                       _E19325_))
                                    _tl2061820649_
                                    _hd2061720646_)))
                               (_g2061120635_ _g2061320639_)))))
                    (_g2061020667_ _L20600_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1938220597_)
                                                   (_g1935520583_
                                                    _g1937020587_))
                                               (_g1935520583_ _g1937020587_))))
                                       (_g1935520583_ _g1937020587_)))))
                            (let ((_g1935320960_
                                   (lambda (_g1937020675_)
                                     (if (gx#stx-pair? _g1937020675_)
                                         (let ((_e1937320678_
                                                (gx#syntax-e _g1937020675_)))
                                           (let ((_hd1937420682_
                                                  (##car _e1937320678_))
                                                 (_tl1937520685_
                                                  (##cdr _e1937320678_)))
                                             (if (gx#stx-datum? _hd1937420682_)
                                                 (if (equal? (gx#stx-e
                                                              _hd1937420682_)
                                                             '?:)
                                                     (if (gx#stx-pair?
                                                          _tl1937520685_)
                                                         (let ((_e1937620688_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1937520685_)))
                   (let ((_hd1937720692_ (##car _e1937620688_))
                         (_tl1937820695_ (##cdr _e1937620688_)))
                     ((lambda (_L20698_ _L20700_)
                        (let ((_g2071620748_
                               (lambda (_g2071720744_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2071720744_))))
                          (let ((_g2071520846_
                                 (lambda (_g2071720752_)
                                   (if (gx#stx-pair? _g2071720752_)
                                       (let ((_e2073120755_
                                              (gx#syntax-e _g2071720752_)))
                                         (let ((_hd2073220759_
                                                (##car _e2073120755_))
                                               (_tl2073320762_
                                                (##cdr _e2073120755_)))
                                           (if (gx#stx-datum? _hd2073220759_)
                                               (if (equal? (gx#stx-e
                                                            _hd2073220759_)
                                                           '::)
                                                   (if (gx#stx-pair?
                                                        _tl2073320762_)
                                                       (let ((_e2073420765_
                                                              (gx#syntax-e
                                                               _tl2073320762_)))
                                                         (let ((_hd2073520769_
                                                                (##car _e2073420765_))
                                                               (_tl2073620772_
                                                                (##cdr _e2073420765_)))
                                                           (if (gx#stx-pair?
                                                                _tl2073620772_)
                                                               (let ((_e2073720775_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2073620772_)))
                         (let ((_hd2073820779_ (##car _e2073720775_))
                               (_tl2073920782_ (##cdr _e2073720775_)))
                           (if (gx#stx-datum? _hd2073820779_)
                               (if (equal? (gx#stx-e _hd2073820779_) '=>:)
                                   (if (gx#stx-pair? _tl2073920782_)
                                       (let ((_e2074020785_
                                              (gx#syntax-e _tl2073920782_)))
                                         (let ((_hd2074120789_
                                                (##car _e2074020785_))
                                               (_tl2074220792_
                                                (##cdr _e2074020785_)))
                                           (if (gx#stx-null? _tl2074220792_)
                                               ((lambda (_L20795_ _L20797_)
                                                  (let ((_g2081520823_
                                                         (lambda (_g2081620819_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2081620819_))))
                                                    (let ((_g2081420842_
                                                           (lambda (_g2081620827_)
                                                             ((lambda (_L20830_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'if)
                                (cons (cons (gx#datum->syntax '#f '?)
                                            (cons _L20700_
                                                  (cons _L19342_ '())))
                                      (cons (cons (gx#datum->syntax '#f 'let)
                                                  (cons (cons (cons _L20830_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons _L20797_ (cons _L19342_ '())) '()))
                      '())
                (cons (_generate117791_ _L20830_ _L20795_ _K19324_ _E19325_)
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _E19325_ '()))))))
                      _g2081620827_))))
              (_g2081420842_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2074120789_
                                                _hd2073520769_)
                                               (_g2071620748_ _g2071720752_))))
                                       (_g2071620748_ _g2071720752_))
                                   (_g2071620748_ _g2071720752_))
                               (_g2071620748_ _g2071720752_))))
                       (_g2071620748_ _g2071720752_))))
               (_g2071620748_ _g2071720752_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2071620748_
                                                    _g2071720752_))
                                               (_g2071620748_ _g2071720752_))))
                                       (_g2071620748_ _g2071720752_)))))
                            (let ((_g2071420917_
                                   (lambda (_g2071720850_)
                                     (if (gx#stx-pair? _g2071720850_)
                                         (let ((_e2072320853_
                                                (gx#syntax-e _g2071720850_)))
                                           (let ((_hd2072420857_
                                                  (##car _e2072320853_))
                                                 (_tl2072520860_
                                                  (##cdr _e2072320853_)))
                                             (if (gx#stx-datum? _hd2072420857_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2072420857_)
                                                             '=>:)
                                                     (if (gx#stx-pair?
                                                          _tl2072520860_)
                                                         (let ((_e2072620863_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2072520860_)))
                   (let ((_hd2072720867_ (##car _e2072620863_))
                         (_tl2072820870_ (##cdr _e2072620863_)))
                     (if (gx#stx-null? _tl2072820870_)
                         ((lambda (_L20873_)
                            (let ((_g2088620894_
                                   (lambda (_g2088720890_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2088720890_))))
                              (let ((_g2088520913_
                                     (lambda (_g2088720898_)
                                       ((lambda (_L20901_)
                                          (let ()
                                            (cons (gx#datum->syntax '#f 'let)
                                                  (cons (cons (cons _L20901_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons _L20700_ (cons _L19342_ '())) '()))
                      '())
                (cons (cons (gx#datum->syntax '#f 'if)
                            (cons _L20901_
                                  (cons (_generate117791_
                                         _L20901_
                                         _L20873_
                                         _K19324_
                                         _E19325_)
                                        (cons _E19325_ '()))))
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g2088720898_))))
                                (_g2088520913_ (gx#genident 'e)))))
                          _hd2072720867_)
                         (_g2071520846_ _g2071720850_))))
                 (_g2071520846_ _g2071720850_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2071520846_
                                                      _g2071720850_))
                                                 (_g2071520846_
                                                  _g2071720850_))))
                                         (_g2071520846_ _g2071720850_)))))
                              (let ((_g2071320945_
                                     (lambda (_g2071720921_)
                                       (if (gx#stx-pair? _g2071720921_)
                                           (let ((_e2071920924_
                                                  (gx#syntax-e _g2071720921_)))
                                             (let ((_hd2072020928_
                                                    (##car _e2071920924_))
                                                   (_tl2072120931_
                                                    (##cdr _e2071920924_)))
                                               (if (gx#stx-null?
                                                    _tl2072120931_)
                                                   ((lambda (_L20934_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '?)
                                (cons _L20700_ (cons _L19342_ '())))
                          (cons (_generate117791_
                                 _tgt19321_
                                 _L20934_
                                 _K19324_
                                 _E19325_)
                                (cons _E19325_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd2072020928_)
                                                   (_g2071420917_
                                                    _g2071720921_))))
                                           (_g2071420917_ _g2071720921_)))))
                                (let ((_g2071220956_
                                       (lambda (_g2071720949_)
                                         (if (gx#stx-null? _g2071720949_)
                                             ((lambda ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'if)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '?)
                          (cons _L20700_ (cons _L19342_ '())))
                    (cons _K19324_ (cons _E19325_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2071320945_ _g2071720949_)))))
                                  (_g2071220956_ _L20698_)))))))
                      _tl1937820695_
                      _hd1937720692_)))
                 (_g1935420671_ _g1937020675_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1935420671_
                                                      _g1937020675_))
                                                 (_g1935420671_
                                                  _g1937020675_))))
                                         (_g1935420671_ _g1937020675_)))))
                              (_g1935320960_ _ptree19323_))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _g1932819339_))))
                        (_g1932620964_ _tgt19321_)))))
                 (_generate-splice17793_
                  (lambda (_tgt18693_ _hd18695_ _rest18696_ _K18697_ _E18698_)
                    (let ((_g1870018717_
                           (lambda (_g1870118713_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1870118713_))))
                      (let ((_g1869919317_
                             (lambda (_g1870118721_)
                               (if (gx#stx-pair/null? _g1870118721_)
                                   (if (fx>= (gx#stx-length _g1870118721_) '0)
                                       (let ((_g29791_
                                              (gx#syntax-split-splice
                                               _g1870118721_
                                               '0)))
                                         (begin
                                           (let ((_g29792_
                                                  (values-count _g29791_)))
                                             (if (not (fx= _g29792_ 2))
                                                 (error "Context expects 2 values"
                                                        _g29792_)))
                                           (let ((_target1870318724_
                                                  (values-ref _g29791_ 0))
                                                 (_tl1870518727_
                                                  (values-ref _g29791_ 1)))
                                             (if (gx#stx-null? _tl1870518727_)
                                                 (letrec ((_loop1870618730_
                                                           (lambda (_hd1870418734_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _var1871018737_)
                     (if (gx#stx-pair? _hd1870418734_)
                         (let ((_e1870718740_ (gx#syntax-e _hd1870418734_)))
                           (let ((_lp-hd1870818744_ (##car _e1870718740_))
                                 (_lp-tl1870918747_ (##cdr _e1870718740_)))
                             (_loop1870618730_
                              _lp-tl1870918747_
                              (cons _lp-hd1870818744_ _var1871018737_))))
                         (let ((_var1871118750_ (reverse _var1871018737_)))
                           ((lambda (_L18754_)
                              (let ()
                                (let ((_g1877018787_
                                       (lambda (_g1877118783_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1877118783_))))
                                  (let ((_g1876919305_
                                         (lambda (_g1877118791_)
                                           (if (gx#stx-pair/null?
                                                _g1877118791_)
                                               (if (fx>= (gx#stx-length
                                                          _g1877118791_)
                                                         '0)
                                                   (let ((_g29793_
                                                          (gx#syntax-split-splice
                                                           _g1877118791_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29794_
                                                              (values-count
                                                               _g29793_)))
                                                         (if (not (fx= _g29794_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29794_)))
               (let ((_target1877318794_ (values-ref _g29793_ 0))
                     (_tl1877518797_ (values-ref _g29793_ 1)))
                 (if (gx#stx-null? _tl1877518797_)
                     (letrec ((_loop1877618800_
                               (lambda (_hd1877418804_ _var-r1878018807_)
                                 (if (gx#stx-pair? _hd1877418804_)
                                     (let ((_e1877718810_
                                            (gx#syntax-e _hd1877418804_)))
                                       (let ((_lp-hd1877818814_
                                              (##car _e1877718810_))
                                             (_lp-tl1877918817_
                                              (##cdr _e1877718810_)))
                                         (_loop1877618800_
                                          _lp-tl1877918817_
                                          (cons _lp-hd1877818814_
                                                _var-r1878018807_))))
                                     (let ((_var-r1878118820_
                                            (reverse _var-r1878018807_)))
                                       ((lambda (_L18824_)
                                          (let ()
                                            (let ((_g1884118858_
                                                   (lambda (_g1884218854_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1884218854_))))
                                              (let ((_g1884019293_
                                                     (lambda (_g1884218862_)
                                                       (if (gx#stx-pair/null?
                                                            _g1884218862_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1884218862_)
                             '0)
                       (let ((_g29795_
                              (gx#syntax-split-splice _g1884218862_ '0)))
                         (begin
                           (let ((_g29796_ (values-count _g29795_)))
                             (if (not (fx= _g29796_ 2))
                                 (error "Context expects 2 values" _g29796_)))
                           (let ((_target1884418865_ (values-ref _g29795_ 0))
                                 (_tl1884618868_ (values-ref _g29795_ 1)))
                             (if (gx#stx-null? _tl1884618868_)
                                 (letrec ((_loop1884718871_
                                           (lambda (_hd1884518875_
                                                    _init1885118878_)
                                             (if (gx#stx-pair? _hd1884518875_)
                                                 (let ((_e1884818881_
                                                        (gx#syntax-e
                                                         _hd1884518875_)))
                                                   (let ((_lp-hd1884918885_
                                                          (##car _e1884818881_))
                                                         (_lp-tl1885018888_
                                                          (##cdr _e1884818881_)))
                                                     (_loop1884718871_
                                                      _lp-tl1885018888_
                                                      (cons _lp-hd1884918885_
                                                            _init1885118878_))))
                                                 (let ((_init1885218891_
                                                        (reverse _init1885118878_)))
                                                   ((lambda (_L18895_)
                                                      (let ()
                                                        (let ((_g1891218920_
                                                               (lambda (_g1891318916_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1891318916_))))
                  (let ((_g1891119289_
                         (lambda (_g1891318924_)
                           ((lambda (_L18927_)
                              (let ()
                                (let ((_g1894018948_
                                       (lambda (_g1894118944_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1894118944_))))
                                  (let ((_g1893919285_
                                         (lambda (_g1894118952_)
                                           ((lambda (_L18955_)
                                              (let ()
                                                (let ((_g1896818976_
                                                       (lambda (_g1896918972_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1896918972_))))
                                                  (let ((_g1896719281_
                                                         (lambda (_g1896918980_)
                                                           ((lambda (_L18983_)
                                                              (let ()
                                                                (let ((_g1899619004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1899719000_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1899719000_))))
                          (let ((_g1899519277_
                                 (lambda (_g1899719008_)
                                   ((lambda (_L19011_)
                                      (let ()
                                        (let ((_g1902419032_
                                               (lambda (_g1902519028_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1902519028_))))
                                          (let ((_g1902319273_
                                                 (lambda (_g1902519036_)
                                                   ((lambda (_L19039_)
                                                      (let ()
                                                        (let ((_g1905219060_
                                                               (lambda (_g1905319056_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1905319056_))))
                  (let ((_g1905119269_
                         (lambda (_g1905319064_)
                           ((lambda (_L19067_)
                              (let ()
                                (let ((_g1908019088_
                                       (lambda (_g1908119084_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1908119084_))))
                                  (let ((_g1907919265_
                                         (lambda (_g1908119092_)
                                           ((lambda (_L19095_)
                                              (let ()
                                                (let ((_g1910819116_
                                                       (lambda (_g1910919112_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1910919112_))))
                                                  (let ((_g1910719250_
                                                         (lambda (_g1910919120_)
                                                           ((lambda (_L19123_)
                                                              (let ()
                                                                (let ((_g1913619144_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1913719140_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1913719140_))))
                          (let ((_g1913519238_
                                 (lambda (_g1913719148_)
                                   ((lambda (_L19151_)
                                      (let ()
                                        (let ((_g1916419172_
                                               (lambda (_g1916519168_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1916519168_))))
                                          (let ((_g1916319234_
                                                 (lambda (_g1916519176_)
                                                   ((lambda (_L19179_)
                                                      (let ()
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'letrec)
                        (cons (cons (cons _L18955_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L19067_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr (lambda (_g1919319204_ _g1919419207_)
                                     (cons _g1919319204_ _g1919419207_))
                                   '()
                                   _L18754_)))
                    (cons _L19095_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (cons (cons _L19011_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons (cons _L19039_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _L19067_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1919519210_
                                                        _g1919619213_)
                                                 (cons _g1919519210_
                                                       _g1919619213_))
                                               '()
                                               _L18824_))))
                          (cons _L19179_ '())))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons _L18983_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons (cons _L19067_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1919719216_
                                                        _g1919819219_)
                                                 (cons _g1919719216_
                                                       _g1919819219_))
                                               '()
                                               _L18824_)))
                                (cons (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'pair?)
                                                        (cons _L19067_ '()))
                                                  (cons (cons _L19011_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '##car)
                                  (cons _L19067_ '()))
                            (cons _L19067_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g1919919222_
                                                    _g1920019225_)
                                             (cons _g1919919222_
                                                   _g1920019225_))
                                           '()
                                           _L18824_)))))
                (cons _L19151_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              (cons (cons _L18983_
                                          (cons _L18927_
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g1920119228_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1920219231_)
                   (cons _g1920119228_ _g1920219231_))
                 '()
                 _L18895_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1916519176_))))
                                            (_g1916319234_
                                             (_generate117791_
                                              _L19039_
                                              _hd18695_
                                              _L19123_
                                              _L19151_))))))
                                    _g1913719148_))))
                            (_g1913519238_
                             (cons _L18955_
                                   (cons _L19067_
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g1924119244_
                                                           _g1924219247_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'reverse)
                        (cons _g1924119244_ '()))
                  _g1924219247_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()
                                                  _L18824_)))))))))
                    _g1910919120_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1910719250_
                                                     (cons _L18983_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##cdr)
                               (cons _L19067_ '()))
                         (begin
                           (gx#syntax-check-splice-targets _L18824_ _L18754_)
                           (foldr (lambda (_g1925319257_
                                           _g1925419260_
                                           _g1925519262_)
                                    (cons (cons (gx#datum->syntax '#f 'cons)
                                                (cons _g1925419260_
                                                      (cons _g1925319257_
                                                            '())))
                                          _g1925519262_))
                                  '()
                                  _L18824_
                                  _L18754_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g1908119092_))))
                                    (_g1907919265_
                                     (_generate117791_
                                      _L19067_
                                      _rest18696_
                                      _K18697_
                                      _E18698_))))))
                            _g1905319064_))))
                    (_g1905119269_ (gx#genident 'rest))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1902519036_))))
                                            (_g1902319273_
                                             (gx#genident 'hd))))))
                                    _g1899719008_))))
                            (_g1899519277_ (gx#genident 'splice-try))))))
                    _g1896918980_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1896719281_
                                                     (gx#genident
                                                      'splice-loop))))))
                                            _g1894118952_))))
                                    (_g1893919285_
                                     (gx#genident 'splice-rest))))))
                            _g1891318924_))))
                    (_g1891119289_ _tgt18693_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _init1885218891_))))))
                                   (_loop1884718871_ _target1884418865_ '()))
                                 (_g1884118858_ _g1884218862_)))))
                       (_g1884118858_ _g1884218862_))
                   (_g1884118858_ _g1884218862_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1884019293_
                                                 (make-list
                                                  (gx#stx-length
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g1929619299_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1929719302_)
                      (cons _g1929619299_ _g1929719302_))
                    '()
                    _L18754_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         '@list)
                                                        '())))))))
                                        _var-r1878118820_))))))
                       (_loop1877618800_ _target1877318794_ '()))
                     (_g1877018787_ _g1877118791_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1877018787_
                                                    _g1877118791_))
                                               (_g1877018787_
                                                _g1877118791_)))))
                                    (_g1876919305_
                                     (gx#gentemps
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1930819311_
                                                        _g1930919314_)
                                                 (cons _g1930819311_
                                                       _g1930919314_))
                                               '()
                                               _L18754_))))))))
                            _var1871118750_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop1870618730_
                                                    _target1870318724_
                                                    '()))
                                                 (_g1870018717_
                                                  _g1870118721_)))))
                                       (_g1870018717_ _g1870118721_))
                                   (_g1870018717_ _g1870118721_)))))
                        (_g1869919317_
                         (|gerbil/core::<match>[1]#match-pattern-vars|
                          _hd18695_))))))
                 (_generate-simple-vector17794_
                  (lambda (_tgt18535_
                           _body18537_
                           _start18538_
                           _K18539_
                           _E18540_)
                    ((letrec ((_recur18542_
                               (lambda (_rest18545_ _off18547_)
                                 (let ((_g1855018562_
                                        (lambda (_g1855118558_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1855118558_))))
                                   (let ((_g1854918573_
                                          (lambda (_g1855118566_)
                                            ((lambda () _K18539_)))))
                                     (let ((_g1854818689_
                                            (lambda (_g1855118577_)
                                              (if (gx#stx-pair? _g1855118577_)
                                                  (let ((_e1855418580_
                                                         (gx#syntax-e
                                                          _g1855118577_)))
                                                    (let ((_hd1855518584_
                                                           (##car _e1855418580_))
                                                          (_tl1855618587_
                                                           (##cdr _e1855418580_)))
                                                      ((lambda (_L18590_
                                                                _L18592_)
                                                         (let ((_g1860718626_
                                                                (lambda (_g1860818622_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1860818622_))))
                   (let ((_g1860618685_
                          (lambda (_g1860818630_)
                            (if (gx#stx-pair? _g1860818630_)
                                (let ((_e1861218633_
                                       (gx#syntax-e _g1860818630_)))
                                  (let ((_hd1861318637_ (##car _e1861218633_))
                                        (_tl1861418640_ (##cdr _e1861218633_)))
                                    (if (gx#stx-pair? _tl1861418640_)
                                        (let ((_e1861518643_
                                               (gx#syntax-e _tl1861418640_)))
                                          (let ((_hd1861618647_
                                                 (##car _e1861518643_))
                                                (_tl1861718650_
                                                 (##cdr _e1861518643_)))
                                            (if (gx#stx-pair? _tl1861718650_)
                                                (let ((_e1861818653_
                                                       (gx#syntax-e
                                                        _tl1861718650_)))
                                                  (let ((_hd1861918657_
                                                         (##car _e1861818653_))
                                                        (_tl1862018660_
                                                         (##cdr _e1861818653_)))
                                                    (if (gx#stx-null?
                                                         _tl1862018660_)
                                                        ((lambda (_L18663_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18665_
                          _L18666_)
                   (let ()
                     (cons (gx#datum->syntax '#f 'let)
                           (cons (cons (cons _L18666_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##vector-ref)
                                                         (cons _L18665_
                                                               (cons _L18663_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())
                                 (cons (_generate117791_
                                        _L18666_
                                        _L18592_
                                        (_recur18542_
                                         _L18590_
                                         (fx1+ _off18547_))
                                        _E18540_)
                                       '())))))
                 _hd1861918657_
                 _hd1861618647_
                 _hd1861318637_)
                (_g1860718626_ _g1860818630_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1860718626_
                                                 _g1860818630_))))
                                        (_g1860718626_ _g1860818630_))))
                                (_g1860718626_ _g1860818630_)))))
                     (_g1860618685_
                      (list (gx#genident 'e) _tgt18535_ _off18547_)))))
               _tl1855618587_
               _hd1855518584_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1854918573_
                                                   _g1855118577_)))))
                                       (_g1854818689_ _rest18545_)))))))
                       _recur18542_)
                     _body18537_
                     _start18538_)))
                 (_generate-list-vector17795_
                  (lambda (_tgt18445_
                           _body18447_
                           _tgt->list18448_
                           _start18449_
                           _K18450_
                           _E18451_)
                    (let ((_g1845318472_
                           (lambda (_g1845418468_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1845418468_))))
                      (let ((_g1845218531_
                             (lambda (_g1845418476_)
                               (if (gx#stx-pair? _g1845418476_)
                                   (let ((_e1845818479_
                                          (gx#syntax-e _g1845418476_)))
                                     (let ((_hd1845918483_
                                            (##car _e1845818479_))
                                           (_tl1846018486_
                                            (##cdr _e1845818479_)))
                                       (if (gx#stx-pair? _tl1846018486_)
                                           (let ((_e1846118489_
                                                  (gx#syntax-e
                                                   _tl1846018486_)))
                                             (let ((_hd1846218493_
                                                    (##car _e1846118489_))
                                                   (_tl1846318496_
                                                    (##cdr _e1846118489_)))
                                               (if (gx#stx-pair?
                                                    _tl1846318496_)
                                                   (let ((_e1846418499_
                                                          (gx#syntax-e
                                                           _tl1846318496_)))
                                                     (let ((_hd1846518503_
                                                            (##car _e1846418499_))
                                                           (_tl1846618506_
                                                            (##cdr _e1846418499_)))
                                                       (if (gx#stx-null?
                                                            _tl1846618506_)
                                                           ((lambda (_L18509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L18511_
                             _L18512_)
                      (let ()
                        (cons (gx#datum->syntax '#f 'let)
                              (cons (cons (cons _L18512_
                                                (cons (cons _L18509_
                                                            (cons _L18511_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())
                                    (cons (_generate117791_
                                           _L18512_
                                           _body18447_
                                           _K18450_
                                           _E18451_)
                                          '())))))
                    _hd1846518503_
                    _hd1846218493_
                    _hd1845918483_)
                   (_g1845318472_ _g1845418476_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1845318472_
                                                    _g1845418476_))))
                                           (_g1845318472_ _g1845418476_))))
                                   (_g1845318472_ _g1845418476_)))))
                        (_g1845218531_
                         (list (gx#genident 'e)
                               _tgt18445_
                               _tgt->list18448_))))))
                 (_generate-struct17796_
                  (lambda (_info18178_
                           _tgt18180_
                           _body18181_
                           _K18182_
                           _E18183_)
                    (let ((_rtd18185_
                           (if (|gerbil/core::<MOP>::<MOP:2>[1]#extended-struct-info?|
                                _info18178_)
                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor|
                                _info18178_)
                               '#f)))
                      (let ((_fields18195_
                             ((letrec ((_lp18188_
                                        (lambda (_rtd18191_ _k18193_)
                                          (if _rtd18191_
                                              (_lp18188_
                                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor-e|
                                                (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-super|
                                                 _rtd18191_))
                                               (fx+ (length (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-fields|
                                                             _rtd18191_))
                                                    _k18193_))
                                              _k18193_))))
                                _lp18188_)
                              _rtd18185_
                              '0)))
                        (let ((_final?18198_
                               (if _rtd18185_
                                   (assgetq 'final:
                                            (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-plist|
                                             _rtd18185_))
                                   '#f)))
                          (let ((_g1820118209_
                                 (lambda (_g1820218205_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1820218205_))))
                            (let ((_g1820018441_
                                   (lambda (_g1820218213_)
                                     ((lambda (_L18216_)
                                        (let ()
                                          (let ((_g1823118239_
                                                 (lambda (_g1823218235_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1823218235_))))
                                            (let ((_g1823018437_
                                                   (lambda (_g1823218243_)
                                                     ((lambda (_L18246_)
                                                        (let ()
                                                          (let ((_g1825918267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1826018263_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1826018263_))))
                    (let ((_g1825818433_
                           (lambda (_g1826018271_)
                             ((lambda (_L18274_)
                                (let ()
                                  (let ()
                                    (let ((_g1829018311_
                                           (lambda (_g1829118307_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1829118307_))))
                                      (let ((_g1828918354_
                                             (lambda (_g1829118315_)
                                               (if (gx#stx-pair? _g1829118315_)
                                                   (let ((_e1830018318_
                                                          (gx#syntax-e
                                                           _g1829118315_)))
                                                     (let ((_hd1830118322_
                                                            (##car _e1830018318_))
                                                           (_tl1830218325_
                                                            (##cdr _e1830018318_)))
                                                       (if (gx#stx-datum?
                                                            _hd1830118322_)
                                                           (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1830118322_)
                               'list:)
                       (if (gx#stx-pair? _tl1830218325_)
                           (let ((_e1830318328_ (gx#syntax-e _tl1830218325_)))
                             (let ((_hd1830418332_ (##car _e1830318328_))
                                   (_tl1830518335_ (##cdr _e1830318328_)))
                               (if (gx#stx-null? _tl1830518335_)
                                   ((lambda (_L18338_)
                                      (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons _L18274_
                                                        (cons _L18246_
                                                              (cons _L18216_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (_generate-list-vector17795_
                                                         _tgt18180_
                                                         _L18338_
                                                         (gx#datum->syntax
                                                          '#f
                                                          'struct->list)
                                                         '1
                                                         _K18182_
                                                         _E18183_)
                                                        (cons _E18183_ '())))))
                                    _hd1830418332_)
                                   (_g1829018311_ _g1829118315_))))
                           (_g1829018311_ _g1829118315_))
                       (_g1829018311_ _g1829118315_))
                   (_g1829018311_ _g1829118315_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1829018311_
                                                    _g1829118315_)))))
                                        (let ((_g1828818429_
                                               (lambda (_g1829118358_)
                                                 (if (gx#stx-pair?
                                                      _g1829118358_)
                                                     (let ((_e1829318361_
                                                            (gx#syntax-e
                                                             _g1829118358_)))
                                                       (let ((_hd1829418365_
                                                              (##car _e1829318361_))
                                                             (_tl1829518368_
                                                              (##cdr _e1829318361_)))
                                                         (if (gx#stx-datum?
                                                              _hd1829418365_)
                                                             (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _hd1829418365_)
                                 'simple:)
                         (if (gx#stx-pair? _tl1829518368_)
                             (let ((_e1829618371_
                                    (gx#syntax-e _tl1829518368_)))
                               (let ((_hd1829718375_ (##car _e1829618371_))
                                     (_tl1829818378_ (##cdr _e1829618371_)))
                                 (if (gx#stx-null? _tl1829818378_)
                                     ((lambda (_L18381_)
                                        (let ((_K18394_
                                               (_generate-simple-vector17794_
                                                _tgt18180_
                                                _L18381_
                                                '1
                                                _K18182_
                                                _E18183_)))
                                          (if (if _rtd18185_
                                                  (fx<= (gx#stx-length
                                                         _L18381_)
                                                        _fields18195_)
                                                  '#f)
                                              (cons (gx#datum->syntax '#f 'if)
                                                    (cons (cons _L18274_
                                                                (cons _L18246_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L18216_ '())))
                  (cons _K18394_ (cons _E18183_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g1839718405_
                                                     (lambda (_g1839818401_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1839818401_))))
                                                (let ((_g1839618425_
                                                       (lambda (_g1839818409_)
                                                         ((lambda (_L18412_)
                                                            (let ()
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'if)
                            (cons (cons (gx#datum->syntax '#f 'and)
                                        (cons (cons _L18274_
                                                    (cons _L18246_
                                                          (cons _L18216_ '())))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##fx<)
                                                          (cons _L18412_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     '##vector-length)
                                    (cons _L18216_ '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons _K18394_ (cons _E18183_ '()))))))
                  _g1839818409_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1839618425_
                                                   (gx#stx-length
                                                    _L18381_)))))))
                                      _hd1829718375_)
                                     (_g1828918354_ _g1829118358_))))
                             (_g1828918354_ _g1829118358_))
                         (_g1828918354_ _g1829118358_))
                     (_g1828918354_ _g1829118358_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1828918354_
                                                      _g1829118358_)))))
                                          (_g1828818429_ _body18181_)))))))
                              _g1826018271_))))
                      (_g1825818433_
                       (if _final?18198_
                           (gx#datum->syntax '#f 'direct-struct-instance?)
                           (gx#datum->syntax '#f 'struct-instance?)))))))
              _g1823218243_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1823018437_
                                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                                                _info18178_))))))
                                      _g1820218213_))))
                              (_g1820018441_ _tgt18180_))))))))
                 (_generate-class17797_
                  (lambda (_info17799_
                           _tgt17801_
                           _body17802_
                           _K17803_
                           _E17804_)
                    (let ((_rtd17806_
                           (if (|gerbil/core::<MOP>::<MOP:2>[1]#extended-class-info?|
                                _info17799_)
                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor|
                                _info17799_)
                               '#f)))
                      (let ((_known-slot?17808_ #!void))
                        (letrec ((_rtd-known-slot?17810_
                                  (lambda (_rtd18159_ _slot18161_)
                                    (if _rtd18159_
                                        (let ((_$e18163_
                                               (memq _slot18161_
                                                     (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-slots|
                                                      _rtd18159_))))
                                          (if _$e18163_
                                              _$e18163_
                                              (ormap (lambda (_g1816618168_)
                                                       (_rtd-known-slot?17810_
                                                        _g1816618168_
                                                        _slot18161_))
                                                     (map |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor-e|
                                                          (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-super|
                                                           _rtd18159_)))))
                                        '#f)))
                                 (_recur17811_
                                  (lambda (_klass17945_ _rest17947_)
                                    (let ((_g1795017966_
                                           (lambda (_g1795117962_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1795117962_))))
                                      (let ((_g1794917977_
                                             (lambda (_g1795117970_)
                                               ((lambda () _K17803_)))))
                                        (let ((_g1794818155_
                                               (lambda (_g1795117981_)
                                                 (if (gx#stx-pair?
                                                      _g1795117981_)
                                                     (let ((_e1795517984_
                                                            (gx#syntax-e
                                                             _g1795117981_)))
                                                       (let ((_hd1795617988_
                                                              (##car _e1795517984_))
                                                             (_tl1795717991_
                                                              (##cdr _e1795517984_)))
                                                         (if (gx#stx-pair?
                                                              _tl1795717991_)
                                                             (let ((_e1795817994_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1795717991_)))
                       (let ((_hd1795917998_ (##car _e1795817994_))
                             (_tl1796018001_ (##cdr _e1795817994_)))
                         ((lambda (_L18004_ _L18006_ _L18007_)
                            (let ((_g1802318031_
                                   (lambda (_g1802418027_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1802418027_))))
                              (let ((_g1802218151_
                                     (lambda (_g1802418035_)
                                       ((lambda (_L18038_)
                                          (let ()
                                            (let ((_g1805018058_
                                                   (lambda (_g1805118054_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1805118054_))))
                                              (let ((_g1804918147_
                                                     (lambda (_g1805118062_)
                                                       ((lambda (_L18065_)
                                                          (let ()
                                                            (let ((_g1807818086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g1807918082_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1807918082_))))
                      (let ((_g1807718143_
                             (lambda (_g1807918090_)
                               ((lambda (_L18093_)
                                  (let ()
                                    (let ((_g1810618114_
                                           (lambda (_g1810718110_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1810718110_))))
                                      (let ((_g1810518139_
                                             (lambda (_g1810718118_)
                                               ((lambda (_L18121_)
                                                  (let ()
                                                    (let ((_K18134_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons (cons (cons _L18121_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##vector-ref)
                                                       (cons _L18038_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'fx1+)
                                 (cons _L18093_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons (_generate117791_
                                      _L18121_
                                      _L18006_
                                      (_recur17811_ _klass17945_ _L18004_)
                                      _E17804_)
                                     '())))))
              (let ()
                (if (_known-slot?17808_ _L18007_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _L18093_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'class-slot-offset)
                                                        (cons _L18065_
                                                              (cons _L18007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons _K18134_ '())))
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _L18093_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'class-slot-offset)
                                                        (cons _L18065_
                                                              (cons _L18007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons (cons (gx#datum->syntax '#f 'if)
                                            (cons _L18093_
                                                  (cons _K18134_
                                                        (cons _E17804_ '()))))
                                      '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1810718118_))))
                                        (_g1810518139_ (gx#genident 'e))))))
                                _g1807918090_))))
                        (_g1807718143_ (gx#genident 'slot))))))
                _g1805118062_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1804918147_
                                                 _klass17945_)))))
                                        _g1802418035_))))
                                (_g1802218151_ _tgt17801_))))
                          _tl1796018001_
                          _hd1795917998_
                          _hd1795617988_)))
                     (_g1794917977_ _g1795117981_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1794917977_
                                                      _g1795117981_)))))
                                          (_g1794818155_ _rest17947_)))))))
                          (begin
                            (set! _known-slot?17808_
                                  (if _rtd17806_
                                      (lambda (_key18172_)
                                        (let ((_slot18175_
                                               (keyword->symbol
                                                (gx#stx-e _key18172_))))
                                          (_rtd-known-slot?17810_
                                           _rtd17806_
                                           _slot18175_)))
                                      false))
                            (let ((_final?17809_
                                   (if _rtd17806_
                                       (assgetq 'final:
                                                (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-plist|
                                                 _rtd17806_))
                                       '#f)))
                              (let ((_g1781317821_
                                     (lambda (_g1781417817_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1781417817_))))
                                (let ((_g1781217941_
                                       (lambda (_g1781417825_)
                                         ((lambda (_L17828_)
                                            (let ()
                                              (let ((_g1784317851_
                                                     (lambda (_g1784417847_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1784417847_))))
                                                (let ((_g1784217937_
                                                       (lambda (_g1784417855_)
                                                         ((lambda (_L17858_)
                                                            (let ()
                                                              (let ((_g1787117879_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1787217875_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1787217875_))))
                        (let ((_g1787017933_
                               (lambda (_g1787217883_)
                                 ((lambda (_L17886_)
                                    (let ()
                                      (let ((_g1789917907_
                                             (lambda (_g1790017903_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1790017903_))))
                                        (let ((_g1789817929_
                                               (lambda (_g1790017911_)
                                                 ((lambda (_L17914_)
                                                    (let ()
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'if)
                                                              (cons (cons _L17914_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons _L17886_ (cons _L17858_ '())))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (cons _L17828_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'object-type)
                              (cons _L17858_ '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (_recur17811_
                                                     _L17828_
                                                     _body17802_)
                                                    '())))
                                  (cons _E17804_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1790017911_))))
                                          (_g1789817929_
                                           (if _final?17809_
                                               (gx#datum->syntax
                                                '#f
                                                'direct-class-instance?)
                                               (gx#datum->syntax
                                                '#f
                                                'class-instance?)))))))
                                  _g1787217883_))))
                          (_g1787017933_
                           (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                            _info17799_))))))
                  _g1784417855_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1784217937_
                                                   _tgt17801_)))))
                                          _g1781417825_))))
                                  (_g1781217941_
                                   (gx#genident 'class))))))))))))
          (_generate117791_ _tgt17786_ _ptree17787_ _K17788_ _E17789_))))
    (define |gerbil/core::<match>[1]#generate-match*|
      (lambda (_stx16783_ _tgt-lst16785_ _clauses16786_)
        (let ((_parse-body16788_
               (lambda (_hd-len17606_)
                 ((letrec ((_lp17609_
                            (lambda (_rest17612_ _r17614_)
                              (let ((_g1761717629_
                                     (lambda (_g1761817625_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1761817625_))))
                                (let ((_g1761617640_
                                       (lambda (_g1761817633_)
                                         ((lambda () _r17614_)))))
                                  (let ((_g1761517780_
                                         (lambda (_g1761817644_)
                                           (if (gx#stx-pair? _g1761817644_)
                                               (let ((_e1762117647_
                                                      (gx#syntax-e
                                                       _g1761817644_)))
                                                 (let ((_hd1762217651_
                                                        (##car _e1762117647_))
                                                       (_tl1762317654_
                                                        (##cdr _e1762117647_)))
                                                   ((lambda (_L17657_ _L17659_)
                                                      (let ((_g1767617692_
                                                             (lambda (_g1767717688_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1767717688_))))
                                                        (let ((_g1767517703_
                                                               (lambda (_g1767717696_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal match clause"
                             _stx16783_
                             _L17659_))))))
                  (let ((_g1767417744_
                         (lambda (_g1767717707_)
                           (if (gx#stx-pair? _g1767717707_)
                               (let ((_e1768417710_
                                      (gx#syntax-e _g1767717707_)))
                                 (let ((_hd1768517714_ (##car _e1768417710_))
                                       (_tl1768617717_ (##cdr _e1768417710_)))
                                   ((lambda (_L17720_ _L17722_)
                                      (if (if (gx#stx-list? _L17722_)
                                              (if (fx= (gx#stx-length _L17722_)
                                                       _hd-len17606_)
                                                  (if (gx#stx-list? _L17720_)
                                                      (not (gx#stx-null?
                                                            _L17720_))
                                                      '#f)
                                                  '#f)
                                              '#f)
                                          (_lp17609_
                                           _L17657_
                                           (cons (cons (gx#genident 'try-match)
                                                       (cons (gx#stx-map
                                                              (lambda (_g1773417736_)
                                                                (|gerbil/core::<match>[1]#parse-match-pattern|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1773417736_
                         _stx16783_))
                      _L17722_)
                     (cons (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'begin) _L17720_)
                            (let ((_$e17740_ (gx#stx-source _L17659_)))
                              (if _$e17740_
                                  _$e17740_
                                  (gx#stx-source _stx16783_))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r17614_))
                                          (_g1767517703_ _g1767717707_)))
                                    _tl1768617717_
                                    _hd1768517714_)))
                               (_g1767517703_ _g1767717707_)))))
                    (let ((_g1767317776_
                           (lambda (_g1767717748_)
                             (if (gx#stx-pair? _g1767717748_)
                                 (let ((_e1767917751_
                                        (gx#syntax-e _g1767717748_)))
                                   (let ((_hd1768017755_ (##car _e1767917751_))
                                         (_tl1768117758_
                                          (##cdr _e1767917751_)))
                                     (if (gx#identifier? _hd1768017755_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core::<match>[1]#_g29801_|
                                              _hd1768017755_)
                                             ((lambda (_L17761_)
                                                (if (if (gx#stx-list? _L17761_)
                                                        (not (gx#stx-null?
                                                              _L17761_))
                                                        '#f)
                                                    (if (gx#stx-null? _L17657_)
                                                        (cons (cons (gx#genident
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             'else)
                            (cons '#f
                                  (cons (gx#stx-wrap-source
                                         (cons (gx#datum->syntax '#f 'begin)
                                               _L17761_)
                                         (let ((_$e17772_
                                                (gx#stx-source _L17659_)))
                                           (if _$e17772_
                                               _$e17772_
                                               (gx#stx-source _stx16783_))))
                                        '())))
                      _r17614_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; misplaced else"
                 _stx16783_
                 _L17659_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1767417744_
                                                     _g1767717748_)))
                                              _tl1768117758_)
                                             (_g1767417744_ _g1767717748_))
                                         (_g1767417744_ _g1767717748_))))
                                 (_g1767417744_ _g1767717748_)))))
                      (_g1767317776_ _L17659_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1762317654_
                                                    _hd1762217651_)))
                                               (_g1761617640_
                                                _g1761817644_)))))
                                    (_g1761517780_ _rest17612_)))))))
                    _lp17609_)
                  _clauses16786_
                  '()))))
          (let ((_generate116792_
                 (lambda (_clause16794_ _body16796_ _E16797_)
                   ((letrec ((_recur16799_
                              (lambda (_rest16802_ _rest-targets16804_)
                                (let ((_g1680716819_
                                       (lambda (_g1680816815_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1680816815_))))
                                  (let ((_g1680616830_
                                         (lambda (_g1680816823_)
                                           ((lambda () _body16796_)))))
                                    (let ((_g1680517101_
                                           (lambda (_g1680816834_)
                                             (if (gx#stx-pair? _g1680816834_)
                                                 (let ((_e1681116837_
                                                        (gx#syntax-e
                                                         _g1680816834_)))
                                                   (let ((_hd1681216841_
                                                          (##car _e1681116837_))
                                                         (_tl1681316844_
                                                          (##cdr _e1681116837_)))
                                                     ((lambda (_L16847_
                                                               _L16849_)
                                                        (let ((_g1686616878_
                                                               (lambda (_g1686716874_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1686716874_))))
                  (let ((_g1686517097_
                         (lambda (_g1686716882_)
                           (if (gx#stx-pair? _g1686716882_)
                               (let ((_e1687016885_
                                      (gx#syntax-e _g1686716882_)))
                                 (let ((_hd1687116889_ (##car _e1687016885_))
                                       (_tl1687216892_ (##cdr _e1687016885_)))
                                   ((lambda (_L16895_ _L16897_)
                                      (let ((_g1690916917_
                                             (lambda (_g1691016913_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1691016913_))))
                                        (let ((_g1690817093_
                                               (lambda (_g1691016921_)
                                                 ((lambda (_L16924_)
                                                    (let ()
                                                      (let ((_g1693616953_
                                                             (lambda (_g1693716949_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1693716949_))))
                                                        (let ((_g1693517089_
                                                               (lambda (_g1693716957_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#stx-pair/null? _g1693716957_)
                             (if (fx>= (gx#stx-length _g1693716957_) '0)
                                 (let ((_g29799_
                                        (gx#syntax-split-splice
                                         _g1693716957_
                                         '0)))
                                   (begin
                                     (let ((_g29800_ (values-count _g29799_)))
                                       (if (not (fx= _g29800_ 2))
                                           (error "Context expects 2 values"
                                                  _g29800_)))
                                     (let ((_target1693916960_
                                            (values-ref _g29799_ 0))
                                           (_tl1694116963_
                                            (values-ref _g29799_ 1)))
                                       (if (gx#stx-null? _tl1694116963_)
                                           (letrec ((_loop1694216966_
                                                     (lambda (_hd1694016970_
                                                              _var1694616973_)
                                                       (if (gx#stx-pair?
                                                            _hd1694016970_)
                                                           (let ((_e1694316976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1694016970_)))
                     (let ((_lp-hd1694416980_ (##car _e1694316976_))
                           (_lp-tl1694516983_ (##cdr _e1694316976_)))
                       (_loop1694216966_
                        _lp-tl1694516983_
                        (cons _lp-hd1694416980_ _var1694616973_))))
                   (let ((_var1694716986_ (reverse _var1694616973_)))
                     ((lambda (_L16990_)
                        (let ()
                          (let ((_g1700717015_
                                 (lambda (_g1700817011_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1700817011_))))
                            (let ((_g1700617085_
                                   (lambda (_g1700817019_)
                                     ((lambda (_L17022_)
                                        (let ()
                                          (let ((_g1703517043_
                                                 (lambda (_g1703617039_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1703617039_))))
                                            (let ((_g1703417073_
                                                   (lambda (_g1703617047_)
                                                     ((lambda (_L17050_)
                                                        (let ()
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let)
                          (cons (cons (cons _L16924_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons (begin
                                                                '#!void
                                                                (foldr (lambda (_g1706417067_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1706517070_)
                                 (cons _g1706417067_ _g1706517070_))
                               '()
                               _L16990_))
                      (cons _L17022_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons _L17050_ '()))))))
              _g1703617047_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1703417073_
                                               (|gerbil/core::<match>[1]#generate-match1|
                                                _stx16783_
                                                _L16897_
                                                _L16849_
                                                (cons _L16924_
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g1707617079_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1707717082_)
                         (cons _g1707617079_ _g1707717082_))
                       '()
                       _L16990_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _E16797_))))))
                                      _g1700817019_))))
                              (_g1700617085_
                               (_recur16799_ _L16847_ _L16895_))))))
                      _var1694716986_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1694216966_
                                              _target1693916960_
                                              '()))
                                           (_g1693616953_ _g1693716957_)))))
                                 (_g1693616953_ _g1693716957_))
                             (_g1693616953_ _g1693716957_)))))
                  (_g1693517089_
                   (|gerbil/core::<match>[1]#match-pattern-vars| _L16849_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1691016921_))))
                                          (_g1690817093_ (gx#genident 'K)))))
                                    _tl1687216892_
                                    _hd1687116889_)))
                               (_g1686616878_ _g1686716882_)))))
                    (_g1686517097_ _rest-targets16804_))))
              _tl1681316844_
              _hd1681216841_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1680616830_
                                                  _g1680816834_)))))
                                      (_g1680517101_ _rest16802_)))))))
                      _recur16799_)
                    _clause16794_
                    _tgt-lst16785_))))
            (letrec ((_generate-clauses16791_
                      (lambda (_rest17105_ _E17107_)
                        (let ((_g1711117127_
                               (lambda (_g1711217123_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1711217123_))))
                          (let ((_g1711017138_
                                 (lambda (_g1711217131_)
                                   ((lambda () _E17107_)))))
                            (let ((_g1710917314_
                                   (lambda (_g1711217142_)
                                     (if (gx#stx-pair? _g1711217142_)
                                         (let ((_e1711917145_
                                                (gx#syntax-e _g1711217142_)))
                                           (let ((_hd1712017149_
                                                  (##car _e1711917145_))
                                                 (_tl1712117152_
                                                  (##cdr _e1711917145_)))
                                             ((lambda (_L17155_ _L17157_)
                                                (let ((_g1717017189_
                                                       (lambda (_g1717117185_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1717117185_))))
                                                  (let ((_g1716917310_
                                                         (lambda (_g1717117193_)
                                                           (if (gx#stx-pair?
                                                                _g1717117193_)
                                                               (let ((_e1717517196_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1717117193_)))
                         (let ((_hd1717617200_ (##car _e1717517196_))
                               (_tl1717717203_ (##cdr _e1717517196_)))
                           (if (gx#stx-pair? _tl1717717203_)
                               (let ((_e1717817206_
                                      (gx#syntax-e _tl1717717203_)))
                                 (let ((_hd1717917210_ (##car _e1717817206_))
                                       (_tl1718017213_ (##cdr _e1717817206_)))
                                   (if (gx#stx-pair? _tl1718017213_)
                                       (let ((_e1718117216_
                                              (gx#syntax-e _tl1718017213_)))
                                         (let ((_hd1718217220_
                                                (##car _e1718117216_))
                                               (_tl1718317223_
                                                (##cdr _e1718117216_)))
                                           (if (gx#stx-null? _tl1718317223_)
                                               ((lambda (_L17226_
                                                         _L17228_
                                                         _L17229_)
                                                  (let ((_g1724617261_
                                                         (lambda (_g1724717257_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g1724717257_))))
                                                    (let ((_g1724517306_
                                                           (lambda (_g1724717265_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1724717265_)
                         (let ((_e1725017268_ (gx#syntax-e _g1724717265_)))
                           (let ((_hd1725117272_ (##car _e1725017268_))
                                 (_tl1725217275_ (##cdr _e1725017268_)))
                             (if (gx#stx-pair? _tl1725217275_)
                                 (let ((_e1725317278_
                                        (gx#syntax-e _tl1725217275_)))
                                   (let ((_hd1725417282_ (##car _e1725317278_))
                                         (_tl1725517285_
                                          (##cdr _e1725317278_)))
                                     (if (gx#stx-null? _tl1725517285_)
                                         ((lambda (_L17288_ _L17290_)
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L17229_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f 'lambda)
                                          (cons '() (cons _L17290_ '())))
                                    '()))
                        '())
                  (cons _L17288_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd1725417282_
                                          _hd1725117272_)
                                         (_g1724617261_ _g1724717265_))))
                                 (_g1724617261_ _g1724717265_))))
                         (_g1724617261_ _g1724717265_)))))
              (_g1724517306_
               (list (if (gx#stx-e _L17228_)
                         (_generate116792_ _L17228_ _L17226_ _E17107_)
                         _L17226_)
                     (_generate-clauses16791_
                      _L17155_
                      (cons _L17229_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1718217220_
                                                _hd1717917210_
                                                _hd1717617200_)
                                               (_g1717017189_ _g1717117193_))))
                                       (_g1717017189_ _g1717117193_))))
                               (_g1717017189_ _g1717117193_))))
                       (_g1717017189_ _g1717117193_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1716917310_ _L17157_))))
                                              _tl1712117152_
                                              _hd1712017149_)))
                                         (_g1711017138_ _g1711217142_)))))
                              (let ((_g1710817419_
                                     (lambda (_g1711217318_)
                                       (if (gx#stx-pair? _g1711217318_)
                                           (let ((_e1711417321_
                                                  (gx#syntax-e _g1711217318_)))
                                             (let ((_hd1711517325_
                                                    (##car _e1711417321_))
                                                   (_tl1711617328_
                                                    (##cdr _e1711417321_)))
                                               (if (gx#stx-null?
                                                    _tl1711617328_)
                                                   ((lambda (_L17331_)
                                                      (let ((_g1734217360_
                                                             (lambda (_g1734317356_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1734317356_))))
                                                        (let ((_g1734117415_
                                                               (lambda (_g1734317364_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#stx-pair? _g1734317364_)
                             (let ((_e1734617367_ (gx#syntax-e _g1734317364_)))
                               (let ((_hd1734717371_ (##car _e1734617367_))
                                     (_tl1734817374_ (##cdr _e1734617367_)))
                                 (if (gx#stx-pair? _tl1734817374_)
                                     (let ((_e1734917377_
                                            (gx#syntax-e _tl1734817374_)))
                                       (let ((_hd1735017381_
                                              (##car _e1734917377_))
                                             (_tl1735117384_
                                              (##cdr _e1734917377_)))
                                         (if (gx#stx-pair? _tl1735117384_)
                                             (let ((_e1735217387_
                                                    (gx#syntax-e
                                                     _tl1735117384_)))
                                               (let ((_hd1735317391_
                                                      (##car _e1735217387_))
                                                     (_tl1735417394_
                                                      (##cdr _e1735217387_)))
                                                 (if (gx#stx-null?
                                                      _tl1735417394_)
                                                     ((lambda (_L17397_
                                                               _L17399_)
                                                        (if (gx#stx-e _L17399_)
                                                            (_generate116792_
                                                             _L17399_
                                                             _L17397_
                                                             _E17107_)
                                                            _L17397_))
                                                      _hd1735317391_
                                                      _hd1735017381_)
                                                     (_g1734217360_
                                                      _g1734317364_))))
                                             (_g1734217360_ _g1734317364_))))
                                     (_g1734217360_ _g1734317364_))))
                             (_g1734217360_ _g1734317364_)))))
                  (_g1734117415_ _L17331_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1711517325_)
                                                   (_g1710917314_
                                                    _g1711217318_))))
                                           (_g1710917314_ _g1711217318_)))))
                                (_g1710817419_ _rest17105_))))))))
              (let ((_generate-body16790_
                     (lambda (_body17423_)
                       (let ((_g1742617434_
                              (lambda (_g1742717430_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1742717430_))))
                         (let ((_g1742517602_
                                (lambda (_g1742717438_)
                                  ((lambda (_L17441_)
                                     (let ()
                                       (let ((_g1745317470_
                                              (lambda (_g1745417466_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g1745417466_))))
                                         (let ((_g1745217598_
                                                (lambda (_g1745417474_)
                                                  (if (gx#stx-pair/null?
                                                       _g1745417474_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1745417474_)
                        '0)
                  (let ((_g29797_ (gx#syntax-split-splice _g1745417474_ '0)))
                    (begin
                      (let ((_g29798_ (values-count _g29797_)))
                        (if (not (fx= _g29798_ 2))
                            (error "Context expects 2 values" _g29798_)))
                      (let ((_target1745617477_ (values-ref _g29797_ 0))
                            (_tl1745817480_ (values-ref _g29797_ 1)))
                        (if (gx#stx-null? _tl1745817480_)
                            (letrec ((_loop1745917483_
                                      (lambda (_hd1745717487_
                                               _target1746317490_)
                                        (if (gx#stx-pair? _hd1745717487_)
                                            (let ((_e1746017493_
                                                   (gx#syntax-e
                                                    _hd1745717487_)))
                                              (let ((_lp-hd1746117497_
                                                     (##car _e1746017493_))
                                                    (_lp-tl1746217500_
                                                     (##cdr _e1746017493_)))
                                                (_loop1745917483_
                                                 _lp-tl1746217500_
                                                 (cons _lp-hd1746117497_
                                                       _target1746317490_))))
                                            (let ((_target1746417503_
                                                   (reverse _target1746317490_)))
                                              ((lambda (_L17507_)
                                                 (let ()
                                                   (let ((_g1752417532_
                                                          (lambda (_g1752517528_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1752517528_))))
                                                     (let ((_g1752317586_
                                                            (lambda (_g1752517536_)
                                                              ((lambda (_L17539_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((_g1755217560_
                                  (lambda (_g1755317556_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1755317556_))))
                             (let ((_g1755117582_
                                    (lambda (_g1755317564_)
                                      ((lambda (_L17567_)
                                         (let ()
                                           (let ()
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _L17441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L17539_ '()))
                       '())
                 (cons _L17567_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _g1755317564_))))
                               (_g1755117582_
                                (_generate-clauses16791_
                                 _body17423_
                                 (cons _L17441_ '())))))))
                       _g1752517536_))))
               (_g1752317586_
                (gx#stx-wrap-source
                 (cons (gx#datum->syntax '#f 'lambda)
                       (cons '()
                             (cons (cons (gx#datum->syntax '#f 'error)
                                         (cons '"No clause matching"
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g1758917592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1759017595_)
                  (cons _g1758917592_ _g1759017595_))
                '()
                _L17507_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '())))
                 (gx#stx-source _stx16783_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _target1746417503_))))))
                              (_loop1745917483_ _target1745617477_ '()))
                            (_g1745317470_ _g1745417474_)))))
                  (_g1745317470_ _g1745417474_))
              (_g1745317470_ _g1745417474_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1745217598_ _tgt-lst16785_)))))
                                   _g1742717438_))))
                           (_g1742517602_ (gx#genident 'E)))))))
                (_generate-body16790_
                 (_parse-body16788_ (gx#stx-length _tgt-lst16785_)))))))))
    (define |gerbil/core::<match>[1]#generate-match|
      (lambda (_stx16685_ _tgt16687_ _clauses16688_)
        (let ((_reclause16690_
               (lambda (_clause16693_)
                 (let ((_g1669816713_
                        (lambda (_g1669916709_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1669916709_))))
                   (let ((_g1669716724_
                          (lambda (_g1669916717_)
                            ((lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal match clause"
                                _stx16685_
                                _clause16693_))))))
                     (let ((_g1669616758_
                            (lambda (_g1669916728_)
                              (if (gx#stx-pair? _g1669916728_)
                                  (let ((_e1670516731_
                                         (gx#syntax-e _g1669916728_)))
                                    (let ((_hd1670616735_
                                           (##car _e1670516731_))
                                          (_tl1670716738_
                                           (##cdr _e1670516731_)))
                                      ((lambda (_L16741_ _L16743_)
                                         (gx#stx-wrap-source
                                          (cons (cons _L16743_ '()) _L16741_)
                                          (gx#stx-source
                                           (gx#datum->syntax '#f 'clause))))
                                       _tl1670716738_
                                       _hd1670616735_)))
                                  (_g1669716724_ _g1669916728_)))))
                       (let ((_g1669516779_
                              (lambda (_g1669916762_)
                                (if (gx#stx-pair? _g1669916762_)
                                    (let ((_e1670016765_
                                           (gx#syntax-e _g1669916762_)))
                                      (let ((_hd1670116769_
                                             (##car _e1670016765_))
                                            (_tl1670216772_
                                             (##cdr _e1670016765_)))
                                        (if (gx#identifier? _hd1670116769_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<match>[1]#_g29802_|
                                                 _hd1670116769_)
                                                ((lambda () _clause16693_))
                                                (_g1669616758_ _g1669916762_))
                                            (_g1669616758_ _g1669916762_))))
                                    (_g1669616758_ _g1669916762_)))))
                         (_g1669516779_ _clause16693_))))))))
          (|gerbil/core::<match>[1]#generate-match*|
           _stx16685_
           (cons _tgt16687_ '())
           (gx#stx-map _reclause16690_ _clauses16688_)))))
    (define |gerbil/core::<match>[:0:]#match|
      (lambda (_stx23892_)
        (let ((_g2389723926_
               (lambda (_g2389823922_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2389823922_))))
          (let ((_g2389624034_
                 (lambda (_g2389823930_)
                   (if (gx#stx-pair? _g2389823930_)
                       (let ((_e2391523933_ (gx#syntax-e _g2389823930_)))
                         (let ((_hd2391623937_ (##car _e2391523933_))
                               (_tl2391723940_ (##cdr _e2391523933_)))
                           (if (gx#stx-pair? _tl2391723940_)
                               (let ((_e2391823943_
                                      (gx#syntax-e _tl2391723940_)))
                                 (let ((_hd2391923947_ (##car _e2391823943_))
                                       (_tl2392023950_ (##cdr _e2391823943_)))
                                   ((lambda (_L23953_ _L23955_)
                                      (if (gx#stx-list? _L23953_)
                                          (let ((_g2396923977_
                                                 (lambda (_g2397023973_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2397023973_))))
                                            (let ((_g2396824030_
                                                   (lambda (_g2397023981_)
                                                     ((lambda (_L23984_)
                                                        (let ()
                                                          (let ((_g2399624004_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2399724000_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2399724000_))))
                    (let ((_g2399524026_
                           (lambda (_g2399724008_)
                             ((lambda (_L24011_)
                                (let ()
                                  (let ()
                                    (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (cons _L23984_
                                                            (cons _L23955_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _L24011_ '()))))))
                              _g2399724008_))))
                      (_g2399524026_
                       (|gerbil/core::<match>[1]#generate-match|
                        _stx23892_
                        _L23984_
                        _L23953_))))))
              _g2397023981_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2396824030_
                                               (gx#genident _L23955_))))
                                          (_g2389723926_ _g2389823930_)))
                                    _tl2392023950_
                                    _hd2391923947_)))
                               (_g2389723926_ _g2389823930_))))
                       (_g2389723926_ _g2389823930_)))))
            (let ((_g2389524139_
                   (lambda (_g2389824038_)
                     (if (gx#stx-pair? _g2389824038_)
                         (let ((_e2390724041_ (gx#syntax-e _g2389824038_)))
                           (let ((_hd2390824045_ (##car _e2390724041_))
                                 (_tl2390924048_ (##cdr _e2390724041_)))
                             (if (gx#stx-pair? _tl2390924048_)
                                 (let ((_e2391024051_
                                        (gx#syntax-e _tl2390924048_)))
                                   (let ((_hd2391124055_ (##car _e2391024051_))
                                         (_tl2391224058_
                                          (##cdr _e2391024051_)))
                                     (if (gx#identifier? _hd2391124055_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core::<match>[1]#_g29803_|
                                              _hd2391124055_)
                                             ((lambda (_L24061_)
                                                (if (gx#stx-list? _L24061_)
                                                    (let ((_g2407424082_
                                                           (lambda (_g2407524078_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g2407524078_))))
                                                      (let ((_g2407324135_
                                                             (lambda (_g2407524086_)
                                                               ((lambda (_L24089_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let ((_g2410124109_
                                   (lambda (_g2410224105_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2410224105_))))
                              (let ((_g2410024131_
                                     (lambda (_g2410224113_)
                                       ((lambda (_L24116_)
                                          (let ()
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons _L24089_
                                                          (cons _L24116_
                                                                '()))))))
                                        _g2410224113_))))
                                (_g2410024131_
                                 (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'match)
                                        (cons _L24089_ _L24061_))
                                  (gx#stx-source _stx23892_)))))))
                        _g2407524086_))))
                (_g2407324135_ (gx#genident 'args))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2389624034_
                                                     _g2389824038_)))
                                              _tl2391224058_)
                                             (_g2389624034_ _g2389824038_))
                                         (_g2389624034_ _g2389824038_))))
                                 (_g2389624034_ _g2389824038_))))
                         (_g2389624034_ _g2389824038_)))))
              (let ((_g2389424244_
                     (lambda (_g2389824143_)
                       (if (gx#stx-pair? _g2389824143_)
                           (let ((_e2390024146_ (gx#syntax-e _g2389824143_)))
                             (let ((_hd2390124150_ (##car _e2390024146_))
                                   (_tl2390224153_ (##cdr _e2390024146_)))
                               (if (gx#stx-pair? _tl2390224153_)
                                   (let ((_e2390324156_
                                          (gx#syntax-e _tl2390224153_)))
                                     (let ((_hd2390424160_
                                            (##car _e2390324156_))
                                           (_tl2390524163_
                                            (##cdr _e2390324156_)))
                                       (if (gx#identifier? _hd2390424160_)
                                           (if (gx#free-identifier=?
                                                |gerbil/core::<match>[1]#_g29804_|
                                                _hd2390424160_)
                                               ((lambda (_L24166_)
                                                  (if (gx#stx-list? _L24166_)
                                                      (let ((_g2417924187_
                                                             (lambda (_g2418024183_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2418024183_))))
                                                        (let ((_g2417824240_
                                                               (lambda (_g2418024191_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L24194_)
                            (let ()
                              (let ((_g2420624214_
                                     (lambda (_g2420724210_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g2420724210_))))
                                (let ((_g2420524236_
                                       (lambda (_g2420724218_)
                                         ((lambda (_L24221_)
                                            (let ()
                                              (let ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L24194_ '())
                                                            (cons _L24221_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g2420724218_))))
                                  (_g2420524236_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _L24194_ _L24166_))
                                    (gx#stx-source _stx23892_)))))))
                          _g2418024191_))))
                  (_g2417824240_ (gx#genident 'e))))
              (_g2389524139_ _g2389824143_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl2390524163_)
                                               (_g2389524139_ _g2389824143_))
                                           (_g2389524139_ _g2389824143_))))
                                   (_g2389524139_ _g2389824143_))))
                           (_g2389524139_ _g2389824143_)))))
                (_g2389424244_ _stx23892_)))))))
    (define |gerbil/core::<match>[:0:]#match*|
      (lambda (_stx24248_)
        (let ((_g2425124275_
               (lambda (_g2425224271_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2425224271_))))
          (let ((_g2425024487_
                 (lambda (_g2425224279_)
                   (if (gx#stx-pair? _g2425224279_)
                       (let ((_e2425524282_ (gx#syntax-e _g2425224279_)))
                         (let ((_hd2425624286_ (##car _e2425524282_))
                               (_tl2425724289_ (##cdr _e2425524282_)))
                           (if (gx#stx-pair? _tl2425724289_)
                               (let ((_e2425824292_
                                      (gx#syntax-e _tl2425724289_)))
                                 (let ((_hd2425924296_ (##car _e2425824292_))
                                       (_tl2426024299_ (##cdr _e2425824292_)))
                                   (if (gx#stx-pair/null? _hd2425924296_)
                                       (if (fx>= (gx#stx-length _hd2425924296_)
                                                 '0)
                                           (let ((_g29805_
                                                  (gx#syntax-split-splice
                                                   _hd2425924296_
                                                   '0)))
                                             (begin
                                               (let ((_g29806_
                                                      (values-count _g29805_)))
                                                 (if (not (fx= _g29806_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29806_)))
                                               (let ((_target2426124302_
                                                      (values-ref _g29805_ 0))
                                                     (_tl2426324305_
                                                      (values-ref _g29805_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl2426324305_)
                                                     (letrec ((_loop2426424308_
                                                               (lambda (_hd2426224312_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _e2426824315_)
                         (if (gx#stx-pair? _hd2426224312_)
                             (let ((_e2426524318_
                                    (gx#syntax-e _hd2426224312_)))
                               (let ((_lp-hd2426624322_ (##car _e2426524318_))
                                     (_lp-tl2426724325_ (##cdr _e2426524318_)))
                                 (_loop2426424308_
                                  _lp-tl2426724325_
                                  (cons _lp-hd2426624322_ _e2426824315_))))
                             (let ((_e2426924328_ (reverse _e2426824315_)))
                               ((lambda (_L24332_ _L24334_)
                                  (if (gx#stx-list? _L24332_)
                                      (let ((_g2435224369_
                                             (lambda (_g2435324365_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2435324365_))))
                                        (let ((_g2435124475_
                                               (lambda (_g2435324373_)
                                                 (if (gx#stx-pair/null?
                                                      _g2435324373_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2435324373_)
                                                               '0)
                                                         (let ((_g29807_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2435324373_
                         '0)))
                   (begin
                     (let ((_g29808_ (values-count _g29807_)))
                       (if (not (fx= _g29808_ 2))
                           (error "Context expects 2 values" _g29808_)))
                     (let ((_target2435524376_ (values-ref _g29807_ 0))
                           (_tl2435724379_ (values-ref _g29807_ 1)))
                       (if (gx#stx-null? _tl2435724379_)
                           (letrec ((_loop2435824382_
                                     (lambda (_hd2435624386_ _$e2436224389_)
                                       (if (gx#stx-pair? _hd2435624386_)
                                           (let ((_e2435924392_
                                                  (gx#syntax-e
                                                   _hd2435624386_)))
                                             (let ((_lp-hd2436024396_
                                                    (##car _e2435924392_))
                                                   (_lp-tl2436124399_
                                                    (##cdr _e2435924392_)))
                                               (_loop2435824382_
                                                _lp-tl2436124399_
                                                (cons _lp-hd2436024396_
                                                      _$e2436224389_))))
                                           (let ((_$e2436324402_
                                                  (reverse _$e2436224389_)))
                                             ((lambda (_L24406_)
                                                (let ()
                                                  (let ((_g2442224430_
                                                         (lambda (_g2442324426_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2442324426_))))
                                                    (let ((_g2442124463_
                                                           (lambda (_g2442324434_)
                                                             ((lambda (_L24437_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (begin
                                          (gx#syntax-check-splice-targets
                                           _L24334_
                                           _L24406_)
                                          (foldr (lambda (_g2445124455_
                                                          _g2445224458_
                                                          _g2445324460_)
                                                   (cons (cons _g2445224458_
                                                               (cons _g2445124455_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _g2445324460_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L24334_
                                                 _L24406_))
                                        (cons _L24437_ '()))))))
                      _g2442324434_))))
              (_g2442124463_
               (|gerbil/core::<match>[1]#generate-match*|
                _stx24248_
                (begin
                  '#!void
                  (foldr (lambda (_g2446624469_ _g2446724472_)
                           (cons _g2446624469_ _g2446724472_))
                         '()
                         _L24406_))
                _L24332_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _$e2436324402_))))))
                             (_loop2435824382_ _target2435524376_ '()))
                           (_g2435224369_ _g2435324373_)))))
                 (_g2435224369_ _g2435324373_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2435224369_
                                                      _g2435324373_)))))
                                          (_g2435124475_
                                           (gx#gentemps
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g2447824481_
                                                              _g2447924484_)
                                                       (cons _g2447824481_
                                                             _g2447924484_))
                                                     '()
                                                     _L24334_))))))
                                      (_g2425124275_ _g2425224279_)))
                                _tl2426024299_
                                _e2426924328_))))))
               (_loop2426424308_ _target2426124302_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2425124275_
                                                      _g2425224279_)))))
                                           (_g2425124275_ _g2425224279_))
                                       (_g2425124275_ _g2425224279_))))
                               (_g2425124275_ _g2425224279_))))
                       (_g2425124275_ _g2425224279_)))))
            (_g2425024487_ _stx24248_)))))
    (define |gerbil/core::<match>[:0:]#with|
      (lambda (_$stx24493_)
        (let ((_g2449924582_
               (lambda (_g2450024578_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2450024578_))))
          (let ((_g2449824743_
                 (lambda (_g2450024586_)
                   (if (gx#stx-pair? _g2450024586_)
                       (let ((_e2454524589_ (gx#syntax-e _g2450024586_)))
                         (let ((_hd2454624593_ (##car _e2454524589_))
                               (_tl2454724596_ (##cdr _e2454524589_)))
                           (if (gx#stx-pair? _tl2454724596_)
                               (let ((_e2454824599_
                                      (gx#syntax-e _tl2454724596_)))
                                 (let ((_hd2454924603_ (##car _e2454824599_))
                                       (_tl2455024606_ (##cdr _e2454824599_)))
                                   (if (gx#stx-pair/null? _hd2454924603_)
                                       (if (fx>= (gx#stx-length _hd2454924603_)
                                                 '0)
                                           (let ((_g29809_
                                                  (gx#syntax-split-splice
                                                   _hd2454924603_
                                                   '0)))
                                             (begin
                                               (let ((_g29810_
                                                      (values-count _g29809_)))
                                                 (if (not (fx= _g29810_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29810_)))
                                               (let ((_target2455124609_
                                                      (values-ref _g29809_ 0))
                                                     (_tl2455324612_
                                                      (values-ref _g29809_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl2455324612_)
                                                     (letrec ((_loop2455424615_
                                                               (lambda (_hd2455224619_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr2455824622_
                                _hd2455924624_)
                         (if (gx#stx-pair? _hd2455224619_)
                             (let ((_e2455524627_
                                    (gx#syntax-e _hd2455224619_)))
                               (let ((_lp-hd2455624631_ (##car _e2455524627_))
                                     (_lp-tl2455724634_ (##cdr _e2455524627_)))
                                 (if (gx#stx-pair? _lp-hd2455624631_)
                                     (let ((_e2456224637_
                                            (gx#syntax-e _lp-hd2455624631_)))
                                       (let ((_hd2456324641_
                                              (##car _e2456224637_))
                                             (_tl2456424644_
                                              (##cdr _e2456224637_)))
                                         (if (gx#stx-pair? _tl2456424644_)
                                             (let ((_e2456524647_
                                                    (gx#syntax-e
                                                     _tl2456424644_)))
                                               (let ((_hd2456624651_
                                                      (##car _e2456524647_))
                                                     (_tl2456724654_
                                                      (##cdr _e2456524647_)))
                                                 (if (gx#stx-null?
                                                      _tl2456724654_)
                                                     (_loop2455424615_
                                                      _lp-tl2455724634_
                                                      (cons _hd2456624651_
                                                            _expr2455824622_)
                                                      (cons _hd2456324641_
                                                            _hd2455924624_))
                                                     (_g2449924582_
                                                      _g2450024586_))))
                                             (_g2449924582_ _g2450024586_))))
                                     (_g2449924582_ _g2450024586_))))
                             (let ((_expr2456024657_
                                    (reverse _expr2455824622_))
                                   (_hd2456124660_ (reverse _hd2455924624_)))
                               (if (gx#stx-pair/null? _tl2455024606_)
                                   (if (fx>= (gx#stx-length _tl2455024606_) '0)
                                       (let ((_g29811_
                                              (gx#syntax-split-splice
                                               _tl2455024606_
                                               '0)))
                                         (begin
                                           (let ((_g29812_
                                                  (values-count _g29811_)))
                                             (if (not (fx= _g29812_ 2))
                                                 (error "Context expects 2 values"
                                                        _g29812_)))
                                           (let ((_target2456824663_
                                                  (values-ref _g29811_ 0))
                                                 (_tl2457024666_
                                                  (values-ref _g29811_ 1)))
                                             (if (gx#stx-null? _tl2457024666_)
                                                 (letrec ((_loop2457124669_
                                                           (lambda (_hd2456924673_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _body2457524676_)
                     (if (gx#stx-pair? _hd2456924673_)
                         (let ((_e2457224679_ (gx#syntax-e _hd2456924673_)))
                           (let ((_lp-hd2457324683_ (##car _e2457224679_))
                                 (_lp-tl2457424686_ (##cdr _e2457224679_)))
                             (_loop2457124669_
                              _lp-tl2457424686_
                              (cons _lp-hd2457324683_ _body2457524676_))))
                         (let ((_body2457624689_ (reverse _body2457524676_)))
                           ((lambda (_L24693_ _L24695_ _L24696_)
                              (cons (gx#datum->syntax '#f 'match*)
                                    (cons (begin
                                            '#!void
                                            (foldr (lambda (_g2471824725_
                                                            _g2471924728_)
                                                     (cons _g2471824725_
                                                           _g2471924728_))
                                                   '()
                                                   _L24695_))
                                          (cons (cons (begin
                                                        '#!void
                                                        (foldr (lambda (_g2472024731_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2472124734_)
                         (cons _g2472024731_ _g2472124734_))
                       '()
                       _L24696_))
              (begin
                '#!void
                (foldr (lambda (_g2472224737_ _g2472324740_)
                         (cons _g2472224737_ _g2472324740_))
                       '()
                       _L24693_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                            _body2457624689_
                            _expr2456024657_
                            _hd2456124660_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop2457124669_
                                                    _target2456824663_
                                                    '()))
                                                 (_g2449924582_
                                                  _g2450024586_)))))
                                       (_g2449924582_ _g2450024586_))
                                   (_g2449924582_ _g2450024586_)))))))
               (_loop2455424615_ _target2455124609_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2449924582_
                                                      _g2450024586_)))))
                                           (_g2449924582_ _g2450024586_))
                                       (_g2449924582_ _g2450024586_))))
                               (_g2449924582_ _g2450024586_))))
                       (_g2449924582_ _g2450024586_)))))
            (let ((_g2449724855_
                   (lambda (_g2450024747_)
                     (if (gx#stx-pair? _g2450024747_)
                         (let ((_e2452124750_ (gx#syntax-e _g2450024747_)))
                           (let ((_hd2452224754_ (##car _e2452124750_))
                                 (_tl2452324757_ (##cdr _e2452124750_)))
                             (if (gx#stx-pair? _tl2452324757_)
                                 (let ((_e2452424760_
                                        (gx#syntax-e _tl2452324757_)))
                                   (let ((_hd2452524764_ (##car _e2452424760_))
                                         (_tl2452624767_
                                          (##cdr _e2452424760_)))
                                     (if (gx#stx-pair? _hd2452524764_)
                                         (let ((_e2452724770_
                                                (gx#syntax-e _hd2452524764_)))
                                           (let ((_hd2452824774_
                                                  (##car _e2452724770_))
                                                 (_tl2452924777_
                                                  (##cdr _e2452724770_)))
                                             (if (gx#stx-pair? _tl2452924777_)
                                                 (let ((_e2453024780_
                                                        (gx#syntax-e
                                                         _tl2452924777_)))
                                                   (let ((_hd2453124784_
                                                          (##car _e2453024780_))
                                                         (_tl2453224787_
                                                          (##cdr _e2453024780_)))
                                                     (if (gx#stx-null?
                                                          _tl2453224787_)
                                                         (if (gx#stx-pair/null?
                                                              _tl2452624767_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _tl2452624767_)
                               '0)
                         (let ((_g29813_
                                (gx#syntax-split-splice _tl2452624767_ '0)))
                           (begin
                             (let ((_g29814_ (values-count _g29813_)))
                               (if (not (fx= _g29814_ 2))
                                   (error "Context expects 2 values"
                                          _g29814_)))
                             (let ((_target2453324790_ (values-ref _g29813_ 0))
                                   (_tl2453524793_ (values-ref _g29813_ 1)))
                               (if (gx#stx-null? _tl2453524793_)
                                   (letrec ((_loop2453624796_
                                             (lambda (_hd2453424800_
                                                      _body2454024803_)
                                               (if (gx#stx-pair?
                                                    _hd2453424800_)
                                                   (let ((_e2453724806_
                                                          (gx#syntax-e
                                                           _hd2453424800_)))
                                                     (let ((_lp-hd2453824810_
                                                            (##car _e2453724806_))
                                                           (_lp-tl2453924813_
                                                            (##cdr _e2453724806_)))
                                                       (_loop2453624796_
                                                        _lp-tl2453924813_
                                                        (cons _lp-hd2453824810_
                                                              _body2454024803_))))
                                                   (let ((_body2454124816_
                                                          (reverse _body2454024803_)))
                                                     ((lambda (_L24820_
                                                               _L24822_
                                                               _L24823_
                                                               _L24824_)
                                                        (if (|gerbil/core::<match>[1]#match-pattern?|
                                                             _L24823_)
                                                            (cons _L24824_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons _L24823_ (cons _L24822_ '())) '())
                                (begin
                                  '#!void
                                  (foldr (lambda (_g2484624849_ _g2484724852_)
                                           (cons _g2484624849_ _g2484724852_))
                                         '()
                                         _L24820_))))
                    (_g2449824743_ _g2450024747_)))
              _body2454124816_
              _hd2453124784_
              _hd2452824774_
              _hd2452224754_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop2453624796_ _target2453324790_ '()))
                                   (_g2449824743_ _g2450024747_)))))
                         (_g2449824743_ _g2450024747_))
                     (_g2449824743_ _g2450024747_))
                 (_g2449824743_ _g2450024747_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2449824743_
                                                  _g2450024747_))))
                                         (_g2449824743_ _g2450024747_))))
                                 (_g2449824743_ _g2450024747_))))
                         (_g2449824743_ _g2450024747_)))))
              (let ((_g2449624937_
                     (lambda (_g2450024859_)
                       (if (gx#stx-pair? _g2450024859_)
                           (let ((_e2450224862_ (gx#syntax-e _g2450024859_)))
                             (let ((_hd2450324866_ (##car _e2450224862_))
                                   (_tl2450424869_ (##cdr _e2450224862_)))
                               (if (gx#stx-pair? _tl2450424869_)
                                   (let ((_e2450524872_
                                          (gx#syntax-e _tl2450424869_)))
                                     (let ((_hd2450624876_
                                            (##car _e2450524872_))
                                           (_tl2450724879_
                                            (##cdr _e2450524872_)))
                                       (if (gx#stx-null? _hd2450624876_)
                                           (if (gx#stx-pair/null?
                                                _tl2450724879_)
                                               (if (fx>= (gx#stx-length
                                                          _tl2450724879_)
                                                         '0)
                                                   (let ((_g29815_
                                                          (gx#syntax-split-splice
                                                           _tl2450724879_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29816_
                                                              (values-count
                                                               _g29815_)))
                                                         (if (not (fx= _g29816_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29816_)))
               (let ((_target2450824882_ (values-ref _g29815_ 0))
                     (_tl2451024885_ (values-ref _g29815_ 1)))
                 (if (gx#stx-null? _tl2451024885_)
                     (letrec ((_loop2451124888_
                               (lambda (_hd2450924892_ _body2451524895_)
                                 (if (gx#stx-pair? _hd2450924892_)
                                     (let ((_e2451224898_
                                            (gx#syntax-e _hd2450924892_)))
                                       (let ((_lp-hd2451324902_
                                              (##car _e2451224898_))
                                             (_lp-tl2451424905_
                                              (##cdr _e2451224898_)))
                                         (_loop2451124888_
                                          _lp-tl2451424905_
                                          (cons _lp-hd2451324902_
                                                _body2451524895_))))
                                     (let ((_body2451624908_
                                            (reverse _body2451524895_)))
                                       ((lambda (_L24912_)
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons '()
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2492824931_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2492924934_)
                         (cons _g2492824931_ _g2492924934_))
                       '()
                       _L24912_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body2451624908_))))))
                       (_loop2451124888_ _target2450824882_ '()))
                     (_g2449724855_ _g2450024859_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2449724855_
                                                    _g2450024859_))
                                               (_g2449724855_ _g2450024859_))
                                           (_g2449724855_ _g2450024859_))))
                                   (_g2449724855_ _g2450024859_))))
                           (_g2449724855_ _g2450024859_)))))
                (_g2449624937_ _$stx24493_)))))))
    (define |gerbil/core::<match>[:0:]#with*|
      (lambda (_$stx24945_)
        (let ((_g2495025002_
               (lambda (_g2495124998_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2495124998_))))
          (let ((_g2494925085_
                 (lambda (_g2495125006_)
                   (if (gx#stx-pair? _g2495125006_)
                       (let ((_e2498225009_ (gx#syntax-e _g2495125006_)))
                         (let ((_hd2498325013_ (##car _e2498225009_))
                               (_tl2498425016_ (##cdr _e2498225009_)))
                           (if (gx#stx-pair? _tl2498425016_)
                               (let ((_e2498525019_
                                      (gx#syntax-e _tl2498425016_)))
                                 (let ((_hd2498625023_ (##car _e2498525019_))
                                       (_tl2498725026_ (##cdr _e2498525019_)))
                                   (if (gx#stx-null? _hd2498625023_)
                                       (if (gx#stx-pair/null? _tl2498725026_)
                                           (if (fx>= (gx#stx-length
                                                      _tl2498725026_)
                                                     '0)
                                               (let ((_g29817_
                                                      (gx#syntax-split-splice
                                                       _tl2498725026_
                                                       '0)))
                                                 (begin
                                                   (let ((_g29818_
                                                          (values-count
                                                           _g29817_)))
                                                     (if (not (fx= _g29818_ 2))
                                                         (error "Context expects 2 values"
                                                                _g29818_)))
                                                   (let ((_target2498825029_
                                                          (values-ref
                                                           _g29817_
                                                           0))
                                                         (_tl2499025032_
                                                          (values-ref
                                                           _g29817_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl2499025032_)
                                                         (letrec ((_loop2499125035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd2498925039_ _body2499525042_)
                             (if (gx#stx-pair? _hd2498925039_)
                                 (let ((_e2499225045_
                                        (gx#syntax-e _hd2498925039_)))
                                   (let ((_lp-hd2499325049_
                                          (##car _e2499225045_))
                                         (_lp-tl2499425052_
                                          (##cdr _e2499225045_)))
                                     (_loop2499125035_
                                      _lp-tl2499425052_
                                      (cons _lp-hd2499325049_
                                            _body2499525042_))))
                                 (let ((_body2499625055_
                                        (reverse _body2499525042_)))
                                   ((lambda (_L25059_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g2507625079_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2507725082_)
                     (cons _g2507625079_ _g2507725082_))
                   '()
                   _L25059_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _body2499625055_))))))
                   (_loop2499125035_ _target2498825029_ '()))
                 (_g2495025002_ _g2495125006_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2495025002_ _g2495125006_))
                                           (_g2495025002_ _g2495125006_))
                                       (_g2495025002_ _g2495125006_))))
                               (_g2495025002_ _g2495125006_))))
                       (_g2495025002_ _g2495125006_)))))
            (let ((_g2494825211_
                   (lambda (_g2495125089_)
                     (if (gx#stx-pair? _g2495125089_)
                         (let ((_e2495725092_ (gx#syntax-e _g2495125089_)))
                           (let ((_hd2495825096_ (##car _e2495725092_))
                                 (_tl2495925099_ (##cdr _e2495725092_)))
                             (if (gx#stx-pair? _tl2495925099_)
                                 (let ((_e2496025102_
                                        (gx#syntax-e _tl2495925099_)))
                                   (let ((_hd2496125106_ (##car _e2496025102_))
                                         (_tl2496225109_
                                          (##cdr _e2496025102_)))
                                     (if (gx#stx-pair? _hd2496125106_)
                                         (let ((_e2496325112_
                                                (gx#syntax-e _hd2496125106_)))
                                           (let ((_hd2496425116_
                                                  (##car _e2496325112_))
                                                 (_tl2496525119_
                                                  (##cdr _e2496325112_)))
                                             (if (gx#stx-pair? _hd2496425116_)
                                                 (let ((_e2496625122_
                                                        (gx#syntax-e
                                                         _hd2496425116_)))
                                                   (let ((_hd2496725126_
                                                          (##car _e2496625122_))
                                                         (_tl2496825129_
                                                          (##cdr _e2496625122_)))
                                                     (if (gx#stx-pair?
                                                          _tl2496825129_)
                                                         (let ((_e2496925132_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2496825129_)))
                   (let ((_hd2497025136_ (##car _e2496925132_))
                         (_tl2497125139_ (##cdr _e2496925132_)))
                     (if (gx#stx-null? _tl2497125139_)
                         (if (gx#stx-pair/null? _tl2496225109_)
                             (if (fx>= (gx#stx-length _tl2496225109_) '0)
                                 (let ((_g29819_
                                        (gx#syntax-split-splice
                                         _tl2496225109_
                                         '0)))
                                   (begin
                                     (let ((_g29820_ (values-count _g29819_)))
                                       (if (not (fx= _g29820_ 2))
                                           (error "Context expects 2 values"
                                                  _g29820_)))
                                     (let ((_target2497225142_
                                            (values-ref _g29819_ 0))
                                           (_tl2497425145_
                                            (values-ref _g29819_ 1)))
                                       (if (gx#stx-null? _tl2497425145_)
                                           (letrec ((_loop2497525148_
                                                     (lambda (_hd2497325152_
                                                              _body2497925155_)
                                                       (if (gx#stx-pair?
                                                            _hd2497325152_)
                                                           (let ((_e2497625158_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd2497325152_)))
                     (let ((_lp-hd2497725162_ (##car _e2497625158_))
                           (_lp-tl2497825165_ (##cdr _e2497625158_)))
                       (_loop2497525148_
                        _lp-tl2497825165_
                        (cons _lp-hd2497725162_ _body2497925155_))))
                   (let ((_body2498025168_ (reverse _body2497925155_)))
                     ((lambda (_L25172_ _L25174_ _L25175_ _L25176_ _L25177_)
                        (cons (gx#datum->syntax '#f 'with)
                              (cons (cons (cons _L25176_ (cons _L25175_ '()))
                                          '())
                                    (cons (cons _L25177_
                                                (cons _L25174_
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2520225205_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2520325208_)
                         (cons _g2520225205_ _g2520325208_))
                       '()
                       _L25172_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))))
                      _body2498025168_
                      _tl2496525119_
                      _hd2497025136_
                      _hd2496725126_
                      _hd2495825096_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop2497525148_
                                              _target2497225142_
                                              '()))
                                           (_g2494925085_ _g2495125089_)))))
                                 (_g2494925085_ _g2495125089_))
                             (_g2494925085_ _g2495125089_))
                         (_g2494925085_ _g2495125089_))))
                 (_g2494925085_ _g2495125089_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2494925085_
                                                  _g2495125089_))))
                                         (_g2494925085_ _g2495125089_))))
                                 (_g2494925085_ _g2495125089_))))
                         (_g2494925085_ _g2495125089_)))))
              (_g2494825211_ _$stx24945_))))))
    (define |gerbil/core::<match>[:0:]#?|
      (lambda (_$stx25217_)
        (let ((_g2522825372_
               (lambda (_g2522925368_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2522925368_))))
          (let ((_g2522725467_
                 (lambda (_g2522925376_)
                   (if (gx#stx-pair? _g2522925376_)
                       (let ((_e2534925379_ (gx#syntax-e _g2522925376_)))
                         (let ((_hd2535025383_ (##car _e2534925379_))
                               (_tl2535125386_ (##cdr _e2534925379_)))
                           (if (gx#stx-pair? _tl2535125386_)
                               (let ((_e2535225389_
                                      (gx#syntax-e _tl2535125386_)))
                                 (let ((_hd2535325393_ (##car _e2535225389_))
                                       (_tl2535425396_ (##cdr _e2535225389_)))
                                   (if (gx#stx-pair? _tl2535425396_)
                                       (let ((_e2535525399_
                                              (gx#syntax-e _tl2535425396_)))
                                         (let ((_hd2535625403_
                                                (##car _e2535525399_))
                                               (_tl2535725406_
                                                (##cdr _e2535525399_)))
                                           (if (gx#stx-datum? _hd2535625403_)
                                               (if (equal? (gx#stx-e
                                                            _hd2535625403_)
                                                           '::)
                                                   (if (gx#stx-pair?
                                                        _tl2535725406_)
                                                       (let ((_e2535825409_
                                                              (gx#syntax-e
                                                               _tl2535725406_)))
                                                         (let ((_hd2535925413_
                                                                (##car _e2535825409_))
                                                               (_tl2536025416_
                                                                (##cdr _e2535825409_)))
                                                           (if (gx#stx-pair?
                                                                _tl2536025416_)
                                                               (let ((_e2536125419_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2536025416_)))
                         (let ((_hd2536225423_ (##car _e2536125419_))
                               (_tl2536325426_ (##cdr _e2536125419_)))
                           (if (gx#identifier? _hd2536225423_)
                               (if (gx#free-identifier=?
                                    |gerbil/core::<match>[1]#_g29821_|
                                    _hd2536225423_)
                                   (if (gx#stx-pair? _tl2536325426_)
                                       (let ((_e2536425429_
                                              (gx#syntax-e _tl2536325426_)))
                                         (let ((_hd2536525433_
                                                (##car _e2536425429_))
                                               (_tl2536625436_
                                                (##cdr _e2536425429_)))
                                           (if (gx#stx-null? _tl2536625436_)
                                               ((lambda (_L25439_
                                                         _L25441_
                                                         _L25442_
                                                         _L25443_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$obj)
                            '())
                      (cons (cons (gx#datum->syntax '#f 'and)
                                  (cons (cons _L25443_
                                              (cons _L25442_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '$obj)
                                                          '())))
                                        (cons (cons _L25439_
                                                    (cons (cons _L25441_
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
                                                _hd2536525433_
                                                _hd2535925413_
                                                _hd2535325393_
                                                _hd2535025383_)
                                               (_g2522825372_ _g2522925376_))))
                                       (_g2522825372_ _g2522925376_))
                                   (_g2522825372_ _g2522925376_))
                               (_g2522825372_ _g2522925376_))))
                       (_g2522825372_ _g2522925376_))))
               (_g2522825372_ _g2522925376_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2522825372_
                                                    _g2522925376_))
                                               (_g2522825372_ _g2522925376_))))
                                       (_g2522825372_ _g2522925376_))))
                               (_g2522825372_ _g2522925376_))))
                       (_g2522825372_ _g2522925376_)))))
            (let ((_g2522625535_
                   (lambda (_g2522925471_)
                     (if (gx#stx-pair? _g2522925471_)
                         (let ((_e2533325474_ (gx#syntax-e _g2522925471_)))
                           (let ((_hd2533425478_ (##car _e2533325474_))
                                 (_tl2533525481_ (##cdr _e2533325474_)))
                             (if (gx#stx-pair? _tl2533525481_)
                                 (let ((_e2533625484_
                                        (gx#syntax-e _tl2533525481_)))
                                   (let ((_hd2533725488_ (##car _e2533625484_))
                                         (_tl2533825491_
                                          (##cdr _e2533625484_)))
                                     (if (gx#stx-pair? _tl2533825491_)
                                         (let ((_e2533925494_
                                                (gx#syntax-e _tl2533825491_)))
                                           (let ((_hd2534025498_
                                                  (##car _e2533925494_))
                                                 (_tl2534125501_
                                                  (##cdr _e2533925494_)))
                                             (if (gx#stx-datum? _hd2534025498_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2534025498_)
                                                             '::)
                                                     (if (gx#stx-pair?
                                                          _tl2534125501_)
                                                         (let ((_e2534225504_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2534125501_)))
                   (let ((_hd2534325508_ (##car _e2534225504_))
                         (_tl2534425511_ (##cdr _e2534225504_)))
                     (if (gx#stx-null? _tl2534425511_)
                         ((lambda (_L25514_ _L25516_ _L25517_)
                            (cons (gx#datum->syntax '#f 'lambda)
                                  (cons (cons (gx#datum->syntax '#f '$obj) '())
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'alet)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$val)
                        (cons (cons _L25517_
                                    (cons _L25516_
                                          (cons (gx#datum->syntax '#f '$obj)
                                                '())))
                              '()))
                  (cons (cons _L25514_ (cons (gx#datum->syntax '#f '$val) '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          _hd2534325508_
                          _hd2533725488_
                          _hd2533425478_)
                         (_g2522725467_ _g2522925471_))))
                 (_g2522725467_ _g2522925471_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2522725467_
                                                      _g2522925471_))
                                                 (_g2522725467_
                                                  _g2522925471_))))
                                         (_g2522725467_ _g2522925471_))))
                                 (_g2522725467_ _g2522925471_))))
                         (_g2522725467_ _g2522925471_)))))
              (let ((_g2522525603_
                     (lambda (_g2522925539_)
                       (if (gx#stx-pair? _g2522925539_)
                           (let ((_e2531825542_ (gx#syntax-e _g2522925539_)))
                             (let ((_hd2531925546_ (##car _e2531825542_))
                                   (_tl2532025549_ (##cdr _e2531825542_)))
                               (if (gx#stx-pair? _tl2532025549_)
                                   (let ((_e2532125552_
                                          (gx#syntax-e _tl2532025549_)))
                                     (let ((_hd2532225556_
                                            (##car _e2532125552_))
                                           (_tl2532325559_
                                            (##cdr _e2532125552_)))
                                       (if (gx#stx-pair? _tl2532325559_)
                                           (let ((_e2532425562_
                                                  (gx#syntax-e
                                                   _tl2532325559_)))
                                             (let ((_hd2532525566_
                                                    (##car _e2532425562_))
                                                   (_tl2532625569_
                                                    (##cdr _e2532425562_)))
                                               (if (gx#identifier?
                                                    _hd2532525566_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core::<match>[1]#_g29822_|
                                                        _hd2532525566_)
                                                       (if (gx#stx-pair?
                                                            _tl2532625569_)
                                                           (let ((_e2532725572_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl2532625569_)))
                     (let ((_hd2532825576_ (##car _e2532725572_))
                           (_tl2532925579_ (##cdr _e2532725572_)))
                       (if (gx#stx-null? _tl2532925579_)
                           ((lambda (_L25582_ _L25584_ _L25585_)
                              (cons (gx#datum->syntax '#f 'lambda)
                                    (cons (cons (gx#datum->syntax '#f '$obj)
                                                '())
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'and)
                                                      (cons (cons _L25585_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L25584_
                                (cons (gx#datum->syntax '#f '$obj) '())))
                    (cons (cons _L25582_
                                (cons (gx#datum->syntax '#f '$obj) '()))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                            _hd2532825576_
                            _hd2532225556_
                            _hd2531925546_)
                           (_g2522625535_ _g2522925539_))))
                   (_g2522625535_ _g2522925539_))
               (_g2522625535_ _g2522925539_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2522625535_
                                                    _g2522925539_))))
                                           (_g2522625535_ _g2522925539_))))
                                   (_g2522625535_ _g2522925539_))))
                           (_g2522625535_ _g2522925539_)))))
                (let ((_g2522425645_
                       (lambda (_g2522925607_)
                         (if (gx#stx-pair? _g2522925607_)
                             (let ((_e2530925610_ (gx#syntax-e _g2522925607_)))
                               (let ((_hd2531025614_ (##car _e2530925610_))
                                     (_tl2531125617_ (##cdr _e2530925610_)))
                                 (if (gx#stx-pair? _tl2531125617_)
                                     (let ((_e2531225620_
                                            (gx#syntax-e _tl2531125617_)))
                                       (let ((_hd2531325624_
                                              (##car _e2531225620_))
                                             (_tl2531425627_
                                              (##cdr _e2531225620_)))
                                         (if (gx#stx-null? _tl2531425627_)
                                             ((lambda (_L25630_ _L25632_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '$obj)
                          '())
                    (cons (cons _L25632_
                                (cons _L25630_
                                      (cons (gx#datum->syntax '#f '$obj) '())))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd2531325624_
                                              _hd2531025614_)
                                             (_g2522525603_ _g2522925607_))))
                                     (_g2522525603_ _g2522925607_))))
                             (_g2522525603_ _g2522925607_)))))
                  (let ((_g2522325699_
                         (lambda (_g2522925649_)
                           (if (gx#stx-pair? _g2522925649_)
                               (let ((_e2529825652_
                                      (gx#syntax-e _g2522925649_)))
                                 (let ((_hd2529925656_ (##car _e2529825652_))
                                       (_tl2530025659_ (##cdr _e2529825652_)))
                                   (if (gx#stx-pair? _tl2530025659_)
                                       (let ((_e2530125662_
                                              (gx#syntax-e _tl2530025659_)))
                                         (let ((_hd2530225666_
                                                (##car _e2530125662_))
                                               (_tl2530325669_
                                                (##cdr _e2530125662_)))
                                           (if (gx#stx-pair? _tl2530325669_)
                                               (let ((_e2530425672_
                                                      (gx#syntax-e
                                                       _tl2530325669_)))
                                                 (let ((_hd2530525676_
                                                        (##car _e2530425672_))
                                                       (_tl2530625679_
                                                        (##cdr _e2530425672_)))
                                                   (if (gx#stx-null?
                                                        _tl2530625679_)
                                                       ((lambda (_L25682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L25684_)
                  (cons _L25684_ (cons _L25682_ '())))
                _hd2530525676_
                _hd2530225666_)
               (_g2522425645_ _g2522925649_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2522425645_ _g2522925649_))))
                                       (_g2522425645_ _g2522925649_))))
                               (_g2522425645_ _g2522925649_)))))
                    (let ((_g2522225779_
                           (lambda (_g2522925703_)
                             (if (gx#stx-pair? _g2522925703_)
                                 (let ((_e2528125706_
                                        (gx#syntax-e _g2522925703_)))
                                   (let ((_hd2528225710_ (##car _e2528125706_))
                                         (_tl2528325713_
                                          (##cdr _e2528125706_)))
                                     (if (gx#stx-pair? _tl2528325713_)
                                         (let ((_e2528425716_
                                                (gx#syntax-e _tl2528325713_)))
                                           (let ((_hd2528525720_
                                                  (##car _e2528425716_))
                                                 (_tl2528625723_
                                                  (##cdr _e2528425716_)))
                                             (if (gx#stx-pair? _hd2528525720_)
                                                 (let ((_e2528725726_
                                                        (gx#syntax-e
                                                         _hd2528525720_)))
                                                   (let ((_hd2528825730_
                                                          (##car _e2528725726_))
                                                         (_tl2528925733_
                                                          (##cdr _e2528725726_)))
                                                     (if (gx#identifier?
                                                          _hd2528825730_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core::<match>[1]#_g29823_|
                                                              _hd2528825730_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2528925733_)
                         (let ((_e2529025736_ (gx#syntax-e _tl2528925733_)))
                           (let ((_hd2529125740_ (##car _e2529025736_))
                                 (_tl2529225743_ (##cdr _e2529025736_)))
                             (if (gx#stx-null? _tl2529225743_)
                                 (if (gx#stx-pair? _tl2528625723_)
                                     (let ((_e2529325746_
                                            (gx#syntax-e _tl2528625723_)))
                                       (let ((_hd2529425750_
                                              (##car _e2529325746_))
                                             (_tl2529525753_
                                              (##cdr _e2529325746_)))
                                         (if (gx#stx-null? _tl2529525753_)
                                             ((lambda (_L25756_
                                                       _L25758_
                                                       _L25759_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'not)
                                                      (cons (cons _L25759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L25758_ (cons _L25756_ '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd2529425750_
                                              _hd2529125740_
                                              _hd2528225710_)
                                             (_g2522325699_ _g2522925703_))))
                                     (_g2522325699_ _g2522925703_))
                                 (_g2522325699_ _g2522925703_))))
                         (_g2522325699_ _g2522925703_))
                     (_g2522325699_ _g2522925703_))
                 (_g2522325699_ _g2522925703_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2522325699_
                                                  _g2522925703_))))
                                         (_g2522325699_ _g2522925703_))))
                                 (_g2522325699_ _g2522925703_)))))
                      (let ((_g2522125889_
                             (lambda (_g2522925783_)
                               (if (gx#stx-pair? _g2522925783_)
                                   (let ((_e2525725786_
                                          (gx#syntax-e _g2522925783_)))
                                     (let ((_hd2525825790_
                                            (##car _e2525725786_))
                                           (_tl2525925793_
                                            (##cdr _e2525725786_)))
                                       (if (gx#stx-pair? _tl2525925793_)
                                           (let ((_e2526025796_
                                                  (gx#syntax-e
                                                   _tl2525925793_)))
                                             (let ((_hd2526125800_
                                                    (##car _e2526025796_))
                                                   (_tl2526225803_
                                                    (##cdr _e2526025796_)))
                                               (if (gx#stx-pair?
                                                    _hd2526125800_)
                                                   (let ((_e2526325806_
                                                          (gx#syntax-e
                                                           _hd2526125800_)))
                                                     (let ((_hd2526425810_
                                                            (##car _e2526325806_))
                                                           (_tl2526525813_
                                                            (##cdr _e2526325806_)))
                                                       (if (gx#identifier?
                                                            _hd2526425810_)
                                                           (if (gx#free-identifier=?
                                                                |gerbil/core::<match>[1]#_g29824_|
                                                                _hd2526425810_)
                                                               (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl2526525813_)
                           (if (fx>= (gx#stx-length _tl2526525813_) '0)
                               (let ((_g29825_
                                      (gx#syntax-split-splice
                                       _tl2526525813_
                                       '0)))
                                 (begin
                                   (let ((_g29826_ (values-count _g29825_)))
                                     (if (not (fx= _g29826_ 2))
                                         (error "Context expects 2 values"
                                                _g29826_)))
                                   (let ((_target2526625816_
                                          (values-ref _g29825_ 0))
                                         (_tl2526825819_
                                          (values-ref _g29825_ 1)))
                                     (if (gx#stx-null? _tl2526825819_)
                                         (letrec ((_loop2526925822_
                                                   (lambda (_hd2526725826_
                                                            _pred2527325829_)
                                                     (if (gx#stx-pair?
                                                          _hd2526725826_)
                                                         (let ((_e2527025832_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2526725826_)))
                   (let ((_lp-hd2527125836_ (##car _e2527025832_))
                         (_lp-tl2527225839_ (##cdr _e2527025832_)))
                     (_loop2526925822_
                      _lp-tl2527225839_
                      (cons _lp-hd2527125836_ _pred2527325829_))))
                 (let ((_pred2527425842_ (reverse _pred2527325829_)))
                   (if (gx#stx-pair? _tl2526225803_)
                       (let ((_e2527525846_ (gx#syntax-e _tl2526225803_)))
                         (let ((_hd2527625850_ (##car _e2527525846_))
                               (_tl2527725853_ (##cdr _e2527525846_)))
                           (if (gx#stx-null? _tl2527725853_)
                               ((lambda (_L25856_ _L25858_ _L25859_)
                                  (cons (gx#datum->syntax '#f 'or)
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g2588025883_
                                                          _g2588125886_)
                                                   (cons (cons _L25859_
                                                               (cons _g2588025883_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L25856_ '())))
                 _g2588125886_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L25858_))))
                                _hd2527625850_
                                _pred2527425842_
                                _hd2525825790_)
                               (_g2522225779_ _g2522925783_))))
                       (_g2522225779_ _g2522925783_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop2526925822_
                                            _target2526625816_
                                            '()))
                                         (_g2522225779_ _g2522925783_)))))
                               (_g2522225779_ _g2522925783_))
                           (_g2522225779_ _g2522925783_))
                       (_g2522225779_ _g2522925783_))
                   (_g2522225779_ _g2522925783_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2522225779_
                                                    _g2522925783_))))
                                           (_g2522225779_ _g2522925783_))))
                                   (_g2522225779_ _g2522925783_)))))
                        (let ((_g2522025999_
                               (lambda (_g2522925893_)
                                 (if (gx#stx-pair? _g2522925893_)
                                     (let ((_e2523325896_
                                            (gx#syntax-e _g2522925893_)))
                                       (let ((_hd2523425900_
                                              (##car _e2523325896_))
                                             (_tl2523525903_
                                              (##cdr _e2523325896_)))
                                         (if (gx#stx-pair? _tl2523525903_)
                                             (let ((_e2523625906_
                                                    (gx#syntax-e
                                                     _tl2523525903_)))
                                               (let ((_hd2523725910_
                                                      (##car _e2523625906_))
                                                     (_tl2523825913_
                                                      (##cdr _e2523625906_)))
                                                 (if (gx#stx-pair?
                                                      _hd2523725910_)
                                                     (let ((_e2523925916_
                                                            (gx#syntax-e
                                                             _hd2523725910_)))
                                                       (let ((_hd2524025920_
                                                              (##car _e2523925916_))
                                                             (_tl2524125923_
                                                              (##cdr _e2523925916_)))
                                                         (if (gx#identifier?
                                                              _hd2524025920_)
                                                             (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          |gerbil/core::<match>[1]#_g29827_|
                          _hd2524025920_)
                         (if (gx#stx-pair/null? _tl2524125923_)
                             (if (fx>= (gx#stx-length _tl2524125923_) '0)
                                 (let ((_g29828_
                                        (gx#syntax-split-splice
                                         _tl2524125923_
                                         '0)))
                                   (begin
                                     (let ((_g29829_ (values-count _g29828_)))
                                       (if (not (fx= _g29829_ 2))
                                           (error "Context expects 2 values"
                                                  _g29829_)))
                                     (let ((_target2524225926_
                                            (values-ref _g29828_ 0))
                                           (_tl2524425929_
                                            (values-ref _g29828_ 1)))
                                       (if (gx#stx-null? _tl2524425929_)
                                           (letrec ((_loop2524525932_
                                                     (lambda (_hd2524325936_
                                                              _pred2524925939_)
                                                       (if (gx#stx-pair?
                                                            _hd2524325936_)
                                                           (let ((_e2524625942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd2524325936_)))
                     (let ((_lp-hd2524725946_ (##car _e2524625942_))
                           (_lp-tl2524825949_ (##cdr _e2524625942_)))
                       (_loop2524525932_
                        _lp-tl2524825949_
                        (cons _lp-hd2524725946_ _pred2524925939_))))
                   (let ((_pred2525025952_ (reverse _pred2524925939_)))
                     (if (gx#stx-pair? _tl2523825913_)
                         (let ((_e2525125956_ (gx#syntax-e _tl2523825913_)))
                           (let ((_hd2525225960_ (##car _e2525125956_))
                                 (_tl2525325963_ (##cdr _e2525125956_)))
                             (if (gx#stx-null? _tl2525325963_)
                                 ((lambda (_L25966_ _L25968_ _L25969_)
                                    (cons (gx#datum->syntax '#f 'and)
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2599025993_
                                                            _g2599125996_)
                                                     (cons (cons _L25969_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _g2599025993_ (cons _L25966_ '())))
                   _g2599125996_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _L25968_))))
                                  _hd2525225960_
                                  _pred2525025952_
                                  _hd2523425900_)
                                 (_g2522125889_ _g2522925893_))))
                         (_g2522125889_ _g2522925893_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop2524525932_
                                              _target2524225926_
                                              '()))
                                           (_g2522125889_ _g2522925893_)))))
                                 (_g2522125889_ _g2522925893_))
                             (_g2522125889_ _g2522925893_))
                         (_g2522125889_ _g2522925893_))
                     (_g2522125889_ _g2522925893_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2522125889_
                                                      _g2522925893_))))
                                             (_g2522125889_ _g2522925893_))))
                                     (_g2522125889_ _g2522925893_)))))
                          (_g2522025999_ _$stx25217_))))))))))))
    (define |gerbil/core::<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx26005_)
        (let ((_g2601026044_
               (lambda (_g2601126040_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2601126040_))))
          (let ((_g2600926101_
                 (lambda (_g2601126048_)
                   (if (gx#stx-pair? _g2601126048_)
                       (let ((_e2603026051_ (gx#syntax-e _g2601126048_)))
                         (let ((_hd2603126055_ (##car _e2603026051_))
                               (_tl2603226058_ (##cdr _e2603026051_)))
                           (if (gx#stx-pair? _tl2603226058_)
                               (let ((_e2603326061_
                                      (gx#syntax-e _tl2603226058_)))
                                 (let ((_hd2603426065_ (##car _e2603326061_))
                                       (_tl2603526068_ (##cdr _e2603326061_)))
                                   (if (gx#stx-pair? _tl2603526068_)
                                       (let ((_e2603626071_
                                              (gx#syntax-e _tl2603526068_)))
                                         (let ((_hd2603726075_
                                                (##car _e2603626071_))
                                               (_tl2603826078_
                                                (##cdr _e2603626071_)))
                                           (if (gx#stx-null? _tl2603826078_)
                                               ((lambda (_L26081_
                                                         _L26083_
                                                         _L26084_)
                                                  (cons _L26084_
                                                        (cons _L26083_
                                                              (cons _L26081_
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
                                                _hd2603726075_
                                                _hd2603426065_
                                                _hd2603126055_)
                                               (_g2601026044_ _g2601126048_))))
                                       (_g2601026044_ _g2601126048_))))
                               (_g2601026044_ _g2601126048_))))
                       (_g2601026044_ _g2601126048_)))))
            (let ((_g2600826169_
                   (lambda (_g2601126105_)
                     (if (gx#stx-pair? _g2601126105_)
                         (let ((_e2601526108_ (gx#syntax-e _g2601126105_)))
                           (let ((_hd2601626112_ (##car _e2601526108_))
                                 (_tl2601726115_ (##cdr _e2601526108_)))
                             (if (gx#stx-pair? _tl2601726115_)
                                 (let ((_e2601826118_
                                        (gx#syntax-e _tl2601726115_)))
                                   (let ((_hd2601926122_ (##car _e2601826118_))
                                         (_tl2602026125_
                                          (##cdr _e2601826118_)))
                                     (if (gx#stx-pair? _tl2602026125_)
                                         (let ((_e2602126128_
                                                (gx#syntax-e _tl2602026125_)))
                                           (let ((_hd2602226132_
                                                  (##car _e2602126128_))
                                                 (_tl2602326135_
                                                  (##cdr _e2602126128_)))
                                             (if (gx#stx-pair? _tl2602326135_)
                                                 (let ((_e2602426138_
                                                        (gx#syntax-e
                                                         _tl2602326135_)))
                                                   (let ((_hd2602526142_
                                                          (##car _e2602426138_))
                                                         (_tl2602626145_
                                                          (##cdr _e2602426138_)))
                                                     (if (gx#stx-null?
                                                          _tl2602626145_)
                                                         ((lambda (_L26148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L26150_
                           _L26151_)
                    (if (gx#identifier? _L26151_)
                        (cons (gx#datum->syntax '#f 'defsyntax)
                              (cons _L26151_
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'make-match-macro)
                                                (cons 'macro:
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let)
                          (cons (cons (cons (gx#datum->syntax '#f '$match-e)
                                            (cons _L26150_ '()))
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '$macro-e)
                                                  (cons _L26148_ '()))
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
                        (_g2600926101_ _g2601126105_)))
                  _hd2602526142_
                  _hd2602226132_
                  _hd2601926122_)
                 (_g2600926101_ _g2601126105_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2600926101_
                                                  _g2601126105_))))
                                         (_g2600926101_ _g2601126105_))))
                                 (_g2600926101_ _g2601126105_))))
                         (_g2600926101_ _g2601126105_)))))
              (_g2600826169_ _$stx26005_))))))
    (define |gerbil/core::<match>[:0:]#defrules-for-match|
      (lambda (_$stx26173_)
        (let ((_g2617726192_
               (lambda (_g2617826188_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2617826188_))))
          (let ((_g2617626235_
                 (lambda (_g2617826196_)
                   (if (gx#stx-pair? _g2617826196_)
                       (let ((_e2618126199_ (gx#syntax-e _g2617826196_)))
                         (let ((_hd2618226203_ (##car _e2618126199_))
                               (_tl2618326206_ (##cdr _e2618126199_)))
                           (if (gx#stx-pair? _tl2618326206_)
                               (let ((_e2618426209_
                                      (gx#syntax-e _tl2618326206_)))
                                 (let ((_hd2618526213_ (##car _e2618426209_))
                                       (_tl2618626216_ (##cdr _e2618426209_)))
                                   ((lambda (_L26219_ _L26221_)
                                      (cons (gx#datum->syntax
                                             '#f
                                             'defsyntax-for-match)
                                            (cons _L26221_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'syntax-rules)
                                                              _L26219_)
                                                        '()))))
                                    _tl2618626216_
                                    _hd2618526213_)))
                               (_g2617726192_ _g2617826196_))))
                       (_g2617726192_ _g2617826196_)))))
            (_g2617626235_ _$stx26173_)))))))
