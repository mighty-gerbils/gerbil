(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<match>[1]#_g30342_| (gx#core-quote-syntax 'apply))
  (define |gerbil/core::<match>[1]#_g30343_|
    (gx#core-quote-syntax 'quasiquote))
  (define |gerbil/core::<match>[1]#_g30344_| (gx#core-quote-syntax 'quote))
  (define |gerbil/core::<match>[1]#_g30347_| (gx#core-quote-syntax 'vector))
  (define |gerbil/core::<match>[1]#_g30348_| (gx#core-quote-syntax 'values))
  (define |gerbil/core::<match>[1]#_g30349_| (gx#core-quote-syntax 'values))
  (define |gerbil/core::<match>[1]#_g30350_| (gx#core-quote-syntax 'box))
  (define |gerbil/core::<match>[1]#_g30351_| (gx#core-quote-syntax '@list))
  (define |gerbil/core::<match>[1]#_g30352_| (gx#core-quote-syntax 'cons*))
  (define |gerbil/core::<match>[1]#_g30353_| (gx#core-quote-syntax 'cons))
  (define |gerbil/core::<match>[1]#_g30354_| (gx#core-quote-syntax 'not))
  (define |gerbil/core::<match>[1]#_g30355_| (gx#core-quote-syntax 'or))
  (define |gerbil/core::<match>[1]#_g30356_| (gx#core-quote-syntax 'and))
  (define |gerbil/core::<match>[1]#_g30357_| (gx#core-quote-syntax '?))
  (define |gerbil/core::<match>[1]#_g30358_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g30359_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g30372_| (gx#core-quote-syntax 'else))
  (define |gerbil/core::<match>[1]#_g30373_| (gx#core-quote-syntax 'else))
  (define |gerbil/core::<match>[1]#_g30374_| (gx#core-quote-syntax '<...>))
  (define |gerbil/core::<match>[1]#_g30375_| (gx#core-quote-syntax '<>))
  (define |gerbil/core::<match>[1]#_g30392_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g30393_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g30394_| (gx#core-quote-syntax 'not))
  (define |gerbil/core::<match>[1]#_g30395_| (gx#core-quote-syntax 'or))
  (define |gerbil/core::<match>[1]#_g30398_| (gx#core-quote-syntax 'and))
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
      (lambda _$args24447_
        (apply make-class-instance
               |gerbil/core::<match>[1]#match-macro::t|
               _$args24447_)))
    (define |gerbil/core::<match>[1]#syntax-local-match-macro?|
      (lambda (_stx24444_)
        (if (gx#identifier? _stx24444_)
            (|gerbil/core::<match>[1]#match-macro?|
             (gx#syntax-local-value _stx24444_ false))
            '#f)))
    (define |gerbil/core::<match>[1]#parse-match-pattern|
      (let ((_opt-lambda2276024430_
             (lambda (_stx22762_ _match-stx22764_)
               (let ((_parse-qq22772_
                      (lambda (_hd22778_)
                        (let ((_g2278022787_
                               (lambda (_g2278122783_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2278122783_))))
                          (_g2278022787_ _hd22778_)))))
                 (let ((_parse-error22773_
                        (lambda (_hd22775_)
                          (apply gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; illegal pattern"
                                 (if _match-stx22764_
                                     (cons _match-stx22764_
                                           (cons _stx22762_
                                                 (cons _hd22775_ '())))
                                     (cons _stx22762_
                                           (cons _hd22775_ '())))))))
                   (letrec ((_parse122766_
                             (lambda (_hd23113_)
                               (let ((_g2313923281_
                                      (lambda (_g2314023277_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g2314023277_))))
                                 (let ((_g2313823292_
                                        (lambda (_g2314023285_)
                                          ((lambda ()
                                             (_parse-error22773_
                                              _hd23113_))))))
                                   (let ((_g2313723310_
                                          (lambda (_g2314023296_)
                                            ((lambda (_L23299_)
                                               (if (gx#stx-datum? _L23299_)
                                                   (cons 'datum:
                                                         (cons (gx#stx-e
                                                                _L23299_)
                                                               '()))
                                                   (_g2313823292_
                                                    _g2314023296_)))
                                             _g2314023296_))))
                                     (let ((_g2313623326_
                                            (lambda (_g2314023314_)
                                              ((lambda (_L23317_)
                                                 (if (if (gx#identifier?
                                                          _L23317_)
                                                         (not (gx#ellipsis?
                                                               _L23317_))
                                                         '#f)
                                                     (cons 'var:
                                                           (cons _L23317_ '()))
                                                     (_g2313723310_
                                                      _g2314023314_)))
                                               _g2314023314_))))
                                       (let ((_g2313523342_
                                              (lambda (_g2314023330_)
                                                ((lambda (_L23333_)
                                                   (if (gx#underscore?
                                                        _L23333_)
                                                       (cons 'any: '())
                                                       (_g2313623326_
                                                        _g2314023330_)))
                                                 _g2314023330_))))
                                         (let ((_g2313423374_
                                                (lambda (_g2314023346_)
                                                  (if (gx#stx-pair?
                                                       _g2314023346_)
                                                      (let ((_e2327023349_
                                                             (gx#syntax-e
                                                              _g2314023346_)))
                                                        (let ((_hd2327123353_
                                                               (##car _e2327023349_))
                                                              (_tl2327223356_
                                                               (##cdr _e2327023349_)))
                                                          ((lambda (_L23359_)
                                                             (if (|gerbil/core::<match>[1]#syntax-local-match-macro?|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L23359_)
                         (_parse122766_
                          (gx#core-apply-expander
                           (gx#syntax-local-e _L23359_)
                           (gx#stx-wrap-source
                            (cons 'match: _hd23113_)
                            (let ((_$e23370_ (gx#stx-source _hd23113_)))
                              (if _$e23370_
                                  _$e23370_
                                  (gx#stx-source _stx22762_))))))
                         (_g2313523342_ _g2314023346_)))
                   _hd2327123353_)))
              (_g2313523342_ _g2314023346_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_g2313323428_
                                                  (lambda (_g2314023378_)
                                                    (if (gx#stx-pair?
                                                         _g2314023378_)
                                                        (let ((_e2326023381_
                                                               (gx#syntax-e
                                                                _g2314023378_)))
                                                          (let ((_hd2326123385_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2326023381_))
                        (_tl2326223388_ (##cdr _e2326023381_)))
                    (if (gx#identifier? _hd2326123385_)
                        (if (gx#free-identifier=?
                             |gerbil/core::<match>[1]#_g30342_|
                             _hd2326123385_)
                            (if (gx#stx-pair? _tl2326223388_)
                                (let ((_e2326323391_
                                       (gx#syntax-e _tl2326223388_)))
                                  (let ((_hd2326423395_ (##car _e2326323391_))
                                        (_tl2326523398_ (##cdr _e2326323391_)))
                                    (if (gx#stx-pair? _tl2326523398_)
                                        (let ((_e2326623401_
                                               (gx#syntax-e _tl2326523398_)))
                                          (let ((_hd2326723405_
                                                 (##car _e2326623401_))
                                                (_tl2326823408_
                                                 (##cdr _e2326623401_)))
                                            (if (gx#stx-null? _tl2326823408_)
                                                ((lambda (_L23411_ _L23413_)
                                                   (cons 'apply:
                                                         (cons _L23413_
                                                               (cons (_parse122766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L23411_)
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd2326723405_
                                                 _hd2326423395_)
                                                (_g2313423374_
                                                 _g2314023378_))))
                                        (_g2313423374_ _g2314023378_))))
                                (_g2313423374_ _g2314023378_))
                            (_g2313423374_ _g2314023378_))
                        (_g2313423374_ _g2314023378_))))
                (_g2313423374_ _g2314023378_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_g2313223468_
                                                    (lambda (_g2314023432_)
                                                      (if (gx#stx-pair?
                                                           _g2314023432_)
                                                          (let ((_e2325223435_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _g2314023432_)))
                    (let ((_hd2325323439_ (##car _e2325223435_))
                          (_tl2325423442_ (##cdr _e2325223435_)))
                      (if (gx#identifier? _hd2325323439_)
                          (if (gx#free-identifier=?
                               |gerbil/core::<match>[1]#_g30343_|
                               _hd2325323439_)
                              (if (gx#stx-pair? _tl2325423442_)
                                  (let ((_e2325523445_
                                         (gx#syntax-e _tl2325423442_)))
                                    (let ((_hd2325623449_
                                           (##car _e2325523445_))
                                          (_tl2325723452_
                                           (##cdr _e2325523445_)))
                                      (if (gx#stx-null? _tl2325723452_)
                                          ((lambda (_L23455_)
                                             (_parse-qq22772_ _L23455_))
                                           _hd2325623449_)
                                          (_g2313323428_ _g2314023432_))))
                                  (_g2313323428_ _g2314023432_))
                              (_g2313323428_ _g2314023432_))
                          (_g2313323428_ _g2314023432_))))
                  (_g2313323428_ _g2314023432_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_g2313123508_
                                                      (lambda (_g2314023472_)
                                                        (if (gx#stx-pair?
                                                             _g2314023472_)
                                                            (let ((_e2324523475_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g2314023472_)))
                      (let ((_hd2324623479_ (##car _e2324523475_))
                            (_tl2324723482_ (##cdr _e2324523475_)))
                        (if (gx#identifier? _hd2324623479_)
                            (if (gx#free-identifier=?
                                 |gerbil/core::<match>[1]#_g30344_|
                                 _hd2324623479_)
                                (if (gx#stx-pair? _tl2324723482_)
                                    (let ((_e2324823485_
                                           (gx#syntax-e _tl2324723482_)))
                                      (let ((_hd2324923489_
                                             (##car _e2324823485_))
                                            (_tl2325023492_
                                             (##cdr _e2324823485_)))
                                        (if (gx#stx-null? _tl2325023492_)
                                            ((lambda (_L23495_)
                                               (cons 'datum:
                                                     (cons (gx#stx-e _L23495_)
                                                           '())))
                                             _hd2324923489_)
                                            (_g2313223468_ _g2314023472_))))
                                    (_g2313223468_ _g2314023472_))
                                (_g2313223468_ _g2314023472_))
                            (_g2313223468_ _g2314023472_))))
                    (_g2313223468_ _g2314023472_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_g2313023558_
                                                        (lambda (_g2314023512_)
                                                          (if (gx#stx-pair?
                                                               _g2314023512_)
                                                              (let ((_e2323823515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _g2314023512_)))
                        (let ((_hd2323923519_ (##car _e2323823515_))
                              (_tl2324023522_ (##cdr _e2323823515_)))
                          (if (gx#stx-pair? _tl2324023522_)
                              (let ((_e2324123525_
                                     (gx#syntax-e _tl2324023522_)))
                                (let ((_hd2324223529_ (##car _e2324123525_))
                                      (_tl2324323532_ (##cdr _e2324123525_)))
                                  (if (gx#stx-null? _tl2324323532_)
                                      ((lambda (_L23535_ _L23537_)
                                         (if (if (gx#identifier? _L23537_)
                                                 (let ((_$e23550_
                                                        (gx#free-identifier=?
                                                         _L23537_
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eq?))))
                                                   (if _$e23550_
                                                       _$e23550_
                                                       (let ((_$e23554_
                                                              (gx#free-identifier=?
                                                               _L23537_
                                                               (gx#datum->syntax
                                                                '#f
                                                                'eqv?))))
                                                         (if _$e23554_
                                                             _$e23554_
                                                             (gx#free-identifier=?
                                                              _L23537_
                                                              (gx#datum->syntax
                                                               '#f
                                                               'equal?))))))
                                                 '#f)
                                             (cons '?:
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'cut)
                                                               (cons _L23537_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f '<>)
                                   (cons _L23535_ '()))))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2313123508_ _g2314023512_)))
                                       _hd2324223529_
                                       _hd2323923519_)
                                      (_g2313123508_ _g2314023512_))))
                              (_g2313123508_ _g2314023512_))))
                      (_g2313123508_ _g2314023512_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_g2312923588_
                                                          (lambda (_g2314023562_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2314023562_)
                        (let ((_e2323323565_ (gx#syntax-e _g2314023562_)))
                          (let ((_hd2323423569_ (##car _e2323323565_))
                                (_tl2323523572_ (##cdr _e2323323565_)))
                            ((lambda (_L23575_ _L23577_)
                               (if (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-class-info?|
                                    _L23577_)
                                   (cons 'class:
                                         (cons (gx#syntax-local-value _L23577_)
                                               (cons (_parse-class-body22771_
                                                      _L23575_)
                                                     '())))
                                   (_g2313023558_ _g2314023562_)))
                             _tl2323523572_
                             _hd2323423569_)))
                        (_g2313023558_ _g2314023562_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_g2312823618_
                                                            (lambda (_g2314023592_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2314023592_)
                          (let ((_e2322823595_ (gx#syntax-e _g2314023592_)))
                            (let ((_hd2322923599_ (##car _e2322823595_))
                                  (_tl2323023602_ (##cdr _e2322823595_)))
                              ((lambda (_L23605_ _L23607_)
                                 (if (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-struct-info?|
                                      _L23607_)
                                     (cons 'struct:
                                           (cons (gx#syntax-local-value
                                                  _L23607_)
                                                 (cons (_parse-vector22769_
                                                        _L23605_)
                                                       '())))
                                     (_g2312923588_ _g2314023592_)))
                               _tl2323023602_
                               _hd2322923599_)))
                          (_g2312923588_ _g2314023592_)))))
               (let ((_g2312723681_
                      (lambda (_g2314023622_)
                        (if (gx#stx-vector? _g2314023622_)
                            (let ((_e2321623625_
                                   (vector->list (gx#syntax-e _g2314023622_))))
                              (if (gx#stx-pair/null? _e2321623625_)
                                  (if (fx>= (gx#stx-length _e2321623625_) '0)
                                      (let ((_g30345_
                                             (gx#syntax-split-splice
                                              _e2321623625_
                                              '0)))
                                        (begin
                                          (let ((_g30346_
                                                 (values-count _g30345_)))
                                            (if (not (fx= _g30346_ 2))
                                                (error "Context expects 2 values"
                                                       _g30346_)))
                                          (let ((_target2321723629_
                                                 (values-ref _g30345_ 0))
                                                (_tl2321923632_
                                                 (values-ref _g30345_ 1)))
                                            (if (gx#stx-null? _tl2321923632_)
                                                (letrec ((_loop2322023635_
                                                          (lambda (_hd2321823639_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body2322423642_)
                    (if (gx#stx-pair? _hd2321823639_)
                        (let ((_e2322123645_ (gx#syntax-e _hd2321823639_)))
                          (let ((_lp-hd2322223649_ (##car _e2322123645_))
                                (_lp-tl2322323652_ (##cdr _e2322123645_)))
                            (_loop2322023635_
                             _lp-tl2322323652_
                             (cons _lp-hd2322223649_ _body2322423642_))))
                        (let ((_body2322523655_ (reverse _body2322423642_)))
                          ((lambda (_L23659_)
                             (cons 'vector:
                                   (cons (_parse-vector22769_
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2367223675_
                                                            _g2367323678_)
                                                     (cons _g2367223675_
                                                           _g2367323678_))
                                                   '()
                                                   _L23659_)))
                                         '())))
                           _body2322523655_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2322023635_
                                                   _target2321723629_
                                                   '()))
                                                (_g2312823618_
                                                 _g2314023622_)))))
                                      (_g2312823618_ _g2314023622_))
                                  (_g2312823618_ _g2314023622_)))
                            (_g2312823618_ _g2314023622_)))))
                 (let ((_g2312623709_
                        (lambda (_g2314023685_)
                          (if (gx#stx-pair? _g2314023685_)
                              (let ((_e2321223688_
                                     (gx#syntax-e _g2314023685_)))
                                (let ((_hd2321323692_ (##car _e2321223688_))
                                      (_tl2321423695_ (##cdr _e2321223688_)))
                                  (if (gx#identifier? _hd2321323692_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core::<match>[1]#_g30347_|
                                           _hd2321323692_)
                                          ((lambda (_L23698_)
                                             (cons 'vector:
                                                   (cons (_parse-vector22769_
                                                          _L23698_)
                                                         '())))
                                           _tl2321423695_)
                                          (_g2312723681_ _g2314023685_))
                                      (_g2312723681_ _g2314023685_))))
                              (_g2312723681_ _g2314023685_)))))
                   (let ((_g2312523737_
                          (lambda (_g2314023713_)
                            (if (gx#stx-pair? _g2314023713_)
                                (let ((_e2320823716_
                                       (gx#syntax-e _g2314023713_)))
                                  (let ((_hd2320923720_ (##car _e2320823716_))
                                        (_tl2321023723_ (##cdr _e2320823716_)))
                                    (if (gx#identifier? _hd2320923720_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core::<match>[1]#_g30348_|
                                             _hd2320923720_)
                                            ((lambda (_L23726_)
                                               (cons 'values:
                                                     (cons (_parse-vector22769_
                                                            _L23726_)
                                                           '())))
                                             _tl2321023723_)
                                            (_g2312623709_ _g2314023713_))
                                        (_g2312623709_ _g2314023713_))))
                                (_g2312623709_ _g2314023713_)))))
                     (let ((_g2312423777_
                            (lambda (_g2314023741_)
                              (if (gx#stx-pair? _g2314023741_)
                                  (let ((_e2320123744_
                                         (gx#syntax-e _g2314023741_)))
                                    (let ((_hd2320223748_
                                           (##car _e2320123744_))
                                          (_tl2320323751_
                                           (##cdr _e2320123744_)))
                                      (if (gx#identifier? _hd2320223748_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core::<match>[1]#_g30349_|
                                               _hd2320223748_)
                                              (if (gx#stx-pair? _tl2320323751_)
                                                  (let ((_e2320423754_
                                                         (gx#syntax-e
                                                          _tl2320323751_)))
                                                    (let ((_hd2320523758_
                                                           (##car _e2320423754_))
                                                          (_tl2320623761_
                                                           (##cdr _e2320423754_)))
                                                      (if (gx#stx-null?
                                                           _tl2320623761_)
                                                          ((lambda (_L23764_)
                                                             (_parse122766_
                                                              _L23764_))
                                                           _hd2320523758_)
                                                          (_g2312523737_
                                                           _g2314023741_))))
                                                  (_g2312523737_
                                                   _g2314023741_))
                                              (_g2312523737_ _g2314023741_))
                                          (_g2312523737_ _g2314023741_))))
                                  (_g2312523737_ _g2314023741_)))))
                       (let ((_g2312323798_
                              (lambda (_g2314023781_)
                                (if (gx#stx-box? _g2314023781_)
                                    (let ((_e2319923784_
                                           (unbox (gx#syntax-e
                                                   _g2314023781_))))
                                      ((lambda (_L23788_)
                                         (cons 'box:
                                               (cons (_parse122766_ _L23788_)
                                                     '())))
                                       _e2319923784_))
                                    (_g2312423777_ _g2314023781_)))))
                         (let ((_g2312223838_
                                (lambda (_g2314023802_)
                                  (if (gx#stx-pair? _g2314023802_)
                                      (let ((_e2319223805_
                                             (gx#syntax-e _g2314023802_)))
                                        (let ((_hd2319323809_
                                               (##car _e2319223805_))
                                              (_tl2319423812_
                                               (##cdr _e2319223805_)))
                                          (if (gx#identifier? _hd2319323809_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core::<match>[1]#_g30350_|
                                                   _hd2319323809_)
                                                  (if (gx#stx-pair?
                                                       _tl2319423812_)
                                                      (let ((_e2319523815_
                                                             (gx#syntax-e
                                                              _tl2319423812_)))
                                                        (let ((_hd2319623819_
                                                               (##car _e2319523815_))
                                                              (_tl2319723822_
                                                               (##cdr _e2319523815_)))
                                                          (if (gx#stx-null?
                                                               _tl2319723822_)
                                                              ((lambda (_L23825_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons 'box: (cons (_parse122766_ _L23825_) '())))
                       _hd2319623819_)
                      (_g2312323798_ _g2314023802_))))
              (_g2312323798_ _g2314023802_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2312323798_
                                                   _g2314023802_))
                                              (_g2312323798_ _g2314023802_))))
                                      (_g2312323798_ _g2314023802_)))))
                           (let ((_g2312123866_
                                  (lambda (_g2314023842_)
                                    (if (gx#stx-pair? _g2314023842_)
                                        (let ((_e2318823845_
                                               (gx#syntax-e _g2314023842_)))
                                          (let ((_hd2318923849_
                                                 (##car _e2318823845_))
                                                (_tl2319023852_
                                                 (##cdr _e2318823845_)))
                                            (if (gx#identifier? _hd2318923849_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core::<match>[1]#_g30351_|
                                                     _hd2318923849_)
                                                    ((lambda (_L23855_)
                                                       (_parse-list22768_
                                                        _L23855_))
                                                     _tl2319023852_)
                                                    (_g2312223838_
                                                     _g2314023842_))
                                                (_g2312223838_
                                                 _g2314023842_))))
                                        (_g2312223838_ _g2314023842_)))))
                             (let ((_g2312023922_
                                    (lambda (_g2314023870_)
                                      (if (gx#stx-pair? _g2314023870_)
                                          (let ((_e2317823873_
                                                 (gx#syntax-e _g2314023870_)))
                                            (let ((_hd2317923877_
                                                   (##car _e2317823873_))
                                                  (_tl2318023880_
                                                   (##cdr _e2317823873_)))
                                              (if (gx#identifier?
                                                   _hd2317923877_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core::<match>[1]#_g30352_|
                                                       _hd2317923877_)
                                                      (if (gx#stx-pair?
                                                           _tl2318023880_)
                                                          (let ((_e2318123883_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2318023880_)))
                    (let ((_hd2318223887_ (##car _e2318123883_))
                          (_tl2318323890_ (##cdr _e2318123883_)))
                      (if (gx#stx-pair? _tl2318323890_)
                          (let ((_e2318423893_ (gx#syntax-e _tl2318323890_)))
                            (let ((_hd2318523897_ (##car _e2318423893_))
                                  (_tl2318623900_ (##cdr _e2318423893_)))
                              ((lambda (_L23903_ _L23905_ _L23906_)
                                 (if (gx#stx-null? _L23903_)
                                     (cons 'cons:
                                           (cons (_parse122766_ _L23906_)
                                                 (cons (_parse122766_ _L23905_)
                                                       '())))
                                     (cons 'cons:
                                           (cons (_parse122766_ _L23906_)
                                                 (cons (_parse122766_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'cons*)
                                                              (cons _L23905_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L23903_)))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _tl2318623900_
                               _hd2318523897_
                               _hd2318223887_)))
                          (_g2312123866_ _g2314023870_))))
                  (_g2312123866_ _g2314023870_))
              (_g2312123866_ _g2314023870_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2312123866_
                                                   _g2314023870_))))
                                          (_g2312123866_ _g2314023870_)))))
                               (let ((_g2311923976_
                                      (lambda (_g2314023926_)
                                        (if (gx#stx-pair? _g2314023926_)
                                            (let ((_e2316623929_
                                                   (gx#syntax-e
                                                    _g2314023926_)))
                                              (let ((_hd2316723933_
                                                     (##car _e2316623929_))
                                                    (_tl2316823936_
                                                     (##cdr _e2316623929_)))
                                                (if (gx#identifier?
                                                     _hd2316723933_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core::<match>[1]#_g30353_|
                                                         _hd2316723933_)
                                                        (if (gx#stx-pair?
                                                             _tl2316823936_)
                                                            (let ((_e2316923939_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl2316823936_)))
                      (let ((_hd2317023943_ (##car _e2316923939_))
                            (_tl2317123946_ (##cdr _e2316923939_)))
                        (if (gx#stx-pair? _tl2317123946_)
                            (let ((_e2317223949_ (gx#syntax-e _tl2317123946_)))
                              (let ((_hd2317323953_ (##car _e2317223949_))
                                    (_tl2317423956_ (##cdr _e2317223949_)))
                                (if (gx#stx-null? _tl2317423956_)
                                    ((lambda (_L23959_ _L23961_)
                                       (cons 'cons:
                                             (cons (_parse122766_ _L23961_)
                                                   (cons (_parse122766_
                                                          _L23959_)
                                                         '()))))
                                     _hd2317323953_
                                     _hd2317023943_)
                                    (_g2312023922_ _g2314023926_))))
                            (_g2312023922_ _g2314023926_))))
                    (_g2312023922_ _g2314023926_))
                (_g2312023922_ _g2314023926_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2312023922_
                                                     _g2314023926_))))
                                            (_g2312023922_ _g2314023926_)))))
                                 (let ((_g2311824016_
                                        (lambda (_g2314023980_)
                                          (if (gx#stx-pair? _g2314023980_)
                                              (let ((_e2315823983_
                                                     (gx#syntax-e
                                                      _g2314023980_)))
                                                (let ((_hd2315923987_
                                                       (##car _e2315823983_))
                                                      (_tl2316023990_
                                                       (##cdr _e2315823983_)))
                                                  (if (gx#identifier?
                                                       _hd2315923987_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core::<match>[1]#_g30354_|
                                                           _hd2315923987_)
                                                          (if (gx#stx-pair?
                                                               _tl2316023990_)
                                                              (let ((_e2316123993_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl2316023990_)))
                        (let ((_hd2316223997_ (##car _e2316123993_))
                              (_tl2316324000_ (##cdr _e2316123993_)))
                          (if (gx#stx-null? _tl2316324000_)
                              ((lambda (_L24003_)
                                 (cons 'not:
                                       (cons (_parse122766_ _L24003_) '())))
                               _hd2316223997_)
                              (_g2311923976_ _g2314023980_))))
                      (_g2311923976_ _g2314023980_))
                  (_g2311923976_ _g2314023980_))
              (_g2311923976_ _g2314023980_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2311923976_ _g2314023980_)))))
                                   (let ((_g2311724101_
                                          (lambda (_g2314024020_)
                                            (if (gx#stx-pair? _g2314024020_)
                                                (let ((_e2315424023_
                                                       (gx#syntax-e
                                                        _g2314024020_)))
                                                  (let ((_hd2315524027_
                                                         (##car _e2315424023_))
                                                        (_tl2315624030_
                                                         (##cdr _e2315424023_)))
                                                    (if (gx#identifier?
                                                         _hd2315524027_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core::<match>[1]#_g30355_|
                                                             _hd2315524027_)
                                                            ((lambda (_L24033_)
                                                               (if (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L24033_)
                           (let ((_g2404524056_
                                  (lambda (_g2404624052_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g2404624052_))))
                             (let ((_g2404424067_
                                    (lambda (_g2404624060_)
                                      ((lambda ()
                                         (cons 'or:
                                               (gx#stx-map
                                                _parse122766_
                                                _L24033_)))))))
                               (let ((_g2404324097_
                                      (lambda (_g2404624071_)
                                        (if (gx#stx-pair? _g2404624071_)
                                            (let ((_e2404824074_
                                                   (gx#syntax-e
                                                    _g2404624071_)))
                                              (let ((_hd2404924078_
                                                     (##car _e2404824074_))
                                                    (_tl2405024081_
                                                     (##cdr _e2404824074_)))
                                                (if (gx#stx-null?
                                                     _tl2405024081_)
                                                    ((lambda (_L24084_)
                                                       (_parse122766_
                                                        _L24084_))
                                                     _hd2404924078_)
                                                    (_g2404424067_
                                                     _g2404624071_))))
                                            (_g2404424067_ _g2404624071_)))))
                                 (_g2404324097_ _L24033_))))
                           (_g2311824016_ _g2314024020_)))
                     _tl2315624030_)
                    (_g2311824016_ _g2314024020_))
                (_g2311824016_ _g2314024020_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2311824016_
                                                 _g2314024020_)))))
                                     (let ((_g2311624186_
                                            (lambda (_g2314024105_)
                                              (if (gx#stx-pair? _g2314024105_)
                                                  (let ((_e2315024108_
                                                         (gx#syntax-e
                                                          _g2314024105_)))
                                                    (let ((_hd2315124112_
                                                           (##car _e2315024108_))
                                                          (_tl2315224115_
                                                           (##cdr _e2315024108_)))
                                                      (if (gx#identifier?
                                                           _hd2315124112_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core::<match>[1]#_g30356_|
                                                               _hd2315124112_)
                                                              ((lambda (_L24118_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#stx-list? _L24118_)
                             (let ((_g2413024141_
                                    (lambda (_g2413124137_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g2413124137_))))
                               (let ((_g2412924152_
                                      (lambda (_g2413124145_)
                                        ((lambda ()
                                           (cons 'and:
                                                 (gx#stx-map
                                                  _parse122766_
                                                  _L24118_)))))))
                                 (let ((_g2412824182_
                                        (lambda (_g2413124156_)
                                          (if (gx#stx-pair? _g2413124156_)
                                              (let ((_e2413324159_
                                                     (gx#syntax-e
                                                      _g2413124156_)))
                                                (let ((_hd2413424163_
                                                       (##car _e2413324159_))
                                                      (_tl2413524166_
                                                       (##cdr _e2413324159_)))
                                                  (if (gx#stx-null?
                                                       _tl2413524166_)
                                                      ((lambda (_L24169_)
                                                         (_parse122766_
                                                          _L24169_))
                                                       _hd2413424163_)
                                                      (_g2412924152_
                                                       _g2413124156_))))
                                              (_g2412924152_ _g2413124156_)))))
                                   (_g2412824182_ _L24118_))))
                             (_g2311724101_ _g2314024105_)))
                       _tl2315224115_)
                      (_g2311724101_ _g2314024105_))
                  (_g2311724101_ _g2314024105_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2311724101_
                                                   _g2314024105_)))))
                                       (let ((_g2311524426_
                                              (lambda (_g2314024190_)
                                                (if (gx#stx-pair?
                                                     _g2314024190_)
                                                    (let ((_e2314324193_
                                                           (gx#syntax-e
                                                            _g2314024190_)))
                                                      (let ((_hd2314424197_
                                                             (##car _e2314324193_))
                                                            (_tl2314524200_
                                                             (##cdr _e2314324193_)))
                                                        (if (gx#identifier?
                                                             _hd2314424197_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core::<match>[1]#_g30357_|
                         _hd2314424197_)
                        (if (gx#stx-pair? _tl2314524200_)
                            (let ((_e2314624203_ (gx#syntax-e _tl2314524200_)))
                              (let ((_hd2314724207_ (##car _e2314624203_))
                                    (_tl2314824210_ (##cdr _e2314624203_)))
                                ((lambda (_L24213_ _L24215_)
                                   (let ((_g2423224264_
                                          (lambda (_g2423324260_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g2423324260_))))
                                     (let ((_g2423124275_
                                            (lambda (_g2423324268_)
                                              ((lambda ()
                                                 (_parse-error22773_
                                                  _hd23113_))))))
                                       (let ((_g2423024343_
                                              (lambda (_g2423324279_)
                                                (if (gx#stx-pair?
                                                     _g2423324279_)
                                                    (let ((_e2424724282_
                                                           (gx#syntax-e
                                                            _g2423324279_)))
                                                      (let ((_hd2424824286_
                                                             (##car _e2424724282_))
                                                            (_tl2424924289_
                                                             (##cdr _e2424724282_)))
                                                        (if (gx#stx-datum?
                                                             _hd2424824286_)
                                                            (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _hd2424824286_)
                                '::)
                        (if (gx#stx-pair? _tl2424924289_)
                            (let ((_e2425024292_ (gx#syntax-e _tl2424924289_)))
                              (let ((_hd2425124296_ (##car _e2425024292_))
                                    (_tl2425224299_ (##cdr _e2425024292_)))
                                (if (gx#stx-pair? _tl2425224299_)
                                    (let ((_e2425324302_
                                           (gx#syntax-e _tl2425224299_)))
                                      (let ((_hd2425424306_
                                             (##car _e2425324302_))
                                            (_tl2425524309_
                                             (##cdr _e2425324302_)))
                                        (if (gx#identifier? _hd2425424306_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<match>[1]#_g30358_|
                                                 _hd2425424306_)
                                                (if (gx#stx-pair?
                                                     _tl2425524309_)
                                                    (let ((_e2425624312_
                                                           (gx#syntax-e
                                                            _tl2425524309_)))
                                                      (let ((_hd2425724316_
                                                             (##car _e2425624312_))
                                                            (_tl2425824319_
                                                             (##cdr _e2425624312_)))
                                                        (if (gx#stx-null?
                                                             _tl2425824319_)
                                                            ((lambda (_L24322_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L24324_)
                       (cons '?:
                             (cons _L24215_
                                   (cons '::
                                         (cons _L24324_
                                               (cons '=>:
                                                     (cons (_parse122766_
                                                            _L24322_)
                                                           '())))))))
                     _hd2425724316_
                     _hd2425124296_)
                    (_g2423124275_ _g2423324279_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2423124275_
                                                     _g2423324279_))
                                                (_g2423124275_ _g2423324279_))
                                            (_g2423124275_ _g2423324279_))))
                                    (_g2423124275_ _g2423324279_))))
                            (_g2423124275_ _g2423324279_))
                        (_g2423124275_ _g2423324279_))
                    (_g2423124275_ _g2423324279_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2423124275_
                                                     _g2423324279_)))))
                                         (let ((_g2422924383_
                                                (lambda (_g2423324347_)
                                                  (if (gx#stx-pair?
                                                       _g2423324347_)
                                                      (let ((_e2423924350_
                                                             (gx#syntax-e
                                                              _g2423324347_)))
                                                        (let ((_hd2424024354_
                                                               (##car _e2423924350_))
                                                              (_tl2424124357_
                                                               (##cdr _e2423924350_)))
                                                          (if (gx#identifier?
                                                               _hd2424024354_)
                                                              (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           |gerbil/core::<match>[1]#_g30359_|
                           _hd2424024354_)
                          (if (gx#stx-pair? _tl2424124357_)
                              (let ((_e2424224360_
                                     (gx#syntax-e _tl2424124357_)))
                                (let ((_hd2424324364_ (##car _e2424224360_))
                                      (_tl2424424367_ (##cdr _e2424224360_)))
                                  (if (gx#stx-null? _tl2424424367_)
                                      ((lambda (_L24370_)
                                         (cons '?:
                                               (cons _L24215_
                                                     (cons '=>:
                                                           (cons (_parse122766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L24370_)
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd2424324364_)
                                      (_g2423024343_ _g2423324347_))))
                              (_g2423024343_ _g2423324347_))
                          (_g2423024343_ _g2423324347_))
                      (_g2423024343_ _g2423324347_))))
              (_g2423024343_ _g2423324347_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_g2422824411_
                                                  (lambda (_g2423324387_)
                                                    (if (gx#stx-pair?
                                                         _g2423324387_)
                                                        (let ((_e2423524390_
                                                               (gx#syntax-e
                                                                _g2423324387_)))
                                                          (let ((_hd2423624394_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2423524390_))
                        (_tl2423724397_ (##cdr _e2423524390_)))
                    (if (gx#stx-null? _tl2423724397_)
                        ((lambda (_L24400_)
                           (cons '?:
                                 (cons _L24215_
                                       (cons (_parse122766_ _L24400_) '()))))
                         _hd2423624394_)
                        (_g2422924383_ _g2423324387_))))
                (_g2422924383_ _g2423324387_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_g2422724422_
                                                    (lambda (_g2423324415_)
                                                      (if (gx#stx-null?
                                                           _g2423324415_)
                                                          ((lambda ()
                                                             (cons '?:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L24215_ '()))))
                  (_g2422824411_ _g2423324415_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2422724422_ _L24213_))))))))
                                 _tl2314824210_
                                 _hd2314724207_)))
                            (_g2311624186_ _g2314024190_))
                        (_g2311624186_ _g2314024190_))
                    (_g2311624186_ _g2314024190_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2311624186_
                                                     _g2314024190_)))))
                                         (_g2311524426_
                                          _hd23113_))))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (_parse-list22768_
                             (lambda (_body22948_)
                               (let ((_g2295422982_
                                      (lambda (_g2295522978_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g2295522978_))))
                                 (let ((_g2295322993_
                                        (lambda (_g2295522986_)
                                          ((lambda ()
                                             (if (gx#stx-null? _body22948_)
                                                 (cons 'null: '())
                                                 (if (not (gx#stx-pair?
                                                           _body22948_))
                                                     (_parse122766_
                                                      _body22948_)
                                                     (_parse-error22773_
                                                      _body22948_))))))))
                                   (let ((_g2295223025_
                                          (lambda (_g2295522997_)
                                            (if (gx#stx-pair? _g2295522997_)
                                                (let ((_e2297423000_
                                                       (gx#syntax-e
                                                        _g2295522997_)))
                                                  (let ((_hd2297523004_
                                                         (##car _e2297423000_))
                                                        (_tl2297623007_
                                                         (##cdr _e2297423000_)))
                                                    ((lambda (_L23010_
                                                              _L23012_)
                                                       (if (not (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L23012_))
                   (cons 'cons:
                         (cons (_parse122766_ _L23012_)
                               (cons (_parse-list22768_ _L23010_) '())))
                   (_g2295322993_ _g2295522997_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _tl2297623007_
                                                     _hd2297523004_)))
                                                (_g2295322993_
                                                 _g2295522997_)))))
                                     (let ((_g2295123069_
                                            (lambda (_g2295523029_)
                                              (if (gx#stx-pair? _g2295523029_)
                                                  (let ((_e2296623032_
                                                         (gx#syntax-e
                                                          _g2295523029_)))
                                                    (let ((_hd2296723036_
                                                           (##car _e2296623032_))
                                                          (_tl2296823039_
                                                           (##cdr _e2296623032_)))
                                                      (if (gx#stx-pair?
                                                           _tl2296823039_)
                                                          (let ((_e2296923042_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2296823039_)))
                    (let ((_hd2297023046_ (##car _e2296923042_))
                          (_tl2297123049_ (##cdr _e2296923042_)))
                      ((lambda (_L23052_ _L23054_ _L23055_)
                         (if (gx#ellipsis? _L23054_)
                             (cons 'splice:
                                   (cons (_parse122766_ _L23055_)
                                         (cons (_parse-list22768_ _L23052_)
                                               '())))
                             (_g2295223025_ _g2295523029_)))
                       _tl2297123049_
                       _hd2297023046_
                       _hd2296723036_)))
                  (_g2295223025_ _g2295523029_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2295223025_
                                                   _g2295523029_)))))
                                       (let ((_g2295023109_
                                              (lambda (_g2295523073_)
                                                (if (gx#stx-pair?
                                                     _g2295523073_)
                                                    (let ((_e2295723076_
                                                           (gx#syntax-e
                                                            _g2295523073_)))
                                                      (let ((_hd2295823080_
                                                             (##car _e2295723076_))
                                                            (_tl2295923083_
                                                             (##cdr _e2295723076_)))
                                                        (if (gx#stx-datum?
                                                             _hd2295823080_)
                                                            (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _hd2295823080_)
                                '::)
                        (if (gx#stx-pair? _tl2295923083_)
                            (let ((_e2296023086_ (gx#syntax-e _tl2295923083_)))
                              (let ((_hd2296123090_ (##car _e2296023086_))
                                    (_tl2296223093_ (##cdr _e2296023086_)))
                                (if (gx#stx-null? _tl2296223093_)
                                    ((lambda (_L23096_)
                                       (_parse122766_ _L23096_))
                                     _hd2296123090_)
                                    (_g2295123069_ _g2295523073_))))
                            (_g2295123069_ _g2295523073_))
                        (_g2295123069_ _g2295523073_))
                    (_g2295123069_ _g2295523073_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2295123069_
                                                     _g2295523073_)))))
                                         (_g2295023109_ _body22948_))))))))
                            (_parse-vector22769_
                             (lambda (_body22945_)
                               (if (_simple-vector?22770_ _body22945_)
                                   (cons 'simple:
                                         (cons (gx#stx-map
                                                _parse122766_
                                                _body22945_)
                                               '()))
                                   (cons 'list:
                                         (cons (_parse-list22768_ _body22945_)
                                               '())))))
                            (_simple-vector?22770_
                             (lambda (_body22882_)
                               (let ((_g2288622898_
                                      (lambda (_g2288722894_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g2288722894_))))
                                 (let ((_g2288522909_
                                        (lambda (_g2288722902_)
                                          ((lambda ()
                                             (gx#stx-null? _body22882_))))))
                                   (let ((_g2288422941_
                                          (lambda (_g2288722913_)
                                            (if (gx#stx-pair? _g2288722913_)
                                                (let ((_e2289022916_
                                                       (gx#syntax-e
                                                        _g2288722913_)))
                                                  (let ((_hd2289122920_
                                                         (##car _e2289022916_))
                                                        (_tl2289222923_
                                                         (##cdr _e2289022916_)))
                                                    ((lambda (_L22926_
                                                              _L22928_)
                                                       (if (not (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L22928_))
                   (_simple-vector?22770_ _L22926_)
                   '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _tl2289222923_
                                                     _hd2289122920_)))
                                                (_g2288522909_
                                                 _g2288722913_)))))
                                     (_g2288422941_ _body22882_))))))
                            (_parse-class-body22771_
                             (lambda (_body22791_)
                               ((letrec ((_recur22794_
                                          (lambda (_rest22797_)
                                            (let ((_g2280122817_
                                                   (lambda (_g2280222813_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2280222813_))))
                                              (let ((_g2280022828_
                                                     (lambda (_g2280222821_)
                                                       ((lambda ()
                                                          (if (gx#stx-null?
                                                               _rest22797_)
                                                              '()
                                                              (_parse-error22773_
                                                               _rest22797_)))))))
                                                (let ((_g2279922878_
                                                       (lambda (_g2280222832_)
                                                         (if (gx#stx-pair?
                                                              _g2280222832_)
                                                             (let ((_e2280622835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g2280222832_)))
                       (let ((_hd2280722839_ (##car _e2280622835_))
                             (_tl2280822842_ (##cdr _e2280622835_)))
                         (if (gx#stx-pair? _tl2280822842_)
                             (let ((_e2280922845_
                                    (gx#syntax-e _tl2280822842_)))
                               (let ((_hd2281022849_ (##car _e2280922845_))
                                     (_tl2281122852_ (##cdr _e2280922845_)))
                                 ((lambda (_L22855_ _L22857_ _L22858_)
                                    (if (gx#stx-keyword? _L22858_)
                                        (cons* _L22858_
                                               (_parse122766_ _L22857_)
                                               (_recur22794_ _L22855_))
                                        (_g2280022828_ _g2280222832_)))
                                  _tl2281122852_
                                  _hd2281022849_
                                  _hd2280722839_)))
                             (_g2280022828_ _g2280222832_))))
                     (_g2280022828_ _g2280222832_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2279922878_
                                                   _rest22797_)))))))
                                  _recur22794_)
                                _body22791_))))
                     (_parse122766_ _stx22762_)))))))
        (lambda _g30361_
          (let ((_g30360_ (length _g30361_)))
            (cond ((fx= _g30360_ 1)
                   (apply (lambda (_stx24434_)
                            (let ((_match-stx24437_ '#f))
                              (_opt-lambda2276024430_
                               _stx24434_
                               _match-stx24437_)))
                          _g30361_))
                  ((fx= _g30360_ 2) (apply _opt-lambda2276024430_ _g30361_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    |gerbil/core::<match>[1]#parse-match-pattern|
                    _g30361_)))))))
    (define |gerbil/core::<match>[1]#match-pattern?|
      (lambda (_stx22746_)
        (call-with-escape
         (lambda (_E22750_)
           (with-exception-handler
            (let ((_E!22753_ (current-exception-handler)))
              (lambda (_e22756_)
                (if (gx#syntax-error? _e22756_)
                    (_E22750_ '#f)
                    (_E!22753_ _e22756_))))
            (lambda ()
              (begin
                (|gerbil/core::<match>[1]#parse-match-pattern| _stx22746_)
                '#t)))))))
    (define |gerbil/core::<match>[1]#match-pattern-vars|
      (lambda (_ptree21535_)
        (letrec ((_loop21538_
                  (lambda (_ptree21813_ _vars21815_ _K21816_)
                    (let ((_g2182921930_
                           (lambda (_g2183021926_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2183021926_))))
                      (let ((_g2182821941_
                             (lambda (_g2183021934_)
                               ((lambda () (_K21816_ _vars21815_))))))
                        (let ((_g2182721988_
                               (lambda (_g2183021945_)
                                 (if (gx#stx-pair? _g2183021945_)
                                     (let ((_e2191921948_
                                            (gx#syntax-e _g2183021945_)))
                                       (let ((_hd2192021952_
                                              (##car _e2191921948_))
                                             (_tl2192121955_
                                              (##cdr _e2191921948_)))
                                         (if (gx#stx-datum? _hd2192021952_)
                                             (if (equal? (gx#stx-e
                                                          _hd2192021952_)
                                                         'var:)
                                                 (if (gx#stx-pair?
                                                      _tl2192121955_)
                                                     (let ((_e2192221958_
                                                            (gx#syntax-e
                                                             _tl2192121955_)))
                                                       (let ((_hd2192321962_
                                                              (##car _e2192221958_))
                                                             (_tl2192421965_
                                                              (##cdr _e2192221958_)))
                                                         (if (gx#stx-null?
                                                              _tl2192421965_)
                                                             ((lambda (_L21968_)
                                                                (if (find (lambda (_g2198221984_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (gx#bound-identifier=?
                                     _g2198221984_
                                     _L21968_))
                                  _vars21815_)
                            (_K21816_ _vars21815_)
                            (_K21816_ (cons _L21968_ _vars21815_))))
                      _hd2192321962_)
                     (_g2182821941_ _g2183021945_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2182821941_
                                                      _g2183021945_))
                                                 (_g2182821941_ _g2183021945_))
                                             (_g2182821941_ _g2183021945_))))
                                     (_g2182821941_ _g2183021945_)))))
                          (let ((_g2182622042_
                                 (lambda (_g2183021992_)
                                   (if (gx#stx-pair? _g2183021992_)
                                       (let ((_e2190921995_
                                              (gx#syntax-e _g2183021992_)))
                                         (let ((_hd2191021999_
                                                (##car _e2190921995_))
                                               (_tl2191122002_
                                                (##cdr _e2190921995_)))
                                           (if (gx#stx-datum? _hd2191021999_)
                                               (if (equal? (gx#stx-e
                                                            _hd2191021999_)
                                                           'apply:)
                                                   (if (gx#stx-pair?
                                                        _tl2191122002_)
                                                       (let ((_e2191222005_
                                                              (gx#syntax-e
                                                               _tl2191122002_)))
                                                         (let ((_hd2191322009_
                                                                (##car _e2191222005_))
                                                               (_tl2191422012_
                                                                (##cdr _e2191222005_)))
                                                           (if (gx#stx-pair?
                                                                _tl2191422012_)
                                                               (let ((_e2191522015_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2191422012_)))
                         (let ((_hd2191622019_ (##car _e2191522015_))
                               (_tl2191722022_ (##cdr _e2191522015_)))
                           (if (gx#stx-null? _tl2191722022_)
                               ((lambda (_L22025_ _L22027_)
                                  (_loop21538_ _L22025_ _vars21815_ _K21816_))
                                _hd2191622019_
                                _hd2191322009_)
                               (_g2182721988_ _g2183021992_))))
                       (_g2182721988_ _g2183021992_))))
               (_g2182721988_ _g2183021992_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2182721988_
                                                    _g2183021992_))
                                               (_g2182721988_ _g2183021992_))))
                                       (_g2182721988_ _g2183021992_)))))
                            (let ((_g2182522094_
                                   (lambda (_g2183022046_)
                                     (if (gx#stx-pair? _g2183022046_)
                                         (let ((_e2189822049_
                                                (gx#syntax-e _g2183022046_)))
                                           (let ((_hd2189922053_
                                                  (##car _e2189822049_))
                                                 (_tl2190022056_
                                                  (##cdr _e2189822049_)))
                                             (if (gx#stx-datum? _hd2189922053_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2189922053_)
                                                             'class:)
                                                     (if (gx#stx-pair?
                                                          _tl2190022056_)
                                                         (let ((_e2190122059_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2190022056_)))
                   (let ((_hd2190222063_ (##car _e2190122059_))
                         (_tl2190322066_ (##cdr _e2190122059_)))
                     (if (gx#stx-pair? _tl2190322066_)
                         (let ((_e2190422069_ (gx#syntax-e _tl2190322066_)))
                           (let ((_hd2190522073_ (##car _e2190422069_))
                                 (_tl2190622076_ (##cdr _e2190422069_)))
                             (if (gx#stx-null? _tl2190622076_)
                                 ((lambda (_L22079_)
                                    (_loop-class-list21542_
                                     _L22079_
                                     _vars21815_
                                     _K21816_))
                                  _hd2190522073_)
                                 (_g2182622042_ _g2183022046_))))
                         (_g2182622042_ _g2183022046_))))
                 (_g2182622042_ _g2183022046_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2182622042_
                                                      _g2183022046_))
                                                 (_g2182622042_
                                                  _g2183022046_))))
                                         (_g2182622042_ _g2183022046_)))))
                              (let ((_g2182422146_
                                     (lambda (_g2183022098_)
                                       (if (gx#stx-pair? _g2183022098_)
                                           (let ((_e2188822101_
                                                  (gx#syntax-e _g2183022098_)))
                                             (let ((_hd2188922105_
                                                    (##car _e2188822101_))
                                                   (_tl2189022108_
                                                    (##cdr _e2188822101_)))
                                               (if (gx#stx-datum?
                                                    _hd2188922105_)
                                                   (if (equal? (gx#stx-e
                                                                _hd2188922105_)
                                                               'struct:)
                                                       (if (gx#stx-pair?
                                                            _tl2189022108_)
                                                           (let ((_e2189122111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl2189022108_)))
                     (let ((_hd2189222115_ (##car _e2189122111_))
                           (_tl2189322118_ (##cdr _e2189122111_)))
                       (if (gx#stx-pair? _tl2189322118_)
                           (let ((_e2189422121_ (gx#syntax-e _tl2189322118_)))
                             (let ((_hd2189522125_ (##car _e2189422121_))
                                   (_tl2189622128_ (##cdr _e2189422121_)))
                               (if (gx#stx-null? _tl2189622128_)
                                   ((lambda (_L22131_)
                                      (_loop-vector21540_
                                       _L22131_
                                       _vars21815_
                                       _K21816_))
                                    _hd2189522125_)
                                   (_g2182522094_ _g2183022098_))))
                           (_g2182522094_ _g2183022098_))))
                   (_g2182522094_ _g2183022098_))
               (_g2182522094_ _g2183022098_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2182522094_
                                                    _g2183022098_))))
                                           (_g2182522094_ _g2183022098_)))))
                                (let ((_g2182322192_
                                       (lambda (_g2183022150_)
                                         (if (gx#stx-pair? _g2183022150_)
                                             (let ((_e2188122153_
                                                    (gx#syntax-e
                                                     _g2183022150_)))
                                               (let ((_hd2188222157_
                                                      (##car _e2188122153_))
                                                     (_tl2188322160_
                                                      (##cdr _e2188122153_)))
                                                 (if (gx#stx-pair?
                                                      _tl2188322160_)
                                                     (let ((_e2188422163_
                                                            (gx#syntax-e
                                                             _tl2188322160_)))
                                                       (let ((_hd2188522167_
                                                              (##car _e2188422163_))
                                                             (_tl2188622170_
                                                              (##cdr _e2188422163_)))
                                                         (if (gx#stx-null?
                                                              _tl2188622170_)
                                                             ((lambda (_L22173_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L22175_)
                        (if (let ((_$e22188_ (gx#stx-eq? 'values: _L22175_)))
                              (if _$e22188_
                                  _$e22188_
                                  (gx#stx-eq? 'vector: _L22175_)))
                            (_loop-vector21540_ _L22173_ _vars21815_ _K21816_)
                            (_g2182422146_ _g2183022150_)))
                      _hd2188522167_
                      _hd2188222157_)
                     (_g2182422146_ _g2183022150_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2182422146_
                                                      _g2183022150_))))
                                             (_g2182422146_ _g2183022150_)))))
                                  (let ((_g2182222232_
                                         (lambda (_g2183022196_)
                                           (if (gx#stx-pair? _g2183022196_)
                                               (let ((_e2187322199_
                                                      (gx#syntax-e
                                                       _g2183022196_)))
                                                 (let ((_hd2187422203_
                                                        (##car _e2187322199_))
                                                       (_tl2187522206_
                                                        (##cdr _e2187322199_)))
                                                   (if (gx#stx-datum?
                                                        _hd2187422203_)
                                                       (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd2187422203_)
                           'box:)
                   (if (gx#stx-pair? _tl2187522206_)
                       (let ((_e2187622209_ (gx#syntax-e _tl2187522206_)))
                         (let ((_hd2187722213_ (##car _e2187622209_))
                               (_tl2187822216_ (##cdr _e2187622209_)))
                           (if (gx#stx-null? _tl2187822216_)
                               ((lambda (_L22219_)
                                  (_loop21538_ _L22219_ _vars21815_ _K21816_))
                                _hd2187722213_)
                               (_g2182322192_ _g2183022196_))))
                       (_g2182322192_ _g2183022196_))
                   (_g2182322192_ _g2183022196_))
               (_g2182322192_ _g2183022196_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2182322192_
                                                _g2183022196_)))))
                                    (let ((_g2182122291_
                                           (lambda (_g2183022236_)
                                             (if (gx#stx-pair? _g2183022236_)
                                                 (let ((_e2186322239_
                                                        (gx#syntax-e
                                                         _g2183022236_)))
                                                   (let ((_hd2186422243_
                                                          (##car _e2186322239_))
                                                         (_tl2186522246_
                                                          (##cdr _e2186322239_)))
                                                     (if (gx#stx-datum?
                                                          _hd2186422243_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2186422243_)
                             'splice:)
                     (if (gx#stx-pair? _tl2186522246_)
                         (let ((_e2186622249_ (gx#syntax-e _tl2186522246_)))
                           (let ((_hd2186722253_ (##car _e2186622249_))
                                 (_tl2186822256_ (##cdr _e2186622249_)))
                             (if (gx#stx-pair? _tl2186822256_)
                                 (let ((_e2186922259_
                                        (gx#syntax-e _tl2186822256_)))
                                   (let ((_hd2187022263_ (##car _e2186922259_))
                                         (_tl2187122266_
                                          (##cdr _e2186922259_)))
                                     (if (gx#stx-null? _tl2187122266_)
                                         ((lambda (_L22269_ _L22271_)
                                            (_loop21538_
                                             _L22271_
                                             _vars21815_
                                             (lambda (_g2228522287_)
                                               (_loop21538_
                                                _L22269_
                                                _g2228522287_
                                                _K21816_))))
                                          _hd2187022263_
                                          _hd2186722253_)
                                         (_g2182222232_ _g2183022236_))))
                                 (_g2182222232_ _g2183022236_))))
                         (_g2182222232_ _g2183022236_))
                     (_g2182222232_ _g2183022236_))
                 (_g2182222232_ _g2183022236_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2182222232_
                                                  _g2183022236_)))))
                                      (let ((_g2182022350_
                                             (lambda (_g2183022295_)
                                               (if (gx#stx-pair? _g2183022295_)
                                                   (let ((_e2185222298_
                                                          (gx#syntax-e
                                                           _g2183022295_)))
                                                     (let ((_hd2185322302_
                                                            (##car _e2185222298_))
                                                           (_tl2185422305_
                                                            (##cdr _e2185222298_)))
                                                       (if (gx#stx-datum?
                                                            _hd2185322302_)
                                                           (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd2185322302_)
                               'cons:)
                       (if (gx#stx-pair? _tl2185422305_)
                           (let ((_e2185522308_ (gx#syntax-e _tl2185422305_)))
                             (let ((_hd2185622312_ (##car _e2185522308_))
                                   (_tl2185722315_ (##cdr _e2185522308_)))
                               (if (gx#stx-pair? _tl2185722315_)
                                   (let ((_e2185822318_
                                          (gx#syntax-e _tl2185722315_)))
                                     (let ((_hd2185922322_
                                            (##car _e2185822318_))
                                           (_tl2186022325_
                                            (##cdr _e2185822318_)))
                                       (if (gx#stx-null? _tl2186022325_)
                                           ((lambda (_L22328_ _L22330_)
                                              (_loop21538_
                                               _L22330_
                                               _vars21815_
                                               (lambda (_g2234422346_)
                                                 (_loop21538_
                                                  _L22328_
                                                  _g2234422346_
                                                  _K21816_))))
                                            _hd2185922322_
                                            _hd2185622312_)
                                           (_g2182122291_ _g2183022295_))))
                                   (_g2182122291_ _g2183022295_))))
                           (_g2182122291_ _g2183022295_))
                       (_g2182122291_ _g2183022295_))
                   (_g2182122291_ _g2183022295_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2182122291_
                                                    _g2183022295_)))))
                                        (let ((_g2181922390_
                                               (lambda (_g2183022354_)
                                                 (if (gx#stx-pair?
                                                      _g2183022354_)
                                                     (let ((_e2184422357_
                                                            (gx#syntax-e
                                                             _g2183022354_)))
                                                       (let ((_hd2184522361_
                                                              (##car _e2184422357_))
                                                             (_tl2184622364_
                                                              (##cdr _e2184422357_)))
                                                         (if (gx#stx-datum?
                                                              _hd2184522361_)
                                                             (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _hd2184522361_)
                                 'not:)
                         (if (gx#stx-pair? _tl2184622364_)
                             (let ((_e2184722367_
                                    (gx#syntax-e _tl2184622364_)))
                               (let ((_hd2184822371_ (##car _e2184722367_))
                                     (_tl2184922374_ (##cdr _e2184722367_)))
                                 (if (gx#stx-null? _tl2184922374_)
                                     ((lambda (_L22377_)
                                        (_loop21538_
                                         _L22377_
                                         _vars21815_
                                         _K21816_))
                                      _hd2184822371_)
                                     (_g2182022350_ _g2183022354_))))
                             (_g2182022350_ _g2183022354_))
                         (_g2182022350_ _g2183022354_))
                     (_g2182022350_ _g2183022354_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2182022350_
                                                      _g2183022354_)))))
                                          (let ((_g2181822489_
                                                 (lambda (_g2183022394_)
                                                   (if (gx#stx-pair?
                                                        _g2183022394_)
                                                       (let ((_e2184022397_
                                                              (gx#syntax-e
                                                               _g2183022394_)))
                                                         (let ((_hd2184122401_
                                                                (##car _e2184022397_))
                                                               (_tl2184222404_
                                                                (##cdr _e2184022397_)))
                                                           ((lambda (_L22407_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L22409_)
                      (if (let ((_$e22420_ (gx#stx-eq? 'and: _L22409_)))
                            (if _$e22420_
                                _$e22420_
                                (gx#stx-eq? 'or: _L22409_)))
                          (let ((_g2242522437_
                                 (lambda (_g2242622433_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2242622433_))))
                            (let ((_g2242422448_
                                   (lambda (_g2242622441_)
                                     ((lambda () (_K21816_ _vars21815_))))))
                              (let ((_g2242322485_
                                     (lambda (_g2242622452_)
                                       (if (gx#stx-pair? _g2242622452_)
                                           (let ((_e2242922455_
                                                  (gx#syntax-e _g2242622452_)))
                                             (let ((_hd2243022459_
                                                    (##car _e2242922455_))
                                                   (_tl2243122462_
                                                    (##cdr _e2242922455_)))
                                               ((lambda (_L22465_ _L22467_)
                                                  (_loop21538_
                                                   _L22467_
                                                   _vars21815_
                                                   (lambda (_g2247922481_)
                                                     (_loop21538_
                                                      (cons _L22409_ _L22465_)
                                                      _g2247922481_
                                                      _K21816_))))
                                                _tl2243122462_
                                                _hd2243022459_)))
                                           (_g2242422448_ _g2242622452_)))))
                                (_g2242322485_ _L22407_))))
                          (_g2181922390_ _g2183022394_)))
                    _tl2184222404_
                    _hd2184122401_)))
               (_g2181922390_ _g2183022394_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_g2181722742_
                                                   (lambda (_g2183022493_)
                                                     (if (gx#stx-pair?
                                                          _g2183022493_)
                                                         (let ((_e2183222496_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2183022493_)))
                   (let ((_hd2183322500_ (##car _e2183222496_))
                         (_tl2183422503_ (##cdr _e2183222496_)))
                     (if (gx#stx-datum? _hd2183322500_)
                         (if (equal? (gx#stx-e _hd2183322500_) '?:)
                             (if (gx#stx-pair? _tl2183422503_)
                                 (let ((_e2183522506_
                                        (gx#syntax-e _tl2183422503_)))
                                   (let ((_hd2183622510_ (##car _e2183522506_))
                                         (_tl2183722513_
                                          (##cdr _e2183522506_)))
                                     ((lambda (_L22516_)
                                        (let ((_g2253222569_
                                               (lambda (_g2253322565_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g2253322565_))))
                                          (let ((_g2253122580_
                                                 (lambda (_g2253322573_)
                                                   ((lambda ()
                                                      (_K21816_
                                                       _vars21815_))))))
                                            (let ((_g2253022658_
                                                   (lambda (_g2253322584_)
                                                     (if (gx#stx-pair?
                                                          _g2253322584_)
                                                         (let ((_e2254922587_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2253322584_)))
                   (let ((_hd2255022591_ (##car _e2254922587_))
                         (_tl2255122594_ (##cdr _e2254922587_)))
                     (if (gx#stx-pair? _tl2255122594_)
                         (let ((_e2255222597_ (gx#syntax-e _tl2255122594_)))
                           (let ((_hd2255322601_ (##car _e2255222597_))
                                 (_tl2255422604_ (##cdr _e2255222597_)))
                             (if (gx#stx-datum? _hd2255322601_)
                                 (if (equal? (gx#stx-e _hd2255322601_) '::)
                                     (if (gx#stx-pair? _tl2255422604_)
                                         (let ((_e2255522607_
                                                (gx#syntax-e _tl2255422604_)))
                                           (let ((_hd2255622611_
                                                  (##car _e2255522607_))
                                                 (_tl2255722614_
                                                  (##cdr _e2255522607_)))
                                             (if (gx#stx-pair? _tl2255722614_)
                                                 (let ((_e2255822617_
                                                        (gx#syntax-e
                                                         _tl2255722614_)))
                                                   (let ((_hd2255922621_
                                                          (##car _e2255822617_))
                                                         (_tl2256022624_
                                                          (##cdr _e2255822617_)))
                                                     (if (gx#stx-datum?
                                                          _hd2255922621_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2255922621_)
                             '=>:)
                     (if (gx#stx-pair? _tl2256022624_)
                         (let ((_e2256122627_ (gx#syntax-e _tl2256022624_)))
                           (let ((_hd2256222631_ (##car _e2256122627_))
                                 (_tl2256322634_ (##cdr _e2256122627_)))
                             (if (gx#stx-null? _tl2256322634_)
                                 ((lambda (_L22637_)
                                    (_loop21538_
                                     _L22637_
                                     _vars21815_
                                     _K21816_))
                                  _hd2256222631_)
                                 (_g2253122580_ _g2253322584_))))
                         (_g2253122580_ _g2253322584_))
                     (_g2253122580_ _g2253322584_))
                 (_g2253122580_ _g2253322584_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2253122580_
                                                  _g2253322584_))))
                                         (_g2253122580_ _g2253322584_))
                                     (_g2253122580_ _g2253322584_))
                                 (_g2253122580_ _g2253322584_))))
                         (_g2253122580_ _g2253322584_))))
                 (_g2253122580_ _g2253322584_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g2252922710_
                                                     (lambda (_g2253322662_)
                                                       (if (gx#stx-pair?
                                                            _g2253322662_)
                                                           (let ((_e2253922665_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g2253322662_)))
                     (let ((_hd2254022669_ (##car _e2253922665_))
                           (_tl2254122672_ (##cdr _e2253922665_)))
                       (if (gx#stx-pair? _tl2254122672_)
                           (let ((_e2254222675_ (gx#syntax-e _tl2254122672_)))
                             (let ((_hd2254322679_ (##car _e2254222675_))
                                   (_tl2254422682_ (##cdr _e2254222675_)))
                               (if (gx#stx-datum? _hd2254322679_)
                                   (if (equal? (gx#stx-e _hd2254322679_) '=>:)
                                       (if (gx#stx-pair? _tl2254422682_)
                                           (let ((_e2254522685_
                                                  (gx#syntax-e
                                                   _tl2254422682_)))
                                             (let ((_hd2254622689_
                                                    (##car _e2254522685_))
                                                   (_tl2254722692_
                                                    (##cdr _e2254522685_)))
                                               (if (gx#stx-null?
                                                    _tl2254722692_)
                                                   ((lambda (_L22695_)
                                                      (_loop21538_
                                                       _L22695_
                                                       _vars21815_
                                                       _K21816_))
                                                    _hd2254622689_)
                                                   (_g2253022658_
                                                    _g2253322662_))))
                                           (_g2253022658_ _g2253322662_))
                                       (_g2253022658_ _g2253322662_))
                                   (_g2253022658_ _g2253322662_))))
                           (_g2253022658_ _g2253322662_))))
                   (_g2253022658_ _g2253322662_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_g2252822738_
                                                       (lambda (_g2253322714_)
                                                         (if (gx#stx-pair?
                                                              _g2253322714_)
                                                             (let ((_e2253522717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g2253322714_)))
                       (let ((_hd2253622721_ (##car _e2253522717_))
                             (_tl2253722724_ (##cdr _e2253522717_)))
                         (if (gx#stx-null? _tl2253722724_)
                             ((lambda (_L22727_)
                                (_loop21538_ _L22727_ _vars21815_ _K21816_))
                              _hd2253622721_)
                             (_g2252922710_ _g2253322714_))))
                     (_g2252922710_ _g2253322714_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2252822738_
                                                   _L22516_)))))))
                                      _tl2183722513_)))
                                 (_g2181822489_ _g2183022493_))
                             (_g2181822489_ _g2183022493_))
                         (_g2181822489_ _g2183022493_))))
                 (_g2181822489_ _g2183022493_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2181722742_
                                               _ptree21813_))))))))))))))))
                 (_loop-vector21540_
                  (lambda (_body21701_ _vars21703_ _K21704_)
                    (let ((_g2170721728_
                           (lambda (_g2170821724_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2170821724_))))
                      (let ((_g2170621769_
                             (lambda (_g2170821732_)
                               (if (gx#stx-pair? _g2170821732_)
                                   (let ((_e2171721735_
                                          (gx#syntax-e _g2170821732_)))
                                     (let ((_hd2171821739_
                                            (##car _e2171721735_))
                                           (_tl2171921742_
                                            (##cdr _e2171721735_)))
                                       (if (gx#stx-datum? _hd2171821739_)
                                           (if (equal? (gx#stx-e
                                                        _hd2171821739_)
                                                       'list:)
                                               (if (gx#stx-pair?
                                                    _tl2171921742_)
                                                   (let ((_e2172021745_
                                                          (gx#syntax-e
                                                           _tl2171921742_)))
                                                     (let ((_hd2172121749_
                                                            (##car _e2172021745_))
                                                           (_tl2172221752_
                                                            (##cdr _e2172021745_)))
                                                       (if (gx#stx-null?
                                                            _tl2172221752_)
                                                           ((lambda (_L21755_)
                                                              (_loop21538_
                                                               _L21755_
                                                               _vars21703_
                                                               _K21704_))
                                                            _hd2172121749_)
                                                           (_g2170721728_
                                                            _g2170821732_))))
                                                   (_g2170721728_
                                                    _g2170821732_))
                                               (_g2170721728_ _g2170821732_))
                                           (_g2170721728_ _g2170821732_))))
                                   (_g2170721728_ _g2170821732_)))))
                        (let ((_g2170521809_
                               (lambda (_g2170821773_)
                                 (if (gx#stx-pair? _g2170821773_)
                                     (let ((_e2171021776_
                                            (gx#syntax-e _g2170821773_)))
                                       (let ((_hd2171121780_
                                              (##car _e2171021776_))
                                             (_tl2171221783_
                                              (##cdr _e2171021776_)))
                                         (if (gx#stx-datum? _hd2171121780_)
                                             (if (equal? (gx#stx-e
                                                          _hd2171121780_)
                                                         'simple:)
                                                 (if (gx#stx-pair?
                                                      _tl2171221783_)
                                                     (let ((_e2171321786_
                                                            (gx#syntax-e
                                                             _tl2171221783_)))
                                                       (let ((_hd2171421790_
                                                              (##car _e2171321786_))
                                                             (_tl2171521793_
                                                              (##cdr _e2171321786_)))
                                                         (if (gx#stx-null?
                                                              _tl2171521793_)
                                                             ((lambda (_L21796_)
                                                                (_loop-list21541_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L21796_
                         _vars21703_
                         _K21704_))
                      _hd2171421790_)
                     (_g2170621769_ _g2170821773_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2170621769_
                                                      _g2170821773_))
                                                 (_g2170621769_ _g2170821773_))
                                             (_g2170621769_ _g2170821773_))))
                                     (_g2170621769_ _g2170821773_)))))
                          (_g2170521809_ _body21701_))))))
                 (_loop-list21541_
                  (lambda (_rest21631_ _vars21633_ _K21634_)
                    (let ((_g2163721649_
                           (lambda (_g2163821645_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2163821645_))))
                      (let ((_g2163621660_
                             (lambda (_g2163821653_)
                               ((lambda () (_K21634_ _vars21633_))))))
                        (let ((_g2163521697_
                               (lambda (_g2163821664_)
                                 (if (gx#stx-pair? _g2163821664_)
                                     (let ((_e2164121667_
                                            (gx#syntax-e _g2163821664_)))
                                       (let ((_hd2164221671_
                                              (##car _e2164121667_))
                                             (_tl2164321674_
                                              (##cdr _e2164121667_)))
                                         ((lambda (_L21677_ _L21679_)
                                            (_loop21538_
                                             _L21679_
                                             _vars21633_
                                             (lambda (_g2169121693_)
                                               (_loop-list21541_
                                                _L21677_
                                                _g2169121693_
                                                _K21634_))))
                                          _tl2164321674_
                                          _hd2164221671_)))
                                     (_g2163621660_ _g2163821664_)))))
                          (_g2163521697_ _rest21631_))))))
                 (_loop-class-list21542_
                  (lambda (_rest21544_ _vars21546_ _K21547_)
                    (let ((_g2155021565_
                           (lambda (_g2155121561_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2155121561_))))
                      (let ((_g2154921576_
                             (lambda (_g2155121569_)
                               ((lambda () (_K21547_ _vars21546_))))))
                        (let ((_g2154821627_
                               (lambda (_g2155121580_)
                                 (if (gx#stx-pair? _g2155121580_)
                                     (let ((_e2155421583_
                                            (gx#syntax-e _g2155121580_)))
                                       (let ((_hd2155521587_
                                              (##car _e2155421583_))
                                             (_tl2155621590_
                                              (##cdr _e2155421583_)))
                                         (if (gx#stx-pair? _tl2155621590_)
                                             (let ((_e2155721593_
                                                    (gx#syntax-e
                                                     _tl2155621590_)))
                                               (let ((_hd2155821597_
                                                      (##car _e2155721593_))
                                                     (_tl2155921600_
                                                      (##cdr _e2155721593_)))
                                                 ((lambda (_L21603_ _L21605_)
                                                    (_loop21538_
                                                     _L21605_
                                                     _vars21546_
                                                     (lambda (_g2162121623_)
                                                       (_loop-class-list21542_
                                                        _L21603_
                                                        _g2162121623_
                                                        _K21547_))))
                                                  _tl2155921600_
                                                  _hd2155821597_)))
                                             (_g2154921576_ _g2155121580_))))
                                     (_g2154921576_ _g2155121580_)))))
                          (_g2154821627_ _rest21544_)))))))
          (_loop21538_ _ptree21535_ '() values))))
    (define |gerbil/core::<match>[1]#generate-match1|
      (lambda (_stx18351_ _tgt18353_ _ptree18354_ _K18355_ _E18356_)
        (letrec ((_generate118358_
                  (lambda (_tgt19888_ _ptree19890_ _K19891_ _E19892_)
                    (let ((_g1989419902_
                           (lambda (_g1989519898_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1989519898_))))
                      (let ((_g1989321531_
                             (lambda (_g1989519906_)
                               ((lambda (_L19909_)
                                  (let ()
                                    (let ((_g1993620062_
                                           (lambda (_g1993720058_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1993720058_))))
                                      (let ((_g1993520083_
                                             (lambda (_g1993720066_)
                                               (if (gx#stx-pair? _g1993720066_)
                                                   (let ((_e2005420069_
                                                          (gx#syntax-e
                                                           _g1993720066_)))
                                                     (let ((_hd2005520073_
                                                            (##car _e2005420069_))
                                                           (_tl2005620076_
                                                            (##cdr _e2005420069_)))
                                                       (if (gx#stx-datum?
                                                            _hd2005520073_)
                                                           (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd2005520073_)
                               'any:)
                       (if (gx#stx-null? _tl2005620076_)
                           ((lambda () _K19891_))
                           (_g1993620062_ _g1993720066_))
                       (_g1993620062_ _g1993720066_))
                   (_g1993620062_ _g1993720066_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1993620062_
                                                    _g1993720066_)))))
                                        (let ((_g1993420126_
                                               (lambda (_g1993720087_)
                                                 (if (gx#stx-pair?
                                                      _g1993720087_)
                                                     (let ((_e2004820090_
                                                            (gx#syntax-e
                                                             _g1993720087_)))
                                                       (let ((_hd2004920094_
                                                              (##car _e2004820090_))
                                                             (_tl2005020097_
                                                              (##cdr _e2004820090_)))
                                                         (if (gx#stx-datum?
                                                              _hd2004920094_)
                                                             (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _hd2004920094_)
                                 'var:)
                         (if (gx#stx-pair? _tl2005020097_)
                             (let ((_e2005120100_
                                    (gx#syntax-e _tl2005020097_)))
                               (let ((_hd2005220104_ (##car _e2005120100_))
                                     (_tl2005320107_ (##cdr _e2005120100_)))
                                 (if (gx#stx-null? _tl2005320107_)
                                     ((lambda (_L20110_)
                                        (cons (gx#datum->syntax '#f 'let)
                                              (cons (cons (cons _L20110_
                                                                (cons _L19909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _K19891_ '()))))
                                      _hd2005220104_)
                                     (_g1993520083_ _g1993720087_))))
                             (_g1993520083_ _g1993720087_))
                         (_g1993520083_ _g1993720087_))
                     (_g1993520083_ _g1993720087_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1993520083_
                                                      _g1993720087_)))))
                                          (let ((_g1993320211_
                                                 (lambda (_g1993720130_)
                                                   (if (gx#stx-pair?
                                                        _g1993720130_)
                                                       (let ((_e2003820133_
                                                              (gx#syntax-e
                                                               _g1993720130_)))
                                                         (let ((_hd2003920137_
                                                                (##car _e2003820133_))
                                                               (_tl2004020140_
                                                                (##cdr _e2003820133_)))
                                                           (if (gx#stx-datum?
                                                                _hd2003920137_)
                                                               (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _hd2003920137_)
                                   'apply:)
                           (if (gx#stx-pair? _tl2004020140_)
                               (let ((_e2004120143_
                                      (gx#syntax-e _tl2004020140_)))
                                 (let ((_hd2004220147_ (##car _e2004120143_))
                                       (_tl2004320150_ (##cdr _e2004120143_)))
                                   (if (gx#stx-pair? _tl2004320150_)
                                       (let ((_e2004420153_
                                              (gx#syntax-e _tl2004320150_)))
                                         (let ((_hd2004520157_
                                                (##car _e2004420153_))
                                               (_tl2004620160_
                                                (##cdr _e2004420153_)))
                                           (if (gx#stx-null? _tl2004620160_)
                                               ((lambda (_L20163_ _L20165_)
                                                  (let ((_g2018020188_
                                                         (lambda (_g2018120184_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2018120184_))))
                                                    (let ((_g2017920207_
                                                           (lambda (_g2018120192_)
                                                             ((lambda (_L20195_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'let)
                                (cons (cons (cons _L20195_
                                                  (cons (cons _L20165_
                                                              (cons _L19909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())
                                      (cons (_generate118358_
                                             _L20195_
                                             _L20163_
                                             _K19891_
                                             _E19892_)
                                            '())))))
                      _g2018120192_))))
              (_g2017920207_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2004520157_
                                                _hd2004220147_)
                                               (_g1993420126_ _g1993720130_))))
                                       (_g1993420126_ _g1993720130_))))
                               (_g1993420126_ _g1993720130_))
                           (_g1993420126_ _g1993720130_))
                       (_g1993420126_ _g1993720130_))))
               (_g1993420126_ _g1993720130_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_g1993220293_
                                                   (lambda (_g1993720215_)
                                                     (if (gx#stx-pair?
                                                          _g1993720215_)
                                                         (let ((_e2003020218_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1993720215_)))
                   (let ((_hd2003120222_ (##car _e2003020218_))
                         (_tl2003220225_ (##cdr _e2003020218_)))
                     (if (gx#stx-datum? _hd2003120222_)
                         (if (equal? (gx#stx-e _hd2003120222_) 'datum:)
                             (if (gx#stx-pair? _tl2003220225_)
                                 (let ((_e2003320228_
                                        (gx#syntax-e _tl2003220225_)))
                                   (let ((_hd2003420232_ (##car _e2003320228_))
                                         (_tl2003520235_
                                          (##cdr _e2003320228_)))
                                     (if (gx#stx-null? _tl2003520235_)
                                         ((lambda (_L20238_)
                                            (let ((_g2025120259_
                                                   (lambda (_g2025220255_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2025220255_))))
                                              (let ((_g2025020278_
                                                     (lambda (_g2025220263_)
                                                       ((lambda (_L20266_)
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'if)
                          (cons (cons _L20266_
                                      (cons _L19909_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons _L20238_ '()))
                                                  '())))
                                (cons _K19891_ (cons _E19892_ '()))))))
                _g2025220263_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2025020278_
                                                 (let ((_e20282_
                                                        (gx#stx-e _L20238_)))
                                                   (if (let ((_$e20285_
                                                              (symbol? _e20282_)))
                                                         (if _$e20285_
                                                             _$e20285_
                                                             (let ((_$e20289_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (keyword? _e20282_)))
                       (if _$e20289_ _$e20289_ (immediate? _e20282_)))))
               (gx#datum->syntax '#f '##eq?)
               (if (number? _e20282_)
                   (gx#datum->syntax '#f 'eqv?)
                   (gx#datum->syntax '#f 'equal?))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd2003420232_)
                                         (_g1993320211_ _g1993720215_))))
                                 (_g1993320211_ _g1993720215_))
                             (_g1993320211_ _g1993720215_))
                         (_g1993320211_ _g1993720215_))))
                 (_g1993320211_ _g1993720215_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g1993120347_
                                                     (lambda (_g1993720297_)
                                                       (if (gx#stx-pair?
                                                            _g1993720297_)
                                                           (let ((_e2002020300_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g1993720297_)))
                     (let ((_hd2002120304_ (##car _e2002020300_))
                           (_tl2002220307_ (##cdr _e2002020300_)))
                       (if (gx#stx-datum? _hd2002120304_)
                           (if (equal? (gx#stx-e _hd2002120304_) 'class:)
                               (if (gx#stx-pair? _tl2002220307_)
                                   (let ((_e2002320310_
                                          (gx#syntax-e _tl2002220307_)))
                                     (let ((_hd2002420314_
                                            (##car _e2002320310_))
                                           (_tl2002520317_
                                            (##cdr _e2002320310_)))
                                       (if (gx#stx-pair? _tl2002520317_)
                                           (let ((_e2002620320_
                                                  (gx#syntax-e
                                                   _tl2002520317_)))
                                             (let ((_hd2002720324_
                                                    (##car _e2002620320_))
                                                   (_tl2002820327_
                                                    (##cdr _e2002620320_)))
                                               (if (gx#stx-null?
                                                    _tl2002820327_)
                                                   ((lambda (_L20330_ _L20332_)
                                                      (_generate-class18364_
                                                       (gx#stx-e _L20332_)
                                                       _tgt19888_
                                                       _L20330_
                                                       _K19891_
                                                       _E19892_))
                                                    _hd2002720324_
                                                    _hd2002420314_)
                                                   (_g1993220293_
                                                    _g1993720297_))))
                                           (_g1993220293_ _g1993720297_))))
                                   (_g1993220293_ _g1993720297_))
                               (_g1993220293_ _g1993720297_))
                           (_g1993220293_ _g1993720297_))))
                   (_g1993220293_ _g1993720297_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_g1993020401_
                                                       (lambda (_g1993720351_)
                                                         (if (gx#stx-pair?
                                                              _g1993720351_)
                                                             (let ((_e2000920354_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g1993720351_)))
                       (let ((_hd2001020358_ (##car _e2000920354_))
                             (_tl2001120361_ (##cdr _e2000920354_)))
                         (if (gx#stx-datum? _hd2001020358_)
                             (if (equal? (gx#stx-e _hd2001020358_) 'struct:)
                                 (if (gx#stx-pair? _tl2001120361_)
                                     (let ((_e2001220364_
                                            (gx#syntax-e _tl2001120361_)))
                                       (let ((_hd2001320368_
                                              (##car _e2001220364_))
                                             (_tl2001420371_
                                              (##cdr _e2001220364_)))
                                         (if (gx#stx-pair? _tl2001420371_)
                                             (let ((_e2001520374_
                                                    (gx#syntax-e
                                                     _tl2001420371_)))
                                               (let ((_hd2001620378_
                                                      (##car _e2001520374_))
                                                     (_tl2001720381_
                                                      (##cdr _e2001520374_)))
                                                 (if (gx#stx-null?
                                                      _tl2001720381_)
                                                     ((lambda (_L20384_
                                                               _L20386_)
                                                        (_generate-struct18363_
                                                         (gx#stx-e _L20386_)
                                                         _tgt19888_
                                                         _L20384_
                                                         _K19891_
                                                         _E19892_))
                                                      _hd2001620378_
                                                      _hd2001320368_)
                                                     (_g1993120347_
                                                      _g1993720351_))))
                                             (_g1993120347_ _g1993720351_))))
                                     (_g1993120347_ _g1993720351_))
                                 (_g1993120347_ _g1993720351_))
                             (_g1993120347_ _g1993720351_))))
                     (_g1993120347_ _g1993720351_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g1992920579_
                                                         (lambda (_g1993720405_)
                                                           (if (gx#stx-pair?
                                                                _g1993720405_)
                                                               (let ((_e2000120408_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1993720405_)))
                         (let ((_hd2000220412_ (##car _e2000120408_))
                               (_tl2000320415_ (##cdr _e2000120408_)))
                           (if (gx#stx-datum? _hd2000220412_)
                               (if (equal? (gx#stx-e _hd2000220412_) 'vector:)
                                   (if (gx#stx-pair? _tl2000320415_)
                                       (let ((_e2000420418_
                                              (gx#syntax-e _tl2000320415_)))
                                         (let ((_hd2000520422_
                                                (##car _e2000420418_))
                                               (_tl2000620425_
                                                (##cdr _e2000420418_)))
                                           (if (gx#stx-null? _tl2000620425_)
                                               ((lambda (_L20428_)
                                                  (let ((_g2044220463_
                                                         (lambda (_g2044320459_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2044320459_))))
                                                    (let ((_g2044120504_
                                                           (lambda (_g2044320467_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g2044320467_)
                         (let ((_e2045220470_ (gx#syntax-e _g2044320467_)))
                           (let ((_hd2045320474_ (##car _e2045220470_))
                                 (_tl2045420477_ (##cdr _e2045220470_)))
                             (if (gx#stx-datum? _hd2045320474_)
                                 (if (equal? (gx#stx-e _hd2045320474_) 'list:)
                                     (if (gx#stx-pair? _tl2045420477_)
                                         (let ((_e2045520480_
                                                (gx#syntax-e _tl2045420477_)))
                                           (let ((_hd2045620484_
                                                  (##car _e2045520480_))
                                                 (_tl2045720487_
                                                  (##cdr _e2045520480_)))
                                             (if (gx#stx-null? _tl2045720487_)
                                                 ((lambda (_L20490_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'vector?)
                              (cons _L19909_ '()))
                        (cons (_generate-list-vector18362_
                               _tgt19888_
                               _L20490_
                               (gx#datum->syntax '#f 'subvector->list)
                               '0
                               _K19891_
                               _E19892_)
                              (cons _E19892_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd2045620484_)
                                                 (_g2044220463_
                                                  _g2044320467_))))
                                         (_g2044220463_ _g2044320467_))
                                     (_g2044220463_ _g2044320467_))
                                 (_g2044220463_ _g2044320467_))))
                         (_g2044220463_ _g2044320467_)))))
              (let ((_g2044020575_
                     (lambda (_g2044320508_)
                       (if (gx#stx-pair? _g2044320508_)
                           (let ((_e2044520511_ (gx#syntax-e _g2044320508_)))
                             (let ((_hd2044620515_ (##car _e2044520511_))
                                   (_tl2044720518_ (##cdr _e2044520511_)))
                               (if (gx#stx-datum? _hd2044620515_)
                                   (if (equal? (gx#stx-e _hd2044620515_)
                                               'simple:)
                                       (if (gx#stx-pair? _tl2044720518_)
                                           (let ((_e2044820521_
                                                  (gx#syntax-e
                                                   _tl2044720518_)))
                                             (let ((_hd2044920525_
                                                    (##car _e2044820521_))
                                                   (_tl2045020528_
                                                    (##cdr _e2044820521_)))
                                               (if (gx#stx-null?
                                                    _tl2045020528_)
                                                   ((lambda (_L20531_)
                                                      (let ((_g2054420552_
                                                             (lambda (_g2054520548_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2054520548_))))
                                                        (let ((_g2054320571_
                                                               (lambda (_g2054520556_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L20559_)
                            (let ()
                              (cons (gx#datum->syntax '#f 'if)
                                    (cons (cons (gx#datum->syntax '#f 'and)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '##vector?)
                                                            (cons _L19909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons (gx#datum->syntax '#f '##fx=)
                          (cons (cons (gx#datum->syntax '#f '##vector-length)
                                      (cons _L19909_ '()))
                                (cons _L20559_ '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (_generate-simple-vector18361_
                                                 _tgt19888_
                                                 _L20531_
                                                 '0
                                                 _K19891_
                                                 _E19892_)
                                                (cons _E19892_ '()))))))
                          _g2054520556_))))
                  (_g2054320571_ (gx#stx-length _L20531_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd2044920525_)
                                                   (_g2044120504_
                                                    _g2044320508_))))
                                           (_g2044120504_ _g2044320508_))
                                       (_g2044120504_ _g2044320508_))
                                   (_g2044120504_ _g2044320508_))))
                           (_g2044120504_ _g2044320508_)))))
                (_g2044020575_ _L20428_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2000520422_)
                                               (_g1993020401_ _g1993720405_))))
                                       (_g1993020401_ _g1993720405_))
                                   (_g1993020401_ _g1993720405_))
                               (_g1993020401_ _g1993720405_))))
                       (_g1993020401_ _g1993720405_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g1992820757_
                                                           (lambda (_g1993720583_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1993720583_)
                         (let ((_e1999420586_ (gx#syntax-e _g1993720583_)))
                           (let ((_hd1999520590_ (##car _e1999420586_))
                                 (_tl1999620593_ (##cdr _e1999420586_)))
                             (if (gx#stx-datum? _hd1999520590_)
                                 (if (equal? (gx#stx-e _hd1999520590_)
                                             'values:)
                                     (if (gx#stx-pair? _tl1999620593_)
                                         (let ((_e1999720596_
                                                (gx#syntax-e _tl1999620593_)))
                                           (let ((_hd1999820600_
                                                  (##car _e1999720596_))
                                                 (_tl1999920603_
                                                  (##cdr _e1999720596_)))
                                             (if (gx#stx-null? _tl1999920603_)
                                                 ((lambda (_L20606_)
                                                    (let ((_g2062020641_
                                                           (lambda (_g2062120637_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g2062120637_))))
                                                      (let ((_g2061920682_
                                                             (lambda (_g2062120645_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2062120645_)
                           (let ((_e2063020648_ (gx#syntax-e _g2062120645_)))
                             (let ((_hd2063120652_ (##car _e2063020648_))
                                   (_tl2063220655_ (##cdr _e2063020648_)))
                               (if (gx#stx-datum? _hd2063120652_)
                                   (if (equal? (gx#stx-e _hd2063120652_)
                                               'list:)
                                       (if (gx#stx-pair? _tl2063220655_)
                                           (let ((_e2063320658_
                                                  (gx#syntax-e
                                                   _tl2063220655_)))
                                             (let ((_hd2063420662_
                                                    (##car _e2063320658_))
                                                   (_tl2063520665_
                                                    (##cdr _e2063320658_)))
                                               (if (gx#stx-null?
                                                    _tl2063520665_)
                                                   ((lambda (_L20668_)
                                                      (_generate-list-vector18362_
                                                       _tgt19888_
                                                       _L20668_
                                                       (gx#datum->syntax
                                                        '#f
                                                        'values->list)
                                                       '0
                                                       _K19891_
                                                       _E19892_))
                                                    _hd2063420662_)
                                                   (_g2062020641_
                                                    _g2062120645_))))
                                           (_g2062020641_ _g2062120645_))
                                       (_g2062020641_ _g2062120645_))
                                   (_g2062020641_ _g2062120645_))))
                           (_g2062020641_ _g2062120645_)))))
                (let ((_g2061820753_
                       (lambda (_g2062120686_)
                         (if (gx#stx-pair? _g2062120686_)
                             (let ((_e2062320689_ (gx#syntax-e _g2062120686_)))
                               (let ((_hd2062420693_ (##car _e2062320689_))
                                     (_tl2062520696_ (##cdr _e2062320689_)))
                                 (if (gx#stx-datum? _hd2062420693_)
                                     (if (equal? (gx#stx-e _hd2062420693_)
                                                 'simple:)
                                         (if (gx#stx-pair? _tl2062520696_)
                                             (let ((_e2062620699_
                                                    (gx#syntax-e
                                                     _tl2062520696_)))
                                               (let ((_hd2062720703_
                                                      (##car _e2062620699_))
                                                     (_tl2062820706_
                                                      (##cdr _e2062620699_)))
                                                 (if (gx#stx-null?
                                                      _tl2062820706_)
                                                     ((lambda (_L20709_)
                                                        (let ((_g2072220730_
                                                               (lambda (_g2072320726_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g2072320726_))))
                  (let ((_g2072120749_
                         (lambda (_g2072320734_)
                           ((lambda (_L20737_)
                              (let ()
                                (cons (gx#datum->syntax '#f 'if)
                                      (cons (cons (gx#datum->syntax '#f '##fx=)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'values-count)
                                                              (cons _L19909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _L20737_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (_generate-simple-vector18361_
                                                   _tgt19888_
                                                   _L20709_
                                                   '0
                                                   _K19891_
                                                   _E19892_)
                                                  (cons _E19892_ '()))))))
                            _g2072320734_))))
                    (_g2072120749_ (gx#stx-length _L20709_)))))
              _hd2062720703_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2061920682_
                                                      _g2062120686_))))
                                             (_g2061920682_ _g2062120686_))
                                         (_g2061920682_ _g2062120686_))
                                     (_g2061920682_ _g2062120686_))))
                             (_g2061920682_ _g2062120686_)))))
                  (_g2061820753_ _L20606_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1999820600_)
                                                 (_g1992920579_
                                                  _g1993720583_))))
                                         (_g1992920579_ _g1993720583_))
                                     (_g1992920579_ _g1993720583_))
                                 (_g1992920579_ _g1993720583_))))
                         (_g1992920579_ _g1993720583_)))))
              (let ((_g1992720828_
                     (lambda (_g1993720761_)
                       (if (gx#stx-pair? _g1993720761_)
                           (let ((_e1998720764_ (gx#syntax-e _g1993720761_)))
                             (let ((_hd1998820768_ (##car _e1998720764_))
                                   (_tl1998920771_ (##cdr _e1998720764_)))
                               (if (gx#stx-datum? _hd1998820768_)
                                   (if (equal? (gx#stx-e _hd1998820768_) 'box:)
                                       (if (gx#stx-pair? _tl1998920771_)
                                           (let ((_e1999020774_
                                                  (gx#syntax-e
                                                   _tl1998920771_)))
                                             (let ((_hd1999120778_
                                                    (##car _e1999020774_))
                                                   (_tl1999220781_
                                                    (##cdr _e1999020774_)))
                                               (if (gx#stx-null?
                                                    _tl1999220781_)
                                                   ((lambda (_L20784_)
                                                      (let ((_g2079720805_
                                                             (lambda (_g2079820801_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2079820801_))))
                                                        (let ((_g2079620824_
                                                               (lambda (_g2079820809_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L20812_)
                            (let ()
                              (cons (gx#datum->syntax '#f 'if)
                                    (cons (cons (gx#datum->syntax '#f '##box?)
                                                (cons _L19909_ '()))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'let)
                                                      (cons (cons (cons _L20812_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons (gx#datum->syntax '#f '##unbox)
                                            (cons _L19909_ '()))
                                      '()))
                          '())
                    (cons (_generate118358_
                           _L20812_
                           _L20784_
                           _K19891_
                           _E19892_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _E19892_ '()))))))
                          _g2079820809_))))
                  (_g2079620824_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1999120778_)
                                                   (_g1992820757_
                                                    _g1993720761_))))
                                           (_g1992820757_ _g1993720761_))
                                       (_g1992820757_ _g1993720761_))
                                   (_g1992820757_ _g1993720761_))))
                           (_g1992820757_ _g1993720761_)))))
                (let ((_g1992620882_
                       (lambda (_g1993720832_)
                         (if (gx#stx-pair? _g1993720832_)
                             (let ((_e1997720835_ (gx#syntax-e _g1993720832_)))
                               (let ((_hd1997820839_ (##car _e1997720835_))
                                     (_tl1997920842_ (##cdr _e1997720835_)))
                                 (if (gx#stx-datum? _hd1997820839_)
                                     (if (equal? (gx#stx-e _hd1997820839_)
                                                 'splice:)
                                         (if (gx#stx-pair? _tl1997920842_)
                                             (let ((_e1998020845_
                                                    (gx#syntax-e
                                                     _tl1997920842_)))
                                               (let ((_hd1998120849_
                                                      (##car _e1998020845_))
                                                     (_tl1998220852_
                                                      (##cdr _e1998020845_)))
                                                 (if (gx#stx-pair?
                                                      _tl1998220852_)
                                                     (let ((_e1998320855_
                                                            (gx#syntax-e
                                                             _tl1998220852_)))
                                                       (let ((_hd1998420859_
                                                              (##car _e1998320855_))
                                                             (_tl1998520862_
                                                              (##cdr _e1998320855_)))
                                                         (if (gx#stx-null?
                                                              _tl1998520862_)
                                                             ((lambda (_L20865_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L20867_)
                        (_generate-splice18360_
                         _tgt19888_
                         _L20867_
                         _L20865_
                         _K19891_
                         _E19892_))
                      _hd1998420859_
                      _hd1998120849_)
                     (_g1992720828_ _g1993720832_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1992720828_
                                                      _g1993720832_))))
                                             (_g1992720828_ _g1993720832_))
                                         (_g1992720828_ _g1993720832_))
                                     (_g1992720828_ _g1993720832_))))
                             (_g1992720828_ _g1993720832_)))))
                  (let ((_g1992520903_
                         (lambda (_g1993720886_)
                           (if (gx#stx-pair? _g1993720886_)
                               (let ((_e1997220889_
                                      (gx#syntax-e _g1993720886_)))
                                 (let ((_hd1997320893_ (##car _e1997220889_))
                                       (_tl1997420896_ (##cdr _e1997220889_)))
                                   (if (gx#stx-datum? _hd1997320893_)
                                       (if (equal? (gx#stx-e _hd1997320893_)
                                                   'null:)
                                           (if (gx#stx-null? _tl1997420896_)
                                               ((lambda ()
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'if)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '##null?)
                            (cons _L19909_ '()))
                      (cons _K19891_ (cons _E19892_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1992620882_ _g1993720886_))
                                           (_g1992620882_ _g1993720886_))
                                       (_g1992620882_ _g1993720886_))))
                               (_g1992620882_ _g1993720886_)))))
                    (let ((_g1992421022_
                           (lambda (_g1993720907_)
                             (if (gx#stx-pair? _g1993720907_)
                                 (let ((_e1996320910_
                                        (gx#syntax-e _g1993720907_)))
                                   (let ((_hd1996420914_ (##car _e1996320910_))
                                         (_tl1996520917_
                                          (##cdr _e1996320910_)))
                                     (if (gx#stx-datum? _hd1996420914_)
                                         (if (equal? (gx#stx-e _hd1996420914_)
                                                     'cons:)
                                             (if (gx#stx-pair? _tl1996520917_)
                                                 (let ((_e1996620920_
                                                        (gx#syntax-e
                                                         _tl1996520917_)))
                                                   (let ((_hd1996720924_
                                                          (##car _e1996620920_))
                                                         (_tl1996820927_
                                                          (##cdr _e1996620920_)))
                                                     (if (gx#stx-pair?
                                                          _tl1996820927_)
                                                         (let ((_e1996920930_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1996820927_)))
                   (let ((_hd1997020934_ (##car _e1996920930_))
                         (_tl1997120937_ (##cdr _e1996920930_)))
                     (if (gx#stx-null? _tl1997120937_)
                         ((lambda (_L20940_ _L20942_)
                            (let ((_g2095820973_
                                   (lambda (_g2095920969_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2095920969_))))
                              (let ((_g2095721018_
                                     (lambda (_g2095920977_)
                                       (if (gx#stx-pair? _g2095920977_)
                                           (let ((_e2096220980_
                                                  (gx#syntax-e _g2095920977_)))
                                             (let ((_hd2096320984_
                                                    (##car _e2096220980_))
                                                   (_tl2096420987_
                                                    (##cdr _e2096220980_)))
                                               (if (gx#stx-pair?
                                                    _tl2096420987_)
                                                   (let ((_e2096520990_
                                                          (gx#syntax-e
                                                           _tl2096420987_)))
                                                     (let ((_hd2096620994_
                                                            (##car _e2096520990_))
                                                           (_tl2096720997_
                                                            (##cdr _e2096520990_)))
                                                       (if (gx#stx-null?
                                                            _tl2096720997_)
                                                           ((lambda (_L21000_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L21002_)
                      (let ()
                        (cons (gx#datum->syntax '#f 'if)
                              (cons (cons (gx#datum->syntax '#f '##pair?)
                                          (cons _L19909_ '()))
                                    (cons (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (cons _L21002_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f '##car)
                                      (cons _L19909_ '()))
                                '()))
                    (cons (cons _L21000_
                                (cons (cons (gx#datum->syntax '#f '##cdr)
                                            (cons _L19909_ '()))
                                      '()))
                          '()))
              (cons (_generate118358_
                     _L21002_
                     _L20942_
                     (_generate118358_ _L21000_ _L20940_ _K19891_ _E19892_)
                     _E19892_)
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons _E19892_ '()))))))
                    _hd2096620994_
                    _hd2096320984_)
                   (_g2095820973_ _g2095920977_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2095820973_
                                                    _g2095920977_))))
                                           (_g2095820973_ _g2095920977_)))))
                                (_g2095721018_
                                 (list (gx#genident 'hd) (gx#genident 'tl))))))
                          _hd1997020934_
                          _hd1996720924_)
                         (_g1992520903_ _g1993720907_))))
                 (_g1992520903_ _g1993720907_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1992520903_ _g1993720907_))
                                             (_g1992520903_ _g1993720907_))
                                         (_g1992520903_ _g1993720907_))))
                                 (_g1992520903_ _g1993720907_)))))
                      (let ((_g1992321062_
                             (lambda (_g1993721026_)
                               (if (gx#stx-pair? _g1993721026_)
                                   (let ((_e1995521029_
                                          (gx#syntax-e _g1993721026_)))
                                     (let ((_hd1995621033_
                                            (##car _e1995521029_))
                                           (_tl1995721036_
                                            (##cdr _e1995521029_)))
                                       (if (gx#stx-datum? _hd1995621033_)
                                           (if (equal? (gx#stx-e
                                                        _hd1995621033_)
                                                       'not:)
                                               (if (gx#stx-pair?
                                                    _tl1995721036_)
                                                   (let ((_e1995821039_
                                                          (gx#syntax-e
                                                           _tl1995721036_)))
                                                     (let ((_hd1995921043_
                                                            (##car _e1995821039_))
                                                           (_tl1996021046_
                                                            (##cdr _e1995821039_)))
                                                       (if (gx#stx-null?
                                                            _tl1996021046_)
                                                           ((lambda (_L21049_)
                                                              (_generate118358_
                                                               _tgt19888_
                                                               _L21049_
                                                               _E19892_
                                                               _K19891_))
                                                            _hd1995921043_)
                                                           (_g1992421022_
                                                            _g1993721026_))))
                                                   (_g1992421022_
                                                    _g1993721026_))
                                               (_g1992421022_ _g1993721026_))
                                           (_g1992421022_ _g1993721026_))))
                                   (_g1992421022_ _g1993721026_)))))
                        (let ((_g1992221150_
                               (lambda (_g1993721066_)
                                 (if (gx#stx-pair? _g1993721066_)
                                     (let ((_e1995121069_
                                            (gx#syntax-e _g1993721066_)))
                                       (let ((_hd1995221073_
                                              (##car _e1995121069_))
                                             (_tl1995321076_
                                              (##cdr _e1995121069_)))
                                         (if (gx#stx-datum? _hd1995221073_)
                                             (if (equal? (gx#stx-e
                                                          _hd1995221073_)
                                                         'or:)
                                                 ((lambda (_L21079_)
                                                    (let ((_g2109121103_
                                                           (lambda (_g2109221099_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g2109221099_))))
                                                      (let ((_g2109021114_
                                                             (lambda (_g2109221107_)
                                                               ((lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _E19892_)))))
                (let ((_g2108921146_
                       (lambda (_g2109221118_)
                         (if (gx#stx-pair? _g2109221118_)
                             (let ((_e2109521121_ (gx#syntax-e _g2109221118_)))
                               (let ((_hd2109621125_ (##car _e2109521121_))
                                     (_tl2109721128_ (##cdr _e2109521121_)))
                                 ((lambda (_L21131_ _L21133_)
                                    (_generate118358_
                                     _tgt19888_
                                     _L21133_
                                     _K19891_
                                     (_generate118358_
                                      _tgt19888_
                                      (cons 'or: _L21131_)
                                      _K19891_
                                      _E19892_)))
                                  _tl2109721128_
                                  _hd2109621125_)))
                             (_g2109021114_ _g2109221118_)))))
                  (_g2108921146_ _L21079_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl1995321076_)
                                                 (_g1992321062_ _g1993721066_))
                                             (_g1992321062_ _g1993721066_))))
                                     (_g1992321062_ _g1993721066_)))))
                          (let ((_g1992121238_
                                 (lambda (_g1993721154_)
                                   (if (gx#stx-pair? _g1993721154_)
                                       (let ((_e1994721157_
                                              (gx#syntax-e _g1993721154_)))
                                         (let ((_hd1994821161_
                                                (##car _e1994721157_))
                                               (_tl1994921164_
                                                (##cdr _e1994721157_)))
                                           (if (gx#stx-datum? _hd1994821161_)
                                               (if (equal? (gx#stx-e
                                                            _hd1994821161_)
                                                           'and:)
                                                   ((lambda (_L21167_)
                                                      (let ((_g2117921191_
                                                             (lambda (_g2118021187_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2118021187_))))
                                                        (let ((_g2117821202_
                                                               (lambda (_g2118021195_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda () _K19891_)))))
                  (let ((_g2117721234_
                         (lambda (_g2118021206_)
                           (if (gx#stx-pair? _g2118021206_)
                               (let ((_e2118321209_
                                      (gx#syntax-e _g2118021206_)))
                                 (let ((_hd2118421213_ (##car _e2118321209_))
                                       (_tl2118521216_ (##cdr _e2118321209_)))
                                   ((lambda (_L21219_ _L21221_)
                                      (_generate118358_
                                       _tgt19888_
                                       _L21221_
                                       (_generate118358_
                                        _tgt19888_
                                        (cons 'and: _L21219_)
                                        _K19891_
                                        _E19892_)
                                       _E19892_))
                                    _tl2118521216_
                                    _hd2118421213_)))
                               (_g2117821202_ _g2118021206_)))))
                    (_g2117721234_ _L21167_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1994921164_)
                                                   (_g1992221150_
                                                    _g1993721154_))
                                               (_g1992221150_ _g1993721154_))))
                                       (_g1992221150_ _g1993721154_)))))
                            (let ((_g1992021527_
                                   (lambda (_g1993721242_)
                                     (if (gx#stx-pair? _g1993721242_)
                                         (let ((_e1994021245_
                                                (gx#syntax-e _g1993721242_)))
                                           (let ((_hd1994121249_
                                                  (##car _e1994021245_))
                                                 (_tl1994221252_
                                                  (##cdr _e1994021245_)))
                                             (if (gx#stx-datum? _hd1994121249_)
                                                 (if (equal? (gx#stx-e
                                                              _hd1994121249_)
                                                             '?:)
                                                     (if (gx#stx-pair?
                                                          _tl1994221252_)
                                                         (let ((_e1994321255_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1994221252_)))
                   (let ((_hd1994421259_ (##car _e1994321255_))
                         (_tl1994521262_ (##cdr _e1994321255_)))
                     ((lambda (_L21265_ _L21267_)
                        (let ((_g2128321315_
                               (lambda (_g2128421311_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2128421311_))))
                          (let ((_g2128221413_
                                 (lambda (_g2128421319_)
                                   (if (gx#stx-pair? _g2128421319_)
                                       (let ((_e2129821322_
                                              (gx#syntax-e _g2128421319_)))
                                         (let ((_hd2129921326_
                                                (##car _e2129821322_))
                                               (_tl2130021329_
                                                (##cdr _e2129821322_)))
                                           (if (gx#stx-datum? _hd2129921326_)
                                               (if (equal? (gx#stx-e
                                                            _hd2129921326_)
                                                           '::)
                                                   (if (gx#stx-pair?
                                                        _tl2130021329_)
                                                       (let ((_e2130121332_
                                                              (gx#syntax-e
                                                               _tl2130021329_)))
                                                         (let ((_hd2130221336_
                                                                (##car _e2130121332_))
                                                               (_tl2130321339_
                                                                (##cdr _e2130121332_)))
                                                           (if (gx#stx-pair?
                                                                _tl2130321339_)
                                                               (let ((_e2130421342_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2130321339_)))
                         (let ((_hd2130521346_ (##car _e2130421342_))
                               (_tl2130621349_ (##cdr _e2130421342_)))
                           (if (gx#stx-datum? _hd2130521346_)
                               (if (equal? (gx#stx-e _hd2130521346_) '=>:)
                                   (if (gx#stx-pair? _tl2130621349_)
                                       (let ((_e2130721352_
                                              (gx#syntax-e _tl2130621349_)))
                                         (let ((_hd2130821356_
                                                (##car _e2130721352_))
                                               (_tl2130921359_
                                                (##cdr _e2130721352_)))
                                           (if (gx#stx-null? _tl2130921359_)
                                               ((lambda (_L21362_ _L21364_)
                                                  (let ((_g2138221390_
                                                         (lambda (_g2138321386_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2138321386_))))
                                                    (let ((_g2138121409_
                                                           (lambda (_g2138321394_)
                                                             ((lambda (_L21397_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'if)
                                (cons (cons (gx#datum->syntax '#f '?)
                                            (cons _L21267_
                                                  (cons _L19909_ '())))
                                      (cons (cons (gx#datum->syntax '#f 'let)
                                                  (cons (cons (cons _L21397_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons _L21364_ (cons _L19909_ '())) '()))
                      '())
                (cons (_generate118358_ _L21397_ _L21362_ _K19891_ _E19892_)
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _E19892_ '()))))))
                      _g2138321394_))))
              (_g2138121409_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2130821356_
                                                _hd2130221336_)
                                               (_g2128321315_ _g2128421319_))))
                                       (_g2128321315_ _g2128421319_))
                                   (_g2128321315_ _g2128421319_))
                               (_g2128321315_ _g2128421319_))))
                       (_g2128321315_ _g2128421319_))))
               (_g2128321315_ _g2128421319_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2128321315_
                                                    _g2128421319_))
                                               (_g2128321315_ _g2128421319_))))
                                       (_g2128321315_ _g2128421319_)))))
                            (let ((_g2128121484_
                                   (lambda (_g2128421417_)
                                     (if (gx#stx-pair? _g2128421417_)
                                         (let ((_e2129021420_
                                                (gx#syntax-e _g2128421417_)))
                                           (let ((_hd2129121424_
                                                  (##car _e2129021420_))
                                                 (_tl2129221427_
                                                  (##cdr _e2129021420_)))
                                             (if (gx#stx-datum? _hd2129121424_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2129121424_)
                                                             '=>:)
                                                     (if (gx#stx-pair?
                                                          _tl2129221427_)
                                                         (let ((_e2129321430_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2129221427_)))
                   (let ((_hd2129421434_ (##car _e2129321430_))
                         (_tl2129521437_ (##cdr _e2129321430_)))
                     (if (gx#stx-null? _tl2129521437_)
                         ((lambda (_L21440_)
                            (let ((_g2145321461_
                                   (lambda (_g2145421457_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2145421457_))))
                              (let ((_g2145221480_
                                     (lambda (_g2145421465_)
                                       ((lambda (_L21468_)
                                          (let ()
                                            (cons (gx#datum->syntax '#f 'let)
                                                  (cons (cons (cons _L21468_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons _L21267_ (cons _L19909_ '())) '()))
                      '())
                (cons (cons (gx#datum->syntax '#f 'if)
                            (cons _L21468_
                                  (cons (_generate118358_
                                         _L21468_
                                         _L21440_
                                         _K19891_
                                         _E19892_)
                                        (cons _E19892_ '()))))
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g2145421465_))))
                                (_g2145221480_ (gx#genident 'e)))))
                          _hd2129421434_)
                         (_g2128221413_ _g2128421417_))))
                 (_g2128221413_ _g2128421417_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2128221413_
                                                      _g2128421417_))
                                                 (_g2128221413_
                                                  _g2128421417_))))
                                         (_g2128221413_ _g2128421417_)))))
                              (let ((_g2128021512_
                                     (lambda (_g2128421488_)
                                       (if (gx#stx-pair? _g2128421488_)
                                           (let ((_e2128621491_
                                                  (gx#syntax-e _g2128421488_)))
                                             (let ((_hd2128721495_
                                                    (##car _e2128621491_))
                                                   (_tl2128821498_
                                                    (##cdr _e2128621491_)))
                                               (if (gx#stx-null?
                                                    _tl2128821498_)
                                                   ((lambda (_L21501_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '?)
                                (cons _L21267_ (cons _L19909_ '())))
                          (cons (_generate118358_
                                 _tgt19888_
                                 _L21501_
                                 _K19891_
                                 _E19892_)
                                (cons _E19892_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd2128721495_)
                                                   (_g2128121484_
                                                    _g2128421488_))))
                                           (_g2128121484_ _g2128421488_)))))
                                (let ((_g2127921523_
                                       (lambda (_g2128421516_)
                                         (if (gx#stx-null? _g2128421516_)
                                             ((lambda ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'if)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '?)
                          (cons _L21267_ (cons _L19909_ '())))
                    (cons _K19891_ (cons _E19892_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2128021512_ _g2128421516_)))))
                                  (_g2127921523_ _L21265_)))))))
                      _tl1994521262_
                      _hd1994421259_)))
                 (_g1992121238_ _g1993721242_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1992121238_
                                                      _g1993721242_))
                                                 (_g1992121238_
                                                  _g1993721242_))))
                                         (_g1992121238_ _g1993721242_)))))
                              (_g1992021527_ _ptree19890_))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _g1989519906_))))
                        (_g1989321531_ _tgt19888_)))))
                 (_generate-splice18360_
                  (lambda (_tgt19260_ _hd19262_ _rest19263_ _K19264_ _E19265_)
                    (let ((_g1926719284_
                           (lambda (_g1926819280_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1926819280_))))
                      (let ((_g1926619884_
                             (lambda (_g1926819288_)
                               (if (gx#stx-pair/null? _g1926819288_)
                                   (if (fx>= (gx#stx-length _g1926819288_) '0)
                                       (let ((_g30362_
                                              (gx#syntax-split-splice
                                               _g1926819288_
                                               '0)))
                                         (begin
                                           (let ((_g30363_
                                                  (values-count _g30362_)))
                                             (if (not (fx= _g30363_ 2))
                                                 (error "Context expects 2 values"
                                                        _g30363_)))
                                           (let ((_target1927019291_
                                                  (values-ref _g30362_ 0))
                                                 (_tl1927219294_
                                                  (values-ref _g30362_ 1)))
                                             (if (gx#stx-null? _tl1927219294_)
                                                 (letrec ((_loop1927319297_
                                                           (lambda (_hd1927119301_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _var1927719304_)
                     (if (gx#stx-pair? _hd1927119301_)
                         (let ((_e1927419307_ (gx#syntax-e _hd1927119301_)))
                           (let ((_lp-hd1927519311_ (##car _e1927419307_))
                                 (_lp-tl1927619314_ (##cdr _e1927419307_)))
                             (_loop1927319297_
                              _lp-tl1927619314_
                              (cons _lp-hd1927519311_ _var1927719304_))))
                         (let ((_var1927819317_ (reverse _var1927719304_)))
                           ((lambda (_L19321_)
                              (let ()
                                (let ((_g1933719354_
                                       (lambda (_g1933819350_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1933819350_))))
                                  (let ((_g1933619872_
                                         (lambda (_g1933819358_)
                                           (if (gx#stx-pair/null?
                                                _g1933819358_)
                                               (if (fx>= (gx#stx-length
                                                          _g1933819358_)
                                                         '0)
                                                   (let ((_g30364_
                                                          (gx#syntax-split-splice
                                                           _g1933819358_
                                                           '0)))
                                                     (begin
                                                       (let ((_g30365_
                                                              (values-count
                                                               _g30364_)))
                                                         (if (not (fx= _g30365_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g30365_)))
               (let ((_target1934019361_ (values-ref _g30364_ 0))
                     (_tl1934219364_ (values-ref _g30364_ 1)))
                 (if (gx#stx-null? _tl1934219364_)
                     (letrec ((_loop1934319367_
                               (lambda (_hd1934119371_ _var-r1934719374_)
                                 (if (gx#stx-pair? _hd1934119371_)
                                     (let ((_e1934419377_
                                            (gx#syntax-e _hd1934119371_)))
                                       (let ((_lp-hd1934519381_
                                              (##car _e1934419377_))
                                             (_lp-tl1934619384_
                                              (##cdr _e1934419377_)))
                                         (_loop1934319367_
                                          _lp-tl1934619384_
                                          (cons _lp-hd1934519381_
                                                _var-r1934719374_))))
                                     (let ((_var-r1934819387_
                                            (reverse _var-r1934719374_)))
                                       ((lambda (_L19391_)
                                          (let ()
                                            (let ((_g1940819425_
                                                   (lambda (_g1940919421_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1940919421_))))
                                              (let ((_g1940719860_
                                                     (lambda (_g1940919429_)
                                                       (if (gx#stx-pair/null?
                                                            _g1940919429_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1940919429_)
                             '0)
                       (let ((_g30366_
                              (gx#syntax-split-splice _g1940919429_ '0)))
                         (begin
                           (let ((_g30367_ (values-count _g30366_)))
                             (if (not (fx= _g30367_ 2))
                                 (error "Context expects 2 values" _g30367_)))
                           (let ((_target1941119432_ (values-ref _g30366_ 0))
                                 (_tl1941319435_ (values-ref _g30366_ 1)))
                             (if (gx#stx-null? _tl1941319435_)
                                 (letrec ((_loop1941419438_
                                           (lambda (_hd1941219442_
                                                    _init1941819445_)
                                             (if (gx#stx-pair? _hd1941219442_)
                                                 (let ((_e1941519448_
                                                        (gx#syntax-e
                                                         _hd1941219442_)))
                                                   (let ((_lp-hd1941619452_
                                                          (##car _e1941519448_))
                                                         (_lp-tl1941719455_
                                                          (##cdr _e1941519448_)))
                                                     (_loop1941419438_
                                                      _lp-tl1941719455_
                                                      (cons _lp-hd1941619452_
                                                            _init1941819445_))))
                                                 (let ((_init1941919458_
                                                        (reverse _init1941819445_)))
                                                   ((lambda (_L19462_)
                                                      (let ()
                                                        (let ((_g1947919487_
                                                               (lambda (_g1948019483_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1948019483_))))
                  (let ((_g1947819856_
                         (lambda (_g1948019491_)
                           ((lambda (_L19494_)
                              (let ()
                                (let ((_g1950719515_
                                       (lambda (_g1950819511_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1950819511_))))
                                  (let ((_g1950619852_
                                         (lambda (_g1950819519_)
                                           ((lambda (_L19522_)
                                              (let ()
                                                (let ((_g1953519543_
                                                       (lambda (_g1953619539_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1953619539_))))
                                                  (let ((_g1953419848_
                                                         (lambda (_g1953619547_)
                                                           ((lambda (_L19550_)
                                                              (let ()
                                                                (let ((_g1956319571_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1956419567_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1956419567_))))
                          (let ((_g1956219844_
                                 (lambda (_g1956419575_)
                                   ((lambda (_L19578_)
                                      (let ()
                                        (let ((_g1959119599_
                                               (lambda (_g1959219595_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1959219595_))))
                                          (let ((_g1959019840_
                                                 (lambda (_g1959219603_)
                                                   ((lambda (_L19606_)
                                                      (let ()
                                                        (let ((_g1961919627_
                                                               (lambda (_g1962019623_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1962019623_))))
                  (let ((_g1961819836_
                         (lambda (_g1962019631_)
                           ((lambda (_L19634_)
                              (let ()
                                (let ((_g1964719655_
                                       (lambda (_g1964819651_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1964819651_))))
                                  (let ((_g1964619832_
                                         (lambda (_g1964819659_)
                                           ((lambda (_L19662_)
                                              (let ()
                                                (let ((_g1967519683_
                                                       (lambda (_g1967619679_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1967619679_))))
                                                  (let ((_g1967419817_
                                                         (lambda (_g1967619687_)
                                                           ((lambda (_L19690_)
                                                              (let ()
                                                                (let ((_g1970319711_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1970419707_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1970419707_))))
                          (let ((_g1970219805_
                                 (lambda (_g1970419715_)
                                   ((lambda (_L19718_)
                                      (let ()
                                        (let ((_g1973119739_
                                               (lambda (_g1973219735_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1973219735_))))
                                          (let ((_g1973019801_
                                                 (lambda (_g1973219743_)
                                                   ((lambda (_L19746_)
                                                      (let ()
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'letrec)
                        (cons (cons (cons _L19522_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L19634_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr (lambda (_g1976019771_ _g1976119774_)
                                     (cons _g1976019771_ _g1976119774_))
                                   '()
                                   _L19321_)))
                    (cons _L19662_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (cons (cons _L19578_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons (cons _L19606_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _L19634_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1976219777_
                                                        _g1976319780_)
                                                 (cons _g1976219777_
                                                       _g1976319780_))
                                               '()
                                               _L19391_))))
                          (cons _L19746_ '())))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons _L19550_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons (cons _L19634_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1976419783_
                                                        _g1976519786_)
                                                 (cons _g1976419783_
                                                       _g1976519786_))
                                               '()
                                               _L19391_)))
                                (cons (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'pair?)
                                                        (cons _L19634_ '()))
                                                  (cons (cons _L19578_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '##car)
                                  (cons _L19634_ '()))
                            (cons _L19634_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g1976619789_
                                                    _g1976719792_)
                                             (cons _g1976619789_
                                                   _g1976719792_))
                                           '()
                                           _L19391_)))))
                (cons _L19718_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              (cons (cons _L19550_
                                          (cons _L19494_
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g1976819795_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1976919798_)
                   (cons _g1976819795_ _g1976919798_))
                 '()
                 _L19462_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1973219743_))))
                                            (_g1973019801_
                                             (_generate118358_
                                              _L19606_
                                              _hd19262_
                                              _L19690_
                                              _L19718_))))))
                                    _g1970419715_))))
                            (_g1970219805_
                             (cons _L19522_
                                   (cons _L19634_
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g1980819811_
                                                           _g1980919814_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'reverse)
                        (cons _g1980819811_ '()))
                  _g1980919814_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()
                                                  _L19391_)))))))))
                    _g1967619687_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1967419817_
                                                     (cons _L19550_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##cdr)
                               (cons _L19634_ '()))
                         (begin
                           (gx#syntax-check-splice-targets _L19391_ _L19321_)
                           (foldr (lambda (_g1982019824_
                                           _g1982119827_
                                           _g1982219829_)
                                    (cons (cons (gx#datum->syntax '#f 'cons)
                                                (cons _g1982119827_
                                                      (cons _g1982019824_
                                                            '())))
                                          _g1982219829_))
                                  '()
                                  _L19391_
                                  _L19321_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g1964819659_))))
                                    (_g1964619832_
                                     (_generate118358_
                                      _L19634_
                                      _rest19263_
                                      _K19264_
                                      _E19265_))))))
                            _g1962019631_))))
                    (_g1961819836_ (gx#genident 'rest))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1959219603_))))
                                            (_g1959019840_
                                             (gx#genident 'hd))))))
                                    _g1956419575_))))
                            (_g1956219844_ (gx#genident 'splice-try))))))
                    _g1953619547_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1953419848_
                                                     (gx#genident
                                                      'splice-loop))))))
                                            _g1950819519_))))
                                    (_g1950619852_
                                     (gx#genident 'splice-rest))))))
                            _g1948019491_))))
                    (_g1947819856_ _tgt19260_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _init1941919458_))))))
                                   (_loop1941419438_ _target1941119432_ '()))
                                 (_g1940819425_ _g1940919429_)))))
                       (_g1940819425_ _g1940919429_))
                   (_g1940819425_ _g1940919429_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1940719860_
                                                 (make-list
                                                  (gx#stx-length
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g1986319866_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1986419869_)
                      (cons _g1986319866_ _g1986419869_))
                    '()
                    _L19321_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         '@list)
                                                        '())))))))
                                        _var-r1934819387_))))))
                       (_loop1934319367_ _target1934019361_ '()))
                     (_g1933719354_ _g1933819358_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1933719354_
                                                    _g1933819358_))
                                               (_g1933719354_
                                                _g1933819358_)))))
                                    (_g1933619872_
                                     (gx#gentemps
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1987519878_
                                                        _g1987619881_)
                                                 (cons _g1987519878_
                                                       _g1987619881_))
                                               '()
                                               _L19321_))))))))
                            _var1927819317_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop1927319297_
                                                    _target1927019291_
                                                    '()))
                                                 (_g1926719284_
                                                  _g1926819288_)))))
                                       (_g1926719284_ _g1926819288_))
                                   (_g1926719284_ _g1926819288_)))))
                        (_g1926619884_
                         (|gerbil/core::<match>[1]#match-pattern-vars|
                          _hd19262_))))))
                 (_generate-simple-vector18361_
                  (lambda (_tgt19102_
                           _body19104_
                           _start19105_
                           _K19106_
                           _E19107_)
                    ((letrec ((_recur19109_
                               (lambda (_rest19112_ _off19114_)
                                 (let ((_g1911719129_
                                        (lambda (_g1911819125_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1911819125_))))
                                   (let ((_g1911619140_
                                          (lambda (_g1911819133_)
                                            ((lambda () _K19106_)))))
                                     (let ((_g1911519256_
                                            (lambda (_g1911819144_)
                                              (if (gx#stx-pair? _g1911819144_)
                                                  (let ((_e1912119147_
                                                         (gx#syntax-e
                                                          _g1911819144_)))
                                                    (let ((_hd1912219151_
                                                           (##car _e1912119147_))
                                                          (_tl1912319154_
                                                           (##cdr _e1912119147_)))
                                                      ((lambda (_L19157_
                                                                _L19159_)
                                                         (let ((_g1917419193_
                                                                (lambda (_g1917519189_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1917519189_))))
                   (let ((_g1917319252_
                          (lambda (_g1917519197_)
                            (if (gx#stx-pair? _g1917519197_)
                                (let ((_e1917919200_
                                       (gx#syntax-e _g1917519197_)))
                                  (let ((_hd1918019204_ (##car _e1917919200_))
                                        (_tl1918119207_ (##cdr _e1917919200_)))
                                    (if (gx#stx-pair? _tl1918119207_)
                                        (let ((_e1918219210_
                                               (gx#syntax-e _tl1918119207_)))
                                          (let ((_hd1918319214_
                                                 (##car _e1918219210_))
                                                (_tl1918419217_
                                                 (##cdr _e1918219210_)))
                                            (if (gx#stx-pair? _tl1918419217_)
                                                (let ((_e1918519220_
                                                       (gx#syntax-e
                                                        _tl1918419217_)))
                                                  (let ((_hd1918619224_
                                                         (##car _e1918519220_))
                                                        (_tl1918719227_
                                                         (##cdr _e1918519220_)))
                                                    (if (gx#stx-null?
                                                         _tl1918719227_)
                                                        ((lambda (_L19230_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L19232_
                          _L19233_)
                   (let ()
                     (cons (gx#datum->syntax '#f 'let)
                           (cons (cons (cons _L19233_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##vector-ref)
                                                         (cons _L19232_
                                                               (cons _L19230_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())
                                 (cons (_generate118358_
                                        _L19233_
                                        _L19159_
                                        (_recur19109_
                                         _L19157_
                                         (fx1+ _off19114_))
                                        _E19107_)
                                       '())))))
                 _hd1918619224_
                 _hd1918319214_
                 _hd1918019204_)
                (_g1917419193_ _g1917519197_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1917419193_
                                                 _g1917519197_))))
                                        (_g1917419193_ _g1917519197_))))
                                (_g1917419193_ _g1917519197_)))))
                     (_g1917319252_
                      (list (gx#genident 'e) _tgt19102_ _off19114_)))))
               _tl1912319154_
               _hd1912219151_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1911619140_
                                                   _g1911819144_)))))
                                       (_g1911519256_ _rest19112_)))))))
                       _recur19109_)
                     _body19104_
                     _start19105_)))
                 (_generate-list-vector18362_
                  (lambda (_tgt19012_
                           _body19014_
                           _tgt->list19015_
                           _start19016_
                           _K19017_
                           _E19018_)
                    (let ((_g1902019039_
                           (lambda (_g1902119035_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1902119035_))))
                      (let ((_g1901919098_
                             (lambda (_g1902119043_)
                               (if (gx#stx-pair? _g1902119043_)
                                   (let ((_e1902519046_
                                          (gx#syntax-e _g1902119043_)))
                                     (let ((_hd1902619050_
                                            (##car _e1902519046_))
                                           (_tl1902719053_
                                            (##cdr _e1902519046_)))
                                       (if (gx#stx-pair? _tl1902719053_)
                                           (let ((_e1902819056_
                                                  (gx#syntax-e
                                                   _tl1902719053_)))
                                             (let ((_hd1902919060_
                                                    (##car _e1902819056_))
                                                   (_tl1903019063_
                                                    (##cdr _e1902819056_)))
                                               (if (gx#stx-pair?
                                                    _tl1903019063_)
                                                   (let ((_e1903119066_
                                                          (gx#syntax-e
                                                           _tl1903019063_)))
                                                     (let ((_hd1903219070_
                                                            (##car _e1903119066_))
                                                           (_tl1903319073_
                                                            (##cdr _e1903119066_)))
                                                       (if (gx#stx-null?
                                                            _tl1903319073_)
                                                           ((lambda (_L19076_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L19078_
                             _L19079_)
                      (let ()
                        (cons (gx#datum->syntax '#f 'let)
                              (cons (cons (cons _L19079_
                                                (cons (cons _L19076_
                                                            (cons _L19078_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())
                                    (cons (_generate118358_
                                           _L19079_
                                           _body19014_
                                           _K19017_
                                           _E19018_)
                                          '())))))
                    _hd1903219070_
                    _hd1902919060_
                    _hd1902619050_)
                   (_g1902019039_ _g1902119043_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1902019039_
                                                    _g1902119043_))))
                                           (_g1902019039_ _g1902119043_))))
                                   (_g1902019039_ _g1902119043_)))))
                        (_g1901919098_
                         (list (gx#genident 'e)
                               _tgt19012_
                               _tgt->list19015_))))))
                 (_generate-struct18363_
                  (lambda (_info18745_
                           _tgt18747_
                           _body18748_
                           _K18749_
                           _E18750_)
                    (let ((_rtd18752_
                           (if (|gerbil/core::<MOP>::<MOP:2>[1]#extended-struct-info?|
                                _info18745_)
                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor|
                                _info18745_)
                               '#f)))
                      (let ((_fields18762_
                             ((letrec ((_lp18755_
                                        (lambda (_rtd18758_ _k18760_)
                                          (if _rtd18758_
                                              (_lp18755_
                                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor-e|
                                                (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-super|
                                                 _rtd18758_))
                                               (fx+ (length (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-fields|
                                                             _rtd18758_))
                                                    _k18760_))
                                              _k18760_))))
                                _lp18755_)
                              _rtd18752_
                              '0)))
                        (let ((_final?18765_
                               (if _rtd18752_
                                   (assgetq 'final:
                                            (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-plist|
                                             _rtd18752_))
                                   '#f)))
                          (let ((_g1876818776_
                                 (lambda (_g1876918772_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1876918772_))))
                            (let ((_g1876719008_
                                   (lambda (_g1876918780_)
                                     ((lambda (_L18783_)
                                        (let ()
                                          (let ((_g1879818806_
                                                 (lambda (_g1879918802_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1879918802_))))
                                            (let ((_g1879719004_
                                                   (lambda (_g1879918810_)
                                                     ((lambda (_L18813_)
                                                        (let ()
                                                          (let ((_g1882618834_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1882718830_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1882718830_))))
                    (let ((_g1882519000_
                           (lambda (_g1882718838_)
                             ((lambda (_L18841_)
                                (let ()
                                  (let ()
                                    (let ((_g1885718878_
                                           (lambda (_g1885818874_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1885818874_))))
                                      (let ((_g1885618921_
                                             (lambda (_g1885818882_)
                                               (if (gx#stx-pair? _g1885818882_)
                                                   (let ((_e1886718885_
                                                          (gx#syntax-e
                                                           _g1885818882_)))
                                                     (let ((_hd1886818889_
                                                            (##car _e1886718885_))
                                                           (_tl1886918892_
                                                            (##cdr _e1886718885_)))
                                                       (if (gx#stx-datum?
                                                            _hd1886818889_)
                                                           (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1886818889_)
                               'list:)
                       (if (gx#stx-pair? _tl1886918892_)
                           (let ((_e1887018895_ (gx#syntax-e _tl1886918892_)))
                             (let ((_hd1887118899_ (##car _e1887018895_))
                                   (_tl1887218902_ (##cdr _e1887018895_)))
                               (if (gx#stx-null? _tl1887218902_)
                                   ((lambda (_L18905_)
                                      (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons _L18841_
                                                        (cons _L18813_
                                                              (cons _L18783_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (_generate-list-vector18362_
                                                         _tgt18747_
                                                         _L18905_
                                                         (gx#datum->syntax
                                                          '#f
                                                          'struct->list)
                                                         '1
                                                         _K18749_
                                                         _E18750_)
                                                        (cons _E18750_ '())))))
                                    _hd1887118899_)
                                   (_g1885718878_ _g1885818882_))))
                           (_g1885718878_ _g1885818882_))
                       (_g1885718878_ _g1885818882_))
                   (_g1885718878_ _g1885818882_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1885718878_
                                                    _g1885818882_)))))
                                        (let ((_g1885518996_
                                               (lambda (_g1885818925_)
                                                 (if (gx#stx-pair?
                                                      _g1885818925_)
                                                     (let ((_e1886018928_
                                                            (gx#syntax-e
                                                             _g1885818925_)))
                                                       (let ((_hd1886118932_
                                                              (##car _e1886018928_))
                                                             (_tl1886218935_
                                                              (##cdr _e1886018928_)))
                                                         (if (gx#stx-datum?
                                                              _hd1886118932_)
                                                             (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _hd1886118932_)
                                 'simple:)
                         (if (gx#stx-pair? _tl1886218935_)
                             (let ((_e1886318938_
                                    (gx#syntax-e _tl1886218935_)))
                               (let ((_hd1886418942_ (##car _e1886318938_))
                                     (_tl1886518945_ (##cdr _e1886318938_)))
                                 (if (gx#stx-null? _tl1886518945_)
                                     ((lambda (_L18948_)
                                        (let ((_K18961_
                                               (_generate-simple-vector18361_
                                                _tgt18747_
                                                _L18948_
                                                '1
                                                _K18749_
                                                _E18750_)))
                                          (if (if _rtd18752_
                                                  (fx<= (gx#stx-length
                                                         _L18948_)
                                                        _fields18762_)
                                                  '#f)
                                              (cons (gx#datum->syntax '#f 'if)
                                                    (cons (cons _L18841_
                                                                (cons _L18813_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L18783_ '())))
                  (cons _K18961_ (cons _E18750_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g1896418972_
                                                     (lambda (_g1896518968_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1896518968_))))
                                                (let ((_g1896318992_
                                                       (lambda (_g1896518976_)
                                                         ((lambda (_L18979_)
                                                            (let ()
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'if)
                            (cons (cons (gx#datum->syntax '#f 'and)
                                        (cons (cons _L18841_
                                                    (cons _L18813_
                                                          (cons _L18783_ '())))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##fx<)
                                                          (cons _L18979_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     '##vector-length)
                                    (cons _L18783_ '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons _K18961_ (cons _E18750_ '()))))))
                  _g1896518976_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1896318992_
                                                   (gx#stx-length
                                                    _L18948_)))))))
                                      _hd1886418942_)
                                     (_g1885618921_ _g1885818925_))))
                             (_g1885618921_ _g1885818925_))
                         (_g1885618921_ _g1885818925_))
                     (_g1885618921_ _g1885818925_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1885618921_
                                                      _g1885818925_)))))
                                          (_g1885518996_ _body18748_)))))))
                              _g1882718838_))))
                      (_g1882519000_
                       (if _final?18765_
                           (gx#datum->syntax '#f 'direct-struct-instance?)
                           (gx#datum->syntax '#f 'struct-instance?)))))))
              _g1879918810_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1879719004_
                                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                                                _info18745_))))))
                                      _g1876918780_))))
                              (_g1876719008_ _tgt18747_))))))))
                 (_generate-class18364_
                  (lambda (_info18366_
                           _tgt18368_
                           _body18369_
                           _K18370_
                           _E18371_)
                    (let ((_rtd18373_
                           (if (|gerbil/core::<MOP>::<MOP:2>[1]#extended-class-info?|
                                _info18366_)
                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor|
                                _info18366_)
                               '#f)))
                      (let ((_known-slot?18375_ #!void))
                        (letrec ((_rtd-known-slot?18377_
                                  (lambda (_rtd18726_ _slot18728_)
                                    (if _rtd18726_
                                        (let ((_$e18730_
                                               (memq _slot18728_
                                                     (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-slots|
                                                      _rtd18726_))))
                                          (if _$e18730_
                                              _$e18730_
                                              (ormap (lambda (_g1873318735_)
                                                       (_rtd-known-slot?18377_
                                                        _g1873318735_
                                                        _slot18728_))
                                                     (map |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor-e|
                                                          (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-super|
                                                           _rtd18726_)))))
                                        '#f)))
                                 (_recur18378_
                                  (lambda (_klass18512_ _rest18514_)
                                    (let ((_g1851718533_
                                           (lambda (_g1851818529_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1851818529_))))
                                      (let ((_g1851618544_
                                             (lambda (_g1851818537_)
                                               ((lambda () _K18370_)))))
                                        (let ((_g1851518722_
                                               (lambda (_g1851818548_)
                                                 (if (gx#stx-pair?
                                                      _g1851818548_)
                                                     (let ((_e1852218551_
                                                            (gx#syntax-e
                                                             _g1851818548_)))
                                                       (let ((_hd1852318555_
                                                              (##car _e1852218551_))
                                                             (_tl1852418558_
                                                              (##cdr _e1852218551_)))
                                                         (if (gx#stx-pair?
                                                              _tl1852418558_)
                                                             (let ((_e1852518561_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1852418558_)))
                       (let ((_hd1852618565_ (##car _e1852518561_))
                             (_tl1852718568_ (##cdr _e1852518561_)))
                         ((lambda (_L18571_ _L18573_ _L18574_)
                            (let ((_g1859018598_
                                   (lambda (_g1859118594_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1859118594_))))
                              (let ((_g1858918718_
                                     (lambda (_g1859118602_)
                                       ((lambda (_L18605_)
                                          (let ()
                                            (let ((_g1861718625_
                                                   (lambda (_g1861818621_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1861818621_))))
                                              (let ((_g1861618714_
                                                     (lambda (_g1861818629_)
                                                       ((lambda (_L18632_)
                                                          (let ()
                                                            (let ((_g1864518653_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g1864618649_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1864618649_))))
                      (let ((_g1864418710_
                             (lambda (_g1864618657_)
                               ((lambda (_L18660_)
                                  (let ()
                                    (let ((_g1867318681_
                                           (lambda (_g1867418677_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1867418677_))))
                                      (let ((_g1867218706_
                                             (lambda (_g1867418685_)
                                               ((lambda (_L18688_)
                                                  (let ()
                                                    (let ((_K18701_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons (cons (cons _L18688_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##vector-ref)
                                                       (cons _L18605_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'fx1+)
                                 (cons _L18660_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons (_generate118358_
                                      _L18688_
                                      _L18573_
                                      (_recur18378_ _klass18512_ _L18571_)
                                      _E18371_)
                                     '())))))
              (let ()
                (if (_known-slot?18375_ _L18574_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _L18660_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'class-slot-offset)
                                                        (cons _L18632_
                                                              (cons _L18574_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons _K18701_ '())))
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _L18660_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'class-slot-offset)
                                                        (cons _L18632_
                                                              (cons _L18574_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons (cons (gx#datum->syntax '#f 'if)
                                            (cons _L18660_
                                                  (cons _K18701_
                                                        (cons _E18371_ '()))))
                                      '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1867418685_))))
                                        (_g1867218706_ (gx#genident 'e))))))
                                _g1864618657_))))
                        (_g1864418710_ (gx#genident 'slot))))))
                _g1861818629_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1861618714_
                                                 _klass18512_)))))
                                        _g1859118602_))))
                                (_g1858918718_ _tgt18368_))))
                          _tl1852718568_
                          _hd1852618565_
                          _hd1852318555_)))
                     (_g1851618544_ _g1851818548_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1851618544_
                                                      _g1851818548_)))))
                                          (_g1851518722_ _rest18514_)))))))
                          (begin
                            (set! _known-slot?18375_
                                  (if _rtd18373_
                                      (lambda (_key18739_)
                                        (let ((_slot18742_
                                               (keyword->symbol
                                                (gx#stx-e _key18739_))))
                                          (_rtd-known-slot?18377_
                                           _rtd18373_
                                           _slot18742_)))
                                      false))
                            (let ((_final?18376_
                                   (if _rtd18373_
                                       (assgetq 'final:
                                                (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-plist|
                                                 _rtd18373_))
                                       '#f)))
                              (let ((_g1838018388_
                                     (lambda (_g1838118384_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1838118384_))))
                                (let ((_g1837918508_
                                       (lambda (_g1838118392_)
                                         ((lambda (_L18395_)
                                            (let ()
                                              (let ((_g1841018418_
                                                     (lambda (_g1841118414_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1841118414_))))
                                                (let ((_g1840918504_
                                                       (lambda (_g1841118422_)
                                                         ((lambda (_L18425_)
                                                            (let ()
                                                              (let ((_g1843818446_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1843918442_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1843918442_))))
                        (let ((_g1843718500_
                               (lambda (_g1843918450_)
                                 ((lambda (_L18453_)
                                    (let ()
                                      (let ((_g1846618474_
                                             (lambda (_g1846718470_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1846718470_))))
                                        (let ((_g1846518496_
                                               (lambda (_g1846718478_)
                                                 ((lambda (_L18481_)
                                                    (let ()
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'if)
                                                              (cons (cons _L18481_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons _L18453_ (cons _L18425_ '())))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (cons _L18395_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'object-type)
                              (cons _L18425_ '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (_recur18378_
                                                     _L18395_
                                                     _body18369_)
                                                    '())))
                                  (cons _E18371_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1846718478_))))
                                          (_g1846518496_
                                           (if _final?18376_
                                               (gx#datum->syntax
                                                '#f
                                                'direct-class-instance?)
                                               (gx#datum->syntax
                                                '#f
                                                'class-instance?)))))))
                                  _g1843918450_))))
                          (_g1843718500_
                           (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                            _info18366_))))))
                  _g1841118422_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1840918504_
                                                   _tgt18368_)))))
                                          _g1838118392_))))
                                  (_g1837918508_
                                   (gx#genident 'class))))))))))))
          (_generate118358_ _tgt18353_ _ptree18354_ _K18355_ _E18356_))))
    (define |gerbil/core::<match>[1]#generate-match*|
      (lambda (_stx17350_ _tgt-lst17352_ _clauses17353_)
        (let ((_parse-body17355_
               (lambda (_hd-len18173_)
                 ((letrec ((_lp18176_
                            (lambda (_rest18179_ _r18181_)
                              (let ((_g1818418196_
                                     (lambda (_g1818518192_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1818518192_))))
                                (let ((_g1818318207_
                                       (lambda (_g1818518200_)
                                         ((lambda () _r18181_)))))
                                  (let ((_g1818218347_
                                         (lambda (_g1818518211_)
                                           (if (gx#stx-pair? _g1818518211_)
                                               (let ((_e1818818214_
                                                      (gx#syntax-e
                                                       _g1818518211_)))
                                                 (let ((_hd1818918218_
                                                        (##car _e1818818214_))
                                                       (_tl1819018221_
                                                        (##cdr _e1818818214_)))
                                                   ((lambda (_L18224_ _L18226_)
                                                      (let ((_g1824318259_
                                                             (lambda (_g1824418255_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1824418255_))))
                                                        (let ((_g1824218270_
                                                               (lambda (_g1824418263_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal match clause"
                             _stx17350_
                             _L18226_))))))
                  (let ((_g1824118311_
                         (lambda (_g1824418274_)
                           (if (gx#stx-pair? _g1824418274_)
                               (let ((_e1825118277_
                                      (gx#syntax-e _g1824418274_)))
                                 (let ((_hd1825218281_ (##car _e1825118277_))
                                       (_tl1825318284_ (##cdr _e1825118277_)))
                                   ((lambda (_L18287_ _L18289_)
                                      (if (if (gx#stx-list? _L18289_)
                                              (if (fx= (gx#stx-length _L18289_)
                                                       _hd-len18173_)
                                                  (if (gx#stx-list? _L18287_)
                                                      (not (gx#stx-null?
                                                            _L18287_))
                                                      '#f)
                                                  '#f)
                                              '#f)
                                          (_lp18176_
                                           _L18224_
                                           (cons (cons (gx#genident 'try-match)
                                                       (cons (gx#stx-map
                                                              (lambda (_g1830118303_)
                                                                (|gerbil/core::<match>[1]#parse-match-pattern|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1830118303_
                         _stx17350_))
                      _L18289_)
                     (cons (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'begin) _L18287_)
                            (let ((_$e18307_ (gx#stx-source _L18226_)))
                              (if _$e18307_
                                  _$e18307_
                                  (gx#stx-source _stx17350_))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r18181_))
                                          (_g1824218270_ _g1824418274_)))
                                    _tl1825318284_
                                    _hd1825218281_)))
                               (_g1824218270_ _g1824418274_)))))
                    (let ((_g1824018343_
                           (lambda (_g1824418315_)
                             (if (gx#stx-pair? _g1824418315_)
                                 (let ((_e1824618318_
                                        (gx#syntax-e _g1824418315_)))
                                   (let ((_hd1824718322_ (##car _e1824618318_))
                                         (_tl1824818325_
                                          (##cdr _e1824618318_)))
                                     (if (gx#identifier? _hd1824718322_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core::<match>[1]#_g30372_|
                                              _hd1824718322_)
                                             ((lambda (_L18328_)
                                                (if (if (gx#stx-list? _L18328_)
                                                        (not (gx#stx-null?
                                                              _L18328_))
                                                        '#f)
                                                    (if (gx#stx-null? _L18224_)
                                                        (cons (cons (gx#genident
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             'else)
                            (cons '#f
                                  (cons (gx#stx-wrap-source
                                         (cons (gx#datum->syntax '#f 'begin)
                                               _L18328_)
                                         (let ((_$e18339_
                                                (gx#stx-source _L18226_)))
                                           (if _$e18339_
                                               _$e18339_
                                               (gx#stx-source _stx17350_))))
                                        '())))
                      _r18181_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; misplaced else"
                 _stx17350_
                 _L18226_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1824118311_
                                                     _g1824418315_)))
                                              _tl1824818325_)
                                             (_g1824118311_ _g1824418315_))
                                         (_g1824118311_ _g1824418315_))))
                                 (_g1824118311_ _g1824418315_)))))
                      (_g1824018343_ _L18226_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1819018221_
                                                    _hd1818918218_)))
                                               (_g1818318207_
                                                _g1818518211_)))))
                                    (_g1818218347_ _rest18179_)))))))
                    _lp18176_)
                  _clauses17353_
                  '()))))
          (let ((_generate117359_
                 (lambda (_clause17361_ _body17363_ _E17364_)
                   ((letrec ((_recur17366_
                              (lambda (_rest17369_ _rest-targets17371_)
                                (let ((_g1737417386_
                                       (lambda (_g1737517382_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1737517382_))))
                                  (let ((_g1737317397_
                                         (lambda (_g1737517390_)
                                           ((lambda () _body17363_)))))
                                    (let ((_g1737217668_
                                           (lambda (_g1737517401_)
                                             (if (gx#stx-pair? _g1737517401_)
                                                 (let ((_e1737817404_
                                                        (gx#syntax-e
                                                         _g1737517401_)))
                                                   (let ((_hd1737917408_
                                                          (##car _e1737817404_))
                                                         (_tl1738017411_
                                                          (##cdr _e1737817404_)))
                                                     ((lambda (_L17414_
                                                               _L17416_)
                                                        (let ((_g1743317445_
                                                               (lambda (_g1743417441_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1743417441_))))
                  (let ((_g1743217664_
                         (lambda (_g1743417449_)
                           (if (gx#stx-pair? _g1743417449_)
                               (let ((_e1743717452_
                                      (gx#syntax-e _g1743417449_)))
                                 (let ((_hd1743817456_ (##car _e1743717452_))
                                       (_tl1743917459_ (##cdr _e1743717452_)))
                                   ((lambda (_L17462_ _L17464_)
                                      (let ((_g1747617484_
                                             (lambda (_g1747717480_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1747717480_))))
                                        (let ((_g1747517660_
                                               (lambda (_g1747717488_)
                                                 ((lambda (_L17491_)
                                                    (let ()
                                                      (let ((_g1750317520_
                                                             (lambda (_g1750417516_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1750417516_))))
                                                        (let ((_g1750217656_
                                                               (lambda (_g1750417524_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#stx-pair/null? _g1750417524_)
                             (if (fx>= (gx#stx-length _g1750417524_) '0)
                                 (let ((_g30370_
                                        (gx#syntax-split-splice
                                         _g1750417524_
                                         '0)))
                                   (begin
                                     (let ((_g30371_ (values-count _g30370_)))
                                       (if (not (fx= _g30371_ 2))
                                           (error "Context expects 2 values"
                                                  _g30371_)))
                                     (let ((_target1750617527_
                                            (values-ref _g30370_ 0))
                                           (_tl1750817530_
                                            (values-ref _g30370_ 1)))
                                       (if (gx#stx-null? _tl1750817530_)
                                           (letrec ((_loop1750917533_
                                                     (lambda (_hd1750717537_
                                                              _var1751317540_)
                                                       (if (gx#stx-pair?
                                                            _hd1750717537_)
                                                           (let ((_e1751017543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1750717537_)))
                     (let ((_lp-hd1751117547_ (##car _e1751017543_))
                           (_lp-tl1751217550_ (##cdr _e1751017543_)))
                       (_loop1750917533_
                        _lp-tl1751217550_
                        (cons _lp-hd1751117547_ _var1751317540_))))
                   (let ((_var1751417553_ (reverse _var1751317540_)))
                     ((lambda (_L17557_)
                        (let ()
                          (let ((_g1757417582_
                                 (lambda (_g1757517578_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1757517578_))))
                            (let ((_g1757317652_
                                   (lambda (_g1757517586_)
                                     ((lambda (_L17589_)
                                        (let ()
                                          (let ((_g1760217610_
                                                 (lambda (_g1760317606_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1760317606_))))
                                            (let ((_g1760117640_
                                                   (lambda (_g1760317614_)
                                                     ((lambda (_L17617_)
                                                        (let ()
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let)
                          (cons (cons (cons _L17491_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons (begin
                                                                '#!void
                                                                (foldr (lambda (_g1763117634_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1763217637_)
                                 (cons _g1763117634_ _g1763217637_))
                               '()
                               _L17557_))
                      (cons _L17589_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons _L17617_ '()))))))
              _g1760317614_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1760117640_
                                               (|gerbil/core::<match>[1]#generate-match1|
                                                _stx17350_
                                                _L17464_
                                                _L17416_
                                                (cons _L17491_
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g1764317646_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1764417649_)
                         (cons _g1764317646_ _g1764417649_))
                       '()
                       _L17557_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _E17364_))))))
                                      _g1757517586_))))
                              (_g1757317652_
                               (_recur17366_ _L17414_ _L17462_))))))
                      _var1751417553_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1750917533_
                                              _target1750617527_
                                              '()))
                                           (_g1750317520_ _g1750417524_)))))
                                 (_g1750317520_ _g1750417524_))
                             (_g1750317520_ _g1750417524_)))))
                  (_g1750217656_
                   (|gerbil/core::<match>[1]#match-pattern-vars| _L17416_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1747717488_))))
                                          (_g1747517660_ (gx#genident 'K)))))
                                    _tl1743917459_
                                    _hd1743817456_)))
                               (_g1743317445_ _g1743417449_)))))
                    (_g1743217664_ _rest-targets17371_))))
              _tl1738017411_
              _hd1737917408_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1737317397_
                                                  _g1737517401_)))))
                                      (_g1737217668_ _rest17369_)))))))
                      _recur17366_)
                    _clause17361_
                    _tgt-lst17352_))))
            (letrec ((_generate-clauses17358_
                      (lambda (_rest17672_ _E17674_)
                        (let ((_g1767817694_
                               (lambda (_g1767917690_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1767917690_))))
                          (let ((_g1767717705_
                                 (lambda (_g1767917698_)
                                   ((lambda () _E17674_)))))
                            (let ((_g1767617881_
                                   (lambda (_g1767917709_)
                                     (if (gx#stx-pair? _g1767917709_)
                                         (let ((_e1768617712_
                                                (gx#syntax-e _g1767917709_)))
                                           (let ((_hd1768717716_
                                                  (##car _e1768617712_))
                                                 (_tl1768817719_
                                                  (##cdr _e1768617712_)))
                                             ((lambda (_L17722_ _L17724_)
                                                (let ((_g1773717756_
                                                       (lambda (_g1773817752_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1773817752_))))
                                                  (let ((_g1773617877_
                                                         (lambda (_g1773817760_)
                                                           (if (gx#stx-pair?
                                                                _g1773817760_)
                                                               (let ((_e1774217763_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1773817760_)))
                         (let ((_hd1774317767_ (##car _e1774217763_))
                               (_tl1774417770_ (##cdr _e1774217763_)))
                           (if (gx#stx-pair? _tl1774417770_)
                               (let ((_e1774517773_
                                      (gx#syntax-e _tl1774417770_)))
                                 (let ((_hd1774617777_ (##car _e1774517773_))
                                       (_tl1774717780_ (##cdr _e1774517773_)))
                                   (if (gx#stx-pair? _tl1774717780_)
                                       (let ((_e1774817783_
                                              (gx#syntax-e _tl1774717780_)))
                                         (let ((_hd1774917787_
                                                (##car _e1774817783_))
                                               (_tl1775017790_
                                                (##cdr _e1774817783_)))
                                           (if (gx#stx-null? _tl1775017790_)
                                               ((lambda (_L17793_
                                                         _L17795_
                                                         _L17796_)
                                                  (let ((_g1781317828_
                                                         (lambda (_g1781417824_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g1781417824_))))
                                                    (let ((_g1781217873_
                                                           (lambda (_g1781417832_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1781417832_)
                         (let ((_e1781717835_ (gx#syntax-e _g1781417832_)))
                           (let ((_hd1781817839_ (##car _e1781717835_))
                                 (_tl1781917842_ (##cdr _e1781717835_)))
                             (if (gx#stx-pair? _tl1781917842_)
                                 (let ((_e1782017845_
                                        (gx#syntax-e _tl1781917842_)))
                                   (let ((_hd1782117849_ (##car _e1782017845_))
                                         (_tl1782217852_
                                          (##cdr _e1782017845_)))
                                     (if (gx#stx-null? _tl1782217852_)
                                         ((lambda (_L17855_ _L17857_)
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L17796_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f 'lambda)
                                          (cons '() (cons _L17857_ '())))
                                    '()))
                        '())
                  (cons _L17855_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd1782117849_
                                          _hd1781817839_)
                                         (_g1781317828_ _g1781417832_))))
                                 (_g1781317828_ _g1781417832_))))
                         (_g1781317828_ _g1781417832_)))))
              (_g1781217873_
               (list (if (gx#stx-e _L17795_)
                         (_generate117359_ _L17795_ _L17793_ _E17674_)
                         _L17793_)
                     (_generate-clauses17358_
                      _L17722_
                      (cons _L17796_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1774917787_
                                                _hd1774617777_
                                                _hd1774317767_)
                                               (_g1773717756_ _g1773817760_))))
                                       (_g1773717756_ _g1773817760_))))
                               (_g1773717756_ _g1773817760_))))
                       (_g1773717756_ _g1773817760_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1773617877_ _L17724_))))
                                              _tl1768817719_
                                              _hd1768717716_)))
                                         (_g1767717705_ _g1767917709_)))))
                              (let ((_g1767517986_
                                     (lambda (_g1767917885_)
                                       (if (gx#stx-pair? _g1767917885_)
                                           (let ((_e1768117888_
                                                  (gx#syntax-e _g1767917885_)))
                                             (let ((_hd1768217892_
                                                    (##car _e1768117888_))
                                                   (_tl1768317895_
                                                    (##cdr _e1768117888_)))
                                               (if (gx#stx-null?
                                                    _tl1768317895_)
                                                   ((lambda (_L17898_)
                                                      (let ((_g1790917927_
                                                             (lambda (_g1791017923_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1791017923_))))
                                                        (let ((_g1790817982_
                                                               (lambda (_g1791017931_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#stx-pair? _g1791017931_)
                             (let ((_e1791317934_ (gx#syntax-e _g1791017931_)))
                               (let ((_hd1791417938_ (##car _e1791317934_))
                                     (_tl1791517941_ (##cdr _e1791317934_)))
                                 (if (gx#stx-pair? _tl1791517941_)
                                     (let ((_e1791617944_
                                            (gx#syntax-e _tl1791517941_)))
                                       (let ((_hd1791717948_
                                              (##car _e1791617944_))
                                             (_tl1791817951_
                                              (##cdr _e1791617944_)))
                                         (if (gx#stx-pair? _tl1791817951_)
                                             (let ((_e1791917954_
                                                    (gx#syntax-e
                                                     _tl1791817951_)))
                                               (let ((_hd1792017958_
                                                      (##car _e1791917954_))
                                                     (_tl1792117961_
                                                      (##cdr _e1791917954_)))
                                                 (if (gx#stx-null?
                                                      _tl1792117961_)
                                                     ((lambda (_L17964_
                                                               _L17966_)
                                                        (if (gx#stx-e _L17966_)
                                                            (_generate117359_
                                                             _L17966_
                                                             _L17964_
                                                             _E17674_)
                                                            _L17964_))
                                                      _hd1792017958_
                                                      _hd1791717948_)
                                                     (_g1790917927_
                                                      _g1791017931_))))
                                             (_g1790917927_ _g1791017931_))))
                                     (_g1790917927_ _g1791017931_))))
                             (_g1790917927_ _g1791017931_)))))
                  (_g1790817982_ _L17898_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1768217892_)
                                                   (_g1767617881_
                                                    _g1767917885_))))
                                           (_g1767617881_ _g1767917885_)))))
                                (_g1767517986_ _rest17672_))))))))
              (let ((_generate-body17357_
                     (lambda (_body17990_)
                       (let ((_g1799318001_
                              (lambda (_g1799417997_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1799417997_))))
                         (let ((_g1799218169_
                                (lambda (_g1799418005_)
                                  ((lambda (_L18008_)
                                     (let ()
                                       (let ((_g1802018037_
                                              (lambda (_g1802118033_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g1802118033_))))
                                         (let ((_g1801918165_
                                                (lambda (_g1802118041_)
                                                  (if (gx#stx-pair/null?
                                                       _g1802118041_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1802118041_)
                        '0)
                  (let ((_g30368_ (gx#syntax-split-splice _g1802118041_ '0)))
                    (begin
                      (let ((_g30369_ (values-count _g30368_)))
                        (if (not (fx= _g30369_ 2))
                            (error "Context expects 2 values" _g30369_)))
                      (let ((_target1802318044_ (values-ref _g30368_ 0))
                            (_tl1802518047_ (values-ref _g30368_ 1)))
                        (if (gx#stx-null? _tl1802518047_)
                            (letrec ((_loop1802618050_
                                      (lambda (_hd1802418054_
                                               _target1803018057_)
                                        (if (gx#stx-pair? _hd1802418054_)
                                            (let ((_e1802718060_
                                                   (gx#syntax-e
                                                    _hd1802418054_)))
                                              (let ((_lp-hd1802818064_
                                                     (##car _e1802718060_))
                                                    (_lp-tl1802918067_
                                                     (##cdr _e1802718060_)))
                                                (_loop1802618050_
                                                 _lp-tl1802918067_
                                                 (cons _lp-hd1802818064_
                                                       _target1803018057_))))
                                            (let ((_target1803118070_
                                                   (reverse _target1803018057_)))
                                              ((lambda (_L18074_)
                                                 (let ()
                                                   (let ((_g1809118099_
                                                          (lambda (_g1809218095_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1809218095_))))
                                                     (let ((_g1809018153_
                                                            (lambda (_g1809218103_)
                                                              ((lambda (_L18106_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((_g1811918127_
                                  (lambda (_g1812018123_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1812018123_))))
                             (let ((_g1811818149_
                                    (lambda (_g1812018131_)
                                      ((lambda (_L18134_)
                                         (let ()
                                           (let ()
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _L18008_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L18106_ '()))
                       '())
                 (cons _L18134_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _g1812018131_))))
                               (_g1811818149_
                                (_generate-clauses17358_
                                 _body17990_
                                 (cons _L18008_ '())))))))
                       _g1809218103_))))
               (_g1809018153_
                (gx#stx-wrap-source
                 (cons (gx#datum->syntax '#f 'lambda)
                       (cons '()
                             (cons (cons (gx#datum->syntax '#f 'error)
                                         (cons '"No clause matching"
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g1815618159_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1815718162_)
                  (cons _g1815618159_ _g1815718162_))
                '()
                _L18074_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '())))
                 (gx#stx-source _stx17350_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _target1803118070_))))))
                              (_loop1802618050_ _target1802318044_ '()))
                            (_g1802018037_ _g1802118041_)))))
                  (_g1802018037_ _g1802118041_))
              (_g1802018037_ _g1802118041_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1801918165_ _tgt-lst17352_)))))
                                   _g1799418005_))))
                           (_g1799218169_ (gx#genident 'E)))))))
                (_generate-body17357_
                 (_parse-body17355_ (gx#stx-length _tgt-lst17352_)))))))))
    (define |gerbil/core::<match>[1]#generate-match|
      (lambda (_stx17252_ _tgt17254_ _clauses17255_)
        (let ((_reclause17257_
               (lambda (_clause17260_)
                 (let ((_g1726517280_
                        (lambda (_g1726617276_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1726617276_))))
                   (let ((_g1726417291_
                          (lambda (_g1726617284_)
                            ((lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal match clause"
                                _stx17252_
                                _clause17260_))))))
                     (let ((_g1726317325_
                            (lambda (_g1726617295_)
                              (if (gx#stx-pair? _g1726617295_)
                                  (let ((_e1727217298_
                                         (gx#syntax-e _g1726617295_)))
                                    (let ((_hd1727317302_
                                           (##car _e1727217298_))
                                          (_tl1727417305_
                                           (##cdr _e1727217298_)))
                                      ((lambda (_L17308_ _L17310_)
                                         (gx#stx-wrap-source
                                          (cons (cons _L17310_ '()) _L17308_)
                                          (gx#stx-source
                                           (gx#datum->syntax '#f 'clause))))
                                       _tl1727417305_
                                       _hd1727317302_)))
                                  (_g1726417291_ _g1726617295_)))))
                       (let ((_g1726217346_
                              (lambda (_g1726617329_)
                                (if (gx#stx-pair? _g1726617329_)
                                    (let ((_e1726717332_
                                           (gx#syntax-e _g1726617329_)))
                                      (let ((_hd1726817336_
                                             (##car _e1726717332_))
                                            (_tl1726917339_
                                             (##cdr _e1726717332_)))
                                        (if (gx#identifier? _hd1726817336_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<match>[1]#_g30373_|
                                                 _hd1726817336_)
                                                ((lambda () _clause17260_))
                                                (_g1726317325_ _g1726617329_))
                                            (_g1726317325_ _g1726617329_))))
                                    (_g1726317325_ _g1726617329_)))))
                         (_g1726217346_ _clause17260_))))))))
          (|gerbil/core::<match>[1]#generate-match*|
           _stx17252_
           (cons _tgt17254_ '())
           (gx#stx-map _reclause17257_ _clauses17255_)))))
    (define |gerbil/core::<match>[:0:]#match|
      (lambda (_stx24459_)
        (let ((_g2446424493_
               (lambda (_g2446524489_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2446524489_))))
          (let ((_g2446324601_
                 (lambda (_g2446524497_)
                   (if (gx#stx-pair? _g2446524497_)
                       (let ((_e2448224500_ (gx#syntax-e _g2446524497_)))
                         (let ((_hd2448324504_ (##car _e2448224500_))
                               (_tl2448424507_ (##cdr _e2448224500_)))
                           (if (gx#stx-pair? _tl2448424507_)
                               (let ((_e2448524510_
                                      (gx#syntax-e _tl2448424507_)))
                                 (let ((_hd2448624514_ (##car _e2448524510_))
                                       (_tl2448724517_ (##cdr _e2448524510_)))
                                   ((lambda (_L24520_ _L24522_)
                                      (if (gx#stx-list? _L24520_)
                                          (let ((_g2453624544_
                                                 (lambda (_g2453724540_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2453724540_))))
                                            (let ((_g2453524597_
                                                   (lambda (_g2453724548_)
                                                     ((lambda (_L24551_)
                                                        (let ()
                                                          (let ((_g2456324571_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2456424567_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2456424567_))))
                    (let ((_g2456224593_
                           (lambda (_g2456424575_)
                             ((lambda (_L24578_)
                                (let ()
                                  (let ()
                                    (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (cons _L24551_
                                                            (cons _L24522_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _L24578_ '()))))))
                              _g2456424575_))))
                      (_g2456224593_
                       (|gerbil/core::<match>[1]#generate-match|
                        _stx24459_
                        _L24551_
                        _L24520_))))))
              _g2453724548_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2453524597_
                                               (gx#genident _L24522_))))
                                          (_g2446424493_ _g2446524497_)))
                                    _tl2448724517_
                                    _hd2448624514_)))
                               (_g2446424493_ _g2446524497_))))
                       (_g2446424493_ _g2446524497_)))))
            (let ((_g2446224706_
                   (lambda (_g2446524605_)
                     (if (gx#stx-pair? _g2446524605_)
                         (let ((_e2447424608_ (gx#syntax-e _g2446524605_)))
                           (let ((_hd2447524612_ (##car _e2447424608_))
                                 (_tl2447624615_ (##cdr _e2447424608_)))
                             (if (gx#stx-pair? _tl2447624615_)
                                 (let ((_e2447724618_
                                        (gx#syntax-e _tl2447624615_)))
                                   (let ((_hd2447824622_ (##car _e2447724618_))
                                         (_tl2447924625_
                                          (##cdr _e2447724618_)))
                                     (if (gx#identifier? _hd2447824622_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core::<match>[1]#_g30374_|
                                              _hd2447824622_)
                                             ((lambda (_L24628_)
                                                (if (gx#stx-list? _L24628_)
                                                    (let ((_g2464124649_
                                                           (lambda (_g2464224645_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g2464224645_))))
                                                      (let ((_g2464024702_
                                                             (lambda (_g2464224653_)
                                                               ((lambda (_L24656_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let ((_g2466824676_
                                   (lambda (_g2466924672_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2466924672_))))
                              (let ((_g2466724698_
                                     (lambda (_g2466924680_)
                                       ((lambda (_L24683_)
                                          (let ()
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons _L24656_
                                                          (cons _L24683_
                                                                '()))))))
                                        _g2466924680_))))
                                (_g2466724698_
                                 (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'match)
                                        (cons _L24656_ _L24628_))
                                  (gx#stx-source _stx24459_)))))))
                        _g2464224653_))))
                (_g2464024702_ (gx#genident 'args))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2446324601_
                                                     _g2446524605_)))
                                              _tl2447924625_)
                                             (_g2446324601_ _g2446524605_))
                                         (_g2446324601_ _g2446524605_))))
                                 (_g2446324601_ _g2446524605_))))
                         (_g2446324601_ _g2446524605_)))))
              (let ((_g2446124811_
                     (lambda (_g2446524710_)
                       (if (gx#stx-pair? _g2446524710_)
                           (let ((_e2446724713_ (gx#syntax-e _g2446524710_)))
                             (let ((_hd2446824717_ (##car _e2446724713_))
                                   (_tl2446924720_ (##cdr _e2446724713_)))
                               (if (gx#stx-pair? _tl2446924720_)
                                   (let ((_e2447024723_
                                          (gx#syntax-e _tl2446924720_)))
                                     (let ((_hd2447124727_
                                            (##car _e2447024723_))
                                           (_tl2447224730_
                                            (##cdr _e2447024723_)))
                                       (if (gx#identifier? _hd2447124727_)
                                           (if (gx#free-identifier=?
                                                |gerbil/core::<match>[1]#_g30375_|
                                                _hd2447124727_)
                                               ((lambda (_L24733_)
                                                  (if (gx#stx-list? _L24733_)
                                                      (let ((_g2474624754_
                                                             (lambda (_g2474724750_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2474724750_))))
                                                        (let ((_g2474524807_
                                                               (lambda (_g2474724758_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L24761_)
                            (let ()
                              (let ((_g2477324781_
                                     (lambda (_g2477424777_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g2477424777_))))
                                (let ((_g2477224803_
                                       (lambda (_g2477424785_)
                                         ((lambda (_L24788_)
                                            (let ()
                                              (let ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L24761_ '())
                                                            (cons _L24788_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g2477424785_))))
                                  (_g2477224803_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _L24761_ _L24733_))
                                    (gx#stx-source _stx24459_)))))))
                          _g2474724758_))))
                  (_g2474524807_ (gx#genident 'e))))
              (_g2446224706_ _g2446524710_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl2447224730_)
                                               (_g2446224706_ _g2446524710_))
                                           (_g2446224706_ _g2446524710_))))
                                   (_g2446224706_ _g2446524710_))))
                           (_g2446224706_ _g2446524710_)))))
                (_g2446124811_ _stx24459_)))))))
    (define |gerbil/core::<match>[:0:]#match*|
      (lambda (_stx24815_)
        (let ((_g2481824842_
               (lambda (_g2481924838_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2481924838_))))
          (let ((_g2481725054_
                 (lambda (_g2481924846_)
                   (if (gx#stx-pair? _g2481924846_)
                       (let ((_e2482224849_ (gx#syntax-e _g2481924846_)))
                         (let ((_hd2482324853_ (##car _e2482224849_))
                               (_tl2482424856_ (##cdr _e2482224849_)))
                           (if (gx#stx-pair? _tl2482424856_)
                               (let ((_e2482524859_
                                      (gx#syntax-e _tl2482424856_)))
                                 (let ((_hd2482624863_ (##car _e2482524859_))
                                       (_tl2482724866_ (##cdr _e2482524859_)))
                                   (if (gx#stx-pair/null? _hd2482624863_)
                                       (if (fx>= (gx#stx-length _hd2482624863_)
                                                 '0)
                                           (let ((_g30376_
                                                  (gx#syntax-split-splice
                                                   _hd2482624863_
                                                   '0)))
                                             (begin
                                               (let ((_g30377_
                                                      (values-count _g30376_)))
                                                 (if (not (fx= _g30377_ 2))
                                                     (error "Context expects 2 values"
                                                            _g30377_)))
                                               (let ((_target2482824869_
                                                      (values-ref _g30376_ 0))
                                                     (_tl2483024872_
                                                      (values-ref _g30376_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl2483024872_)
                                                     (letrec ((_loop2483124875_
                                                               (lambda (_hd2482924879_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _e2483524882_)
                         (if (gx#stx-pair? _hd2482924879_)
                             (let ((_e2483224885_
                                    (gx#syntax-e _hd2482924879_)))
                               (let ((_lp-hd2483324889_ (##car _e2483224885_))
                                     (_lp-tl2483424892_ (##cdr _e2483224885_)))
                                 (_loop2483124875_
                                  _lp-tl2483424892_
                                  (cons _lp-hd2483324889_ _e2483524882_))))
                             (let ((_e2483624895_ (reverse _e2483524882_)))
                               ((lambda (_L24899_ _L24901_)
                                  (if (gx#stx-list? _L24899_)
                                      (let ((_g2491924936_
                                             (lambda (_g2492024932_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2492024932_))))
                                        (let ((_g2491825042_
                                               (lambda (_g2492024940_)
                                                 (if (gx#stx-pair/null?
                                                      _g2492024940_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2492024940_)
                                                               '0)
                                                         (let ((_g30378_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2492024940_
                         '0)))
                   (begin
                     (let ((_g30379_ (values-count _g30378_)))
                       (if (not (fx= _g30379_ 2))
                           (error "Context expects 2 values" _g30379_)))
                     (let ((_target2492224943_ (values-ref _g30378_ 0))
                           (_tl2492424946_ (values-ref _g30378_ 1)))
                       (if (gx#stx-null? _tl2492424946_)
                           (letrec ((_loop2492524949_
                                     (lambda (_hd2492324953_ _$e2492924956_)
                                       (if (gx#stx-pair? _hd2492324953_)
                                           (let ((_e2492624959_
                                                  (gx#syntax-e
                                                   _hd2492324953_)))
                                             (let ((_lp-hd2492724963_
                                                    (##car _e2492624959_))
                                                   (_lp-tl2492824966_
                                                    (##cdr _e2492624959_)))
                                               (_loop2492524949_
                                                _lp-tl2492824966_
                                                (cons _lp-hd2492724963_
                                                      _$e2492924956_))))
                                           (let ((_$e2493024969_
                                                  (reverse _$e2492924956_)))
                                             ((lambda (_L24973_)
                                                (let ()
                                                  (let ((_g2498924997_
                                                         (lambda (_g2499024993_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2499024993_))))
                                                    (let ((_g2498825030_
                                                           (lambda (_g2499025001_)
                                                             ((lambda (_L25004_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (begin
                                          (gx#syntax-check-splice-targets
                                           _L24901_
                                           _L24973_)
                                          (foldr (lambda (_g2501825022_
                                                          _g2501925025_
                                                          _g2502025027_)
                                                   (cons (cons _g2501925025_
                                                               (cons _g2501825022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _g2502025027_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L24901_
                                                 _L24973_))
                                        (cons _L25004_ '()))))))
                      _g2499025001_))))
              (_g2498825030_
               (|gerbil/core::<match>[1]#generate-match*|
                _stx24815_
                (begin
                  '#!void
                  (foldr (lambda (_g2503325036_ _g2503425039_)
                           (cons _g2503325036_ _g2503425039_))
                         '()
                         _L24973_))
                _L24899_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _$e2493024969_))))))
                             (_loop2492524949_ _target2492224943_ '()))
                           (_g2491924936_ _g2492024940_)))))
                 (_g2491924936_ _g2492024940_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2491924936_
                                                      _g2492024940_)))))
                                          (_g2491825042_
                                           (gx#gentemps
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g2504525048_
                                                              _g2504625051_)
                                                       (cons _g2504525048_
                                                             _g2504625051_))
                                                     '()
                                                     _L24901_))))))
                                      (_g2481824842_ _g2481924846_)))
                                _tl2482724866_
                                _e2483624895_))))))
               (_loop2483124875_ _target2482824869_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2481824842_
                                                      _g2481924846_)))))
                                           (_g2481824842_ _g2481924846_))
                                       (_g2481824842_ _g2481924846_))))
                               (_g2481824842_ _g2481924846_))))
                       (_g2481824842_ _g2481924846_)))))
            (_g2481725054_ _stx24815_)))))
    (define |gerbil/core::<match>[:0:]#with|
      (lambda (_$stx25060_)
        (let ((_g2506625149_
               (lambda (_g2506725145_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2506725145_))))
          (let ((_g2506525310_
                 (lambda (_g2506725153_)
                   (if (gx#stx-pair? _g2506725153_)
                       (let ((_e2511225156_ (gx#syntax-e _g2506725153_)))
                         (let ((_hd2511325160_ (##car _e2511225156_))
                               (_tl2511425163_ (##cdr _e2511225156_)))
                           (if (gx#stx-pair? _tl2511425163_)
                               (let ((_e2511525166_
                                      (gx#syntax-e _tl2511425163_)))
                                 (let ((_hd2511625170_ (##car _e2511525166_))
                                       (_tl2511725173_ (##cdr _e2511525166_)))
                                   (if (gx#stx-pair/null? _hd2511625170_)
                                       (if (fx>= (gx#stx-length _hd2511625170_)
                                                 '0)
                                           (let ((_g30380_
                                                  (gx#syntax-split-splice
                                                   _hd2511625170_
                                                   '0)))
                                             (begin
                                               (let ((_g30381_
                                                      (values-count _g30380_)))
                                                 (if (not (fx= _g30381_ 2))
                                                     (error "Context expects 2 values"
                                                            _g30381_)))
                                               (let ((_target2511825176_
                                                      (values-ref _g30380_ 0))
                                                     (_tl2512025179_
                                                      (values-ref _g30380_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl2512025179_)
                                                     (letrec ((_loop2512125182_
                                                               (lambda (_hd2511925186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr2512525189_
                                _hd2512625191_)
                         (if (gx#stx-pair? _hd2511925186_)
                             (let ((_e2512225194_
                                    (gx#syntax-e _hd2511925186_)))
                               (let ((_lp-hd2512325198_ (##car _e2512225194_))
                                     (_lp-tl2512425201_ (##cdr _e2512225194_)))
                                 (if (gx#stx-pair? _lp-hd2512325198_)
                                     (let ((_e2512925204_
                                            (gx#syntax-e _lp-hd2512325198_)))
                                       (let ((_hd2513025208_
                                              (##car _e2512925204_))
                                             (_tl2513125211_
                                              (##cdr _e2512925204_)))
                                         (if (gx#stx-pair? _tl2513125211_)
                                             (let ((_e2513225214_
                                                    (gx#syntax-e
                                                     _tl2513125211_)))
                                               (let ((_hd2513325218_
                                                      (##car _e2513225214_))
                                                     (_tl2513425221_
                                                      (##cdr _e2513225214_)))
                                                 (if (gx#stx-null?
                                                      _tl2513425221_)
                                                     (_loop2512125182_
                                                      _lp-tl2512425201_
                                                      (cons _hd2513325218_
                                                            _expr2512525189_)
                                                      (cons _hd2513025208_
                                                            _hd2512625191_))
                                                     (_g2506625149_
                                                      _g2506725153_))))
                                             (_g2506625149_ _g2506725153_))))
                                     (_g2506625149_ _g2506725153_))))
                             (let ((_expr2512725224_
                                    (reverse _expr2512525189_))
                                   (_hd2512825227_ (reverse _hd2512625191_)))
                               (if (gx#stx-pair/null? _tl2511725173_)
                                   (if (fx>= (gx#stx-length _tl2511725173_) '0)
                                       (let ((_g30382_
                                              (gx#syntax-split-splice
                                               _tl2511725173_
                                               '0)))
                                         (begin
                                           (let ((_g30383_
                                                  (values-count _g30382_)))
                                             (if (not (fx= _g30383_ 2))
                                                 (error "Context expects 2 values"
                                                        _g30383_)))
                                           (let ((_target2513525230_
                                                  (values-ref _g30382_ 0))
                                                 (_tl2513725233_
                                                  (values-ref _g30382_ 1)))
                                             (if (gx#stx-null? _tl2513725233_)
                                                 (letrec ((_loop2513825236_
                                                           (lambda (_hd2513625240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _body2514225243_)
                     (if (gx#stx-pair? _hd2513625240_)
                         (let ((_e2513925246_ (gx#syntax-e _hd2513625240_)))
                           (let ((_lp-hd2514025250_ (##car _e2513925246_))
                                 (_lp-tl2514125253_ (##cdr _e2513925246_)))
                             (_loop2513825236_
                              _lp-tl2514125253_
                              (cons _lp-hd2514025250_ _body2514225243_))))
                         (let ((_body2514325256_ (reverse _body2514225243_)))
                           ((lambda (_L25260_ _L25262_ _L25263_)
                              (cons (gx#datum->syntax '#f 'match*)
                                    (cons (begin
                                            '#!void
                                            (foldr (lambda (_g2528525292_
                                                            _g2528625295_)
                                                     (cons _g2528525292_
                                                           _g2528625295_))
                                                   '()
                                                   _L25262_))
                                          (cons (cons (begin
                                                        '#!void
                                                        (foldr (lambda (_g2528725298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2528825301_)
                         (cons _g2528725298_ _g2528825301_))
                       '()
                       _L25263_))
              (begin
                '#!void
                (foldr (lambda (_g2528925304_ _g2529025307_)
                         (cons _g2528925304_ _g2529025307_))
                       '()
                       _L25260_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                            _body2514325256_
                            _expr2512725224_
                            _hd2512825227_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop2513825236_
                                                    _target2513525230_
                                                    '()))
                                                 (_g2506625149_
                                                  _g2506725153_)))))
                                       (_g2506625149_ _g2506725153_))
                                   (_g2506625149_ _g2506725153_)))))))
               (_loop2512125182_ _target2511825176_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2506625149_
                                                      _g2506725153_)))))
                                           (_g2506625149_ _g2506725153_))
                                       (_g2506625149_ _g2506725153_))))
                               (_g2506625149_ _g2506725153_))))
                       (_g2506625149_ _g2506725153_)))))
            (let ((_g2506425422_
                   (lambda (_g2506725314_)
                     (if (gx#stx-pair? _g2506725314_)
                         (let ((_e2508825317_ (gx#syntax-e _g2506725314_)))
                           (let ((_hd2508925321_ (##car _e2508825317_))
                                 (_tl2509025324_ (##cdr _e2508825317_)))
                             (if (gx#stx-pair? _tl2509025324_)
                                 (let ((_e2509125327_
                                        (gx#syntax-e _tl2509025324_)))
                                   (let ((_hd2509225331_ (##car _e2509125327_))
                                         (_tl2509325334_
                                          (##cdr _e2509125327_)))
                                     (if (gx#stx-pair? _hd2509225331_)
                                         (let ((_e2509425337_
                                                (gx#syntax-e _hd2509225331_)))
                                           (let ((_hd2509525341_
                                                  (##car _e2509425337_))
                                                 (_tl2509625344_
                                                  (##cdr _e2509425337_)))
                                             (if (gx#stx-pair? _tl2509625344_)
                                                 (let ((_e2509725347_
                                                        (gx#syntax-e
                                                         _tl2509625344_)))
                                                   (let ((_hd2509825351_
                                                          (##car _e2509725347_))
                                                         (_tl2509925354_
                                                          (##cdr _e2509725347_)))
                                                     (if (gx#stx-null?
                                                          _tl2509925354_)
                                                         (if (gx#stx-pair/null?
                                                              _tl2509325334_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _tl2509325334_)
                               '0)
                         (let ((_g30384_
                                (gx#syntax-split-splice _tl2509325334_ '0)))
                           (begin
                             (let ((_g30385_ (values-count _g30384_)))
                               (if (not (fx= _g30385_ 2))
                                   (error "Context expects 2 values"
                                          _g30385_)))
                             (let ((_target2510025357_ (values-ref _g30384_ 0))
                                   (_tl2510225360_ (values-ref _g30384_ 1)))
                               (if (gx#stx-null? _tl2510225360_)
                                   (letrec ((_loop2510325363_
                                             (lambda (_hd2510125367_
                                                      _body2510725370_)
                                               (if (gx#stx-pair?
                                                    _hd2510125367_)
                                                   (let ((_e2510425373_
                                                          (gx#syntax-e
                                                           _hd2510125367_)))
                                                     (let ((_lp-hd2510525377_
                                                            (##car _e2510425373_))
                                                           (_lp-tl2510625380_
                                                            (##cdr _e2510425373_)))
                                                       (_loop2510325363_
                                                        _lp-tl2510625380_
                                                        (cons _lp-hd2510525377_
                                                              _body2510725370_))))
                                                   (let ((_body2510825383_
                                                          (reverse _body2510725370_)))
                                                     ((lambda (_L25387_
                                                               _L25389_
                                                               _L25390_
                                                               _L25391_)
                                                        (if (|gerbil/core::<match>[1]#match-pattern?|
                                                             _L25390_)
                                                            (cons _L25391_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons _L25390_ (cons _L25389_ '())) '())
                                (begin
                                  '#!void
                                  (foldr (lambda (_g2541325416_ _g2541425419_)
                                           (cons _g2541325416_ _g2541425419_))
                                         '()
                                         _L25387_))))
                    (_g2506525310_ _g2506725314_)))
              _body2510825383_
              _hd2509825351_
              _hd2509525341_
              _hd2508925321_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop2510325363_ _target2510025357_ '()))
                                   (_g2506525310_ _g2506725314_)))))
                         (_g2506525310_ _g2506725314_))
                     (_g2506525310_ _g2506725314_))
                 (_g2506525310_ _g2506725314_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2506525310_
                                                  _g2506725314_))))
                                         (_g2506525310_ _g2506725314_))))
                                 (_g2506525310_ _g2506725314_))))
                         (_g2506525310_ _g2506725314_)))))
              (let ((_g2506325504_
                     (lambda (_g2506725426_)
                       (if (gx#stx-pair? _g2506725426_)
                           (let ((_e2506925429_ (gx#syntax-e _g2506725426_)))
                             (let ((_hd2507025433_ (##car _e2506925429_))
                                   (_tl2507125436_ (##cdr _e2506925429_)))
                               (if (gx#stx-pair? _tl2507125436_)
                                   (let ((_e2507225439_
                                          (gx#syntax-e _tl2507125436_)))
                                     (let ((_hd2507325443_
                                            (##car _e2507225439_))
                                           (_tl2507425446_
                                            (##cdr _e2507225439_)))
                                       (if (gx#stx-null? _hd2507325443_)
                                           (if (gx#stx-pair/null?
                                                _tl2507425446_)
                                               (if (fx>= (gx#stx-length
                                                          _tl2507425446_)
                                                         '0)
                                                   (let ((_g30386_
                                                          (gx#syntax-split-splice
                                                           _tl2507425446_
                                                           '0)))
                                                     (begin
                                                       (let ((_g30387_
                                                              (values-count
                                                               _g30386_)))
                                                         (if (not (fx= _g30387_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g30387_)))
               (let ((_target2507525449_ (values-ref _g30386_ 0))
                     (_tl2507725452_ (values-ref _g30386_ 1)))
                 (if (gx#stx-null? _tl2507725452_)
                     (letrec ((_loop2507825455_
                               (lambda (_hd2507625459_ _body2508225462_)
                                 (if (gx#stx-pair? _hd2507625459_)
                                     (let ((_e2507925465_
                                            (gx#syntax-e _hd2507625459_)))
                                       (let ((_lp-hd2508025469_
                                              (##car _e2507925465_))
                                             (_lp-tl2508125472_
                                              (##cdr _e2507925465_)))
                                         (_loop2507825455_
                                          _lp-tl2508125472_
                                          (cons _lp-hd2508025469_
                                                _body2508225462_))))
                                     (let ((_body2508325475_
                                            (reverse _body2508225462_)))
                                       ((lambda (_L25479_)
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons '()
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2549525498_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2549625501_)
                         (cons _g2549525498_ _g2549625501_))
                       '()
                       _L25479_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body2508325475_))))))
                       (_loop2507825455_ _target2507525449_ '()))
                     (_g2506425422_ _g2506725426_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2506425422_
                                                    _g2506725426_))
                                               (_g2506425422_ _g2506725426_))
                                           (_g2506425422_ _g2506725426_))))
                                   (_g2506425422_ _g2506725426_))))
                           (_g2506425422_ _g2506725426_)))))
                (_g2506325504_ _$stx25060_)))))))
    (define |gerbil/core::<match>[:0:]#with*|
      (lambda (_$stx25512_)
        (let ((_g2551725569_
               (lambda (_g2551825565_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2551825565_))))
          (let ((_g2551625652_
                 (lambda (_g2551825573_)
                   (if (gx#stx-pair? _g2551825573_)
                       (let ((_e2554925576_ (gx#syntax-e _g2551825573_)))
                         (let ((_hd2555025580_ (##car _e2554925576_))
                               (_tl2555125583_ (##cdr _e2554925576_)))
                           (if (gx#stx-pair? _tl2555125583_)
                               (let ((_e2555225586_
                                      (gx#syntax-e _tl2555125583_)))
                                 (let ((_hd2555325590_ (##car _e2555225586_))
                                       (_tl2555425593_ (##cdr _e2555225586_)))
                                   (if (gx#stx-null? _hd2555325590_)
                                       (if (gx#stx-pair/null? _tl2555425593_)
                                           (if (fx>= (gx#stx-length
                                                      _tl2555425593_)
                                                     '0)
                                               (let ((_g30388_
                                                      (gx#syntax-split-splice
                                                       _tl2555425593_
                                                       '0)))
                                                 (begin
                                                   (let ((_g30389_
                                                          (values-count
                                                           _g30388_)))
                                                     (if (not (fx= _g30389_ 2))
                                                         (error "Context expects 2 values"
                                                                _g30389_)))
                                                   (let ((_target2555525596_
                                                          (values-ref
                                                           _g30388_
                                                           0))
                                                         (_tl2555725599_
                                                          (values-ref
                                                           _g30388_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl2555725599_)
                                                         (letrec ((_loop2555825602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd2555625606_ _body2556225609_)
                             (if (gx#stx-pair? _hd2555625606_)
                                 (let ((_e2555925612_
                                        (gx#syntax-e _hd2555625606_)))
                                   (let ((_lp-hd2556025616_
                                          (##car _e2555925612_))
                                         (_lp-tl2556125619_
                                          (##cdr _e2555925612_)))
                                     (_loop2555825602_
                                      _lp-tl2556125619_
                                      (cons _lp-hd2556025616_
                                            _body2556225609_))))
                                 (let ((_body2556325622_
                                        (reverse _body2556225609_)))
                                   ((lambda (_L25626_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g2564325646_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2564425649_)
                     (cons _g2564325646_ _g2564425649_))
                   '()
                   _L25626_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _body2556325622_))))))
                   (_loop2555825602_ _target2555525596_ '()))
                 (_g2551725569_ _g2551825573_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2551725569_ _g2551825573_))
                                           (_g2551725569_ _g2551825573_))
                                       (_g2551725569_ _g2551825573_))))
                               (_g2551725569_ _g2551825573_))))
                       (_g2551725569_ _g2551825573_)))))
            (let ((_g2551525778_
                   (lambda (_g2551825656_)
                     (if (gx#stx-pair? _g2551825656_)
                         (let ((_e2552425659_ (gx#syntax-e _g2551825656_)))
                           (let ((_hd2552525663_ (##car _e2552425659_))
                                 (_tl2552625666_ (##cdr _e2552425659_)))
                             (if (gx#stx-pair? _tl2552625666_)
                                 (let ((_e2552725669_
                                        (gx#syntax-e _tl2552625666_)))
                                   (let ((_hd2552825673_ (##car _e2552725669_))
                                         (_tl2552925676_
                                          (##cdr _e2552725669_)))
                                     (if (gx#stx-pair? _hd2552825673_)
                                         (let ((_e2553025679_
                                                (gx#syntax-e _hd2552825673_)))
                                           (let ((_hd2553125683_
                                                  (##car _e2553025679_))
                                                 (_tl2553225686_
                                                  (##cdr _e2553025679_)))
                                             (if (gx#stx-pair? _hd2553125683_)
                                                 (let ((_e2553325689_
                                                        (gx#syntax-e
                                                         _hd2553125683_)))
                                                   (let ((_hd2553425693_
                                                          (##car _e2553325689_))
                                                         (_tl2553525696_
                                                          (##cdr _e2553325689_)))
                                                     (if (gx#stx-pair?
                                                          _tl2553525696_)
                                                         (let ((_e2553625699_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2553525696_)))
                   (let ((_hd2553725703_ (##car _e2553625699_))
                         (_tl2553825706_ (##cdr _e2553625699_)))
                     (if (gx#stx-null? _tl2553825706_)
                         (if (gx#stx-pair/null? _tl2552925676_)
                             (if (fx>= (gx#stx-length _tl2552925676_) '0)
                                 (let ((_g30390_
                                        (gx#syntax-split-splice
                                         _tl2552925676_
                                         '0)))
                                   (begin
                                     (let ((_g30391_ (values-count _g30390_)))
                                       (if (not (fx= _g30391_ 2))
                                           (error "Context expects 2 values"
                                                  _g30391_)))
                                     (let ((_target2553925709_
                                            (values-ref _g30390_ 0))
                                           (_tl2554125712_
                                            (values-ref _g30390_ 1)))
                                       (if (gx#stx-null? _tl2554125712_)
                                           (letrec ((_loop2554225715_
                                                     (lambda (_hd2554025719_
                                                              _body2554625722_)
                                                       (if (gx#stx-pair?
                                                            _hd2554025719_)
                                                           (let ((_e2554325725_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd2554025719_)))
                     (let ((_lp-hd2554425729_ (##car _e2554325725_))
                           (_lp-tl2554525732_ (##cdr _e2554325725_)))
                       (_loop2554225715_
                        _lp-tl2554525732_
                        (cons _lp-hd2554425729_ _body2554625722_))))
                   (let ((_body2554725735_ (reverse _body2554625722_)))
                     ((lambda (_L25739_ _L25741_ _L25742_ _L25743_ _L25744_)
                        (cons (gx#datum->syntax '#f 'with)
                              (cons (cons (cons _L25743_ (cons _L25742_ '()))
                                          '())
                                    (cons (cons _L25744_
                                                (cons _L25741_
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2576925772_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2577025775_)
                         (cons _g2576925772_ _g2577025775_))
                       '()
                       _L25739_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))))
                      _body2554725735_
                      _tl2553225686_
                      _hd2553725703_
                      _hd2553425693_
                      _hd2552525663_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop2554225715_
                                              _target2553925709_
                                              '()))
                                           (_g2551625652_ _g2551825656_)))))
                                 (_g2551625652_ _g2551825656_))
                             (_g2551625652_ _g2551825656_))
                         (_g2551625652_ _g2551825656_))))
                 (_g2551625652_ _g2551825656_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2551625652_
                                                  _g2551825656_))))
                                         (_g2551625652_ _g2551825656_))))
                                 (_g2551625652_ _g2551825656_))))
                         (_g2551625652_ _g2551825656_)))))
              (_g2551525778_ _$stx25512_))))))
    (define |gerbil/core::<match>[:0:]#?|
      (lambda (_$stx25784_)
        (let ((_g2579525939_
               (lambda (_g2579625935_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2579625935_))))
          (let ((_g2579426034_
                 (lambda (_g2579625943_)
                   (if (gx#stx-pair? _g2579625943_)
                       (let ((_e2591625946_ (gx#syntax-e _g2579625943_)))
                         (let ((_hd2591725950_ (##car _e2591625946_))
                               (_tl2591825953_ (##cdr _e2591625946_)))
                           (if (gx#stx-pair? _tl2591825953_)
                               (let ((_e2591925956_
                                      (gx#syntax-e _tl2591825953_)))
                                 (let ((_hd2592025960_ (##car _e2591925956_))
                                       (_tl2592125963_ (##cdr _e2591925956_)))
                                   (if (gx#stx-pair? _tl2592125963_)
                                       (let ((_e2592225966_
                                              (gx#syntax-e _tl2592125963_)))
                                         (let ((_hd2592325970_
                                                (##car _e2592225966_))
                                               (_tl2592425973_
                                                (##cdr _e2592225966_)))
                                           (if (gx#stx-datum? _hd2592325970_)
                                               (if (equal? (gx#stx-e
                                                            _hd2592325970_)
                                                           '::)
                                                   (if (gx#stx-pair?
                                                        _tl2592425973_)
                                                       (let ((_e2592525976_
                                                              (gx#syntax-e
                                                               _tl2592425973_)))
                                                         (let ((_hd2592625980_
                                                                (##car _e2592525976_))
                                                               (_tl2592725983_
                                                                (##cdr _e2592525976_)))
                                                           (if (gx#stx-pair?
                                                                _tl2592725983_)
                                                               (let ((_e2592825986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2592725983_)))
                         (let ((_hd2592925990_ (##car _e2592825986_))
                               (_tl2593025993_ (##cdr _e2592825986_)))
                           (if (gx#identifier? _hd2592925990_)
                               (if (gx#free-identifier=?
                                    |gerbil/core::<match>[1]#_g30392_|
                                    _hd2592925990_)
                                   (if (gx#stx-pair? _tl2593025993_)
                                       (let ((_e2593125996_
                                              (gx#syntax-e _tl2593025993_)))
                                         (let ((_hd2593226000_
                                                (##car _e2593125996_))
                                               (_tl2593326003_
                                                (##cdr _e2593125996_)))
                                           (if (gx#stx-null? _tl2593326003_)
                                               ((lambda (_L26006_
                                                         _L26008_
                                                         _L26009_
                                                         _L26010_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$obj)
                            '())
                      (cons (cons (gx#datum->syntax '#f 'and)
                                  (cons (cons _L26010_
                                              (cons _L26009_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '$obj)
                                                          '())))
                                        (cons (cons _L26006_
                                                    (cons (cons _L26008_
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
                                                _hd2593226000_
                                                _hd2592625980_
                                                _hd2592025960_
                                                _hd2591725950_)
                                               (_g2579525939_ _g2579625943_))))
                                       (_g2579525939_ _g2579625943_))
                                   (_g2579525939_ _g2579625943_))
                               (_g2579525939_ _g2579625943_))))
                       (_g2579525939_ _g2579625943_))))
               (_g2579525939_ _g2579625943_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2579525939_
                                                    _g2579625943_))
                                               (_g2579525939_ _g2579625943_))))
                                       (_g2579525939_ _g2579625943_))))
                               (_g2579525939_ _g2579625943_))))
                       (_g2579525939_ _g2579625943_)))))
            (let ((_g2579326102_
                   (lambda (_g2579626038_)
                     (if (gx#stx-pair? _g2579626038_)
                         (let ((_e2590026041_ (gx#syntax-e _g2579626038_)))
                           (let ((_hd2590126045_ (##car _e2590026041_))
                                 (_tl2590226048_ (##cdr _e2590026041_)))
                             (if (gx#stx-pair? _tl2590226048_)
                                 (let ((_e2590326051_
                                        (gx#syntax-e _tl2590226048_)))
                                   (let ((_hd2590426055_ (##car _e2590326051_))
                                         (_tl2590526058_
                                          (##cdr _e2590326051_)))
                                     (if (gx#stx-pair? _tl2590526058_)
                                         (let ((_e2590626061_
                                                (gx#syntax-e _tl2590526058_)))
                                           (let ((_hd2590726065_
                                                  (##car _e2590626061_))
                                                 (_tl2590826068_
                                                  (##cdr _e2590626061_)))
                                             (if (gx#stx-datum? _hd2590726065_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2590726065_)
                                                             '::)
                                                     (if (gx#stx-pair?
                                                          _tl2590826068_)
                                                         (let ((_e2590926071_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2590826068_)))
                   (let ((_hd2591026075_ (##car _e2590926071_))
                         (_tl2591126078_ (##cdr _e2590926071_)))
                     (if (gx#stx-null? _tl2591126078_)
                         ((lambda (_L26081_ _L26083_ _L26084_)
                            (cons (gx#datum->syntax '#f 'lambda)
                                  (cons (cons (gx#datum->syntax '#f '$obj) '())
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'alet)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$val)
                        (cons (cons _L26084_
                                    (cons _L26083_
                                          (cons (gx#datum->syntax '#f '$obj)
                                                '())))
                              '()))
                  (cons (cons _L26081_ (cons (gx#datum->syntax '#f '$val) '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          _hd2591026075_
                          _hd2590426055_
                          _hd2590126045_)
                         (_g2579426034_ _g2579626038_))))
                 (_g2579426034_ _g2579626038_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2579426034_
                                                      _g2579626038_))
                                                 (_g2579426034_
                                                  _g2579626038_))))
                                         (_g2579426034_ _g2579626038_))))
                                 (_g2579426034_ _g2579626038_))))
                         (_g2579426034_ _g2579626038_)))))
              (let ((_g2579226170_
                     (lambda (_g2579626106_)
                       (if (gx#stx-pair? _g2579626106_)
                           (let ((_e2588526109_ (gx#syntax-e _g2579626106_)))
                             (let ((_hd2588626113_ (##car _e2588526109_))
                                   (_tl2588726116_ (##cdr _e2588526109_)))
                               (if (gx#stx-pair? _tl2588726116_)
                                   (let ((_e2588826119_
                                          (gx#syntax-e _tl2588726116_)))
                                     (let ((_hd2588926123_
                                            (##car _e2588826119_))
                                           (_tl2589026126_
                                            (##cdr _e2588826119_)))
                                       (if (gx#stx-pair? _tl2589026126_)
                                           (let ((_e2589126129_
                                                  (gx#syntax-e
                                                   _tl2589026126_)))
                                             (let ((_hd2589226133_
                                                    (##car _e2589126129_))
                                                   (_tl2589326136_
                                                    (##cdr _e2589126129_)))
                                               (if (gx#identifier?
                                                    _hd2589226133_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core::<match>[1]#_g30393_|
                                                        _hd2589226133_)
                                                       (if (gx#stx-pair?
                                                            _tl2589326136_)
                                                           (let ((_e2589426139_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl2589326136_)))
                     (let ((_hd2589526143_ (##car _e2589426139_))
                           (_tl2589626146_ (##cdr _e2589426139_)))
                       (if (gx#stx-null? _tl2589626146_)
                           ((lambda (_L26149_ _L26151_ _L26152_)
                              (cons (gx#datum->syntax '#f 'lambda)
                                    (cons (cons (gx#datum->syntax '#f '$obj)
                                                '())
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'and)
                                                      (cons (cons _L26152_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L26151_
                                (cons (gx#datum->syntax '#f '$obj) '())))
                    (cons (cons _L26149_
                                (cons (gx#datum->syntax '#f '$obj) '()))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                            _hd2589526143_
                            _hd2588926123_
                            _hd2588626113_)
                           (_g2579326102_ _g2579626106_))))
                   (_g2579326102_ _g2579626106_))
               (_g2579326102_ _g2579626106_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2579326102_
                                                    _g2579626106_))))
                                           (_g2579326102_ _g2579626106_))))
                                   (_g2579326102_ _g2579626106_))))
                           (_g2579326102_ _g2579626106_)))))
                (let ((_g2579126212_
                       (lambda (_g2579626174_)
                         (if (gx#stx-pair? _g2579626174_)
                             (let ((_e2587626177_ (gx#syntax-e _g2579626174_)))
                               (let ((_hd2587726181_ (##car _e2587626177_))
                                     (_tl2587826184_ (##cdr _e2587626177_)))
                                 (if (gx#stx-pair? _tl2587826184_)
                                     (let ((_e2587926187_
                                            (gx#syntax-e _tl2587826184_)))
                                       (let ((_hd2588026191_
                                              (##car _e2587926187_))
                                             (_tl2588126194_
                                              (##cdr _e2587926187_)))
                                         (if (gx#stx-null? _tl2588126194_)
                                             ((lambda (_L26197_ _L26199_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '$obj)
                          '())
                    (cons (cons _L26199_
                                (cons _L26197_
                                      (cons (gx#datum->syntax '#f '$obj) '())))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd2588026191_
                                              _hd2587726181_)
                                             (_g2579226170_ _g2579626174_))))
                                     (_g2579226170_ _g2579626174_))))
                             (_g2579226170_ _g2579626174_)))))
                  (let ((_g2579026266_
                         (lambda (_g2579626216_)
                           (if (gx#stx-pair? _g2579626216_)
                               (let ((_e2586526219_
                                      (gx#syntax-e _g2579626216_)))
                                 (let ((_hd2586626223_ (##car _e2586526219_))
                                       (_tl2586726226_ (##cdr _e2586526219_)))
                                   (if (gx#stx-pair? _tl2586726226_)
                                       (let ((_e2586826229_
                                              (gx#syntax-e _tl2586726226_)))
                                         (let ((_hd2586926233_
                                                (##car _e2586826229_))
                                               (_tl2587026236_
                                                (##cdr _e2586826229_)))
                                           (if (gx#stx-pair? _tl2587026236_)
                                               (let ((_e2587126239_
                                                      (gx#syntax-e
                                                       _tl2587026236_)))
                                                 (let ((_hd2587226243_
                                                        (##car _e2587126239_))
                                                       (_tl2587326246_
                                                        (##cdr _e2587126239_)))
                                                   (if (gx#stx-null?
                                                        _tl2587326246_)
                                                       ((lambda (_L26249_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L26251_)
                  (cons _L26251_ (cons _L26249_ '())))
                _hd2587226243_
                _hd2586926233_)
               (_g2579126212_ _g2579626216_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2579126212_ _g2579626216_))))
                                       (_g2579126212_ _g2579626216_))))
                               (_g2579126212_ _g2579626216_)))))
                    (let ((_g2578926346_
                           (lambda (_g2579626270_)
                             (if (gx#stx-pair? _g2579626270_)
                                 (let ((_e2584826273_
                                        (gx#syntax-e _g2579626270_)))
                                   (let ((_hd2584926277_ (##car _e2584826273_))
                                         (_tl2585026280_
                                          (##cdr _e2584826273_)))
                                     (if (gx#stx-pair? _tl2585026280_)
                                         (let ((_e2585126283_
                                                (gx#syntax-e _tl2585026280_)))
                                           (let ((_hd2585226287_
                                                  (##car _e2585126283_))
                                                 (_tl2585326290_
                                                  (##cdr _e2585126283_)))
                                             (if (gx#stx-pair? _hd2585226287_)
                                                 (let ((_e2585426293_
                                                        (gx#syntax-e
                                                         _hd2585226287_)))
                                                   (let ((_hd2585526297_
                                                          (##car _e2585426293_))
                                                         (_tl2585626300_
                                                          (##cdr _e2585426293_)))
                                                     (if (gx#identifier?
                                                          _hd2585526297_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core::<match>[1]#_g30394_|
                                                              _hd2585526297_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2585626300_)
                         (let ((_e2585726303_ (gx#syntax-e _tl2585626300_)))
                           (let ((_hd2585826307_ (##car _e2585726303_))
                                 (_tl2585926310_ (##cdr _e2585726303_)))
                             (if (gx#stx-null? _tl2585926310_)
                                 (if (gx#stx-pair? _tl2585326290_)
                                     (let ((_e2586026313_
                                            (gx#syntax-e _tl2585326290_)))
                                       (let ((_hd2586126317_
                                              (##car _e2586026313_))
                                             (_tl2586226320_
                                              (##cdr _e2586026313_)))
                                         (if (gx#stx-null? _tl2586226320_)
                                             ((lambda (_L26323_
                                                       _L26325_
                                                       _L26326_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'not)
                                                      (cons (cons _L26326_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L26325_ (cons _L26323_ '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd2586126317_
                                              _hd2585826307_
                                              _hd2584926277_)
                                             (_g2579026266_ _g2579626270_))))
                                     (_g2579026266_ _g2579626270_))
                                 (_g2579026266_ _g2579626270_))))
                         (_g2579026266_ _g2579626270_))
                     (_g2579026266_ _g2579626270_))
                 (_g2579026266_ _g2579626270_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2579026266_
                                                  _g2579626270_))))
                                         (_g2579026266_ _g2579626270_))))
                                 (_g2579026266_ _g2579626270_)))))
                      (let ((_g2578826456_
                             (lambda (_g2579626350_)
                               (if (gx#stx-pair? _g2579626350_)
                                   (let ((_e2582426353_
                                          (gx#syntax-e _g2579626350_)))
                                     (let ((_hd2582526357_
                                            (##car _e2582426353_))
                                           (_tl2582626360_
                                            (##cdr _e2582426353_)))
                                       (if (gx#stx-pair? _tl2582626360_)
                                           (let ((_e2582726363_
                                                  (gx#syntax-e
                                                   _tl2582626360_)))
                                             (let ((_hd2582826367_
                                                    (##car _e2582726363_))
                                                   (_tl2582926370_
                                                    (##cdr _e2582726363_)))
                                               (if (gx#stx-pair?
                                                    _hd2582826367_)
                                                   (let ((_e2583026373_
                                                          (gx#syntax-e
                                                           _hd2582826367_)))
                                                     (let ((_hd2583126377_
                                                            (##car _e2583026373_))
                                                           (_tl2583226380_
                                                            (##cdr _e2583026373_)))
                                                       (if (gx#identifier?
                                                            _hd2583126377_)
                                                           (if (gx#free-identifier=?
                                                                |gerbil/core::<match>[1]#_g30395_|
                                                                _hd2583126377_)
                                                               (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl2583226380_)
                           (if (fx>= (gx#stx-length _tl2583226380_) '0)
                               (let ((_g30396_
                                      (gx#syntax-split-splice
                                       _tl2583226380_
                                       '0)))
                                 (begin
                                   (let ((_g30397_ (values-count _g30396_)))
                                     (if (not (fx= _g30397_ 2))
                                         (error "Context expects 2 values"
                                                _g30397_)))
                                   (let ((_target2583326383_
                                          (values-ref _g30396_ 0))
                                         (_tl2583526386_
                                          (values-ref _g30396_ 1)))
                                     (if (gx#stx-null? _tl2583526386_)
                                         (letrec ((_loop2583626389_
                                                   (lambda (_hd2583426393_
                                                            _pred2584026396_)
                                                     (if (gx#stx-pair?
                                                          _hd2583426393_)
                                                         (let ((_e2583726399_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2583426393_)))
                   (let ((_lp-hd2583826403_ (##car _e2583726399_))
                         (_lp-tl2583926406_ (##cdr _e2583726399_)))
                     (_loop2583626389_
                      _lp-tl2583926406_
                      (cons _lp-hd2583826403_ _pred2584026396_))))
                 (let ((_pred2584126409_ (reverse _pred2584026396_)))
                   (if (gx#stx-pair? _tl2582926370_)
                       (let ((_e2584226413_ (gx#syntax-e _tl2582926370_)))
                         (let ((_hd2584326417_ (##car _e2584226413_))
                               (_tl2584426420_ (##cdr _e2584226413_)))
                           (if (gx#stx-null? _tl2584426420_)
                               ((lambda (_L26423_ _L26425_ _L26426_)
                                  (cons (gx#datum->syntax '#f 'or)
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g2644726450_
                                                          _g2644826453_)
                                                   (cons (cons _L26426_
                                                               (cons _g2644726450_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L26423_ '())))
                 _g2644826453_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L26425_))))
                                _hd2584326417_
                                _pred2584126409_
                                _hd2582526357_)
                               (_g2578926346_ _g2579626350_))))
                       (_g2578926346_ _g2579626350_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop2583626389_
                                            _target2583326383_
                                            '()))
                                         (_g2578926346_ _g2579626350_)))))
                               (_g2578926346_ _g2579626350_))
                           (_g2578926346_ _g2579626350_))
                       (_g2578926346_ _g2579626350_))
                   (_g2578926346_ _g2579626350_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2578926346_
                                                    _g2579626350_))))
                                           (_g2578926346_ _g2579626350_))))
                                   (_g2578926346_ _g2579626350_)))))
                        (let ((_g2578726566_
                               (lambda (_g2579626460_)
                                 (if (gx#stx-pair? _g2579626460_)
                                     (let ((_e2580026463_
                                            (gx#syntax-e _g2579626460_)))
                                       (let ((_hd2580126467_
                                              (##car _e2580026463_))
                                             (_tl2580226470_
                                              (##cdr _e2580026463_)))
                                         (if (gx#stx-pair? _tl2580226470_)
                                             (let ((_e2580326473_
                                                    (gx#syntax-e
                                                     _tl2580226470_)))
                                               (let ((_hd2580426477_
                                                      (##car _e2580326473_))
                                                     (_tl2580526480_
                                                      (##cdr _e2580326473_)))
                                                 (if (gx#stx-pair?
                                                      _hd2580426477_)
                                                     (let ((_e2580626483_
                                                            (gx#syntax-e
                                                             _hd2580426477_)))
                                                       (let ((_hd2580726487_
                                                              (##car _e2580626483_))
                                                             (_tl2580826490_
                                                              (##cdr _e2580626483_)))
                                                         (if (gx#identifier?
                                                              _hd2580726487_)
                                                             (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          |gerbil/core::<match>[1]#_g30398_|
                          _hd2580726487_)
                         (if (gx#stx-pair/null? _tl2580826490_)
                             (if (fx>= (gx#stx-length _tl2580826490_) '0)
                                 (let ((_g30399_
                                        (gx#syntax-split-splice
                                         _tl2580826490_
                                         '0)))
                                   (begin
                                     (let ((_g30400_ (values-count _g30399_)))
                                       (if (not (fx= _g30400_ 2))
                                           (error "Context expects 2 values"
                                                  _g30400_)))
                                     (let ((_target2580926493_
                                            (values-ref _g30399_ 0))
                                           (_tl2581126496_
                                            (values-ref _g30399_ 1)))
                                       (if (gx#stx-null? _tl2581126496_)
                                           (letrec ((_loop2581226499_
                                                     (lambda (_hd2581026503_
                                                              _pred2581626506_)
                                                       (if (gx#stx-pair?
                                                            _hd2581026503_)
                                                           (let ((_e2581326509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd2581026503_)))
                     (let ((_lp-hd2581426513_ (##car _e2581326509_))
                           (_lp-tl2581526516_ (##cdr _e2581326509_)))
                       (_loop2581226499_
                        _lp-tl2581526516_
                        (cons _lp-hd2581426513_ _pred2581626506_))))
                   (let ((_pred2581726519_ (reverse _pred2581626506_)))
                     (if (gx#stx-pair? _tl2580526480_)
                         (let ((_e2581826523_ (gx#syntax-e _tl2580526480_)))
                           (let ((_hd2581926527_ (##car _e2581826523_))
                                 (_tl2582026530_ (##cdr _e2581826523_)))
                             (if (gx#stx-null? _tl2582026530_)
                                 ((lambda (_L26533_ _L26535_ _L26536_)
                                    (cons (gx#datum->syntax '#f 'and)
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2655726560_
                                                            _g2655826563_)
                                                     (cons (cons _L26536_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _g2655726560_ (cons _L26533_ '())))
                   _g2655826563_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _L26535_))))
                                  _hd2581926527_
                                  _pred2581726519_
                                  _hd2580126467_)
                                 (_g2578826456_ _g2579626460_))))
                         (_g2578826456_ _g2579626460_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop2581226499_
                                              _target2580926493_
                                              '()))
                                           (_g2578826456_ _g2579626460_)))))
                                 (_g2578826456_ _g2579626460_))
                             (_g2578826456_ _g2579626460_))
                         (_g2578826456_ _g2579626460_))
                     (_g2578826456_ _g2579626460_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2578826456_
                                                      _g2579626460_))))
                                             (_g2578826456_ _g2579626460_))))
                                     (_g2578826456_ _g2579626460_)))))
                          (_g2578726566_ _$stx25784_))))))))))))
    (define |gerbil/core::<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx26572_)
        (let ((_g2657726611_
               (lambda (_g2657826607_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2657826607_))))
          (let ((_g2657626668_
                 (lambda (_g2657826615_)
                   (if (gx#stx-pair? _g2657826615_)
                       (let ((_e2659726618_ (gx#syntax-e _g2657826615_)))
                         (let ((_hd2659826622_ (##car _e2659726618_))
                               (_tl2659926625_ (##cdr _e2659726618_)))
                           (if (gx#stx-pair? _tl2659926625_)
                               (let ((_e2660026628_
                                      (gx#syntax-e _tl2659926625_)))
                                 (let ((_hd2660126632_ (##car _e2660026628_))
                                       (_tl2660226635_ (##cdr _e2660026628_)))
                                   (if (gx#stx-pair? _tl2660226635_)
                                       (let ((_e2660326638_
                                              (gx#syntax-e _tl2660226635_)))
                                         (let ((_hd2660426642_
                                                (##car _e2660326638_))
                                               (_tl2660526645_
                                                (##cdr _e2660326638_)))
                                           (if (gx#stx-null? _tl2660526645_)
                                               ((lambda (_L26648_
                                                         _L26650_
                                                         _L26651_)
                                                  (cons _L26651_
                                                        (cons _L26650_
                                                              (cons _L26648_
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
                                                _hd2660426642_
                                                _hd2660126632_
                                                _hd2659826622_)
                                               (_g2657726611_ _g2657826615_))))
                                       (_g2657726611_ _g2657826615_))))
                               (_g2657726611_ _g2657826615_))))
                       (_g2657726611_ _g2657826615_)))))
            (let ((_g2657526736_
                   (lambda (_g2657826672_)
                     (if (gx#stx-pair? _g2657826672_)
                         (let ((_e2658226675_ (gx#syntax-e _g2657826672_)))
                           (let ((_hd2658326679_ (##car _e2658226675_))
                                 (_tl2658426682_ (##cdr _e2658226675_)))
                             (if (gx#stx-pair? _tl2658426682_)
                                 (let ((_e2658526685_
                                        (gx#syntax-e _tl2658426682_)))
                                   (let ((_hd2658626689_ (##car _e2658526685_))
                                         (_tl2658726692_
                                          (##cdr _e2658526685_)))
                                     (if (gx#stx-pair? _tl2658726692_)
                                         (let ((_e2658826695_
                                                (gx#syntax-e _tl2658726692_)))
                                           (let ((_hd2658926699_
                                                  (##car _e2658826695_))
                                                 (_tl2659026702_
                                                  (##cdr _e2658826695_)))
                                             (if (gx#stx-pair? _tl2659026702_)
                                                 (let ((_e2659126705_
                                                        (gx#syntax-e
                                                         _tl2659026702_)))
                                                   (let ((_hd2659226709_
                                                          (##car _e2659126705_))
                                                         (_tl2659326712_
                                                          (##cdr _e2659126705_)))
                                                     (if (gx#stx-null?
                                                          _tl2659326712_)
                                                         ((lambda (_L26715_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L26717_
                           _L26718_)
                    (if (gx#identifier? _L26718_)
                        (cons (gx#datum->syntax '#f 'defsyntax)
                              (cons _L26718_
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'make-match-macro)
                                                (cons 'macro:
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let)
                          (cons (cons (cons (gx#datum->syntax '#f '$match-e)
                                            (cons _L26717_ '()))
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '$macro-e)
                                                  (cons _L26715_ '()))
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
                        (_g2657626668_ _g2657826672_)))
                  _hd2659226709_
                  _hd2658926699_
                  _hd2658626689_)
                 (_g2657626668_ _g2657826672_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2657626668_
                                                  _g2657826672_))))
                                         (_g2657626668_ _g2657826672_))))
                                 (_g2657626668_ _g2657826672_))))
                         (_g2657626668_ _g2657826672_)))))
              (_g2657526736_ _$stx26572_))))))
    (define |gerbil/core::<match>[:0:]#defrules-for-match|
      (lambda (_$stx26740_)
        (let ((_g2674426759_
               (lambda (_g2674526755_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2674526755_))))
          (let ((_g2674326802_
                 (lambda (_g2674526763_)
                   (if (gx#stx-pair? _g2674526763_)
                       (let ((_e2674826766_ (gx#syntax-e _g2674526763_)))
                         (let ((_hd2674926770_ (##car _e2674826766_))
                               (_tl2675026773_ (##cdr _e2674826766_)))
                           (if (gx#stx-pair? _tl2675026773_)
                               (let ((_e2675126776_
                                      (gx#syntax-e _tl2675026773_)))
                                 (let ((_hd2675226780_ (##car _e2675126776_))
                                       (_tl2675326783_ (##cdr _e2675126776_)))
                                   ((lambda (_L26786_ _L26788_)
                                      (cons (gx#datum->syntax
                                             '#f
                                             'defsyntax-for-match)
                                            (cons _L26788_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'syntax-rules)
                                                              _L26786_)
                                                        '()))))
                                    _tl2675326783_
                                    _hd2675226780_)))
                               (_g2674426759_ _g2674526763_))))
                       (_g2674426759_ _g2674526763_)))))
            (_g2674326802_ _$stx26740_)))))))
