(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<match>[1]#_g29541_|
    (gx#core-quote-syntax 'quasiquote))
  (define |gerbil/core::<match>[1]#_g29542_| (gx#core-quote-syntax 'quote))
  (define |gerbil/core::<match>[1]#_g29545_| (gx#core-quote-syntax 'vector))
  (define |gerbil/core::<match>[1]#_g29546_| (gx#core-quote-syntax 'values))
  (define |gerbil/core::<match>[1]#_g29547_| (gx#core-quote-syntax 'values))
  (define |gerbil/core::<match>[1]#_g29548_| (gx#core-quote-syntax 'box))
  (define |gerbil/core::<match>[1]#_g29549_| (gx#core-quote-syntax '@list))
  (define |gerbil/core::<match>[1]#_g29550_| (gx#core-quote-syntax 'cons*))
  (define |gerbil/core::<match>[1]#_g29551_| (gx#core-quote-syntax 'cons))
  (define |gerbil/core::<match>[1]#_g29552_| (gx#core-quote-syntax 'not))
  (define |gerbil/core::<match>[1]#_g29553_| (gx#core-quote-syntax 'or))
  (define |gerbil/core::<match>[1]#_g29554_| (gx#core-quote-syntax 'and))
  (define |gerbil/core::<match>[1]#_g29555_| (gx#core-quote-syntax '?))
  (define |gerbil/core::<match>[1]#_g29556_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g29557_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g29570_| (gx#core-quote-syntax 'else))
  (define |gerbil/core::<match>[1]#_g29571_| (gx#core-quote-syntax 'else))
  (define |gerbil/core::<match>[1]#_g29572_| (gx#core-quote-syntax '<...>))
  (define |gerbil/core::<match>[1]#_g29573_| (gx#core-quote-syntax '<>))
  (define |gerbil/core::<match>[1]#_g29590_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g29591_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g29592_| (gx#core-quote-syntax 'not))
  (define |gerbil/core::<match>[1]#_g29593_| (gx#core-quote-syntax 'or))
  (define |gerbil/core::<match>[1]#_g29596_| (gx#core-quote-syntax 'and))
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
      (lambda _$args23650_
        (apply make-class-instance
               |gerbil/core::<match>[1]#match-macro::t|
               _$args23650_)))
    (define |gerbil/core::<match>[1]#syntax-local-match-macro?|
      (lambda (_stx23647_)
        (if (gx#identifier? _stx23647_)
            (|gerbil/core::<match>[1]#match-macro?|
             (gx#syntax-local-value _stx23647_ false))
            '#f)))
    (define |gerbil/core::<match>[1]#parse-match-pattern|
      (let ((_opt-lambda2202923633_
             (lambda (_stx22031_ _match-stx22033_)
               (let ((_parse-qq22041_
                      (lambda (_hd22047_)
                        (let ((_g2204922056_
                               (lambda (_g2205022052_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2205022052_))))
                          (_g2204922056_ _hd22047_)))))
                 (let ((_parse-error22042_
                        (lambda (_hd22044_)
                          (apply gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; illegal pattern"
                                 (if _match-stx22033_
                                     (cons _match-stx22033_
                                           (cons _stx22031_
                                                 (cons _hd22044_ '())))
                                     (cons _stx22031_
                                           (cons _hd22044_ '())))))))
                   (letrec ((_parse122035_
                             (lambda (_hd22382_)
                               (let ((_g2240722538_
                                      (lambda (_g2240822534_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g2240822534_))))
                                 (let ((_g2240622549_
                                        (lambda (_g2240822542_)
                                          ((lambda ()
                                             (_parse-error22042_
                                              _hd22382_))))))
                                   (let ((_g2240522567_
                                          (lambda (_g2240822553_)
                                            ((lambda (_L22556_)
                                               (if (gx#stx-datum? _L22556_)
                                                   (cons 'datum:
                                                         (cons (gx#stx-e
                                                                _L22556_)
                                                               '()))
                                                   (_g2240622549_
                                                    _g2240822553_)))
                                             _g2240822553_))))
                                     (let ((_g2240422583_
                                            (lambda (_g2240822571_)
                                              ((lambda (_L22574_)
                                                 (if (if (gx#identifier?
                                                          _L22574_)
                                                         (not (gx#ellipsis?
                                                               _L22574_))
                                                         '#f)
                                                     (cons 'var:
                                                           (cons _L22574_ '()))
                                                     (_g2240522567_
                                                      _g2240822571_)))
                                               _g2240822571_))))
                                       (let ((_g2240322599_
                                              (lambda (_g2240822587_)
                                                ((lambda (_L22590_)
                                                   (if (gx#underscore?
                                                        _L22590_)
                                                       (cons 'any: '())
                                                       (_g2240422583_
                                                        _g2240822587_)))
                                                 _g2240822587_))))
                                         (let ((_g2240222631_
                                                (lambda (_g2240822603_)
                                                  (if (gx#stx-pair?
                                                       _g2240822603_)
                                                      (let ((_e2252722606_
                                                             (gx#syntax-e
                                                              _g2240822603_)))
                                                        (let ((_hd2252822610_
                                                               (##car _e2252722606_))
                                                              (_tl2252922613_
                                                               (##cdr _e2252722606_)))
                                                          ((lambda (_L22616_)
                                                             (if (|gerbil/core::<match>[1]#syntax-local-match-macro?|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L22616_)
                         (_parse122035_
                          (gx#core-apply-expander
                           (gx#syntax-local-e _L22616_)
                           (gx#stx-wrap-source
                            (cons 'match: _hd22382_)
                            (let ((_$e22627_ (gx#stx-source _hd22382_)))
                              (if _$e22627_
                                  _$e22627_
                                  (gx#stx-source _stx22031_))))))
                         (_g2240322599_ _g2240822603_)))
                   _hd2252822610_)))
              (_g2240322599_ _g2240822603_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_g2240122671_
                                                  (lambda (_g2240822635_)
                                                    (if (gx#stx-pair?
                                                         _g2240822635_)
                                                        (let ((_e2252022638_
                                                               (gx#syntax-e
                                                                _g2240822635_)))
                                                          (let ((_hd2252122642_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2252022638_))
                        (_tl2252222645_ (##cdr _e2252022638_)))
                    (if (gx#identifier? _hd2252122642_)
                        (if (gx#free-identifier=?
                             |gerbil/core::<match>[1]#_g29541_|
                             _hd2252122642_)
                            (if (gx#stx-pair? _tl2252222645_)
                                (let ((_e2252322648_
                                       (gx#syntax-e _tl2252222645_)))
                                  (let ((_hd2252422652_ (##car _e2252322648_))
                                        (_tl2252522655_ (##cdr _e2252322648_)))
                                    (if (gx#stx-null? _tl2252522655_)
                                        ((lambda (_L22658_)
                                           (_parse-qq22041_ _L22658_))
                                         _hd2252422652_)
                                        (_g2240222631_ _g2240822635_))))
                                (_g2240222631_ _g2240822635_))
                            (_g2240222631_ _g2240822635_))
                        (_g2240222631_ _g2240822635_))))
                (_g2240222631_ _g2240822635_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_g2240022711_
                                                    (lambda (_g2240822675_)
                                                      (if (gx#stx-pair?
                                                           _g2240822675_)
                                                          (let ((_e2251322678_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _g2240822675_)))
                    (let ((_hd2251422682_ (##car _e2251322678_))
                          (_tl2251522685_ (##cdr _e2251322678_)))
                      (if (gx#identifier? _hd2251422682_)
                          (if (gx#free-identifier=?
                               |gerbil/core::<match>[1]#_g29542_|
                               _hd2251422682_)
                              (if (gx#stx-pair? _tl2251522685_)
                                  (let ((_e2251622688_
                                         (gx#syntax-e _tl2251522685_)))
                                    (let ((_hd2251722692_
                                           (##car _e2251622688_))
                                          (_tl2251822695_
                                           (##cdr _e2251622688_)))
                                      (if (gx#stx-null? _tl2251822695_)
                                          ((lambda (_L22698_)
                                             (cons 'datum:
                                                   (cons (gx#stx-e _L22698_)
                                                         '())))
                                           _hd2251722692_)
                                          (_g2240122671_ _g2240822675_))))
                                  (_g2240122671_ _g2240822675_))
                              (_g2240122671_ _g2240822675_))
                          (_g2240122671_ _g2240822675_))))
                  (_g2240122671_ _g2240822675_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_g2239922761_
                                                      (lambda (_g2240822715_)
                                                        (if (gx#stx-pair?
                                                             _g2240822715_)
                                                            (let ((_e2250622718_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g2240822715_)))
                      (let ((_hd2250722722_ (##car _e2250622718_))
                            (_tl2250822725_ (##cdr _e2250622718_)))
                        (if (gx#stx-pair? _tl2250822725_)
                            (let ((_e2250922728_ (gx#syntax-e _tl2250822725_)))
                              (let ((_hd2251022732_ (##car _e2250922728_))
                                    (_tl2251122735_ (##cdr _e2250922728_)))
                                (if (gx#stx-null? _tl2251122735_)
                                    ((lambda (_L22738_ _L22740_)
                                       (if (if (gx#identifier? _L22740_)
                                               (let ((_$e22753_
                                                      (gx#free-identifier=?
                                                       _L22740_
                                                       (gx#datum->syntax
                                                        '#f
                                                        'eq?))))
                                                 (if _$e22753_
                                                     _$e22753_
                                                     (let ((_$e22757_
                                                            (gx#free-identifier=?
                                                             _L22740_
                                                             (gx#datum->syntax
                                                              '#f
                                                              'eqv?))))
                                                       (if _$e22757_
                                                           _$e22757_
                                                           (gx#free-identifier=?
                                                            _L22740_
                                                            (gx#datum->syntax
                                                             '#f
                                                             'equal?))))))
                                               '#f)
                                           (cons '?:
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'cut)
                                                             (cons _L22740_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f '<>)
                                 (cons _L22738_ '()))))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g2240022711_ _g2240822715_)))
                                     _hd2251022732_
                                     _hd2250722722_)
                                    (_g2240022711_ _g2240822715_))))
                            (_g2240022711_ _g2240822715_))))
                    (_g2240022711_ _g2240822715_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_g2239822791_
                                                        (lambda (_g2240822765_)
                                                          (if (gx#stx-pair?
                                                               _g2240822765_)
                                                              (let ((_e2250122768_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _g2240822765_)))
                        (let ((_hd2250222772_ (##car _e2250122768_))
                              (_tl2250322775_ (##cdr _e2250122768_)))
                          ((lambda (_L22778_ _L22780_)
                             (if (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-class-info?|
                                  _L22780_)
                                 (cons 'class:
                                       (cons (gx#syntax-local-value _L22780_)
                                             (cons (_parse-class-body22040_
                                                    _L22778_)
                                                   '())))
                                 (_g2239922761_ _g2240822765_)))
                           _tl2250322775_
                           _hd2250222772_)))
                      (_g2239922761_ _g2240822765_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_g2239722821_
                                                          (lambda (_g2240822795_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2240822795_)
                        (let ((_e2249622798_ (gx#syntax-e _g2240822795_)))
                          (let ((_hd2249722802_ (##car _e2249622798_))
                                (_tl2249822805_ (##cdr _e2249622798_)))
                            ((lambda (_L22808_ _L22810_)
                               (if (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-struct-info?|
                                    _L22810_)
                                   (cons 'struct:
                                         (cons (gx#syntax-local-value _L22810_)
                                               (cons (_parse-vector22038_
                                                      _L22808_)
                                                     '())))
                                   (_g2239822791_ _g2240822795_)))
                             _tl2249822805_
                             _hd2249722802_)))
                        (_g2239822791_ _g2240822795_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_g2239622884_
                                                            (lambda (_g2240822825_)
                                                              (if (gx#stx-vector?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2240822825_)
                          (let ((_e2248422828_
                                 (vector->list (gx#syntax-e _g2240822825_))))
                            (if (gx#stx-pair/null? _e2248422828_)
                                (if (fx>= (gx#stx-length _e2248422828_) '0)
                                    (let ((_g29543_
                                           (gx#syntax-split-splice
                                            _e2248422828_
                                            '0)))
                                      (begin
                                        (let ((_g29544_
                                               (values-count _g29543_)))
                                          (if (not (fx= _g29544_ 2))
                                              (error "Context expects 2 values"
                                                     _g29544_)))
                                        (let ((_target2248522832_
                                               (values-ref _g29543_ 0))
                                              (_tl2248722835_
                                               (values-ref _g29543_ 1)))
                                          (if (gx#stx-null? _tl2248722835_)
                                              (letrec ((_loop2248822838_
                                                        (lambda (_hd2248622842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body2249222845_)
                  (if (gx#stx-pair? _hd2248622842_)
                      (let ((_e2248922848_ (gx#syntax-e _hd2248622842_)))
                        (let ((_lp-hd2249022852_ (##car _e2248922848_))
                              (_lp-tl2249122855_ (##cdr _e2248922848_)))
                          (_loop2248822838_
                           _lp-tl2249122855_
                           (cons _lp-hd2249022852_ _body2249222845_))))
                      (let ((_body2249322858_ (reverse _body2249222845_)))
                        ((lambda (_L22862_)
                           (cons 'vector:
                                 (cons (_parse-vector22038_
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g2287522878_
                                                          _g2287622881_)
                                                   (cons _g2287522878_
                                                         _g2287622881_))
                                                 '()
                                                 _L22862_)))
                                       '())))
                         _body2249322858_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop2248822838_
                                                 _target2248522832_
                                                 '()))
                                              (_g2239722821_ _g2240822825_)))))
                                    (_g2239722821_ _g2240822825_))
                                (_g2239722821_ _g2240822825_)))
                          (_g2239722821_ _g2240822825_)))))
               (let ((_g2239522912_
                      (lambda (_g2240822888_)
                        (if (gx#stx-pair? _g2240822888_)
                            (let ((_e2248022891_ (gx#syntax-e _g2240822888_)))
                              (let ((_hd2248122895_ (##car _e2248022891_))
                                    (_tl2248222898_ (##cdr _e2248022891_)))
                                (if (gx#identifier? _hd2248122895_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core::<match>[1]#_g29545_|
                                         _hd2248122895_)
                                        ((lambda (_L22901_)
                                           (cons 'vector:
                                                 (cons (_parse-vector22038_
                                                        _L22901_)
                                                       '())))
                                         _tl2248222898_)
                                        (_g2239622884_ _g2240822888_))
                                    (_g2239622884_ _g2240822888_))))
                            (_g2239622884_ _g2240822888_)))))
                 (let ((_g2239422940_
                        (lambda (_g2240822916_)
                          (if (gx#stx-pair? _g2240822916_)
                              (let ((_e2247622919_
                                     (gx#syntax-e _g2240822916_)))
                                (let ((_hd2247722923_ (##car _e2247622919_))
                                      (_tl2247822926_ (##cdr _e2247622919_)))
                                  (if (gx#identifier? _hd2247722923_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core::<match>[1]#_g29546_|
                                           _hd2247722923_)
                                          ((lambda (_L22929_)
                                             (cons 'values:
                                                   (cons (_parse-vector22038_
                                                          _L22929_)
                                                         '())))
                                           _tl2247822926_)
                                          (_g2239522912_ _g2240822916_))
                                      (_g2239522912_ _g2240822916_))))
                              (_g2239522912_ _g2240822916_)))))
                   (let ((_g2239322980_
                          (lambda (_g2240822944_)
                            (if (gx#stx-pair? _g2240822944_)
                                (let ((_e2246922947_
                                       (gx#syntax-e _g2240822944_)))
                                  (let ((_hd2247022951_ (##car _e2246922947_))
                                        (_tl2247122954_ (##cdr _e2246922947_)))
                                    (if (gx#identifier? _hd2247022951_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core::<match>[1]#_g29547_|
                                             _hd2247022951_)
                                            (if (gx#stx-pair? _tl2247122954_)
                                                (let ((_e2247222957_
                                                       (gx#syntax-e
                                                        _tl2247122954_)))
                                                  (let ((_hd2247322961_
                                                         (##car _e2247222957_))
                                                        (_tl2247422964_
                                                         (##cdr _e2247222957_)))
                                                    (if (gx#stx-null?
                                                         _tl2247422964_)
                                                        ((lambda (_L22967_)
                                                           (_parse122035_
                                                            _L22967_))
                                                         _hd2247322961_)
                                                        (_g2239422940_
                                                         _g2240822944_))))
                                                (_g2239422940_ _g2240822944_))
                                            (_g2239422940_ _g2240822944_))
                                        (_g2239422940_ _g2240822944_))))
                                (_g2239422940_ _g2240822944_)))))
                     (let ((_g2239223001_
                            (lambda (_g2240822984_)
                              (if (gx#stx-box? _g2240822984_)
                                  (let ((_e2246722987_
                                         (unbox (gx#syntax-e _g2240822984_))))
                                    ((lambda (_L22991_)
                                       (cons 'box:
                                             (cons (_parse122035_ _L22991_)
                                                   '())))
                                     _e2246722987_))
                                  (_g2239322980_ _g2240822984_)))))
                       (let ((_g2239123041_
                              (lambda (_g2240823005_)
                                (if (gx#stx-pair? _g2240823005_)
                                    (let ((_e2246023008_
                                           (gx#syntax-e _g2240823005_)))
                                      (let ((_hd2246123012_
                                             (##car _e2246023008_))
                                            (_tl2246223015_
                                             (##cdr _e2246023008_)))
                                        (if (gx#identifier? _hd2246123012_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<match>[1]#_g29548_|
                                                 _hd2246123012_)
                                                (if (gx#stx-pair?
                                                     _tl2246223015_)
                                                    (let ((_e2246323018_
                                                           (gx#syntax-e
                                                            _tl2246223015_)))
                                                      (let ((_hd2246423022_
                                                             (##car _e2246323018_))
                                                            (_tl2246523025_
                                                             (##cdr _e2246323018_)))
                                                        (if (gx#stx-null?
                                                             _tl2246523025_)
                                                            ((lambda (_L23028_)
                                                               (cons 'box:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (_parse122035_ _L23028_) '())))
                     _hd2246423022_)
                    (_g2239223001_ _g2240823005_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2239223001_
                                                     _g2240823005_))
                                                (_g2239223001_ _g2240823005_))
                                            (_g2239223001_ _g2240823005_))))
                                    (_g2239223001_ _g2240823005_)))))
                         (let ((_g2239023069_
                                (lambda (_g2240823045_)
                                  (if (gx#stx-pair? _g2240823045_)
                                      (let ((_e2245623048_
                                             (gx#syntax-e _g2240823045_)))
                                        (let ((_hd2245723052_
                                               (##car _e2245623048_))
                                              (_tl2245823055_
                                               (##cdr _e2245623048_)))
                                          (if (gx#identifier? _hd2245723052_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core::<match>[1]#_g29549_|
                                                   _hd2245723052_)
                                                  ((lambda (_L23058_)
                                                     (_parse-list22037_
                                                      _L23058_))
                                                   _tl2245823055_)
                                                  (_g2239123041_
                                                   _g2240823045_))
                                              (_g2239123041_ _g2240823045_))))
                                      (_g2239123041_ _g2240823045_)))))
                           (let ((_g2238923125_
                                  (lambda (_g2240823073_)
                                    (if (gx#stx-pair? _g2240823073_)
                                        (let ((_e2244623076_
                                               (gx#syntax-e _g2240823073_)))
                                          (let ((_hd2244723080_
                                                 (##car _e2244623076_))
                                                (_tl2244823083_
                                                 (##cdr _e2244623076_)))
                                            (if (gx#identifier? _hd2244723080_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core::<match>[1]#_g29550_|
                                                     _hd2244723080_)
                                                    (if (gx#stx-pair?
                                                         _tl2244823083_)
                                                        (let ((_e2244923086_
                                                               (gx#syntax-e
                                                                _tl2244823083_)))
                                                          (let ((_hd2245023090_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2244923086_))
                        (_tl2245123093_ (##cdr _e2244923086_)))
                    (if (gx#stx-pair? _tl2245123093_)
                        (let ((_e2245223096_ (gx#syntax-e _tl2245123093_)))
                          (let ((_hd2245323100_ (##car _e2245223096_))
                                (_tl2245423103_ (##cdr _e2245223096_)))
                            ((lambda (_L23106_ _L23108_ _L23109_)
                               (if (gx#stx-null? _L23106_)
                                   (cons 'cons:
                                         (cons (_parse122035_ _L23109_)
                                               (cons (_parse122035_ _L23108_)
                                                     '())))
                                   (cons 'cons:
                                         (cons (_parse122035_ _L23109_)
                                               (cons (_parse122035_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons*)
                                                            (cons _L23108_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L23106_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                             _tl2245423103_
                             _hd2245323100_
                             _hd2245023090_)))
                        (_g2239023069_ _g2240823073_))))
                (_g2239023069_ _g2240823073_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2239023069_
                                                     _g2240823073_))
                                                (_g2239023069_
                                                 _g2240823073_))))
                                        (_g2239023069_ _g2240823073_)))))
                             (let ((_g2238823179_
                                    (lambda (_g2240823129_)
                                      (if (gx#stx-pair? _g2240823129_)
                                          (let ((_e2243423132_
                                                 (gx#syntax-e _g2240823129_)))
                                            (let ((_hd2243523136_
                                                   (##car _e2243423132_))
                                                  (_tl2243623139_
                                                   (##cdr _e2243423132_)))
                                              (if (gx#identifier?
                                                   _hd2243523136_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core::<match>[1]#_g29551_|
                                                       _hd2243523136_)
                                                      (if (gx#stx-pair?
                                                           _tl2243623139_)
                                                          (let ((_e2243723142_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2243623139_)))
                    (let ((_hd2243823146_ (##car _e2243723142_))
                          (_tl2243923149_ (##cdr _e2243723142_)))
                      (if (gx#stx-pair? _tl2243923149_)
                          (let ((_e2244023152_ (gx#syntax-e _tl2243923149_)))
                            (let ((_hd2244123156_ (##car _e2244023152_))
                                  (_tl2244223159_ (##cdr _e2244023152_)))
                              (if (gx#stx-null? _tl2244223159_)
                                  ((lambda (_L23162_ _L23164_)
                                     (cons 'cons:
                                           (cons (_parse122035_ _L23164_)
                                                 (cons (_parse122035_ _L23162_)
                                                       '()))))
                                   _hd2244123156_
                                   _hd2243823146_)
                                  (_g2238923125_ _g2240823129_))))
                          (_g2238923125_ _g2240823129_))))
                  (_g2238923125_ _g2240823129_))
              (_g2238923125_ _g2240823129_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2238923125_
                                                   _g2240823129_))))
                                          (_g2238923125_ _g2240823129_)))))
                               (let ((_g2238723219_
                                      (lambda (_g2240823183_)
                                        (if (gx#stx-pair? _g2240823183_)
                                            (let ((_e2242623186_
                                                   (gx#syntax-e
                                                    _g2240823183_)))
                                              (let ((_hd2242723190_
                                                     (##car _e2242623186_))
                                                    (_tl2242823193_
                                                     (##cdr _e2242623186_)))
                                                (if (gx#identifier?
                                                     _hd2242723190_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core::<match>[1]#_g29552_|
                                                         _hd2242723190_)
                                                        (if (gx#stx-pair?
                                                             _tl2242823193_)
                                                            (let ((_e2242923196_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl2242823193_)))
                      (let ((_hd2243023200_ (##car _e2242923196_))
                            (_tl2243123203_ (##cdr _e2242923196_)))
                        (if (gx#stx-null? _tl2243123203_)
                            ((lambda (_L23206_)
                               (cons 'not:
                                     (cons (_parse122035_ _L23206_) '())))
                             _hd2243023200_)
                            (_g2238823179_ _g2240823183_))))
                    (_g2238823179_ _g2240823183_))
                (_g2238823179_ _g2240823183_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2238823179_
                                                     _g2240823183_))))
                                            (_g2238823179_ _g2240823183_)))))
                                 (let ((_g2238623304_
                                        (lambda (_g2240823223_)
                                          (if (gx#stx-pair? _g2240823223_)
                                              (let ((_e2242223226_
                                                     (gx#syntax-e
                                                      _g2240823223_)))
                                                (let ((_hd2242323230_
                                                       (##car _e2242223226_))
                                                      (_tl2242423233_
                                                       (##cdr _e2242223226_)))
                                                  (if (gx#identifier?
                                                       _hd2242323230_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core::<match>[1]#_g29553_|
                                                           _hd2242323230_)
                                                          ((lambda (_L23236_)
                                                             (if (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L23236_)
                         (let ((_g2324823259_
                                (lambda (_g2324923255_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2324923255_))))
                           (let ((_g2324723270_
                                  (lambda (_g2324923263_)
                                    ((lambda ()
                                       (cons 'or:
                                             (gx#stx-map
                                              _parse122035_
                                              _L23236_)))))))
                             (let ((_g2324623300_
                                    (lambda (_g2324923274_)
                                      (if (gx#stx-pair? _g2324923274_)
                                          (let ((_e2325123277_
                                                 (gx#syntax-e _g2324923274_)))
                                            (let ((_hd2325223281_
                                                   (##car _e2325123277_))
                                                  (_tl2325323284_
                                                   (##cdr _e2325123277_)))
                                              (if (gx#stx-null? _tl2325323284_)
                                                  ((lambda (_L23287_)
                                                     (_parse122035_ _L23287_))
                                                   _hd2325223281_)
                                                  (_g2324723270_
                                                   _g2324923274_))))
                                          (_g2324723270_ _g2324923274_)))))
                               (_g2324623300_ _L23236_))))
                         (_g2238723219_ _g2240823223_)))
                   _tl2242423233_)
                  (_g2238723219_ _g2240823223_))
              (_g2238723219_ _g2240823223_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2238723219_ _g2240823223_)))))
                                   (let ((_g2238523389_
                                          (lambda (_g2240823308_)
                                            (if (gx#stx-pair? _g2240823308_)
                                                (let ((_e2241823311_
                                                       (gx#syntax-e
                                                        _g2240823308_)))
                                                  (let ((_hd2241923315_
                                                         (##car _e2241823311_))
                                                        (_tl2242023318_
                                                         (##cdr _e2241823311_)))
                                                    (if (gx#identifier?
                                                         _hd2241923315_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core::<match>[1]#_g29554_|
                                                             _hd2241923315_)
                                                            ((lambda (_L23321_)
                                                               (if (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L23321_)
                           (let ((_g2333323344_
                                  (lambda (_g2333423340_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g2333423340_))))
                             (let ((_g2333223355_
                                    (lambda (_g2333423348_)
                                      ((lambda ()
                                         (cons 'and:
                                               (gx#stx-map
                                                _parse122035_
                                                _L23321_)))))))
                               (let ((_g2333123385_
                                      (lambda (_g2333423359_)
                                        (if (gx#stx-pair? _g2333423359_)
                                            (let ((_e2333623362_
                                                   (gx#syntax-e
                                                    _g2333423359_)))
                                              (let ((_hd2333723366_
                                                     (##car _e2333623362_))
                                                    (_tl2333823369_
                                                     (##cdr _e2333623362_)))
                                                (if (gx#stx-null?
                                                     _tl2333823369_)
                                                    ((lambda (_L23372_)
                                                       (_parse122035_
                                                        _L23372_))
                                                     _hd2333723366_)
                                                    (_g2333223355_
                                                     _g2333423359_))))
                                            (_g2333223355_ _g2333423359_)))))
                                 (_g2333123385_ _L23321_))))
                           (_g2238623304_ _g2240823308_)))
                     _tl2242023318_)
                    (_g2238623304_ _g2240823308_))
                (_g2238623304_ _g2240823308_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2238623304_
                                                 _g2240823308_)))))
                                     (let ((_g2238423629_
                                            (lambda (_g2240823393_)
                                              (if (gx#stx-pair? _g2240823393_)
                                                  (let ((_e2241123396_
                                                         (gx#syntax-e
                                                          _g2240823393_)))
                                                    (let ((_hd2241223400_
                                                           (##car _e2241123396_))
                                                          (_tl2241323403_
                                                           (##cdr _e2241123396_)))
                                                      (if (gx#identifier?
                                                           _hd2241223400_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core::<match>[1]#_g29555_|
                                                               _hd2241223400_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2241323403_)
                          (let ((_e2241423406_ (gx#syntax-e _tl2241323403_)))
                            (let ((_hd2241523410_ (##car _e2241423406_))
                                  (_tl2241623413_ (##cdr _e2241423406_)))
                              ((lambda (_L23416_ _L23418_)
                                 (let ((_g2343523467_
                                        (lambda (_g2343623463_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g2343623463_))))
                                   (let ((_g2343423478_
                                          (lambda (_g2343623471_)
                                            ((lambda ()
                                               (_parse-error22042_
                                                _hd22382_))))))
                                     (let ((_g2343323546_
                                            (lambda (_g2343623482_)
                                              (if (gx#stx-pair? _g2343623482_)
                                                  (let ((_e2345023485_
                                                         (gx#syntax-e
                                                          _g2343623482_)))
                                                    (let ((_hd2345123489_
                                                           (##car _e2345023485_))
                                                          (_tl2345223492_
                                                           (##cdr _e2345023485_)))
                                                      (if (gx#stx-datum?
                                                           _hd2345123489_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2345123489_)
                              '::)
                      (if (gx#stx-pair? _tl2345223492_)
                          (let ((_e2345323495_ (gx#syntax-e _tl2345223492_)))
                            (let ((_hd2345423499_ (##car _e2345323495_))
                                  (_tl2345523502_ (##cdr _e2345323495_)))
                              (if (gx#stx-pair? _tl2345523502_)
                                  (let ((_e2345623505_
                                         (gx#syntax-e _tl2345523502_)))
                                    (let ((_hd2345723509_
                                           (##car _e2345623505_))
                                          (_tl2345823512_
                                           (##cdr _e2345623505_)))
                                      (if (gx#identifier? _hd2345723509_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core::<match>[1]#_g29556_|
                                               _hd2345723509_)
                                              (if (gx#stx-pair? _tl2345823512_)
                                                  (let ((_e2345923515_
                                                         (gx#syntax-e
                                                          _tl2345823512_)))
                                                    (let ((_hd2346023519_
                                                           (##car _e2345923515_))
                                                          (_tl2346123522_
                                                           (##cdr _e2345923515_)))
                                                      (if (gx#stx-null?
                                                           _tl2346123522_)
                                                          ((lambda (_L23525_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L23527_)
                     (cons '?:
                           (cons _L23418_
                                 (cons '::
                                       (cons _L23527_
                                             (cons '=>:
                                                   (cons (_parse122035_
                                                          _L23525_)
                                                         '())))))))
                   _hd2346023519_
                   _hd2345423499_)
                  (_g2343423478_ _g2343623482_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2343423478_
                                                   _g2343623482_))
                                              (_g2343423478_ _g2343623482_))
                                          (_g2343423478_ _g2343623482_))))
                                  (_g2343423478_ _g2343623482_))))
                          (_g2343423478_ _g2343623482_))
                      (_g2343423478_ _g2343623482_))
                  (_g2343423478_ _g2343623482_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2343423478_
                                                   _g2343623482_)))))
                                       (let ((_g2343223586_
                                              (lambda (_g2343623550_)
                                                (if (gx#stx-pair?
                                                     _g2343623550_)
                                                    (let ((_e2344223553_
                                                           (gx#syntax-e
                                                            _g2343623550_)))
                                                      (let ((_hd2344323557_
                                                             (##car _e2344223553_))
                                                            (_tl2344423560_
                                                             (##cdr _e2344223553_)))
                                                        (if (gx#identifier?
                                                             _hd2344323557_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core::<match>[1]#_g29557_|
                         _hd2344323557_)
                        (if (gx#stx-pair? _tl2344423560_)
                            (let ((_e2344523563_ (gx#syntax-e _tl2344423560_)))
                              (let ((_hd2344623567_ (##car _e2344523563_))
                                    (_tl2344723570_ (##cdr _e2344523563_)))
                                (if (gx#stx-null? _tl2344723570_)
                                    ((lambda (_L23573_)
                                       (cons '?:
                                             (cons _L23418_
                                                   (cons '=>:
                                                         (cons (_parse122035_
                                                                _L23573_)
                                                               '())))))
                                     _hd2344623567_)
                                    (_g2343323546_ _g2343623550_))))
                            (_g2343323546_ _g2343623550_))
                        (_g2343323546_ _g2343623550_))
                    (_g2343323546_ _g2343623550_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2343323546_
                                                     _g2343623550_)))))
                                         (let ((_g2343123614_
                                                (lambda (_g2343623590_)
                                                  (if (gx#stx-pair?
                                                       _g2343623590_)
                                                      (let ((_e2343823593_
                                                             (gx#syntax-e
                                                              _g2343623590_)))
                                                        (let ((_hd2343923597_
                                                               (##car _e2343823593_))
                                                              (_tl2344023600_
                                                               (##cdr _e2343823593_)))
                                                          (if (gx#stx-null?
                                                               _tl2344023600_)
                                                              ((lambda (_L23603_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '?:
                               (cons _L23418_
                                     (cons (_parse122035_ _L23603_) '()))))
                       _hd2343923597_)
                      (_g2343223586_ _g2343623590_))))
              (_g2343223586_ _g2343623590_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_g2343023625_
                                                  (lambda (_g2343623618_)
                                                    (if (gx#stx-null?
                                                         _g2343623618_)
                                                        ((lambda ()
                                                           (cons '?:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L23418_ '()))))
                (_g2343123614_ _g2343623618_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2343023625_ _L23416_))))))))
                               _tl2241623413_
                               _hd2241523410_)))
                          (_g2238523389_ _g2240823393_))
                      (_g2238523389_ _g2240823393_))
                  (_g2238523389_ _g2240823393_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2238523389_
                                                   _g2240823393_)))))
                                       (_g2238423629_
                                        _hd22382_)))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (_parse-list22037_
                             (lambda (_body22217_)
                               (let ((_g2222322251_
                                      (lambda (_g2222422247_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g2222422247_))))
                                 (let ((_g2222222262_
                                        (lambda (_g2222422255_)
                                          ((lambda ()
                                             (if (gx#stx-null? _body22217_)
                                                 (cons 'null: '())
                                                 (if (not (gx#stx-pair?
                                                           _body22217_))
                                                     (_parse122035_
                                                      _body22217_)
                                                     (_parse-error22042_
                                                      _body22217_))))))))
                                   (let ((_g2222122294_
                                          (lambda (_g2222422266_)
                                            (if (gx#stx-pair? _g2222422266_)
                                                (let ((_e2224322269_
                                                       (gx#syntax-e
                                                        _g2222422266_)))
                                                  (let ((_hd2224422273_
                                                         (##car _e2224322269_))
                                                        (_tl2224522276_
                                                         (##cdr _e2224322269_)))
                                                    ((lambda (_L22279_
                                                              _L22281_)
                                                       (if (not (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L22281_))
                   (cons 'cons:
                         (cons (_parse122035_ _L22281_)
                               (cons (_parse-list22037_ _L22279_) '())))
                   (_g2222222262_ _g2222422266_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _tl2224522276_
                                                     _hd2224422273_)))
                                                (_g2222222262_
                                                 _g2222422266_)))))
                                     (let ((_g2222022338_
                                            (lambda (_g2222422298_)
                                              (if (gx#stx-pair? _g2222422298_)
                                                  (let ((_e2223522301_
                                                         (gx#syntax-e
                                                          _g2222422298_)))
                                                    (let ((_hd2223622305_
                                                           (##car _e2223522301_))
                                                          (_tl2223722308_
                                                           (##cdr _e2223522301_)))
                                                      (if (gx#stx-pair?
                                                           _tl2223722308_)
                                                          (let ((_e2223822311_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2223722308_)))
                    (let ((_hd2223922315_ (##car _e2223822311_))
                          (_tl2224022318_ (##cdr _e2223822311_)))
                      ((lambda (_L22321_ _L22323_ _L22324_)
                         (if (gx#ellipsis? _L22323_)
                             (cons 'splice:
                                   (cons (_parse122035_ _L22324_)
                                         (cons (_parse-list22037_ _L22321_)
                                               '())))
                             (_g2222122294_ _g2222422298_)))
                       _tl2224022318_
                       _hd2223922315_
                       _hd2223622305_)))
                  (_g2222122294_ _g2222422298_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2222122294_
                                                   _g2222422298_)))))
                                       (let ((_g2221922378_
                                              (lambda (_g2222422342_)
                                                (if (gx#stx-pair?
                                                     _g2222422342_)
                                                    (let ((_e2222622345_
                                                           (gx#syntax-e
                                                            _g2222422342_)))
                                                      (let ((_hd2222722349_
                                                             (##car _e2222622345_))
                                                            (_tl2222822352_
                                                             (##cdr _e2222622345_)))
                                                        (if (gx#stx-datum?
                                                             _hd2222722349_)
                                                            (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _hd2222722349_)
                                '::)
                        (if (gx#stx-pair? _tl2222822352_)
                            (let ((_e2222922355_ (gx#syntax-e _tl2222822352_)))
                              (let ((_hd2223022359_ (##car _e2222922355_))
                                    (_tl2223122362_ (##cdr _e2222922355_)))
                                (if (gx#stx-null? _tl2223122362_)
                                    ((lambda (_L22365_)
                                       (_parse122035_ _L22365_))
                                     _hd2223022359_)
                                    (_g2222022338_ _g2222422342_))))
                            (_g2222022338_ _g2222422342_))
                        (_g2222022338_ _g2222422342_))
                    (_g2222022338_ _g2222422342_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2222022338_
                                                     _g2222422342_)))))
                                         (_g2221922378_ _body22217_))))))))
                            (_parse-vector22038_
                             (lambda (_body22214_)
                               (if (_simple-vector?22039_ _body22214_)
                                   (cons 'simple:
                                         (cons (gx#stx-map
                                                _parse122035_
                                                _body22214_)
                                               '()))
                                   (cons 'list:
                                         (cons (_parse-list22037_ _body22214_)
                                               '())))))
                            (_simple-vector?22039_
                             (lambda (_body22151_)
                               (let ((_g2215522167_
                                      (lambda (_g2215622163_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g2215622163_))))
                                 (let ((_g2215422178_
                                        (lambda (_g2215622171_)
                                          ((lambda ()
                                             (gx#stx-null? _body22151_))))))
                                   (let ((_g2215322210_
                                          (lambda (_g2215622182_)
                                            (if (gx#stx-pair? _g2215622182_)
                                                (let ((_e2215922185_
                                                       (gx#syntax-e
                                                        _g2215622182_)))
                                                  (let ((_hd2216022189_
                                                         (##car _e2215922185_))
                                                        (_tl2216122192_
                                                         (##cdr _e2215922185_)))
                                                    ((lambda (_L22195_
                                                              _L22197_)
                                                       (if (not (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L22197_))
                   (_simple-vector?22039_ _L22195_)
                   '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _tl2216122192_
                                                     _hd2216022189_)))
                                                (_g2215422178_
                                                 _g2215622182_)))))
                                     (_g2215322210_ _body22151_))))))
                            (_parse-class-body22040_
                             (lambda (_body22060_)
                               ((letrec ((_recur22063_
                                          (lambda (_rest22066_)
                                            (let ((_g2207022086_
                                                   (lambda (_g2207122082_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2207122082_))))
                                              (let ((_g2206922097_
                                                     (lambda (_g2207122090_)
                                                       ((lambda ()
                                                          (if (gx#stx-null?
                                                               _rest22066_)
                                                              '()
                                                              (_parse-error22042_
                                                               _rest22066_)))))))
                                                (let ((_g2206822147_
                                                       (lambda (_g2207122101_)
                                                         (if (gx#stx-pair?
                                                              _g2207122101_)
                                                             (let ((_e2207522104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g2207122101_)))
                       (let ((_hd2207622108_ (##car _e2207522104_))
                             (_tl2207722111_ (##cdr _e2207522104_)))
                         (if (gx#stx-pair? _tl2207722111_)
                             (let ((_e2207822114_
                                    (gx#syntax-e _tl2207722111_)))
                               (let ((_hd2207922118_ (##car _e2207822114_))
                                     (_tl2208022121_ (##cdr _e2207822114_)))
                                 ((lambda (_L22124_ _L22126_ _L22127_)
                                    (if (gx#stx-keyword? _L22127_)
                                        (cons* _L22127_
                                               (_parse122035_ _L22126_)
                                               (_recur22063_ _L22124_))
                                        (_g2206922097_ _g2207122101_)))
                                  _tl2208022121_
                                  _hd2207922118_
                                  _hd2207622108_)))
                             (_g2206922097_ _g2207122101_))))
                     (_g2206922097_ _g2207122101_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2206822147_
                                                   _rest22066_)))))))
                                  _recur22063_)
                                _body22060_))))
                     (_parse122035_ _stx22031_)))))))
        (lambda _g29559_
          (let ((_g29558_ (length _g29559_)))
            (cond ((fx= _g29558_ 1)
                   (apply (lambda (_stx23637_)
                            (let ((_match-stx23640_ '#f))
                              (_opt-lambda2202923633_
                               _stx23637_
                               _match-stx23640_)))
                          _g29559_))
                  ((fx= _g29558_ 2) (apply _opt-lambda2202923633_ _g29559_))
                  (else (error "No clause matching arguments" _g29559_)))))))
    (define |gerbil/core::<match>[1]#match-pattern?|
      (lambda (_stx22015_)
        (call-with-escape
         (lambda (_E22019_)
           (with-exception-handler
            (let ((_E!22022_ (current-exception-handler)))
              (lambda (_e22025_)
                (if (gx#syntax-error? _e22025_)
                    (_E22019_ '#f)
                    (_E!22022_ _e22025_))))
            (lambda ()
              (begin
                (|gerbil/core::<match>[1]#parse-match-pattern| _stx22015_)
                '#t)))))))
    (define |gerbil/core::<match>[1]#match-pattern-vars|
      (lambda (_ptree20870_)
        (letrec ((_loop20873_
                  (lambda (_ptree21148_ _vars21150_ _K21151_)
                    (let ((_g2116321253_
                           (lambda (_g2116421249_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2116421249_))))
                      (let ((_g2116221264_
                             (lambda (_g2116421257_)
                               ((lambda () (_K21151_ _vars21150_))))))
                        (let ((_g2116121311_
                               (lambda (_g2116421268_)
                                 (if (gx#stx-pair? _g2116421268_)
                                     (let ((_e2124221271_
                                            (gx#syntax-e _g2116421268_)))
                                       (let ((_hd2124321275_
                                              (##car _e2124221271_))
                                             (_tl2124421278_
                                              (##cdr _e2124221271_)))
                                         (if (gx#stx-datum? _hd2124321275_)
                                             (if (equal? (gx#stx-e
                                                          _hd2124321275_)
                                                         'var:)
                                                 (if (gx#stx-pair?
                                                      _tl2124421278_)
                                                     (let ((_e2124521281_
                                                            (gx#syntax-e
                                                             _tl2124421278_)))
                                                       (let ((_hd2124621285_
                                                              (##car _e2124521281_))
                                                             (_tl2124721288_
                                                              (##cdr _e2124521281_)))
                                                         (if (gx#stx-null?
                                                              _tl2124721288_)
                                                             ((lambda (_L21291_)
                                                                (if (find (lambda (_g2130521307_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (gx#bound-identifier=?
                                     _g2130521307_
                                     _L21291_))
                                  _vars21150_)
                            (_K21151_ _vars21150_)
                            (_K21151_ (cons _L21291_ _vars21150_))))
                      _hd2124621285_)
                     (_g2116221264_ _g2116421268_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2116221264_
                                                      _g2116421268_))
                                                 (_g2116221264_ _g2116421268_))
                                             (_g2116221264_ _g2116421268_))))
                                     (_g2116221264_ _g2116421268_)))))
                          (let ((_g2116021363_
                                 (lambda (_g2116421315_)
                                   (if (gx#stx-pair? _g2116421315_)
                                       (let ((_e2123221318_
                                              (gx#syntax-e _g2116421315_)))
                                         (let ((_hd2123321322_
                                                (##car _e2123221318_))
                                               (_tl2123421325_
                                                (##cdr _e2123221318_)))
                                           (if (gx#stx-datum? _hd2123321322_)
                                               (if (equal? (gx#stx-e
                                                            _hd2123321322_)
                                                           'class:)
                                                   (if (gx#stx-pair?
                                                        _tl2123421325_)
                                                       (let ((_e2123521328_
                                                              (gx#syntax-e
                                                               _tl2123421325_)))
                                                         (let ((_hd2123621332_
                                                                (##car _e2123521328_))
                                                               (_tl2123721335_
                                                                (##cdr _e2123521328_)))
                                                           (if (gx#stx-pair?
                                                                _tl2123721335_)
                                                               (let ((_e2123821338_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2123721335_)))
                         (let ((_hd2123921342_ (##car _e2123821338_))
                               (_tl2124021345_ (##cdr _e2123821338_)))
                           (if (gx#stx-null? _tl2124021345_)
                               ((lambda (_L21348_)
                                  (_loop-class-list20877_
                                   _L21348_
                                   _vars21150_
                                   _K21151_))
                                _hd2123921342_)
                               (_g2116121311_ _g2116421315_))))
                       (_g2116121311_ _g2116421315_))))
               (_g2116121311_ _g2116421315_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2116121311_
                                                    _g2116421315_))
                                               (_g2116121311_ _g2116421315_))))
                                       (_g2116121311_ _g2116421315_)))))
                            (let ((_g2115921415_
                                   (lambda (_g2116421367_)
                                     (if (gx#stx-pair? _g2116421367_)
                                         (let ((_e2122221370_
                                                (gx#syntax-e _g2116421367_)))
                                           (let ((_hd2122321374_
                                                  (##car _e2122221370_))
                                                 (_tl2122421377_
                                                  (##cdr _e2122221370_)))
                                             (if (gx#stx-datum? _hd2122321374_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2122321374_)
                                                             'struct:)
                                                     (if (gx#stx-pair?
                                                          _tl2122421377_)
                                                         (let ((_e2122521380_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2122421377_)))
                   (let ((_hd2122621384_ (##car _e2122521380_))
                         (_tl2122721387_ (##cdr _e2122521380_)))
                     (if (gx#stx-pair? _tl2122721387_)
                         (let ((_e2122821390_ (gx#syntax-e _tl2122721387_)))
                           (let ((_hd2122921394_ (##car _e2122821390_))
                                 (_tl2123021397_ (##cdr _e2122821390_)))
                             (if (gx#stx-null? _tl2123021397_)
                                 ((lambda (_L21400_)
                                    (_loop-vector20875_
                                     _L21400_
                                     _vars21150_
                                     _K21151_))
                                  _hd2122921394_)
                                 (_g2116021363_ _g2116421367_))))
                         (_g2116021363_ _g2116421367_))))
                 (_g2116021363_ _g2116421367_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2116021363_
                                                      _g2116421367_))
                                                 (_g2116021363_
                                                  _g2116421367_))))
                                         (_g2116021363_ _g2116421367_)))))
                              (let ((_g2115821461_
                                     (lambda (_g2116421419_)
                                       (if (gx#stx-pair? _g2116421419_)
                                           (let ((_e2121521422_
                                                  (gx#syntax-e _g2116421419_)))
                                             (let ((_hd2121621426_
                                                    (##car _e2121521422_))
                                                   (_tl2121721429_
                                                    (##cdr _e2121521422_)))
                                               (if (gx#stx-pair?
                                                    _tl2121721429_)
                                                   (let ((_e2121821432_
                                                          (gx#syntax-e
                                                           _tl2121721429_)))
                                                     (let ((_hd2121921436_
                                                            (##car _e2121821432_))
                                                           (_tl2122021439_
                                                            (##cdr _e2121821432_)))
                                                       (if (gx#stx-null?
                                                            _tl2122021439_)
                                                           ((lambda (_L21442_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L21444_)
                      (if (let ((_$e21457_ (gx#stx-eq? 'values: _L21444_)))
                            (if _$e21457_
                                _$e21457_
                                (gx#stx-eq? 'vector: _L21444_)))
                          (_loop-vector20875_ _L21442_ _vars21150_ _K21151_)
                          (_g2115921415_ _g2116421419_)))
                    _hd2121921436_
                    _hd2121621426_)
                   (_g2115921415_ _g2116421419_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2115921415_
                                                    _g2116421419_))))
                                           (_g2115921415_ _g2116421419_)))))
                                (let ((_g2115721501_
                                       (lambda (_g2116421465_)
                                         (if (gx#stx-pair? _g2116421465_)
                                             (let ((_e2120721468_
                                                    (gx#syntax-e
                                                     _g2116421465_)))
                                               (let ((_hd2120821472_
                                                      (##car _e2120721468_))
                                                     (_tl2120921475_
                                                      (##cdr _e2120721468_)))
                                                 (if (gx#stx-datum?
                                                      _hd2120821472_)
                                                     (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd2120821472_)
                         'box:)
                 (if (gx#stx-pair? _tl2120921475_)
                     (let ((_e2121021478_ (gx#syntax-e _tl2120921475_)))
                       (let ((_hd2121121482_ (##car _e2121021478_))
                             (_tl2121221485_ (##cdr _e2121021478_)))
                         (if (gx#stx-null? _tl2121221485_)
                             ((lambda (_L21488_)
                                (_loop20873_ _L21488_ _vars21150_ _K21151_))
                              _hd2121121482_)
                             (_g2115821461_ _g2116421465_))))
                     (_g2115821461_ _g2116421465_))
                 (_g2115821461_ _g2116421465_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2115821461_
                                                      _g2116421465_))))
                                             (_g2115821461_ _g2116421465_)))))
                                  (let ((_g2115621560_
                                         (lambda (_g2116421505_)
                                           (if (gx#stx-pair? _g2116421505_)
                                               (let ((_e2119721508_
                                                      (gx#syntax-e
                                                       _g2116421505_)))
                                                 (let ((_hd2119821512_
                                                        (##car _e2119721508_))
                                                       (_tl2119921515_
                                                        (##cdr _e2119721508_)))
                                                   (if (gx#stx-datum?
                                                        _hd2119821512_)
                                                       (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd2119821512_)
                           'splice:)
                   (if (gx#stx-pair? _tl2119921515_)
                       (let ((_e2120021518_ (gx#syntax-e _tl2119921515_)))
                         (let ((_hd2120121522_ (##car _e2120021518_))
                               (_tl2120221525_ (##cdr _e2120021518_)))
                           (if (gx#stx-pair? _tl2120221525_)
                               (let ((_e2120321528_
                                      (gx#syntax-e _tl2120221525_)))
                                 (let ((_hd2120421532_ (##car _e2120321528_))
                                       (_tl2120521535_ (##cdr _e2120321528_)))
                                   (if (gx#stx-null? _tl2120521535_)
                                       ((lambda (_L21538_ _L21540_)
                                          (_loop20873_
                                           _L21540_
                                           _vars21150_
                                           (lambda (_g2155421556_)
                                             (_loop20873_
                                              _L21538_
                                              _g2155421556_
                                              _K21151_))))
                                        _hd2120421532_
                                        _hd2120121522_)
                                       (_g2115721501_ _g2116421505_))))
                               (_g2115721501_ _g2116421505_))))
                       (_g2115721501_ _g2116421505_))
                   (_g2115721501_ _g2116421505_))
               (_g2115721501_ _g2116421505_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2115721501_
                                                _g2116421505_)))))
                                    (let ((_g2115521619_
                                           (lambda (_g2116421564_)
                                             (if (gx#stx-pair? _g2116421564_)
                                                 (let ((_e2118621567_
                                                        (gx#syntax-e
                                                         _g2116421564_)))
                                                   (let ((_hd2118721571_
                                                          (##car _e2118621567_))
                                                         (_tl2118821574_
                                                          (##cdr _e2118621567_)))
                                                     (if (gx#stx-datum?
                                                          _hd2118721571_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2118721571_)
                             'cons:)
                     (if (gx#stx-pair? _tl2118821574_)
                         (let ((_e2118921577_ (gx#syntax-e _tl2118821574_)))
                           (let ((_hd2119021581_ (##car _e2118921577_))
                                 (_tl2119121584_ (##cdr _e2118921577_)))
                             (if (gx#stx-pair? _tl2119121584_)
                                 (let ((_e2119221587_
                                        (gx#syntax-e _tl2119121584_)))
                                   (let ((_hd2119321591_ (##car _e2119221587_))
                                         (_tl2119421594_
                                          (##cdr _e2119221587_)))
                                     (if (gx#stx-null? _tl2119421594_)
                                         ((lambda (_L21597_ _L21599_)
                                            (_loop20873_
                                             _L21599_
                                             _vars21150_
                                             (lambda (_g2161321615_)
                                               (_loop20873_
                                                _L21597_
                                                _g2161321615_
                                                _K21151_))))
                                          _hd2119321591_
                                          _hd2119021581_)
                                         (_g2115621560_ _g2116421564_))))
                                 (_g2115621560_ _g2116421564_))))
                         (_g2115621560_ _g2116421564_))
                     (_g2115621560_ _g2116421564_))
                 (_g2115621560_ _g2116421564_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2115621560_
                                                  _g2116421564_)))))
                                      (let ((_g2115421659_
                                             (lambda (_g2116421623_)
                                               (if (gx#stx-pair? _g2116421623_)
                                                   (let ((_e2117821626_
                                                          (gx#syntax-e
                                                           _g2116421623_)))
                                                     (let ((_hd2117921630_
                                                            (##car _e2117821626_))
                                                           (_tl2118021633_
                                                            (##cdr _e2117821626_)))
                                                       (if (gx#stx-datum?
                                                            _hd2117921630_)
                                                           (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd2117921630_)
                               'not:)
                       (if (gx#stx-pair? _tl2118021633_)
                           (let ((_e2118121636_ (gx#syntax-e _tl2118021633_)))
                             (let ((_hd2118221640_ (##car _e2118121636_))
                                   (_tl2118321643_ (##cdr _e2118121636_)))
                               (if (gx#stx-null? _tl2118321643_)
                                   ((lambda (_L21646_)
                                      (_loop20873_
                                       _L21646_
                                       _vars21150_
                                       _K21151_))
                                    _hd2118221640_)
                                   (_g2115521619_ _g2116421623_))))
                           (_g2115521619_ _g2116421623_))
                       (_g2115521619_ _g2116421623_))
                   (_g2115521619_ _g2116421623_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2115521619_
                                                    _g2116421623_)))))
                                        (let ((_g2115321758_
                                               (lambda (_g2116421663_)
                                                 (if (gx#stx-pair?
                                                      _g2116421663_)
                                                     (let ((_e2117421666_
                                                            (gx#syntax-e
                                                             _g2116421663_)))
                                                       (let ((_hd2117521670_
                                                              (##car _e2117421666_))
                                                             (_tl2117621673_
                                                              (##cdr _e2117421666_)))
                                                         ((lambda (_L21676_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L21678_)
                    (if (let ((_$e21689_ (gx#stx-eq? 'and: _L21678_)))
                          (if _$e21689_ _$e21689_ (gx#stx-eq? 'or: _L21678_)))
                        (let ((_g2169421706_
                               (lambda (_g2169521702_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2169521702_))))
                          (let ((_g2169321717_
                                 (lambda (_g2169521710_)
                                   ((lambda () (_K21151_ _vars21150_))))))
                            (let ((_g2169221754_
                                   (lambda (_g2169521721_)
                                     (if (gx#stx-pair? _g2169521721_)
                                         (let ((_e2169821724_
                                                (gx#syntax-e _g2169521721_)))
                                           (let ((_hd2169921728_
                                                  (##car _e2169821724_))
                                                 (_tl2170021731_
                                                  (##cdr _e2169821724_)))
                                             ((lambda (_L21734_ _L21736_)
                                                (_loop20873_
                                                 _L21736_
                                                 _vars21150_
                                                 (lambda (_g2174821750_)
                                                   (_loop20873_
                                                    (cons _L21678_ _L21734_)
                                                    _g2174821750_
                                                    _K21151_))))
                                              _tl2170021731_
                                              _hd2169921728_)))
                                         (_g2169321717_ _g2169521721_)))))
                              (_g2169221754_ _L21676_))))
                        (_g2115421659_ _g2116421663_)))
                  _tl2117621673_
                  _hd2117521670_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2115421659_
                                                      _g2116421663_)))))
                                          (let ((_g2115222011_
                                                 (lambda (_g2116421762_)
                                                   (if (gx#stx-pair?
                                                        _g2116421762_)
                                                       (let ((_e2116621765_
                                                              (gx#syntax-e
                                                               _g2116421762_)))
                                                         (let ((_hd2116721769_
                                                                (##car _e2116621765_))
                                                               (_tl2116821772_
                                                                (##cdr _e2116621765_)))
                                                           (if (gx#stx-datum?
                                                                _hd2116721769_)
                                                               (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _hd2116721769_)
                                   '?:)
                           (if (gx#stx-pair? _tl2116821772_)
                               (let ((_e2116921775_
                                      (gx#syntax-e _tl2116821772_)))
                                 (let ((_hd2117021779_ (##car _e2116921775_))
                                       (_tl2117121782_ (##cdr _e2116921775_)))
                                   ((lambda (_L21785_)
                                      (let ((_g2180121838_
                                             (lambda (_g2180221834_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2180221834_))))
                                        (let ((_g2180021849_
                                               (lambda (_g2180221842_)
                                                 ((lambda ()
                                                    (_K21151_ _vars21150_))))))
                                          (let ((_g2179921927_
                                                 (lambda (_g2180221853_)
                                                   (if (gx#stx-pair?
                                                        _g2180221853_)
                                                       (let ((_e2181821856_
                                                              (gx#syntax-e
                                                               _g2180221853_)))
                                                         (let ((_hd2181921860_
                                                                (##car _e2181821856_))
                                                               (_tl2182021863_
                                                                (##cdr _e2181821856_)))
                                                           (if (gx#stx-pair?
                                                                _tl2182021863_)
                                                               (let ((_e2182121866_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2182021863_)))
                         (let ((_hd2182221870_ (##car _e2182121866_))
                               (_tl2182321873_ (##cdr _e2182121866_)))
                           (if (gx#stx-datum? _hd2182221870_)
                               (if (equal? (gx#stx-e _hd2182221870_) '::)
                                   (if (gx#stx-pair? _tl2182321873_)
                                       (let ((_e2182421876_
                                              (gx#syntax-e _tl2182321873_)))
                                         (let ((_hd2182521880_
                                                (##car _e2182421876_))
                                               (_tl2182621883_
                                                (##cdr _e2182421876_)))
                                           (if (gx#stx-pair? _tl2182621883_)
                                               (let ((_e2182721886_
                                                      (gx#syntax-e
                                                       _tl2182621883_)))
                                                 (let ((_hd2182821890_
                                                        (##car _e2182721886_))
                                                       (_tl2182921893_
                                                        (##cdr _e2182721886_)))
                                                   (if (gx#stx-datum?
                                                        _hd2182821890_)
                                                       (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd2182821890_)
                           '=>:)
                   (if (gx#stx-pair? _tl2182921893_)
                       (let ((_e2183021896_ (gx#syntax-e _tl2182921893_)))
                         (let ((_hd2183121900_ (##car _e2183021896_))
                               (_tl2183221903_ (##cdr _e2183021896_)))
                           (if (gx#stx-null? _tl2183221903_)
                               ((lambda (_L21906_)
                                  (_loop20873_ _L21906_ _vars21150_ _K21151_))
                                _hd2183121900_)
                               (_g2180021849_ _g2180221853_))))
                       (_g2180021849_ _g2180221853_))
                   (_g2180021849_ _g2180221853_))
               (_g2180021849_ _g2180221853_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2180021849_ _g2180221853_))))
                                       (_g2180021849_ _g2180221853_))
                                   (_g2180021849_ _g2180221853_))
                               (_g2180021849_ _g2180221853_))))
                       (_g2180021849_ _g2180221853_))))
               (_g2180021849_ _g2180221853_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_g2179821979_
                                                   (lambda (_g2180221931_)
                                                     (if (gx#stx-pair?
                                                          _g2180221931_)
                                                         (let ((_e2180821934_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2180221931_)))
                   (let ((_hd2180921938_ (##car _e2180821934_))
                         (_tl2181021941_ (##cdr _e2180821934_)))
                     (if (gx#stx-pair? _tl2181021941_)
                         (let ((_e2181121944_ (gx#syntax-e _tl2181021941_)))
                           (let ((_hd2181221948_ (##car _e2181121944_))
                                 (_tl2181321951_ (##cdr _e2181121944_)))
                             (if (gx#stx-datum? _hd2181221948_)
                                 (if (equal? (gx#stx-e _hd2181221948_) '=>:)
                                     (if (gx#stx-pair? _tl2181321951_)
                                         (let ((_e2181421954_
                                                (gx#syntax-e _tl2181321951_)))
                                           (let ((_hd2181521958_
                                                  (##car _e2181421954_))
                                                 (_tl2181621961_
                                                  (##cdr _e2181421954_)))
                                             (if (gx#stx-null? _tl2181621961_)
                                                 ((lambda (_L21964_)
                                                    (_loop20873_
                                                     _L21964_
                                                     _vars21150_
                                                     _K21151_))
                                                  _hd2181521958_)
                                                 (_g2179921927_
                                                  _g2180221931_))))
                                         (_g2179921927_ _g2180221931_))
                                     (_g2179921927_ _g2180221931_))
                                 (_g2179921927_ _g2180221931_))))
                         (_g2179921927_ _g2180221931_))))
                 (_g2179921927_ _g2180221931_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g2179722007_
                                                     (lambda (_g2180221983_)
                                                       (if (gx#stx-pair?
                                                            _g2180221983_)
                                                           (let ((_e2180421986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g2180221983_)))
                     (let ((_hd2180521990_ (##car _e2180421986_))
                           (_tl2180621993_ (##cdr _e2180421986_)))
                       (if (gx#stx-null? _tl2180621993_)
                           ((lambda (_L21996_)
                              (_loop20873_ _L21996_ _vars21150_ _K21151_))
                            _hd2180521990_)
                           (_g2179821979_ _g2180221983_))))
                   (_g2179821979_ _g2180221983_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2179722007_ _L21785_)))))))
                                    _tl2117121782_)))
                               (_g2115321758_ _g2116421762_))
                           (_g2115321758_ _g2116421762_))
                       (_g2115321758_ _g2116421762_))))
               (_g2115321758_ _g2116421762_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2115222011_
                                             _ptree21148_)))))))))))))))
                 (_loop-vector20875_
                  (lambda (_body21036_ _vars21038_ _K21039_)
                    (let ((_g2104221063_
                           (lambda (_g2104321059_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2104321059_))))
                      (let ((_g2104121104_
                             (lambda (_g2104321067_)
                               (if (gx#stx-pair? _g2104321067_)
                                   (let ((_e2105221070_
                                          (gx#syntax-e _g2104321067_)))
                                     (let ((_hd2105321074_
                                            (##car _e2105221070_))
                                           (_tl2105421077_
                                            (##cdr _e2105221070_)))
                                       (if (gx#stx-datum? _hd2105321074_)
                                           (if (equal? (gx#stx-e
                                                        _hd2105321074_)
                                                       'list:)
                                               (if (gx#stx-pair?
                                                    _tl2105421077_)
                                                   (let ((_e2105521080_
                                                          (gx#syntax-e
                                                           _tl2105421077_)))
                                                     (let ((_hd2105621084_
                                                            (##car _e2105521080_))
                                                           (_tl2105721087_
                                                            (##cdr _e2105521080_)))
                                                       (if (gx#stx-null?
                                                            _tl2105721087_)
                                                           ((lambda (_L21090_)
                                                              (_loop20873_
                                                               _L21090_
                                                               _vars21038_
                                                               _K21039_))
                                                            _hd2105621084_)
                                                           (_g2104221063_
                                                            _g2104321067_))))
                                                   (_g2104221063_
                                                    _g2104321067_))
                                               (_g2104221063_ _g2104321067_))
                                           (_g2104221063_ _g2104321067_))))
                                   (_g2104221063_ _g2104321067_)))))
                        (let ((_g2104021144_
                               (lambda (_g2104321108_)
                                 (if (gx#stx-pair? _g2104321108_)
                                     (let ((_e2104521111_
                                            (gx#syntax-e _g2104321108_)))
                                       (let ((_hd2104621115_
                                              (##car _e2104521111_))
                                             (_tl2104721118_
                                              (##cdr _e2104521111_)))
                                         (if (gx#stx-datum? _hd2104621115_)
                                             (if (equal? (gx#stx-e
                                                          _hd2104621115_)
                                                         'simple:)
                                                 (if (gx#stx-pair?
                                                      _tl2104721118_)
                                                     (let ((_e2104821121_
                                                            (gx#syntax-e
                                                             _tl2104721118_)))
                                                       (let ((_hd2104921125_
                                                              (##car _e2104821121_))
                                                             (_tl2105021128_
                                                              (##cdr _e2104821121_)))
                                                         (if (gx#stx-null?
                                                              _tl2105021128_)
                                                             ((lambda (_L21131_)
                                                                (_loop-list20876_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L21131_
                         _vars21038_
                         _K21039_))
                      _hd2104921125_)
                     (_g2104121104_ _g2104321108_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2104121104_
                                                      _g2104321108_))
                                                 (_g2104121104_ _g2104321108_))
                                             (_g2104121104_ _g2104321108_))))
                                     (_g2104121104_ _g2104321108_)))))
                          (_g2104021144_ _body21036_))))))
                 (_loop-list20876_
                  (lambda (_rest20966_ _vars20968_ _K20969_)
                    (let ((_g2097220984_
                           (lambda (_g2097320980_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2097320980_))))
                      (let ((_g2097120995_
                             (lambda (_g2097320988_)
                               ((lambda () (_K20969_ _vars20968_))))))
                        (let ((_g2097021032_
                               (lambda (_g2097320999_)
                                 (if (gx#stx-pair? _g2097320999_)
                                     (let ((_e2097621002_
                                            (gx#syntax-e _g2097320999_)))
                                       (let ((_hd2097721006_
                                              (##car _e2097621002_))
                                             (_tl2097821009_
                                              (##cdr _e2097621002_)))
                                         ((lambda (_L21012_ _L21014_)
                                            (_loop20873_
                                             _L21014_
                                             _vars20968_
                                             (lambda (_g2102621028_)
                                               (_loop-list20876_
                                                _L21012_
                                                _g2102621028_
                                                _K20969_))))
                                          _tl2097821009_
                                          _hd2097721006_)))
                                     (_g2097120995_ _g2097320999_)))))
                          (_g2097021032_ _rest20966_))))))
                 (_loop-class-list20877_
                  (lambda (_rest20879_ _vars20881_ _K20882_)
                    (let ((_g2088520900_
                           (lambda (_g2088620896_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2088620896_))))
                      (let ((_g2088420911_
                             (lambda (_g2088620904_)
                               ((lambda () (_K20882_ _vars20881_))))))
                        (let ((_g2088320962_
                               (lambda (_g2088620915_)
                                 (if (gx#stx-pair? _g2088620915_)
                                     (let ((_e2088920918_
                                            (gx#syntax-e _g2088620915_)))
                                       (let ((_hd2089020922_
                                              (##car _e2088920918_))
                                             (_tl2089120925_
                                              (##cdr _e2088920918_)))
                                         (if (gx#stx-pair? _tl2089120925_)
                                             (let ((_e2089220928_
                                                    (gx#syntax-e
                                                     _tl2089120925_)))
                                               (let ((_hd2089320932_
                                                      (##car _e2089220928_))
                                                     (_tl2089420935_
                                                      (##cdr _e2089220928_)))
                                                 ((lambda (_L20938_ _L20940_)
                                                    (_loop20873_
                                                     _L20940_
                                                     _vars20881_
                                                     (lambda (_g2095620958_)
                                                       (_loop-class-list20877_
                                                        _L20938_
                                                        _g2095620958_
                                                        _K20882_))))
                                                  _tl2089420935_
                                                  _hd2089320932_)))
                                             (_g2088420911_ _g2088620915_))))
                                     (_g2088420911_ _g2088620915_)))))
                          (_g2088320962_ _rest20879_)))))))
          (_loop20873_ _ptree20870_ '() values))))
    (define |gerbil/core::<match>[1]#generate-match1|
      (lambda (_stx17783_ _tgt17785_ _ptree17786_ _K17787_ _E17788_)
        (letrec ((_generate117790_
                  (lambda (_tgt19320_ _ptree19322_ _K19323_ _E19324_)
                    (let ((_g1932619334_
                           (lambda (_g1932719330_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1932719330_))))
                      (let ((_g1932520866_
                             (lambda (_g1932719338_)
                               ((lambda (_L19341_)
                                  (let ()
                                    (let ((_g1936719482_
                                           (lambda (_g1936819478_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1936819478_))))
                                      (let ((_g1936619503_
                                             (lambda (_g1936819486_)
                                               (if (gx#stx-pair? _g1936819486_)
                                                   (let ((_e1947419489_
                                                          (gx#syntax-e
                                                           _g1936819486_)))
                                                     (let ((_hd1947519493_
                                                            (##car _e1947419489_))
                                                           (_tl1947619496_
                                                            (##cdr _e1947419489_)))
                                                       (if (gx#stx-datum?
                                                            _hd1947519493_)
                                                           (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1947519493_)
                               'any:)
                       (if (gx#stx-null? _tl1947619496_)
                           ((lambda () _K19323_))
                           (_g1936719482_ _g1936819486_))
                       (_g1936719482_ _g1936819486_))
                   (_g1936719482_ _g1936819486_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1936719482_
                                                    _g1936819486_)))))
                                        (let ((_g1936519546_
                                               (lambda (_g1936819507_)
                                                 (if (gx#stx-pair?
                                                      _g1936819507_)
                                                     (let ((_e1946819510_
                                                            (gx#syntax-e
                                                             _g1936819507_)))
                                                       (let ((_hd1946919514_
                                                              (##car _e1946819510_))
                                                             (_tl1947019517_
                                                              (##cdr _e1946819510_)))
                                                         (if (gx#stx-datum?
                                                              _hd1946919514_)
                                                             (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _hd1946919514_)
                                 'var:)
                         (if (gx#stx-pair? _tl1947019517_)
                             (let ((_e1947119520_
                                    (gx#syntax-e _tl1947019517_)))
                               (let ((_hd1947219524_ (##car _e1947119520_))
                                     (_tl1947319527_ (##cdr _e1947119520_)))
                                 (if (gx#stx-null? _tl1947319527_)
                                     ((lambda (_L19530_)
                                        (cons (gx#datum->syntax '#f 'let)
                                              (cons (cons (cons _L19530_
                                                                (cons _L19341_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _K19323_ '()))))
                                      _hd1947219524_)
                                     (_g1936619503_ _g1936819507_))))
                             (_g1936619503_ _g1936819507_))
                         (_g1936619503_ _g1936819507_))
                     (_g1936619503_ _g1936819507_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1936619503_
                                                      _g1936819507_)))))
                                          (let ((_g1936419628_
                                                 (lambda (_g1936819550_)
                                                   (if (gx#stx-pair?
                                                        _g1936819550_)
                                                       (let ((_e1946119553_
                                                              (gx#syntax-e
                                                               _g1936819550_)))
                                                         (let ((_hd1946219557_
                                                                (##car _e1946119553_))
                                                               (_tl1946319560_
                                                                (##cdr _e1946119553_)))
                                                           (if (gx#stx-datum?
                                                                _hd1946219557_)
                                                               (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _hd1946219557_)
                                   'datum:)
                           (if (gx#stx-pair? _tl1946319560_)
                               (let ((_e1946419563_
                                      (gx#syntax-e _tl1946319560_)))
                                 (let ((_hd1946519567_ (##car _e1946419563_))
                                       (_tl1946619570_ (##cdr _e1946419563_)))
                                   (if (gx#stx-null? _tl1946619570_)
                                       ((lambda (_L19573_)
                                          (let ((_g1958619594_
                                                 (lambda (_g1958719590_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1958719590_))))
                                            (let ((_g1958519613_
                                                   (lambda (_g1958719598_)
                                                     ((lambda (_L19601_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'if)
                        (cons (cons _L19601_
                                    (cons _L19341_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L19573_ '()))
                                                '())))
                              (cons _K19323_ (cons _E19324_ '()))))))
              _g1958719598_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1958519613_
                                               (let ((_e19617_
                                                      (gx#stx-e _L19573_)))
                                                 (if (let ((_$e19620_
                                                            (symbol? _e19617_)))
                                                       (if _$e19620_
                                                           _$e19620_
                                                           (let ((_$e19624_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (keyword? _e19617_)))
                     (if _$e19624_ _$e19624_ (immediate? _e19617_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##eq?)
                                                     (if (number? _e19617_)
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eqv?)
                                                         (gx#datum->syntax
                                                          '#f
                                                          'equal?))))))))
                                        _hd1946519567_)
                                       (_g1936519546_ _g1936819550_))))
                               (_g1936519546_ _g1936819550_))
                           (_g1936519546_ _g1936819550_))
                       (_g1936519546_ _g1936819550_))))
               (_g1936519546_ _g1936819550_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_g1936319682_
                                                   (lambda (_g1936819632_)
                                                     (if (gx#stx-pair?
                                                          _g1936819632_)
                                                         (let ((_e1945119635_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1936819632_)))
                   (let ((_hd1945219639_ (##car _e1945119635_))
                         (_tl1945319642_ (##cdr _e1945119635_)))
                     (if (gx#stx-datum? _hd1945219639_)
                         (if (equal? (gx#stx-e _hd1945219639_) 'class:)
                             (if (gx#stx-pair? _tl1945319642_)
                                 (let ((_e1945419645_
                                        (gx#syntax-e _tl1945319642_)))
                                   (let ((_hd1945519649_ (##car _e1945419645_))
                                         (_tl1945619652_
                                          (##cdr _e1945419645_)))
                                     (if (gx#stx-pair? _tl1945619652_)
                                         (let ((_e1945719655_
                                                (gx#syntax-e _tl1945619652_)))
                                           (let ((_hd1945819659_
                                                  (##car _e1945719655_))
                                                 (_tl1945919662_
                                                  (##cdr _e1945719655_)))
                                             (if (gx#stx-null? _tl1945919662_)
                                                 ((lambda (_L19665_ _L19667_)
                                                    (_generate-class17796_
                                                     (gx#stx-e _L19667_)
                                                     _tgt19320_
                                                     _L19665_
                                                     _K19323_
                                                     _E19324_))
                                                  _hd1945819659_
                                                  _hd1945519649_)
                                                 (_g1936419628_
                                                  _g1936819632_))))
                                         (_g1936419628_ _g1936819632_))))
                                 (_g1936419628_ _g1936819632_))
                             (_g1936419628_ _g1936819632_))
                         (_g1936419628_ _g1936819632_))))
                 (_g1936419628_ _g1936819632_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g1936219736_
                                                     (lambda (_g1936819686_)
                                                       (if (gx#stx-pair?
                                                            _g1936819686_)
                                                           (let ((_e1944019689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g1936819686_)))
                     (let ((_hd1944119693_ (##car _e1944019689_))
                           (_tl1944219696_ (##cdr _e1944019689_)))
                       (if (gx#stx-datum? _hd1944119693_)
                           (if (equal? (gx#stx-e _hd1944119693_) 'struct:)
                               (if (gx#stx-pair? _tl1944219696_)
                                   (let ((_e1944319699_
                                          (gx#syntax-e _tl1944219696_)))
                                     (let ((_hd1944419703_
                                            (##car _e1944319699_))
                                           (_tl1944519706_
                                            (##cdr _e1944319699_)))
                                       (if (gx#stx-pair? _tl1944519706_)
                                           (let ((_e1944619709_
                                                  (gx#syntax-e
                                                   _tl1944519706_)))
                                             (let ((_hd1944719713_
                                                    (##car _e1944619709_))
                                                   (_tl1944819716_
                                                    (##cdr _e1944619709_)))
                                               (if (gx#stx-null?
                                                    _tl1944819716_)
                                                   ((lambda (_L19719_ _L19721_)
                                                      (_generate-struct17795_
                                                       (gx#stx-e _L19721_)
                                                       _tgt19320_
                                                       _L19719_
                                                       _K19323_
                                                       _E19324_))
                                                    _hd1944719713_
                                                    _hd1944419703_)
                                                   (_g1936319682_
                                                    _g1936819686_))))
                                           (_g1936319682_ _g1936819686_))))
                                   (_g1936319682_ _g1936819686_))
                               (_g1936319682_ _g1936819686_))
                           (_g1936319682_ _g1936819686_))))
                   (_g1936319682_ _g1936819686_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_g1936119914_
                                                       (lambda (_g1936819740_)
                                                         (if (gx#stx-pair?
                                                              _g1936819740_)
                                                             (let ((_e1943219743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g1936819740_)))
                       (let ((_hd1943319747_ (##car _e1943219743_))
                             (_tl1943419750_ (##cdr _e1943219743_)))
                         (if (gx#stx-datum? _hd1943319747_)
                             (if (equal? (gx#stx-e _hd1943319747_) 'vector:)
                                 (if (gx#stx-pair? _tl1943419750_)
                                     (let ((_e1943519753_
                                            (gx#syntax-e _tl1943419750_)))
                                       (let ((_hd1943619757_
                                              (##car _e1943519753_))
                                             (_tl1943719760_
                                              (##cdr _e1943519753_)))
                                         (if (gx#stx-null? _tl1943719760_)
                                             ((lambda (_L19763_)
                                                (let ((_g1977719798_
                                                       (lambda (_g1977819794_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1977819794_))))
                                                  (let ((_g1977619839_
                                                         (lambda (_g1977819802_)
                                                           (if (gx#stx-pair?
                                                                _g1977819802_)
                                                               (let ((_e1978719805_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1977819802_)))
                         (let ((_hd1978819809_ (##car _e1978719805_))
                               (_tl1978919812_ (##cdr _e1978719805_)))
                           (if (gx#stx-datum? _hd1978819809_)
                               (if (equal? (gx#stx-e _hd1978819809_) 'list:)
                                   (if (gx#stx-pair? _tl1978919812_)
                                       (let ((_e1979019815_
                                              (gx#syntax-e _tl1978919812_)))
                                         (let ((_hd1979119819_
                                                (##car _e1979019815_))
                                               (_tl1979219822_
                                                (##cdr _e1979019815_)))
                                           (if (gx#stx-null? _tl1979219822_)
                                               ((lambda (_L19825_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'if)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'vector?)
                            (cons _L19341_ '()))
                      (cons (_generate-list-vector17794_
                             _tgt19320_
                             _L19825_
                             (gx#datum->syntax '#f 'subvector->list)
                             '0
                             _K19323_
                             _E19324_)
                            (cons _E19324_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1979119819_)
                                               (_g1977719798_ _g1977819802_))))
                                       (_g1977719798_ _g1977819802_))
                                   (_g1977719798_ _g1977819802_))
                               (_g1977719798_ _g1977819802_))))
                       (_g1977719798_ _g1977819802_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g1977519910_
                                                           (lambda (_g1977819843_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1977819843_)
                         (let ((_e1978019846_ (gx#syntax-e _g1977819843_)))
                           (let ((_hd1978119850_ (##car _e1978019846_))
                                 (_tl1978219853_ (##cdr _e1978019846_)))
                             (if (gx#stx-datum? _hd1978119850_)
                                 (if (equal? (gx#stx-e _hd1978119850_)
                                             'simple:)
                                     (if (gx#stx-pair? _tl1978219853_)
                                         (let ((_e1978319856_
                                                (gx#syntax-e _tl1978219853_)))
                                           (let ((_hd1978419860_
                                                  (##car _e1978319856_))
                                                 (_tl1978519863_
                                                  (##cdr _e1978319856_)))
                                             (if (gx#stx-null? _tl1978519863_)
                                                 ((lambda (_L19866_)
                                                    (let ((_g1987919887_
                                                           (lambda (_g1988019883_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g1988019883_))))
                                                      (let ((_g1987819906_
                                                             (lambda (_g1988019891_)
                                                               ((lambda (_L19894_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons (gx#datum->syntax '#f 'and)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##vector?)
                                                          (cons _L19341_ '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fx=)
                        (cons (cons (gx#datum->syntax '#f '##vector-length)
                                    (cons _L19341_ '()))
                              (cons _L19894_ '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (_generate-simple-vector17793_
                                               _tgt19320_
                                               _L19866_
                                               '0
                                               _K19323_
                                               _E19324_)
                                              (cons _E19324_ '()))))))
                        _g1988019891_))))
                (_g1987819906_ (gx#stx-length _L19866_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1978419860_)
                                                 (_g1977619839_
                                                  _g1977819843_))))
                                         (_g1977619839_ _g1977819843_))
                                     (_g1977619839_ _g1977819843_))
                                 (_g1977619839_ _g1977819843_))))
                         (_g1977619839_ _g1977819843_)))))
              (_g1977519910_ _L19763_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd1943619757_)
                                             (_g1936219736_ _g1936819740_))))
                                     (_g1936219736_ _g1936819740_))
                                 (_g1936219736_ _g1936819740_))
                             (_g1936219736_ _g1936819740_))))
                     (_g1936219736_ _g1936819740_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g1936020092_
                                                         (lambda (_g1936819918_)
                                                           (if (gx#stx-pair?
                                                                _g1936819918_)
                                                               (let ((_e1942519921_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1936819918_)))
                         (let ((_hd1942619925_ (##car _e1942519921_))
                               (_tl1942719928_ (##cdr _e1942519921_)))
                           (if (gx#stx-datum? _hd1942619925_)
                               (if (equal? (gx#stx-e _hd1942619925_) 'values:)
                                   (if (gx#stx-pair? _tl1942719928_)
                                       (let ((_e1942819931_
                                              (gx#syntax-e _tl1942719928_)))
                                         (let ((_hd1942919935_
                                                (##car _e1942819931_))
                                               (_tl1943019938_
                                                (##cdr _e1942819931_)))
                                           (if (gx#stx-null? _tl1943019938_)
                                               ((lambda (_L19941_)
                                                  (let ((_g1995519976_
                                                         (lambda (_g1995619972_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g1995619972_))))
                                                    (let ((_g1995420017_
                                                           (lambda (_g1995619980_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1995619980_)
                         (let ((_e1996519983_ (gx#syntax-e _g1995619980_)))
                           (let ((_hd1996619987_ (##car _e1996519983_))
                                 (_tl1996719990_ (##cdr _e1996519983_)))
                             (if (gx#stx-datum? _hd1996619987_)
                                 (if (equal? (gx#stx-e _hd1996619987_) 'list:)
                                     (if (gx#stx-pair? _tl1996719990_)
                                         (let ((_e1996819993_
                                                (gx#syntax-e _tl1996719990_)))
                                           (let ((_hd1996919997_
                                                  (##car _e1996819993_))
                                                 (_tl1997020000_
                                                  (##cdr _e1996819993_)))
                                             (if (gx#stx-null? _tl1997020000_)
                                                 ((lambda (_L20003_)
                                                    (_generate-list-vector17794_
                                                     _tgt19320_
                                                     _L20003_
                                                     (gx#datum->syntax
                                                      '#f
                                                      'values->list)
                                                     '0
                                                     _K19323_
                                                     _E19324_))
                                                  _hd1996919997_)
                                                 (_g1995519976_
                                                  _g1995619980_))))
                                         (_g1995519976_ _g1995619980_))
                                     (_g1995519976_ _g1995619980_))
                                 (_g1995519976_ _g1995619980_))))
                         (_g1995519976_ _g1995619980_)))))
              (let ((_g1995320088_
                     (lambda (_g1995620021_)
                       (if (gx#stx-pair? _g1995620021_)
                           (let ((_e1995820024_ (gx#syntax-e _g1995620021_)))
                             (let ((_hd1995920028_ (##car _e1995820024_))
                                   (_tl1996020031_ (##cdr _e1995820024_)))
                               (if (gx#stx-datum? _hd1995920028_)
                                   (if (equal? (gx#stx-e _hd1995920028_)
                                               'simple:)
                                       (if (gx#stx-pair? _tl1996020031_)
                                           (let ((_e1996120034_
                                                  (gx#syntax-e
                                                   _tl1996020031_)))
                                             (let ((_hd1996220038_
                                                    (##car _e1996120034_))
                                                   (_tl1996320041_
                                                    (##cdr _e1996120034_)))
                                               (if (gx#stx-null?
                                                    _tl1996320041_)
                                                   ((lambda (_L20044_)
                                                      (let ((_g2005720065_
                                                             (lambda (_g2005820061_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2005820061_))))
                                                        (let ((_g2005620084_
                                                               (lambda (_g2005820069_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L20072_)
                            (let ()
                              (cons (gx#datum->syntax '#f 'if)
                                    (cons (cons (gx#datum->syntax '#f '##fx=)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'values-count)
                                                            (cons _L19341_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _L20072_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (_generate-simple-vector17793_
                                                 _tgt19320_
                                                 _L20044_
                                                 '0
                                                 _K19323_
                                                 _E19324_)
                                                (cons _E19324_ '()))))))
                          _g2005820069_))))
                  (_g2005620084_ (gx#stx-length _L20044_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1996220038_)
                                                   (_g1995420017_
                                                    _g1995620021_))))
                                           (_g1995420017_ _g1995620021_))
                                       (_g1995420017_ _g1995620021_))
                                   (_g1995420017_ _g1995620021_))))
                           (_g1995420017_ _g1995620021_)))))
                (_g1995320088_ _L19941_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1942919935_)
                                               (_g1936119914_ _g1936819918_))))
                                       (_g1936119914_ _g1936819918_))
                                   (_g1936119914_ _g1936819918_))
                               (_g1936119914_ _g1936819918_))))
                       (_g1936119914_ _g1936819918_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g1935920163_
                                                           (lambda (_g1936820096_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1936820096_)
                         (let ((_e1941820099_ (gx#syntax-e _g1936820096_)))
                           (let ((_hd1941920103_ (##car _e1941820099_))
                                 (_tl1942020106_ (##cdr _e1941820099_)))
                             (if (gx#stx-datum? _hd1941920103_)
                                 (if (equal? (gx#stx-e _hd1941920103_) 'box:)
                                     (if (gx#stx-pair? _tl1942020106_)
                                         (let ((_e1942120109_
                                                (gx#syntax-e _tl1942020106_)))
                                           (let ((_hd1942220113_
                                                  (##car _e1942120109_))
                                                 (_tl1942320116_
                                                  (##cdr _e1942120109_)))
                                             (if (gx#stx-null? _tl1942320116_)
                                                 ((lambda (_L20119_)
                                                    (let ((_g2013220140_
                                                           (lambda (_g2013320136_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g2013320136_))))
                                                      (let ((_g2013120159_
                                                             (lambda (_g2013320144_)
                                                               ((lambda (_L20147_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons (gx#datum->syntax '#f '##box?)
                                              (cons _L19341_ '()))
                                        (cons (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L20147_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f '##unbox)
                                          (cons _L19341_ '()))
                                    '()))
                        '())
                  (cons (_generate117790_ _L20147_ _L20119_ _K19323_ _E19324_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _E19324_ '()))))))
                        _g2013320144_))))
                (_g2013120159_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1942220113_)
                                                 (_g1936020092_
                                                  _g1936820096_))))
                                         (_g1936020092_ _g1936820096_))
                                     (_g1936020092_ _g1936820096_))
                                 (_g1936020092_ _g1936820096_))))
                         (_g1936020092_ _g1936820096_)))))
              (let ((_g1935820217_
                     (lambda (_g1936820167_)
                       (if (gx#stx-pair? _g1936820167_)
                           (let ((_e1940820170_ (gx#syntax-e _g1936820167_)))
                             (let ((_hd1940920174_ (##car _e1940820170_))
                                   (_tl1941020177_ (##cdr _e1940820170_)))
                               (if (gx#stx-datum? _hd1940920174_)
                                   (if (equal? (gx#stx-e _hd1940920174_)
                                               'splice:)
                                       (if (gx#stx-pair? _tl1941020177_)
                                           (let ((_e1941120180_
                                                  (gx#syntax-e
                                                   _tl1941020177_)))
                                             (let ((_hd1941220184_
                                                    (##car _e1941120180_))
                                                   (_tl1941320187_
                                                    (##cdr _e1941120180_)))
                                               (if (gx#stx-pair?
                                                    _tl1941320187_)
                                                   (let ((_e1941420190_
                                                          (gx#syntax-e
                                                           _tl1941320187_)))
                                                     (let ((_hd1941520194_
                                                            (##car _e1941420190_))
                                                           (_tl1941620197_
                                                            (##cdr _e1941420190_)))
                                                       (if (gx#stx-null?
                                                            _tl1941620197_)
                                                           ((lambda (_L20200_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L20202_)
                      (_generate-splice17792_
                       _tgt19320_
                       _L20202_
                       _L20200_
                       _K19323_
                       _E19324_))
                    _hd1941520194_
                    _hd1941220184_)
                   (_g1935920163_ _g1936820167_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1935920163_
                                                    _g1936820167_))))
                                           (_g1935920163_ _g1936820167_))
                                       (_g1935920163_ _g1936820167_))
                                   (_g1935920163_ _g1936820167_))))
                           (_g1935920163_ _g1936820167_)))))
                (let ((_g1935720238_
                       (lambda (_g1936820221_)
                         (if (gx#stx-pair? _g1936820221_)
                             (let ((_e1940320224_ (gx#syntax-e _g1936820221_)))
                               (let ((_hd1940420228_ (##car _e1940320224_))
                                     (_tl1940520231_ (##cdr _e1940320224_)))
                                 (if (gx#stx-datum? _hd1940420228_)
                                     (if (equal? (gx#stx-e _hd1940420228_)
                                                 'null:)
                                         (if (gx#stx-null? _tl1940520231_)
                                             ((lambda ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'if)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '##null?)
                          (cons _L19341_ '()))
                    (cons _K19323_ (cons _E19324_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1935820217_ _g1936820221_))
                                         (_g1935820217_ _g1936820221_))
                                     (_g1935820217_ _g1936820221_))))
                             (_g1935820217_ _g1936820221_)))))
                  (let ((_g1935620357_
                         (lambda (_g1936820242_)
                           (if (gx#stx-pair? _g1936820242_)
                               (let ((_e1939420245_
                                      (gx#syntax-e _g1936820242_)))
                                 (let ((_hd1939520249_ (##car _e1939420245_))
                                       (_tl1939620252_ (##cdr _e1939420245_)))
                                   (if (gx#stx-datum? _hd1939520249_)
                                       (if (equal? (gx#stx-e _hd1939520249_)
                                                   'cons:)
                                           (if (gx#stx-pair? _tl1939620252_)
                                               (let ((_e1939720255_
                                                      (gx#syntax-e
                                                       _tl1939620252_)))
                                                 (let ((_hd1939820259_
                                                        (##car _e1939720255_))
                                                       (_tl1939920262_
                                                        (##cdr _e1939720255_)))
                                                   (if (gx#stx-pair?
                                                        _tl1939920262_)
                                                       (let ((_e1940020265_
                                                              (gx#syntax-e
                                                               _tl1939920262_)))
                                                         (let ((_hd1940120269_
                                                                (##car _e1940020265_))
                                                               (_tl1940220272_
                                                                (##cdr _e1940020265_)))
                                                           (if (gx#stx-null?
                                                                _tl1940220272_)
                                                               ((lambda (_L20275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L20277_)
                          (let ((_g2029320308_
                                 (lambda (_g2029420304_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2029420304_))))
                            (let ((_g2029220353_
                                   (lambda (_g2029420312_)
                                     (if (gx#stx-pair? _g2029420312_)
                                         (let ((_e2029720315_
                                                (gx#syntax-e _g2029420312_)))
                                           (let ((_hd2029820319_
                                                  (##car _e2029720315_))
                                                 (_tl2029920322_
                                                  (##cdr _e2029720315_)))
                                             (if (gx#stx-pair? _tl2029920322_)
                                                 (let ((_e2030020325_
                                                        (gx#syntax-e
                                                         _tl2029920322_)))
                                                   (let ((_hd2030120329_
                                                          (##car _e2030020325_))
                                                         (_tl2030220332_
                                                          (##cdr _e2030020325_)))
                                                     (if (gx#stx-null?
                                                          _tl2030220332_)
                                                         ((lambda (_L20335_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L20337_)
                    (let ()
                      (cons (gx#datum->syntax '#f 'if)
                            (cons (cons (gx#datum->syntax '#f '##pair?)
                                        (cons _L19341_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'let)
                                              (cons (cons (cons _L20337_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     '##car)
                                    (cons _L19341_ '()))
                              '()))
                  (cons (cons _L20335_
                              (cons (cons (gx#datum->syntax '#f '##cdr)
                                          (cons _L19341_ '()))
                                    '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (_generate117790_
                                                           _L20337_
                                                           _L20277_
                                                           (_generate117790_
                                                            _L20335_
                                                            _L20275_
                                                            _K19323_
                                                            _E19324_)
                                                           _E19324_)
                                                          '())))
                                        (cons _E19324_ '()))))))
                  _hd2030120329_
                  _hd2029820319_)
                 (_g2029320308_ _g2029420312_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2029320308_
                                                  _g2029420312_))))
                                         (_g2029320308_ _g2029420312_)))))
                              (_g2029220353_
                               (list (gx#genident 'hd) (gx#genident 'tl))))))
                        _hd1940120269_
                        _hd1939820259_)
                       (_g1935720238_ _g1936820242_))))
               (_g1935720238_ _g1936820242_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1935720238_ _g1936820242_))
                                           (_g1935720238_ _g1936820242_))
                                       (_g1935720238_ _g1936820242_))))
                               (_g1935720238_ _g1936820242_)))))
                    (let ((_g1935520397_
                           (lambda (_g1936820361_)
                             (if (gx#stx-pair? _g1936820361_)
                                 (let ((_e1938620364_
                                        (gx#syntax-e _g1936820361_)))
                                   (let ((_hd1938720368_ (##car _e1938620364_))
                                         (_tl1938820371_
                                          (##cdr _e1938620364_)))
                                     (if (gx#stx-datum? _hd1938720368_)
                                         (if (equal? (gx#stx-e _hd1938720368_)
                                                     'not:)
                                             (if (gx#stx-pair? _tl1938820371_)
                                                 (let ((_e1938920374_
                                                        (gx#syntax-e
                                                         _tl1938820371_)))
                                                   (let ((_hd1939020378_
                                                          (##car _e1938920374_))
                                                         (_tl1939120381_
                                                          (##cdr _e1938920374_)))
                                                     (if (gx#stx-null?
                                                          _tl1939120381_)
                                                         ((lambda (_L20384_)
                                                            (_generate117790_
                                                             _tgt19320_
                                                             _L20384_
                                                             _E19324_
                                                             _K19323_))
                                                          _hd1939020378_)
                                                         (_g1935620357_
                                                          _g1936820361_))))
                                                 (_g1935620357_ _g1936820361_))
                                             (_g1935620357_ _g1936820361_))
                                         (_g1935620357_ _g1936820361_))))
                                 (_g1935620357_ _g1936820361_)))))
                      (let ((_g1935420485_
                             (lambda (_g1936820401_)
                               (if (gx#stx-pair? _g1936820401_)
                                   (let ((_e1938220404_
                                          (gx#syntax-e _g1936820401_)))
                                     (let ((_hd1938320408_
                                            (##car _e1938220404_))
                                           (_tl1938420411_
                                            (##cdr _e1938220404_)))
                                       (if (gx#stx-datum? _hd1938320408_)
                                           (if (equal? (gx#stx-e
                                                        _hd1938320408_)
                                                       'or:)
                                               ((lambda (_L20414_)
                                                  (let ((_g2042620438_
                                                         (lambda (_g2042720434_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2042720434_))))
                                                    (let ((_g2042520449_
                                                           (lambda (_g2042720442_)
                                                             ((lambda ()
                                                                _E19324_)))))
                                                      (let ((_g2042420481_
                                                             (lambda (_g2042720453_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2042720453_)
                           (let ((_e2043020456_ (gx#syntax-e _g2042720453_)))
                             (let ((_hd2043120460_ (##car _e2043020456_))
                                   (_tl2043220463_ (##cdr _e2043020456_)))
                               ((lambda (_L20466_ _L20468_)
                                  (_generate117790_
                                   _tgt19320_
                                   _L20468_
                                   _K19323_
                                   (_generate117790_
                                    _tgt19320_
                                    (cons 'or: _L20466_)
                                    _K19323_
                                    _E19324_)))
                                _tl2043220463_
                                _hd2043120460_)))
                           (_g2042520449_ _g2042720453_)))))
                (_g2042420481_ _L20414_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl1938420411_)
                                               (_g1935520397_ _g1936820401_))
                                           (_g1935520397_ _g1936820401_))))
                                   (_g1935520397_ _g1936820401_)))))
                        (let ((_g1935320573_
                               (lambda (_g1936820489_)
                                 (if (gx#stx-pair? _g1936820489_)
                                     (let ((_e1937820492_
                                            (gx#syntax-e _g1936820489_)))
                                       (let ((_hd1937920496_
                                              (##car _e1937820492_))
                                             (_tl1938020499_
                                              (##cdr _e1937820492_)))
                                         (if (gx#stx-datum? _hd1937920496_)
                                             (if (equal? (gx#stx-e
                                                          _hd1937920496_)
                                                         'and:)
                                                 ((lambda (_L20502_)
                                                    (let ((_g2051420526_
                                                           (lambda (_g2051520522_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g2051520522_))))
                                                      (let ((_g2051320537_
                                                             (lambda (_g2051520530_)
                                                               ((lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _K19323_)))))
                (let ((_g2051220569_
                       (lambda (_g2051520541_)
                         (if (gx#stx-pair? _g2051520541_)
                             (let ((_e2051820544_ (gx#syntax-e _g2051520541_)))
                               (let ((_hd2051920548_ (##car _e2051820544_))
                                     (_tl2052020551_ (##cdr _e2051820544_)))
                                 ((lambda (_L20554_ _L20556_)
                                    (_generate117790_
                                     _tgt19320_
                                     _L20556_
                                     (_generate117790_
                                      _tgt19320_
                                      (cons 'and: _L20554_)
                                      _K19323_
                                      _E19324_)
                                     _E19324_))
                                  _tl2052020551_
                                  _hd2051920548_)))
                             (_g2051320537_ _g2051520541_)))))
                  (_g2051220569_ _L20502_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl1938020499_)
                                                 (_g1935420485_ _g1936820489_))
                                             (_g1935420485_ _g1936820489_))))
                                     (_g1935420485_ _g1936820489_)))))
                          (let ((_g1935220862_
                                 (lambda (_g1936820577_)
                                   (if (gx#stx-pair? _g1936820577_)
                                       (let ((_e1937120580_
                                              (gx#syntax-e _g1936820577_)))
                                         (let ((_hd1937220584_
                                                (##car _e1937120580_))
                                               (_tl1937320587_
                                                (##cdr _e1937120580_)))
                                           (if (gx#stx-datum? _hd1937220584_)
                                               (if (equal? (gx#stx-e
                                                            _hd1937220584_)
                                                           '?:)
                                                   (if (gx#stx-pair?
                                                        _tl1937320587_)
                                                       (let ((_e1937420590_
                                                              (gx#syntax-e
                                                               _tl1937320587_)))
                                                         (let ((_hd1937520594_
                                                                (##car _e1937420590_))
                                                               (_tl1937620597_
                                                                (##cdr _e1937420590_)))
                                                           ((lambda (_L20600_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L20602_)
                      (let ((_g2061820650_
                             (lambda (_g2061920646_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g2061920646_))))
                        (let ((_g2061720748_
                               (lambda (_g2061920654_)
                                 (if (gx#stx-pair? _g2061920654_)
                                     (let ((_e2063320657_
                                            (gx#syntax-e _g2061920654_)))
                                       (let ((_hd2063420661_
                                              (##car _e2063320657_))
                                             (_tl2063520664_
                                              (##cdr _e2063320657_)))
                                         (if (gx#stx-datum? _hd2063420661_)
                                             (if (equal? (gx#stx-e
                                                          _hd2063420661_)
                                                         '::)
                                                 (if (gx#stx-pair?
                                                      _tl2063520664_)
                                                     (let ((_e2063620667_
                                                            (gx#syntax-e
                                                             _tl2063520664_)))
                                                       (let ((_hd2063720671_
                                                              (##car _e2063620667_))
                                                             (_tl2063820674_
                                                              (##cdr _e2063620667_)))
                                                         (if (gx#stx-pair?
                                                              _tl2063820674_)
                                                             (let ((_e2063920677_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl2063820674_)))
                       (let ((_hd2064020681_ (##car _e2063920677_))
                             (_tl2064120684_ (##cdr _e2063920677_)))
                         (if (gx#stx-datum? _hd2064020681_)
                             (if (equal? (gx#stx-e _hd2064020681_) '=>:)
                                 (if (gx#stx-pair? _tl2064120684_)
                                     (let ((_e2064220687_
                                            (gx#syntax-e _tl2064120684_)))
                                       (let ((_hd2064320691_
                                              (##car _e2064220687_))
                                             (_tl2064420694_
                                              (##cdr _e2064220687_)))
                                         (if (gx#stx-null? _tl2064420694_)
                                             ((lambda (_L20697_ _L20699_)
                                                (let ((_g2071720725_
                                                       (lambda (_g2071820721_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g2071820721_))))
                                                  (let ((_g2071620744_
                                                         (lambda (_g2071820729_)
                                                           ((lambda (_L20732_)
                                                              (let ()
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'if)
                              (cons (cons (gx#datum->syntax '#f '?)
                                          (cons _L20602_ (cons _L19341_ '())))
                                    (cons (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (cons _L20732_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _L20699_ (cons _L19341_ '())) '()))
                    '())
              (cons (_generate117790_ _L20732_ _L20697_ _K19323_ _E19324_)
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons _E19324_ '()))))))
                    _g2071820729_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2071620744_
                                                     (gx#genident 'e)))))
                                              _hd2064320691_
                                              _hd2063720671_)
                                             (_g2061820650_ _g2061920654_))))
                                     (_g2061820650_ _g2061920654_))
                                 (_g2061820650_ _g2061920654_))
                             (_g2061820650_ _g2061920654_))))
                     (_g2061820650_ _g2061920654_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2061820650_
                                                      _g2061920654_))
                                                 (_g2061820650_ _g2061920654_))
                                             (_g2061820650_ _g2061920654_))))
                                     (_g2061820650_ _g2061920654_)))))
                          (let ((_g2061620819_
                                 (lambda (_g2061920752_)
                                   (if (gx#stx-pair? _g2061920752_)
                                       (let ((_e2062520755_
                                              (gx#syntax-e _g2061920752_)))
                                         (let ((_hd2062620759_
                                                (##car _e2062520755_))
                                               (_tl2062720762_
                                                (##cdr _e2062520755_)))
                                           (if (gx#stx-datum? _hd2062620759_)
                                               (if (equal? (gx#stx-e
                                                            _hd2062620759_)
                                                           '=>:)
                                                   (if (gx#stx-pair?
                                                        _tl2062720762_)
                                                       (let ((_e2062820765_
                                                              (gx#syntax-e
                                                               _tl2062720762_)))
                                                         (let ((_hd2062920769_
                                                                (##car _e2062820765_))
                                                               (_tl2063020772_
                                                                (##cdr _e2062820765_)))
                                                           (if (gx#stx-null?
                                                                _tl2063020772_)
                                                               ((lambda (_L20775_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_g2078820796_
                                 (lambda (_g2078920792_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2078920792_))))
                            (let ((_g2078720815_
                                   (lambda (_g2078920800_)
                                     ((lambda (_L20803_)
                                        (let ()
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (cons _L20803_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _L20602_ (cons _L19341_ '())) '()))
                    '())
              (cons (cons (gx#datum->syntax '#f 'if)
                          (cons _L20803_
                                (cons (_generate117790_
                                       _L20803_
                                       _L20775_
                                       _K19323_
                                       _E19324_)
                                      (cons _E19324_ '()))))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2078920800_))))
                              (_g2078720815_ (gx#genident 'e)))))
                        _hd2062920769_)
                       (_g2061720748_ _g2061920752_))))
               (_g2061720748_ _g2061920752_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2061720748_
                                                    _g2061920752_))
                                               (_g2061720748_ _g2061920752_))))
                                       (_g2061720748_ _g2061920752_)))))
                            (let ((_g2061520847_
                                   (lambda (_g2061920823_)
                                     (if (gx#stx-pair? _g2061920823_)
                                         (let ((_e2062120826_
                                                (gx#syntax-e _g2061920823_)))
                                           (let ((_hd2062220830_
                                                  (##car _e2062120826_))
                                                 (_tl2062320833_
                                                  (##cdr _e2062120826_)))
                                             (if (gx#stx-null? _tl2062320833_)
                                                 ((lambda (_L20836_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '?)
                              (cons _L20602_ (cons _L19341_ '())))
                        (cons (_generate117790_
                               _tgt19320_
                               _L20836_
                               _K19323_
                               _E19324_)
                              (cons _E19324_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd2062220830_)
                                                 (_g2061620819_
                                                  _g2061920823_))))
                                         (_g2061620819_ _g2061920823_)))))
                              (let ((_g2061420858_
                                     (lambda (_g2061920851_)
                                       (if (gx#stx-null? _g2061920851_)
                                           ((lambda ()
                                              (cons (gx#datum->syntax '#f 'if)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '?)
                        (cons _L20602_ (cons _L19341_ '())))
                  (cons _K19323_ (cons _E19324_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g2061520847_ _g2061920851_)))))
                                (_g2061420858_ _L20600_)))))))
                    _tl1937620597_
                    _hd1937520594_)))
               (_g1935320573_ _g1936820577_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1935320573_
                                                    _g1936820577_))
                                               (_g1935320573_ _g1936820577_))))
                                       (_g1935320573_ _g1936820577_)))))
                            (_g1935220862_ _ptree19322_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _g1932719338_))))
                        (_g1932520866_ _tgt19320_)))))
                 (_generate-splice17792_
                  (lambda (_tgt18692_ _hd18694_ _rest18695_ _K18696_ _E18697_)
                    (let ((_g1869918716_
                           (lambda (_g1870018712_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1870018712_))))
                      (let ((_g1869819316_
                             (lambda (_g1870018720_)
                               (if (gx#stx-pair/null? _g1870018720_)
                                   (if (fx>= (gx#stx-length _g1870018720_) '0)
                                       (let ((_g29560_
                                              (gx#syntax-split-splice
                                               _g1870018720_
                                               '0)))
                                         (begin
                                           (let ((_g29561_
                                                  (values-count _g29560_)))
                                             (if (not (fx= _g29561_ 2))
                                                 (error "Context expects 2 values"
                                                        _g29561_)))
                                           (let ((_target1870218723_
                                                  (values-ref _g29560_ 0))
                                                 (_tl1870418726_
                                                  (values-ref _g29560_ 1)))
                                             (if (gx#stx-null? _tl1870418726_)
                                                 (letrec ((_loop1870518729_
                                                           (lambda (_hd1870318733_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _var1870918736_)
                     (if (gx#stx-pair? _hd1870318733_)
                         (let ((_e1870618739_ (gx#syntax-e _hd1870318733_)))
                           (let ((_lp-hd1870718743_ (##car _e1870618739_))
                                 (_lp-tl1870818746_ (##cdr _e1870618739_)))
                             (_loop1870518729_
                              _lp-tl1870818746_
                              (cons _lp-hd1870718743_ _var1870918736_))))
                         (let ((_var1871018749_ (reverse _var1870918736_)))
                           ((lambda (_L18753_)
                              (let ()
                                (let ((_g1876918786_
                                       (lambda (_g1877018782_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1877018782_))))
                                  (let ((_g1876819304_
                                         (lambda (_g1877018790_)
                                           (if (gx#stx-pair/null?
                                                _g1877018790_)
                                               (if (fx>= (gx#stx-length
                                                          _g1877018790_)
                                                         '0)
                                                   (let ((_g29562_
                                                          (gx#syntax-split-splice
                                                           _g1877018790_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29563_
                                                              (values-count
                                                               _g29562_)))
                                                         (if (not (fx= _g29563_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29563_)))
               (let ((_target1877218793_ (values-ref _g29562_ 0))
                     (_tl1877418796_ (values-ref _g29562_ 1)))
                 (if (gx#stx-null? _tl1877418796_)
                     (letrec ((_loop1877518799_
                               (lambda (_hd1877318803_ _var-r1877918806_)
                                 (if (gx#stx-pair? _hd1877318803_)
                                     (let ((_e1877618809_
                                            (gx#syntax-e _hd1877318803_)))
                                       (let ((_lp-hd1877718813_
                                              (##car _e1877618809_))
                                             (_lp-tl1877818816_
                                              (##cdr _e1877618809_)))
                                         (_loop1877518799_
                                          _lp-tl1877818816_
                                          (cons _lp-hd1877718813_
                                                _var-r1877918806_))))
                                     (let ((_var-r1878018819_
                                            (reverse _var-r1877918806_)))
                                       ((lambda (_L18823_)
                                          (let ()
                                            (let ((_g1884018857_
                                                   (lambda (_g1884118853_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1884118853_))))
                                              (let ((_g1883919292_
                                                     (lambda (_g1884118861_)
                                                       (if (gx#stx-pair/null?
                                                            _g1884118861_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1884118861_)
                             '0)
                       (let ((_g29564_
                              (gx#syntax-split-splice _g1884118861_ '0)))
                         (begin
                           (let ((_g29565_ (values-count _g29564_)))
                             (if (not (fx= _g29565_ 2))
                                 (error "Context expects 2 values" _g29565_)))
                           (let ((_target1884318864_ (values-ref _g29564_ 0))
                                 (_tl1884518867_ (values-ref _g29564_ 1)))
                             (if (gx#stx-null? _tl1884518867_)
                                 (letrec ((_loop1884618870_
                                           (lambda (_hd1884418874_
                                                    _init1885018877_)
                                             (if (gx#stx-pair? _hd1884418874_)
                                                 (let ((_e1884718880_
                                                        (gx#syntax-e
                                                         _hd1884418874_)))
                                                   (let ((_lp-hd1884818884_
                                                          (##car _e1884718880_))
                                                         (_lp-tl1884918887_
                                                          (##cdr _e1884718880_)))
                                                     (_loop1884618870_
                                                      _lp-tl1884918887_
                                                      (cons _lp-hd1884818884_
                                                            _init1885018877_))))
                                                 (let ((_init1885118890_
                                                        (reverse _init1885018877_)))
                                                   ((lambda (_L18894_)
                                                      (let ()
                                                        (let ((_g1891118919_
                                                               (lambda (_g1891218915_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1891218915_))))
                  (let ((_g1891019288_
                         (lambda (_g1891218923_)
                           ((lambda (_L18926_)
                              (let ()
                                (let ((_g1893918947_
                                       (lambda (_g1894018943_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1894018943_))))
                                  (let ((_g1893819284_
                                         (lambda (_g1894018951_)
                                           ((lambda (_L18954_)
                                              (let ()
                                                (let ((_g1896718975_
                                                       (lambda (_g1896818971_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1896818971_))))
                                                  (let ((_g1896619280_
                                                         (lambda (_g1896818979_)
                                                           ((lambda (_L18982_)
                                                              (let ()
                                                                (let ((_g1899519003_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1899618999_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1899618999_))))
                          (let ((_g1899419276_
                                 (lambda (_g1899619007_)
                                   ((lambda (_L19010_)
                                      (let ()
                                        (let ((_g1902319031_
                                               (lambda (_g1902419027_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1902419027_))))
                                          (let ((_g1902219272_
                                                 (lambda (_g1902419035_)
                                                   ((lambda (_L19038_)
                                                      (let ()
                                                        (let ((_g1905119059_
                                                               (lambda (_g1905219055_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1905219055_))))
                  (let ((_g1905019268_
                         (lambda (_g1905219063_)
                           ((lambda (_L19066_)
                              (let ()
                                (let ((_g1907919087_
                                       (lambda (_g1908019083_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1908019083_))))
                                  (let ((_g1907819264_
                                         (lambda (_g1908019091_)
                                           ((lambda (_L19094_)
                                              (let ()
                                                (let ((_g1910719115_
                                                       (lambda (_g1910819111_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1910819111_))))
                                                  (let ((_g1910619249_
                                                         (lambda (_g1910819119_)
                                                           ((lambda (_L19122_)
                                                              (let ()
                                                                (let ((_g1913519143_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1913619139_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1913619139_))))
                          (let ((_g1913419237_
                                 (lambda (_g1913619147_)
                                   ((lambda (_L19150_)
                                      (let ()
                                        (let ((_g1916319171_
                                               (lambda (_g1916419167_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1916419167_))))
                                          (let ((_g1916219233_
                                                 (lambda (_g1916419175_)
                                                   ((lambda (_L19178_)
                                                      (let ()
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'letrec)
                        (cons (cons (cons _L18954_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L19066_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr (lambda (_g1919219203_ _g1919319206_)
                                     (cons _g1919219203_ _g1919319206_))
                                   '()
                                   _L18753_)))
                    (cons _L19094_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (cons (cons _L19010_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons (cons _L19038_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _L19066_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1919419209_
                                                        _g1919519212_)
                                                 (cons _g1919419209_
                                                       _g1919519212_))
                                               '()
                                               _L18823_))))
                          (cons _L19178_ '())))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons _L18982_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons (cons _L19066_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1919619215_
                                                        _g1919719218_)
                                                 (cons _g1919619215_
                                                       _g1919719218_))
                                               '()
                                               _L18823_)))
                                (cons (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'pair?)
                                                        (cons _L19066_ '()))
                                                  (cons (cons _L19010_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '##car)
                                  (cons _L19066_ '()))
                            (cons _L19066_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g1919819221_
                                                    _g1919919224_)
                                             (cons _g1919819221_
                                                   _g1919919224_))
                                           '()
                                           _L18823_)))))
                (cons _L19150_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              (cons (cons _L18982_
                                          (cons _L18926_
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g1920019227_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1920119230_)
                   (cons _g1920019227_ _g1920119230_))
                 '()
                 _L18894_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1916419175_))))
                                            (_g1916219233_
                                             (_generate117790_
                                              _L19038_
                                              _hd18694_
                                              _L19122_
                                              _L19150_))))))
                                    _g1913619147_))))
                            (_g1913419237_
                             (cons _L18954_
                                   (cons _L19066_
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g1924019243_
                                                           _g1924119246_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'reverse)
                        (cons _g1924019243_ '()))
                  _g1924119246_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()
                                                  _L18823_)))))))))
                    _g1910819119_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1910619249_
                                                     (cons _L18982_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##cdr)
                               (cons _L19066_ '()))
                         (begin
                           (gx#syntax-check-splice-targets _L18823_ _L18753_)
                           (foldr (lambda (_g1925219256_
                                           _g1925319259_
                                           _g1925419261_)
                                    (cons (cons (gx#datum->syntax '#f 'cons)
                                                (cons _g1925319259_
                                                      (cons _g1925219256_
                                                            '())))
                                          _g1925419261_))
                                  '()
                                  _L18823_
                                  _L18753_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g1908019091_))))
                                    (_g1907819264_
                                     (_generate117790_
                                      _L19066_
                                      _rest18695_
                                      _K18696_
                                      _E18697_))))))
                            _g1905219063_))))
                    (_g1905019268_ (gx#genident 'rest))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1902419035_))))
                                            (_g1902219272_
                                             (gx#genident 'hd))))))
                                    _g1899619007_))))
                            (_g1899419276_ (gx#genident 'splice-try))))))
                    _g1896818979_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1896619280_
                                                     (gx#genident
                                                      'splice-loop))))))
                                            _g1894018951_))))
                                    (_g1893819284_
                                     (gx#genident 'splice-rest))))))
                            _g1891218923_))))
                    (_g1891019288_ _tgt18692_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _init1885118890_))))))
                                   (_loop1884618870_ _target1884318864_ '()))
                                 (_g1884018857_ _g1884118861_)))))
                       (_g1884018857_ _g1884118861_))
                   (_g1884018857_ _g1884118861_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1883919292_
                                                 (make-list
                                                  (gx#stx-length
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g1929519298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1929619301_)
                      (cons _g1929519298_ _g1929619301_))
                    '()
                    _L18753_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         '@list)
                                                        '())))))))
                                        _var-r1878018819_))))))
                       (_loop1877518799_ _target1877218793_ '()))
                     (_g1876918786_ _g1877018790_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1876918786_
                                                    _g1877018790_))
                                               (_g1876918786_
                                                _g1877018790_)))))
                                    (_g1876819304_
                                     (gx#gentemps
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1930719310_
                                                        _g1930819313_)
                                                 (cons _g1930719310_
                                                       _g1930819313_))
                                               '()
                                               _L18753_))))))))
                            _var1871018749_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop1870518729_
                                                    _target1870218723_
                                                    '()))
                                                 (_g1869918716_
                                                  _g1870018720_)))))
                                       (_g1869918716_ _g1870018720_))
                                   (_g1869918716_ _g1870018720_)))))
                        (_g1869819316_
                         (|gerbil/core::<match>[1]#match-pattern-vars|
                          _hd18694_))))))
                 (_generate-simple-vector17793_
                  (lambda (_tgt18534_
                           _body18536_
                           _start18537_
                           _K18538_
                           _E18539_)
                    ((letrec ((_recur18541_
                               (lambda (_rest18544_ _off18546_)
                                 (let ((_g1854918561_
                                        (lambda (_g1855018557_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1855018557_))))
                                   (let ((_g1854818572_
                                          (lambda (_g1855018565_)
                                            ((lambda () _K18538_)))))
                                     (let ((_g1854718688_
                                            (lambda (_g1855018576_)
                                              (if (gx#stx-pair? _g1855018576_)
                                                  (let ((_e1855318579_
                                                         (gx#syntax-e
                                                          _g1855018576_)))
                                                    (let ((_hd1855418583_
                                                           (##car _e1855318579_))
                                                          (_tl1855518586_
                                                           (##cdr _e1855318579_)))
                                                      ((lambda (_L18589_
                                                                _L18591_)
                                                         (let ((_g1860618625_
                                                                (lambda (_g1860718621_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1860718621_))))
                   (let ((_g1860518684_
                          (lambda (_g1860718629_)
                            (if (gx#stx-pair? _g1860718629_)
                                (let ((_e1861118632_
                                       (gx#syntax-e _g1860718629_)))
                                  (let ((_hd1861218636_ (##car _e1861118632_))
                                        (_tl1861318639_ (##cdr _e1861118632_)))
                                    (if (gx#stx-pair? _tl1861318639_)
                                        (let ((_e1861418642_
                                               (gx#syntax-e _tl1861318639_)))
                                          (let ((_hd1861518646_
                                                 (##car _e1861418642_))
                                                (_tl1861618649_
                                                 (##cdr _e1861418642_)))
                                            (if (gx#stx-pair? _tl1861618649_)
                                                (let ((_e1861718652_
                                                       (gx#syntax-e
                                                        _tl1861618649_)))
                                                  (let ((_hd1861818656_
                                                         (##car _e1861718652_))
                                                        (_tl1861918659_
                                                         (##cdr _e1861718652_)))
                                                    (if (gx#stx-null?
                                                         _tl1861918659_)
                                                        ((lambda (_L18662_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18664_
                          _L18665_)
                   (let ()
                     (cons (gx#datum->syntax '#f 'let)
                           (cons (cons (cons _L18665_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##vector-ref)
                                                         (cons _L18664_
                                                               (cons _L18662_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())
                                 (cons (_generate117790_
                                        _L18665_
                                        _L18591_
                                        (_recur18541_
                                         _L18589_
                                         (fx1+ _off18546_))
                                        _E18539_)
                                       '())))))
                 _hd1861818656_
                 _hd1861518646_
                 _hd1861218636_)
                (_g1860618625_ _g1860718629_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1860618625_
                                                 _g1860718629_))))
                                        (_g1860618625_ _g1860718629_))))
                                (_g1860618625_ _g1860718629_)))))
                     (_g1860518684_
                      (list (gx#genident 'e) _tgt18534_ _off18546_)))))
               _tl1855518586_
               _hd1855418583_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1854818572_
                                                   _g1855018576_)))))
                                       (_g1854718688_ _rest18544_)))))))
                       _recur18541_)
                     _body18536_
                     _start18537_)))
                 (_generate-list-vector17794_
                  (lambda (_tgt18444_
                           _body18446_
                           _tgt->list18447_
                           _start18448_
                           _K18449_
                           _E18450_)
                    (let ((_g1845218471_
                           (lambda (_g1845318467_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1845318467_))))
                      (let ((_g1845118530_
                             (lambda (_g1845318475_)
                               (if (gx#stx-pair? _g1845318475_)
                                   (let ((_e1845718478_
                                          (gx#syntax-e _g1845318475_)))
                                     (let ((_hd1845818482_
                                            (##car _e1845718478_))
                                           (_tl1845918485_
                                            (##cdr _e1845718478_)))
                                       (if (gx#stx-pair? _tl1845918485_)
                                           (let ((_e1846018488_
                                                  (gx#syntax-e
                                                   _tl1845918485_)))
                                             (let ((_hd1846118492_
                                                    (##car _e1846018488_))
                                                   (_tl1846218495_
                                                    (##cdr _e1846018488_)))
                                               (if (gx#stx-pair?
                                                    _tl1846218495_)
                                                   (let ((_e1846318498_
                                                          (gx#syntax-e
                                                           _tl1846218495_)))
                                                     (let ((_hd1846418502_
                                                            (##car _e1846318498_))
                                                           (_tl1846518505_
                                                            (##cdr _e1846318498_)))
                                                       (if (gx#stx-null?
                                                            _tl1846518505_)
                                                           ((lambda (_L18508_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L18510_
                             _L18511_)
                      (let ()
                        (cons (gx#datum->syntax '#f 'let)
                              (cons (cons (cons _L18511_
                                                (cons (cons _L18508_
                                                            (cons _L18510_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())
                                    (cons (_generate117790_
                                           _L18511_
                                           _body18446_
                                           _K18449_
                                           _E18450_)
                                          '())))))
                    _hd1846418502_
                    _hd1846118492_
                    _hd1845818482_)
                   (_g1845218471_ _g1845318475_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1845218471_
                                                    _g1845318475_))))
                                           (_g1845218471_ _g1845318475_))))
                                   (_g1845218471_ _g1845318475_)))))
                        (_g1845118530_
                         (list (gx#genident 'e)
                               _tgt18444_
                               _tgt->list18447_))))))
                 (_generate-struct17795_
                  (lambda (_info18177_
                           _tgt18179_
                           _body18180_
                           _K18181_
                           _E18182_)
                    (let ((_rtd18184_
                           (if (|gerbil/core::<MOP>::<MOP:2>[1]#extended-struct-info?|
                                _info18177_)
                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor|
                                _info18177_)
                               '#f)))
                      (let ((_fields18194_
                             ((letrec ((_lp18187_
                                        (lambda (_rtd18190_ _k18192_)
                                          (if _rtd18190_
                                              (_lp18187_
                                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor-e|
                                                (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-super|
                                                 _rtd18190_))
                                               (fx+ (length (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-fields|
                                                             _rtd18190_))
                                                    _k18192_))
                                              _k18192_))))
                                _lp18187_)
                              _rtd18184_
                              '0)))
                        (let ((_final?18197_
                               (if _rtd18184_
                                   (assgetq 'final:
                                            (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-plist|
                                             _rtd18184_))
                                   '#f)))
                          (let ((_g1820018208_
                                 (lambda (_g1820118204_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1820118204_))))
                            (let ((_g1819918440_
                                   (lambda (_g1820118212_)
                                     ((lambda (_L18215_)
                                        (let ()
                                          (let ((_g1823018238_
                                                 (lambda (_g1823118234_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1823118234_))))
                                            (let ((_g1822918436_
                                                   (lambda (_g1823118242_)
                                                     ((lambda (_L18245_)
                                                        (let ()
                                                          (let ((_g1825818266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1825918262_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1825918262_))))
                    (let ((_g1825718432_
                           (lambda (_g1825918270_)
                             ((lambda (_L18273_)
                                (let ()
                                  (let ()
                                    (let ((_g1828918310_
                                           (lambda (_g1829018306_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1829018306_))))
                                      (let ((_g1828818353_
                                             (lambda (_g1829018314_)
                                               (if (gx#stx-pair? _g1829018314_)
                                                   (let ((_e1829918317_
                                                          (gx#syntax-e
                                                           _g1829018314_)))
                                                     (let ((_hd1830018321_
                                                            (##car _e1829918317_))
                                                           (_tl1830118324_
                                                            (##cdr _e1829918317_)))
                                                       (if (gx#stx-datum?
                                                            _hd1830018321_)
                                                           (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1830018321_)
                               'list:)
                       (if (gx#stx-pair? _tl1830118324_)
                           (let ((_e1830218327_ (gx#syntax-e _tl1830118324_)))
                             (let ((_hd1830318331_ (##car _e1830218327_))
                                   (_tl1830418334_ (##cdr _e1830218327_)))
                               (if (gx#stx-null? _tl1830418334_)
                                   ((lambda (_L18337_)
                                      (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons _L18273_
                                                        (cons _L18245_
                                                              (cons _L18215_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (_generate-list-vector17794_
                                                         _tgt18179_
                                                         _L18337_
                                                         (gx#datum->syntax
                                                          '#f
                                                          'struct->list)
                                                         '1
                                                         _K18181_
                                                         _E18182_)
                                                        (cons _E18182_ '())))))
                                    _hd1830318331_)
                                   (_g1828918310_ _g1829018314_))))
                           (_g1828918310_ _g1829018314_))
                       (_g1828918310_ _g1829018314_))
                   (_g1828918310_ _g1829018314_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1828918310_
                                                    _g1829018314_)))))
                                        (let ((_g1828718428_
                                               (lambda (_g1829018357_)
                                                 (if (gx#stx-pair?
                                                      _g1829018357_)
                                                     (let ((_e1829218360_
                                                            (gx#syntax-e
                                                             _g1829018357_)))
                                                       (let ((_hd1829318364_
                                                              (##car _e1829218360_))
                                                             (_tl1829418367_
                                                              (##cdr _e1829218360_)))
                                                         (if (gx#stx-datum?
                                                              _hd1829318364_)
                                                             (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _hd1829318364_)
                                 'simple:)
                         (if (gx#stx-pair? _tl1829418367_)
                             (let ((_e1829518370_
                                    (gx#syntax-e _tl1829418367_)))
                               (let ((_hd1829618374_ (##car _e1829518370_))
                                     (_tl1829718377_ (##cdr _e1829518370_)))
                                 (if (gx#stx-null? _tl1829718377_)
                                     ((lambda (_L18380_)
                                        (let ((_K18393_
                                               (_generate-simple-vector17793_
                                                _tgt18179_
                                                _L18380_
                                                '1
                                                _K18181_
                                                _E18182_)))
                                          (if (if _rtd18184_
                                                  (fx<= (gx#stx-length
                                                         _L18380_)
                                                        _fields18194_)
                                                  '#f)
                                              (cons (gx#datum->syntax '#f 'if)
                                                    (cons (cons _L18273_
                                                                (cons _L18245_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L18215_ '())))
                  (cons _K18393_ (cons _E18182_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g1839618404_
                                                     (lambda (_g1839718400_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1839718400_))))
                                                (let ((_g1839518424_
                                                       (lambda (_g1839718408_)
                                                         ((lambda (_L18411_)
                                                            (let ()
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'if)
                            (cons (cons (gx#datum->syntax '#f 'and)
                                        (cons (cons _L18273_
                                                    (cons _L18245_
                                                          (cons _L18215_ '())))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##fx<)
                                                          (cons _L18411_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     '##vector-length)
                                    (cons _L18215_ '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons _K18393_ (cons _E18182_ '()))))))
                  _g1839718408_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1839518424_
                                                   (gx#stx-length
                                                    _L18380_)))))))
                                      _hd1829618374_)
                                     (_g1828818353_ _g1829018357_))))
                             (_g1828818353_ _g1829018357_))
                         (_g1828818353_ _g1829018357_))
                     (_g1828818353_ _g1829018357_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1828818353_
                                                      _g1829018357_)))))
                                          (_g1828718428_ _body18180_)))))))
                              _g1825918270_))))
                      (_g1825718432_
                       (if _final?18197_
                           (gx#datum->syntax '#f 'direct-struct-instance?)
                           (gx#datum->syntax '#f 'struct-instance?)))))))
              _g1823118242_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1822918436_
                                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                                                _info18177_))))))
                                      _g1820118212_))))
                              (_g1819918440_ _tgt18179_))))))))
                 (_generate-class17796_
                  (lambda (_info17798_
                           _tgt17800_
                           _body17801_
                           _K17802_
                           _E17803_)
                    (let ((_rtd17805_
                           (if (|gerbil/core::<MOP>::<MOP:2>[1]#extended-class-info?|
                                _info17798_)
                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor|
                                _info17798_)
                               '#f)))
                      (let ((_known-slot?17807_ #!void))
                        (letrec ((_rtd-known-slot?17809_
                                  (lambda (_rtd18158_ _slot18160_)
                                    (if _rtd18158_
                                        (let ((_$e18162_
                                               (memq _slot18160_
                                                     (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-slots|
                                                      _rtd18158_))))
                                          (if _$e18162_
                                              _$e18162_
                                              (ormap (lambda (_g1816518167_)
                                                       (_rtd-known-slot?17809_
                                                        _g1816518167_
                                                        _slot18160_))
                                                     (map |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor-e|
                                                          (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-super|
                                                           _rtd18158_)))))
                                        '#f)))
                                 (_recur17810_
                                  (lambda (_klass17944_ _rest17946_)
                                    (let ((_g1794917965_
                                           (lambda (_g1795017961_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1795017961_))))
                                      (let ((_g1794817976_
                                             (lambda (_g1795017969_)
                                               ((lambda () _K17802_)))))
                                        (let ((_g1794718154_
                                               (lambda (_g1795017980_)
                                                 (if (gx#stx-pair?
                                                      _g1795017980_)
                                                     (let ((_e1795417983_
                                                            (gx#syntax-e
                                                             _g1795017980_)))
                                                       (let ((_hd1795517987_
                                                              (##car _e1795417983_))
                                                             (_tl1795617990_
                                                              (##cdr _e1795417983_)))
                                                         (if (gx#stx-pair?
                                                              _tl1795617990_)
                                                             (let ((_e1795717993_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1795617990_)))
                       (let ((_hd1795817997_ (##car _e1795717993_))
                             (_tl1795918000_ (##cdr _e1795717993_)))
                         ((lambda (_L18003_ _L18005_ _L18006_)
                            (let ((_g1802218030_
                                   (lambda (_g1802318026_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1802318026_))))
                              (let ((_g1802118150_
                                     (lambda (_g1802318034_)
                                       ((lambda (_L18037_)
                                          (let ()
                                            (let ((_g1804918057_
                                                   (lambda (_g1805018053_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1805018053_))))
                                              (let ((_g1804818146_
                                                     (lambda (_g1805018061_)
                                                       ((lambda (_L18064_)
                                                          (let ()
                                                            (let ((_g1807718085_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g1807818081_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1807818081_))))
                      (let ((_g1807618142_
                             (lambda (_g1807818089_)
                               ((lambda (_L18092_)
                                  (let ()
                                    (let ((_g1810518113_
                                           (lambda (_g1810618109_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1810618109_))))
                                      (let ((_g1810418138_
                                             (lambda (_g1810618117_)
                                               ((lambda (_L18120_)
                                                  (let ()
                                                    (let ((_K18133_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons (cons (cons _L18120_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##vector-ref)
                                                       (cons _L18037_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'fx1+)
                                 (cons _L18092_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons (_generate117790_
                                      _L18120_
                                      _L18005_
                                      (_recur17810_ _klass17944_ _L18003_)
                                      _E17803_)
                                     '())))))
              (let ()
                (if (_known-slot?17807_ _L18006_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _L18092_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'class-slot-offset)
                                                        (cons _L18064_
                                                              (cons _L18006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons _K18133_ '())))
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _L18092_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'class-slot-offset)
                                                        (cons _L18064_
                                                              (cons _L18006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons (cons (gx#datum->syntax '#f 'if)
                                            (cons _L18092_
                                                  (cons _K18133_
                                                        (cons _E17803_ '()))))
                                      '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1810618117_))))
                                        (_g1810418138_ (gx#genident 'e))))))
                                _g1807818089_))))
                        (_g1807618142_ (gx#genident 'slot))))))
                _g1805018061_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1804818146_
                                                 _klass17944_)))))
                                        _g1802318034_))))
                                (_g1802118150_ _tgt17800_))))
                          _tl1795918000_
                          _hd1795817997_
                          _hd1795517987_)))
                     (_g1794817976_ _g1795017980_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1794817976_
                                                      _g1795017980_)))))
                                          (_g1794718154_ _rest17946_)))))))
                          (begin
                            (set! _known-slot?17807_
                                  (if _rtd17805_
                                      (lambda (_key18171_)
                                        (let ((_slot18174_
                                               (keyword->symbol
                                                (gx#stx-e _key18171_))))
                                          (_rtd-known-slot?17809_
                                           _rtd17805_
                                           _slot18174_)))
                                      false))
                            (let ((_final?17808_
                                   (if _rtd17805_
                                       (assgetq 'final:
                                                (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-plist|
                                                 _rtd17805_))
                                       '#f)))
                              (let ((_g1781217820_
                                     (lambda (_g1781317816_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1781317816_))))
                                (let ((_g1781117940_
                                       (lambda (_g1781317824_)
                                         ((lambda (_L17827_)
                                            (let ()
                                              (let ((_g1784217850_
                                                     (lambda (_g1784317846_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1784317846_))))
                                                (let ((_g1784117936_
                                                       (lambda (_g1784317854_)
                                                         ((lambda (_L17857_)
                                                            (let ()
                                                              (let ((_g1787017878_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1787117874_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1787117874_))))
                        (let ((_g1786917932_
                               (lambda (_g1787117882_)
                                 ((lambda (_L17885_)
                                    (let ()
                                      (let ((_g1789817906_
                                             (lambda (_g1789917902_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1789917902_))))
                                        (let ((_g1789717928_
                                               (lambda (_g1789917910_)
                                                 ((lambda (_L17913_)
                                                    (let ()
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'if)
                                                              (cons (cons _L17913_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons _L17885_ (cons _L17857_ '())))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (cons _L17827_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'object-type)
                              (cons _L17857_ '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (_recur17810_
                                                     _L17827_
                                                     _body17801_)
                                                    '())))
                                  (cons _E17803_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1789917910_))))
                                          (_g1789717928_
                                           (if _final?17808_
                                               (gx#datum->syntax
                                                '#f
                                                'direct-class-instance?)
                                               (gx#datum->syntax
                                                '#f
                                                'class-instance?)))))))
                                  _g1787117882_))))
                          (_g1786917932_
                           (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                            _info17798_))))))
                  _g1784317854_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1784117936_
                                                   _tgt17800_)))))
                                          _g1781317824_))))
                                  (_g1781117940_
                                   (gx#genident 'class))))))))))))
          (_generate117790_ _tgt17785_ _ptree17786_ _K17787_ _E17788_))))
    (define |gerbil/core::<match>[1]#generate-match*|
      (lambda (_stx16782_ _tgt-lst16784_ _clauses16785_)
        (let ((_parse-body16787_
               (lambda (_hd-len17605_)
                 ((letrec ((_lp17608_
                            (lambda (_rest17611_ _r17613_)
                              (let ((_g1761617628_
                                     (lambda (_g1761717624_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1761717624_))))
                                (let ((_g1761517639_
                                       (lambda (_g1761717632_)
                                         ((lambda () _r17613_)))))
                                  (let ((_g1761417779_
                                         (lambda (_g1761717643_)
                                           (if (gx#stx-pair? _g1761717643_)
                                               (let ((_e1762017646_
                                                      (gx#syntax-e
                                                       _g1761717643_)))
                                                 (let ((_hd1762117650_
                                                        (##car _e1762017646_))
                                                       (_tl1762217653_
                                                        (##cdr _e1762017646_)))
                                                   ((lambda (_L17656_ _L17658_)
                                                      (let ((_g1767517691_
                                                             (lambda (_g1767617687_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1767617687_))))
                                                        (let ((_g1767417702_
                                                               (lambda (_g1767617695_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal match clause"
                             _stx16782_
                             _L17658_))))))
                  (let ((_g1767317743_
                         (lambda (_g1767617706_)
                           (if (gx#stx-pair? _g1767617706_)
                               (let ((_e1768317709_
                                      (gx#syntax-e _g1767617706_)))
                                 (let ((_hd1768417713_ (##car _e1768317709_))
                                       (_tl1768517716_ (##cdr _e1768317709_)))
                                   ((lambda (_L17719_ _L17721_)
                                      (if (if (gx#stx-list? _L17721_)
                                              (if (fx= (gx#stx-length _L17721_)
                                                       _hd-len17605_)
                                                  (if (gx#stx-list? _L17719_)
                                                      (not (gx#stx-null?
                                                            _L17719_))
                                                      '#f)
                                                  '#f)
                                              '#f)
                                          (_lp17608_
                                           _L17656_
                                           (cons (cons (gx#genident 'try-match)
                                                       (cons (gx#stx-map
                                                              (lambda (_g1773317735_)
                                                                (|gerbil/core::<match>[1]#parse-match-pattern|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1773317735_
                         _stx16782_))
                      _L17721_)
                     (cons (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'begin) _L17719_)
                            (let ((_$e17739_ (gx#stx-source _L17658_)))
                              (if _$e17739_
                                  _$e17739_
                                  (gx#stx-source _stx16782_))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r17613_))
                                          (_g1767417702_ _g1767617706_)))
                                    _tl1768517716_
                                    _hd1768417713_)))
                               (_g1767417702_ _g1767617706_)))))
                    (let ((_g1767217775_
                           (lambda (_g1767617747_)
                             (if (gx#stx-pair? _g1767617747_)
                                 (let ((_e1767817750_
                                        (gx#syntax-e _g1767617747_)))
                                   (let ((_hd1767917754_ (##car _e1767817750_))
                                         (_tl1768017757_
                                          (##cdr _e1767817750_)))
                                     (if (gx#identifier? _hd1767917754_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core::<match>[1]#_g29570_|
                                              _hd1767917754_)
                                             ((lambda (_L17760_)
                                                (if (if (gx#stx-list? _L17760_)
                                                        (not (gx#stx-null?
                                                              _L17760_))
                                                        '#f)
                                                    (if (gx#stx-null? _L17656_)
                                                        (cons (cons (gx#genident
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             'else)
                            (cons '#f
                                  (cons (gx#stx-wrap-source
                                         (cons (gx#datum->syntax '#f 'begin)
                                               _L17760_)
                                         (let ((_$e17771_
                                                (gx#stx-source _L17658_)))
                                           (if _$e17771_
                                               _$e17771_
                                               (gx#stx-source _stx16782_))))
                                        '())))
                      _r17613_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; misplaced else"
                 _stx16782_
                 _L17658_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1767317743_
                                                     _g1767617747_)))
                                              _tl1768017757_)
                                             (_g1767317743_ _g1767617747_))
                                         (_g1767317743_ _g1767617747_))))
                                 (_g1767317743_ _g1767617747_)))))
                      (_g1767217775_ _L17658_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1762217653_
                                                    _hd1762117650_)))
                                               (_g1761517639_
                                                _g1761717643_)))))
                                    (_g1761417779_ _rest17611_)))))))
                    _lp17608_)
                  _clauses16785_
                  '()))))
          (let ((_generate116791_
                 (lambda (_clause16793_ _body16795_ _E16796_)
                   ((letrec ((_recur16798_
                              (lambda (_rest16801_ _rest-targets16803_)
                                (let ((_g1680616818_
                                       (lambda (_g1680716814_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1680716814_))))
                                  (let ((_g1680516829_
                                         (lambda (_g1680716822_)
                                           ((lambda () _body16795_)))))
                                    (let ((_g1680417100_
                                           (lambda (_g1680716833_)
                                             (if (gx#stx-pair? _g1680716833_)
                                                 (let ((_e1681016836_
                                                        (gx#syntax-e
                                                         _g1680716833_)))
                                                   (let ((_hd1681116840_
                                                          (##car _e1681016836_))
                                                         (_tl1681216843_
                                                          (##cdr _e1681016836_)))
                                                     ((lambda (_L16846_
                                                               _L16848_)
                                                        (let ((_g1686516877_
                                                               (lambda (_g1686616873_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1686616873_))))
                  (let ((_g1686417096_
                         (lambda (_g1686616881_)
                           (if (gx#stx-pair? _g1686616881_)
                               (let ((_e1686916884_
                                      (gx#syntax-e _g1686616881_)))
                                 (let ((_hd1687016888_ (##car _e1686916884_))
                                       (_tl1687116891_ (##cdr _e1686916884_)))
                                   ((lambda (_L16894_ _L16896_)
                                      (let ((_g1690816916_
                                             (lambda (_g1690916912_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1690916912_))))
                                        (let ((_g1690717092_
                                               (lambda (_g1690916920_)
                                                 ((lambda (_L16923_)
                                                    (let ()
                                                      (let ((_g1693516952_
                                                             (lambda (_g1693616948_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1693616948_))))
                                                        (let ((_g1693417088_
                                                               (lambda (_g1693616956_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#stx-pair/null? _g1693616956_)
                             (if (fx>= (gx#stx-length _g1693616956_) '0)
                                 (let ((_g29568_
                                        (gx#syntax-split-splice
                                         _g1693616956_
                                         '0)))
                                   (begin
                                     (let ((_g29569_ (values-count _g29568_)))
                                       (if (not (fx= _g29569_ 2))
                                           (error "Context expects 2 values"
                                                  _g29569_)))
                                     (let ((_target1693816959_
                                            (values-ref _g29568_ 0))
                                           (_tl1694016962_
                                            (values-ref _g29568_ 1)))
                                       (if (gx#stx-null? _tl1694016962_)
                                           (letrec ((_loop1694116965_
                                                     (lambda (_hd1693916969_
                                                              _var1694516972_)
                                                       (if (gx#stx-pair?
                                                            _hd1693916969_)
                                                           (let ((_e1694216975_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1693916969_)))
                     (let ((_lp-hd1694316979_ (##car _e1694216975_))
                           (_lp-tl1694416982_ (##cdr _e1694216975_)))
                       (_loop1694116965_
                        _lp-tl1694416982_
                        (cons _lp-hd1694316979_ _var1694516972_))))
                   (let ((_var1694616985_ (reverse _var1694516972_)))
                     ((lambda (_L16989_)
                        (let ()
                          (let ((_g1700617014_
                                 (lambda (_g1700717010_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1700717010_))))
                            (let ((_g1700517084_
                                   (lambda (_g1700717018_)
                                     ((lambda (_L17021_)
                                        (let ()
                                          (let ((_g1703417042_
                                                 (lambda (_g1703517038_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1703517038_))))
                                            (let ((_g1703317072_
                                                   (lambda (_g1703517046_)
                                                     ((lambda (_L17049_)
                                                        (let ()
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let)
                          (cons (cons (cons _L16923_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons (begin
                                                                '#!void
                                                                (foldr (lambda (_g1706317066_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1706417069_)
                                 (cons _g1706317066_ _g1706417069_))
                               '()
                               _L16989_))
                      (cons _L17021_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons _L17049_ '()))))))
              _g1703517046_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1703317072_
                                               (|gerbil/core::<match>[1]#generate-match1|
                                                _stx16782_
                                                _L16896_
                                                _L16848_
                                                (cons _L16923_
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g1707517078_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1707617081_)
                         (cons _g1707517078_ _g1707617081_))
                       '()
                       _L16989_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _E16796_))))))
                                      _g1700717018_))))
                              (_g1700517084_
                               (_recur16798_ _L16846_ _L16894_))))))
                      _var1694616985_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1694116965_
                                              _target1693816959_
                                              '()))
                                           (_g1693516952_ _g1693616956_)))))
                                 (_g1693516952_ _g1693616956_))
                             (_g1693516952_ _g1693616956_)))))
                  (_g1693417088_
                   (|gerbil/core::<match>[1]#match-pattern-vars| _L16848_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1690916920_))))
                                          (_g1690717092_ (gx#genident 'K)))))
                                    _tl1687116891_
                                    _hd1687016888_)))
                               (_g1686516877_ _g1686616881_)))))
                    (_g1686417096_ _rest-targets16803_))))
              _tl1681216843_
              _hd1681116840_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1680516829_
                                                  _g1680716833_)))))
                                      (_g1680417100_ _rest16801_)))))))
                      _recur16798_)
                    _clause16793_
                    _tgt-lst16784_))))
            (letrec ((_generate-clauses16790_
                      (lambda (_rest17104_ _E17106_)
                        (let ((_g1711017126_
                               (lambda (_g1711117122_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1711117122_))))
                          (let ((_g1710917137_
                                 (lambda (_g1711117130_)
                                   ((lambda () _E17106_)))))
                            (let ((_g1710817313_
                                   (lambda (_g1711117141_)
                                     (if (gx#stx-pair? _g1711117141_)
                                         (let ((_e1711817144_
                                                (gx#syntax-e _g1711117141_)))
                                           (let ((_hd1711917148_
                                                  (##car _e1711817144_))
                                                 (_tl1712017151_
                                                  (##cdr _e1711817144_)))
                                             ((lambda (_L17154_ _L17156_)
                                                (let ((_g1716917188_
                                                       (lambda (_g1717017184_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1717017184_))))
                                                  (let ((_g1716817309_
                                                         (lambda (_g1717017192_)
                                                           (if (gx#stx-pair?
                                                                _g1717017192_)
                                                               (let ((_e1717417195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1717017192_)))
                         (let ((_hd1717517199_ (##car _e1717417195_))
                               (_tl1717617202_ (##cdr _e1717417195_)))
                           (if (gx#stx-pair? _tl1717617202_)
                               (let ((_e1717717205_
                                      (gx#syntax-e _tl1717617202_)))
                                 (let ((_hd1717817209_ (##car _e1717717205_))
                                       (_tl1717917212_ (##cdr _e1717717205_)))
                                   (if (gx#stx-pair? _tl1717917212_)
                                       (let ((_e1718017215_
                                              (gx#syntax-e _tl1717917212_)))
                                         (let ((_hd1718117219_
                                                (##car _e1718017215_))
                                               (_tl1718217222_
                                                (##cdr _e1718017215_)))
                                           (if (gx#stx-null? _tl1718217222_)
                                               ((lambda (_L17225_
                                                         _L17227_
                                                         _L17228_)
                                                  (let ((_g1724517260_
                                                         (lambda (_g1724617256_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g1724617256_))))
                                                    (let ((_g1724417305_
                                                           (lambda (_g1724617264_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1724617264_)
                         (let ((_e1724917267_ (gx#syntax-e _g1724617264_)))
                           (let ((_hd1725017271_ (##car _e1724917267_))
                                 (_tl1725117274_ (##cdr _e1724917267_)))
                             (if (gx#stx-pair? _tl1725117274_)
                                 (let ((_e1725217277_
                                        (gx#syntax-e _tl1725117274_)))
                                   (let ((_hd1725317281_ (##car _e1725217277_))
                                         (_tl1725417284_
                                          (##cdr _e1725217277_)))
                                     (if (gx#stx-null? _tl1725417284_)
                                         ((lambda (_L17287_ _L17289_)
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L17228_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f 'lambda)
                                          (cons '() (cons _L17289_ '())))
                                    '()))
                        '())
                  (cons _L17287_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd1725317281_
                                          _hd1725017271_)
                                         (_g1724517260_ _g1724617264_))))
                                 (_g1724517260_ _g1724617264_))))
                         (_g1724517260_ _g1724617264_)))))
              (_g1724417305_
               (list (if (gx#stx-e _L17227_)
                         (_generate116791_ _L17227_ _L17225_ _E17106_)
                         _L17225_)
                     (_generate-clauses16790_
                      _L17154_
                      (cons _L17228_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1718117219_
                                                _hd1717817209_
                                                _hd1717517199_)
                                               (_g1716917188_ _g1717017192_))))
                                       (_g1716917188_ _g1717017192_))))
                               (_g1716917188_ _g1717017192_))))
                       (_g1716917188_ _g1717017192_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1716817309_ _L17156_))))
                                              _tl1712017151_
                                              _hd1711917148_)))
                                         (_g1710917137_ _g1711117141_)))))
                              (let ((_g1710717418_
                                     (lambda (_g1711117317_)
                                       (if (gx#stx-pair? _g1711117317_)
                                           (let ((_e1711317320_
                                                  (gx#syntax-e _g1711117317_)))
                                             (let ((_hd1711417324_
                                                    (##car _e1711317320_))
                                                   (_tl1711517327_
                                                    (##cdr _e1711317320_)))
                                               (if (gx#stx-null?
                                                    _tl1711517327_)
                                                   ((lambda (_L17330_)
                                                      (let ((_g1734117359_
                                                             (lambda (_g1734217355_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1734217355_))))
                                                        (let ((_g1734017414_
                                                               (lambda (_g1734217363_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#stx-pair? _g1734217363_)
                             (let ((_e1734517366_ (gx#syntax-e _g1734217363_)))
                               (let ((_hd1734617370_ (##car _e1734517366_))
                                     (_tl1734717373_ (##cdr _e1734517366_)))
                                 (if (gx#stx-pair? _tl1734717373_)
                                     (let ((_e1734817376_
                                            (gx#syntax-e _tl1734717373_)))
                                       (let ((_hd1734917380_
                                              (##car _e1734817376_))
                                             (_tl1735017383_
                                              (##cdr _e1734817376_)))
                                         (if (gx#stx-pair? _tl1735017383_)
                                             (let ((_e1735117386_
                                                    (gx#syntax-e
                                                     _tl1735017383_)))
                                               (let ((_hd1735217390_
                                                      (##car _e1735117386_))
                                                     (_tl1735317393_
                                                      (##cdr _e1735117386_)))
                                                 (if (gx#stx-null?
                                                      _tl1735317393_)
                                                     ((lambda (_L17396_
                                                               _L17398_)
                                                        (if (gx#stx-e _L17398_)
                                                            (_generate116791_
                                                             _L17398_
                                                             _L17396_
                                                             _E17106_)
                                                            _L17396_))
                                                      _hd1735217390_
                                                      _hd1734917380_)
                                                     (_g1734117359_
                                                      _g1734217363_))))
                                             (_g1734117359_ _g1734217363_))))
                                     (_g1734117359_ _g1734217363_))))
                             (_g1734117359_ _g1734217363_)))))
                  (_g1734017414_ _L17330_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1711417324_)
                                                   (_g1710817313_
                                                    _g1711117317_))))
                                           (_g1710817313_ _g1711117317_)))))
                                (_g1710717418_ _rest17104_))))))))
              (let ((_generate-body16789_
                     (lambda (_body17422_)
                       (let ((_g1742517433_
                              (lambda (_g1742617429_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1742617429_))))
                         (let ((_g1742417601_
                                (lambda (_g1742617437_)
                                  ((lambda (_L17440_)
                                     (let ()
                                       (let ((_g1745217469_
                                              (lambda (_g1745317465_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g1745317465_))))
                                         (let ((_g1745117597_
                                                (lambda (_g1745317473_)
                                                  (if (gx#stx-pair/null?
                                                       _g1745317473_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1745317473_)
                        '0)
                  (let ((_g29566_ (gx#syntax-split-splice _g1745317473_ '0)))
                    (begin
                      (let ((_g29567_ (values-count _g29566_)))
                        (if (not (fx= _g29567_ 2))
                            (error "Context expects 2 values" _g29567_)))
                      (let ((_target1745517476_ (values-ref _g29566_ 0))
                            (_tl1745717479_ (values-ref _g29566_ 1)))
                        (if (gx#stx-null? _tl1745717479_)
                            (letrec ((_loop1745817482_
                                      (lambda (_hd1745617486_
                                               _target1746217489_)
                                        (if (gx#stx-pair? _hd1745617486_)
                                            (let ((_e1745917492_
                                                   (gx#syntax-e
                                                    _hd1745617486_)))
                                              (let ((_lp-hd1746017496_
                                                     (##car _e1745917492_))
                                                    (_lp-tl1746117499_
                                                     (##cdr _e1745917492_)))
                                                (_loop1745817482_
                                                 _lp-tl1746117499_
                                                 (cons _lp-hd1746017496_
                                                       _target1746217489_))))
                                            (let ((_target1746317502_
                                                   (reverse _target1746217489_)))
                                              ((lambda (_L17506_)
                                                 (let ()
                                                   (let ((_g1752317531_
                                                          (lambda (_g1752417527_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1752417527_))))
                                                     (let ((_g1752217585_
                                                            (lambda (_g1752417535_)
                                                              ((lambda (_L17538_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((_g1755117559_
                                  (lambda (_g1755217555_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1755217555_))))
                             (let ((_g1755017581_
                                    (lambda (_g1755217563_)
                                      ((lambda (_L17566_)
                                         (let ()
                                           (let ()
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _L17440_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L17538_ '()))
                       '())
                 (cons _L17566_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _g1755217563_))))
                               (_g1755017581_
                                (_generate-clauses16790_
                                 _body17422_
                                 (cons _L17440_ '())))))))
                       _g1752417535_))))
               (_g1752217585_
                (gx#stx-wrap-source
                 (cons (gx#datum->syntax '#f 'lambda)
                       (cons '()
                             (cons (cons (gx#datum->syntax '#f 'error)
                                         (cons '"No clause matching"
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g1758817591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1758917594_)
                  (cons _g1758817591_ _g1758917594_))
                '()
                _L17506_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '())))
                 (gx#stx-source _stx16782_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _target1746317502_))))))
                              (_loop1745817482_ _target1745517476_ '()))
                            (_g1745217469_ _g1745317473_)))))
                  (_g1745217469_ _g1745317473_))
              (_g1745217469_ _g1745317473_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1745117597_ _tgt-lst16784_)))))
                                   _g1742617437_))))
                           (_g1742417601_ (gx#genident 'E)))))))
                (_generate-body16789_
                 (_parse-body16787_ (gx#stx-length _tgt-lst16784_)))))))))
    (define |gerbil/core::<match>[1]#generate-match|
      (lambda (_stx16684_ _tgt16686_ _clauses16687_)
        (let ((_reclause16689_
               (lambda (_clause16692_)
                 (let ((_g1669716712_
                        (lambda (_g1669816708_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1669816708_))))
                   (let ((_g1669616723_
                          (lambda (_g1669816716_)
                            ((lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal match clause"
                                _stx16684_
                                _clause16692_))))))
                     (let ((_g1669516757_
                            (lambda (_g1669816727_)
                              (if (gx#stx-pair? _g1669816727_)
                                  (let ((_e1670416730_
                                         (gx#syntax-e _g1669816727_)))
                                    (let ((_hd1670516734_
                                           (##car _e1670416730_))
                                          (_tl1670616737_
                                           (##cdr _e1670416730_)))
                                      ((lambda (_L16740_ _L16742_)
                                         (gx#stx-wrap-source
                                          (cons (cons _L16742_ '()) _L16740_)
                                          (gx#stx-source
                                           (gx#datum->syntax '#f 'clause))))
                                       _tl1670616737_
                                       _hd1670516734_)))
                                  (_g1669616723_ _g1669816727_)))))
                       (let ((_g1669416778_
                              (lambda (_g1669816761_)
                                (if (gx#stx-pair? _g1669816761_)
                                    (let ((_e1669916764_
                                           (gx#syntax-e _g1669816761_)))
                                      (let ((_hd1670016768_
                                             (##car _e1669916764_))
                                            (_tl1670116771_
                                             (##cdr _e1669916764_)))
                                        (if (gx#identifier? _hd1670016768_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<match>[1]#_g29571_|
                                                 _hd1670016768_)
                                                ((lambda () _clause16692_))
                                                (_g1669516757_ _g1669816761_))
                                            (_g1669516757_ _g1669816761_))))
                                    (_g1669516757_ _g1669816761_)))))
                         (_g1669416778_ _clause16692_))))))))
          (|gerbil/core::<match>[1]#generate-match*|
           _stx16684_
           (cons _tgt16686_ '())
           (gx#stx-map _reclause16689_ _clauses16687_)))))
    (define |gerbil/core::<match>[:0:]#match|
      (lambda (_stx23662_)
        (let ((_g2366723696_
               (lambda (_g2366823692_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2366823692_))))
          (let ((_g2366623804_
                 (lambda (_g2366823700_)
                   (if (gx#stx-pair? _g2366823700_)
                       (let ((_e2368523703_ (gx#syntax-e _g2366823700_)))
                         (let ((_hd2368623707_ (##car _e2368523703_))
                               (_tl2368723710_ (##cdr _e2368523703_)))
                           (if (gx#stx-pair? _tl2368723710_)
                               (let ((_e2368823713_
                                      (gx#syntax-e _tl2368723710_)))
                                 (let ((_hd2368923717_ (##car _e2368823713_))
                                       (_tl2369023720_ (##cdr _e2368823713_)))
                                   ((lambda (_L23723_ _L23725_)
                                      (if (gx#stx-list? _L23723_)
                                          (let ((_g2373923747_
                                                 (lambda (_g2374023743_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2374023743_))))
                                            (let ((_g2373823800_
                                                   (lambda (_g2374023751_)
                                                     ((lambda (_L23754_)
                                                        (let ()
                                                          (let ((_g2376623774_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
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
                                    (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (cons _L23754_
                                                            (cons _L23725_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _L23781_ '()))))))
                              _g2376723778_))))
                      (_g2376523796_
                       (|gerbil/core::<match>[1]#generate-match|
                        _stx23662_
                        _L23754_
                        _L23723_))))))
              _g2374023751_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2373823800_
                                               (gx#genident _L23725_))))
                                          (_g2366723696_ _g2366823700_)))
                                    _tl2369023720_
                                    _hd2368923717_)))
                               (_g2366723696_ _g2366823700_))))
                       (_g2366723696_ _g2366823700_)))))
            (let ((_g2366523909_
                   (lambda (_g2366823808_)
                     (if (gx#stx-pair? _g2366823808_)
                         (let ((_e2367723811_ (gx#syntax-e _g2366823808_)))
                           (let ((_hd2367823815_ (##car _e2367723811_))
                                 (_tl2367923818_ (##cdr _e2367723811_)))
                             (if (gx#stx-pair? _tl2367923818_)
                                 (let ((_e2368023821_
                                        (gx#syntax-e _tl2367923818_)))
                                   (let ((_hd2368123825_ (##car _e2368023821_))
                                         (_tl2368223828_
                                          (##cdr _e2368023821_)))
                                     (if (gx#identifier? _hd2368123825_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core::<match>[1]#_g29572_|
                                              _hd2368123825_)
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
                                                               ((lambda (_L23859_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
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
                                                    (cons _L23859_
                                                          (cons _L23886_
                                                                '()))))))
                                        _g2387223883_))))
                                (_g2387023901_
                                 (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'match)
                                        (cons _L23859_ _L23831_))
                                  (gx#stx-source _stx23662_)))))))
                        _g2384523856_))))
                (_g2384323905_ (gx#genident 'args))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2366623804_
                                                     _g2366823808_)))
                                              _tl2368223828_)
                                             (_g2366623804_ _g2366823808_))
                                         (_g2366623804_ _g2366823808_))))
                                 (_g2366623804_ _g2366823808_))))
                         (_g2366623804_ _g2366823808_)))))
              (let ((_g2366424014_
                     (lambda (_g2366823913_)
                       (if (gx#stx-pair? _g2366823913_)
                           (let ((_e2367023916_ (gx#syntax-e _g2366823913_)))
                             (let ((_hd2367123920_ (##car _e2367023916_))
                                   (_tl2367223923_ (##cdr _e2367023916_)))
                               (if (gx#stx-pair? _tl2367223923_)
                                   (let ((_e2367323926_
                                          (gx#syntax-e _tl2367223923_)))
                                     (let ((_hd2367423930_
                                            (##car _e2367323926_))
                                           (_tl2367523933_
                                            (##cdr _e2367323926_)))
                                       (if (gx#identifier? _hd2367423930_)
                                           (if (gx#free-identifier=?
                                                |gerbil/core::<match>[1]#_g29573_|
                                                _hd2367423930_)
                                               ((lambda (_L23936_)
                                                  (if (gx#stx-list? _L23936_)
                                                      (let ((_g2394923957_
                                                             (lambda (_g2395023953_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2395023953_))))
                                                        (let ((_g2394824010_
                                                               (lambda (_g2395023961_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L23964_)
                            (let ()
                              (let ((_g2397623984_
                                     (lambda (_g2397723980_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g2397723980_))))
                                (let ((_g2397524006_
                                       (lambda (_g2397723988_)
                                         ((lambda (_L23991_)
                                            (let ()
                                              (let ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L23964_ '())
                                                            (cons _L23991_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g2397723988_))))
                                  (_g2397524006_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _L23964_ _L23936_))
                                    (gx#stx-source _stx23662_)))))))
                          _g2395023961_))))
                  (_g2394824010_ (gx#genident 'e))))
              (_g2366523909_ _g2366823913_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl2367523933_)
                                               (_g2366523909_ _g2366823913_))
                                           (_g2366523909_ _g2366823913_))))
                                   (_g2366523909_ _g2366823913_))))
                           (_g2366523909_ _g2366823913_)))))
                (_g2366424014_ _stx23662_)))))))
    (define |gerbil/core::<match>[:0:]#match*|
      (lambda (_stx24018_)
        (let ((_g2402124045_
               (lambda (_g2402224041_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2402224041_))))
          (let ((_g2402024257_
                 (lambda (_g2402224049_)
                   (if (gx#stx-pair? _g2402224049_)
                       (let ((_e2402524052_ (gx#syntax-e _g2402224049_)))
                         (let ((_hd2402624056_ (##car _e2402524052_))
                               (_tl2402724059_ (##cdr _e2402524052_)))
                           (if (gx#stx-pair? _tl2402724059_)
                               (let ((_e2402824062_
                                      (gx#syntax-e _tl2402724059_)))
                                 (let ((_hd2402924066_ (##car _e2402824062_))
                                       (_tl2403024069_ (##cdr _e2402824062_)))
                                   (if (gx#stx-pair/null? _hd2402924066_)
                                       (if (fx>= (gx#stx-length _hd2402924066_)
                                                 '0)
                                           (let ((_g29574_
                                                  (gx#syntax-split-splice
                                                   _hd2402924066_
                                                   '0)))
                                             (begin
                                               (let ((_g29575_
                                                      (values-count _g29574_)))
                                                 (if (not (fx= _g29575_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29575_)))
                                               (let ((_target2403124072_
                                                      (values-ref _g29574_ 0))
                                                     (_tl2403324075_
                                                      (values-ref _g29574_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl2403324075_)
                                                     (letrec ((_loop2403424078_
                                                               (lambda (_hd2403224082_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _e2403824085_)
                         (if (gx#stx-pair? _hd2403224082_)
                             (let ((_e2403524088_
                                    (gx#syntax-e _hd2403224082_)))
                               (let ((_lp-hd2403624092_ (##car _e2403524088_))
                                     (_lp-tl2403724095_ (##cdr _e2403524088_)))
                                 (_loop2403424078_
                                  _lp-tl2403724095_
                                  (cons _lp-hd2403624092_ _e2403824085_))))
                             (let ((_e2403924098_ (reverse _e2403824085_)))
                               ((lambda (_L24102_ _L24104_)
                                  (if (gx#stx-list? _L24102_)
                                      (let ((_g2412224139_
                                             (lambda (_g2412324135_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2412324135_))))
                                        (let ((_g2412124245_
                                               (lambda (_g2412324143_)
                                                 (if (gx#stx-pair/null?
                                                      _g2412324143_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2412324143_)
                                                               '0)
                                                         (let ((_g29576_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2412324143_
                         '0)))
                   (begin
                     (let ((_g29577_ (values-count _g29576_)))
                       (if (not (fx= _g29577_ 2))
                           (error "Context expects 2 values" _g29577_)))
                     (let ((_target2412524146_ (values-ref _g29576_ 0))
                           (_tl2412724149_ (values-ref _g29576_ 1)))
                       (if (gx#stx-null? _tl2412724149_)
                           (letrec ((_loop2412824152_
                                     (lambda (_hd2412624156_ _$e2413224159_)
                                       (if (gx#stx-pair? _hd2412624156_)
                                           (let ((_e2412924162_
                                                  (gx#syntax-e
                                                   _hd2412624156_)))
                                             (let ((_lp-hd2413024166_
                                                    (##car _e2412924162_))
                                                   (_lp-tl2413124169_
                                                    (##cdr _e2412924162_)))
                                               (_loop2412824152_
                                                _lp-tl2413124169_
                                                (cons _lp-hd2413024166_
                                                      _$e2413224159_))))
                                           (let ((_$e2413324172_
                                                  (reverse _$e2413224159_)))
                                             ((lambda (_L24176_)
                                                (let ()
                                                  (let ((_g2419224200_
                                                         (lambda (_g2419324196_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2419324196_))))
                                                    (let ((_g2419124233_
                                                           (lambda (_g2419324204_)
                                                             ((lambda (_L24207_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (begin
                                          (gx#syntax-check-splice-targets
                                           _L24104_
                                           _L24176_)
                                          (foldr (lambda (_g2422124225_
                                                          _g2422224228_
                                                          _g2422324230_)
                                                   (cons (cons _g2422224228_
                                                               (cons _g2422124225_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _g2422324230_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L24104_
                                                 _L24176_))
                                        (cons _L24207_ '()))))))
                      _g2419324204_))))
              (_g2419124233_
               (|gerbil/core::<match>[1]#generate-match*|
                _stx24018_
                (begin
                  '#!void
                  (foldr (lambda (_g2423624239_ _g2423724242_)
                           (cons _g2423624239_ _g2423724242_))
                         '()
                         _L24176_))
                _L24102_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _$e2413324172_))))))
                             (_loop2412824152_ _target2412524146_ '()))
                           (_g2412224139_ _g2412324143_)))))
                 (_g2412224139_ _g2412324143_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2412224139_
                                                      _g2412324143_)))))
                                          (_g2412124245_
                                           (gx#gentemps
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g2424824251_
                                                              _g2424924254_)
                                                       (cons _g2424824251_
                                                             _g2424924254_))
                                                     '()
                                                     _L24104_))))))
                                      (_g2402124045_ _g2402224049_)))
                                _tl2403024069_
                                _e2403924098_))))))
               (_loop2403424078_ _target2403124072_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2402124045_
                                                      _g2402224049_)))))
                                           (_g2402124045_ _g2402224049_))
                                       (_g2402124045_ _g2402224049_))))
                               (_g2402124045_ _g2402224049_))))
                       (_g2402124045_ _g2402224049_)))))
            (_g2402024257_ _stx24018_)))))
    (define |gerbil/core::<match>[:0:]#with|
      (lambda (_$stx24263_)
        (let ((_g2426924352_
               (lambda (_g2427024348_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2427024348_))))
          (let ((_g2426824513_
                 (lambda (_g2427024356_)
                   (if (gx#stx-pair? _g2427024356_)
                       (let ((_e2431524359_ (gx#syntax-e _g2427024356_)))
                         (let ((_hd2431624363_ (##car _e2431524359_))
                               (_tl2431724366_ (##cdr _e2431524359_)))
                           (if (gx#stx-pair? _tl2431724366_)
                               (let ((_e2431824369_
                                      (gx#syntax-e _tl2431724366_)))
                                 (let ((_hd2431924373_ (##car _e2431824369_))
                                       (_tl2432024376_ (##cdr _e2431824369_)))
                                   (if (gx#stx-pair/null? _hd2431924373_)
                                       (if (fx>= (gx#stx-length _hd2431924373_)
                                                 '0)
                                           (let ((_g29578_
                                                  (gx#syntax-split-splice
                                                   _hd2431924373_
                                                   '0)))
                                             (begin
                                               (let ((_g29579_
                                                      (values-count _g29578_)))
                                                 (if (not (fx= _g29579_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29579_)))
                                               (let ((_target2432124379_
                                                      (values-ref _g29578_ 0))
                                                     (_tl2432324382_
                                                      (values-ref _g29578_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl2432324382_)
                                                     (letrec ((_loop2432424385_
                                                               (lambda (_hd2432224389_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr2432824392_
                                _hd2432924394_)
                         (if (gx#stx-pair? _hd2432224389_)
                             (let ((_e2432524397_
                                    (gx#syntax-e _hd2432224389_)))
                               (let ((_lp-hd2432624401_ (##car _e2432524397_))
                                     (_lp-tl2432724404_ (##cdr _e2432524397_)))
                                 (if (gx#stx-pair? _lp-hd2432624401_)
                                     (let ((_e2433224407_
                                            (gx#syntax-e _lp-hd2432624401_)))
                                       (let ((_hd2433324411_
                                              (##car _e2433224407_))
                                             (_tl2433424414_
                                              (##cdr _e2433224407_)))
                                         (if (gx#stx-pair? _tl2433424414_)
                                             (let ((_e2433524417_
                                                    (gx#syntax-e
                                                     _tl2433424414_)))
                                               (let ((_hd2433624421_
                                                      (##car _e2433524417_))
                                                     (_tl2433724424_
                                                      (##cdr _e2433524417_)))
                                                 (if (gx#stx-null?
                                                      _tl2433724424_)
                                                     (_loop2432424385_
                                                      _lp-tl2432724404_
                                                      (cons _hd2433624421_
                                                            _expr2432824392_)
                                                      (cons _hd2433324411_
                                                            _hd2432924394_))
                                                     (_g2426924352_
                                                      _g2427024356_))))
                                             (_g2426924352_ _g2427024356_))))
                                     (_g2426924352_ _g2427024356_))))
                             (let ((_expr2433024427_
                                    (reverse _expr2432824392_))
                                   (_hd2433124430_ (reverse _hd2432924394_)))
                               (if (gx#stx-pair/null? _tl2432024376_)
                                   (if (fx>= (gx#stx-length _tl2432024376_) '0)
                                       (let ((_g29580_
                                              (gx#syntax-split-splice
                                               _tl2432024376_
                                               '0)))
                                         (begin
                                           (let ((_g29581_
                                                  (values-count _g29580_)))
                                             (if (not (fx= _g29581_ 2))
                                                 (error "Context expects 2 values"
                                                        _g29581_)))
                                           (let ((_target2433824433_
                                                  (values-ref _g29580_ 0))
                                                 (_tl2434024436_
                                                  (values-ref _g29580_ 1)))
                                             (if (gx#stx-null? _tl2434024436_)
                                                 (letrec ((_loop2434124439_
                                                           (lambda (_hd2433924443_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _body2434524446_)
                     (if (gx#stx-pair? _hd2433924443_)
                         (let ((_e2434224449_ (gx#syntax-e _hd2433924443_)))
                           (let ((_lp-hd2434324453_ (##car _e2434224449_))
                                 (_lp-tl2434424456_ (##cdr _e2434224449_)))
                             (_loop2434124439_
                              _lp-tl2434424456_
                              (cons _lp-hd2434324453_ _body2434524446_))))
                         (let ((_body2434624459_ (reverse _body2434524446_)))
                           ((lambda (_L24463_ _L24465_ _L24466_)
                              (cons (gx#datum->syntax '#f 'match*)
                                    (cons (begin
                                            '#!void
                                            (foldr (lambda (_g2448824495_
                                                            _g2448924498_)
                                                     (cons _g2448824495_
                                                           _g2448924498_))
                                                   '()
                                                   _L24465_))
                                          (cons (cons (begin
                                                        '#!void
                                                        (foldr (lambda (_g2449024501_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2449124504_)
                         (cons _g2449024501_ _g2449124504_))
                       '()
                       _L24466_))
              (begin
                '#!void
                (foldr (lambda (_g2449224507_ _g2449324510_)
                         (cons _g2449224507_ _g2449324510_))
                       '()
                       _L24463_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                            _body2434624459_
                            _expr2433024427_
                            _hd2433124430_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop2434124439_
                                                    _target2433824433_
                                                    '()))
                                                 (_g2426924352_
                                                  _g2427024356_)))))
                                       (_g2426924352_ _g2427024356_))
                                   (_g2426924352_ _g2427024356_)))))))
               (_loop2432424385_ _target2432124379_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2426924352_
                                                      _g2427024356_)))))
                                           (_g2426924352_ _g2427024356_))
                                       (_g2426924352_ _g2427024356_))))
                               (_g2426924352_ _g2427024356_))))
                       (_g2426924352_ _g2427024356_)))))
            (let ((_g2426724625_
                   (lambda (_g2427024517_)
                     (if (gx#stx-pair? _g2427024517_)
                         (let ((_e2429124520_ (gx#syntax-e _g2427024517_)))
                           (let ((_hd2429224524_ (##car _e2429124520_))
                                 (_tl2429324527_ (##cdr _e2429124520_)))
                             (if (gx#stx-pair? _tl2429324527_)
                                 (let ((_e2429424530_
                                        (gx#syntax-e _tl2429324527_)))
                                   (let ((_hd2429524534_ (##car _e2429424530_))
                                         (_tl2429624537_
                                          (##cdr _e2429424530_)))
                                     (if (gx#stx-pair? _hd2429524534_)
                                         (let ((_e2429724540_
                                                (gx#syntax-e _hd2429524534_)))
                                           (let ((_hd2429824544_
                                                  (##car _e2429724540_))
                                                 (_tl2429924547_
                                                  (##cdr _e2429724540_)))
                                             (if (gx#stx-pair? _tl2429924547_)
                                                 (let ((_e2430024550_
                                                        (gx#syntax-e
                                                         _tl2429924547_)))
                                                   (let ((_hd2430124554_
                                                          (##car _e2430024550_))
                                                         (_tl2430224557_
                                                          (##cdr _e2430024550_)))
                                                     (if (gx#stx-null?
                                                          _tl2430224557_)
                                                         (if (gx#stx-pair/null?
                                                              _tl2429624537_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _tl2429624537_)
                               '0)
                         (let ((_g29582_
                                (gx#syntax-split-splice _tl2429624537_ '0)))
                           (begin
                             (let ((_g29583_ (values-count _g29582_)))
                               (if (not (fx= _g29583_ 2))
                                   (error "Context expects 2 values"
                                          _g29583_)))
                             (let ((_target2430324560_ (values-ref _g29582_ 0))
                                   (_tl2430524563_ (values-ref _g29582_ 1)))
                               (if (gx#stx-null? _tl2430524563_)
                                   (letrec ((_loop2430624566_
                                             (lambda (_hd2430424570_
                                                      _body2431024573_)
                                               (if (gx#stx-pair?
                                                    _hd2430424570_)
                                                   (let ((_e2430724576_
                                                          (gx#syntax-e
                                                           _hd2430424570_)))
                                                     (let ((_lp-hd2430824580_
                                                            (##car _e2430724576_))
                                                           (_lp-tl2430924583_
                                                            (##cdr _e2430724576_)))
                                                       (_loop2430624566_
                                                        _lp-tl2430924583_
                                                        (cons _lp-hd2430824580_
                                                              _body2431024573_))))
                                                   (let ((_body2431124586_
                                                          (reverse _body2431024573_)))
                                                     ((lambda (_L24590_
                                                               _L24592_
                                                               _L24593_
                                                               _L24594_)
                                                        (if (|gerbil/core::<match>[1]#match-pattern?|
                                                             _L24593_)
                                                            (cons _L24594_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons _L24593_ (cons _L24592_ '())) '())
                                (begin
                                  '#!void
                                  (foldr (lambda (_g2461624619_ _g2461724622_)
                                           (cons _g2461624619_ _g2461724622_))
                                         '()
                                         _L24590_))))
                    (_g2426824513_ _g2427024517_)))
              _body2431124586_
              _hd2430124554_
              _hd2429824544_
              _hd2429224524_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop2430624566_ _target2430324560_ '()))
                                   (_g2426824513_ _g2427024517_)))))
                         (_g2426824513_ _g2427024517_))
                     (_g2426824513_ _g2427024517_))
                 (_g2426824513_ _g2427024517_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2426824513_
                                                  _g2427024517_))))
                                         (_g2426824513_ _g2427024517_))))
                                 (_g2426824513_ _g2427024517_))))
                         (_g2426824513_ _g2427024517_)))))
              (let ((_g2426624707_
                     (lambda (_g2427024629_)
                       (if (gx#stx-pair? _g2427024629_)
                           (let ((_e2427224632_ (gx#syntax-e _g2427024629_)))
                             (let ((_hd2427324636_ (##car _e2427224632_))
                                   (_tl2427424639_ (##cdr _e2427224632_)))
                               (if (gx#stx-pair? _tl2427424639_)
                                   (let ((_e2427524642_
                                          (gx#syntax-e _tl2427424639_)))
                                     (let ((_hd2427624646_
                                            (##car _e2427524642_))
                                           (_tl2427724649_
                                            (##cdr _e2427524642_)))
                                       (if (gx#stx-null? _hd2427624646_)
                                           (if (gx#stx-pair/null?
                                                _tl2427724649_)
                                               (if (fx>= (gx#stx-length
                                                          _tl2427724649_)
                                                         '0)
                                                   (let ((_g29584_
                                                          (gx#syntax-split-splice
                                                           _tl2427724649_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29585_
                                                              (values-count
                                                               _g29584_)))
                                                         (if (not (fx= _g29585_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29585_)))
               (let ((_target2427824652_ (values-ref _g29584_ 0))
                     (_tl2428024655_ (values-ref _g29584_ 1)))
                 (if (gx#stx-null? _tl2428024655_)
                     (letrec ((_loop2428124658_
                               (lambda (_hd2427924662_ _body2428524665_)
                                 (if (gx#stx-pair? _hd2427924662_)
                                     (let ((_e2428224668_
                                            (gx#syntax-e _hd2427924662_)))
                                       (let ((_lp-hd2428324672_
                                              (##car _e2428224668_))
                                             (_lp-tl2428424675_
                                              (##cdr _e2428224668_)))
                                         (_loop2428124658_
                                          _lp-tl2428424675_
                                          (cons _lp-hd2428324672_
                                                _body2428524665_))))
                                     (let ((_body2428624678_
                                            (reverse _body2428524665_)))
                                       ((lambda (_L24682_)
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons '()
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2469824701_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2469924704_)
                         (cons _g2469824701_ _g2469924704_))
                       '()
                       _L24682_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body2428624678_))))))
                       (_loop2428124658_ _target2427824652_ '()))
                     (_g2426724625_ _g2427024629_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2426724625_
                                                    _g2427024629_))
                                               (_g2426724625_ _g2427024629_))
                                           (_g2426724625_ _g2427024629_))))
                                   (_g2426724625_ _g2427024629_))))
                           (_g2426724625_ _g2427024629_)))))
                (_g2426624707_ _$stx24263_)))))))
    (define |gerbil/core::<match>[:0:]#with*|
      (lambda (_$stx24715_)
        (let ((_g2472024772_
               (lambda (_g2472124768_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2472124768_))))
          (let ((_g2471924855_
                 (lambda (_g2472124776_)
                   (if (gx#stx-pair? _g2472124776_)
                       (let ((_e2475224779_ (gx#syntax-e _g2472124776_)))
                         (let ((_hd2475324783_ (##car _e2475224779_))
                               (_tl2475424786_ (##cdr _e2475224779_)))
                           (if (gx#stx-pair? _tl2475424786_)
                               (let ((_e2475524789_
                                      (gx#syntax-e _tl2475424786_)))
                                 (let ((_hd2475624793_ (##car _e2475524789_))
                                       (_tl2475724796_ (##cdr _e2475524789_)))
                                   (if (gx#stx-null? _hd2475624793_)
                                       (if (gx#stx-pair/null? _tl2475724796_)
                                           (if (fx>= (gx#stx-length
                                                      _tl2475724796_)
                                                     '0)
                                               (let ((_g29586_
                                                      (gx#syntax-split-splice
                                                       _tl2475724796_
                                                       '0)))
                                                 (begin
                                                   (let ((_g29587_
                                                          (values-count
                                                           _g29586_)))
                                                     (if (not (fx= _g29587_ 2))
                                                         (error "Context expects 2 values"
                                                                _g29587_)))
                                                   (let ((_target2475824799_
                                                          (values-ref
                                                           _g29586_
                                                           0))
                                                         (_tl2476024802_
                                                          (values-ref
                                                           _g29586_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl2476024802_)
                                                         (letrec ((_loop2476124805_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd2475924809_ _body2476524812_)
                             (if (gx#stx-pair? _hd2475924809_)
                                 (let ((_e2476224815_
                                        (gx#syntax-e _hd2475924809_)))
                                   (let ((_lp-hd2476324819_
                                          (##car _e2476224815_))
                                         (_lp-tl2476424822_
                                          (##cdr _e2476224815_)))
                                     (_loop2476124805_
                                      _lp-tl2476424822_
                                      (cons _lp-hd2476324819_
                                            _body2476524812_))))
                                 (let ((_body2476624825_
                                        (reverse _body2476524812_)))
                                   ((lambda (_L24829_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g2484624849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2484724852_)
                     (cons _g2484624849_ _g2484724852_))
                   '()
                   _L24829_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _body2476624825_))))))
                   (_loop2476124805_ _target2475824799_ '()))
                 (_g2472024772_ _g2472124776_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2472024772_ _g2472124776_))
                                           (_g2472024772_ _g2472124776_))
                                       (_g2472024772_ _g2472124776_))))
                               (_g2472024772_ _g2472124776_))))
                       (_g2472024772_ _g2472124776_)))))
            (let ((_g2471824981_
                   (lambda (_g2472124859_)
                     (if (gx#stx-pair? _g2472124859_)
                         (let ((_e2472724862_ (gx#syntax-e _g2472124859_)))
                           (let ((_hd2472824866_ (##car _e2472724862_))
                                 (_tl2472924869_ (##cdr _e2472724862_)))
                             (if (gx#stx-pair? _tl2472924869_)
                                 (let ((_e2473024872_
                                        (gx#syntax-e _tl2472924869_)))
                                   (let ((_hd2473124876_ (##car _e2473024872_))
                                         (_tl2473224879_
                                          (##cdr _e2473024872_)))
                                     (if (gx#stx-pair? _hd2473124876_)
                                         (let ((_e2473324882_
                                                (gx#syntax-e _hd2473124876_)))
                                           (let ((_hd2473424886_
                                                  (##car _e2473324882_))
                                                 (_tl2473524889_
                                                  (##cdr _e2473324882_)))
                                             (if (gx#stx-pair? _hd2473424886_)
                                                 (let ((_e2473624892_
                                                        (gx#syntax-e
                                                         _hd2473424886_)))
                                                   (let ((_hd2473724896_
                                                          (##car _e2473624892_))
                                                         (_tl2473824899_
                                                          (##cdr _e2473624892_)))
                                                     (if (gx#stx-pair?
                                                          _tl2473824899_)
                                                         (let ((_e2473924902_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2473824899_)))
                   (let ((_hd2474024906_ (##car _e2473924902_))
                         (_tl2474124909_ (##cdr _e2473924902_)))
                     (if (gx#stx-null? _tl2474124909_)
                         (if (gx#stx-pair/null? _tl2473224879_)
                             (if (fx>= (gx#stx-length _tl2473224879_) '0)
                                 (let ((_g29588_
                                        (gx#syntax-split-splice
                                         _tl2473224879_
                                         '0)))
                                   (begin
                                     (let ((_g29589_ (values-count _g29588_)))
                                       (if (not (fx= _g29589_ 2))
                                           (error "Context expects 2 values"
                                                  _g29589_)))
                                     (let ((_target2474224912_
                                            (values-ref _g29588_ 0))
                                           (_tl2474424915_
                                            (values-ref _g29588_ 1)))
                                       (if (gx#stx-null? _tl2474424915_)
                                           (letrec ((_loop2474524918_
                                                     (lambda (_hd2474324922_
                                                              _body2474924925_)
                                                       (if (gx#stx-pair?
                                                            _hd2474324922_)
                                                           (let ((_e2474624928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd2474324922_)))
                     (let ((_lp-hd2474724932_ (##car _e2474624928_))
                           (_lp-tl2474824935_ (##cdr _e2474624928_)))
                       (_loop2474524918_
                        _lp-tl2474824935_
                        (cons _lp-hd2474724932_ _body2474924925_))))
                   (let ((_body2475024938_ (reverse _body2474924925_)))
                     ((lambda (_L24942_ _L24944_ _L24945_ _L24946_ _L24947_)
                        (cons (gx#datum->syntax '#f 'with)
                              (cons (cons (cons _L24946_ (cons _L24945_ '()))
                                          '())
                                    (cons (cons _L24947_
                                                (cons _L24944_
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2497224975_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2497324978_)
                         (cons _g2497224975_ _g2497324978_))
                       '()
                       _L24942_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))))
                      _body2475024938_
                      _tl2473524889_
                      _hd2474024906_
                      _hd2473724896_
                      _hd2472824866_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop2474524918_
                                              _target2474224912_
                                              '()))
                                           (_g2471924855_ _g2472124859_)))))
                                 (_g2471924855_ _g2472124859_))
                             (_g2471924855_ _g2472124859_))
                         (_g2471924855_ _g2472124859_))))
                 (_g2471924855_ _g2472124859_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2471924855_
                                                  _g2472124859_))))
                                         (_g2471924855_ _g2472124859_))))
                                 (_g2471924855_ _g2472124859_))))
                         (_g2471924855_ _g2472124859_)))))
              (_g2471824981_ _$stx24715_))))))
    (define |gerbil/core::<match>[:0:]#?|
      (lambda (_$stx24987_)
        (let ((_g2499825142_
               (lambda (_g2499925138_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2499925138_))))
          (let ((_g2499725237_
                 (lambda (_g2499925146_)
                   (if (gx#stx-pair? _g2499925146_)
                       (let ((_e2511925149_ (gx#syntax-e _g2499925146_)))
                         (let ((_hd2512025153_ (##car _e2511925149_))
                               (_tl2512125156_ (##cdr _e2511925149_)))
                           (if (gx#stx-pair? _tl2512125156_)
                               (let ((_e2512225159_
                                      (gx#syntax-e _tl2512125156_)))
                                 (let ((_hd2512325163_ (##car _e2512225159_))
                                       (_tl2512425166_ (##cdr _e2512225159_)))
                                   (if (gx#stx-pair? _tl2512425166_)
                                       (let ((_e2512525169_
                                              (gx#syntax-e _tl2512425166_)))
                                         (let ((_hd2512625173_
                                                (##car _e2512525169_))
                                               (_tl2512725176_
                                                (##cdr _e2512525169_)))
                                           (if (gx#stx-datum? _hd2512625173_)
                                               (if (equal? (gx#stx-e
                                                            _hd2512625173_)
                                                           '::)
                                                   (if (gx#stx-pair?
                                                        _tl2512725176_)
                                                       (let ((_e2512825179_
                                                              (gx#syntax-e
                                                               _tl2512725176_)))
                                                         (let ((_hd2512925183_
                                                                (##car _e2512825179_))
                                                               (_tl2513025186_
                                                                (##cdr _e2512825179_)))
                                                           (if (gx#stx-pair?
                                                                _tl2513025186_)
                                                               (let ((_e2513125189_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2513025186_)))
                         (let ((_hd2513225193_ (##car _e2513125189_))
                               (_tl2513325196_ (##cdr _e2513125189_)))
                           (if (gx#identifier? _hd2513225193_)
                               (if (gx#free-identifier=?
                                    |gerbil/core::<match>[1]#_g29590_|
                                    _hd2513225193_)
                                   (if (gx#stx-pair? _tl2513325196_)
                                       (let ((_e2513425199_
                                              (gx#syntax-e _tl2513325196_)))
                                         (let ((_hd2513525203_
                                                (##car _e2513425199_))
                                               (_tl2513625206_
                                                (##cdr _e2513425199_)))
                                           (if (gx#stx-null? _tl2513625206_)
                                               ((lambda (_L25209_
                                                         _L25211_
                                                         _L25212_
                                                         _L25213_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$obj)
                            '())
                      (cons (cons (gx#datum->syntax '#f 'and)
                                  (cons (cons _L25213_
                                              (cons _L25212_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '$obj)
                                                          '())))
                                        (cons (cons _L25209_
                                                    (cons (cons _L25211_
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
                                                _hd2513525203_
                                                _hd2512925183_
                                                _hd2512325163_
                                                _hd2512025153_)
                                               (_g2499825142_ _g2499925146_))))
                                       (_g2499825142_ _g2499925146_))
                                   (_g2499825142_ _g2499925146_))
                               (_g2499825142_ _g2499925146_))))
                       (_g2499825142_ _g2499925146_))))
               (_g2499825142_ _g2499925146_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2499825142_
                                                    _g2499925146_))
                                               (_g2499825142_ _g2499925146_))))
                                       (_g2499825142_ _g2499925146_))))
                               (_g2499825142_ _g2499925146_))))
                       (_g2499825142_ _g2499925146_)))))
            (let ((_g2499625305_
                   (lambda (_g2499925241_)
                     (if (gx#stx-pair? _g2499925241_)
                         (let ((_e2510325244_ (gx#syntax-e _g2499925241_)))
                           (let ((_hd2510425248_ (##car _e2510325244_))
                                 (_tl2510525251_ (##cdr _e2510325244_)))
                             (if (gx#stx-pair? _tl2510525251_)
                                 (let ((_e2510625254_
                                        (gx#syntax-e _tl2510525251_)))
                                   (let ((_hd2510725258_ (##car _e2510625254_))
                                         (_tl2510825261_
                                          (##cdr _e2510625254_)))
                                     (if (gx#stx-pair? _tl2510825261_)
                                         (let ((_e2510925264_
                                                (gx#syntax-e _tl2510825261_)))
                                           (let ((_hd2511025268_
                                                  (##car _e2510925264_))
                                                 (_tl2511125271_
                                                  (##cdr _e2510925264_)))
                                             (if (gx#stx-datum? _hd2511025268_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2511025268_)
                                                             '::)
                                                     (if (gx#stx-pair?
                                                          _tl2511125271_)
                                                         (let ((_e2511225274_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2511125271_)))
                   (let ((_hd2511325278_ (##car _e2511225274_))
                         (_tl2511425281_ (##cdr _e2511225274_)))
                     (if (gx#stx-null? _tl2511425281_)
                         ((lambda (_L25284_ _L25286_ _L25287_)
                            (cons (gx#datum->syntax '#f 'lambda)
                                  (cons (cons (gx#datum->syntax '#f '$obj) '())
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'alet)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$val)
                        (cons (cons _L25287_
                                    (cons _L25286_
                                          (cons (gx#datum->syntax '#f '$obj)
                                                '())))
                              '()))
                  (cons (cons _L25284_ (cons (gx#datum->syntax '#f '$val) '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          _hd2511325278_
                          _hd2510725258_
                          _hd2510425248_)
                         (_g2499725237_ _g2499925241_))))
                 (_g2499725237_ _g2499925241_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2499725237_
                                                      _g2499925241_))
                                                 (_g2499725237_
                                                  _g2499925241_))))
                                         (_g2499725237_ _g2499925241_))))
                                 (_g2499725237_ _g2499925241_))))
                         (_g2499725237_ _g2499925241_)))))
              (let ((_g2499525373_
                     (lambda (_g2499925309_)
                       (if (gx#stx-pair? _g2499925309_)
                           (let ((_e2508825312_ (gx#syntax-e _g2499925309_)))
                             (let ((_hd2508925316_ (##car _e2508825312_))
                                   (_tl2509025319_ (##cdr _e2508825312_)))
                               (if (gx#stx-pair? _tl2509025319_)
                                   (let ((_e2509125322_
                                          (gx#syntax-e _tl2509025319_)))
                                     (let ((_hd2509225326_
                                            (##car _e2509125322_))
                                           (_tl2509325329_
                                            (##cdr _e2509125322_)))
                                       (if (gx#stx-pair? _tl2509325329_)
                                           (let ((_e2509425332_
                                                  (gx#syntax-e
                                                   _tl2509325329_)))
                                             (let ((_hd2509525336_
                                                    (##car _e2509425332_))
                                                   (_tl2509625339_
                                                    (##cdr _e2509425332_)))
                                               (if (gx#identifier?
                                                    _hd2509525336_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core::<match>[1]#_g29591_|
                                                        _hd2509525336_)
                                                       (if (gx#stx-pair?
                                                            _tl2509625339_)
                                                           (let ((_e2509725342_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl2509625339_)))
                     (let ((_hd2509825346_ (##car _e2509725342_))
                           (_tl2509925349_ (##cdr _e2509725342_)))
                       (if (gx#stx-null? _tl2509925349_)
                           ((lambda (_L25352_ _L25354_ _L25355_)
                              (cons (gx#datum->syntax '#f 'lambda)
                                    (cons (cons (gx#datum->syntax '#f '$obj)
                                                '())
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'and)
                                                      (cons (cons _L25355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L25354_
                                (cons (gx#datum->syntax '#f '$obj) '())))
                    (cons (cons _L25352_
                                (cons (gx#datum->syntax '#f '$obj) '()))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                            _hd2509825346_
                            _hd2509225326_
                            _hd2508925316_)
                           (_g2499625305_ _g2499925309_))))
                   (_g2499625305_ _g2499925309_))
               (_g2499625305_ _g2499925309_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2499625305_
                                                    _g2499925309_))))
                                           (_g2499625305_ _g2499925309_))))
                                   (_g2499625305_ _g2499925309_))))
                           (_g2499625305_ _g2499925309_)))))
                (let ((_g2499425415_
                       (lambda (_g2499925377_)
                         (if (gx#stx-pair? _g2499925377_)
                             (let ((_e2507925380_ (gx#syntax-e _g2499925377_)))
                               (let ((_hd2508025384_ (##car _e2507925380_))
                                     (_tl2508125387_ (##cdr _e2507925380_)))
                                 (if (gx#stx-pair? _tl2508125387_)
                                     (let ((_e2508225390_
                                            (gx#syntax-e _tl2508125387_)))
                                       (let ((_hd2508325394_
                                              (##car _e2508225390_))
                                             (_tl2508425397_
                                              (##cdr _e2508225390_)))
                                         (if (gx#stx-null? _tl2508425397_)
                                             ((lambda (_L25400_ _L25402_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '$obj)
                          '())
                    (cons (cons _L25402_
                                (cons _L25400_
                                      (cons (gx#datum->syntax '#f '$obj) '())))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd2508325394_
                                              _hd2508025384_)
                                             (_g2499525373_ _g2499925377_))))
                                     (_g2499525373_ _g2499925377_))))
                             (_g2499525373_ _g2499925377_)))))
                  (let ((_g2499325469_
                         (lambda (_g2499925419_)
                           (if (gx#stx-pair? _g2499925419_)
                               (let ((_e2506825422_
                                      (gx#syntax-e _g2499925419_)))
                                 (let ((_hd2506925426_ (##car _e2506825422_))
                                       (_tl2507025429_ (##cdr _e2506825422_)))
                                   (if (gx#stx-pair? _tl2507025429_)
                                       (let ((_e2507125432_
                                              (gx#syntax-e _tl2507025429_)))
                                         (let ((_hd2507225436_
                                                (##car _e2507125432_))
                                               (_tl2507325439_
                                                (##cdr _e2507125432_)))
                                           (if (gx#stx-pair? _tl2507325439_)
                                               (let ((_e2507425442_
                                                      (gx#syntax-e
                                                       _tl2507325439_)))
                                                 (let ((_hd2507525446_
                                                        (##car _e2507425442_))
                                                       (_tl2507625449_
                                                        (##cdr _e2507425442_)))
                                                   (if (gx#stx-null?
                                                        _tl2507625449_)
                                                       ((lambda (_L25452_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L25454_)
                  (cons _L25454_ (cons _L25452_ '())))
                _hd2507525446_
                _hd2507225436_)
               (_g2499425415_ _g2499925419_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2499425415_ _g2499925419_))))
                                       (_g2499425415_ _g2499925419_))))
                               (_g2499425415_ _g2499925419_)))))
                    (let ((_g2499225549_
                           (lambda (_g2499925473_)
                             (if (gx#stx-pair? _g2499925473_)
                                 (let ((_e2505125476_
                                        (gx#syntax-e _g2499925473_)))
                                   (let ((_hd2505225480_ (##car _e2505125476_))
                                         (_tl2505325483_
                                          (##cdr _e2505125476_)))
                                     (if (gx#stx-pair? _tl2505325483_)
                                         (let ((_e2505425486_
                                                (gx#syntax-e _tl2505325483_)))
                                           (let ((_hd2505525490_
                                                  (##car _e2505425486_))
                                                 (_tl2505625493_
                                                  (##cdr _e2505425486_)))
                                             (if (gx#stx-pair? _hd2505525490_)
                                                 (let ((_e2505725496_
                                                        (gx#syntax-e
                                                         _hd2505525490_)))
                                                   (let ((_hd2505825500_
                                                          (##car _e2505725496_))
                                                         (_tl2505925503_
                                                          (##cdr _e2505725496_)))
                                                     (if (gx#identifier?
                                                          _hd2505825500_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core::<match>[1]#_g29592_|
                                                              _hd2505825500_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2505925503_)
                         (let ((_e2506025506_ (gx#syntax-e _tl2505925503_)))
                           (let ((_hd2506125510_ (##car _e2506025506_))
                                 (_tl2506225513_ (##cdr _e2506025506_)))
                             (if (gx#stx-null? _tl2506225513_)
                                 (if (gx#stx-pair? _tl2505625493_)
                                     (let ((_e2506325516_
                                            (gx#syntax-e _tl2505625493_)))
                                       (let ((_hd2506425520_
                                              (##car _e2506325516_))
                                             (_tl2506525523_
                                              (##cdr _e2506325516_)))
                                         (if (gx#stx-null? _tl2506525523_)
                                             ((lambda (_L25526_
                                                       _L25528_
                                                       _L25529_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'not)
                                                      (cons (cons _L25529_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L25528_ (cons _L25526_ '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd2506425520_
                                              _hd2506125510_
                                              _hd2505225480_)
                                             (_g2499325469_ _g2499925473_))))
                                     (_g2499325469_ _g2499925473_))
                                 (_g2499325469_ _g2499925473_))))
                         (_g2499325469_ _g2499925473_))
                     (_g2499325469_ _g2499925473_))
                 (_g2499325469_ _g2499925473_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2499325469_
                                                  _g2499925473_))))
                                         (_g2499325469_ _g2499925473_))))
                                 (_g2499325469_ _g2499925473_)))))
                      (let ((_g2499125659_
                             (lambda (_g2499925553_)
                               (if (gx#stx-pair? _g2499925553_)
                                   (let ((_e2502725556_
                                          (gx#syntax-e _g2499925553_)))
                                     (let ((_hd2502825560_
                                            (##car _e2502725556_))
                                           (_tl2502925563_
                                            (##cdr _e2502725556_)))
                                       (if (gx#stx-pair? _tl2502925563_)
                                           (let ((_e2503025566_
                                                  (gx#syntax-e
                                                   _tl2502925563_)))
                                             (let ((_hd2503125570_
                                                    (##car _e2503025566_))
                                                   (_tl2503225573_
                                                    (##cdr _e2503025566_)))
                                               (if (gx#stx-pair?
                                                    _hd2503125570_)
                                                   (let ((_e2503325576_
                                                          (gx#syntax-e
                                                           _hd2503125570_)))
                                                     (let ((_hd2503425580_
                                                            (##car _e2503325576_))
                                                           (_tl2503525583_
                                                            (##cdr _e2503325576_)))
                                                       (if (gx#identifier?
                                                            _hd2503425580_)
                                                           (if (gx#free-identifier=?
                                                                |gerbil/core::<match>[1]#_g29593_|
                                                                _hd2503425580_)
                                                               (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl2503525583_)
                           (if (fx>= (gx#stx-length _tl2503525583_) '0)
                               (let ((_g29594_
                                      (gx#syntax-split-splice
                                       _tl2503525583_
                                       '0)))
                                 (begin
                                   (let ((_g29595_ (values-count _g29594_)))
                                     (if (not (fx= _g29595_ 2))
                                         (error "Context expects 2 values"
                                                _g29595_)))
                                   (let ((_target2503625586_
                                          (values-ref _g29594_ 0))
                                         (_tl2503825589_
                                          (values-ref _g29594_ 1)))
                                     (if (gx#stx-null? _tl2503825589_)
                                         (letrec ((_loop2503925592_
                                                   (lambda (_hd2503725596_
                                                            _pred2504325599_)
                                                     (if (gx#stx-pair?
                                                          _hd2503725596_)
                                                         (let ((_e2504025602_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2503725596_)))
                   (let ((_lp-hd2504125606_ (##car _e2504025602_))
                         (_lp-tl2504225609_ (##cdr _e2504025602_)))
                     (_loop2503925592_
                      _lp-tl2504225609_
                      (cons _lp-hd2504125606_ _pred2504325599_))))
                 (let ((_pred2504425612_ (reverse _pred2504325599_)))
                   (if (gx#stx-pair? _tl2503225573_)
                       (let ((_e2504525616_ (gx#syntax-e _tl2503225573_)))
                         (let ((_hd2504625620_ (##car _e2504525616_))
                               (_tl2504725623_ (##cdr _e2504525616_)))
                           (if (gx#stx-null? _tl2504725623_)
                               ((lambda (_L25626_ _L25628_ _L25629_)
                                  (cons (gx#datum->syntax '#f 'or)
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g2565025653_
                                                          _g2565125656_)
                                                   (cons (cons _L25629_
                                                               (cons _g2565025653_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L25626_ '())))
                 _g2565125656_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L25628_))))
                                _hd2504625620_
                                _pred2504425612_
                                _hd2502825560_)
                               (_g2499225549_ _g2499925553_))))
                       (_g2499225549_ _g2499925553_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop2503925592_
                                            _target2503625586_
                                            '()))
                                         (_g2499225549_ _g2499925553_)))))
                               (_g2499225549_ _g2499925553_))
                           (_g2499225549_ _g2499925553_))
                       (_g2499225549_ _g2499925553_))
                   (_g2499225549_ _g2499925553_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2499225549_
                                                    _g2499925553_))))
                                           (_g2499225549_ _g2499925553_))))
                                   (_g2499225549_ _g2499925553_)))))
                        (let ((_g2499025769_
                               (lambda (_g2499925663_)
                                 (if (gx#stx-pair? _g2499925663_)
                                     (let ((_e2500325666_
                                            (gx#syntax-e _g2499925663_)))
                                       (let ((_hd2500425670_
                                              (##car _e2500325666_))
                                             (_tl2500525673_
                                              (##cdr _e2500325666_)))
                                         (if (gx#stx-pair? _tl2500525673_)
                                             (let ((_e2500625676_
                                                    (gx#syntax-e
                                                     _tl2500525673_)))
                                               (let ((_hd2500725680_
                                                      (##car _e2500625676_))
                                                     (_tl2500825683_
                                                      (##cdr _e2500625676_)))
                                                 (if (gx#stx-pair?
                                                      _hd2500725680_)
                                                     (let ((_e2500925686_
                                                            (gx#syntax-e
                                                             _hd2500725680_)))
                                                       (let ((_hd2501025690_
                                                              (##car _e2500925686_))
                                                             (_tl2501125693_
                                                              (##cdr _e2500925686_)))
                                                         (if (gx#identifier?
                                                              _hd2501025690_)
                                                             (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          |gerbil/core::<match>[1]#_g29596_|
                          _hd2501025690_)
                         (if (gx#stx-pair/null? _tl2501125693_)
                             (if (fx>= (gx#stx-length _tl2501125693_) '0)
                                 (let ((_g29597_
                                        (gx#syntax-split-splice
                                         _tl2501125693_
                                         '0)))
                                   (begin
                                     (let ((_g29598_ (values-count _g29597_)))
                                       (if (not (fx= _g29598_ 2))
                                           (error "Context expects 2 values"
                                                  _g29598_)))
                                     (let ((_target2501225696_
                                            (values-ref _g29597_ 0))
                                           (_tl2501425699_
                                            (values-ref _g29597_ 1)))
                                       (if (gx#stx-null? _tl2501425699_)
                                           (letrec ((_loop2501525702_
                                                     (lambda (_hd2501325706_
                                                              _pred2501925709_)
                                                       (if (gx#stx-pair?
                                                            _hd2501325706_)
                                                           (let ((_e2501625712_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd2501325706_)))
                     (let ((_lp-hd2501725716_ (##car _e2501625712_))
                           (_lp-tl2501825719_ (##cdr _e2501625712_)))
                       (_loop2501525702_
                        _lp-tl2501825719_
                        (cons _lp-hd2501725716_ _pred2501925709_))))
                   (let ((_pred2502025722_ (reverse _pred2501925709_)))
                     (if (gx#stx-pair? _tl2500825683_)
                         (let ((_e2502125726_ (gx#syntax-e _tl2500825683_)))
                           (let ((_hd2502225730_ (##car _e2502125726_))
                                 (_tl2502325733_ (##cdr _e2502125726_)))
                             (if (gx#stx-null? _tl2502325733_)
                                 ((lambda (_L25736_ _L25738_ _L25739_)
                                    (cons (gx#datum->syntax '#f 'and)
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2576025763_
                                                            _g2576125766_)
                                                     (cons (cons _L25739_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _g2576025763_ (cons _L25736_ '())))
                   _g2576125766_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _L25738_))))
                                  _hd2502225730_
                                  _pred2502025722_
                                  _hd2500425670_)
                                 (_g2499125659_ _g2499925663_))))
                         (_g2499125659_ _g2499925663_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop2501525702_
                                              _target2501225696_
                                              '()))
                                           (_g2499125659_ _g2499925663_)))))
                                 (_g2499125659_ _g2499925663_))
                             (_g2499125659_ _g2499925663_))
                         (_g2499125659_ _g2499925663_))
                     (_g2499125659_ _g2499925663_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2499125659_
                                                      _g2499925663_))))
                                             (_g2499125659_ _g2499925663_))))
                                     (_g2499125659_ _g2499925663_)))))
                          (_g2499025769_ _$stx24987_))))))))))))
    (define |gerbil/core::<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx25775_)
        (let ((_g2578025814_
               (lambda (_g2578125810_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2578125810_))))
          (let ((_g2577925871_
                 (lambda (_g2578125818_)
                   (if (gx#stx-pair? _g2578125818_)
                       (let ((_e2580025821_ (gx#syntax-e _g2578125818_)))
                         (let ((_hd2580125825_ (##car _e2580025821_))
                               (_tl2580225828_ (##cdr _e2580025821_)))
                           (if (gx#stx-pair? _tl2580225828_)
                               (let ((_e2580325831_
                                      (gx#syntax-e _tl2580225828_)))
                                 (let ((_hd2580425835_ (##car _e2580325831_))
                                       (_tl2580525838_ (##cdr _e2580325831_)))
                                   (if (gx#stx-pair? _tl2580525838_)
                                       (let ((_e2580625841_
                                              (gx#syntax-e _tl2580525838_)))
                                         (let ((_hd2580725845_
                                                (##car _e2580625841_))
                                               (_tl2580825848_
                                                (##cdr _e2580625841_)))
                                           (if (gx#stx-null? _tl2580825848_)
                                               ((lambda (_L25851_
                                                         _L25853_
                                                         _L25854_)
                                                  (cons _L25854_
                                                        (cons _L25853_
                                                              (cons _L25851_
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
                                                _hd2580725845_
                                                _hd2580425835_
                                                _hd2580125825_)
                                               (_g2578025814_ _g2578125818_))))
                                       (_g2578025814_ _g2578125818_))))
                               (_g2578025814_ _g2578125818_))))
                       (_g2578025814_ _g2578125818_)))))
            (let ((_g2577825939_
                   (lambda (_g2578125875_)
                     (if (gx#stx-pair? _g2578125875_)
                         (let ((_e2578525878_ (gx#syntax-e _g2578125875_)))
                           (let ((_hd2578625882_ (##car _e2578525878_))
                                 (_tl2578725885_ (##cdr _e2578525878_)))
                             (if (gx#stx-pair? _tl2578725885_)
                                 (let ((_e2578825888_
                                        (gx#syntax-e _tl2578725885_)))
                                   (let ((_hd2578925892_ (##car _e2578825888_))
                                         (_tl2579025895_
                                          (##cdr _e2578825888_)))
                                     (if (gx#stx-pair? _tl2579025895_)
                                         (let ((_e2579125898_
                                                (gx#syntax-e _tl2579025895_)))
                                           (let ((_hd2579225902_
                                                  (##car _e2579125898_))
                                                 (_tl2579325905_
                                                  (##cdr _e2579125898_)))
                                             (if (gx#stx-pair? _tl2579325905_)
                                                 (let ((_e2579425908_
                                                        (gx#syntax-e
                                                         _tl2579325905_)))
                                                   (let ((_hd2579525912_
                                                          (##car _e2579425908_))
                                                         (_tl2579625915_
                                                          (##cdr _e2579425908_)))
                                                     (if (gx#stx-null?
                                                          _tl2579625915_)
                                                         ((lambda (_L25918_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L25920_
                           _L25921_)
                    (if (gx#identifier? _L25921_)
                        (cons (gx#datum->syntax '#f 'defsyntax)
                              (cons _L25921_
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'make-match-macro)
                                                (cons 'macro:
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let)
                          (cons (cons (cons (gx#datum->syntax '#f '$match-e)
                                            (cons _L25920_ '()))
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '$macro-e)
                                                  (cons _L25918_ '()))
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
                        (_g2577925871_ _g2578125875_)))
                  _hd2579525912_
                  _hd2579225902_
                  _hd2578925892_)
                 (_g2577925871_ _g2578125875_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2577925871_
                                                  _g2578125875_))))
                                         (_g2577925871_ _g2578125875_))))
                                 (_g2577925871_ _g2578125875_))))
                         (_g2577925871_ _g2578125875_)))))
              (_g2577825939_ _$stx25775_))))))
    (define |gerbil/core::<match>[:0:]#defrules-for-match|
      (lambda (_$stx25943_)
        (let ((_g2594725962_
               (lambda (_g2594825958_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2594825958_))))
          (let ((_g2594626005_
                 (lambda (_g2594825966_)
                   (if (gx#stx-pair? _g2594825966_)
                       (let ((_e2595125969_ (gx#syntax-e _g2594825966_)))
                         (let ((_hd2595225973_ (##car _e2595125969_))
                               (_tl2595325976_ (##cdr _e2595125969_)))
                           (if (gx#stx-pair? _tl2595325976_)
                               (let ((_e2595425979_
                                      (gx#syntax-e _tl2595325976_)))
                                 (let ((_hd2595525983_ (##car _e2595425979_))
                                       (_tl2595625986_ (##cdr _e2595425979_)))
                                   ((lambda (_L25989_ _L25991_)
                                      (cons (gx#datum->syntax
                                             '#f
                                             'defsyntax-for-match)
                                            (cons _L25991_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'syntax-rules)
                                                              _L25989_)
                                                        '()))))
                                    _tl2595625986_
                                    _hd2595525983_)))
                               (_g2594725962_ _g2594825966_))))
                       (_g2594725962_ _g2594825966_)))))
            (_g2594626005_ _$stx25943_)))))))
