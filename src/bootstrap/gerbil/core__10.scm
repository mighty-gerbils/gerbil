(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<match>[1]#_g29542_|
    (gx#core-quote-syntax 'quasiquote))
  (define |gerbil/core::<match>[1]#_g29543_| (gx#core-quote-syntax 'quote))
  (define |gerbil/core::<match>[1]#_g29546_| (gx#core-quote-syntax 'vector))
  (define |gerbil/core::<match>[1]#_g29547_| (gx#core-quote-syntax 'values))
  (define |gerbil/core::<match>[1]#_g29548_| (gx#core-quote-syntax 'values))
  (define |gerbil/core::<match>[1]#_g29549_| (gx#core-quote-syntax 'box))
  (define |gerbil/core::<match>[1]#_g29550_| (gx#core-quote-syntax '@list))
  (define |gerbil/core::<match>[1]#_g29551_| (gx#core-quote-syntax 'cons*))
  (define |gerbil/core::<match>[1]#_g29552_| (gx#core-quote-syntax 'cons))
  (define |gerbil/core::<match>[1]#_g29553_| (gx#core-quote-syntax 'not))
  (define |gerbil/core::<match>[1]#_g29554_| (gx#core-quote-syntax 'or))
  (define |gerbil/core::<match>[1]#_g29555_| (gx#core-quote-syntax 'and))
  (define |gerbil/core::<match>[1]#_g29556_| (gx#core-quote-syntax '?))
  (define |gerbil/core::<match>[1]#_g29557_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g29558_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g29571_| (gx#core-quote-syntax 'else))
  (define |gerbil/core::<match>[1]#_g29572_| (gx#core-quote-syntax 'else))
  (define |gerbil/core::<match>[1]#_g29573_| (gx#core-quote-syntax '<...>))
  (define |gerbil/core::<match>[1]#_g29574_| (gx#core-quote-syntax '<>))
  (define |gerbil/core::<match>[1]#_g29591_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g29592_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g29593_| (gx#core-quote-syntax 'not))
  (define |gerbil/core::<match>[1]#_g29594_| (gx#core-quote-syntax 'or))
  (define |gerbil/core::<match>[1]#_g29597_| (gx#core-quote-syntax 'and))
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
      (lambda _$args23651_
        (apply make-class-instance
               |gerbil/core::<match>[1]#match-macro::t|
               _$args23651_)))
    (define |gerbil/core::<match>[1]#syntax-local-match-macro?|
      (lambda (_stx23648_)
        (if (gx#identifier? _stx23648_)
            (|gerbil/core::<match>[1]#match-macro?|
             (gx#syntax-local-value _stx23648_ false))
            '#f)))
    (define |gerbil/core::<match>[1]#parse-match-pattern|
      (let ((_opt-lambda2203023634_
             (lambda (_stx22032_ _match-stx22034_)
               (let ((_parse-qq22042_
                      (lambda (_hd22048_)
                        (let ((_g2205022057_
                               (lambda (_g2205122053_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2205122053_))))
                          (_g2205022057_ _hd22048_)))))
                 (let ((_parse-error22043_
                        (lambda (_hd22045_)
                          (apply gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; illegal pattern"
                                 (if _match-stx22034_
                                     (cons _match-stx22034_
                                           (cons _stx22032_
                                                 (cons _hd22045_ '())))
                                     (cons _stx22032_
                                           (cons _hd22045_ '())))))))
                   (letrec ((_parse122036_
                             (lambda (_hd22383_)
                               (let ((_g2240822539_
                                      (lambda (_g2240922535_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g2240922535_))))
                                 (let ((_g2240722550_
                                        (lambda (_g2240922543_)
                                          ((lambda ()
                                             (_parse-error22043_
                                              _hd22383_))))))
                                   (let ((_g2240622568_
                                          (lambda (_g2240922554_)
                                            ((lambda (_L22557_)
                                               (if (gx#stx-datum? _L22557_)
                                                   (cons 'datum:
                                                         (cons (gx#stx-e
                                                                _L22557_)
                                                               '()))
                                                   (_g2240722550_
                                                    _g2240922554_)))
                                             _g2240922554_))))
                                     (let ((_g2240522584_
                                            (lambda (_g2240922572_)
                                              ((lambda (_L22575_)
                                                 (if (if (gx#identifier?
                                                          _L22575_)
                                                         (not (gx#ellipsis?
                                                               _L22575_))
                                                         '#f)
                                                     (cons 'var:
                                                           (cons _L22575_ '()))
                                                     (_g2240622568_
                                                      _g2240922572_)))
                                               _g2240922572_))))
                                       (let ((_g2240422600_
                                              (lambda (_g2240922588_)
                                                ((lambda (_L22591_)
                                                   (if (gx#underscore?
                                                        _L22591_)
                                                       (cons 'any: '())
                                                       (_g2240522584_
                                                        _g2240922588_)))
                                                 _g2240922588_))))
                                         (let ((_g2240322632_
                                                (lambda (_g2240922604_)
                                                  (if (gx#stx-pair?
                                                       _g2240922604_)
                                                      (let ((_e2252822607_
                                                             (gx#syntax-e
                                                              _g2240922604_)))
                                                        (let ((_hd2252922611_
                                                               (##car _e2252822607_))
                                                              (_tl2253022614_
                                                               (##cdr _e2252822607_)))
                                                          ((lambda (_L22617_)
                                                             (if (|gerbil/core::<match>[1]#syntax-local-match-macro?|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L22617_)
                         (_parse122036_
                          (gx#core-apply-expander
                           (gx#syntax-local-e _L22617_)
                           (gx#stx-wrap-source
                            (cons 'match: _hd22383_)
                            (let ((_$e22628_ (gx#stx-source _hd22383_)))
                              (if _$e22628_
                                  _$e22628_
                                  (gx#stx-source _stx22032_))))))
                         (_g2240422600_ _g2240922604_)))
                   _hd2252922611_)))
              (_g2240422600_ _g2240922604_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_g2240222672_
                                                  (lambda (_g2240922636_)
                                                    (if (gx#stx-pair?
                                                         _g2240922636_)
                                                        (let ((_e2252122639_
                                                               (gx#syntax-e
                                                                _g2240922636_)))
                                                          (let ((_hd2252222643_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2252122639_))
                        (_tl2252322646_ (##cdr _e2252122639_)))
                    (if (gx#identifier? _hd2252222643_)
                        (if (gx#free-identifier=?
                             |gerbil/core::<match>[1]#_g29542_|
                             _hd2252222643_)
                            (if (gx#stx-pair? _tl2252322646_)
                                (let ((_e2252422649_
                                       (gx#syntax-e _tl2252322646_)))
                                  (let ((_hd2252522653_ (##car _e2252422649_))
                                        (_tl2252622656_ (##cdr _e2252422649_)))
                                    (if (gx#stx-null? _tl2252622656_)
                                        ((lambda (_L22659_)
                                           (_parse-qq22042_ _L22659_))
                                         _hd2252522653_)
                                        (_g2240322632_ _g2240922636_))))
                                (_g2240322632_ _g2240922636_))
                            (_g2240322632_ _g2240922636_))
                        (_g2240322632_ _g2240922636_))))
                (_g2240322632_ _g2240922636_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_g2240122712_
                                                    (lambda (_g2240922676_)
                                                      (if (gx#stx-pair?
                                                           _g2240922676_)
                                                          (let ((_e2251422679_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _g2240922676_)))
                    (let ((_hd2251522683_ (##car _e2251422679_))
                          (_tl2251622686_ (##cdr _e2251422679_)))
                      (if (gx#identifier? _hd2251522683_)
                          (if (gx#free-identifier=?
                               |gerbil/core::<match>[1]#_g29543_|
                               _hd2251522683_)
                              (if (gx#stx-pair? _tl2251622686_)
                                  (let ((_e2251722689_
                                         (gx#syntax-e _tl2251622686_)))
                                    (let ((_hd2251822693_
                                           (##car _e2251722689_))
                                          (_tl2251922696_
                                           (##cdr _e2251722689_)))
                                      (if (gx#stx-null? _tl2251922696_)
                                          ((lambda (_L22699_)
                                             (cons 'datum:
                                                   (cons (gx#stx-e _L22699_)
                                                         '())))
                                           _hd2251822693_)
                                          (_g2240222672_ _g2240922676_))))
                                  (_g2240222672_ _g2240922676_))
                              (_g2240222672_ _g2240922676_))
                          (_g2240222672_ _g2240922676_))))
                  (_g2240222672_ _g2240922676_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_g2240022762_
                                                      (lambda (_g2240922716_)
                                                        (if (gx#stx-pair?
                                                             _g2240922716_)
                                                            (let ((_e2250722719_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g2240922716_)))
                      (let ((_hd2250822723_ (##car _e2250722719_))
                            (_tl2250922726_ (##cdr _e2250722719_)))
                        (if (gx#stx-pair? _tl2250922726_)
                            (let ((_e2251022729_ (gx#syntax-e _tl2250922726_)))
                              (let ((_hd2251122733_ (##car _e2251022729_))
                                    (_tl2251222736_ (##cdr _e2251022729_)))
                                (if (gx#stx-null? _tl2251222736_)
                                    ((lambda (_L22739_ _L22741_)
                                       (if (if (gx#identifier? _L22741_)
                                               (let ((_$e22754_
                                                      (gx#free-identifier=?
                                                       _L22741_
                                                       (gx#datum->syntax
                                                        '#f
                                                        'eq?))))
                                                 (if _$e22754_
                                                     _$e22754_
                                                     (let ((_$e22758_
                                                            (gx#free-identifier=?
                                                             _L22741_
                                                             (gx#datum->syntax
                                                              '#f
                                                              'eqv?))))
                                                       (if _$e22758_
                                                           _$e22758_
                                                           (gx#free-identifier=?
                                                            _L22741_
                                                            (gx#datum->syntax
                                                             '#f
                                                             'equal?))))))
                                               '#f)
                                           (cons '?:
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'cut)
                                                             (cons _L22741_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f '<>)
                                 (cons _L22739_ '()))))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g2240122712_ _g2240922716_)))
                                     _hd2251122733_
                                     _hd2250822723_)
                                    (_g2240122712_ _g2240922716_))))
                            (_g2240122712_ _g2240922716_))))
                    (_g2240122712_ _g2240922716_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_g2239922792_
                                                        (lambda (_g2240922766_)
                                                          (if (gx#stx-pair?
                                                               _g2240922766_)
                                                              (let ((_e2250222769_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _g2240922766_)))
                        (let ((_hd2250322773_ (##car _e2250222769_))
                              (_tl2250422776_ (##cdr _e2250222769_)))
                          ((lambda (_L22779_ _L22781_)
                             (if (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-class-info?|
                                  _L22781_)
                                 (cons 'class:
                                       (cons (gx#syntax-local-value _L22781_)
                                             (cons (_parse-class-body22041_
                                                    _L22779_)
                                                   '())))
                                 (_g2240022762_ _g2240922766_)))
                           _tl2250422776_
                           _hd2250322773_)))
                      (_g2240022762_ _g2240922766_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_g2239822822_
                                                          (lambda (_g2240922796_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2240922796_)
                        (let ((_e2249722799_ (gx#syntax-e _g2240922796_)))
                          (let ((_hd2249822803_ (##car _e2249722799_))
                                (_tl2249922806_ (##cdr _e2249722799_)))
                            ((lambda (_L22809_ _L22811_)
                               (if (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-struct-info?|
                                    _L22811_)
                                   (cons 'struct:
                                         (cons (gx#syntax-local-value _L22811_)
                                               (cons (_parse-vector22039_
                                                      _L22809_)
                                                     '())))
                                   (_g2239922792_ _g2240922796_)))
                             _tl2249922806_
                             _hd2249822803_)))
                        (_g2239922792_ _g2240922796_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_g2239722885_
                                                            (lambda (_g2240922826_)
                                                              (if (gx#stx-vector?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2240922826_)
                          (let ((_e2248522829_
                                 (vector->list (gx#syntax-e _g2240922826_))))
                            (if (gx#stx-pair/null? _e2248522829_)
                                (if (fx>= (gx#stx-length _e2248522829_) '0)
                                    (let ((_g29544_
                                           (gx#syntax-split-splice
                                            _e2248522829_
                                            '0)))
                                      (begin
                                        (let ((_g29545_
                                               (values-count _g29544_)))
                                          (if (not (fx= _g29545_ 2))
                                              (error "Context expects 2 values"
                                                     _g29545_)))
                                        (let ((_target2248622833_
                                               (values-ref _g29544_ 0))
                                              (_tl2248822836_
                                               (values-ref _g29544_ 1)))
                                          (if (gx#stx-null? _tl2248822836_)
                                              (letrec ((_loop2248922839_
                                                        (lambda (_hd2248722843_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body2249322846_)
                  (if (gx#stx-pair? _hd2248722843_)
                      (let ((_e2249022849_ (gx#syntax-e _hd2248722843_)))
                        (let ((_lp-hd2249122853_ (##car _e2249022849_))
                              (_lp-tl2249222856_ (##cdr _e2249022849_)))
                          (_loop2248922839_
                           _lp-tl2249222856_
                           (cons _lp-hd2249122853_ _body2249322846_))))
                      (let ((_body2249422859_ (reverse _body2249322846_)))
                        ((lambda (_L22863_)
                           (cons 'vector:
                                 (cons (_parse-vector22039_
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g2287622879_
                                                          _g2287722882_)
                                                   (cons _g2287622879_
                                                         _g2287722882_))
                                                 '()
                                                 _L22863_)))
                                       '())))
                         _body2249422859_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop2248922839_
                                                 _target2248622833_
                                                 '()))
                                              (_g2239822822_ _g2240922826_)))))
                                    (_g2239822822_ _g2240922826_))
                                (_g2239822822_ _g2240922826_)))
                          (_g2239822822_ _g2240922826_)))))
               (let ((_g2239622913_
                      (lambda (_g2240922889_)
                        (if (gx#stx-pair? _g2240922889_)
                            (let ((_e2248122892_ (gx#syntax-e _g2240922889_)))
                              (let ((_hd2248222896_ (##car _e2248122892_))
                                    (_tl2248322899_ (##cdr _e2248122892_)))
                                (if (gx#identifier? _hd2248222896_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core::<match>[1]#_g29546_|
                                         _hd2248222896_)
                                        ((lambda (_L22902_)
                                           (cons 'vector:
                                                 (cons (_parse-vector22039_
                                                        _L22902_)
                                                       '())))
                                         _tl2248322899_)
                                        (_g2239722885_ _g2240922889_))
                                    (_g2239722885_ _g2240922889_))))
                            (_g2239722885_ _g2240922889_)))))
                 (let ((_g2239522941_
                        (lambda (_g2240922917_)
                          (if (gx#stx-pair? _g2240922917_)
                              (let ((_e2247722920_
                                     (gx#syntax-e _g2240922917_)))
                                (let ((_hd2247822924_ (##car _e2247722920_))
                                      (_tl2247922927_ (##cdr _e2247722920_)))
                                  (if (gx#identifier? _hd2247822924_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core::<match>[1]#_g29547_|
                                           _hd2247822924_)
                                          ((lambda (_L22930_)
                                             (cons 'values:
                                                   (cons (_parse-vector22039_
                                                          _L22930_)
                                                         '())))
                                           _tl2247922927_)
                                          (_g2239622913_ _g2240922917_))
                                      (_g2239622913_ _g2240922917_))))
                              (_g2239622913_ _g2240922917_)))))
                   (let ((_g2239422981_
                          (lambda (_g2240922945_)
                            (if (gx#stx-pair? _g2240922945_)
                                (let ((_e2247022948_
                                       (gx#syntax-e _g2240922945_)))
                                  (let ((_hd2247122952_ (##car _e2247022948_))
                                        (_tl2247222955_ (##cdr _e2247022948_)))
                                    (if (gx#identifier? _hd2247122952_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core::<match>[1]#_g29548_|
                                             _hd2247122952_)
                                            (if (gx#stx-pair? _tl2247222955_)
                                                (let ((_e2247322958_
                                                       (gx#syntax-e
                                                        _tl2247222955_)))
                                                  (let ((_hd2247422962_
                                                         (##car _e2247322958_))
                                                        (_tl2247522965_
                                                         (##cdr _e2247322958_)))
                                                    (if (gx#stx-null?
                                                         _tl2247522965_)
                                                        ((lambda (_L22968_)
                                                           (_parse122036_
                                                            _L22968_))
                                                         _hd2247422962_)
                                                        (_g2239522941_
                                                         _g2240922945_))))
                                                (_g2239522941_ _g2240922945_))
                                            (_g2239522941_ _g2240922945_))
                                        (_g2239522941_ _g2240922945_))))
                                (_g2239522941_ _g2240922945_)))))
                     (let ((_g2239323002_
                            (lambda (_g2240922985_)
                              (if (gx#stx-box? _g2240922985_)
                                  (let ((_e2246822988_
                                         (unbox (gx#syntax-e _g2240922985_))))
                                    ((lambda (_L22992_)
                                       (cons 'box:
                                             (cons (_parse122036_ _L22992_)
                                                   '())))
                                     _e2246822988_))
                                  (_g2239422981_ _g2240922985_)))))
                       (let ((_g2239223042_
                              (lambda (_g2240923006_)
                                (if (gx#stx-pair? _g2240923006_)
                                    (let ((_e2246123009_
                                           (gx#syntax-e _g2240923006_)))
                                      (let ((_hd2246223013_
                                             (##car _e2246123009_))
                                            (_tl2246323016_
                                             (##cdr _e2246123009_)))
                                        (if (gx#identifier? _hd2246223013_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<match>[1]#_g29549_|
                                                 _hd2246223013_)
                                                (if (gx#stx-pair?
                                                     _tl2246323016_)
                                                    (let ((_e2246423019_
                                                           (gx#syntax-e
                                                            _tl2246323016_)))
                                                      (let ((_hd2246523023_
                                                             (##car _e2246423019_))
                                                            (_tl2246623026_
                                                             (##cdr _e2246423019_)))
                                                        (if (gx#stx-null?
                                                             _tl2246623026_)
                                                            ((lambda (_L23029_)
                                                               (cons 'box:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (_parse122036_ _L23029_) '())))
                     _hd2246523023_)
                    (_g2239323002_ _g2240923006_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2239323002_
                                                     _g2240923006_))
                                                (_g2239323002_ _g2240923006_))
                                            (_g2239323002_ _g2240923006_))))
                                    (_g2239323002_ _g2240923006_)))))
                         (let ((_g2239123070_
                                (lambda (_g2240923046_)
                                  (if (gx#stx-pair? _g2240923046_)
                                      (let ((_e2245723049_
                                             (gx#syntax-e _g2240923046_)))
                                        (let ((_hd2245823053_
                                               (##car _e2245723049_))
                                              (_tl2245923056_
                                               (##cdr _e2245723049_)))
                                          (if (gx#identifier? _hd2245823053_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core::<match>[1]#_g29550_|
                                                   _hd2245823053_)
                                                  ((lambda (_L23059_)
                                                     (_parse-list22038_
                                                      _L23059_))
                                                   _tl2245923056_)
                                                  (_g2239223042_
                                                   _g2240923046_))
                                              (_g2239223042_ _g2240923046_))))
                                      (_g2239223042_ _g2240923046_)))))
                           (let ((_g2239023126_
                                  (lambda (_g2240923074_)
                                    (if (gx#stx-pair? _g2240923074_)
                                        (let ((_e2244723077_
                                               (gx#syntax-e _g2240923074_)))
                                          (let ((_hd2244823081_
                                                 (##car _e2244723077_))
                                                (_tl2244923084_
                                                 (##cdr _e2244723077_)))
                                            (if (gx#identifier? _hd2244823081_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core::<match>[1]#_g29551_|
                                                     _hd2244823081_)
                                                    (if (gx#stx-pair?
                                                         _tl2244923084_)
                                                        (let ((_e2245023087_
                                                               (gx#syntax-e
                                                                _tl2244923084_)))
                                                          (let ((_hd2245123091_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2245023087_))
                        (_tl2245223094_ (##cdr _e2245023087_)))
                    (if (gx#stx-pair? _tl2245223094_)
                        (let ((_e2245323097_ (gx#syntax-e _tl2245223094_)))
                          (let ((_hd2245423101_ (##car _e2245323097_))
                                (_tl2245523104_ (##cdr _e2245323097_)))
                            ((lambda (_L23107_ _L23109_ _L23110_)
                               (if (gx#stx-null? _L23107_)
                                   (cons 'cons:
                                         (cons (_parse122036_ _L23110_)
                                               (cons (_parse122036_ _L23109_)
                                                     '())))
                                   (cons 'cons:
                                         (cons (_parse122036_ _L23110_)
                                               (cons (_parse122036_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons*)
                                                            (cons _L23109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L23107_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                             _tl2245523104_
                             _hd2245423101_
                             _hd2245123091_)))
                        (_g2239123070_ _g2240923074_))))
                (_g2239123070_ _g2240923074_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2239123070_
                                                     _g2240923074_))
                                                (_g2239123070_
                                                 _g2240923074_))))
                                        (_g2239123070_ _g2240923074_)))))
                             (let ((_g2238923180_
                                    (lambda (_g2240923130_)
                                      (if (gx#stx-pair? _g2240923130_)
                                          (let ((_e2243523133_
                                                 (gx#syntax-e _g2240923130_)))
                                            (let ((_hd2243623137_
                                                   (##car _e2243523133_))
                                                  (_tl2243723140_
                                                   (##cdr _e2243523133_)))
                                              (if (gx#identifier?
                                                   _hd2243623137_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core::<match>[1]#_g29552_|
                                                       _hd2243623137_)
                                                      (if (gx#stx-pair?
                                                           _tl2243723140_)
                                                          (let ((_e2243823143_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2243723140_)))
                    (let ((_hd2243923147_ (##car _e2243823143_))
                          (_tl2244023150_ (##cdr _e2243823143_)))
                      (if (gx#stx-pair? _tl2244023150_)
                          (let ((_e2244123153_ (gx#syntax-e _tl2244023150_)))
                            (let ((_hd2244223157_ (##car _e2244123153_))
                                  (_tl2244323160_ (##cdr _e2244123153_)))
                              (if (gx#stx-null? _tl2244323160_)
                                  ((lambda (_L23163_ _L23165_)
                                     (cons 'cons:
                                           (cons (_parse122036_ _L23165_)
                                                 (cons (_parse122036_ _L23163_)
                                                       '()))))
                                   _hd2244223157_
                                   _hd2243923147_)
                                  (_g2239023126_ _g2240923130_))))
                          (_g2239023126_ _g2240923130_))))
                  (_g2239023126_ _g2240923130_))
              (_g2239023126_ _g2240923130_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2239023126_
                                                   _g2240923130_))))
                                          (_g2239023126_ _g2240923130_)))))
                               (let ((_g2238823220_
                                      (lambda (_g2240923184_)
                                        (if (gx#stx-pair? _g2240923184_)
                                            (let ((_e2242723187_
                                                   (gx#syntax-e
                                                    _g2240923184_)))
                                              (let ((_hd2242823191_
                                                     (##car _e2242723187_))
                                                    (_tl2242923194_
                                                     (##cdr _e2242723187_)))
                                                (if (gx#identifier?
                                                     _hd2242823191_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core::<match>[1]#_g29553_|
                                                         _hd2242823191_)
                                                        (if (gx#stx-pair?
                                                             _tl2242923194_)
                                                            (let ((_e2243023197_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl2242923194_)))
                      (let ((_hd2243123201_ (##car _e2243023197_))
                            (_tl2243223204_ (##cdr _e2243023197_)))
                        (if (gx#stx-null? _tl2243223204_)
                            ((lambda (_L23207_)
                               (cons 'not:
                                     (cons (_parse122036_ _L23207_) '())))
                             _hd2243123201_)
                            (_g2238923180_ _g2240923184_))))
                    (_g2238923180_ _g2240923184_))
                (_g2238923180_ _g2240923184_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2238923180_
                                                     _g2240923184_))))
                                            (_g2238923180_ _g2240923184_)))))
                                 (let ((_g2238723305_
                                        (lambda (_g2240923224_)
                                          (if (gx#stx-pair? _g2240923224_)
                                              (let ((_e2242323227_
                                                     (gx#syntax-e
                                                      _g2240923224_)))
                                                (let ((_hd2242423231_
                                                       (##car _e2242323227_))
                                                      (_tl2242523234_
                                                       (##cdr _e2242323227_)))
                                                  (if (gx#identifier?
                                                       _hd2242423231_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core::<match>[1]#_g29554_|
                                                           _hd2242423231_)
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
                                       (cons 'or:
                                             (gx#stx-map
                                              _parse122036_
                                              _L23237_)))))))
                             (let ((_g2324723301_
                                    (lambda (_g2325023275_)
                                      (if (gx#stx-pair? _g2325023275_)
                                          (let ((_e2325223278_
                                                 (gx#syntax-e _g2325023275_)))
                                            (let ((_hd2325323282_
                                                   (##car _e2325223278_))
                                                  (_tl2325423285_
                                                   (##cdr _e2325223278_)))
                                              (if (gx#stx-null? _tl2325423285_)
                                                  ((lambda (_L23288_)
                                                     (_parse122036_ _L23288_))
                                                   _hd2325323282_)
                                                  (_g2324823271_
                                                   _g2325023275_))))
                                          (_g2324823271_ _g2325023275_)))))
                               (_g2324723301_ _L23237_))))
                         (_g2238823220_ _g2240923224_)))
                   _tl2242523234_)
                  (_g2238823220_ _g2240923224_))
              (_g2238823220_ _g2240923224_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2238823220_ _g2240923224_)))))
                                   (let ((_g2238623390_
                                          (lambda (_g2240923309_)
                                            (if (gx#stx-pair? _g2240923309_)
                                                (let ((_e2241923312_
                                                       (gx#syntax-e
                                                        _g2240923309_)))
                                                  (let ((_hd2242023316_
                                                         (##car _e2241923312_))
                                                        (_tl2242123319_
                                                         (##cdr _e2241923312_)))
                                                    (if (gx#identifier?
                                                         _hd2242023316_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core::<match>[1]#_g29555_|
                                                             _hd2242023316_)
                                                            ((lambda (_L23322_)
                                                               (if (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L23322_)
                           (let ((_g2333423345_
                                  (lambda (_g2333523341_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g2333523341_))))
                             (let ((_g2333323356_
                                    (lambda (_g2333523349_)
                                      ((lambda ()
                                         (cons 'and:
                                               (gx#stx-map
                                                _parse122036_
                                                _L23322_)))))))
                               (let ((_g2333223386_
                                      (lambda (_g2333523360_)
                                        (if (gx#stx-pair? _g2333523360_)
                                            (let ((_e2333723363_
                                                   (gx#syntax-e
                                                    _g2333523360_)))
                                              (let ((_hd2333823367_
                                                     (##car _e2333723363_))
                                                    (_tl2333923370_
                                                     (##cdr _e2333723363_)))
                                                (if (gx#stx-null?
                                                     _tl2333923370_)
                                                    ((lambda (_L23373_)
                                                       (_parse122036_
                                                        _L23373_))
                                                     _hd2333823367_)
                                                    (_g2333323356_
                                                     _g2333523360_))))
                                            (_g2333323356_ _g2333523360_)))))
                                 (_g2333223386_ _L23322_))))
                           (_g2238723305_ _g2240923309_)))
                     _tl2242123319_)
                    (_g2238723305_ _g2240923309_))
                (_g2238723305_ _g2240923309_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2238723305_
                                                 _g2240923309_)))))
                                     (let ((_g2238523630_
                                            (lambda (_g2240923394_)
                                              (if (gx#stx-pair? _g2240923394_)
                                                  (let ((_e2241223397_
                                                         (gx#syntax-e
                                                          _g2240923394_)))
                                                    (let ((_hd2241323401_
                                                           (##car _e2241223397_))
                                                          (_tl2241423404_
                                                           (##cdr _e2241223397_)))
                                                      (if (gx#identifier?
                                                           _hd2241323401_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core::<match>[1]#_g29556_|
                                                               _hd2241323401_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2241423404_)
                          (let ((_e2241523407_ (gx#syntax-e _tl2241423404_)))
                            (let ((_hd2241623411_ (##car _e2241523407_))
                                  (_tl2241723414_ (##cdr _e2241523407_)))
                              ((lambda (_L23417_ _L23419_)
                                 (let ((_g2343623468_
                                        (lambda (_g2343723464_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g2343723464_))))
                                   (let ((_g2343523479_
                                          (lambda (_g2343723472_)
                                            ((lambda ()
                                               (_parse-error22043_
                                                _hd22383_))))))
                                     (let ((_g2343423547_
                                            (lambda (_g2343723483_)
                                              (if (gx#stx-pair? _g2343723483_)
                                                  (let ((_e2345123486_
                                                         (gx#syntax-e
                                                          _g2343723483_)))
                                                    (let ((_hd2345223490_
                                                           (##car _e2345123486_))
                                                          (_tl2345323493_
                                                           (##cdr _e2345123486_)))
                                                      (if (gx#stx-datum?
                                                           _hd2345223490_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2345223490_)
                              '::)
                      (if (gx#stx-pair? _tl2345323493_)
                          (let ((_e2345423496_ (gx#syntax-e _tl2345323493_)))
                            (let ((_hd2345523500_ (##car _e2345423496_))
                                  (_tl2345623503_ (##cdr _e2345423496_)))
                              (if (gx#stx-pair? _tl2345623503_)
                                  (let ((_e2345723506_
                                         (gx#syntax-e _tl2345623503_)))
                                    (let ((_hd2345823510_
                                           (##car _e2345723506_))
                                          (_tl2345923513_
                                           (##cdr _e2345723506_)))
                                      (if (gx#identifier? _hd2345823510_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core::<match>[1]#_g29557_|
                                               _hd2345823510_)
                                              (if (gx#stx-pair? _tl2345923513_)
                                                  (let ((_e2346023516_
                                                         (gx#syntax-e
                                                          _tl2345923513_)))
                                                    (let ((_hd2346123520_
                                                           (##car _e2346023516_))
                                                          (_tl2346223523_
                                                           (##cdr _e2346023516_)))
                                                      (if (gx#stx-null?
                                                           _tl2346223523_)
                                                          ((lambda (_L23526_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L23528_)
                     (cons '?:
                           (cons _L23419_
                                 (cons '::
                                       (cons _L23528_
                                             (cons '=>:
                                                   (cons (_parse122036_
                                                          _L23526_)
                                                         '())))))))
                   _hd2346123520_
                   _hd2345523500_)
                  (_g2343523479_ _g2343723483_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2343523479_
                                                   _g2343723483_))
                                              (_g2343523479_ _g2343723483_))
                                          (_g2343523479_ _g2343723483_))))
                                  (_g2343523479_ _g2343723483_))))
                          (_g2343523479_ _g2343723483_))
                      (_g2343523479_ _g2343723483_))
                  (_g2343523479_ _g2343723483_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2343523479_
                                                   _g2343723483_)))))
                                       (let ((_g2343323587_
                                              (lambda (_g2343723551_)
                                                (if (gx#stx-pair?
                                                     _g2343723551_)
                                                    (let ((_e2344323554_
                                                           (gx#syntax-e
                                                            _g2343723551_)))
                                                      (let ((_hd2344423558_
                                                             (##car _e2344323554_))
                                                            (_tl2344523561_
                                                             (##cdr _e2344323554_)))
                                                        (if (gx#identifier?
                                                             _hd2344423558_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core::<match>[1]#_g29558_|
                         _hd2344423558_)
                        (if (gx#stx-pair? _tl2344523561_)
                            (let ((_e2344623564_ (gx#syntax-e _tl2344523561_)))
                              (let ((_hd2344723568_ (##car _e2344623564_))
                                    (_tl2344823571_ (##cdr _e2344623564_)))
                                (if (gx#stx-null? _tl2344823571_)
                                    ((lambda (_L23574_)
                                       (cons '?:
                                             (cons _L23419_
                                                   (cons '=>:
                                                         (cons (_parse122036_
                                                                _L23574_)
                                                               '())))))
                                     _hd2344723568_)
                                    (_g2343423547_ _g2343723551_))))
                            (_g2343423547_ _g2343723551_))
                        (_g2343423547_ _g2343723551_))
                    (_g2343423547_ _g2343723551_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2343423547_
                                                     _g2343723551_)))))
                                         (let ((_g2343223615_
                                                (lambda (_g2343723591_)
                                                  (if (gx#stx-pair?
                                                       _g2343723591_)
                                                      (let ((_e2343923594_
                                                             (gx#syntax-e
                                                              _g2343723591_)))
                                                        (let ((_hd2344023598_
                                                               (##car _e2343923594_))
                                                              (_tl2344123601_
                                                               (##cdr _e2343923594_)))
                                                          (if (gx#stx-null?
                                                               _tl2344123601_)
                                                              ((lambda (_L23604_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '?:
                               (cons _L23419_
                                     (cons (_parse122036_ _L23604_) '()))))
                       _hd2344023598_)
                      (_g2343323587_ _g2343723591_))))
              (_g2343323587_ _g2343723591_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_g2343123626_
                                                  (lambda (_g2343723619_)
                                                    (if (gx#stx-null?
                                                         _g2343723619_)
                                                        ((lambda ()
                                                           (cons '?:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L23419_ '()))))
                (_g2343223615_ _g2343723619_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2343123626_ _L23417_))))))))
                               _tl2241723414_
                               _hd2241623411_)))
                          (_g2238623390_ _g2240923394_))
                      (_g2238623390_ _g2240923394_))
                  (_g2238623390_ _g2240923394_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2238623390_
                                                   _g2240923394_)))))
                                       (_g2238523630_
                                        _hd22383_)))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (_parse-list22038_
                             (lambda (_body22218_)
                               (let ((_g2222422252_
                                      (lambda (_g2222522248_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g2222522248_))))
                                 (let ((_g2222322263_
                                        (lambda (_g2222522256_)
                                          ((lambda ()
                                             (if (gx#stx-null? _body22218_)
                                                 (cons 'null: '())
                                                 (if (not (gx#stx-pair?
                                                           _body22218_))
                                                     (_parse122036_
                                                      _body22218_)
                                                     (_parse-error22043_
                                                      _body22218_))))))))
                                   (let ((_g2222222295_
                                          (lambda (_g2222522267_)
                                            (if (gx#stx-pair? _g2222522267_)
                                                (let ((_e2224422270_
                                                       (gx#syntax-e
                                                        _g2222522267_)))
                                                  (let ((_hd2224522274_
                                                         (##car _e2224422270_))
                                                        (_tl2224622277_
                                                         (##cdr _e2224422270_)))
                                                    ((lambda (_L22280_
                                                              _L22282_)
                                                       (if (not (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L22282_))
                   (cons 'cons:
                         (cons (_parse122036_ _L22282_)
                               (cons (_parse-list22038_ _L22280_) '())))
                   (_g2222322263_ _g2222522267_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _tl2224622277_
                                                     _hd2224522274_)))
                                                (_g2222322263_
                                                 _g2222522267_)))))
                                     (let ((_g2222122339_
                                            (lambda (_g2222522299_)
                                              (if (gx#stx-pair? _g2222522299_)
                                                  (let ((_e2223622302_
                                                         (gx#syntax-e
                                                          _g2222522299_)))
                                                    (let ((_hd2223722306_
                                                           (##car _e2223622302_))
                                                          (_tl2223822309_
                                                           (##cdr _e2223622302_)))
                                                      (if (gx#stx-pair?
                                                           _tl2223822309_)
                                                          (let ((_e2223922312_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2223822309_)))
                    (let ((_hd2224022316_ (##car _e2223922312_))
                          (_tl2224122319_ (##cdr _e2223922312_)))
                      ((lambda (_L22322_ _L22324_ _L22325_)
                         (if (gx#ellipsis? _L22324_)
                             (cons 'splice:
                                   (cons (_parse122036_ _L22325_)
                                         (cons (_parse-list22038_ _L22322_)
                                               '())))
                             (_g2222222295_ _g2222522299_)))
                       _tl2224122319_
                       _hd2224022316_
                       _hd2223722306_)))
                  (_g2222222295_ _g2222522299_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2222222295_
                                                   _g2222522299_)))))
                                       (let ((_g2222022379_
                                              (lambda (_g2222522343_)
                                                (if (gx#stx-pair?
                                                     _g2222522343_)
                                                    (let ((_e2222722346_
                                                           (gx#syntax-e
                                                            _g2222522343_)))
                                                      (let ((_hd2222822350_
                                                             (##car _e2222722346_))
                                                            (_tl2222922353_
                                                             (##cdr _e2222722346_)))
                                                        (if (gx#stx-datum?
                                                             _hd2222822350_)
                                                            (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _hd2222822350_)
                                '::)
                        (if (gx#stx-pair? _tl2222922353_)
                            (let ((_e2223022356_ (gx#syntax-e _tl2222922353_)))
                              (let ((_hd2223122360_ (##car _e2223022356_))
                                    (_tl2223222363_ (##cdr _e2223022356_)))
                                (if (gx#stx-null? _tl2223222363_)
                                    ((lambda (_L22366_)
                                       (_parse122036_ _L22366_))
                                     _hd2223122360_)
                                    (_g2222122339_ _g2222522343_))))
                            (_g2222122339_ _g2222522343_))
                        (_g2222122339_ _g2222522343_))
                    (_g2222122339_ _g2222522343_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2222122339_
                                                     _g2222522343_)))))
                                         (_g2222022379_ _body22218_))))))))
                            (_parse-vector22039_
                             (lambda (_body22215_)
                               (if (_simple-vector?22040_ _body22215_)
                                   (cons 'simple:
                                         (cons (gx#stx-map
                                                _parse122036_
                                                _body22215_)
                                               '()))
                                   (cons 'list:
                                         (cons (_parse-list22038_ _body22215_)
                                               '())))))
                            (_simple-vector?22040_
                             (lambda (_body22152_)
                               (let ((_g2215622168_
                                      (lambda (_g2215722164_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g2215722164_))))
                                 (let ((_g2215522179_
                                        (lambda (_g2215722172_)
                                          ((lambda ()
                                             (gx#stx-null? _body22152_))))))
                                   (let ((_g2215422211_
                                          (lambda (_g2215722183_)
                                            (if (gx#stx-pair? _g2215722183_)
                                                (let ((_e2216022186_
                                                       (gx#syntax-e
                                                        _g2215722183_)))
                                                  (let ((_hd2216122190_
                                                         (##car _e2216022186_))
                                                        (_tl2216222193_
                                                         (##cdr _e2216022186_)))
                                                    ((lambda (_L22196_
                                                              _L22198_)
                                                       (if (not (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L22198_))
                   (_simple-vector?22040_ _L22196_)
                   '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _tl2216222193_
                                                     _hd2216122190_)))
                                                (_g2215522179_
                                                 _g2215722183_)))))
                                     (_g2215422211_ _body22152_))))))
                            (_parse-class-body22041_
                             (lambda (_body22061_)
                               ((letrec ((_recur22064_
                                          (lambda (_rest22067_)
                                            (let ((_g2207122087_
                                                   (lambda (_g2207222083_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2207222083_))))
                                              (let ((_g2207022098_
                                                     (lambda (_g2207222091_)
                                                       ((lambda ()
                                                          (if (gx#stx-null?
                                                               _rest22067_)
                                                              '()
                                                              (_parse-error22043_
                                                               _rest22067_)))))))
                                                (let ((_g2206922148_
                                                       (lambda (_g2207222102_)
                                                         (if (gx#stx-pair?
                                                              _g2207222102_)
                                                             (let ((_e2207622105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g2207222102_)))
                       (let ((_hd2207722109_ (##car _e2207622105_))
                             (_tl2207822112_ (##cdr _e2207622105_)))
                         (if (gx#stx-pair? _tl2207822112_)
                             (let ((_e2207922115_
                                    (gx#syntax-e _tl2207822112_)))
                               (let ((_hd2208022119_ (##car _e2207922115_))
                                     (_tl2208122122_ (##cdr _e2207922115_)))
                                 ((lambda (_L22125_ _L22127_ _L22128_)
                                    (if (gx#stx-keyword? _L22128_)
                                        (cons* _L22128_
                                               (_parse122036_ _L22127_)
                                               (_recur22064_ _L22125_))
                                        (_g2207022098_ _g2207222102_)))
                                  _tl2208122122_
                                  _hd2208022119_
                                  _hd2207722109_)))
                             (_g2207022098_ _g2207222102_))))
                     (_g2207022098_ _g2207222102_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2206922148_
                                                   _rest22067_)))))))
                                  _recur22064_)
                                _body22061_))))
                     (_parse122036_ _stx22032_)))))))
        (lambda _g29560_
          (let ((_g29559_ (length _g29560_)))
            (cond ((fx= _g29559_ 1)
                   (apply (lambda (_stx23638_)
                            (let ((_match-stx23641_ '#f))
                              (_opt-lambda2203023634_
                               _stx23638_
                               _match-stx23641_)))
                          _g29560_))
                  ((fx= _g29559_ 2) (apply _opt-lambda2203023634_ _g29560_))
                  (else (error "No clause matching arguments" _g29560_)))))))
    (define |gerbil/core::<match>[1]#match-pattern?|
      (lambda (_stx22016_)
        (call-with-escape
         (lambda (_E22020_)
           (with-exception-handler
            (let ((_E!22023_ (current-exception-handler)))
              (lambda (_e22026_)
                (if (gx#syntax-error? _e22026_)
                    (_E22020_ '#f)
                    (_E!22023_ _e22026_))))
            (lambda ()
              (begin
                (|gerbil/core::<match>[1]#parse-match-pattern| _stx22016_)
                '#t)))))))
    (define |gerbil/core::<match>[1]#match-pattern-vars|
      (lambda (_ptree20871_)
        (letrec ((_loop20874_
                  (lambda (_ptree21149_ _vars21151_ _K21152_)
                    (let ((_g2116421254_
                           (lambda (_g2116521250_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2116521250_))))
                      (let ((_g2116321265_
                             (lambda (_g2116521258_)
                               ((lambda () (_K21152_ _vars21151_))))))
                        (let ((_g2116221312_
                               (lambda (_g2116521269_)
                                 (if (gx#stx-pair? _g2116521269_)
                                     (let ((_e2124321272_
                                            (gx#syntax-e _g2116521269_)))
                                       (let ((_hd2124421276_
                                              (##car _e2124321272_))
                                             (_tl2124521279_
                                              (##cdr _e2124321272_)))
                                         (if (gx#stx-datum? _hd2124421276_)
                                             (if (equal? (gx#stx-e
                                                          _hd2124421276_)
                                                         'var:)
                                                 (if (gx#stx-pair?
                                                      _tl2124521279_)
                                                     (let ((_e2124621282_
                                                            (gx#syntax-e
                                                             _tl2124521279_)))
                                                       (let ((_hd2124721286_
                                                              (##car _e2124621282_))
                                                             (_tl2124821289_
                                                              (##cdr _e2124621282_)))
                                                         (if (gx#stx-null?
                                                              _tl2124821289_)
                                                             ((lambda (_L21292_)
                                                                (if (find (lambda (_g2130621308_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (gx#bound-identifier=?
                                     _g2130621308_
                                     _L21292_))
                                  _vars21151_)
                            (_K21152_ _vars21151_)
                            (_K21152_ (cons _L21292_ _vars21151_))))
                      _hd2124721286_)
                     (_g2116321265_ _g2116521269_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2116321265_
                                                      _g2116521269_))
                                                 (_g2116321265_ _g2116521269_))
                                             (_g2116321265_ _g2116521269_))))
                                     (_g2116321265_ _g2116521269_)))))
                          (let ((_g2116121364_
                                 (lambda (_g2116521316_)
                                   (if (gx#stx-pair? _g2116521316_)
                                       (let ((_e2123321319_
                                              (gx#syntax-e _g2116521316_)))
                                         (let ((_hd2123421323_
                                                (##car _e2123321319_))
                                               (_tl2123521326_
                                                (##cdr _e2123321319_)))
                                           (if (gx#stx-datum? _hd2123421323_)
                                               (if (equal? (gx#stx-e
                                                            _hd2123421323_)
                                                           'class:)
                                                   (if (gx#stx-pair?
                                                        _tl2123521326_)
                                                       (let ((_e2123621329_
                                                              (gx#syntax-e
                                                               _tl2123521326_)))
                                                         (let ((_hd2123721333_
                                                                (##car _e2123621329_))
                                                               (_tl2123821336_
                                                                (##cdr _e2123621329_)))
                                                           (if (gx#stx-pair?
                                                                _tl2123821336_)
                                                               (let ((_e2123921339_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2123821336_)))
                         (let ((_hd2124021343_ (##car _e2123921339_))
                               (_tl2124121346_ (##cdr _e2123921339_)))
                           (if (gx#stx-null? _tl2124121346_)
                               ((lambda (_L21349_)
                                  (_loop-class-list20878_
                                   _L21349_
                                   _vars21151_
                                   _K21152_))
                                _hd2124021343_)
                               (_g2116221312_ _g2116521316_))))
                       (_g2116221312_ _g2116521316_))))
               (_g2116221312_ _g2116521316_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2116221312_
                                                    _g2116521316_))
                                               (_g2116221312_ _g2116521316_))))
                                       (_g2116221312_ _g2116521316_)))))
                            (let ((_g2116021416_
                                   (lambda (_g2116521368_)
                                     (if (gx#stx-pair? _g2116521368_)
                                         (let ((_e2122321371_
                                                (gx#syntax-e _g2116521368_)))
                                           (let ((_hd2122421375_
                                                  (##car _e2122321371_))
                                                 (_tl2122521378_
                                                  (##cdr _e2122321371_)))
                                             (if (gx#stx-datum? _hd2122421375_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2122421375_)
                                                             'struct:)
                                                     (if (gx#stx-pair?
                                                          _tl2122521378_)
                                                         (let ((_e2122621381_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2122521378_)))
                   (let ((_hd2122721385_ (##car _e2122621381_))
                         (_tl2122821388_ (##cdr _e2122621381_)))
                     (if (gx#stx-pair? _tl2122821388_)
                         (let ((_e2122921391_ (gx#syntax-e _tl2122821388_)))
                           (let ((_hd2123021395_ (##car _e2122921391_))
                                 (_tl2123121398_ (##cdr _e2122921391_)))
                             (if (gx#stx-null? _tl2123121398_)
                                 ((lambda (_L21401_)
                                    (_loop-vector20876_
                                     _L21401_
                                     _vars21151_
                                     _K21152_))
                                  _hd2123021395_)
                                 (_g2116121364_ _g2116521368_))))
                         (_g2116121364_ _g2116521368_))))
                 (_g2116121364_ _g2116521368_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2116121364_
                                                      _g2116521368_))
                                                 (_g2116121364_
                                                  _g2116521368_))))
                                         (_g2116121364_ _g2116521368_)))))
                              (let ((_g2115921462_
                                     (lambda (_g2116521420_)
                                       (if (gx#stx-pair? _g2116521420_)
                                           (let ((_e2121621423_
                                                  (gx#syntax-e _g2116521420_)))
                                             (let ((_hd2121721427_
                                                    (##car _e2121621423_))
                                                   (_tl2121821430_
                                                    (##cdr _e2121621423_)))
                                               (if (gx#stx-pair?
                                                    _tl2121821430_)
                                                   (let ((_e2121921433_
                                                          (gx#syntax-e
                                                           _tl2121821430_)))
                                                     (let ((_hd2122021437_
                                                            (##car _e2121921433_))
                                                           (_tl2122121440_
                                                            (##cdr _e2121921433_)))
                                                       (if (gx#stx-null?
                                                            _tl2122121440_)
                                                           ((lambda (_L21443_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L21445_)
                      (if (let ((_$e21458_ (gx#stx-eq? 'values: _L21445_)))
                            (if _$e21458_
                                _$e21458_
                                (gx#stx-eq? 'vector: _L21445_)))
                          (_loop-vector20876_ _L21443_ _vars21151_ _K21152_)
                          (_g2116021416_ _g2116521420_)))
                    _hd2122021437_
                    _hd2121721427_)
                   (_g2116021416_ _g2116521420_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2116021416_
                                                    _g2116521420_))))
                                           (_g2116021416_ _g2116521420_)))))
                                (let ((_g2115821502_
                                       (lambda (_g2116521466_)
                                         (if (gx#stx-pair? _g2116521466_)
                                             (let ((_e2120821469_
                                                    (gx#syntax-e
                                                     _g2116521466_)))
                                               (let ((_hd2120921473_
                                                      (##car _e2120821469_))
                                                     (_tl2121021476_
                                                      (##cdr _e2120821469_)))
                                                 (if (gx#stx-datum?
                                                      _hd2120921473_)
                                                     (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd2120921473_)
                         'box:)
                 (if (gx#stx-pair? _tl2121021476_)
                     (let ((_e2121121479_ (gx#syntax-e _tl2121021476_)))
                       (let ((_hd2121221483_ (##car _e2121121479_))
                             (_tl2121321486_ (##cdr _e2121121479_)))
                         (if (gx#stx-null? _tl2121321486_)
                             ((lambda (_L21489_)
                                (_loop20874_ _L21489_ _vars21151_ _K21152_))
                              _hd2121221483_)
                             (_g2115921462_ _g2116521466_))))
                     (_g2115921462_ _g2116521466_))
                 (_g2115921462_ _g2116521466_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2115921462_
                                                      _g2116521466_))))
                                             (_g2115921462_ _g2116521466_)))))
                                  (let ((_g2115721561_
                                         (lambda (_g2116521506_)
                                           (if (gx#stx-pair? _g2116521506_)
                                               (let ((_e2119821509_
                                                      (gx#syntax-e
                                                       _g2116521506_)))
                                                 (let ((_hd2119921513_
                                                        (##car _e2119821509_))
                                                       (_tl2120021516_
                                                        (##cdr _e2119821509_)))
                                                   (if (gx#stx-datum?
                                                        _hd2119921513_)
                                                       (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd2119921513_)
                           'splice:)
                   (if (gx#stx-pair? _tl2120021516_)
                       (let ((_e2120121519_ (gx#syntax-e _tl2120021516_)))
                         (let ((_hd2120221523_ (##car _e2120121519_))
                               (_tl2120321526_ (##cdr _e2120121519_)))
                           (if (gx#stx-pair? _tl2120321526_)
                               (let ((_e2120421529_
                                      (gx#syntax-e _tl2120321526_)))
                                 (let ((_hd2120521533_ (##car _e2120421529_))
                                       (_tl2120621536_ (##cdr _e2120421529_)))
                                   (if (gx#stx-null? _tl2120621536_)
                                       ((lambda (_L21539_ _L21541_)
                                          (_loop20874_
                                           _L21541_
                                           _vars21151_
                                           (lambda (_g2155521557_)
                                             (_loop20874_
                                              _L21539_
                                              _g2155521557_
                                              _K21152_))))
                                        _hd2120521533_
                                        _hd2120221523_)
                                       (_g2115821502_ _g2116521506_))))
                               (_g2115821502_ _g2116521506_))))
                       (_g2115821502_ _g2116521506_))
                   (_g2115821502_ _g2116521506_))
               (_g2115821502_ _g2116521506_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2115821502_
                                                _g2116521506_)))))
                                    (let ((_g2115621620_
                                           (lambda (_g2116521565_)
                                             (if (gx#stx-pair? _g2116521565_)
                                                 (let ((_e2118721568_
                                                        (gx#syntax-e
                                                         _g2116521565_)))
                                                   (let ((_hd2118821572_
                                                          (##car _e2118721568_))
                                                         (_tl2118921575_
                                                          (##cdr _e2118721568_)))
                                                     (if (gx#stx-datum?
                                                          _hd2118821572_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2118821572_)
                             'cons:)
                     (if (gx#stx-pair? _tl2118921575_)
                         (let ((_e2119021578_ (gx#syntax-e _tl2118921575_)))
                           (let ((_hd2119121582_ (##car _e2119021578_))
                                 (_tl2119221585_ (##cdr _e2119021578_)))
                             (if (gx#stx-pair? _tl2119221585_)
                                 (let ((_e2119321588_
                                        (gx#syntax-e _tl2119221585_)))
                                   (let ((_hd2119421592_ (##car _e2119321588_))
                                         (_tl2119521595_
                                          (##cdr _e2119321588_)))
                                     (if (gx#stx-null? _tl2119521595_)
                                         ((lambda (_L21598_ _L21600_)
                                            (_loop20874_
                                             _L21600_
                                             _vars21151_
                                             (lambda (_g2161421616_)
                                               (_loop20874_
                                                _L21598_
                                                _g2161421616_
                                                _K21152_))))
                                          _hd2119421592_
                                          _hd2119121582_)
                                         (_g2115721561_ _g2116521565_))))
                                 (_g2115721561_ _g2116521565_))))
                         (_g2115721561_ _g2116521565_))
                     (_g2115721561_ _g2116521565_))
                 (_g2115721561_ _g2116521565_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2115721561_
                                                  _g2116521565_)))))
                                      (let ((_g2115521660_
                                             (lambda (_g2116521624_)
                                               (if (gx#stx-pair? _g2116521624_)
                                                   (let ((_e2117921627_
                                                          (gx#syntax-e
                                                           _g2116521624_)))
                                                     (let ((_hd2118021631_
                                                            (##car _e2117921627_))
                                                           (_tl2118121634_
                                                            (##cdr _e2117921627_)))
                                                       (if (gx#stx-datum?
                                                            _hd2118021631_)
                                                           (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd2118021631_)
                               'not:)
                       (if (gx#stx-pair? _tl2118121634_)
                           (let ((_e2118221637_ (gx#syntax-e _tl2118121634_)))
                             (let ((_hd2118321641_ (##car _e2118221637_))
                                   (_tl2118421644_ (##cdr _e2118221637_)))
                               (if (gx#stx-null? _tl2118421644_)
                                   ((lambda (_L21647_)
                                      (_loop20874_
                                       _L21647_
                                       _vars21151_
                                       _K21152_))
                                    _hd2118321641_)
                                   (_g2115621620_ _g2116521624_))))
                           (_g2115621620_ _g2116521624_))
                       (_g2115621620_ _g2116521624_))
                   (_g2115621620_ _g2116521624_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2115621620_
                                                    _g2116521624_)))))
                                        (let ((_g2115421759_
                                               (lambda (_g2116521664_)
                                                 (if (gx#stx-pair?
                                                      _g2116521664_)
                                                     (let ((_e2117521667_
                                                            (gx#syntax-e
                                                             _g2116521664_)))
                                                       (let ((_hd2117621671_
                                                              (##car _e2117521667_))
                                                             (_tl2117721674_
                                                              (##cdr _e2117521667_)))
                                                         ((lambda (_L21677_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L21679_)
                    (if (let ((_$e21690_ (gx#stx-eq? 'and: _L21679_)))
                          (if _$e21690_ _$e21690_ (gx#stx-eq? 'or: _L21679_)))
                        (let ((_g2169521707_
                               (lambda (_g2169621703_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2169621703_))))
                          (let ((_g2169421718_
                                 (lambda (_g2169621711_)
                                   ((lambda () (_K21152_ _vars21151_))))))
                            (let ((_g2169321755_
                                   (lambda (_g2169621722_)
                                     (if (gx#stx-pair? _g2169621722_)
                                         (let ((_e2169921725_
                                                (gx#syntax-e _g2169621722_)))
                                           (let ((_hd2170021729_
                                                  (##car _e2169921725_))
                                                 (_tl2170121732_
                                                  (##cdr _e2169921725_)))
                                             ((lambda (_L21735_ _L21737_)
                                                (_loop20874_
                                                 _L21737_
                                                 _vars21151_
                                                 (lambda (_g2174921751_)
                                                   (_loop20874_
                                                    (cons _L21679_ _L21735_)
                                                    _g2174921751_
                                                    _K21152_))))
                                              _tl2170121732_
                                              _hd2170021729_)))
                                         (_g2169421718_ _g2169621722_)))))
                              (_g2169321755_ _L21677_))))
                        (_g2115521660_ _g2116521664_)))
                  _tl2117721674_
                  _hd2117621671_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2115521660_
                                                      _g2116521664_)))))
                                          (let ((_g2115322012_
                                                 (lambda (_g2116521763_)
                                                   (if (gx#stx-pair?
                                                        _g2116521763_)
                                                       (let ((_e2116721766_
                                                              (gx#syntax-e
                                                               _g2116521763_)))
                                                         (let ((_hd2116821770_
                                                                (##car _e2116721766_))
                                                               (_tl2116921773_
                                                                (##cdr _e2116721766_)))
                                                           (if (gx#stx-datum?
                                                                _hd2116821770_)
                                                               (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _hd2116821770_)
                                   '?:)
                           (if (gx#stx-pair? _tl2116921773_)
                               (let ((_e2117021776_
                                      (gx#syntax-e _tl2116921773_)))
                                 (let ((_hd2117121780_ (##car _e2117021776_))
                                       (_tl2117221783_ (##cdr _e2117021776_)))
                                   ((lambda (_L21786_)
                                      (let ((_g2180221839_
                                             (lambda (_g2180321835_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2180321835_))))
                                        (let ((_g2180121850_
                                               (lambda (_g2180321843_)
                                                 ((lambda ()
                                                    (_K21152_ _vars21151_))))))
                                          (let ((_g2180021928_
                                                 (lambda (_g2180321854_)
                                                   (if (gx#stx-pair?
                                                        _g2180321854_)
                                                       (let ((_e2181921857_
                                                              (gx#syntax-e
                                                               _g2180321854_)))
                                                         (let ((_hd2182021861_
                                                                (##car _e2181921857_))
                                                               (_tl2182121864_
                                                                (##cdr _e2181921857_)))
                                                           (if (gx#stx-pair?
                                                                _tl2182121864_)
                                                               (let ((_e2182221867_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2182121864_)))
                         (let ((_hd2182321871_ (##car _e2182221867_))
                               (_tl2182421874_ (##cdr _e2182221867_)))
                           (if (gx#stx-datum? _hd2182321871_)
                               (if (equal? (gx#stx-e _hd2182321871_) '::)
                                   (if (gx#stx-pair? _tl2182421874_)
                                       (let ((_e2182521877_
                                              (gx#syntax-e _tl2182421874_)))
                                         (let ((_hd2182621881_
                                                (##car _e2182521877_))
                                               (_tl2182721884_
                                                (##cdr _e2182521877_)))
                                           (if (gx#stx-pair? _tl2182721884_)
                                               (let ((_e2182821887_
                                                      (gx#syntax-e
                                                       _tl2182721884_)))
                                                 (let ((_hd2182921891_
                                                        (##car _e2182821887_))
                                                       (_tl2183021894_
                                                        (##cdr _e2182821887_)))
                                                   (if (gx#stx-datum?
                                                        _hd2182921891_)
                                                       (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd2182921891_)
                           '=>:)
                   (if (gx#stx-pair? _tl2183021894_)
                       (let ((_e2183121897_ (gx#syntax-e _tl2183021894_)))
                         (let ((_hd2183221901_ (##car _e2183121897_))
                               (_tl2183321904_ (##cdr _e2183121897_)))
                           (if (gx#stx-null? _tl2183321904_)
                               ((lambda (_L21907_)
                                  (_loop20874_ _L21907_ _vars21151_ _K21152_))
                                _hd2183221901_)
                               (_g2180121850_ _g2180321854_))))
                       (_g2180121850_ _g2180321854_))
                   (_g2180121850_ _g2180321854_))
               (_g2180121850_ _g2180321854_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2180121850_ _g2180321854_))))
                                       (_g2180121850_ _g2180321854_))
                                   (_g2180121850_ _g2180321854_))
                               (_g2180121850_ _g2180321854_))))
                       (_g2180121850_ _g2180321854_))))
               (_g2180121850_ _g2180321854_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_g2179921980_
                                                   (lambda (_g2180321932_)
                                                     (if (gx#stx-pair?
                                                          _g2180321932_)
                                                         (let ((_e2180921935_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2180321932_)))
                   (let ((_hd2181021939_ (##car _e2180921935_))
                         (_tl2181121942_ (##cdr _e2180921935_)))
                     (if (gx#stx-pair? _tl2181121942_)
                         (let ((_e2181221945_ (gx#syntax-e _tl2181121942_)))
                           (let ((_hd2181321949_ (##car _e2181221945_))
                                 (_tl2181421952_ (##cdr _e2181221945_)))
                             (if (gx#stx-datum? _hd2181321949_)
                                 (if (equal? (gx#stx-e _hd2181321949_) '=>:)
                                     (if (gx#stx-pair? _tl2181421952_)
                                         (let ((_e2181521955_
                                                (gx#syntax-e _tl2181421952_)))
                                           (let ((_hd2181621959_
                                                  (##car _e2181521955_))
                                                 (_tl2181721962_
                                                  (##cdr _e2181521955_)))
                                             (if (gx#stx-null? _tl2181721962_)
                                                 ((lambda (_L21965_)
                                                    (_loop20874_
                                                     _L21965_
                                                     _vars21151_
                                                     _K21152_))
                                                  _hd2181621959_)
                                                 (_g2180021928_
                                                  _g2180321932_))))
                                         (_g2180021928_ _g2180321932_))
                                     (_g2180021928_ _g2180321932_))
                                 (_g2180021928_ _g2180321932_))))
                         (_g2180021928_ _g2180321932_))))
                 (_g2180021928_ _g2180321932_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g2179822008_
                                                     (lambda (_g2180321984_)
                                                       (if (gx#stx-pair?
                                                            _g2180321984_)
                                                           (let ((_e2180521987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g2180321984_)))
                     (let ((_hd2180621991_ (##car _e2180521987_))
                           (_tl2180721994_ (##cdr _e2180521987_)))
                       (if (gx#stx-null? _tl2180721994_)
                           ((lambda (_L21997_)
                              (_loop20874_ _L21997_ _vars21151_ _K21152_))
                            _hd2180621991_)
                           (_g2179921980_ _g2180321984_))))
                   (_g2179921980_ _g2180321984_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2179822008_ _L21786_)))))))
                                    _tl2117221783_)))
                               (_g2115421759_ _g2116521763_))
                           (_g2115421759_ _g2116521763_))
                       (_g2115421759_ _g2116521763_))))
               (_g2115421759_ _g2116521763_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2115322012_
                                             _ptree21149_)))))))))))))))
                 (_loop-vector20876_
                  (lambda (_body21037_ _vars21039_ _K21040_)
                    (let ((_g2104321064_
                           (lambda (_g2104421060_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2104421060_))))
                      (let ((_g2104221105_
                             (lambda (_g2104421068_)
                               (if (gx#stx-pair? _g2104421068_)
                                   (let ((_e2105321071_
                                          (gx#syntax-e _g2104421068_)))
                                     (let ((_hd2105421075_
                                            (##car _e2105321071_))
                                           (_tl2105521078_
                                            (##cdr _e2105321071_)))
                                       (if (gx#stx-datum? _hd2105421075_)
                                           (if (equal? (gx#stx-e
                                                        _hd2105421075_)
                                                       'list:)
                                               (if (gx#stx-pair?
                                                    _tl2105521078_)
                                                   (let ((_e2105621081_
                                                          (gx#syntax-e
                                                           _tl2105521078_)))
                                                     (let ((_hd2105721085_
                                                            (##car _e2105621081_))
                                                           (_tl2105821088_
                                                            (##cdr _e2105621081_)))
                                                       (if (gx#stx-null?
                                                            _tl2105821088_)
                                                           ((lambda (_L21091_)
                                                              (_loop20874_
                                                               _L21091_
                                                               _vars21039_
                                                               _K21040_))
                                                            _hd2105721085_)
                                                           (_g2104321064_
                                                            _g2104421068_))))
                                                   (_g2104321064_
                                                    _g2104421068_))
                                               (_g2104321064_ _g2104421068_))
                                           (_g2104321064_ _g2104421068_))))
                                   (_g2104321064_ _g2104421068_)))))
                        (let ((_g2104121145_
                               (lambda (_g2104421109_)
                                 (if (gx#stx-pair? _g2104421109_)
                                     (let ((_e2104621112_
                                            (gx#syntax-e _g2104421109_)))
                                       (let ((_hd2104721116_
                                              (##car _e2104621112_))
                                             (_tl2104821119_
                                              (##cdr _e2104621112_)))
                                         (if (gx#stx-datum? _hd2104721116_)
                                             (if (equal? (gx#stx-e
                                                          _hd2104721116_)
                                                         'simple:)
                                                 (if (gx#stx-pair?
                                                      _tl2104821119_)
                                                     (let ((_e2104921122_
                                                            (gx#syntax-e
                                                             _tl2104821119_)))
                                                       (let ((_hd2105021126_
                                                              (##car _e2104921122_))
                                                             (_tl2105121129_
                                                              (##cdr _e2104921122_)))
                                                         (if (gx#stx-null?
                                                              _tl2105121129_)
                                                             ((lambda (_L21132_)
                                                                (_loop-list20877_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L21132_
                         _vars21039_
                         _K21040_))
                      _hd2105021126_)
                     (_g2104221105_ _g2104421109_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2104221105_
                                                      _g2104421109_))
                                                 (_g2104221105_ _g2104421109_))
                                             (_g2104221105_ _g2104421109_))))
                                     (_g2104221105_ _g2104421109_)))))
                          (_g2104121145_ _body21037_))))))
                 (_loop-list20877_
                  (lambda (_rest20967_ _vars20969_ _K20970_)
                    (let ((_g2097320985_
                           (lambda (_g2097420981_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2097420981_))))
                      (let ((_g2097220996_
                             (lambda (_g2097420989_)
                               ((lambda () (_K20970_ _vars20969_))))))
                        (let ((_g2097121033_
                               (lambda (_g2097421000_)
                                 (if (gx#stx-pair? _g2097421000_)
                                     (let ((_e2097721003_
                                            (gx#syntax-e _g2097421000_)))
                                       (let ((_hd2097821007_
                                              (##car _e2097721003_))
                                             (_tl2097921010_
                                              (##cdr _e2097721003_)))
                                         ((lambda (_L21013_ _L21015_)
                                            (_loop20874_
                                             _L21015_
                                             _vars20969_
                                             (lambda (_g2102721029_)
                                               (_loop-list20877_
                                                _L21013_
                                                _g2102721029_
                                                _K20970_))))
                                          _tl2097921010_
                                          _hd2097821007_)))
                                     (_g2097220996_ _g2097421000_)))))
                          (_g2097121033_ _rest20967_))))))
                 (_loop-class-list20878_
                  (lambda (_rest20880_ _vars20882_ _K20883_)
                    (let ((_g2088620901_
                           (lambda (_g2088720897_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2088720897_))))
                      (let ((_g2088520912_
                             (lambda (_g2088720905_)
                               ((lambda () (_K20883_ _vars20882_))))))
                        (let ((_g2088420963_
                               (lambda (_g2088720916_)
                                 (if (gx#stx-pair? _g2088720916_)
                                     (let ((_e2089020919_
                                            (gx#syntax-e _g2088720916_)))
                                       (let ((_hd2089120923_
                                              (##car _e2089020919_))
                                             (_tl2089220926_
                                              (##cdr _e2089020919_)))
                                         (if (gx#stx-pair? _tl2089220926_)
                                             (let ((_e2089320929_
                                                    (gx#syntax-e
                                                     _tl2089220926_)))
                                               (let ((_hd2089420933_
                                                      (##car _e2089320929_))
                                                     (_tl2089520936_
                                                      (##cdr _e2089320929_)))
                                                 ((lambda (_L20939_ _L20941_)
                                                    (_loop20874_
                                                     _L20941_
                                                     _vars20882_
                                                     (lambda (_g2095720959_)
                                                       (_loop-class-list20878_
                                                        _L20939_
                                                        _g2095720959_
                                                        _K20883_))))
                                                  _tl2089520936_
                                                  _hd2089420933_)))
                                             (_g2088520912_ _g2088720916_))))
                                     (_g2088520912_ _g2088720916_)))))
                          (_g2088420963_ _rest20880_)))))))
          (_loop20874_ _ptree20871_ '() values))))
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
                      (let ((_g1932620867_
                             (lambda (_g1932819339_)
                               ((lambda (_L19342_)
                                  (let ()
                                    (let ((_g1936819483_
                                           (lambda (_g1936919479_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1936919479_))))
                                      (let ((_g1936719504_
                                             (lambda (_g1936919487_)
                                               (if (gx#stx-pair? _g1936919487_)
                                                   (let ((_e1947519490_
                                                          (gx#syntax-e
                                                           _g1936919487_)))
                                                     (let ((_hd1947619494_
                                                            (##car _e1947519490_))
                                                           (_tl1947719497_
                                                            (##cdr _e1947519490_)))
                                                       (if (gx#stx-datum?
                                                            _hd1947619494_)
                                                           (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1947619494_)
                               'any:)
                       (if (gx#stx-null? _tl1947719497_)
                           ((lambda () _K19324_))
                           (_g1936819483_ _g1936919487_))
                       (_g1936819483_ _g1936919487_))
                   (_g1936819483_ _g1936919487_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1936819483_
                                                    _g1936919487_)))))
                                        (let ((_g1936619547_
                                               (lambda (_g1936919508_)
                                                 (if (gx#stx-pair?
                                                      _g1936919508_)
                                                     (let ((_e1946919511_
                                                            (gx#syntax-e
                                                             _g1936919508_)))
                                                       (let ((_hd1947019515_
                                                              (##car _e1946919511_))
                                                             (_tl1947119518_
                                                              (##cdr _e1946919511_)))
                                                         (if (gx#stx-datum?
                                                              _hd1947019515_)
                                                             (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _hd1947019515_)
                                 'var:)
                         (if (gx#stx-pair? _tl1947119518_)
                             (let ((_e1947219521_
                                    (gx#syntax-e _tl1947119518_)))
                               (let ((_hd1947319525_ (##car _e1947219521_))
                                     (_tl1947419528_ (##cdr _e1947219521_)))
                                 (if (gx#stx-null? _tl1947419528_)
                                     ((lambda (_L19531_)
                                        (cons (gx#datum->syntax '#f 'let)
                                              (cons (cons (cons _L19531_
                                                                (cons _L19342_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _K19324_ '()))))
                                      _hd1947319525_)
                                     (_g1936719504_ _g1936919508_))))
                             (_g1936719504_ _g1936919508_))
                         (_g1936719504_ _g1936919508_))
                     (_g1936719504_ _g1936919508_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1936719504_
                                                      _g1936919508_)))))
                                          (let ((_g1936519629_
                                                 (lambda (_g1936919551_)
                                                   (if (gx#stx-pair?
                                                        _g1936919551_)
                                                       (let ((_e1946219554_
                                                              (gx#syntax-e
                                                               _g1936919551_)))
                                                         (let ((_hd1946319558_
                                                                (##car _e1946219554_))
                                                               (_tl1946419561_
                                                                (##cdr _e1946219554_)))
                                                           (if (gx#stx-datum?
                                                                _hd1946319558_)
                                                               (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _hd1946319558_)
                                   'datum:)
                           (if (gx#stx-pair? _tl1946419561_)
                               (let ((_e1946519564_
                                      (gx#syntax-e _tl1946419561_)))
                                 (let ((_hd1946619568_ (##car _e1946519564_))
                                       (_tl1946719571_ (##cdr _e1946519564_)))
                                   (if (gx#stx-null? _tl1946719571_)
                                       ((lambda (_L19574_)
                                          (let ((_g1958719595_
                                                 (lambda (_g1958819591_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1958819591_))))
                                            (let ((_g1958619614_
                                                   (lambda (_g1958819599_)
                                                     ((lambda (_L19602_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'if)
                        (cons (cons _L19602_
                                    (cons _L19342_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L19574_ '()))
                                                '())))
                              (cons _K19324_ (cons _E19325_ '()))))))
              _g1958819599_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1958619614_
                                               (let ((_e19618_
                                                      (gx#stx-e _L19574_)))
                                                 (if (let ((_$e19621_
                                                            (symbol? _e19618_)))
                                                       (if _$e19621_
                                                           _$e19621_
                                                           (let ((_$e19625_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (keyword? _e19618_)))
                     (if _$e19625_ _$e19625_ (immediate? _e19618_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##eq?)
                                                     (if (number? _e19618_)
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eqv?)
                                                         (gx#datum->syntax
                                                          '#f
                                                          'equal?))))))))
                                        _hd1946619568_)
                                       (_g1936619547_ _g1936919551_))))
                               (_g1936619547_ _g1936919551_))
                           (_g1936619547_ _g1936919551_))
                       (_g1936619547_ _g1936919551_))))
               (_g1936619547_ _g1936919551_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_g1936419683_
                                                   (lambda (_g1936919633_)
                                                     (if (gx#stx-pair?
                                                          _g1936919633_)
                                                         (let ((_e1945219636_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1936919633_)))
                   (let ((_hd1945319640_ (##car _e1945219636_))
                         (_tl1945419643_ (##cdr _e1945219636_)))
                     (if (gx#stx-datum? _hd1945319640_)
                         (if (equal? (gx#stx-e _hd1945319640_) 'class:)
                             (if (gx#stx-pair? _tl1945419643_)
                                 (let ((_e1945519646_
                                        (gx#syntax-e _tl1945419643_)))
                                   (let ((_hd1945619650_ (##car _e1945519646_))
                                         (_tl1945719653_
                                          (##cdr _e1945519646_)))
                                     (if (gx#stx-pair? _tl1945719653_)
                                         (let ((_e1945819656_
                                                (gx#syntax-e _tl1945719653_)))
                                           (let ((_hd1945919660_
                                                  (##car _e1945819656_))
                                                 (_tl1946019663_
                                                  (##cdr _e1945819656_)))
                                             (if (gx#stx-null? _tl1946019663_)
                                                 ((lambda (_L19666_ _L19668_)
                                                    (_generate-class17797_
                                                     (gx#stx-e _L19668_)
                                                     _tgt19321_
                                                     _L19666_
                                                     _K19324_
                                                     _E19325_))
                                                  _hd1945919660_
                                                  _hd1945619650_)
                                                 (_g1936519629_
                                                  _g1936919633_))))
                                         (_g1936519629_ _g1936919633_))))
                                 (_g1936519629_ _g1936919633_))
                             (_g1936519629_ _g1936919633_))
                         (_g1936519629_ _g1936919633_))))
                 (_g1936519629_ _g1936919633_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g1936319737_
                                                     (lambda (_g1936919687_)
                                                       (if (gx#stx-pair?
                                                            _g1936919687_)
                                                           (let ((_e1944119690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g1936919687_)))
                     (let ((_hd1944219694_ (##car _e1944119690_))
                           (_tl1944319697_ (##cdr _e1944119690_)))
                       (if (gx#stx-datum? _hd1944219694_)
                           (if (equal? (gx#stx-e _hd1944219694_) 'struct:)
                               (if (gx#stx-pair? _tl1944319697_)
                                   (let ((_e1944419700_
                                          (gx#syntax-e _tl1944319697_)))
                                     (let ((_hd1944519704_
                                            (##car _e1944419700_))
                                           (_tl1944619707_
                                            (##cdr _e1944419700_)))
                                       (if (gx#stx-pair? _tl1944619707_)
                                           (let ((_e1944719710_
                                                  (gx#syntax-e
                                                   _tl1944619707_)))
                                             (let ((_hd1944819714_
                                                    (##car _e1944719710_))
                                                   (_tl1944919717_
                                                    (##cdr _e1944719710_)))
                                               (if (gx#stx-null?
                                                    _tl1944919717_)
                                                   ((lambda (_L19720_ _L19722_)
                                                      (_generate-struct17796_
                                                       (gx#stx-e _L19722_)
                                                       _tgt19321_
                                                       _L19720_
                                                       _K19324_
                                                       _E19325_))
                                                    _hd1944819714_
                                                    _hd1944519704_)
                                                   (_g1936419683_
                                                    _g1936919687_))))
                                           (_g1936419683_ _g1936919687_))))
                                   (_g1936419683_ _g1936919687_))
                               (_g1936419683_ _g1936919687_))
                           (_g1936419683_ _g1936919687_))))
                   (_g1936419683_ _g1936919687_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_g1936219915_
                                                       (lambda (_g1936919741_)
                                                         (if (gx#stx-pair?
                                                              _g1936919741_)
                                                             (let ((_e1943319744_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g1936919741_)))
                       (let ((_hd1943419748_ (##car _e1943319744_))
                             (_tl1943519751_ (##cdr _e1943319744_)))
                         (if (gx#stx-datum? _hd1943419748_)
                             (if (equal? (gx#stx-e _hd1943419748_) 'vector:)
                                 (if (gx#stx-pair? _tl1943519751_)
                                     (let ((_e1943619754_
                                            (gx#syntax-e _tl1943519751_)))
                                       (let ((_hd1943719758_
                                              (##car _e1943619754_))
                                             (_tl1943819761_
                                              (##cdr _e1943619754_)))
                                         (if (gx#stx-null? _tl1943819761_)
                                             ((lambda (_L19764_)
                                                (let ((_g1977819799_
                                                       (lambda (_g1977919795_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1977919795_))))
                                                  (let ((_g1977719840_
                                                         (lambda (_g1977919803_)
                                                           (if (gx#stx-pair?
                                                                _g1977919803_)
                                                               (let ((_e1978819806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1977919803_)))
                         (let ((_hd1978919810_ (##car _e1978819806_))
                               (_tl1979019813_ (##cdr _e1978819806_)))
                           (if (gx#stx-datum? _hd1978919810_)
                               (if (equal? (gx#stx-e _hd1978919810_) 'list:)
                                   (if (gx#stx-pair? _tl1979019813_)
                                       (let ((_e1979119816_
                                              (gx#syntax-e _tl1979019813_)))
                                         (let ((_hd1979219820_
                                                (##car _e1979119816_))
                                               (_tl1979319823_
                                                (##cdr _e1979119816_)))
                                           (if (gx#stx-null? _tl1979319823_)
                                               ((lambda (_L19826_)
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
                             _L19826_
                             (gx#datum->syntax '#f 'subvector->list)
                             '0
                             _K19324_
                             _E19325_)
                            (cons _E19325_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1979219820_)
                                               (_g1977819799_ _g1977919803_))))
                                       (_g1977819799_ _g1977919803_))
                                   (_g1977819799_ _g1977919803_))
                               (_g1977819799_ _g1977919803_))))
                       (_g1977819799_ _g1977919803_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g1977619911_
                                                           (lambda (_g1977919844_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1977919844_)
                         (let ((_e1978119847_ (gx#syntax-e _g1977919844_)))
                           (let ((_hd1978219851_ (##car _e1978119847_))
                                 (_tl1978319854_ (##cdr _e1978119847_)))
                             (if (gx#stx-datum? _hd1978219851_)
                                 (if (equal? (gx#stx-e _hd1978219851_)
                                             'simple:)
                                     (if (gx#stx-pair? _tl1978319854_)
                                         (let ((_e1978419857_
                                                (gx#syntax-e _tl1978319854_)))
                                           (let ((_hd1978519861_
                                                  (##car _e1978419857_))
                                                 (_tl1978619864_
                                                  (##cdr _e1978419857_)))
                                             (if (gx#stx-null? _tl1978619864_)
                                                 ((lambda (_L19867_)
                                                    (let ((_g1988019888_
                                                           (lambda (_g1988119884_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g1988119884_))))
                                                      (let ((_g1987919907_
                                                             (lambda (_g1988119892_)
                                                               ((lambda (_L19895_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons (gx#datum->syntax '#f 'and)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##vector?)
                                                          (cons _L19342_ '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fx=)
                        (cons (cons (gx#datum->syntax '#f '##vector-length)
                                    (cons _L19342_ '()))
                              (cons _L19895_ '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (_generate-simple-vector17794_
                                               _tgt19321_
                                               _L19867_
                                               '0
                                               _K19324_
                                               _E19325_)
                                              (cons _E19325_ '()))))))
                        _g1988119892_))))
                (_g1987919907_ (gx#stx-length _L19867_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1978519861_)
                                                 (_g1977719840_
                                                  _g1977919844_))))
                                         (_g1977719840_ _g1977919844_))
                                     (_g1977719840_ _g1977919844_))
                                 (_g1977719840_ _g1977919844_))))
                         (_g1977719840_ _g1977919844_)))))
              (_g1977619911_ _L19764_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd1943719758_)
                                             (_g1936319737_ _g1936919741_))))
                                     (_g1936319737_ _g1936919741_))
                                 (_g1936319737_ _g1936919741_))
                             (_g1936319737_ _g1936919741_))))
                     (_g1936319737_ _g1936919741_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g1936120093_
                                                         (lambda (_g1936919919_)
                                                           (if (gx#stx-pair?
                                                                _g1936919919_)
                                                               (let ((_e1942619922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1936919919_)))
                         (let ((_hd1942719926_ (##car _e1942619922_))
                               (_tl1942819929_ (##cdr _e1942619922_)))
                           (if (gx#stx-datum? _hd1942719926_)
                               (if (equal? (gx#stx-e _hd1942719926_) 'values:)
                                   (if (gx#stx-pair? _tl1942819929_)
                                       (let ((_e1942919932_
                                              (gx#syntax-e _tl1942819929_)))
                                         (let ((_hd1943019936_
                                                (##car _e1942919932_))
                                               (_tl1943119939_
                                                (##cdr _e1942919932_)))
                                           (if (gx#stx-null? _tl1943119939_)
                                               ((lambda (_L19942_)
                                                  (let ((_g1995619977_
                                                         (lambda (_g1995719973_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g1995719973_))))
                                                    (let ((_g1995520018_
                                                           (lambda (_g1995719981_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1995719981_)
                         (let ((_e1996619984_ (gx#syntax-e _g1995719981_)))
                           (let ((_hd1996719988_ (##car _e1996619984_))
                                 (_tl1996819991_ (##cdr _e1996619984_)))
                             (if (gx#stx-datum? _hd1996719988_)
                                 (if (equal? (gx#stx-e _hd1996719988_) 'list:)
                                     (if (gx#stx-pair? _tl1996819991_)
                                         (let ((_e1996919994_
                                                (gx#syntax-e _tl1996819991_)))
                                           (let ((_hd1997019998_
                                                  (##car _e1996919994_))
                                                 (_tl1997120001_
                                                  (##cdr _e1996919994_)))
                                             (if (gx#stx-null? _tl1997120001_)
                                                 ((lambda (_L20004_)
                                                    (_generate-list-vector17795_
                                                     _tgt19321_
                                                     _L20004_
                                                     (gx#datum->syntax
                                                      '#f
                                                      'values->list)
                                                     '0
                                                     _K19324_
                                                     _E19325_))
                                                  _hd1997019998_)
                                                 (_g1995619977_
                                                  _g1995719981_))))
                                         (_g1995619977_ _g1995719981_))
                                     (_g1995619977_ _g1995719981_))
                                 (_g1995619977_ _g1995719981_))))
                         (_g1995619977_ _g1995719981_)))))
              (let ((_g1995420089_
                     (lambda (_g1995720022_)
                       (if (gx#stx-pair? _g1995720022_)
                           (let ((_e1995920025_ (gx#syntax-e _g1995720022_)))
                             (let ((_hd1996020029_ (##car _e1995920025_))
                                   (_tl1996120032_ (##cdr _e1995920025_)))
                               (if (gx#stx-datum? _hd1996020029_)
                                   (if (equal? (gx#stx-e _hd1996020029_)
                                               'simple:)
                                       (if (gx#stx-pair? _tl1996120032_)
                                           (let ((_e1996220035_
                                                  (gx#syntax-e
                                                   _tl1996120032_)))
                                             (let ((_hd1996320039_
                                                    (##car _e1996220035_))
                                                   (_tl1996420042_
                                                    (##cdr _e1996220035_)))
                                               (if (gx#stx-null?
                                                    _tl1996420042_)
                                                   ((lambda (_L20045_)
                                                      (let ((_g2005820066_
                                                             (lambda (_g2005920062_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2005920062_))))
                                                        (let ((_g2005720085_
                                                               (lambda (_g2005920070_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L20073_)
                            (let ()
                              (cons (gx#datum->syntax '#f 'if)
                                    (cons (cons (gx#datum->syntax '#f '##fx=)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'values-count)
                                                            (cons _L19342_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _L20073_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (_generate-simple-vector17794_
                                                 _tgt19321_
                                                 _L20045_
                                                 '0
                                                 _K19324_
                                                 _E19325_)
                                                (cons _E19325_ '()))))))
                          _g2005920070_))))
                  (_g2005720085_ (gx#stx-length _L20045_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1996320039_)
                                                   (_g1995520018_
                                                    _g1995720022_))))
                                           (_g1995520018_ _g1995720022_))
                                       (_g1995520018_ _g1995720022_))
                                   (_g1995520018_ _g1995720022_))))
                           (_g1995520018_ _g1995720022_)))))
                (_g1995420089_ _L19942_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1943019936_)
                                               (_g1936219915_ _g1936919919_))))
                                       (_g1936219915_ _g1936919919_))
                                   (_g1936219915_ _g1936919919_))
                               (_g1936219915_ _g1936919919_))))
                       (_g1936219915_ _g1936919919_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g1936020164_
                                                           (lambda (_g1936920097_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1936920097_)
                         (let ((_e1941920100_ (gx#syntax-e _g1936920097_)))
                           (let ((_hd1942020104_ (##car _e1941920100_))
                                 (_tl1942120107_ (##cdr _e1941920100_)))
                             (if (gx#stx-datum? _hd1942020104_)
                                 (if (equal? (gx#stx-e _hd1942020104_) 'box:)
                                     (if (gx#stx-pair? _tl1942120107_)
                                         (let ((_e1942220110_
                                                (gx#syntax-e _tl1942120107_)))
                                           (let ((_hd1942320114_
                                                  (##car _e1942220110_))
                                                 (_tl1942420117_
                                                  (##cdr _e1942220110_)))
                                             (if (gx#stx-null? _tl1942420117_)
                                                 ((lambda (_L20120_)
                                                    (let ((_g2013320141_
                                                           (lambda (_g2013420137_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g2013420137_))))
                                                      (let ((_g2013220160_
                                                             (lambda (_g2013420145_)
                                                               ((lambda (_L20148_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons (gx#datum->syntax '#f '##box?)
                                              (cons _L19342_ '()))
                                        (cons (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L20148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f '##unbox)
                                          (cons _L19342_ '()))
                                    '()))
                        '())
                  (cons (_generate117791_ _L20148_ _L20120_ _K19324_ _E19325_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _E19325_ '()))))))
                        _g2013420145_))))
                (_g2013220160_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1942320114_)
                                                 (_g1936120093_
                                                  _g1936920097_))))
                                         (_g1936120093_ _g1936920097_))
                                     (_g1936120093_ _g1936920097_))
                                 (_g1936120093_ _g1936920097_))))
                         (_g1936120093_ _g1936920097_)))))
              (let ((_g1935920218_
                     (lambda (_g1936920168_)
                       (if (gx#stx-pair? _g1936920168_)
                           (let ((_e1940920171_ (gx#syntax-e _g1936920168_)))
                             (let ((_hd1941020175_ (##car _e1940920171_))
                                   (_tl1941120178_ (##cdr _e1940920171_)))
                               (if (gx#stx-datum? _hd1941020175_)
                                   (if (equal? (gx#stx-e _hd1941020175_)
                                               'splice:)
                                       (if (gx#stx-pair? _tl1941120178_)
                                           (let ((_e1941220181_
                                                  (gx#syntax-e
                                                   _tl1941120178_)))
                                             (let ((_hd1941320185_
                                                    (##car _e1941220181_))
                                                   (_tl1941420188_
                                                    (##cdr _e1941220181_)))
                                               (if (gx#stx-pair?
                                                    _tl1941420188_)
                                                   (let ((_e1941520191_
                                                          (gx#syntax-e
                                                           _tl1941420188_)))
                                                     (let ((_hd1941620195_
                                                            (##car _e1941520191_))
                                                           (_tl1941720198_
                                                            (##cdr _e1941520191_)))
                                                       (if (gx#stx-null?
                                                            _tl1941720198_)
                                                           ((lambda (_L20201_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L20203_)
                      (_generate-splice17793_
                       _tgt19321_
                       _L20203_
                       _L20201_
                       _K19324_
                       _E19325_))
                    _hd1941620195_
                    _hd1941320185_)
                   (_g1936020164_ _g1936920168_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1936020164_
                                                    _g1936920168_))))
                                           (_g1936020164_ _g1936920168_))
                                       (_g1936020164_ _g1936920168_))
                                   (_g1936020164_ _g1936920168_))))
                           (_g1936020164_ _g1936920168_)))))
                (let ((_g1935820239_
                       (lambda (_g1936920222_)
                         (if (gx#stx-pair? _g1936920222_)
                             (let ((_e1940420225_ (gx#syntax-e _g1936920222_)))
                               (let ((_hd1940520229_ (##car _e1940420225_))
                                     (_tl1940620232_ (##cdr _e1940420225_)))
                                 (if (gx#stx-datum? _hd1940520229_)
                                     (if (equal? (gx#stx-e _hd1940520229_)
                                                 'null:)
                                         (if (gx#stx-null? _tl1940620232_)
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
                                             (_g1935920218_ _g1936920222_))
                                         (_g1935920218_ _g1936920222_))
                                     (_g1935920218_ _g1936920222_))))
                             (_g1935920218_ _g1936920222_)))))
                  (let ((_g1935720358_
                         (lambda (_g1936920243_)
                           (if (gx#stx-pair? _g1936920243_)
                               (let ((_e1939520246_
                                      (gx#syntax-e _g1936920243_)))
                                 (let ((_hd1939620250_ (##car _e1939520246_))
                                       (_tl1939720253_ (##cdr _e1939520246_)))
                                   (if (gx#stx-datum? _hd1939620250_)
                                       (if (equal? (gx#stx-e _hd1939620250_)
                                                   'cons:)
                                           (if (gx#stx-pair? _tl1939720253_)
                                               (let ((_e1939820256_
                                                      (gx#syntax-e
                                                       _tl1939720253_)))
                                                 (let ((_hd1939920260_
                                                        (##car _e1939820256_))
                                                       (_tl1940020263_
                                                        (##cdr _e1939820256_)))
                                                   (if (gx#stx-pair?
                                                        _tl1940020263_)
                                                       (let ((_e1940120266_
                                                              (gx#syntax-e
                                                               _tl1940020263_)))
                                                         (let ((_hd1940220270_
                                                                (##car _e1940120266_))
                                                               (_tl1940320273_
                                                                (##cdr _e1940120266_)))
                                                           (if (gx#stx-null?
                                                                _tl1940320273_)
                                                               ((lambda (_L20276_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L20278_)
                          (let ((_g2029420309_
                                 (lambda (_g2029520305_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2029520305_))))
                            (let ((_g2029320354_
                                   (lambda (_g2029520313_)
                                     (if (gx#stx-pair? _g2029520313_)
                                         (let ((_e2029820316_
                                                (gx#syntax-e _g2029520313_)))
                                           (let ((_hd2029920320_
                                                  (##car _e2029820316_))
                                                 (_tl2030020323_
                                                  (##cdr _e2029820316_)))
                                             (if (gx#stx-pair? _tl2030020323_)
                                                 (let ((_e2030120326_
                                                        (gx#syntax-e
                                                         _tl2030020323_)))
                                                   (let ((_hd2030220330_
                                                          (##car _e2030120326_))
                                                         (_tl2030320333_
                                                          (##cdr _e2030120326_)))
                                                     (if (gx#stx-null?
                                                          _tl2030320333_)
                                                         ((lambda (_L20336_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L20338_)
                    (let ()
                      (cons (gx#datum->syntax '#f 'if)
                            (cons (cons (gx#datum->syntax '#f '##pair?)
                                        (cons _L19342_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'let)
                                              (cons (cons (cons _L20338_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     '##car)
                                    (cons _L19342_ '()))
                              '()))
                  (cons (cons _L20336_
                              (cons (cons (gx#datum->syntax '#f '##cdr)
                                          (cons _L19342_ '()))
                                    '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (_generate117791_
                                                           _L20338_
                                                           _L20278_
                                                           (_generate117791_
                                                            _L20336_
                                                            _L20276_
                                                            _K19324_
                                                            _E19325_)
                                                           _E19325_)
                                                          '())))
                                        (cons _E19325_ '()))))))
                  _hd2030220330_
                  _hd2029920320_)
                 (_g2029420309_ _g2029520313_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2029420309_
                                                  _g2029520313_))))
                                         (_g2029420309_ _g2029520313_)))))
                              (_g2029320354_
                               (list (gx#genident 'hd) (gx#genident 'tl))))))
                        _hd1940220270_
                        _hd1939920260_)
                       (_g1935820239_ _g1936920243_))))
               (_g1935820239_ _g1936920243_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1935820239_ _g1936920243_))
                                           (_g1935820239_ _g1936920243_))
                                       (_g1935820239_ _g1936920243_))))
                               (_g1935820239_ _g1936920243_)))))
                    (let ((_g1935620398_
                           (lambda (_g1936920362_)
                             (if (gx#stx-pair? _g1936920362_)
                                 (let ((_e1938720365_
                                        (gx#syntax-e _g1936920362_)))
                                   (let ((_hd1938820369_ (##car _e1938720365_))
                                         (_tl1938920372_
                                          (##cdr _e1938720365_)))
                                     (if (gx#stx-datum? _hd1938820369_)
                                         (if (equal? (gx#stx-e _hd1938820369_)
                                                     'not:)
                                             (if (gx#stx-pair? _tl1938920372_)
                                                 (let ((_e1939020375_
                                                        (gx#syntax-e
                                                         _tl1938920372_)))
                                                   (let ((_hd1939120379_
                                                          (##car _e1939020375_))
                                                         (_tl1939220382_
                                                          (##cdr _e1939020375_)))
                                                     (if (gx#stx-null?
                                                          _tl1939220382_)
                                                         ((lambda (_L20385_)
                                                            (_generate117791_
                                                             _tgt19321_
                                                             _L20385_
                                                             _E19325_
                                                             _K19324_))
                                                          _hd1939120379_)
                                                         (_g1935720358_
                                                          _g1936920362_))))
                                                 (_g1935720358_ _g1936920362_))
                                             (_g1935720358_ _g1936920362_))
                                         (_g1935720358_ _g1936920362_))))
                                 (_g1935720358_ _g1936920362_)))))
                      (let ((_g1935520486_
                             (lambda (_g1936920402_)
                               (if (gx#stx-pair? _g1936920402_)
                                   (let ((_e1938320405_
                                          (gx#syntax-e _g1936920402_)))
                                     (let ((_hd1938420409_
                                            (##car _e1938320405_))
                                           (_tl1938520412_
                                            (##cdr _e1938320405_)))
                                       (if (gx#stx-datum? _hd1938420409_)
                                           (if (equal? (gx#stx-e
                                                        _hd1938420409_)
                                                       'or:)
                                               ((lambda (_L20415_)
                                                  (let ((_g2042720439_
                                                         (lambda (_g2042820435_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2042820435_))))
                                                    (let ((_g2042620450_
                                                           (lambda (_g2042820443_)
                                                             ((lambda ()
                                                                _E19325_)))))
                                                      (let ((_g2042520482_
                                                             (lambda (_g2042820454_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2042820454_)
                           (let ((_e2043120457_ (gx#syntax-e _g2042820454_)))
                             (let ((_hd2043220461_ (##car _e2043120457_))
                                   (_tl2043320464_ (##cdr _e2043120457_)))
                               ((lambda (_L20467_ _L20469_)
                                  (_generate117791_
                                   _tgt19321_
                                   _L20469_
                                   _K19324_
                                   (_generate117791_
                                    _tgt19321_
                                    (cons 'or: _L20467_)
                                    _K19324_
                                    _E19325_)))
                                _tl2043320464_
                                _hd2043220461_)))
                           (_g2042620450_ _g2042820454_)))))
                (_g2042520482_ _L20415_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl1938520412_)
                                               (_g1935620398_ _g1936920402_))
                                           (_g1935620398_ _g1936920402_))))
                                   (_g1935620398_ _g1936920402_)))))
                        (let ((_g1935420574_
                               (lambda (_g1936920490_)
                                 (if (gx#stx-pair? _g1936920490_)
                                     (let ((_e1937920493_
                                            (gx#syntax-e _g1936920490_)))
                                       (let ((_hd1938020497_
                                              (##car _e1937920493_))
                                             (_tl1938120500_
                                              (##cdr _e1937920493_)))
                                         (if (gx#stx-datum? _hd1938020497_)
                                             (if (equal? (gx#stx-e
                                                          _hd1938020497_)
                                                         'and:)
                                                 ((lambda (_L20503_)
                                                    (let ((_g2051520527_
                                                           (lambda (_g2051620523_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g2051620523_))))
                                                      (let ((_g2051420538_
                                                             (lambda (_g2051620531_)
                                                               ((lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _K19324_)))))
                (let ((_g2051320570_
                       (lambda (_g2051620542_)
                         (if (gx#stx-pair? _g2051620542_)
                             (let ((_e2051920545_ (gx#syntax-e _g2051620542_)))
                               (let ((_hd2052020549_ (##car _e2051920545_))
                                     (_tl2052120552_ (##cdr _e2051920545_)))
                                 ((lambda (_L20555_ _L20557_)
                                    (_generate117791_
                                     _tgt19321_
                                     _L20557_
                                     (_generate117791_
                                      _tgt19321_
                                      (cons 'and: _L20555_)
                                      _K19324_
                                      _E19325_)
                                     _E19325_))
                                  _tl2052120552_
                                  _hd2052020549_)))
                             (_g2051420538_ _g2051620542_)))))
                  (_g2051320570_ _L20503_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl1938120500_)
                                                 (_g1935520486_ _g1936920490_))
                                             (_g1935520486_ _g1936920490_))))
                                     (_g1935520486_ _g1936920490_)))))
                          (let ((_g1935320863_
                                 (lambda (_g1936920578_)
                                   (if (gx#stx-pair? _g1936920578_)
                                       (let ((_e1937220581_
                                              (gx#syntax-e _g1936920578_)))
                                         (let ((_hd1937320585_
                                                (##car _e1937220581_))
                                               (_tl1937420588_
                                                (##cdr _e1937220581_)))
                                           (if (gx#stx-datum? _hd1937320585_)
                                               (if (equal? (gx#stx-e
                                                            _hd1937320585_)
                                                           '?:)
                                                   (if (gx#stx-pair?
                                                        _tl1937420588_)
                                                       (let ((_e1937520591_
                                                              (gx#syntax-e
                                                               _tl1937420588_)))
                                                         (let ((_hd1937620595_
                                                                (##car _e1937520591_))
                                                               (_tl1937720598_
                                                                (##cdr _e1937520591_)))
                                                           ((lambda (_L20601_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L20603_)
                      (let ((_g2061920651_
                             (lambda (_g2062020647_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g2062020647_))))
                        (let ((_g2061820749_
                               (lambda (_g2062020655_)
                                 (if (gx#stx-pair? _g2062020655_)
                                     (let ((_e2063420658_
                                            (gx#syntax-e _g2062020655_)))
                                       (let ((_hd2063520662_
                                              (##car _e2063420658_))
                                             (_tl2063620665_
                                              (##cdr _e2063420658_)))
                                         (if (gx#stx-datum? _hd2063520662_)
                                             (if (equal? (gx#stx-e
                                                          _hd2063520662_)
                                                         '::)
                                                 (if (gx#stx-pair?
                                                      _tl2063620665_)
                                                     (let ((_e2063720668_
                                                            (gx#syntax-e
                                                             _tl2063620665_)))
                                                       (let ((_hd2063820672_
                                                              (##car _e2063720668_))
                                                             (_tl2063920675_
                                                              (##cdr _e2063720668_)))
                                                         (if (gx#stx-pair?
                                                              _tl2063920675_)
                                                             (let ((_e2064020678_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl2063920675_)))
                       (let ((_hd2064120682_ (##car _e2064020678_))
                             (_tl2064220685_ (##cdr _e2064020678_)))
                         (if (gx#stx-datum? _hd2064120682_)
                             (if (equal? (gx#stx-e _hd2064120682_) '=>:)
                                 (if (gx#stx-pair? _tl2064220685_)
                                     (let ((_e2064320688_
                                            (gx#syntax-e _tl2064220685_)))
                                       (let ((_hd2064420692_
                                              (##car _e2064320688_))
                                             (_tl2064520695_
                                              (##cdr _e2064320688_)))
                                         (if (gx#stx-null? _tl2064520695_)
                                             ((lambda (_L20698_ _L20700_)
                                                (let ((_g2071820726_
                                                       (lambda (_g2071920722_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g2071920722_))))
                                                  (let ((_g2071720745_
                                                         (lambda (_g2071920730_)
                                                           ((lambda (_L20733_)
                                                              (let ()
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'if)
                              (cons (cons (gx#datum->syntax '#f '?)
                                          (cons _L20603_ (cons _L19342_ '())))
                                    (cons (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (cons _L20733_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _L20700_ (cons _L19342_ '())) '()))
                    '())
              (cons (_generate117791_ _L20733_ _L20698_ _K19324_ _E19325_)
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons _E19325_ '()))))))
                    _g2071920730_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2071720745_
                                                     (gx#genident 'e)))))
                                              _hd2064420692_
                                              _hd2063820672_)
                                             (_g2061920651_ _g2062020655_))))
                                     (_g2061920651_ _g2062020655_))
                                 (_g2061920651_ _g2062020655_))
                             (_g2061920651_ _g2062020655_))))
                     (_g2061920651_ _g2062020655_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2061920651_
                                                      _g2062020655_))
                                                 (_g2061920651_ _g2062020655_))
                                             (_g2061920651_ _g2062020655_))))
                                     (_g2061920651_ _g2062020655_)))))
                          (let ((_g2061720820_
                                 (lambda (_g2062020753_)
                                   (if (gx#stx-pair? _g2062020753_)
                                       (let ((_e2062620756_
                                              (gx#syntax-e _g2062020753_)))
                                         (let ((_hd2062720760_
                                                (##car _e2062620756_))
                                               (_tl2062820763_
                                                (##cdr _e2062620756_)))
                                           (if (gx#stx-datum? _hd2062720760_)
                                               (if (equal? (gx#stx-e
                                                            _hd2062720760_)
                                                           '=>:)
                                                   (if (gx#stx-pair?
                                                        _tl2062820763_)
                                                       (let ((_e2062920766_
                                                              (gx#syntax-e
                                                               _tl2062820763_)))
                                                         (let ((_hd2063020770_
                                                                (##car _e2062920766_))
                                                               (_tl2063120773_
                                                                (##cdr _e2062920766_)))
                                                           (if (gx#stx-null?
                                                                _tl2063120773_)
                                                               ((lambda (_L20776_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_g2078920797_
                                 (lambda (_g2079020793_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2079020793_))))
                            (let ((_g2078820816_
                                   (lambda (_g2079020801_)
                                     ((lambda (_L20804_)
                                        (let ()
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (cons _L20804_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _L20603_ (cons _L19342_ '())) '()))
                    '())
              (cons (cons (gx#datum->syntax '#f 'if)
                          (cons _L20804_
                                (cons (_generate117791_
                                       _L20804_
                                       _L20776_
                                       _K19324_
                                       _E19325_)
                                      (cons _E19325_ '()))))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2079020801_))))
                              (_g2078820816_ (gx#genident 'e)))))
                        _hd2063020770_)
                       (_g2061820749_ _g2062020753_))))
               (_g2061820749_ _g2062020753_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2061820749_
                                                    _g2062020753_))
                                               (_g2061820749_ _g2062020753_))))
                                       (_g2061820749_ _g2062020753_)))))
                            (let ((_g2061620848_
                                   (lambda (_g2062020824_)
                                     (if (gx#stx-pair? _g2062020824_)
                                         (let ((_e2062220827_
                                                (gx#syntax-e _g2062020824_)))
                                           (let ((_hd2062320831_
                                                  (##car _e2062220827_))
                                                 (_tl2062420834_
                                                  (##cdr _e2062220827_)))
                                             (if (gx#stx-null? _tl2062420834_)
                                                 ((lambda (_L20837_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '?)
                              (cons _L20603_ (cons _L19342_ '())))
                        (cons (_generate117791_
                               _tgt19321_
                               _L20837_
                               _K19324_
                               _E19325_)
                              (cons _E19325_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd2062320831_)
                                                 (_g2061720820_
                                                  _g2062020824_))))
                                         (_g2061720820_ _g2062020824_)))))
                              (let ((_g2061520859_
                                     (lambda (_g2062020852_)
                                       (if (gx#stx-null? _g2062020852_)
                                           ((lambda ()
                                              (cons (gx#datum->syntax '#f 'if)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '?)
                        (cons _L20603_ (cons _L19342_ '())))
                  (cons _K19324_ (cons _E19325_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g2061620848_ _g2062020852_)))))
                                (_g2061520859_ _L20601_)))))))
                    _tl1937720598_
                    _hd1937620595_)))
               (_g1935420574_ _g1936920578_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1935420574_
                                                    _g1936920578_))
                                               (_g1935420574_ _g1936920578_))))
                                       (_g1935420574_ _g1936920578_)))))
                            (_g1935320863_ _ptree19323_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _g1932819339_))))
                        (_g1932620867_ _tgt19321_)))))
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
                                       (let ((_g29561_
                                              (gx#syntax-split-splice
                                               _g1870118721_
                                               '0)))
                                         (begin
                                           (let ((_g29562_
                                                  (values-count _g29561_)))
                                             (if (not (fx= _g29562_ 2))
                                                 (error "Context expects 2 values"
                                                        _g29562_)))
                                           (let ((_target1870318724_
                                                  (values-ref _g29561_ 0))
                                                 (_tl1870518727_
                                                  (values-ref _g29561_ 1)))
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
                                                   (let ((_g29563_
                                                          (gx#syntax-split-splice
                                                           _g1877118791_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29564_
                                                              (values-count
                                                               _g29563_)))
                                                         (if (not (fx= _g29564_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29564_)))
               (let ((_target1877318794_ (values-ref _g29563_ 0))
                     (_tl1877518797_ (values-ref _g29563_ 1)))
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
                       (let ((_g29565_
                              (gx#syntax-split-splice _g1884218862_ '0)))
                         (begin
                           (let ((_g29566_ (values-count _g29565_)))
                             (if (not (fx= _g29566_ 2))
                                 (error "Context expects 2 values" _g29566_)))
                           (let ((_target1884418865_ (values-ref _g29565_ 0))
                                 (_tl1884618868_ (values-ref _g29565_ 1)))
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
                                              |gerbil/core::<match>[1]#_g29571_|
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
                                 (let ((_g29569_
                                        (gx#syntax-split-splice
                                         _g1693716957_
                                         '0)))
                                   (begin
                                     (let ((_g29570_ (values-count _g29569_)))
                                       (if (not (fx= _g29570_ 2))
                                           (error "Context expects 2 values"
                                                  _g29570_)))
                                     (let ((_target1693916960_
                                            (values-ref _g29569_ 0))
                                           (_tl1694116963_
                                            (values-ref _g29569_ 1)))
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
                  (let ((_g29567_ (gx#syntax-split-splice _g1745417474_ '0)))
                    (begin
                      (let ((_g29568_ (values-count _g29567_)))
                        (if (not (fx= _g29568_ 2))
                            (error "Context expects 2 values" _g29568_)))
                      (let ((_target1745617477_ (values-ref _g29567_ 0))
                            (_tl1745817480_ (values-ref _g29567_ 1)))
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
                                                 |gerbil/core::<match>[1]#_g29572_|
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
      (lambda (_stx23663_)
        (let ((_g2366823697_
               (lambda (_g2366923693_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2366923693_))))
          (let ((_g2366723805_
                 (lambda (_g2366923701_)
                   (if (gx#stx-pair? _g2366923701_)
                       (let ((_e2368623704_ (gx#syntax-e _g2366923701_)))
                         (let ((_hd2368723708_ (##car _e2368623704_))
                               (_tl2368823711_ (##cdr _e2368623704_)))
                           (if (gx#stx-pair? _tl2368823711_)
                               (let ((_e2368923714_
                                      (gx#syntax-e _tl2368823711_)))
                                 (let ((_hd2369023718_ (##car _e2368923714_))
                                       (_tl2369123721_ (##cdr _e2368923714_)))
                                   ((lambda (_L23724_ _L23726_)
                                      (if (gx#stx-list? _L23724_)
                                          (let ((_g2374023748_
                                                 (lambda (_g2374123744_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2374123744_))))
                                            (let ((_g2373923801_
                                                   (lambda (_g2374123752_)
                                                     ((lambda (_L23755_)
                                                        (let ()
                                                          (let ((_g2376723775_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2376823771_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2376823771_))))
                    (let ((_g2376623797_
                           (lambda (_g2376823779_)
                             ((lambda (_L23782_)
                                (let ()
                                  (let ()
                                    (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (cons _L23755_
                                                            (cons _L23726_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _L23782_ '()))))))
                              _g2376823779_))))
                      (_g2376623797_
                       (|gerbil/core::<match>[1]#generate-match|
                        _stx23663_
                        _L23755_
                        _L23724_))))))
              _g2374123752_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2373923801_
                                               (gx#genident _L23726_))))
                                          (_g2366823697_ _g2366923701_)))
                                    _tl2369123721_
                                    _hd2369023718_)))
                               (_g2366823697_ _g2366923701_))))
                       (_g2366823697_ _g2366923701_)))))
            (let ((_g2366623910_
                   (lambda (_g2366923809_)
                     (if (gx#stx-pair? _g2366923809_)
                         (let ((_e2367823812_ (gx#syntax-e _g2366923809_)))
                           (let ((_hd2367923816_ (##car _e2367823812_))
                                 (_tl2368023819_ (##cdr _e2367823812_)))
                             (if (gx#stx-pair? _tl2368023819_)
                                 (let ((_e2368123822_
                                        (gx#syntax-e _tl2368023819_)))
                                   (let ((_hd2368223826_ (##car _e2368123822_))
                                         (_tl2368323829_
                                          (##cdr _e2368123822_)))
                                     (if (gx#identifier? _hd2368223826_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core::<match>[1]#_g29573_|
                                              _hd2368223826_)
                                             ((lambda (_L23832_)
                                                (if (gx#stx-list? _L23832_)
                                                    (let ((_g2384523853_
                                                           (lambda (_g2384623849_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g2384623849_))))
                                                      (let ((_g2384423906_
                                                             (lambda (_g2384623857_)
                                                               ((lambda (_L23860_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let ((_g2387223880_
                                   (lambda (_g2387323876_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2387323876_))))
                              (let ((_g2387123902_
                                     (lambda (_g2387323884_)
                                       ((lambda (_L23887_)
                                          (let ()
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons _L23860_
                                                          (cons _L23887_
                                                                '()))))))
                                        _g2387323884_))))
                                (_g2387123902_
                                 (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'match)
                                        (cons _L23860_ _L23832_))
                                  (gx#stx-source _stx23663_)))))))
                        _g2384623857_))))
                (_g2384423906_ (gx#genident 'args))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2366723805_
                                                     _g2366923809_)))
                                              _tl2368323829_)
                                             (_g2366723805_ _g2366923809_))
                                         (_g2366723805_ _g2366923809_))))
                                 (_g2366723805_ _g2366923809_))))
                         (_g2366723805_ _g2366923809_)))))
              (let ((_g2366524015_
                     (lambda (_g2366923914_)
                       (if (gx#stx-pair? _g2366923914_)
                           (let ((_e2367123917_ (gx#syntax-e _g2366923914_)))
                             (let ((_hd2367223921_ (##car _e2367123917_))
                                   (_tl2367323924_ (##cdr _e2367123917_)))
                               (if (gx#stx-pair? _tl2367323924_)
                                   (let ((_e2367423927_
                                          (gx#syntax-e _tl2367323924_)))
                                     (let ((_hd2367523931_
                                            (##car _e2367423927_))
                                           (_tl2367623934_
                                            (##cdr _e2367423927_)))
                                       (if (gx#identifier? _hd2367523931_)
                                           (if (gx#free-identifier=?
                                                |gerbil/core::<match>[1]#_g29574_|
                                                _hd2367523931_)
                                               ((lambda (_L23937_)
                                                  (if (gx#stx-list? _L23937_)
                                                      (let ((_g2395023958_
                                                             (lambda (_g2395123954_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2395123954_))))
                                                        (let ((_g2394924011_
                                                               (lambda (_g2395123962_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L23965_)
                            (let ()
                              (let ((_g2397723985_
                                     (lambda (_g2397823981_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g2397823981_))))
                                (let ((_g2397624007_
                                       (lambda (_g2397823989_)
                                         ((lambda (_L23992_)
                                            (let ()
                                              (let ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L23965_ '())
                                                            (cons _L23992_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g2397823989_))))
                                  (_g2397624007_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _L23965_ _L23937_))
                                    (gx#stx-source _stx23663_)))))))
                          _g2395123962_))))
                  (_g2394924011_ (gx#genident 'e))))
              (_g2366623910_ _g2366923914_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl2367623934_)
                                               (_g2366623910_ _g2366923914_))
                                           (_g2366623910_ _g2366923914_))))
                                   (_g2366623910_ _g2366923914_))))
                           (_g2366623910_ _g2366923914_)))))
                (_g2366524015_ _stx23663_)))))))
    (define |gerbil/core::<match>[:0:]#match*|
      (lambda (_stx24019_)
        (let ((_g2402224046_
               (lambda (_g2402324042_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2402324042_))))
          (let ((_g2402124258_
                 (lambda (_g2402324050_)
                   (if (gx#stx-pair? _g2402324050_)
                       (let ((_e2402624053_ (gx#syntax-e _g2402324050_)))
                         (let ((_hd2402724057_ (##car _e2402624053_))
                               (_tl2402824060_ (##cdr _e2402624053_)))
                           (if (gx#stx-pair? _tl2402824060_)
                               (let ((_e2402924063_
                                      (gx#syntax-e _tl2402824060_)))
                                 (let ((_hd2403024067_ (##car _e2402924063_))
                                       (_tl2403124070_ (##cdr _e2402924063_)))
                                   (if (gx#stx-pair/null? _hd2403024067_)
                                       (if (fx>= (gx#stx-length _hd2403024067_)
                                                 '0)
                                           (let ((_g29575_
                                                  (gx#syntax-split-splice
                                                   _hd2403024067_
                                                   '0)))
                                             (begin
                                               (let ((_g29576_
                                                      (values-count _g29575_)))
                                                 (if (not (fx= _g29576_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29576_)))
                                               (let ((_target2403224073_
                                                      (values-ref _g29575_ 0))
                                                     (_tl2403424076_
                                                      (values-ref _g29575_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl2403424076_)
                                                     (letrec ((_loop2403524079_
                                                               (lambda (_hd2403324083_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _e2403924086_)
                         (if (gx#stx-pair? _hd2403324083_)
                             (let ((_e2403624089_
                                    (gx#syntax-e _hd2403324083_)))
                               (let ((_lp-hd2403724093_ (##car _e2403624089_))
                                     (_lp-tl2403824096_ (##cdr _e2403624089_)))
                                 (_loop2403524079_
                                  _lp-tl2403824096_
                                  (cons _lp-hd2403724093_ _e2403924086_))))
                             (let ((_e2404024099_ (reverse _e2403924086_)))
                               ((lambda (_L24103_ _L24105_)
                                  (if (gx#stx-list? _L24103_)
                                      (let ((_g2412324140_
                                             (lambda (_g2412424136_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2412424136_))))
                                        (let ((_g2412224246_
                                               (lambda (_g2412424144_)
                                                 (if (gx#stx-pair/null?
                                                      _g2412424144_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2412424144_)
                                                               '0)
                                                         (let ((_g29577_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2412424144_
                         '0)))
                   (begin
                     (let ((_g29578_ (values-count _g29577_)))
                       (if (not (fx= _g29578_ 2))
                           (error "Context expects 2 values" _g29578_)))
                     (let ((_target2412624147_ (values-ref _g29577_ 0))
                           (_tl2412824150_ (values-ref _g29577_ 1)))
                       (if (gx#stx-null? _tl2412824150_)
                           (letrec ((_loop2412924153_
                                     (lambda (_hd2412724157_ _$e2413324160_)
                                       (if (gx#stx-pair? _hd2412724157_)
                                           (let ((_e2413024163_
                                                  (gx#syntax-e
                                                   _hd2412724157_)))
                                             (let ((_lp-hd2413124167_
                                                    (##car _e2413024163_))
                                                   (_lp-tl2413224170_
                                                    (##cdr _e2413024163_)))
                                               (_loop2412924153_
                                                _lp-tl2413224170_
                                                (cons _lp-hd2413124167_
                                                      _$e2413324160_))))
                                           (let ((_$e2413424173_
                                                  (reverse _$e2413324160_)))
                                             ((lambda (_L24177_)
                                                (let ()
                                                  (let ((_g2419324201_
                                                         (lambda (_g2419424197_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2419424197_))))
                                                    (let ((_g2419224234_
                                                           (lambda (_g2419424205_)
                                                             ((lambda (_L24208_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (begin
                                          (gx#syntax-check-splice-targets
                                           _L24105_
                                           _L24177_)
                                          (foldr (lambda (_g2422224226_
                                                          _g2422324229_
                                                          _g2422424231_)
                                                   (cons (cons _g2422324229_
                                                               (cons _g2422224226_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _g2422424231_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L24105_
                                                 _L24177_))
                                        (cons _L24208_ '()))))))
                      _g2419424205_))))
              (_g2419224234_
               (|gerbil/core::<match>[1]#generate-match*|
                _stx24019_
                (begin
                  '#!void
                  (foldr (lambda (_g2423724240_ _g2423824243_)
                           (cons _g2423724240_ _g2423824243_))
                         '()
                         _L24177_))
                _L24103_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _$e2413424173_))))))
                             (_loop2412924153_ _target2412624147_ '()))
                           (_g2412324140_ _g2412424144_)))))
                 (_g2412324140_ _g2412424144_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2412324140_
                                                      _g2412424144_)))))
                                          (_g2412224246_
                                           (gx#gentemps
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g2424924252_
                                                              _g2425024255_)
                                                       (cons _g2424924252_
                                                             _g2425024255_))
                                                     '()
                                                     _L24105_))))))
                                      (_g2402224046_ _g2402324050_)))
                                _tl2403124070_
                                _e2404024099_))))))
               (_loop2403524079_ _target2403224073_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2402224046_
                                                      _g2402324050_)))))
                                           (_g2402224046_ _g2402324050_))
                                       (_g2402224046_ _g2402324050_))))
                               (_g2402224046_ _g2402324050_))))
                       (_g2402224046_ _g2402324050_)))))
            (_g2402124258_ _stx24019_)))))
    (define |gerbil/core::<match>[:0:]#with|
      (lambda (_$stx24264_)
        (let ((_g2427024353_
               (lambda (_g2427124349_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2427124349_))))
          (let ((_g2426924514_
                 (lambda (_g2427124357_)
                   (if (gx#stx-pair? _g2427124357_)
                       (let ((_e2431624360_ (gx#syntax-e _g2427124357_)))
                         (let ((_hd2431724364_ (##car _e2431624360_))
                               (_tl2431824367_ (##cdr _e2431624360_)))
                           (if (gx#stx-pair? _tl2431824367_)
                               (let ((_e2431924370_
                                      (gx#syntax-e _tl2431824367_)))
                                 (let ((_hd2432024374_ (##car _e2431924370_))
                                       (_tl2432124377_ (##cdr _e2431924370_)))
                                   (if (gx#stx-pair/null? _hd2432024374_)
                                       (if (fx>= (gx#stx-length _hd2432024374_)
                                                 '0)
                                           (let ((_g29579_
                                                  (gx#syntax-split-splice
                                                   _hd2432024374_
                                                   '0)))
                                             (begin
                                               (let ((_g29580_
                                                      (values-count _g29579_)))
                                                 (if (not (fx= _g29580_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29580_)))
                                               (let ((_target2432224380_
                                                      (values-ref _g29579_ 0))
                                                     (_tl2432424383_
                                                      (values-ref _g29579_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl2432424383_)
                                                     (letrec ((_loop2432524386_
                                                               (lambda (_hd2432324390_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr2432924393_
                                _hd2433024395_)
                         (if (gx#stx-pair? _hd2432324390_)
                             (let ((_e2432624398_
                                    (gx#syntax-e _hd2432324390_)))
                               (let ((_lp-hd2432724402_ (##car _e2432624398_))
                                     (_lp-tl2432824405_ (##cdr _e2432624398_)))
                                 (if (gx#stx-pair? _lp-hd2432724402_)
                                     (let ((_e2433324408_
                                            (gx#syntax-e _lp-hd2432724402_)))
                                       (let ((_hd2433424412_
                                              (##car _e2433324408_))
                                             (_tl2433524415_
                                              (##cdr _e2433324408_)))
                                         (if (gx#stx-pair? _tl2433524415_)
                                             (let ((_e2433624418_
                                                    (gx#syntax-e
                                                     _tl2433524415_)))
                                               (let ((_hd2433724422_
                                                      (##car _e2433624418_))
                                                     (_tl2433824425_
                                                      (##cdr _e2433624418_)))
                                                 (if (gx#stx-null?
                                                      _tl2433824425_)
                                                     (_loop2432524386_
                                                      _lp-tl2432824405_
                                                      (cons _hd2433724422_
                                                            _expr2432924393_)
                                                      (cons _hd2433424412_
                                                            _hd2433024395_))
                                                     (_g2427024353_
                                                      _g2427124357_))))
                                             (_g2427024353_ _g2427124357_))))
                                     (_g2427024353_ _g2427124357_))))
                             (let ((_expr2433124428_
                                    (reverse _expr2432924393_))
                                   (_hd2433224431_ (reverse _hd2433024395_)))
                               (if (gx#stx-pair/null? _tl2432124377_)
                                   (if (fx>= (gx#stx-length _tl2432124377_) '0)
                                       (let ((_g29581_
                                              (gx#syntax-split-splice
                                               _tl2432124377_
                                               '0)))
                                         (begin
                                           (let ((_g29582_
                                                  (values-count _g29581_)))
                                             (if (not (fx= _g29582_ 2))
                                                 (error "Context expects 2 values"
                                                        _g29582_)))
                                           (let ((_target2433924434_
                                                  (values-ref _g29581_ 0))
                                                 (_tl2434124437_
                                                  (values-ref _g29581_ 1)))
                                             (if (gx#stx-null? _tl2434124437_)
                                                 (letrec ((_loop2434224440_
                                                           (lambda (_hd2434024444_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _body2434624447_)
                     (if (gx#stx-pair? _hd2434024444_)
                         (let ((_e2434324450_ (gx#syntax-e _hd2434024444_)))
                           (let ((_lp-hd2434424454_ (##car _e2434324450_))
                                 (_lp-tl2434524457_ (##cdr _e2434324450_)))
                             (_loop2434224440_
                              _lp-tl2434524457_
                              (cons _lp-hd2434424454_ _body2434624447_))))
                         (let ((_body2434724460_ (reverse _body2434624447_)))
                           ((lambda (_L24464_ _L24466_ _L24467_)
                              (cons (gx#datum->syntax '#f 'match*)
                                    (cons (begin
                                            '#!void
                                            (foldr (lambda (_g2448924496_
                                                            _g2449024499_)
                                                     (cons _g2448924496_
                                                           _g2449024499_))
                                                   '()
                                                   _L24466_))
                                          (cons (cons (begin
                                                        '#!void
                                                        (foldr (lambda (_g2449124502_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2449224505_)
                         (cons _g2449124502_ _g2449224505_))
                       '()
                       _L24467_))
              (begin
                '#!void
                (foldr (lambda (_g2449324508_ _g2449424511_)
                         (cons _g2449324508_ _g2449424511_))
                       '()
                       _L24464_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                            _body2434724460_
                            _expr2433124428_
                            _hd2433224431_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop2434224440_
                                                    _target2433924434_
                                                    '()))
                                                 (_g2427024353_
                                                  _g2427124357_)))))
                                       (_g2427024353_ _g2427124357_))
                                   (_g2427024353_ _g2427124357_)))))))
               (_loop2432524386_ _target2432224380_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2427024353_
                                                      _g2427124357_)))))
                                           (_g2427024353_ _g2427124357_))
                                       (_g2427024353_ _g2427124357_))))
                               (_g2427024353_ _g2427124357_))))
                       (_g2427024353_ _g2427124357_)))))
            (let ((_g2426824626_
                   (lambda (_g2427124518_)
                     (if (gx#stx-pair? _g2427124518_)
                         (let ((_e2429224521_ (gx#syntax-e _g2427124518_)))
                           (let ((_hd2429324525_ (##car _e2429224521_))
                                 (_tl2429424528_ (##cdr _e2429224521_)))
                             (if (gx#stx-pair? _tl2429424528_)
                                 (let ((_e2429524531_
                                        (gx#syntax-e _tl2429424528_)))
                                   (let ((_hd2429624535_ (##car _e2429524531_))
                                         (_tl2429724538_
                                          (##cdr _e2429524531_)))
                                     (if (gx#stx-pair? _hd2429624535_)
                                         (let ((_e2429824541_
                                                (gx#syntax-e _hd2429624535_)))
                                           (let ((_hd2429924545_
                                                  (##car _e2429824541_))
                                                 (_tl2430024548_
                                                  (##cdr _e2429824541_)))
                                             (if (gx#stx-pair? _tl2430024548_)
                                                 (let ((_e2430124551_
                                                        (gx#syntax-e
                                                         _tl2430024548_)))
                                                   (let ((_hd2430224555_
                                                          (##car _e2430124551_))
                                                         (_tl2430324558_
                                                          (##cdr _e2430124551_)))
                                                     (if (gx#stx-null?
                                                          _tl2430324558_)
                                                         (if (gx#stx-pair/null?
                                                              _tl2429724538_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _tl2429724538_)
                               '0)
                         (let ((_g29583_
                                (gx#syntax-split-splice _tl2429724538_ '0)))
                           (begin
                             (let ((_g29584_ (values-count _g29583_)))
                               (if (not (fx= _g29584_ 2))
                                   (error "Context expects 2 values"
                                          _g29584_)))
                             (let ((_target2430424561_ (values-ref _g29583_ 0))
                                   (_tl2430624564_ (values-ref _g29583_ 1)))
                               (if (gx#stx-null? _tl2430624564_)
                                   (letrec ((_loop2430724567_
                                             (lambda (_hd2430524571_
                                                      _body2431124574_)
                                               (if (gx#stx-pair?
                                                    _hd2430524571_)
                                                   (let ((_e2430824577_
                                                          (gx#syntax-e
                                                           _hd2430524571_)))
                                                     (let ((_lp-hd2430924581_
                                                            (##car _e2430824577_))
                                                           (_lp-tl2431024584_
                                                            (##cdr _e2430824577_)))
                                                       (_loop2430724567_
                                                        _lp-tl2431024584_
                                                        (cons _lp-hd2430924581_
                                                              _body2431124574_))))
                                                   (let ((_body2431224587_
                                                          (reverse _body2431124574_)))
                                                     ((lambda (_L24591_
                                                               _L24593_
                                                               _L24594_
                                                               _L24595_)
                                                        (if (|gerbil/core::<match>[1]#match-pattern?|
                                                             _L24594_)
                                                            (cons _L24595_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons _L24594_ (cons _L24593_ '())) '())
                                (begin
                                  '#!void
                                  (foldr (lambda (_g2461724620_ _g2461824623_)
                                           (cons _g2461724620_ _g2461824623_))
                                         '()
                                         _L24591_))))
                    (_g2426924514_ _g2427124518_)))
              _body2431224587_
              _hd2430224555_
              _hd2429924545_
              _hd2429324525_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop2430724567_ _target2430424561_ '()))
                                   (_g2426924514_ _g2427124518_)))))
                         (_g2426924514_ _g2427124518_))
                     (_g2426924514_ _g2427124518_))
                 (_g2426924514_ _g2427124518_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2426924514_
                                                  _g2427124518_))))
                                         (_g2426924514_ _g2427124518_))))
                                 (_g2426924514_ _g2427124518_))))
                         (_g2426924514_ _g2427124518_)))))
              (let ((_g2426724708_
                     (lambda (_g2427124630_)
                       (if (gx#stx-pair? _g2427124630_)
                           (let ((_e2427324633_ (gx#syntax-e _g2427124630_)))
                             (let ((_hd2427424637_ (##car _e2427324633_))
                                   (_tl2427524640_ (##cdr _e2427324633_)))
                               (if (gx#stx-pair? _tl2427524640_)
                                   (let ((_e2427624643_
                                          (gx#syntax-e _tl2427524640_)))
                                     (let ((_hd2427724647_
                                            (##car _e2427624643_))
                                           (_tl2427824650_
                                            (##cdr _e2427624643_)))
                                       (if (gx#stx-null? _hd2427724647_)
                                           (if (gx#stx-pair/null?
                                                _tl2427824650_)
                                               (if (fx>= (gx#stx-length
                                                          _tl2427824650_)
                                                         '0)
                                                   (let ((_g29585_
                                                          (gx#syntax-split-splice
                                                           _tl2427824650_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29586_
                                                              (values-count
                                                               _g29585_)))
                                                         (if (not (fx= _g29586_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29586_)))
               (let ((_target2427924653_ (values-ref _g29585_ 0))
                     (_tl2428124656_ (values-ref _g29585_ 1)))
                 (if (gx#stx-null? _tl2428124656_)
                     (letrec ((_loop2428224659_
                               (lambda (_hd2428024663_ _body2428624666_)
                                 (if (gx#stx-pair? _hd2428024663_)
                                     (let ((_e2428324669_
                                            (gx#syntax-e _hd2428024663_)))
                                       (let ((_lp-hd2428424673_
                                              (##car _e2428324669_))
                                             (_lp-tl2428524676_
                                              (##cdr _e2428324669_)))
                                         (_loop2428224659_
                                          _lp-tl2428524676_
                                          (cons _lp-hd2428424673_
                                                _body2428624666_))))
                                     (let ((_body2428724679_
                                            (reverse _body2428624666_)))
                                       ((lambda (_L24683_)
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons '()
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2469924702_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2470024705_)
                         (cons _g2469924702_ _g2470024705_))
                       '()
                       _L24683_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body2428724679_))))))
                       (_loop2428224659_ _target2427924653_ '()))
                     (_g2426824626_ _g2427124630_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2426824626_
                                                    _g2427124630_))
                                               (_g2426824626_ _g2427124630_))
                                           (_g2426824626_ _g2427124630_))))
                                   (_g2426824626_ _g2427124630_))))
                           (_g2426824626_ _g2427124630_)))))
                (_g2426724708_ _$stx24264_)))))))
    (define |gerbil/core::<match>[:0:]#with*|
      (lambda (_$stx24716_)
        (let ((_g2472124773_
               (lambda (_g2472224769_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2472224769_))))
          (let ((_g2472024856_
                 (lambda (_g2472224777_)
                   (if (gx#stx-pair? _g2472224777_)
                       (let ((_e2475324780_ (gx#syntax-e _g2472224777_)))
                         (let ((_hd2475424784_ (##car _e2475324780_))
                               (_tl2475524787_ (##cdr _e2475324780_)))
                           (if (gx#stx-pair? _tl2475524787_)
                               (let ((_e2475624790_
                                      (gx#syntax-e _tl2475524787_)))
                                 (let ((_hd2475724794_ (##car _e2475624790_))
                                       (_tl2475824797_ (##cdr _e2475624790_)))
                                   (if (gx#stx-null? _hd2475724794_)
                                       (if (gx#stx-pair/null? _tl2475824797_)
                                           (if (fx>= (gx#stx-length
                                                      _tl2475824797_)
                                                     '0)
                                               (let ((_g29587_
                                                      (gx#syntax-split-splice
                                                       _tl2475824797_
                                                       '0)))
                                                 (begin
                                                   (let ((_g29588_
                                                          (values-count
                                                           _g29587_)))
                                                     (if (not (fx= _g29588_ 2))
                                                         (error "Context expects 2 values"
                                                                _g29588_)))
                                                   (let ((_target2475924800_
                                                          (values-ref
                                                           _g29587_
                                                           0))
                                                         (_tl2476124803_
                                                          (values-ref
                                                           _g29587_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl2476124803_)
                                                         (letrec ((_loop2476224806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd2476024810_ _body2476624813_)
                             (if (gx#stx-pair? _hd2476024810_)
                                 (let ((_e2476324816_
                                        (gx#syntax-e _hd2476024810_)))
                                   (let ((_lp-hd2476424820_
                                          (##car _e2476324816_))
                                         (_lp-tl2476524823_
                                          (##cdr _e2476324816_)))
                                     (_loop2476224806_
                                      _lp-tl2476524823_
                                      (cons _lp-hd2476424820_
                                            _body2476624813_))))
                                 (let ((_body2476724826_
                                        (reverse _body2476624813_)))
                                   ((lambda (_L24830_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g2484724850_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2484824853_)
                     (cons _g2484724850_ _g2484824853_))
                   '()
                   _L24830_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _body2476724826_))))))
                   (_loop2476224806_ _target2475924800_ '()))
                 (_g2472124773_ _g2472224777_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2472124773_ _g2472224777_))
                                           (_g2472124773_ _g2472224777_))
                                       (_g2472124773_ _g2472224777_))))
                               (_g2472124773_ _g2472224777_))))
                       (_g2472124773_ _g2472224777_)))))
            (let ((_g2471924982_
                   (lambda (_g2472224860_)
                     (if (gx#stx-pair? _g2472224860_)
                         (let ((_e2472824863_ (gx#syntax-e _g2472224860_)))
                           (let ((_hd2472924867_ (##car _e2472824863_))
                                 (_tl2473024870_ (##cdr _e2472824863_)))
                             (if (gx#stx-pair? _tl2473024870_)
                                 (let ((_e2473124873_
                                        (gx#syntax-e _tl2473024870_)))
                                   (let ((_hd2473224877_ (##car _e2473124873_))
                                         (_tl2473324880_
                                          (##cdr _e2473124873_)))
                                     (if (gx#stx-pair? _hd2473224877_)
                                         (let ((_e2473424883_
                                                (gx#syntax-e _hd2473224877_)))
                                           (let ((_hd2473524887_
                                                  (##car _e2473424883_))
                                                 (_tl2473624890_
                                                  (##cdr _e2473424883_)))
                                             (if (gx#stx-pair? _hd2473524887_)
                                                 (let ((_e2473724893_
                                                        (gx#syntax-e
                                                         _hd2473524887_)))
                                                   (let ((_hd2473824897_
                                                          (##car _e2473724893_))
                                                         (_tl2473924900_
                                                          (##cdr _e2473724893_)))
                                                     (if (gx#stx-pair?
                                                          _tl2473924900_)
                                                         (let ((_e2474024903_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2473924900_)))
                   (let ((_hd2474124907_ (##car _e2474024903_))
                         (_tl2474224910_ (##cdr _e2474024903_)))
                     (if (gx#stx-null? _tl2474224910_)
                         (if (gx#stx-pair/null? _tl2473324880_)
                             (if (fx>= (gx#stx-length _tl2473324880_) '0)
                                 (let ((_g29589_
                                        (gx#syntax-split-splice
                                         _tl2473324880_
                                         '0)))
                                   (begin
                                     (let ((_g29590_ (values-count _g29589_)))
                                       (if (not (fx= _g29590_ 2))
                                           (error "Context expects 2 values"
                                                  _g29590_)))
                                     (let ((_target2474324913_
                                            (values-ref _g29589_ 0))
                                           (_tl2474524916_
                                            (values-ref _g29589_ 1)))
                                       (if (gx#stx-null? _tl2474524916_)
                                           (letrec ((_loop2474624919_
                                                     (lambda (_hd2474424923_
                                                              _body2475024926_)
                                                       (if (gx#stx-pair?
                                                            _hd2474424923_)
                                                           (let ((_e2474724929_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd2474424923_)))
                     (let ((_lp-hd2474824933_ (##car _e2474724929_))
                           (_lp-tl2474924936_ (##cdr _e2474724929_)))
                       (_loop2474624919_
                        _lp-tl2474924936_
                        (cons _lp-hd2474824933_ _body2475024926_))))
                   (let ((_body2475124939_ (reverse _body2475024926_)))
                     ((lambda (_L24943_ _L24945_ _L24946_ _L24947_ _L24948_)
                        (cons (gx#datum->syntax '#f 'with)
                              (cons (cons (cons _L24947_ (cons _L24946_ '()))
                                          '())
                                    (cons (cons _L24948_
                                                (cons _L24945_
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2497324976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2497424979_)
                         (cons _g2497324976_ _g2497424979_))
                       '()
                       _L24943_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))))
                      _body2475124939_
                      _tl2473624890_
                      _hd2474124907_
                      _hd2473824897_
                      _hd2472924867_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop2474624919_
                                              _target2474324913_
                                              '()))
                                           (_g2472024856_ _g2472224860_)))))
                                 (_g2472024856_ _g2472224860_))
                             (_g2472024856_ _g2472224860_))
                         (_g2472024856_ _g2472224860_))))
                 (_g2472024856_ _g2472224860_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2472024856_
                                                  _g2472224860_))))
                                         (_g2472024856_ _g2472224860_))))
                                 (_g2472024856_ _g2472224860_))))
                         (_g2472024856_ _g2472224860_)))))
              (_g2471924982_ _$stx24716_))))))
    (define |gerbil/core::<match>[:0:]#?|
      (lambda (_$stx24988_)
        (let ((_g2499925143_
               (lambda (_g2500025139_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2500025139_))))
          (let ((_g2499825238_
                 (lambda (_g2500025147_)
                   (if (gx#stx-pair? _g2500025147_)
                       (let ((_e2512025150_ (gx#syntax-e _g2500025147_)))
                         (let ((_hd2512125154_ (##car _e2512025150_))
                               (_tl2512225157_ (##cdr _e2512025150_)))
                           (if (gx#stx-pair? _tl2512225157_)
                               (let ((_e2512325160_
                                      (gx#syntax-e _tl2512225157_)))
                                 (let ((_hd2512425164_ (##car _e2512325160_))
                                       (_tl2512525167_ (##cdr _e2512325160_)))
                                   (if (gx#stx-pair? _tl2512525167_)
                                       (let ((_e2512625170_
                                              (gx#syntax-e _tl2512525167_)))
                                         (let ((_hd2512725174_
                                                (##car _e2512625170_))
                                               (_tl2512825177_
                                                (##cdr _e2512625170_)))
                                           (if (gx#stx-datum? _hd2512725174_)
                                               (if (equal? (gx#stx-e
                                                            _hd2512725174_)
                                                           '::)
                                                   (if (gx#stx-pair?
                                                        _tl2512825177_)
                                                       (let ((_e2512925180_
                                                              (gx#syntax-e
                                                               _tl2512825177_)))
                                                         (let ((_hd2513025184_
                                                                (##car _e2512925180_))
                                                               (_tl2513125187_
                                                                (##cdr _e2512925180_)))
                                                           (if (gx#stx-pair?
                                                                _tl2513125187_)
                                                               (let ((_e2513225190_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2513125187_)))
                         (let ((_hd2513325194_ (##car _e2513225190_))
                               (_tl2513425197_ (##cdr _e2513225190_)))
                           (if (gx#identifier? _hd2513325194_)
                               (if (gx#free-identifier=?
                                    |gerbil/core::<match>[1]#_g29591_|
                                    _hd2513325194_)
                                   (if (gx#stx-pair? _tl2513425197_)
                                       (let ((_e2513525200_
                                              (gx#syntax-e _tl2513425197_)))
                                         (let ((_hd2513625204_
                                                (##car _e2513525200_))
                                               (_tl2513725207_
                                                (##cdr _e2513525200_)))
                                           (if (gx#stx-null? _tl2513725207_)
                                               ((lambda (_L25210_
                                                         _L25212_
                                                         _L25213_
                                                         _L25214_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$obj)
                            '())
                      (cons (cons (gx#datum->syntax '#f 'and)
                                  (cons (cons _L25214_
                                              (cons _L25213_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '$obj)
                                                          '())))
                                        (cons (cons _L25210_
                                                    (cons (cons _L25212_
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
                                                _hd2513625204_
                                                _hd2513025184_
                                                _hd2512425164_
                                                _hd2512125154_)
                                               (_g2499925143_ _g2500025147_))))
                                       (_g2499925143_ _g2500025147_))
                                   (_g2499925143_ _g2500025147_))
                               (_g2499925143_ _g2500025147_))))
                       (_g2499925143_ _g2500025147_))))
               (_g2499925143_ _g2500025147_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2499925143_
                                                    _g2500025147_))
                                               (_g2499925143_ _g2500025147_))))
                                       (_g2499925143_ _g2500025147_))))
                               (_g2499925143_ _g2500025147_))))
                       (_g2499925143_ _g2500025147_)))))
            (let ((_g2499725306_
                   (lambda (_g2500025242_)
                     (if (gx#stx-pair? _g2500025242_)
                         (let ((_e2510425245_ (gx#syntax-e _g2500025242_)))
                           (let ((_hd2510525249_ (##car _e2510425245_))
                                 (_tl2510625252_ (##cdr _e2510425245_)))
                             (if (gx#stx-pair? _tl2510625252_)
                                 (let ((_e2510725255_
                                        (gx#syntax-e _tl2510625252_)))
                                   (let ((_hd2510825259_ (##car _e2510725255_))
                                         (_tl2510925262_
                                          (##cdr _e2510725255_)))
                                     (if (gx#stx-pair? _tl2510925262_)
                                         (let ((_e2511025265_
                                                (gx#syntax-e _tl2510925262_)))
                                           (let ((_hd2511125269_
                                                  (##car _e2511025265_))
                                                 (_tl2511225272_
                                                  (##cdr _e2511025265_)))
                                             (if (gx#stx-datum? _hd2511125269_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2511125269_)
                                                             '::)
                                                     (if (gx#stx-pair?
                                                          _tl2511225272_)
                                                         (let ((_e2511325275_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2511225272_)))
                   (let ((_hd2511425279_ (##car _e2511325275_))
                         (_tl2511525282_ (##cdr _e2511325275_)))
                     (if (gx#stx-null? _tl2511525282_)
                         ((lambda (_L25285_ _L25287_ _L25288_)
                            (cons (gx#datum->syntax '#f 'lambda)
                                  (cons (cons (gx#datum->syntax '#f '$obj) '())
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'alet)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$val)
                        (cons (cons _L25288_
                                    (cons _L25287_
                                          (cons (gx#datum->syntax '#f '$obj)
                                                '())))
                              '()))
                  (cons (cons _L25285_ (cons (gx#datum->syntax '#f '$val) '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          _hd2511425279_
                          _hd2510825259_
                          _hd2510525249_)
                         (_g2499825238_ _g2500025242_))))
                 (_g2499825238_ _g2500025242_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2499825238_
                                                      _g2500025242_))
                                                 (_g2499825238_
                                                  _g2500025242_))))
                                         (_g2499825238_ _g2500025242_))))
                                 (_g2499825238_ _g2500025242_))))
                         (_g2499825238_ _g2500025242_)))))
              (let ((_g2499625374_
                     (lambda (_g2500025310_)
                       (if (gx#stx-pair? _g2500025310_)
                           (let ((_e2508925313_ (gx#syntax-e _g2500025310_)))
                             (let ((_hd2509025317_ (##car _e2508925313_))
                                   (_tl2509125320_ (##cdr _e2508925313_)))
                               (if (gx#stx-pair? _tl2509125320_)
                                   (let ((_e2509225323_
                                          (gx#syntax-e _tl2509125320_)))
                                     (let ((_hd2509325327_
                                            (##car _e2509225323_))
                                           (_tl2509425330_
                                            (##cdr _e2509225323_)))
                                       (if (gx#stx-pair? _tl2509425330_)
                                           (let ((_e2509525333_
                                                  (gx#syntax-e
                                                   _tl2509425330_)))
                                             (let ((_hd2509625337_
                                                    (##car _e2509525333_))
                                                   (_tl2509725340_
                                                    (##cdr _e2509525333_)))
                                               (if (gx#identifier?
                                                    _hd2509625337_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core::<match>[1]#_g29592_|
                                                        _hd2509625337_)
                                                       (if (gx#stx-pair?
                                                            _tl2509725340_)
                                                           (let ((_e2509825343_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl2509725340_)))
                     (let ((_hd2509925347_ (##car _e2509825343_))
                           (_tl2510025350_ (##cdr _e2509825343_)))
                       (if (gx#stx-null? _tl2510025350_)
                           ((lambda (_L25353_ _L25355_ _L25356_)
                              (cons (gx#datum->syntax '#f 'lambda)
                                    (cons (cons (gx#datum->syntax '#f '$obj)
                                                '())
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'and)
                                                      (cons (cons _L25356_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L25355_
                                (cons (gx#datum->syntax '#f '$obj) '())))
                    (cons (cons _L25353_
                                (cons (gx#datum->syntax '#f '$obj) '()))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                            _hd2509925347_
                            _hd2509325327_
                            _hd2509025317_)
                           (_g2499725306_ _g2500025310_))))
                   (_g2499725306_ _g2500025310_))
               (_g2499725306_ _g2500025310_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2499725306_
                                                    _g2500025310_))))
                                           (_g2499725306_ _g2500025310_))))
                                   (_g2499725306_ _g2500025310_))))
                           (_g2499725306_ _g2500025310_)))))
                (let ((_g2499525416_
                       (lambda (_g2500025378_)
                         (if (gx#stx-pair? _g2500025378_)
                             (let ((_e2508025381_ (gx#syntax-e _g2500025378_)))
                               (let ((_hd2508125385_ (##car _e2508025381_))
                                     (_tl2508225388_ (##cdr _e2508025381_)))
                                 (if (gx#stx-pair? _tl2508225388_)
                                     (let ((_e2508325391_
                                            (gx#syntax-e _tl2508225388_)))
                                       (let ((_hd2508425395_
                                              (##car _e2508325391_))
                                             (_tl2508525398_
                                              (##cdr _e2508325391_)))
                                         (if (gx#stx-null? _tl2508525398_)
                                             ((lambda (_L25401_ _L25403_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '$obj)
                          '())
                    (cons (cons _L25403_
                                (cons _L25401_
                                      (cons (gx#datum->syntax '#f '$obj) '())))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd2508425395_
                                              _hd2508125385_)
                                             (_g2499625374_ _g2500025378_))))
                                     (_g2499625374_ _g2500025378_))))
                             (_g2499625374_ _g2500025378_)))))
                  (let ((_g2499425470_
                         (lambda (_g2500025420_)
                           (if (gx#stx-pair? _g2500025420_)
                               (let ((_e2506925423_
                                      (gx#syntax-e _g2500025420_)))
                                 (let ((_hd2507025427_ (##car _e2506925423_))
                                       (_tl2507125430_ (##cdr _e2506925423_)))
                                   (if (gx#stx-pair? _tl2507125430_)
                                       (let ((_e2507225433_
                                              (gx#syntax-e _tl2507125430_)))
                                         (let ((_hd2507325437_
                                                (##car _e2507225433_))
                                               (_tl2507425440_
                                                (##cdr _e2507225433_)))
                                           (if (gx#stx-pair? _tl2507425440_)
                                               (let ((_e2507525443_
                                                      (gx#syntax-e
                                                       _tl2507425440_)))
                                                 (let ((_hd2507625447_
                                                        (##car _e2507525443_))
                                                       (_tl2507725450_
                                                        (##cdr _e2507525443_)))
                                                   (if (gx#stx-null?
                                                        _tl2507725450_)
                                                       ((lambda (_L25453_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L25455_)
                  (cons _L25455_ (cons _L25453_ '())))
                _hd2507625447_
                _hd2507325437_)
               (_g2499525416_ _g2500025420_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2499525416_ _g2500025420_))))
                                       (_g2499525416_ _g2500025420_))))
                               (_g2499525416_ _g2500025420_)))))
                    (let ((_g2499325550_
                           (lambda (_g2500025474_)
                             (if (gx#stx-pair? _g2500025474_)
                                 (let ((_e2505225477_
                                        (gx#syntax-e _g2500025474_)))
                                   (let ((_hd2505325481_ (##car _e2505225477_))
                                         (_tl2505425484_
                                          (##cdr _e2505225477_)))
                                     (if (gx#stx-pair? _tl2505425484_)
                                         (let ((_e2505525487_
                                                (gx#syntax-e _tl2505425484_)))
                                           (let ((_hd2505625491_
                                                  (##car _e2505525487_))
                                                 (_tl2505725494_
                                                  (##cdr _e2505525487_)))
                                             (if (gx#stx-pair? _hd2505625491_)
                                                 (let ((_e2505825497_
                                                        (gx#syntax-e
                                                         _hd2505625491_)))
                                                   (let ((_hd2505925501_
                                                          (##car _e2505825497_))
                                                         (_tl2506025504_
                                                          (##cdr _e2505825497_)))
                                                     (if (gx#identifier?
                                                          _hd2505925501_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core::<match>[1]#_g29593_|
                                                              _hd2505925501_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2506025504_)
                         (let ((_e2506125507_ (gx#syntax-e _tl2506025504_)))
                           (let ((_hd2506225511_ (##car _e2506125507_))
                                 (_tl2506325514_ (##cdr _e2506125507_)))
                             (if (gx#stx-null? _tl2506325514_)
                                 (if (gx#stx-pair? _tl2505725494_)
                                     (let ((_e2506425517_
                                            (gx#syntax-e _tl2505725494_)))
                                       (let ((_hd2506525521_
                                              (##car _e2506425517_))
                                             (_tl2506625524_
                                              (##cdr _e2506425517_)))
                                         (if (gx#stx-null? _tl2506625524_)
                                             ((lambda (_L25527_
                                                       _L25529_
                                                       _L25530_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'not)
                                                      (cons (cons _L25530_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L25529_ (cons _L25527_ '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd2506525521_
                                              _hd2506225511_
                                              _hd2505325481_)
                                             (_g2499425470_ _g2500025474_))))
                                     (_g2499425470_ _g2500025474_))
                                 (_g2499425470_ _g2500025474_))))
                         (_g2499425470_ _g2500025474_))
                     (_g2499425470_ _g2500025474_))
                 (_g2499425470_ _g2500025474_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2499425470_
                                                  _g2500025474_))))
                                         (_g2499425470_ _g2500025474_))))
                                 (_g2499425470_ _g2500025474_)))))
                      (let ((_g2499225660_
                             (lambda (_g2500025554_)
                               (if (gx#stx-pair? _g2500025554_)
                                   (let ((_e2502825557_
                                          (gx#syntax-e _g2500025554_)))
                                     (let ((_hd2502925561_
                                            (##car _e2502825557_))
                                           (_tl2503025564_
                                            (##cdr _e2502825557_)))
                                       (if (gx#stx-pair? _tl2503025564_)
                                           (let ((_e2503125567_
                                                  (gx#syntax-e
                                                   _tl2503025564_)))
                                             (let ((_hd2503225571_
                                                    (##car _e2503125567_))
                                                   (_tl2503325574_
                                                    (##cdr _e2503125567_)))
                                               (if (gx#stx-pair?
                                                    _hd2503225571_)
                                                   (let ((_e2503425577_
                                                          (gx#syntax-e
                                                           _hd2503225571_)))
                                                     (let ((_hd2503525581_
                                                            (##car _e2503425577_))
                                                           (_tl2503625584_
                                                            (##cdr _e2503425577_)))
                                                       (if (gx#identifier?
                                                            _hd2503525581_)
                                                           (if (gx#free-identifier=?
                                                                |gerbil/core::<match>[1]#_g29594_|
                                                                _hd2503525581_)
                                                               (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl2503625584_)
                           (if (fx>= (gx#stx-length _tl2503625584_) '0)
                               (let ((_g29595_
                                      (gx#syntax-split-splice
                                       _tl2503625584_
                                       '0)))
                                 (begin
                                   (let ((_g29596_ (values-count _g29595_)))
                                     (if (not (fx= _g29596_ 2))
                                         (error "Context expects 2 values"
                                                _g29596_)))
                                   (let ((_target2503725587_
                                          (values-ref _g29595_ 0))
                                         (_tl2503925590_
                                          (values-ref _g29595_ 1)))
                                     (if (gx#stx-null? _tl2503925590_)
                                         (letrec ((_loop2504025593_
                                                   (lambda (_hd2503825597_
                                                            _pred2504425600_)
                                                     (if (gx#stx-pair?
                                                          _hd2503825597_)
                                                         (let ((_e2504125603_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2503825597_)))
                   (let ((_lp-hd2504225607_ (##car _e2504125603_))
                         (_lp-tl2504325610_ (##cdr _e2504125603_)))
                     (_loop2504025593_
                      _lp-tl2504325610_
                      (cons _lp-hd2504225607_ _pred2504425600_))))
                 (let ((_pred2504525613_ (reverse _pred2504425600_)))
                   (if (gx#stx-pair? _tl2503325574_)
                       (let ((_e2504625617_ (gx#syntax-e _tl2503325574_)))
                         (let ((_hd2504725621_ (##car _e2504625617_))
                               (_tl2504825624_ (##cdr _e2504625617_)))
                           (if (gx#stx-null? _tl2504825624_)
                               ((lambda (_L25627_ _L25629_ _L25630_)
                                  (cons (gx#datum->syntax '#f 'or)
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g2565125654_
                                                          _g2565225657_)
                                                   (cons (cons _L25630_
                                                               (cons _g2565125654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L25627_ '())))
                 _g2565225657_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L25629_))))
                                _hd2504725621_
                                _pred2504525613_
                                _hd2502925561_)
                               (_g2499325550_ _g2500025554_))))
                       (_g2499325550_ _g2500025554_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop2504025593_
                                            _target2503725587_
                                            '()))
                                         (_g2499325550_ _g2500025554_)))))
                               (_g2499325550_ _g2500025554_))
                           (_g2499325550_ _g2500025554_))
                       (_g2499325550_ _g2500025554_))
                   (_g2499325550_ _g2500025554_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2499325550_
                                                    _g2500025554_))))
                                           (_g2499325550_ _g2500025554_))))
                                   (_g2499325550_ _g2500025554_)))))
                        (let ((_g2499125770_
                               (lambda (_g2500025664_)
                                 (if (gx#stx-pair? _g2500025664_)
                                     (let ((_e2500425667_
                                            (gx#syntax-e _g2500025664_)))
                                       (let ((_hd2500525671_
                                              (##car _e2500425667_))
                                             (_tl2500625674_
                                              (##cdr _e2500425667_)))
                                         (if (gx#stx-pair? _tl2500625674_)
                                             (let ((_e2500725677_
                                                    (gx#syntax-e
                                                     _tl2500625674_)))
                                               (let ((_hd2500825681_
                                                      (##car _e2500725677_))
                                                     (_tl2500925684_
                                                      (##cdr _e2500725677_)))
                                                 (if (gx#stx-pair?
                                                      _hd2500825681_)
                                                     (let ((_e2501025687_
                                                            (gx#syntax-e
                                                             _hd2500825681_)))
                                                       (let ((_hd2501125691_
                                                              (##car _e2501025687_))
                                                             (_tl2501225694_
                                                              (##cdr _e2501025687_)))
                                                         (if (gx#identifier?
                                                              _hd2501125691_)
                                                             (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          |gerbil/core::<match>[1]#_g29597_|
                          _hd2501125691_)
                         (if (gx#stx-pair/null? _tl2501225694_)
                             (if (fx>= (gx#stx-length _tl2501225694_) '0)
                                 (let ((_g29598_
                                        (gx#syntax-split-splice
                                         _tl2501225694_
                                         '0)))
                                   (begin
                                     (let ((_g29599_ (values-count _g29598_)))
                                       (if (not (fx= _g29599_ 2))
                                           (error "Context expects 2 values"
                                                  _g29599_)))
                                     (let ((_target2501325697_
                                            (values-ref _g29598_ 0))
                                           (_tl2501525700_
                                            (values-ref _g29598_ 1)))
                                       (if (gx#stx-null? _tl2501525700_)
                                           (letrec ((_loop2501625703_
                                                     (lambda (_hd2501425707_
                                                              _pred2502025710_)
                                                       (if (gx#stx-pair?
                                                            _hd2501425707_)
                                                           (let ((_e2501725713_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd2501425707_)))
                     (let ((_lp-hd2501825717_ (##car _e2501725713_))
                           (_lp-tl2501925720_ (##cdr _e2501725713_)))
                       (_loop2501625703_
                        _lp-tl2501925720_
                        (cons _lp-hd2501825717_ _pred2502025710_))))
                   (let ((_pred2502125723_ (reverse _pred2502025710_)))
                     (if (gx#stx-pair? _tl2500925684_)
                         (let ((_e2502225727_ (gx#syntax-e _tl2500925684_)))
                           (let ((_hd2502325731_ (##car _e2502225727_))
                                 (_tl2502425734_ (##cdr _e2502225727_)))
                             (if (gx#stx-null? _tl2502425734_)
                                 ((lambda (_L25737_ _L25739_ _L25740_)
                                    (cons (gx#datum->syntax '#f 'and)
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2576125764_
                                                            _g2576225767_)
                                                     (cons (cons _L25740_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _g2576125764_ (cons _L25737_ '())))
                   _g2576225767_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _L25739_))))
                                  _hd2502325731_
                                  _pred2502125723_
                                  _hd2500525671_)
                                 (_g2499225660_ _g2500025664_))))
                         (_g2499225660_ _g2500025664_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop2501625703_
                                              _target2501325697_
                                              '()))
                                           (_g2499225660_ _g2500025664_)))))
                                 (_g2499225660_ _g2500025664_))
                             (_g2499225660_ _g2500025664_))
                         (_g2499225660_ _g2500025664_))
                     (_g2499225660_ _g2500025664_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2499225660_
                                                      _g2500025664_))))
                                             (_g2499225660_ _g2500025664_))))
                                     (_g2499225660_ _g2500025664_)))))
                          (_g2499125770_ _$stx24988_))))))))))))
    (define |gerbil/core::<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx25776_)
        (let ((_g2578125815_
               (lambda (_g2578225811_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2578225811_))))
          (let ((_g2578025872_
                 (lambda (_g2578225819_)
                   (if (gx#stx-pair? _g2578225819_)
                       (let ((_e2580125822_ (gx#syntax-e _g2578225819_)))
                         (let ((_hd2580225826_ (##car _e2580125822_))
                               (_tl2580325829_ (##cdr _e2580125822_)))
                           (if (gx#stx-pair? _tl2580325829_)
                               (let ((_e2580425832_
                                      (gx#syntax-e _tl2580325829_)))
                                 (let ((_hd2580525836_ (##car _e2580425832_))
                                       (_tl2580625839_ (##cdr _e2580425832_)))
                                   (if (gx#stx-pair? _tl2580625839_)
                                       (let ((_e2580725842_
                                              (gx#syntax-e _tl2580625839_)))
                                         (let ((_hd2580825846_
                                                (##car _e2580725842_))
                                               (_tl2580925849_
                                                (##cdr _e2580725842_)))
                                           (if (gx#stx-null? _tl2580925849_)
                                               ((lambda (_L25852_
                                                         _L25854_
                                                         _L25855_)
                                                  (cons _L25855_
                                                        (cons _L25854_
                                                              (cons _L25852_
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
                                                _hd2580825846_
                                                _hd2580525836_
                                                _hd2580225826_)
                                               (_g2578125815_ _g2578225819_))))
                                       (_g2578125815_ _g2578225819_))))
                               (_g2578125815_ _g2578225819_))))
                       (_g2578125815_ _g2578225819_)))))
            (let ((_g2577925940_
                   (lambda (_g2578225876_)
                     (if (gx#stx-pair? _g2578225876_)
                         (let ((_e2578625879_ (gx#syntax-e _g2578225876_)))
                           (let ((_hd2578725883_ (##car _e2578625879_))
                                 (_tl2578825886_ (##cdr _e2578625879_)))
                             (if (gx#stx-pair? _tl2578825886_)
                                 (let ((_e2578925889_
                                        (gx#syntax-e _tl2578825886_)))
                                   (let ((_hd2579025893_ (##car _e2578925889_))
                                         (_tl2579125896_
                                          (##cdr _e2578925889_)))
                                     (if (gx#stx-pair? _tl2579125896_)
                                         (let ((_e2579225899_
                                                (gx#syntax-e _tl2579125896_)))
                                           (let ((_hd2579325903_
                                                  (##car _e2579225899_))
                                                 (_tl2579425906_
                                                  (##cdr _e2579225899_)))
                                             (if (gx#stx-pair? _tl2579425906_)
                                                 (let ((_e2579525909_
                                                        (gx#syntax-e
                                                         _tl2579425906_)))
                                                   (let ((_hd2579625913_
                                                          (##car _e2579525909_))
                                                         (_tl2579725916_
                                                          (##cdr _e2579525909_)))
                                                     (if (gx#stx-null?
                                                          _tl2579725916_)
                                                         ((lambda (_L25919_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L25921_
                           _L25922_)
                    (if (gx#identifier? _L25922_)
                        (cons (gx#datum->syntax '#f 'defsyntax)
                              (cons _L25922_
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'make-match-macro)
                                                (cons 'macro:
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let)
                          (cons (cons (cons (gx#datum->syntax '#f '$match-e)
                                            (cons _L25921_ '()))
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '$macro-e)
                                                  (cons _L25919_ '()))
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
                        (_g2578025872_ _g2578225876_)))
                  _hd2579625913_
                  _hd2579325903_
                  _hd2579025893_)
                 (_g2578025872_ _g2578225876_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2578025872_
                                                  _g2578225876_))))
                                         (_g2578025872_ _g2578225876_))))
                                 (_g2578025872_ _g2578225876_))))
                         (_g2578025872_ _g2578225876_)))))
              (_g2577925940_ _$stx25776_))))))
    (define |gerbil/core::<match>[:0:]#defrules-for-match|
      (lambda (_$stx25944_)
        (let ((_g2594825963_
               (lambda (_g2594925959_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2594925959_))))
          (let ((_g2594726006_
                 (lambda (_g2594925967_)
                   (if (gx#stx-pair? _g2594925967_)
                       (let ((_e2595225970_ (gx#syntax-e _g2594925967_)))
                         (let ((_hd2595325974_ (##car _e2595225970_))
                               (_tl2595425977_ (##cdr _e2595225970_)))
                           (if (gx#stx-pair? _tl2595425977_)
                               (let ((_e2595525980_
                                      (gx#syntax-e _tl2595425977_)))
                                 (let ((_hd2595625984_ (##car _e2595525980_))
                                       (_tl2595725987_ (##cdr _e2595525980_)))
                                   ((lambda (_L25990_ _L25992_)
                                      (cons (gx#datum->syntax
                                             '#f
                                             'defsyntax-for-match)
                                            (cons _L25992_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'syntax-rules)
                                                              _L25990_)
                                                        '()))))
                                    _tl2595725987_
                                    _hd2595625984_)))
                               (_g2594825963_ _g2594925967_))))
                       (_g2594825963_ _g2594925967_)))))
            (_g2594726006_ _$stx25944_)))))))
