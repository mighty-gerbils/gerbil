(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<match>[1]#_g29537_|
    (gx#core-quote-syntax 'quasiquote))
  (define |gerbil/core::<match>[1]#_g29538_| (gx#core-quote-syntax 'quote))
  (define |gerbil/core::<match>[1]#_g29541_| (gx#core-quote-syntax 'vector))
  (define |gerbil/core::<match>[1]#_g29542_| (gx#core-quote-syntax 'values))
  (define |gerbil/core::<match>[1]#_g29543_| (gx#core-quote-syntax 'values))
  (define |gerbil/core::<match>[1]#_g29544_| (gx#core-quote-syntax 'box))
  (define |gerbil/core::<match>[1]#_g29545_| (gx#core-quote-syntax '@list))
  (define |gerbil/core::<match>[1]#_g29546_| (gx#core-quote-syntax 'cons*))
  (define |gerbil/core::<match>[1]#_g29547_| (gx#core-quote-syntax 'cons))
  (define |gerbil/core::<match>[1]#_g29548_| (gx#core-quote-syntax 'not))
  (define |gerbil/core::<match>[1]#_g29549_| (gx#core-quote-syntax 'or))
  (define |gerbil/core::<match>[1]#_g29550_| (gx#core-quote-syntax 'and))
  (define |gerbil/core::<match>[1]#_g29551_| (gx#core-quote-syntax '?))
  (define |gerbil/core::<match>[1]#_g29552_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g29553_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g29566_| (gx#core-quote-syntax 'else))
  (define |gerbil/core::<match>[1]#_g29567_| (gx#core-quote-syntax 'else))
  (define |gerbil/core::<match>[1]#_g29568_| (gx#core-quote-syntax '<...>))
  (define |gerbil/core::<match>[1]#_g29569_| (gx#core-quote-syntax '<>))
  (define |gerbil/core::<match>[1]#_g29586_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g29587_| (gx#core-quote-syntax '=>))
  (define |gerbil/core::<match>[1]#_g29588_| (gx#core-quote-syntax 'not))
  (define |gerbil/core::<match>[1]#_g29589_| (gx#core-quote-syntax 'or))
  (define |gerbil/core::<match>[1]#_g29592_| (gx#core-quote-syntax 'and))
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
      (lambda _$args23646_
        (apply make-class-instance
               |gerbil/core::<match>[1]#match-macro::t|
               _$args23646_)))
    (define |gerbil/core::<match>[1]#syntax-local-match-macro?|
      (lambda (_stx23643_)
        (if (gx#identifier? _stx23643_)
            (|gerbil/core::<match>[1]#match-macro?|
             (gx#syntax-local-value _stx23643_ false))
            '#f)))
    (define |gerbil/core::<match>[1]#parse-match-pattern|
      (let ((_opt-lambda2202523629_
             (lambda (_stx22027_ _match-stx22029_)
               (let ((_parse-qq22037_
                      (lambda (_hd22043_)
                        (let ((_g2204522052_
                               (lambda (_g2204622048_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2204622048_))))
                          (_g2204522052_ _hd22043_)))))
                 (let ((_parse-error22038_
                        (lambda (_hd22040_)
                          (apply gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; illegal pattern"
                                 (if _match-stx22029_
                                     (cons _match-stx22029_
                                           (cons _stx22027_
                                                 (cons _hd22040_ '())))
                                     (cons _stx22027_
                                           (cons _hd22040_ '())))))))
                   (letrec ((_parse122031_
                             (lambda (_hd22378_)
                               (let ((_g2240322534_
                                      (lambda (_g2240422530_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g2240422530_))))
                                 (let ((_g2240222545_
                                        (lambda (_g2240422538_)
                                          ((lambda ()
                                             (_parse-error22038_
                                              _hd22378_))))))
                                   (let ((_g2240122563_
                                          (lambda (_g2240422549_)
                                            ((lambda (_L22552_)
                                               (if (gx#stx-datum? _L22552_)
                                                   (cons 'datum:
                                                         (cons (gx#stx-e
                                                                _L22552_)
                                                               '()))
                                                   (_g2240222545_
                                                    _g2240422549_)))
                                             _g2240422549_))))
                                     (let ((_g2240022579_
                                            (lambda (_g2240422567_)
                                              ((lambda (_L22570_)
                                                 (if (if (gx#identifier?
                                                          _L22570_)
                                                         (not (gx#ellipsis?
                                                               _L22570_))
                                                         '#f)
                                                     (cons 'var:
                                                           (cons _L22570_ '()))
                                                     (_g2240122563_
                                                      _g2240422567_)))
                                               _g2240422567_))))
                                       (let ((_g2239922595_
                                              (lambda (_g2240422583_)
                                                ((lambda (_L22586_)
                                                   (if (gx#underscore?
                                                        _L22586_)
                                                       (cons 'any: '())
                                                       (_g2240022579_
                                                        _g2240422583_)))
                                                 _g2240422583_))))
                                         (let ((_g2239822627_
                                                (lambda (_g2240422599_)
                                                  (if (gx#stx-pair?
                                                       _g2240422599_)
                                                      (let ((_e2252322602_
                                                             (gx#syntax-e
                                                              _g2240422599_)))
                                                        (let ((_hd2252422606_
                                                               (##car _e2252322602_))
                                                              (_tl2252522609_
                                                               (##cdr _e2252322602_)))
                                                          ((lambda (_L22612_)
                                                             (if (|gerbil/core::<match>[1]#syntax-local-match-macro?|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L22612_)
                         (_parse122031_
                          (gx#core-apply-expander
                           (gx#syntax-local-e _L22612_)
                           (gx#stx-wrap-source
                            (cons 'match: _hd22378_)
                            (let ((_$e22623_ (gx#stx-source _hd22378_)))
                              (if _$e22623_
                                  _$e22623_
                                  (gx#stx-source _stx22027_))))))
                         (_g2239922595_ _g2240422599_)))
                   _hd2252422606_)))
              (_g2239922595_ _g2240422599_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_g2239722667_
                                                  (lambda (_g2240422631_)
                                                    (if (gx#stx-pair?
                                                         _g2240422631_)
                                                        (let ((_e2251622634_
                                                               (gx#syntax-e
                                                                _g2240422631_)))
                                                          (let ((_hd2251722638_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2251622634_))
                        (_tl2251822641_ (##cdr _e2251622634_)))
                    (if (gx#identifier? _hd2251722638_)
                        (if (gx#free-identifier=?
                             |gerbil/core::<match>[1]#_g29537_|
                             _hd2251722638_)
                            (if (gx#stx-pair? _tl2251822641_)
                                (let ((_e2251922644_
                                       (gx#syntax-e _tl2251822641_)))
                                  (let ((_hd2252022648_ (##car _e2251922644_))
                                        (_tl2252122651_ (##cdr _e2251922644_)))
                                    (if (gx#stx-null? _tl2252122651_)
                                        ((lambda (_L22654_)
                                           (_parse-qq22037_ _L22654_))
                                         _hd2252022648_)
                                        (_g2239822627_ _g2240422631_))))
                                (_g2239822627_ _g2240422631_))
                            (_g2239822627_ _g2240422631_))
                        (_g2239822627_ _g2240422631_))))
                (_g2239822627_ _g2240422631_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_g2239622707_
                                                    (lambda (_g2240422671_)
                                                      (if (gx#stx-pair?
                                                           _g2240422671_)
                                                          (let ((_e2250922674_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _g2240422671_)))
                    (let ((_hd2251022678_ (##car _e2250922674_))
                          (_tl2251122681_ (##cdr _e2250922674_)))
                      (if (gx#identifier? _hd2251022678_)
                          (if (gx#free-identifier=?
                               |gerbil/core::<match>[1]#_g29538_|
                               _hd2251022678_)
                              (if (gx#stx-pair? _tl2251122681_)
                                  (let ((_e2251222684_
                                         (gx#syntax-e _tl2251122681_)))
                                    (let ((_hd2251322688_
                                           (##car _e2251222684_))
                                          (_tl2251422691_
                                           (##cdr _e2251222684_)))
                                      (if (gx#stx-null? _tl2251422691_)
                                          ((lambda (_L22694_)
                                             (cons 'datum:
                                                   (cons (gx#stx-e _L22694_)
                                                         '())))
                                           _hd2251322688_)
                                          (_g2239722667_ _g2240422671_))))
                                  (_g2239722667_ _g2240422671_))
                              (_g2239722667_ _g2240422671_))
                          (_g2239722667_ _g2240422671_))))
                  (_g2239722667_ _g2240422671_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_g2239522757_
                                                      (lambda (_g2240422711_)
                                                        (if (gx#stx-pair?
                                                             _g2240422711_)
                                                            (let ((_e2250222714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g2240422711_)))
                      (let ((_hd2250322718_ (##car _e2250222714_))
                            (_tl2250422721_ (##cdr _e2250222714_)))
                        (if (gx#stx-pair? _tl2250422721_)
                            (let ((_e2250522724_ (gx#syntax-e _tl2250422721_)))
                              (let ((_hd2250622728_ (##car _e2250522724_))
                                    (_tl2250722731_ (##cdr _e2250522724_)))
                                (if (gx#stx-null? _tl2250722731_)
                                    ((lambda (_L22734_ _L22736_)
                                       (if (if (gx#identifier? _L22736_)
                                               (let ((_$e22749_
                                                      (gx#free-identifier=?
                                                       _L22736_
                                                       (gx#datum->syntax
                                                        '#f
                                                        'eq?))))
                                                 (if _$e22749_
                                                     _$e22749_
                                                     (let ((_$e22753_
                                                            (gx#free-identifier=?
                                                             _L22736_
                                                             (gx#datum->syntax
                                                              '#f
                                                              'eqv?))))
                                                       (if _$e22753_
                                                           _$e22753_
                                                           (gx#free-identifier=?
                                                            _L22736_
                                                            (gx#datum->syntax
                                                             '#f
                                                             'equal?))))))
                                               '#f)
                                           (cons '?:
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'cut)
                                                             (cons _L22736_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f '<>)
                                 (cons _L22734_ '()))))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g2239622707_ _g2240422711_)))
                                     _hd2250622728_
                                     _hd2250322718_)
                                    (_g2239622707_ _g2240422711_))))
                            (_g2239622707_ _g2240422711_))))
                    (_g2239622707_ _g2240422711_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_g2239422787_
                                                        (lambda (_g2240422761_)
                                                          (if (gx#stx-pair?
                                                               _g2240422761_)
                                                              (let ((_e2249722764_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _g2240422761_)))
                        (let ((_hd2249822768_ (##car _e2249722764_))
                              (_tl2249922771_ (##cdr _e2249722764_)))
                          ((lambda (_L22774_ _L22776_)
                             (if (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-class-info?|
                                  _L22776_)
                                 (cons 'class:
                                       (cons (gx#syntax-local-value _L22776_)
                                             (cons (_parse-class-body22036_
                                                    _L22774_)
                                                   '())))
                                 (_g2239522757_ _g2240422761_)))
                           _tl2249922771_
                           _hd2249822768_)))
                      (_g2239522757_ _g2240422761_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_g2239322817_
                                                          (lambda (_g2240422791_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2240422791_)
                        (let ((_e2249222794_ (gx#syntax-e _g2240422791_)))
                          (let ((_hd2249322798_ (##car _e2249222794_))
                                (_tl2249422801_ (##cdr _e2249222794_)))
                            ((lambda (_L22804_ _L22806_)
                               (if (|gerbil/core::<MOP>::<MOP:2>[1]#syntax-local-struct-info?|
                                    _L22806_)
                                   (cons 'struct:
                                         (cons (gx#syntax-local-value _L22806_)
                                               (cons (_parse-vector22034_
                                                      _L22804_)
                                                     '())))
                                   (_g2239422787_ _g2240422791_)))
                             _tl2249422801_
                             _hd2249322798_)))
                        (_g2239422787_ _g2240422791_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_g2239222880_
                                                            (lambda (_g2240422821_)
                                                              (if (gx#stx-vector?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2240422821_)
                          (let ((_e2248022824_
                                 (vector->list (gx#syntax-e _g2240422821_))))
                            (if (gx#stx-pair/null? _e2248022824_)
                                (if (fx>= (gx#stx-length _e2248022824_) '0)
                                    (let ((_g29539_
                                           (gx#syntax-split-splice
                                            _e2248022824_
                                            '0)))
                                      (begin
                                        (let ((_g29540_
                                               (values-count _g29539_)))
                                          (if (not (fx= _g29540_ 2))
                                              (error "Context expects 2 values"
                                                     _g29540_)))
                                        (let ((_target2248122828_
                                               (values-ref _g29539_ 0))
                                              (_tl2248322831_
                                               (values-ref _g29539_ 1)))
                                          (if (gx#stx-null? _tl2248322831_)
                                              (letrec ((_loop2248422834_
                                                        (lambda (_hd2248222838_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body2248822841_)
                  (if (gx#stx-pair? _hd2248222838_)
                      (let ((_e2248522844_ (gx#syntax-e _hd2248222838_)))
                        (let ((_lp-hd2248622848_ (##car _e2248522844_))
                              (_lp-tl2248722851_ (##cdr _e2248522844_)))
                          (_loop2248422834_
                           _lp-tl2248722851_
                           (cons _lp-hd2248622848_ _body2248822841_))))
                      (let ((_body2248922854_ (reverse _body2248822841_)))
                        ((lambda (_L22858_)
                           (cons 'vector:
                                 (cons (_parse-vector22034_
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g2287122874_
                                                          _g2287222877_)
                                                   (cons _g2287122874_
                                                         _g2287222877_))
                                                 '()
                                                 _L22858_)))
                                       '())))
                         _body2248922854_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop2248422834_
                                                 _target2248122828_
                                                 '()))
                                              (_g2239322817_ _g2240422821_)))))
                                    (_g2239322817_ _g2240422821_))
                                (_g2239322817_ _g2240422821_)))
                          (_g2239322817_ _g2240422821_)))))
               (let ((_g2239122908_
                      (lambda (_g2240422884_)
                        (if (gx#stx-pair? _g2240422884_)
                            (let ((_e2247622887_ (gx#syntax-e _g2240422884_)))
                              (let ((_hd2247722891_ (##car _e2247622887_))
                                    (_tl2247822894_ (##cdr _e2247622887_)))
                                (if (gx#identifier? _hd2247722891_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core::<match>[1]#_g29541_|
                                         _hd2247722891_)
                                        ((lambda (_L22897_)
                                           (cons 'vector:
                                                 (cons (_parse-vector22034_
                                                        _L22897_)
                                                       '())))
                                         _tl2247822894_)
                                        (_g2239222880_ _g2240422884_))
                                    (_g2239222880_ _g2240422884_))))
                            (_g2239222880_ _g2240422884_)))))
                 (let ((_g2239022936_
                        (lambda (_g2240422912_)
                          (if (gx#stx-pair? _g2240422912_)
                              (let ((_e2247222915_
                                     (gx#syntax-e _g2240422912_)))
                                (let ((_hd2247322919_ (##car _e2247222915_))
                                      (_tl2247422922_ (##cdr _e2247222915_)))
                                  (if (gx#identifier? _hd2247322919_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core::<match>[1]#_g29542_|
                                           _hd2247322919_)
                                          ((lambda (_L22925_)
                                             (cons 'values:
                                                   (cons (_parse-vector22034_
                                                          _L22925_)
                                                         '())))
                                           _tl2247422922_)
                                          (_g2239122908_ _g2240422912_))
                                      (_g2239122908_ _g2240422912_))))
                              (_g2239122908_ _g2240422912_)))))
                   (let ((_g2238922976_
                          (lambda (_g2240422940_)
                            (if (gx#stx-pair? _g2240422940_)
                                (let ((_e2246522943_
                                       (gx#syntax-e _g2240422940_)))
                                  (let ((_hd2246622947_ (##car _e2246522943_))
                                        (_tl2246722950_ (##cdr _e2246522943_)))
                                    (if (gx#identifier? _hd2246622947_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core::<match>[1]#_g29543_|
                                             _hd2246622947_)
                                            (if (gx#stx-pair? _tl2246722950_)
                                                (let ((_e2246822953_
                                                       (gx#syntax-e
                                                        _tl2246722950_)))
                                                  (let ((_hd2246922957_
                                                         (##car _e2246822953_))
                                                        (_tl2247022960_
                                                         (##cdr _e2246822953_)))
                                                    (if (gx#stx-null?
                                                         _tl2247022960_)
                                                        ((lambda (_L22963_)
                                                           (_parse122031_
                                                            _L22963_))
                                                         _hd2246922957_)
                                                        (_g2239022936_
                                                         _g2240422940_))))
                                                (_g2239022936_ _g2240422940_))
                                            (_g2239022936_ _g2240422940_))
                                        (_g2239022936_ _g2240422940_))))
                                (_g2239022936_ _g2240422940_)))))
                     (let ((_g2238822997_
                            (lambda (_g2240422980_)
                              (if (gx#stx-box? _g2240422980_)
                                  (let ((_e2246322983_
                                         (unbox (gx#syntax-e _g2240422980_))))
                                    ((lambda (_L22987_)
                                       (cons 'box:
                                             (cons (_parse122031_ _L22987_)
                                                   '())))
                                     _e2246322983_))
                                  (_g2238922976_ _g2240422980_)))))
                       (let ((_g2238723037_
                              (lambda (_g2240423001_)
                                (if (gx#stx-pair? _g2240423001_)
                                    (let ((_e2245623004_
                                           (gx#syntax-e _g2240423001_)))
                                      (let ((_hd2245723008_
                                             (##car _e2245623004_))
                                            (_tl2245823011_
                                             (##cdr _e2245623004_)))
                                        (if (gx#identifier? _hd2245723008_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<match>[1]#_g29544_|
                                                 _hd2245723008_)
                                                (if (gx#stx-pair?
                                                     _tl2245823011_)
                                                    (let ((_e2245923014_
                                                           (gx#syntax-e
                                                            _tl2245823011_)))
                                                      (let ((_hd2246023018_
                                                             (##car _e2245923014_))
                                                            (_tl2246123021_
                                                             (##cdr _e2245923014_)))
                                                        (if (gx#stx-null?
                                                             _tl2246123021_)
                                                            ((lambda (_L23024_)
                                                               (cons 'box:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (_parse122031_ _L23024_) '())))
                     _hd2246023018_)
                    (_g2238822997_ _g2240423001_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2238822997_
                                                     _g2240423001_))
                                                (_g2238822997_ _g2240423001_))
                                            (_g2238822997_ _g2240423001_))))
                                    (_g2238822997_ _g2240423001_)))))
                         (let ((_g2238623065_
                                (lambda (_g2240423041_)
                                  (if (gx#stx-pair? _g2240423041_)
                                      (let ((_e2245223044_
                                             (gx#syntax-e _g2240423041_)))
                                        (let ((_hd2245323048_
                                               (##car _e2245223044_))
                                              (_tl2245423051_
                                               (##cdr _e2245223044_)))
                                          (if (gx#identifier? _hd2245323048_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core::<match>[1]#_g29545_|
                                                   _hd2245323048_)
                                                  ((lambda (_L23054_)
                                                     (_parse-list22033_
                                                      _L23054_))
                                                   _tl2245423051_)
                                                  (_g2238723037_
                                                   _g2240423041_))
                                              (_g2238723037_ _g2240423041_))))
                                      (_g2238723037_ _g2240423041_)))))
                           (let ((_g2238523121_
                                  (lambda (_g2240423069_)
                                    (if (gx#stx-pair? _g2240423069_)
                                        (let ((_e2244223072_
                                               (gx#syntax-e _g2240423069_)))
                                          (let ((_hd2244323076_
                                                 (##car _e2244223072_))
                                                (_tl2244423079_
                                                 (##cdr _e2244223072_)))
                                            (if (gx#identifier? _hd2244323076_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core::<match>[1]#_g29546_|
                                                     _hd2244323076_)
                                                    (if (gx#stx-pair?
                                                         _tl2244423079_)
                                                        (let ((_e2244523082_
                                                               (gx#syntax-e
                                                                _tl2244423079_)))
                                                          (let ((_hd2244623086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2244523082_))
                        (_tl2244723089_ (##cdr _e2244523082_)))
                    (if (gx#stx-pair? _tl2244723089_)
                        (let ((_e2244823092_ (gx#syntax-e _tl2244723089_)))
                          (let ((_hd2244923096_ (##car _e2244823092_))
                                (_tl2245023099_ (##cdr _e2244823092_)))
                            ((lambda (_L23102_ _L23104_ _L23105_)
                               (if (gx#stx-null? _L23102_)
                                   (cons 'cons:
                                         (cons (_parse122031_ _L23105_)
                                               (cons (_parse122031_ _L23104_)
                                                     '())))
                                   (cons 'cons:
                                         (cons (_parse122031_ _L23105_)
                                               (cons (_parse122031_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons*)
                                                            (cons _L23104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L23102_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                             _tl2245023099_
                             _hd2244923096_
                             _hd2244623086_)))
                        (_g2238623065_ _g2240423069_))))
                (_g2238623065_ _g2240423069_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2238623065_
                                                     _g2240423069_))
                                                (_g2238623065_
                                                 _g2240423069_))))
                                        (_g2238623065_ _g2240423069_)))))
                             (let ((_g2238423175_
                                    (lambda (_g2240423125_)
                                      (if (gx#stx-pair? _g2240423125_)
                                          (let ((_e2243023128_
                                                 (gx#syntax-e _g2240423125_)))
                                            (let ((_hd2243123132_
                                                   (##car _e2243023128_))
                                                  (_tl2243223135_
                                                   (##cdr _e2243023128_)))
                                              (if (gx#identifier?
                                                   _hd2243123132_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core::<match>[1]#_g29547_|
                                                       _hd2243123132_)
                                                      (if (gx#stx-pair?
                                                           _tl2243223135_)
                                                          (let ((_e2243323138_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2243223135_)))
                    (let ((_hd2243423142_ (##car _e2243323138_))
                          (_tl2243523145_ (##cdr _e2243323138_)))
                      (if (gx#stx-pair? _tl2243523145_)
                          (let ((_e2243623148_ (gx#syntax-e _tl2243523145_)))
                            (let ((_hd2243723152_ (##car _e2243623148_))
                                  (_tl2243823155_ (##cdr _e2243623148_)))
                              (if (gx#stx-null? _tl2243823155_)
                                  ((lambda (_L23158_ _L23160_)
                                     (cons 'cons:
                                           (cons (_parse122031_ _L23160_)
                                                 (cons (_parse122031_ _L23158_)
                                                       '()))))
                                   _hd2243723152_
                                   _hd2243423142_)
                                  (_g2238523121_ _g2240423125_))))
                          (_g2238523121_ _g2240423125_))))
                  (_g2238523121_ _g2240423125_))
              (_g2238523121_ _g2240423125_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2238523121_
                                                   _g2240423125_))))
                                          (_g2238523121_ _g2240423125_)))))
                               (let ((_g2238323215_
                                      (lambda (_g2240423179_)
                                        (if (gx#stx-pair? _g2240423179_)
                                            (let ((_e2242223182_
                                                   (gx#syntax-e
                                                    _g2240423179_)))
                                              (let ((_hd2242323186_
                                                     (##car _e2242223182_))
                                                    (_tl2242423189_
                                                     (##cdr _e2242223182_)))
                                                (if (gx#identifier?
                                                     _hd2242323186_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core::<match>[1]#_g29548_|
                                                         _hd2242323186_)
                                                        (if (gx#stx-pair?
                                                             _tl2242423189_)
                                                            (let ((_e2242523192_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl2242423189_)))
                      (let ((_hd2242623196_ (##car _e2242523192_))
                            (_tl2242723199_ (##cdr _e2242523192_)))
                        (if (gx#stx-null? _tl2242723199_)
                            ((lambda (_L23202_)
                               (cons 'not:
                                     (cons (_parse122031_ _L23202_) '())))
                             _hd2242623196_)
                            (_g2238423175_ _g2240423179_))))
                    (_g2238423175_ _g2240423179_))
                (_g2238423175_ _g2240423179_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2238423175_
                                                     _g2240423179_))))
                                            (_g2238423175_ _g2240423179_)))))
                                 (let ((_g2238223300_
                                        (lambda (_g2240423219_)
                                          (if (gx#stx-pair? _g2240423219_)
                                              (let ((_e2241823222_
                                                     (gx#syntax-e
                                                      _g2240423219_)))
                                                (let ((_hd2241923226_
                                                       (##car _e2241823222_))
                                                      (_tl2242023229_
                                                       (##cdr _e2241823222_)))
                                                  (if (gx#identifier?
                                                       _hd2241923226_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core::<match>[1]#_g29549_|
                                                           _hd2241923226_)
                                                          ((lambda (_L23232_)
                                                             (if (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L23232_)
                         (let ((_g2324423255_
                                (lambda (_g2324523251_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2324523251_))))
                           (let ((_g2324323266_
                                  (lambda (_g2324523259_)
                                    ((lambda ()
                                       (cons 'or:
                                             (gx#stx-map
                                              _parse122031_
                                              _L23232_)))))))
                             (let ((_g2324223296_
                                    (lambda (_g2324523270_)
                                      (if (gx#stx-pair? _g2324523270_)
                                          (let ((_e2324723273_
                                                 (gx#syntax-e _g2324523270_)))
                                            (let ((_hd2324823277_
                                                   (##car _e2324723273_))
                                                  (_tl2324923280_
                                                   (##cdr _e2324723273_)))
                                              (if (gx#stx-null? _tl2324923280_)
                                                  ((lambda (_L23283_)
                                                     (_parse122031_ _L23283_))
                                                   _hd2324823277_)
                                                  (_g2324323266_
                                                   _g2324523270_))))
                                          (_g2324323266_ _g2324523270_)))))
                               (_g2324223296_ _L23232_))))
                         (_g2238323215_ _g2240423219_)))
                   _tl2242023229_)
                  (_g2238323215_ _g2240423219_))
              (_g2238323215_ _g2240423219_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2238323215_ _g2240423219_)))))
                                   (let ((_g2238123385_
                                          (lambda (_g2240423304_)
                                            (if (gx#stx-pair? _g2240423304_)
                                                (let ((_e2241423307_
                                                       (gx#syntax-e
                                                        _g2240423304_)))
                                                  (let ((_hd2241523311_
                                                         (##car _e2241423307_))
                                                        (_tl2241623314_
                                                         (##cdr _e2241423307_)))
                                                    (if (gx#identifier?
                                                         _hd2241523311_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core::<match>[1]#_g29550_|
                                                             _hd2241523311_)
                                                            ((lambda (_L23317_)
                                                               (if (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L23317_)
                           (let ((_g2332923340_
                                  (lambda (_g2333023336_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g2333023336_))))
                             (let ((_g2332823351_
                                    (lambda (_g2333023344_)
                                      ((lambda ()
                                         (cons 'and:
                                               (gx#stx-map
                                                _parse122031_
                                                _L23317_)))))))
                               (let ((_g2332723381_
                                      (lambda (_g2333023355_)
                                        (if (gx#stx-pair? _g2333023355_)
                                            (let ((_e2333223358_
                                                   (gx#syntax-e
                                                    _g2333023355_)))
                                              (let ((_hd2333323362_
                                                     (##car _e2333223358_))
                                                    (_tl2333423365_
                                                     (##cdr _e2333223358_)))
                                                (if (gx#stx-null?
                                                     _tl2333423365_)
                                                    ((lambda (_L23368_)
                                                       (_parse122031_
                                                        _L23368_))
                                                     _hd2333323362_)
                                                    (_g2332823351_
                                                     _g2333023355_))))
                                            (_g2332823351_ _g2333023355_)))))
                                 (_g2332723381_ _L23317_))))
                           (_g2238223300_ _g2240423304_)))
                     _tl2241623314_)
                    (_g2238223300_ _g2240423304_))
                (_g2238223300_ _g2240423304_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2238223300_
                                                 _g2240423304_)))))
                                     (let ((_g2238023625_
                                            (lambda (_g2240423389_)
                                              (if (gx#stx-pair? _g2240423389_)
                                                  (let ((_e2240723392_
                                                         (gx#syntax-e
                                                          _g2240423389_)))
                                                    (let ((_hd2240823396_
                                                           (##car _e2240723392_))
                                                          (_tl2240923399_
                                                           (##cdr _e2240723392_)))
                                                      (if (gx#identifier?
                                                           _hd2240823396_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core::<match>[1]#_g29551_|
                                                               _hd2240823396_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2240923399_)
                          (let ((_e2241023402_ (gx#syntax-e _tl2240923399_)))
                            (let ((_hd2241123406_ (##car _e2241023402_))
                                  (_tl2241223409_ (##cdr _e2241023402_)))
                              ((lambda (_L23412_ _L23414_)
                                 (let ((_g2343123463_
                                        (lambda (_g2343223459_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g2343223459_))))
                                   (let ((_g2343023474_
                                          (lambda (_g2343223467_)
                                            ((lambda ()
                                               (_parse-error22038_
                                                _hd22378_))))))
                                     (let ((_g2342923542_
                                            (lambda (_g2343223478_)
                                              (if (gx#stx-pair? _g2343223478_)
                                                  (let ((_e2344623481_
                                                         (gx#syntax-e
                                                          _g2343223478_)))
                                                    (let ((_hd2344723485_
                                                           (##car _e2344623481_))
                                                          (_tl2344823488_
                                                           (##cdr _e2344623481_)))
                                                      (if (gx#stx-datum?
                                                           _hd2344723485_)
                                                          (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd2344723485_)
                              '::)
                      (if (gx#stx-pair? _tl2344823488_)
                          (let ((_e2344923491_ (gx#syntax-e _tl2344823488_)))
                            (let ((_hd2345023495_ (##car _e2344923491_))
                                  (_tl2345123498_ (##cdr _e2344923491_)))
                              (if (gx#stx-pair? _tl2345123498_)
                                  (let ((_e2345223501_
                                         (gx#syntax-e _tl2345123498_)))
                                    (let ((_hd2345323505_
                                           (##car _e2345223501_))
                                          (_tl2345423508_
                                           (##cdr _e2345223501_)))
                                      (if (gx#identifier? _hd2345323505_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core::<match>[1]#_g29552_|
                                               _hd2345323505_)
                                              (if (gx#stx-pair? _tl2345423508_)
                                                  (let ((_e2345523511_
                                                         (gx#syntax-e
                                                          _tl2345423508_)))
                                                    (let ((_hd2345623515_
                                                           (##car _e2345523511_))
                                                          (_tl2345723518_
                                                           (##cdr _e2345523511_)))
                                                      (if (gx#stx-null?
                                                           _tl2345723518_)
                                                          ((lambda (_L23521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L23523_)
                     (cons '?:
                           (cons _L23414_
                                 (cons '::
                                       (cons _L23523_
                                             (cons '=>:
                                                   (cons (_parse122031_
                                                          _L23521_)
                                                         '())))))))
                   _hd2345623515_
                   _hd2345023495_)
                  (_g2343023474_ _g2343223478_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2343023474_
                                                   _g2343223478_))
                                              (_g2343023474_ _g2343223478_))
                                          (_g2343023474_ _g2343223478_))))
                                  (_g2343023474_ _g2343223478_))))
                          (_g2343023474_ _g2343223478_))
                      (_g2343023474_ _g2343223478_))
                  (_g2343023474_ _g2343223478_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2343023474_
                                                   _g2343223478_)))))
                                       (let ((_g2342823582_
                                              (lambda (_g2343223546_)
                                                (if (gx#stx-pair?
                                                     _g2343223546_)
                                                    (let ((_e2343823549_
                                                           (gx#syntax-e
                                                            _g2343223546_)))
                                                      (let ((_hd2343923553_
                                                             (##car _e2343823549_))
                                                            (_tl2344023556_
                                                             (##cdr _e2343823549_)))
                                                        (if (gx#identifier?
                                                             _hd2343923553_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core::<match>[1]#_g29553_|
                         _hd2343923553_)
                        (if (gx#stx-pair? _tl2344023556_)
                            (let ((_e2344123559_ (gx#syntax-e _tl2344023556_)))
                              (let ((_hd2344223563_ (##car _e2344123559_))
                                    (_tl2344323566_ (##cdr _e2344123559_)))
                                (if (gx#stx-null? _tl2344323566_)
                                    ((lambda (_L23569_)
                                       (cons '?:
                                             (cons _L23414_
                                                   (cons '=>:
                                                         (cons (_parse122031_
                                                                _L23569_)
                                                               '())))))
                                     _hd2344223563_)
                                    (_g2342923542_ _g2343223546_))))
                            (_g2342923542_ _g2343223546_))
                        (_g2342923542_ _g2343223546_))
                    (_g2342923542_ _g2343223546_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2342923542_
                                                     _g2343223546_)))))
                                         (let ((_g2342723610_
                                                (lambda (_g2343223586_)
                                                  (if (gx#stx-pair?
                                                       _g2343223586_)
                                                      (let ((_e2343423589_
                                                             (gx#syntax-e
                                                              _g2343223586_)))
                                                        (let ((_hd2343523593_
                                                               (##car _e2343423589_))
                                                              (_tl2343623596_
                                                               (##cdr _e2343423589_)))
                                                          (if (gx#stx-null?
                                                               _tl2343623596_)
                                                              ((lambda (_L23599_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '?:
                               (cons _L23414_
                                     (cons (_parse122031_ _L23599_) '()))))
                       _hd2343523593_)
                      (_g2342823582_ _g2343223586_))))
              (_g2342823582_ _g2343223586_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_g2342623621_
                                                  (lambda (_g2343223614_)
                                                    (if (gx#stx-null?
                                                         _g2343223614_)
                                                        ((lambda ()
                                                           (cons '?:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L23414_ '()))))
                (_g2342723610_ _g2343223614_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2342623621_ _L23412_))))))))
                               _tl2241223409_
                               _hd2241123406_)))
                          (_g2238123385_ _g2240423389_))
                      (_g2238123385_ _g2240423389_))
                  (_g2238123385_ _g2240423389_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2238123385_
                                                   _g2240423389_)))))
                                       (_g2238023625_
                                        _hd22378_)))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (_parse-list22033_
                             (lambda (_body22213_)
                               (let ((_g2221922247_
                                      (lambda (_g2222022243_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g2222022243_))))
                                 (let ((_g2221822258_
                                        (lambda (_g2222022251_)
                                          ((lambda ()
                                             (if (gx#stx-null? _body22213_)
                                                 (cons 'null: '())
                                                 (if (not (gx#stx-pair?
                                                           _body22213_))
                                                     (_parse122031_
                                                      _body22213_)
                                                     (_parse-error22038_
                                                      _body22213_))))))))
                                   (let ((_g2221722290_
                                          (lambda (_g2222022262_)
                                            (if (gx#stx-pair? _g2222022262_)
                                                (let ((_e2223922265_
                                                       (gx#syntax-e
                                                        _g2222022262_)))
                                                  (let ((_hd2224022269_
                                                         (##car _e2223922265_))
                                                        (_tl2224122272_
                                                         (##cdr _e2223922265_)))
                                                    ((lambda (_L22275_
                                                              _L22277_)
                                                       (if (not (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L22277_))
                   (cons 'cons:
                         (cons (_parse122031_ _L22277_)
                               (cons (_parse-list22033_ _L22275_) '())))
                   (_g2221822258_ _g2222022262_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _tl2224122272_
                                                     _hd2224022269_)))
                                                (_g2221822258_
                                                 _g2222022262_)))))
                                     (let ((_g2221622334_
                                            (lambda (_g2222022294_)
                                              (if (gx#stx-pair? _g2222022294_)
                                                  (let ((_e2223122297_
                                                         (gx#syntax-e
                                                          _g2222022294_)))
                                                    (let ((_hd2223222301_
                                                           (##car _e2223122297_))
                                                          (_tl2223322304_
                                                           (##cdr _e2223122297_)))
                                                      (if (gx#stx-pair?
                                                           _tl2223322304_)
                                                          (let ((_e2223422307_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2223322304_)))
                    (let ((_hd2223522311_ (##car _e2223422307_))
                          (_tl2223622314_ (##cdr _e2223422307_)))
                      ((lambda (_L22317_ _L22319_ _L22320_)
                         (if (gx#ellipsis? _L22319_)
                             (cons 'splice:
                                   (cons (_parse122031_ _L22320_)
                                         (cons (_parse-list22033_ _L22317_)
                                               '())))
                             (_g2221722290_ _g2222022294_)))
                       _tl2223622314_
                       _hd2223522311_
                       _hd2223222301_)))
                  (_g2221722290_ _g2222022294_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2221722290_
                                                   _g2222022294_)))))
                                       (let ((_g2221522374_
                                              (lambda (_g2222022338_)
                                                (if (gx#stx-pair?
                                                     _g2222022338_)
                                                    (let ((_e2222222341_
                                                           (gx#syntax-e
                                                            _g2222022338_)))
                                                      (let ((_hd2222322345_
                                                             (##car _e2222222341_))
                                                            (_tl2222422348_
                                                             (##cdr _e2222222341_)))
                                                        (if (gx#stx-datum?
                                                             _hd2222322345_)
                                                            (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _hd2222322345_)
                                '::)
                        (if (gx#stx-pair? _tl2222422348_)
                            (let ((_e2222522351_ (gx#syntax-e _tl2222422348_)))
                              (let ((_hd2222622355_ (##car _e2222522351_))
                                    (_tl2222722358_ (##cdr _e2222522351_)))
                                (if (gx#stx-null? _tl2222722358_)
                                    ((lambda (_L22361_)
                                       (_parse122031_ _L22361_))
                                     _hd2222622355_)
                                    (_g2221622334_ _g2222022338_))))
                            (_g2221622334_ _g2222022338_))
                        (_g2221622334_ _g2222022338_))
                    (_g2221622334_ _g2222022338_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2221622334_
                                                     _g2222022338_)))))
                                         (_g2221522374_ _body22213_))))))))
                            (_parse-vector22034_
                             (lambda (_body22210_)
                               (if (_simple-vector?22035_ _body22210_)
                                   (cons 'simple:
                                         (cons (gx#stx-map
                                                _parse122031_
                                                _body22210_)
                                               '()))
                                   (cons 'list:
                                         (cons (_parse-list22033_ _body22210_)
                                               '())))))
                            (_simple-vector?22035_
                             (lambda (_body22147_)
                               (let ((_g2215122163_
                                      (lambda (_g2215222159_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g2215222159_))))
                                 (let ((_g2215022174_
                                        (lambda (_g2215222167_)
                                          ((lambda ()
                                             (gx#stx-null? _body22147_))))))
                                   (let ((_g2214922206_
                                          (lambda (_g2215222178_)
                                            (if (gx#stx-pair? _g2215222178_)
                                                (let ((_e2215522181_
                                                       (gx#syntax-e
                                                        _g2215222178_)))
                                                  (let ((_hd2215622185_
                                                         (##car _e2215522181_))
                                                        (_tl2215722188_
                                                         (##cdr _e2215522181_)))
                                                    ((lambda (_L22191_
                                                              _L22193_)
                                                       (if (not (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L22193_))
                   (_simple-vector?22035_ _L22191_)
                   '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _tl2215722188_
                                                     _hd2215622185_)))
                                                (_g2215022174_
                                                 _g2215222178_)))))
                                     (_g2214922206_ _body22147_))))))
                            (_parse-class-body22036_
                             (lambda (_body22056_)
                               ((letrec ((_recur22059_
                                          (lambda (_rest22062_)
                                            (let ((_g2206622082_
                                                   (lambda (_g2206722078_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2206722078_))))
                                              (let ((_g2206522093_
                                                     (lambda (_g2206722086_)
                                                       ((lambda ()
                                                          (if (gx#stx-null?
                                                               _rest22062_)
                                                              '()
                                                              (_parse-error22038_
                                                               _rest22062_)))))))
                                                (let ((_g2206422143_
                                                       (lambda (_g2206722097_)
                                                         (if (gx#stx-pair?
                                                              _g2206722097_)
                                                             (let ((_e2207122100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g2206722097_)))
                       (let ((_hd2207222104_ (##car _e2207122100_))
                             (_tl2207322107_ (##cdr _e2207122100_)))
                         (if (gx#stx-pair? _tl2207322107_)
                             (let ((_e2207422110_
                                    (gx#syntax-e _tl2207322107_)))
                               (let ((_hd2207522114_ (##car _e2207422110_))
                                     (_tl2207622117_ (##cdr _e2207422110_)))
                                 ((lambda (_L22120_ _L22122_ _L22123_)
                                    (if (gx#stx-keyword? _L22123_)
                                        (cons* _L22123_
                                               (_parse122031_ _L22122_)
                                               (_recur22059_ _L22120_))
                                        (_g2206522093_ _g2206722097_)))
                                  _tl2207622117_
                                  _hd2207522114_
                                  _hd2207222104_)))
                             (_g2206522093_ _g2206722097_))))
                     (_g2206522093_ _g2206722097_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2206422143_
                                                   _rest22062_)))))))
                                  _recur22059_)
                                _body22056_))))
                     (_parse122031_ _stx22027_)))))))
        (lambda _g29555_
          (let ((_g29554_ (length _g29555_)))
            (cond ((fx= _g29554_ 1)
                   (apply (lambda (_stx23633_)
                            (let ((_match-stx23636_ '#f))
                              (_opt-lambda2202523629_
                               _stx23633_
                               _match-stx23636_)))
                          _g29555_))
                  ((fx= _g29554_ 2) (apply _opt-lambda2202523629_ _g29555_))
                  (else (error "No clause matching arguments" _g29555_)))))))
    (define |gerbil/core::<match>[1]#match-pattern?|
      (lambda (_stx22011_)
        (call-with-escape
         (lambda (_E22015_)
           (with-exception-handler
            (let ((_E!22018_ (current-exception-handler)))
              (lambda (_e22021_)
                (if (gx#syntax-error? _e22021_)
                    (_E22015_ '#f)
                    (_E!22018_ _e22021_))))
            (lambda ()
              (begin
                (|gerbil/core::<match>[1]#parse-match-pattern| _stx22011_)
                '#t)))))))
    (define |gerbil/core::<match>[1]#match-pattern-vars|
      (lambda (_ptree20866_)
        (letrec ((_loop20869_
                  (lambda (_ptree21144_ _vars21146_ _K21147_)
                    (let ((_g2115921249_
                           (lambda (_g2116021245_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2116021245_))))
                      (let ((_g2115821260_
                             (lambda (_g2116021253_)
                               ((lambda () (_K21147_ _vars21146_))))))
                        (let ((_g2115721307_
                               (lambda (_g2116021264_)
                                 (if (gx#stx-pair? _g2116021264_)
                                     (let ((_e2123821267_
                                            (gx#syntax-e _g2116021264_)))
                                       (let ((_hd2123921271_
                                              (##car _e2123821267_))
                                             (_tl2124021274_
                                              (##cdr _e2123821267_)))
                                         (if (gx#stx-datum? _hd2123921271_)
                                             (if (equal? (gx#stx-e
                                                          _hd2123921271_)
                                                         'var:)
                                                 (if (gx#stx-pair?
                                                      _tl2124021274_)
                                                     (let ((_e2124121277_
                                                            (gx#syntax-e
                                                             _tl2124021274_)))
                                                       (let ((_hd2124221281_
                                                              (##car _e2124121277_))
                                                             (_tl2124321284_
                                                              (##cdr _e2124121277_)))
                                                         (if (gx#stx-null?
                                                              _tl2124321284_)
                                                             ((lambda (_L21287_)
                                                                (if (find (lambda (_g2130121303_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (gx#bound-identifier=?
                                     _g2130121303_
                                     _L21287_))
                                  _vars21146_)
                            (_K21147_ _vars21146_)
                            (_K21147_ (cons _L21287_ _vars21146_))))
                      _hd2124221281_)
                     (_g2115821260_ _g2116021264_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2115821260_
                                                      _g2116021264_))
                                                 (_g2115821260_ _g2116021264_))
                                             (_g2115821260_ _g2116021264_))))
                                     (_g2115821260_ _g2116021264_)))))
                          (let ((_g2115621359_
                                 (lambda (_g2116021311_)
                                   (if (gx#stx-pair? _g2116021311_)
                                       (let ((_e2122821314_
                                              (gx#syntax-e _g2116021311_)))
                                         (let ((_hd2122921318_
                                                (##car _e2122821314_))
                                               (_tl2123021321_
                                                (##cdr _e2122821314_)))
                                           (if (gx#stx-datum? _hd2122921318_)
                                               (if (equal? (gx#stx-e
                                                            _hd2122921318_)
                                                           'class:)
                                                   (if (gx#stx-pair?
                                                        _tl2123021321_)
                                                       (let ((_e2123121324_
                                                              (gx#syntax-e
                                                               _tl2123021321_)))
                                                         (let ((_hd2123221328_
                                                                (##car _e2123121324_))
                                                               (_tl2123321331_
                                                                (##cdr _e2123121324_)))
                                                           (if (gx#stx-pair?
                                                                _tl2123321331_)
                                                               (let ((_e2123421334_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2123321331_)))
                         (let ((_hd2123521338_ (##car _e2123421334_))
                               (_tl2123621341_ (##cdr _e2123421334_)))
                           (if (gx#stx-null? _tl2123621341_)
                               ((lambda (_L21344_)
                                  (_loop-class-list20873_
                                   _L21344_
                                   _vars21146_
                                   _K21147_))
                                _hd2123521338_)
                               (_g2115721307_ _g2116021311_))))
                       (_g2115721307_ _g2116021311_))))
               (_g2115721307_ _g2116021311_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2115721307_
                                                    _g2116021311_))
                                               (_g2115721307_ _g2116021311_))))
                                       (_g2115721307_ _g2116021311_)))))
                            (let ((_g2115521411_
                                   (lambda (_g2116021363_)
                                     (if (gx#stx-pair? _g2116021363_)
                                         (let ((_e2121821366_
                                                (gx#syntax-e _g2116021363_)))
                                           (let ((_hd2121921370_
                                                  (##car _e2121821366_))
                                                 (_tl2122021373_
                                                  (##cdr _e2121821366_)))
                                             (if (gx#stx-datum? _hd2121921370_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2121921370_)
                                                             'struct:)
                                                     (if (gx#stx-pair?
                                                          _tl2122021373_)
                                                         (let ((_e2122121376_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2122021373_)))
                   (let ((_hd2122221380_ (##car _e2122121376_))
                         (_tl2122321383_ (##cdr _e2122121376_)))
                     (if (gx#stx-pair? _tl2122321383_)
                         (let ((_e2122421386_ (gx#syntax-e _tl2122321383_)))
                           (let ((_hd2122521390_ (##car _e2122421386_))
                                 (_tl2122621393_ (##cdr _e2122421386_)))
                             (if (gx#stx-null? _tl2122621393_)
                                 ((lambda (_L21396_)
                                    (_loop-vector20871_
                                     _L21396_
                                     _vars21146_
                                     _K21147_))
                                  _hd2122521390_)
                                 (_g2115621359_ _g2116021363_))))
                         (_g2115621359_ _g2116021363_))))
                 (_g2115621359_ _g2116021363_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2115621359_
                                                      _g2116021363_))
                                                 (_g2115621359_
                                                  _g2116021363_))))
                                         (_g2115621359_ _g2116021363_)))))
                              (let ((_g2115421457_
                                     (lambda (_g2116021415_)
                                       (if (gx#stx-pair? _g2116021415_)
                                           (let ((_e2121121418_
                                                  (gx#syntax-e _g2116021415_)))
                                             (let ((_hd2121221422_
                                                    (##car _e2121121418_))
                                                   (_tl2121321425_
                                                    (##cdr _e2121121418_)))
                                               (if (gx#stx-pair?
                                                    _tl2121321425_)
                                                   (let ((_e2121421428_
                                                          (gx#syntax-e
                                                           _tl2121321425_)))
                                                     (let ((_hd2121521432_
                                                            (##car _e2121421428_))
                                                           (_tl2121621435_
                                                            (##cdr _e2121421428_)))
                                                       (if (gx#stx-null?
                                                            _tl2121621435_)
                                                           ((lambda (_L21438_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L21440_)
                      (if (let ((_$e21453_ (gx#stx-eq? 'values: _L21440_)))
                            (if _$e21453_
                                _$e21453_
                                (gx#stx-eq? 'vector: _L21440_)))
                          (_loop-vector20871_ _L21438_ _vars21146_ _K21147_)
                          (_g2115521411_ _g2116021415_)))
                    _hd2121521432_
                    _hd2121221422_)
                   (_g2115521411_ _g2116021415_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2115521411_
                                                    _g2116021415_))))
                                           (_g2115521411_ _g2116021415_)))))
                                (let ((_g2115321497_
                                       (lambda (_g2116021461_)
                                         (if (gx#stx-pair? _g2116021461_)
                                             (let ((_e2120321464_
                                                    (gx#syntax-e
                                                     _g2116021461_)))
                                               (let ((_hd2120421468_
                                                      (##car _e2120321464_))
                                                     (_tl2120521471_
                                                      (##cdr _e2120321464_)))
                                                 (if (gx#stx-datum?
                                                      _hd2120421468_)
                                                     (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd2120421468_)
                         'box:)
                 (if (gx#stx-pair? _tl2120521471_)
                     (let ((_e2120621474_ (gx#syntax-e _tl2120521471_)))
                       (let ((_hd2120721478_ (##car _e2120621474_))
                             (_tl2120821481_ (##cdr _e2120621474_)))
                         (if (gx#stx-null? _tl2120821481_)
                             ((lambda (_L21484_)
                                (_loop20869_ _L21484_ _vars21146_ _K21147_))
                              _hd2120721478_)
                             (_g2115421457_ _g2116021461_))))
                     (_g2115421457_ _g2116021461_))
                 (_g2115421457_ _g2116021461_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2115421457_
                                                      _g2116021461_))))
                                             (_g2115421457_ _g2116021461_)))))
                                  (let ((_g2115221556_
                                         (lambda (_g2116021501_)
                                           (if (gx#stx-pair? _g2116021501_)
                                               (let ((_e2119321504_
                                                      (gx#syntax-e
                                                       _g2116021501_)))
                                                 (let ((_hd2119421508_
                                                        (##car _e2119321504_))
                                                       (_tl2119521511_
                                                        (##cdr _e2119321504_)))
                                                   (if (gx#stx-datum?
                                                        _hd2119421508_)
                                                       (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd2119421508_)
                           'splice:)
                   (if (gx#stx-pair? _tl2119521511_)
                       (let ((_e2119621514_ (gx#syntax-e _tl2119521511_)))
                         (let ((_hd2119721518_ (##car _e2119621514_))
                               (_tl2119821521_ (##cdr _e2119621514_)))
                           (if (gx#stx-pair? _tl2119821521_)
                               (let ((_e2119921524_
                                      (gx#syntax-e _tl2119821521_)))
                                 (let ((_hd2120021528_ (##car _e2119921524_))
                                       (_tl2120121531_ (##cdr _e2119921524_)))
                                   (if (gx#stx-null? _tl2120121531_)
                                       ((lambda (_L21534_ _L21536_)
                                          (_loop20869_
                                           _L21536_
                                           _vars21146_
                                           (lambda (_g2155021552_)
                                             (_loop20869_
                                              _L21534_
                                              _g2155021552_
                                              _K21147_))))
                                        _hd2120021528_
                                        _hd2119721518_)
                                       (_g2115321497_ _g2116021501_))))
                               (_g2115321497_ _g2116021501_))))
                       (_g2115321497_ _g2116021501_))
                   (_g2115321497_ _g2116021501_))
               (_g2115321497_ _g2116021501_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2115321497_
                                                _g2116021501_)))))
                                    (let ((_g2115121615_
                                           (lambda (_g2116021560_)
                                             (if (gx#stx-pair? _g2116021560_)
                                                 (let ((_e2118221563_
                                                        (gx#syntax-e
                                                         _g2116021560_)))
                                                   (let ((_hd2118321567_
                                                          (##car _e2118221563_))
                                                         (_tl2118421570_
                                                          (##cdr _e2118221563_)))
                                                     (if (gx#stx-datum?
                                                          _hd2118321567_)
                                                         (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd2118321567_)
                             'cons:)
                     (if (gx#stx-pair? _tl2118421570_)
                         (let ((_e2118521573_ (gx#syntax-e _tl2118421570_)))
                           (let ((_hd2118621577_ (##car _e2118521573_))
                                 (_tl2118721580_ (##cdr _e2118521573_)))
                             (if (gx#stx-pair? _tl2118721580_)
                                 (let ((_e2118821583_
                                        (gx#syntax-e _tl2118721580_)))
                                   (let ((_hd2118921587_ (##car _e2118821583_))
                                         (_tl2119021590_
                                          (##cdr _e2118821583_)))
                                     (if (gx#stx-null? _tl2119021590_)
                                         ((lambda (_L21593_ _L21595_)
                                            (_loop20869_
                                             _L21595_
                                             _vars21146_
                                             (lambda (_g2160921611_)
                                               (_loop20869_
                                                _L21593_
                                                _g2160921611_
                                                _K21147_))))
                                          _hd2118921587_
                                          _hd2118621577_)
                                         (_g2115221556_ _g2116021560_))))
                                 (_g2115221556_ _g2116021560_))))
                         (_g2115221556_ _g2116021560_))
                     (_g2115221556_ _g2116021560_))
                 (_g2115221556_ _g2116021560_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2115221556_
                                                  _g2116021560_)))))
                                      (let ((_g2115021655_
                                             (lambda (_g2116021619_)
                                               (if (gx#stx-pair? _g2116021619_)
                                                   (let ((_e2117421622_
                                                          (gx#syntax-e
                                                           _g2116021619_)))
                                                     (let ((_hd2117521626_
                                                            (##car _e2117421622_))
                                                           (_tl2117621629_
                                                            (##cdr _e2117421622_)))
                                                       (if (gx#stx-datum?
                                                            _hd2117521626_)
                                                           (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd2117521626_)
                               'not:)
                       (if (gx#stx-pair? _tl2117621629_)
                           (let ((_e2117721632_ (gx#syntax-e _tl2117621629_)))
                             (let ((_hd2117821636_ (##car _e2117721632_))
                                   (_tl2117921639_ (##cdr _e2117721632_)))
                               (if (gx#stx-null? _tl2117921639_)
                                   ((lambda (_L21642_)
                                      (_loop20869_
                                       _L21642_
                                       _vars21146_
                                       _K21147_))
                                    _hd2117821636_)
                                   (_g2115121615_ _g2116021619_))))
                           (_g2115121615_ _g2116021619_))
                       (_g2115121615_ _g2116021619_))
                   (_g2115121615_ _g2116021619_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2115121615_
                                                    _g2116021619_)))))
                                        (let ((_g2114921754_
                                               (lambda (_g2116021659_)
                                                 (if (gx#stx-pair?
                                                      _g2116021659_)
                                                     (let ((_e2117021662_
                                                            (gx#syntax-e
                                                             _g2116021659_)))
                                                       (let ((_hd2117121666_
                                                              (##car _e2117021662_))
                                                             (_tl2117221669_
                                                              (##cdr _e2117021662_)))
                                                         ((lambda (_L21672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L21674_)
                    (if (let ((_$e21685_ (gx#stx-eq? 'and: _L21674_)))
                          (if _$e21685_ _$e21685_ (gx#stx-eq? 'or: _L21674_)))
                        (let ((_g2169021702_
                               (lambda (_g2169121698_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2169121698_))))
                          (let ((_g2168921713_
                                 (lambda (_g2169121706_)
                                   ((lambda () (_K21147_ _vars21146_))))))
                            (let ((_g2168821750_
                                   (lambda (_g2169121717_)
                                     (if (gx#stx-pair? _g2169121717_)
                                         (let ((_e2169421720_
                                                (gx#syntax-e _g2169121717_)))
                                           (let ((_hd2169521724_
                                                  (##car _e2169421720_))
                                                 (_tl2169621727_
                                                  (##cdr _e2169421720_)))
                                             ((lambda (_L21730_ _L21732_)
                                                (_loop20869_
                                                 _L21732_
                                                 _vars21146_
                                                 (lambda (_g2174421746_)
                                                   (_loop20869_
                                                    (cons _L21674_ _L21730_)
                                                    _g2174421746_
                                                    _K21147_))))
                                              _tl2169621727_
                                              _hd2169521724_)))
                                         (_g2168921713_ _g2169121717_)))))
                              (_g2168821750_ _L21672_))))
                        (_g2115021655_ _g2116021659_)))
                  _tl2117221669_
                  _hd2117121666_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2115021655_
                                                      _g2116021659_)))))
                                          (let ((_g2114822007_
                                                 (lambda (_g2116021758_)
                                                   (if (gx#stx-pair?
                                                        _g2116021758_)
                                                       (let ((_e2116221761_
                                                              (gx#syntax-e
                                                               _g2116021758_)))
                                                         (let ((_hd2116321765_
                                                                (##car _e2116221761_))
                                                               (_tl2116421768_
                                                                (##cdr _e2116221761_)))
                                                           (if (gx#stx-datum?
                                                                _hd2116321765_)
                                                               (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _hd2116321765_)
                                   '?:)
                           (if (gx#stx-pair? _tl2116421768_)
                               (let ((_e2116521771_
                                      (gx#syntax-e _tl2116421768_)))
                                 (let ((_hd2116621775_ (##car _e2116521771_))
                                       (_tl2116721778_ (##cdr _e2116521771_)))
                                   ((lambda (_L21781_)
                                      (let ((_g2179721834_
                                             (lambda (_g2179821830_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2179821830_))))
                                        (let ((_g2179621845_
                                               (lambda (_g2179821838_)
                                                 ((lambda ()
                                                    (_K21147_ _vars21146_))))))
                                          (let ((_g2179521923_
                                                 (lambda (_g2179821849_)
                                                   (if (gx#stx-pair?
                                                        _g2179821849_)
                                                       (let ((_e2181421852_
                                                              (gx#syntax-e
                                                               _g2179821849_)))
                                                         (let ((_hd2181521856_
                                                                (##car _e2181421852_))
                                                               (_tl2181621859_
                                                                (##cdr _e2181421852_)))
                                                           (if (gx#stx-pair?
                                                                _tl2181621859_)
                                                               (let ((_e2181721862_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2181621859_)))
                         (let ((_hd2181821866_ (##car _e2181721862_))
                               (_tl2181921869_ (##cdr _e2181721862_)))
                           (if (gx#stx-datum? _hd2181821866_)
                               (if (equal? (gx#stx-e _hd2181821866_) '::)
                                   (if (gx#stx-pair? _tl2181921869_)
                                       (let ((_e2182021872_
                                              (gx#syntax-e _tl2181921869_)))
                                         (let ((_hd2182121876_
                                                (##car _e2182021872_))
                                               (_tl2182221879_
                                                (##cdr _e2182021872_)))
                                           (if (gx#stx-pair? _tl2182221879_)
                                               (let ((_e2182321882_
                                                      (gx#syntax-e
                                                       _tl2182221879_)))
                                                 (let ((_hd2182421886_
                                                        (##car _e2182321882_))
                                                       (_tl2182521889_
                                                        (##cdr _e2182321882_)))
                                                   (if (gx#stx-datum?
                                                        _hd2182421886_)
                                                       (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd2182421886_)
                           '=>:)
                   (if (gx#stx-pair? _tl2182521889_)
                       (let ((_e2182621892_ (gx#syntax-e _tl2182521889_)))
                         (let ((_hd2182721896_ (##car _e2182621892_))
                               (_tl2182821899_ (##cdr _e2182621892_)))
                           (if (gx#stx-null? _tl2182821899_)
                               ((lambda (_L21902_)
                                  (_loop20869_ _L21902_ _vars21146_ _K21147_))
                                _hd2182721896_)
                               (_g2179621845_ _g2179821849_))))
                       (_g2179621845_ _g2179821849_))
                   (_g2179621845_ _g2179821849_))
               (_g2179621845_ _g2179821849_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2179621845_ _g2179821849_))))
                                       (_g2179621845_ _g2179821849_))
                                   (_g2179621845_ _g2179821849_))
                               (_g2179621845_ _g2179821849_))))
                       (_g2179621845_ _g2179821849_))))
               (_g2179621845_ _g2179821849_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_g2179421975_
                                                   (lambda (_g2179821927_)
                                                     (if (gx#stx-pair?
                                                          _g2179821927_)
                                                         (let ((_e2180421930_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2179821927_)))
                   (let ((_hd2180521934_ (##car _e2180421930_))
                         (_tl2180621937_ (##cdr _e2180421930_)))
                     (if (gx#stx-pair? _tl2180621937_)
                         (let ((_e2180721940_ (gx#syntax-e _tl2180621937_)))
                           (let ((_hd2180821944_ (##car _e2180721940_))
                                 (_tl2180921947_ (##cdr _e2180721940_)))
                             (if (gx#stx-datum? _hd2180821944_)
                                 (if (equal? (gx#stx-e _hd2180821944_) '=>:)
                                     (if (gx#stx-pair? _tl2180921947_)
                                         (let ((_e2181021950_
                                                (gx#syntax-e _tl2180921947_)))
                                           (let ((_hd2181121954_
                                                  (##car _e2181021950_))
                                                 (_tl2181221957_
                                                  (##cdr _e2181021950_)))
                                             (if (gx#stx-null? _tl2181221957_)
                                                 ((lambda (_L21960_)
                                                    (_loop20869_
                                                     _L21960_
                                                     _vars21146_
                                                     _K21147_))
                                                  _hd2181121954_)
                                                 (_g2179521923_
                                                  _g2179821927_))))
                                         (_g2179521923_ _g2179821927_))
                                     (_g2179521923_ _g2179821927_))
                                 (_g2179521923_ _g2179821927_))))
                         (_g2179521923_ _g2179821927_))))
                 (_g2179521923_ _g2179821927_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g2179322003_
                                                     (lambda (_g2179821979_)
                                                       (if (gx#stx-pair?
                                                            _g2179821979_)
                                                           (let ((_e2180021982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g2179821979_)))
                     (let ((_hd2180121986_ (##car _e2180021982_))
                           (_tl2180221989_ (##cdr _e2180021982_)))
                       (if (gx#stx-null? _tl2180221989_)
                           ((lambda (_L21992_)
                              (_loop20869_ _L21992_ _vars21146_ _K21147_))
                            _hd2180121986_)
                           (_g2179421975_ _g2179821979_))))
                   (_g2179421975_ _g2179821979_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2179322003_ _L21781_)))))))
                                    _tl2116721778_)))
                               (_g2114921754_ _g2116021758_))
                           (_g2114921754_ _g2116021758_))
                       (_g2114921754_ _g2116021758_))))
               (_g2114921754_ _g2116021758_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2114822007_
                                             _ptree21144_)))))))))))))))
                 (_loop-vector20871_
                  (lambda (_body21032_ _vars21034_ _K21035_)
                    (let ((_g2103821059_
                           (lambda (_g2103921055_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2103921055_))))
                      (let ((_g2103721100_
                             (lambda (_g2103921063_)
                               (if (gx#stx-pair? _g2103921063_)
                                   (let ((_e2104821066_
                                          (gx#syntax-e _g2103921063_)))
                                     (let ((_hd2104921070_
                                            (##car _e2104821066_))
                                           (_tl2105021073_
                                            (##cdr _e2104821066_)))
                                       (if (gx#stx-datum? _hd2104921070_)
                                           (if (equal? (gx#stx-e
                                                        _hd2104921070_)
                                                       'list:)
                                               (if (gx#stx-pair?
                                                    _tl2105021073_)
                                                   (let ((_e2105121076_
                                                          (gx#syntax-e
                                                           _tl2105021073_)))
                                                     (let ((_hd2105221080_
                                                            (##car _e2105121076_))
                                                           (_tl2105321083_
                                                            (##cdr _e2105121076_)))
                                                       (if (gx#stx-null?
                                                            _tl2105321083_)
                                                           ((lambda (_L21086_)
                                                              (_loop20869_
                                                               _L21086_
                                                               _vars21034_
                                                               _K21035_))
                                                            _hd2105221080_)
                                                           (_g2103821059_
                                                            _g2103921063_))))
                                                   (_g2103821059_
                                                    _g2103921063_))
                                               (_g2103821059_ _g2103921063_))
                                           (_g2103821059_ _g2103921063_))))
                                   (_g2103821059_ _g2103921063_)))))
                        (let ((_g2103621140_
                               (lambda (_g2103921104_)
                                 (if (gx#stx-pair? _g2103921104_)
                                     (let ((_e2104121107_
                                            (gx#syntax-e _g2103921104_)))
                                       (let ((_hd2104221111_
                                              (##car _e2104121107_))
                                             (_tl2104321114_
                                              (##cdr _e2104121107_)))
                                         (if (gx#stx-datum? _hd2104221111_)
                                             (if (equal? (gx#stx-e
                                                          _hd2104221111_)
                                                         'simple:)
                                                 (if (gx#stx-pair?
                                                      _tl2104321114_)
                                                     (let ((_e2104421117_
                                                            (gx#syntax-e
                                                             _tl2104321114_)))
                                                       (let ((_hd2104521121_
                                                              (##car _e2104421117_))
                                                             (_tl2104621124_
                                                              (##cdr _e2104421117_)))
                                                         (if (gx#stx-null?
                                                              _tl2104621124_)
                                                             ((lambda (_L21127_)
                                                                (_loop-list20872_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L21127_
                         _vars21034_
                         _K21035_))
                      _hd2104521121_)
                     (_g2103721100_ _g2103921104_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2103721100_
                                                      _g2103921104_))
                                                 (_g2103721100_ _g2103921104_))
                                             (_g2103721100_ _g2103921104_))))
                                     (_g2103721100_ _g2103921104_)))))
                          (_g2103621140_ _body21032_))))))
                 (_loop-list20872_
                  (lambda (_rest20962_ _vars20964_ _K20965_)
                    (let ((_g2096820980_
                           (lambda (_g2096920976_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2096920976_))))
                      (let ((_g2096720991_
                             (lambda (_g2096920984_)
                               ((lambda () (_K20965_ _vars20964_))))))
                        (let ((_g2096621028_
                               (lambda (_g2096920995_)
                                 (if (gx#stx-pair? _g2096920995_)
                                     (let ((_e2097220998_
                                            (gx#syntax-e _g2096920995_)))
                                       (let ((_hd2097321002_
                                              (##car _e2097220998_))
                                             (_tl2097421005_
                                              (##cdr _e2097220998_)))
                                         ((lambda (_L21008_ _L21010_)
                                            (_loop20869_
                                             _L21010_
                                             _vars20964_
                                             (lambda (_g2102221024_)
                                               (_loop-list20872_
                                                _L21008_
                                                _g2102221024_
                                                _K20965_))))
                                          _tl2097421005_
                                          _hd2097321002_)))
                                     (_g2096720991_ _g2096920995_)))))
                          (_g2096621028_ _rest20962_))))))
                 (_loop-class-list20873_
                  (lambda (_rest20875_ _vars20877_ _K20878_)
                    (let ((_g2088120896_
                           (lambda (_g2088220892_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2088220892_))))
                      (let ((_g2088020907_
                             (lambda (_g2088220900_)
                               ((lambda () (_K20878_ _vars20877_))))))
                        (let ((_g2087920958_
                               (lambda (_g2088220911_)
                                 (if (gx#stx-pair? _g2088220911_)
                                     (let ((_e2088520914_
                                            (gx#syntax-e _g2088220911_)))
                                       (let ((_hd2088620918_
                                              (##car _e2088520914_))
                                             (_tl2088720921_
                                              (##cdr _e2088520914_)))
                                         (if (gx#stx-pair? _tl2088720921_)
                                             (let ((_e2088820924_
                                                    (gx#syntax-e
                                                     _tl2088720921_)))
                                               (let ((_hd2088920928_
                                                      (##car _e2088820924_))
                                                     (_tl2089020931_
                                                      (##cdr _e2088820924_)))
                                                 ((lambda (_L20934_ _L20936_)
                                                    (_loop20869_
                                                     _L20936_
                                                     _vars20877_
                                                     (lambda (_g2095220954_)
                                                       (_loop-class-list20873_
                                                        _L20934_
                                                        _g2095220954_
                                                        _K20878_))))
                                                  _tl2089020931_
                                                  _hd2088920928_)))
                                             (_g2088020907_ _g2088220911_))))
                                     (_g2088020907_ _g2088220911_)))))
                          (_g2087920958_ _rest20875_)))))))
          (_loop20869_ _ptree20866_ '() values))))
    (define |gerbil/core::<match>[1]#generate-match1|
      (lambda (_stx17779_ _tgt17781_ _ptree17782_ _K17783_ _E17784_)
        (letrec ((_generate117786_
                  (lambda (_tgt19316_ _ptree19318_ _K19319_ _E19320_)
                    (let ((_g1932219330_
                           (lambda (_g1932319326_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1932319326_))))
                      (let ((_g1932120862_
                             (lambda (_g1932319334_)
                               ((lambda (_L19337_)
                                  (let ()
                                    (let ((_g1936319478_
                                           (lambda (_g1936419474_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1936419474_))))
                                      (let ((_g1936219499_
                                             (lambda (_g1936419482_)
                                               (if (gx#stx-pair? _g1936419482_)
                                                   (let ((_e1947019485_
                                                          (gx#syntax-e
                                                           _g1936419482_)))
                                                     (let ((_hd1947119489_
                                                            (##car _e1947019485_))
                                                           (_tl1947219492_
                                                            (##cdr _e1947019485_)))
                                                       (if (gx#stx-datum?
                                                            _hd1947119489_)
                                                           (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1947119489_)
                               'any:)
                       (if (gx#stx-null? _tl1947219492_)
                           ((lambda () _K19319_))
                           (_g1936319478_ _g1936419482_))
                       (_g1936319478_ _g1936419482_))
                   (_g1936319478_ _g1936419482_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1936319478_
                                                    _g1936419482_)))))
                                        (let ((_g1936119542_
                                               (lambda (_g1936419503_)
                                                 (if (gx#stx-pair?
                                                      _g1936419503_)
                                                     (let ((_e1946419506_
                                                            (gx#syntax-e
                                                             _g1936419503_)))
                                                       (let ((_hd1946519510_
                                                              (##car _e1946419506_))
                                                             (_tl1946619513_
                                                              (##cdr _e1946419506_)))
                                                         (if (gx#stx-datum?
                                                              _hd1946519510_)
                                                             (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _hd1946519510_)
                                 'var:)
                         (if (gx#stx-pair? _tl1946619513_)
                             (let ((_e1946719516_
                                    (gx#syntax-e _tl1946619513_)))
                               (let ((_hd1946819520_ (##car _e1946719516_))
                                     (_tl1946919523_ (##cdr _e1946719516_)))
                                 (if (gx#stx-null? _tl1946919523_)
                                     ((lambda (_L19526_)
                                        (cons (gx#datum->syntax '#f 'let)
                                              (cons (cons (cons _L19526_
                                                                (cons _L19337_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _K19319_ '()))))
                                      _hd1946819520_)
                                     (_g1936219499_ _g1936419503_))))
                             (_g1936219499_ _g1936419503_))
                         (_g1936219499_ _g1936419503_))
                     (_g1936219499_ _g1936419503_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1936219499_
                                                      _g1936419503_)))))
                                          (let ((_g1936019624_
                                                 (lambda (_g1936419546_)
                                                   (if (gx#stx-pair?
                                                        _g1936419546_)
                                                       (let ((_e1945719549_
                                                              (gx#syntax-e
                                                               _g1936419546_)))
                                                         (let ((_hd1945819553_
                                                                (##car _e1945719549_))
                                                               (_tl1945919556_
                                                                (##cdr _e1945719549_)))
                                                           (if (gx#stx-datum?
                                                                _hd1945819553_)
                                                               (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _hd1945819553_)
                                   'datum:)
                           (if (gx#stx-pair? _tl1945919556_)
                               (let ((_e1946019559_
                                      (gx#syntax-e _tl1945919556_)))
                                 (let ((_hd1946119563_ (##car _e1946019559_))
                                       (_tl1946219566_ (##cdr _e1946019559_)))
                                   (if (gx#stx-null? _tl1946219566_)
                                       ((lambda (_L19569_)
                                          (let ((_g1958219590_
                                                 (lambda (_g1958319586_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1958319586_))))
                                            (let ((_g1958119609_
                                                   (lambda (_g1958319594_)
                                                     ((lambda (_L19597_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'if)
                        (cons (cons _L19597_
                                    (cons _L19337_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L19569_ '()))
                                                '())))
                              (cons _K19319_ (cons _E19320_ '()))))))
              _g1958319594_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1958119609_
                                               (let ((_e19613_
                                                      (gx#stx-e _L19569_)))
                                                 (if (let ((_$e19616_
                                                            (symbol? _e19613_)))
                                                       (if _$e19616_
                                                           _$e19616_
                                                           (let ((_$e19620_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (keyword? _e19613_)))
                     (if _$e19620_ _$e19620_ (immediate? _e19613_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##eq?)
                                                     (if (number? _e19613_)
                                                         (gx#datum->syntax
                                                          '#f
                                                          'eqv?)
                                                         (gx#datum->syntax
                                                          '#f
                                                          'equal?))))))))
                                        _hd1946119563_)
                                       (_g1936119542_ _g1936419546_))))
                               (_g1936119542_ _g1936419546_))
                           (_g1936119542_ _g1936419546_))
                       (_g1936119542_ _g1936419546_))))
               (_g1936119542_ _g1936419546_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((_g1935919678_
                                                   (lambda (_g1936419628_)
                                                     (if (gx#stx-pair?
                                                          _g1936419628_)
                                                         (let ((_e1944719631_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1936419628_)))
                   (let ((_hd1944819635_ (##car _e1944719631_))
                         (_tl1944919638_ (##cdr _e1944719631_)))
                     (if (gx#stx-datum? _hd1944819635_)
                         (if (equal? (gx#stx-e _hd1944819635_) 'class:)
                             (if (gx#stx-pair? _tl1944919638_)
                                 (let ((_e1945019641_
                                        (gx#syntax-e _tl1944919638_)))
                                   (let ((_hd1945119645_ (##car _e1945019641_))
                                         (_tl1945219648_
                                          (##cdr _e1945019641_)))
                                     (if (gx#stx-pair? _tl1945219648_)
                                         (let ((_e1945319651_
                                                (gx#syntax-e _tl1945219648_)))
                                           (let ((_hd1945419655_
                                                  (##car _e1945319651_))
                                                 (_tl1945519658_
                                                  (##cdr _e1945319651_)))
                                             (if (gx#stx-null? _tl1945519658_)
                                                 ((lambda (_L19661_ _L19663_)
                                                    (_generate-class17792_
                                                     (gx#stx-e _L19663_)
                                                     _tgt19316_
                                                     _L19661_
                                                     _K19319_
                                                     _E19320_))
                                                  _hd1945419655_
                                                  _hd1945119645_)
                                                 (_g1936019624_
                                                  _g1936419628_))))
                                         (_g1936019624_ _g1936419628_))))
                                 (_g1936019624_ _g1936419628_))
                             (_g1936019624_ _g1936419628_))
                         (_g1936019624_ _g1936419628_))))
                 (_g1936019624_ _g1936419628_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g1935819732_
                                                     (lambda (_g1936419682_)
                                                       (if (gx#stx-pair?
                                                            _g1936419682_)
                                                           (let ((_e1943619685_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _g1936419682_)))
                     (let ((_hd1943719689_ (##car _e1943619685_))
                           (_tl1943819692_ (##cdr _e1943619685_)))
                       (if (gx#stx-datum? _hd1943719689_)
                           (if (equal? (gx#stx-e _hd1943719689_) 'struct:)
                               (if (gx#stx-pair? _tl1943819692_)
                                   (let ((_e1943919695_
                                          (gx#syntax-e _tl1943819692_)))
                                     (let ((_hd1944019699_
                                            (##car _e1943919695_))
                                           (_tl1944119702_
                                            (##cdr _e1943919695_)))
                                       (if (gx#stx-pair? _tl1944119702_)
                                           (let ((_e1944219705_
                                                  (gx#syntax-e
                                                   _tl1944119702_)))
                                             (let ((_hd1944319709_
                                                    (##car _e1944219705_))
                                                   (_tl1944419712_
                                                    (##cdr _e1944219705_)))
                                               (if (gx#stx-null?
                                                    _tl1944419712_)
                                                   ((lambda (_L19715_ _L19717_)
                                                      (_generate-struct17791_
                                                       (gx#stx-e _L19717_)
                                                       _tgt19316_
                                                       _L19715_
                                                       _K19319_
                                                       _E19320_))
                                                    _hd1944319709_
                                                    _hd1944019699_)
                                                   (_g1935919678_
                                                    _g1936419682_))))
                                           (_g1935919678_ _g1936419682_))))
                                   (_g1935919678_ _g1936419682_))
                               (_g1935919678_ _g1936419682_))
                           (_g1935919678_ _g1936419682_))))
                   (_g1935919678_ _g1936419682_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_g1935719910_
                                                       (lambda (_g1936419736_)
                                                         (if (gx#stx-pair?
                                                              _g1936419736_)
                                                             (let ((_e1942819739_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g1936419736_)))
                       (let ((_hd1942919743_ (##car _e1942819739_))
                             (_tl1943019746_ (##cdr _e1942819739_)))
                         (if (gx#stx-datum? _hd1942919743_)
                             (if (equal? (gx#stx-e _hd1942919743_) 'vector:)
                                 (if (gx#stx-pair? _tl1943019746_)
                                     (let ((_e1943119749_
                                            (gx#syntax-e _tl1943019746_)))
                                       (let ((_hd1943219753_
                                              (##car _e1943119749_))
                                             (_tl1943319756_
                                              (##cdr _e1943119749_)))
                                         (if (gx#stx-null? _tl1943319756_)
                                             ((lambda (_L19759_)
                                                (let ((_g1977319794_
                                                       (lambda (_g1977419790_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1977419790_))))
                                                  (let ((_g1977219835_
                                                         (lambda (_g1977419798_)
                                                           (if (gx#stx-pair?
                                                                _g1977419798_)
                                                               (let ((_e1978319801_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1977419798_)))
                         (let ((_hd1978419805_ (##car _e1978319801_))
                               (_tl1978519808_ (##cdr _e1978319801_)))
                           (if (gx#stx-datum? _hd1978419805_)
                               (if (equal? (gx#stx-e _hd1978419805_) 'list:)
                                   (if (gx#stx-pair? _tl1978519808_)
                                       (let ((_e1978619811_
                                              (gx#syntax-e _tl1978519808_)))
                                         (let ((_hd1978719815_
                                                (##car _e1978619811_))
                                               (_tl1978819818_
                                                (##cdr _e1978619811_)))
                                           (if (gx#stx-null? _tl1978819818_)
                                               ((lambda (_L19821_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'if)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'vector?)
                            (cons _L19337_ '()))
                      (cons (_generate-list-vector17790_
                             _tgt19316_
                             _L19821_
                             (gx#datum->syntax '#f 'subvector->list)
                             '0
                             _K19319_
                             _E19320_)
                            (cons _E19320_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1978719815_)
                                               (_g1977319794_ _g1977419798_))))
                                       (_g1977319794_ _g1977419798_))
                                   (_g1977319794_ _g1977419798_))
                               (_g1977319794_ _g1977419798_))))
                       (_g1977319794_ _g1977419798_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g1977119906_
                                                           (lambda (_g1977419839_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1977419839_)
                         (let ((_e1977619842_ (gx#syntax-e _g1977419839_)))
                           (let ((_hd1977719846_ (##car _e1977619842_))
                                 (_tl1977819849_ (##cdr _e1977619842_)))
                             (if (gx#stx-datum? _hd1977719846_)
                                 (if (equal? (gx#stx-e _hd1977719846_)
                                             'simple:)
                                     (if (gx#stx-pair? _tl1977819849_)
                                         (let ((_e1977919852_
                                                (gx#syntax-e _tl1977819849_)))
                                           (let ((_hd1978019856_
                                                  (##car _e1977919852_))
                                                 (_tl1978119859_
                                                  (##cdr _e1977919852_)))
                                             (if (gx#stx-null? _tl1978119859_)
                                                 ((lambda (_L19862_)
                                                    (let ((_g1987519883_
                                                           (lambda (_g1987619879_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g1987619879_))))
                                                      (let ((_g1987419902_
                                                             (lambda (_g1987619887_)
                                                               ((lambda (_L19890_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons (gx#datum->syntax '#f 'and)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##vector?)
                                                          (cons _L19337_ '()))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fx=)
                        (cons (cons (gx#datum->syntax '#f '##vector-length)
                                    (cons _L19337_ '()))
                              (cons _L19890_ '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (_generate-simple-vector17789_
                                               _tgt19316_
                                               _L19862_
                                               '0
                                               _K19319_
                                               _E19320_)
                                              (cons _E19320_ '()))))))
                        _g1987619887_))))
                (_g1987419902_ (gx#stx-length _L19862_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1978019856_)
                                                 (_g1977219835_
                                                  _g1977419839_))))
                                         (_g1977219835_ _g1977419839_))
                                     (_g1977219835_ _g1977419839_))
                                 (_g1977219835_ _g1977419839_))))
                         (_g1977219835_ _g1977419839_)))))
              (_g1977119906_ _L19759_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd1943219753_)
                                             (_g1935819732_ _g1936419736_))))
                                     (_g1935819732_ _g1936419736_))
                                 (_g1935819732_ _g1936419736_))
                             (_g1935819732_ _g1936419736_))))
                     (_g1935819732_ _g1936419736_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g1935620088_
                                                         (lambda (_g1936419914_)
                                                           (if (gx#stx-pair?
                                                                _g1936419914_)
                                                               (let ((_e1942119917_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1936419914_)))
                         (let ((_hd1942219921_ (##car _e1942119917_))
                               (_tl1942319924_ (##cdr _e1942119917_)))
                           (if (gx#stx-datum? _hd1942219921_)
                               (if (equal? (gx#stx-e _hd1942219921_) 'values:)
                                   (if (gx#stx-pair? _tl1942319924_)
                                       (let ((_e1942419927_
                                              (gx#syntax-e _tl1942319924_)))
                                         (let ((_hd1942519931_
                                                (##car _e1942419927_))
                                               (_tl1942619934_
                                                (##cdr _e1942419927_)))
                                           (if (gx#stx-null? _tl1942619934_)
                                               ((lambda (_L19937_)
                                                  (let ((_g1995119972_
                                                         (lambda (_g1995219968_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g1995219968_))))
                                                    (let ((_g1995020013_
                                                           (lambda (_g1995219976_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1995219976_)
                         (let ((_e1996119979_ (gx#syntax-e _g1995219976_)))
                           (let ((_hd1996219983_ (##car _e1996119979_))
                                 (_tl1996319986_ (##cdr _e1996119979_)))
                             (if (gx#stx-datum? _hd1996219983_)
                                 (if (equal? (gx#stx-e _hd1996219983_) 'list:)
                                     (if (gx#stx-pair? _tl1996319986_)
                                         (let ((_e1996419989_
                                                (gx#syntax-e _tl1996319986_)))
                                           (let ((_hd1996519993_
                                                  (##car _e1996419989_))
                                                 (_tl1996619996_
                                                  (##cdr _e1996419989_)))
                                             (if (gx#stx-null? _tl1996619996_)
                                                 ((lambda (_L19999_)
                                                    (_generate-list-vector17790_
                                                     _tgt19316_
                                                     _L19999_
                                                     (gx#datum->syntax
                                                      '#f
                                                      'values->list)
                                                     '0
                                                     _K19319_
                                                     _E19320_))
                                                  _hd1996519993_)
                                                 (_g1995119972_
                                                  _g1995219976_))))
                                         (_g1995119972_ _g1995219976_))
                                     (_g1995119972_ _g1995219976_))
                                 (_g1995119972_ _g1995219976_))))
                         (_g1995119972_ _g1995219976_)))))
              (let ((_g1994920084_
                     (lambda (_g1995220017_)
                       (if (gx#stx-pair? _g1995220017_)
                           (let ((_e1995420020_ (gx#syntax-e _g1995220017_)))
                             (let ((_hd1995520024_ (##car _e1995420020_))
                                   (_tl1995620027_ (##cdr _e1995420020_)))
                               (if (gx#stx-datum? _hd1995520024_)
                                   (if (equal? (gx#stx-e _hd1995520024_)
                                               'simple:)
                                       (if (gx#stx-pair? _tl1995620027_)
                                           (let ((_e1995720030_
                                                  (gx#syntax-e
                                                   _tl1995620027_)))
                                             (let ((_hd1995820034_
                                                    (##car _e1995720030_))
                                                   (_tl1995920037_
                                                    (##cdr _e1995720030_)))
                                               (if (gx#stx-null?
                                                    _tl1995920037_)
                                                   ((lambda (_L20040_)
                                                      (let ((_g2005320061_
                                                             (lambda (_g2005420057_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2005420057_))))
                                                        (let ((_g2005220080_
                                                               (lambda (_g2005420065_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L20068_)
                            (let ()
                              (cons (gx#datum->syntax '#f 'if)
                                    (cons (cons (gx#datum->syntax '#f '##fx=)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'values-count)
                                                            (cons _L19337_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _L20068_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (_generate-simple-vector17789_
                                                 _tgt19316_
                                                 _L20040_
                                                 '0
                                                 _K19319_
                                                 _E19320_)
                                                (cons _E19320_ '()))))))
                          _g2005420065_))))
                  (_g2005220080_ (gx#stx-length _L20040_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1995820034_)
                                                   (_g1995020013_
                                                    _g1995220017_))))
                                           (_g1995020013_ _g1995220017_))
                                       (_g1995020013_ _g1995220017_))
                                   (_g1995020013_ _g1995220017_))))
                           (_g1995020013_ _g1995220017_)))))
                (_g1994920084_ _L19937_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1942519931_)
                                               (_g1935719910_ _g1936419914_))))
                                       (_g1935719910_ _g1936419914_))
                                   (_g1935719910_ _g1936419914_))
                               (_g1935719910_ _g1936419914_))))
                       (_g1935719910_ _g1936419914_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g1935520159_
                                                           (lambda (_g1936420092_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1936420092_)
                         (let ((_e1941420095_ (gx#syntax-e _g1936420092_)))
                           (let ((_hd1941520099_ (##car _e1941420095_))
                                 (_tl1941620102_ (##cdr _e1941420095_)))
                             (if (gx#stx-datum? _hd1941520099_)
                                 (if (equal? (gx#stx-e _hd1941520099_) 'box:)
                                     (if (gx#stx-pair? _tl1941620102_)
                                         (let ((_e1941720105_
                                                (gx#syntax-e _tl1941620102_)))
                                           (let ((_hd1941820109_
                                                  (##car _e1941720105_))
                                                 (_tl1941920112_
                                                  (##cdr _e1941720105_)))
                                             (if (gx#stx-null? _tl1941920112_)
                                                 ((lambda (_L20115_)
                                                    (let ((_g2012820136_
                                                           (lambda (_g2012920132_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g2012920132_))))
                                                      (let ((_g2012720155_
                                                             (lambda (_g2012920140_)
                                                               ((lambda (_L20143_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons (gx#datum->syntax '#f '##box?)
                                              (cons _L19337_ '()))
                                        (cons (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L20143_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f '##unbox)
                                          (cons _L19337_ '()))
                                    '()))
                        '())
                  (cons (_generate117786_ _L20143_ _L20115_ _K19319_ _E19320_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _E19320_ '()))))))
                        _g2012920140_))))
                (_g2012720155_ (gx#genident 'e)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1941820109_)
                                                 (_g1935620088_
                                                  _g1936420092_))))
                                         (_g1935620088_ _g1936420092_))
                                     (_g1935620088_ _g1936420092_))
                                 (_g1935620088_ _g1936420092_))))
                         (_g1935620088_ _g1936420092_)))))
              (let ((_g1935420213_
                     (lambda (_g1936420163_)
                       (if (gx#stx-pair? _g1936420163_)
                           (let ((_e1940420166_ (gx#syntax-e _g1936420163_)))
                             (let ((_hd1940520170_ (##car _e1940420166_))
                                   (_tl1940620173_ (##cdr _e1940420166_)))
                               (if (gx#stx-datum? _hd1940520170_)
                                   (if (equal? (gx#stx-e _hd1940520170_)
                                               'splice:)
                                       (if (gx#stx-pair? _tl1940620173_)
                                           (let ((_e1940720176_
                                                  (gx#syntax-e
                                                   _tl1940620173_)))
                                             (let ((_hd1940820180_
                                                    (##car _e1940720176_))
                                                   (_tl1940920183_
                                                    (##cdr _e1940720176_)))
                                               (if (gx#stx-pair?
                                                    _tl1940920183_)
                                                   (let ((_e1941020186_
                                                          (gx#syntax-e
                                                           _tl1940920183_)))
                                                     (let ((_hd1941120190_
                                                            (##car _e1941020186_))
                                                           (_tl1941220193_
                                                            (##cdr _e1941020186_)))
                                                       (if (gx#stx-null?
                                                            _tl1941220193_)
                                                           ((lambda (_L20196_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L20198_)
                      (_generate-splice17788_
                       _tgt19316_
                       _L20198_
                       _L20196_
                       _K19319_
                       _E19320_))
                    _hd1941120190_
                    _hd1940820180_)
                   (_g1935520159_ _g1936420163_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1935520159_
                                                    _g1936420163_))))
                                           (_g1935520159_ _g1936420163_))
                                       (_g1935520159_ _g1936420163_))
                                   (_g1935520159_ _g1936420163_))))
                           (_g1935520159_ _g1936420163_)))))
                (let ((_g1935320234_
                       (lambda (_g1936420217_)
                         (if (gx#stx-pair? _g1936420217_)
                             (let ((_e1939920220_ (gx#syntax-e _g1936420217_)))
                               (let ((_hd1940020224_ (##car _e1939920220_))
                                     (_tl1940120227_ (##cdr _e1939920220_)))
                                 (if (gx#stx-datum? _hd1940020224_)
                                     (if (equal? (gx#stx-e _hd1940020224_)
                                                 'null:)
                                         (if (gx#stx-null? _tl1940120227_)
                                             ((lambda ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'if)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '##null?)
                          (cons _L19337_ '()))
                    (cons _K19319_ (cons _E19320_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1935420213_ _g1936420217_))
                                         (_g1935420213_ _g1936420217_))
                                     (_g1935420213_ _g1936420217_))))
                             (_g1935420213_ _g1936420217_)))))
                  (let ((_g1935220353_
                         (lambda (_g1936420238_)
                           (if (gx#stx-pair? _g1936420238_)
                               (let ((_e1939020241_
                                      (gx#syntax-e _g1936420238_)))
                                 (let ((_hd1939120245_ (##car _e1939020241_))
                                       (_tl1939220248_ (##cdr _e1939020241_)))
                                   (if (gx#stx-datum? _hd1939120245_)
                                       (if (equal? (gx#stx-e _hd1939120245_)
                                                   'cons:)
                                           (if (gx#stx-pair? _tl1939220248_)
                                               (let ((_e1939320251_
                                                      (gx#syntax-e
                                                       _tl1939220248_)))
                                                 (let ((_hd1939420255_
                                                        (##car _e1939320251_))
                                                       (_tl1939520258_
                                                        (##cdr _e1939320251_)))
                                                   (if (gx#stx-pair?
                                                        _tl1939520258_)
                                                       (let ((_e1939620261_
                                                              (gx#syntax-e
                                                               _tl1939520258_)))
                                                         (let ((_hd1939720265_
                                                                (##car _e1939620261_))
                                                               (_tl1939820268_
                                                                (##cdr _e1939620261_)))
                                                           (if (gx#stx-null?
                                                                _tl1939820268_)
                                                               ((lambda (_L20271_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L20273_)
                          (let ((_g2028920304_
                                 (lambda (_g2029020300_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2029020300_))))
                            (let ((_g2028820349_
                                   (lambda (_g2029020308_)
                                     (if (gx#stx-pair? _g2029020308_)
                                         (let ((_e2029320311_
                                                (gx#syntax-e _g2029020308_)))
                                           (let ((_hd2029420315_
                                                  (##car _e2029320311_))
                                                 (_tl2029520318_
                                                  (##cdr _e2029320311_)))
                                             (if (gx#stx-pair? _tl2029520318_)
                                                 (let ((_e2029620321_
                                                        (gx#syntax-e
                                                         _tl2029520318_)))
                                                   (let ((_hd2029720325_
                                                          (##car _e2029620321_))
                                                         (_tl2029820328_
                                                          (##cdr _e2029620321_)))
                                                     (if (gx#stx-null?
                                                          _tl2029820328_)
                                                         ((lambda (_L20331_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L20333_)
                    (let ()
                      (cons (gx#datum->syntax '#f 'if)
                            (cons (cons (gx#datum->syntax '#f '##pair?)
                                        (cons _L19337_ '()))
                                  (cons (cons (gx#datum->syntax '#f 'let)
                                              (cons (cons (cons _L20333_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     '##car)
                                    (cons _L19337_ '()))
                              '()))
                  (cons (cons _L20331_
                              (cons (cons (gx#datum->syntax '#f '##cdr)
                                          (cons _L19337_ '()))
                                    '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (_generate117786_
                                                           _L20333_
                                                           _L20273_
                                                           (_generate117786_
                                                            _L20331_
                                                            _L20271_
                                                            _K19319_
                                                            _E19320_)
                                                           _E19320_)
                                                          '())))
                                        (cons _E19320_ '()))))))
                  _hd2029720325_
                  _hd2029420315_)
                 (_g2028920304_ _g2029020308_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2028920304_
                                                  _g2029020308_))))
                                         (_g2028920304_ _g2029020308_)))))
                              (_g2028820349_
                               (list (gx#genident 'hd) (gx#genident 'tl))))))
                        _hd1939720265_
                        _hd1939420255_)
                       (_g1935320234_ _g1936420238_))))
               (_g1935320234_ _g1936420238_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1935320234_ _g1936420238_))
                                           (_g1935320234_ _g1936420238_))
                                       (_g1935320234_ _g1936420238_))))
                               (_g1935320234_ _g1936420238_)))))
                    (let ((_g1935120393_
                           (lambda (_g1936420357_)
                             (if (gx#stx-pair? _g1936420357_)
                                 (let ((_e1938220360_
                                        (gx#syntax-e _g1936420357_)))
                                   (let ((_hd1938320364_ (##car _e1938220360_))
                                         (_tl1938420367_
                                          (##cdr _e1938220360_)))
                                     (if (gx#stx-datum? _hd1938320364_)
                                         (if (equal? (gx#stx-e _hd1938320364_)
                                                     'not:)
                                             (if (gx#stx-pair? _tl1938420367_)
                                                 (let ((_e1938520370_
                                                        (gx#syntax-e
                                                         _tl1938420367_)))
                                                   (let ((_hd1938620374_
                                                          (##car _e1938520370_))
                                                         (_tl1938720377_
                                                          (##cdr _e1938520370_)))
                                                     (if (gx#stx-null?
                                                          _tl1938720377_)
                                                         ((lambda (_L20380_)
                                                            (_generate117786_
                                                             _tgt19316_
                                                             _L20380_
                                                             _E19320_
                                                             _K19319_))
                                                          _hd1938620374_)
                                                         (_g1935220353_
                                                          _g1936420357_))))
                                                 (_g1935220353_ _g1936420357_))
                                             (_g1935220353_ _g1936420357_))
                                         (_g1935220353_ _g1936420357_))))
                                 (_g1935220353_ _g1936420357_)))))
                      (let ((_g1935020481_
                             (lambda (_g1936420397_)
                               (if (gx#stx-pair? _g1936420397_)
                                   (let ((_e1937820400_
                                          (gx#syntax-e _g1936420397_)))
                                     (let ((_hd1937920404_
                                            (##car _e1937820400_))
                                           (_tl1938020407_
                                            (##cdr _e1937820400_)))
                                       (if (gx#stx-datum? _hd1937920404_)
                                           (if (equal? (gx#stx-e
                                                        _hd1937920404_)
                                                       'or:)
                                               ((lambda (_L20410_)
                                                  (let ((_g2042220434_
                                                         (lambda (_g2042320430_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2042320430_))))
                                                    (let ((_g2042120445_
                                                           (lambda (_g2042320438_)
                                                             ((lambda ()
                                                                _E19320_)))))
                                                      (let ((_g2042020477_
                                                             (lambda (_g2042320449_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2042320449_)
                           (let ((_e2042620452_ (gx#syntax-e _g2042320449_)))
                             (let ((_hd2042720456_ (##car _e2042620452_))
                                   (_tl2042820459_ (##cdr _e2042620452_)))
                               ((lambda (_L20462_ _L20464_)
                                  (_generate117786_
                                   _tgt19316_
                                   _L20464_
                                   _K19319_
                                   (_generate117786_
                                    _tgt19316_
                                    (cons 'or: _L20462_)
                                    _K19319_
                                    _E19320_)))
                                _tl2042820459_
                                _hd2042720456_)))
                           (_g2042120445_ _g2042320449_)))))
                (_g2042020477_ _L20410_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl1938020407_)
                                               (_g1935120393_ _g1936420397_))
                                           (_g1935120393_ _g1936420397_))))
                                   (_g1935120393_ _g1936420397_)))))
                        (let ((_g1934920569_
                               (lambda (_g1936420485_)
                                 (if (gx#stx-pair? _g1936420485_)
                                     (let ((_e1937420488_
                                            (gx#syntax-e _g1936420485_)))
                                       (let ((_hd1937520492_
                                              (##car _e1937420488_))
                                             (_tl1937620495_
                                              (##cdr _e1937420488_)))
                                         (if (gx#stx-datum? _hd1937520492_)
                                             (if (equal? (gx#stx-e
                                                          _hd1937520492_)
                                                         'and:)
                                                 ((lambda (_L20498_)
                                                    (let ((_g2051020522_
                                                           (lambda (_g2051120518_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g2051120518_))))
                                                      (let ((_g2050920533_
                                                             (lambda (_g2051120526_)
                                                               ((lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _K19319_)))))
                (let ((_g2050820565_
                       (lambda (_g2051120537_)
                         (if (gx#stx-pair? _g2051120537_)
                             (let ((_e2051420540_ (gx#syntax-e _g2051120537_)))
                               (let ((_hd2051520544_ (##car _e2051420540_))
                                     (_tl2051620547_ (##cdr _e2051420540_)))
                                 ((lambda (_L20550_ _L20552_)
                                    (_generate117786_
                                     _tgt19316_
                                     _L20552_
                                     (_generate117786_
                                      _tgt19316_
                                      (cons 'and: _L20550_)
                                      _K19319_
                                      _E19320_)
                                     _E19320_))
                                  _tl2051620547_
                                  _hd2051520544_)))
                             (_g2050920533_ _g2051120537_)))))
                  (_g2050820565_ _L20498_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _tl1937620495_)
                                                 (_g1935020481_ _g1936420485_))
                                             (_g1935020481_ _g1936420485_))))
                                     (_g1935020481_ _g1936420485_)))))
                          (let ((_g1934820858_
                                 (lambda (_g1936420573_)
                                   (if (gx#stx-pair? _g1936420573_)
                                       (let ((_e1936720576_
                                              (gx#syntax-e _g1936420573_)))
                                         (let ((_hd1936820580_
                                                (##car _e1936720576_))
                                               (_tl1936920583_
                                                (##cdr _e1936720576_)))
                                           (if (gx#stx-datum? _hd1936820580_)
                                               (if (equal? (gx#stx-e
                                                            _hd1936820580_)
                                                           '?:)
                                                   (if (gx#stx-pair?
                                                        _tl1936920583_)
                                                       (let ((_e1937020586_
                                                              (gx#syntax-e
                                                               _tl1936920583_)))
                                                         (let ((_hd1937120590_
                                                                (##car _e1937020586_))
                                                               (_tl1937220593_
                                                                (##cdr _e1937020586_)))
                                                           ((lambda (_L20596_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L20598_)
                      (let ((_g2061420646_
                             (lambda (_g2061520642_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g2061520642_))))
                        (let ((_g2061320744_
                               (lambda (_g2061520650_)
                                 (if (gx#stx-pair? _g2061520650_)
                                     (let ((_e2062920653_
                                            (gx#syntax-e _g2061520650_)))
                                       (let ((_hd2063020657_
                                              (##car _e2062920653_))
                                             (_tl2063120660_
                                              (##cdr _e2062920653_)))
                                         (if (gx#stx-datum? _hd2063020657_)
                                             (if (equal? (gx#stx-e
                                                          _hd2063020657_)
                                                         '::)
                                                 (if (gx#stx-pair?
                                                      _tl2063120660_)
                                                     (let ((_e2063220663_
                                                            (gx#syntax-e
                                                             _tl2063120660_)))
                                                       (let ((_hd2063320667_
                                                              (##car _e2063220663_))
                                                             (_tl2063420670_
                                                              (##cdr _e2063220663_)))
                                                         (if (gx#stx-pair?
                                                              _tl2063420670_)
                                                             (let ((_e2063520673_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl2063420670_)))
                       (let ((_hd2063620677_ (##car _e2063520673_))
                             (_tl2063720680_ (##cdr _e2063520673_)))
                         (if (gx#stx-datum? _hd2063620677_)
                             (if (equal? (gx#stx-e _hd2063620677_) '=>:)
                                 (if (gx#stx-pair? _tl2063720680_)
                                     (let ((_e2063820683_
                                            (gx#syntax-e _tl2063720680_)))
                                       (let ((_hd2063920687_
                                              (##car _e2063820683_))
                                             (_tl2064020690_
                                              (##cdr _e2063820683_)))
                                         (if (gx#stx-null? _tl2064020690_)
                                             ((lambda (_L20693_ _L20695_)
                                                (let ((_g2071320721_
                                                       (lambda (_g2071420717_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g2071420717_))))
                                                  (let ((_g2071220740_
                                                         (lambda (_g2071420725_)
                                                           ((lambda (_L20728_)
                                                              (let ()
                                                                (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'if)
                              (cons (cons (gx#datum->syntax '#f '?)
                                          (cons _L20598_ (cons _L19337_ '())))
                                    (cons (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (cons _L20728_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _L20695_ (cons _L19337_ '())) '()))
                    '())
              (cons (_generate117786_ _L20728_ _L20693_ _K19319_ _E19320_)
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons _E19320_ '()))))))
                    _g2071420725_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2071220740_
                                                     (gx#genident 'e)))))
                                              _hd2063920687_
                                              _hd2063320667_)
                                             (_g2061420646_ _g2061520650_))))
                                     (_g2061420646_ _g2061520650_))
                                 (_g2061420646_ _g2061520650_))
                             (_g2061420646_ _g2061520650_))))
                     (_g2061420646_ _g2061520650_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2061420646_
                                                      _g2061520650_))
                                                 (_g2061420646_ _g2061520650_))
                                             (_g2061420646_ _g2061520650_))))
                                     (_g2061420646_ _g2061520650_)))))
                          (let ((_g2061220815_
                                 (lambda (_g2061520748_)
                                   (if (gx#stx-pair? _g2061520748_)
                                       (let ((_e2062120751_
                                              (gx#syntax-e _g2061520748_)))
                                         (let ((_hd2062220755_
                                                (##car _e2062120751_))
                                               (_tl2062320758_
                                                (##cdr _e2062120751_)))
                                           (if (gx#stx-datum? _hd2062220755_)
                                               (if (equal? (gx#stx-e
                                                            _hd2062220755_)
                                                           '=>:)
                                                   (if (gx#stx-pair?
                                                        _tl2062320758_)
                                                       (let ((_e2062420761_
                                                              (gx#syntax-e
                                                               _tl2062320758_)))
                                                         (let ((_hd2062520765_
                                                                (##car _e2062420761_))
                                                               (_tl2062620768_
                                                                (##cdr _e2062420761_)))
                                                           (if (gx#stx-null?
                                                                _tl2062620768_)
                                                               ((lambda (_L20771_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((_g2078420792_
                                 (lambda (_g2078520788_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2078520788_))))
                            (let ((_g2078320811_
                                   (lambda (_g2078520796_)
                                     ((lambda (_L20799_)
                                        (let ()
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (cons _L20799_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _L20598_ (cons _L19337_ '())) '()))
                    '())
              (cons (cons (gx#datum->syntax '#f 'if)
                          (cons _L20799_
                                (cons (_generate117786_
                                       _L20799_
                                       _L20771_
                                       _K19319_
                                       _E19320_)
                                      (cons _E19320_ '()))))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2078520796_))))
                              (_g2078320811_ (gx#genident 'e)))))
                        _hd2062520765_)
                       (_g2061320744_ _g2061520748_))))
               (_g2061320744_ _g2061520748_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2061320744_
                                                    _g2061520748_))
                                               (_g2061320744_ _g2061520748_))))
                                       (_g2061320744_ _g2061520748_)))))
                            (let ((_g2061120843_
                                   (lambda (_g2061520819_)
                                     (if (gx#stx-pair? _g2061520819_)
                                         (let ((_e2061720822_
                                                (gx#syntax-e _g2061520819_)))
                                           (let ((_hd2061820826_
                                                  (##car _e2061720822_))
                                                 (_tl2061920829_
                                                  (##cdr _e2061720822_)))
                                             (if (gx#stx-null? _tl2061920829_)
                                                 ((lambda (_L20832_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '?)
                              (cons _L20598_ (cons _L19337_ '())))
                        (cons (_generate117786_
                               _tgt19316_
                               _L20832_
                               _K19319_
                               _E19320_)
                              (cons _E19320_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd2061820826_)
                                                 (_g2061220815_
                                                  _g2061520819_))))
                                         (_g2061220815_ _g2061520819_)))))
                              (let ((_g2061020854_
                                     (lambda (_g2061520847_)
                                       (if (gx#stx-null? _g2061520847_)
                                           ((lambda ()
                                              (cons (gx#datum->syntax '#f 'if)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '?)
                        (cons _L20598_ (cons _L19337_ '())))
                  (cons _K19319_ (cons _E19320_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g2061120843_ _g2061520847_)))))
                                (_g2061020854_ _L20596_)))))))
                    _tl1937220593_
                    _hd1937120590_)))
               (_g1934920569_ _g1936420573_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1934920569_
                                                    _g1936420573_))
                                               (_g1934920569_ _g1936420573_))))
                                       (_g1934920569_ _g1936420573_)))))
                            (_g1934820858_ _ptree19318_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _g1932319334_))))
                        (_g1932120862_ _tgt19316_)))))
                 (_generate-splice17788_
                  (lambda (_tgt18688_ _hd18690_ _rest18691_ _K18692_ _E18693_)
                    (let ((_g1869518712_
                           (lambda (_g1869618708_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1869618708_))))
                      (let ((_g1869419312_
                             (lambda (_g1869618716_)
                               (if (gx#stx-pair/null? _g1869618716_)
                                   (if (fx>= (gx#stx-length _g1869618716_) '0)
                                       (let ((_g29556_
                                              (gx#syntax-split-splice
                                               _g1869618716_
                                               '0)))
                                         (begin
                                           (let ((_g29557_
                                                  (values-count _g29556_)))
                                             (if (not (fx= _g29557_ 2))
                                                 (error "Context expects 2 values"
                                                        _g29557_)))
                                           (let ((_target1869818719_
                                                  (values-ref _g29556_ 0))
                                                 (_tl1870018722_
                                                  (values-ref _g29556_ 1)))
                                             (if (gx#stx-null? _tl1870018722_)
                                                 (letrec ((_loop1870118725_
                                                           (lambda (_hd1869918729_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _var1870518732_)
                     (if (gx#stx-pair? _hd1869918729_)
                         (let ((_e1870218735_ (gx#syntax-e _hd1869918729_)))
                           (let ((_lp-hd1870318739_ (##car _e1870218735_))
                                 (_lp-tl1870418742_ (##cdr _e1870218735_)))
                             (_loop1870118725_
                              _lp-tl1870418742_
                              (cons _lp-hd1870318739_ _var1870518732_))))
                         (let ((_var1870618745_ (reverse _var1870518732_)))
                           ((lambda (_L18749_)
                              (let ()
                                (let ((_g1876518782_
                                       (lambda (_g1876618778_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1876618778_))))
                                  (let ((_g1876419300_
                                         (lambda (_g1876618786_)
                                           (if (gx#stx-pair/null?
                                                _g1876618786_)
                                               (if (fx>= (gx#stx-length
                                                          _g1876618786_)
                                                         '0)
                                                   (let ((_g29558_
                                                          (gx#syntax-split-splice
                                                           _g1876618786_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29559_
                                                              (values-count
                                                               _g29558_)))
                                                         (if (not (fx= _g29559_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29559_)))
               (let ((_target1876818789_ (values-ref _g29558_ 0))
                     (_tl1877018792_ (values-ref _g29558_ 1)))
                 (if (gx#stx-null? _tl1877018792_)
                     (letrec ((_loop1877118795_
                               (lambda (_hd1876918799_ _var-r1877518802_)
                                 (if (gx#stx-pair? _hd1876918799_)
                                     (let ((_e1877218805_
                                            (gx#syntax-e _hd1876918799_)))
                                       (let ((_lp-hd1877318809_
                                              (##car _e1877218805_))
                                             (_lp-tl1877418812_
                                              (##cdr _e1877218805_)))
                                         (_loop1877118795_
                                          _lp-tl1877418812_
                                          (cons _lp-hd1877318809_
                                                _var-r1877518802_))))
                                     (let ((_var-r1877618815_
                                            (reverse _var-r1877518802_)))
                                       ((lambda (_L18819_)
                                          (let ()
                                            (let ((_g1883618853_
                                                   (lambda (_g1883718849_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1883718849_))))
                                              (let ((_g1883519288_
                                                     (lambda (_g1883718857_)
                                                       (if (gx#stx-pair/null?
                                                            _g1883718857_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1883718857_)
                             '0)
                       (let ((_g29560_
                              (gx#syntax-split-splice _g1883718857_ '0)))
                         (begin
                           (let ((_g29561_ (values-count _g29560_)))
                             (if (not (fx= _g29561_ 2))
                                 (error "Context expects 2 values" _g29561_)))
                           (let ((_target1883918860_ (values-ref _g29560_ 0))
                                 (_tl1884118863_ (values-ref _g29560_ 1)))
                             (if (gx#stx-null? _tl1884118863_)
                                 (letrec ((_loop1884218866_
                                           (lambda (_hd1884018870_
                                                    _init1884618873_)
                                             (if (gx#stx-pair? _hd1884018870_)
                                                 (let ((_e1884318876_
                                                        (gx#syntax-e
                                                         _hd1884018870_)))
                                                   (let ((_lp-hd1884418880_
                                                          (##car _e1884318876_))
                                                         (_lp-tl1884518883_
                                                          (##cdr _e1884318876_)))
                                                     (_loop1884218866_
                                                      _lp-tl1884518883_
                                                      (cons _lp-hd1884418880_
                                                            _init1884618873_))))
                                                 (let ((_init1884718886_
                                                        (reverse _init1884618873_)))
                                                   ((lambda (_L18890_)
                                                      (let ()
                                                        (let ((_g1890718915_
                                                               (lambda (_g1890818911_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1890818911_))))
                  (let ((_g1890619284_
                         (lambda (_g1890818919_)
                           ((lambda (_L18922_)
                              (let ()
                                (let ((_g1893518943_
                                       (lambda (_g1893618939_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1893618939_))))
                                  (let ((_g1893419280_
                                         (lambda (_g1893618947_)
                                           ((lambda (_L18950_)
                                              (let ()
                                                (let ((_g1896318971_
                                                       (lambda (_g1896418967_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1896418967_))))
                                                  (let ((_g1896219276_
                                                         (lambda (_g1896418975_)
                                                           ((lambda (_L18978_)
                                                              (let ()
                                                                (let ((_g1899118999_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1899218995_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1899218995_))))
                          (let ((_g1899019272_
                                 (lambda (_g1899219003_)
                                   ((lambda (_L19006_)
                                      (let ()
                                        (let ((_g1901919027_
                                               (lambda (_g1902019023_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1902019023_))))
                                          (let ((_g1901819268_
                                                 (lambda (_g1902019031_)
                                                   ((lambda (_L19034_)
                                                      (let ()
                                                        (let ((_g1904719055_
                                                               (lambda (_g1904819051_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1904819051_))))
                  (let ((_g1904619264_
                         (lambda (_g1904819059_)
                           ((lambda (_L19062_)
                              (let ()
                                (let ((_g1907519083_
                                       (lambda (_g1907619079_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1907619079_))))
                                  (let ((_g1907419260_
                                         (lambda (_g1907619087_)
                                           ((lambda (_L19090_)
                                              (let ()
                                                (let ((_g1910319111_
                                                       (lambda (_g1910419107_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1910419107_))))
                                                  (let ((_g1910219245_
                                                         (lambda (_g1910419115_)
                                                           ((lambda (_L19118_)
                                                              (let ()
                                                                (let ((_g1913119139_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_g1913219135_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1913219135_))))
                          (let ((_g1913019233_
                                 (lambda (_g1913219143_)
                                   ((lambda (_L19146_)
                                      (let ()
                                        (let ((_g1915919167_
                                               (lambda (_g1916019163_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1916019163_))))
                                          (let ((_g1915819229_
                                                 (lambda (_g1916019171_)
                                                   ((lambda (_L19174_)
                                                      (let ()
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'letrec)
                        (cons (cons (cons _L18950_
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L19062_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (begin
                            '#!void
                            (foldr (lambda (_g1918819199_ _g1918919202_)
                                     (cons _g1918819199_ _g1918919202_))
                                   '()
                                   _L18749_)))
                    (cons _L19090_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (cons (cons _L19006_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'lambda)
                                                            (cons (cons _L19034_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _L19062_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1919019205_
                                                        _g1919119208_)
                                                 (cons _g1919019205_
                                                       _g1919119208_))
                                               '()
                                               _L18819_))))
                          (cons _L19174_ '())))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons _L18978_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons (cons _L19062_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1919219211_
                                                        _g1919319214_)
                                                 (cons _g1919219211_
                                                       _g1919319214_))
                                               '()
                                               _L18819_)))
                                (cons (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'pair?)
                                                        (cons _L19062_ '()))
                                                  (cons (cons _L19006_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '##car)
                                  (cons _L19062_ '()))
                            (cons _L19062_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g1919419217_
                                                    _g1919519220_)
                                             (cons _g1919419217_
                                                   _g1919519220_))
                                           '()
                                           _L18819_)))))
                (cons _L19146_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              (cons (cons _L18978_
                                          (cons _L18922_
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g1919619223_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1919719226_)
                   (cons _g1919619223_ _g1919719226_))
                 '()
                 _L18890_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1916019171_))))
                                            (_g1915819229_
                                             (_generate117786_
                                              _L19034_
                                              _hd18690_
                                              _L19118_
                                              _L19146_))))))
                                    _g1913219143_))))
                            (_g1913019233_
                             (cons _L18950_
                                   (cons _L19062_
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g1923619239_
                                                           _g1923719242_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'reverse)
                        (cons _g1923619239_ '()))
                  _g1923719242_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()
                                                  _L18819_)))))))))
                    _g1910419115_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1910219245_
                                                     (cons _L18978_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##cdr)
                               (cons _L19062_ '()))
                         (begin
                           (gx#syntax-check-splice-targets _L18819_ _L18749_)
                           (foldr (lambda (_g1924819252_
                                           _g1924919255_
                                           _g1925019257_)
                                    (cons (cons (gx#datum->syntax '#f 'cons)
                                                (cons _g1924919255_
                                                      (cons _g1924819252_
                                                            '())))
                                          _g1925019257_))
                                  '()
                                  _L18819_
                                  _L18749_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g1907619087_))))
                                    (_g1907419260_
                                     (_generate117786_
                                      _L19062_
                                      _rest18691_
                                      _K18692_
                                      _E18693_))))))
                            _g1904819059_))))
                    (_g1904619264_ (gx#genident 'rest))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1902019031_))))
                                            (_g1901819268_
                                             (gx#genident 'hd))))))
                                    _g1899219003_))))
                            (_g1899019272_ (gx#genident 'splice-try))))))
                    _g1896418975_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1896219276_
                                                     (gx#genident
                                                      'splice-loop))))))
                                            _g1893618947_))))
                                    (_g1893419280_
                                     (gx#genident 'splice-rest))))))
                            _g1890818919_))))
                    (_g1890619284_ _tgt18688_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _init1884718886_))))))
                                   (_loop1884218866_ _target1883918860_ '()))
                                 (_g1883618853_ _g1883718857_)))))
                       (_g1883618853_ _g1883718857_))
                   (_g1883618853_ _g1883718857_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1883519288_
                                                 (make-list
                                                  (gx#stx-length
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g1929119294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1929219297_)
                      (cons _g1929119294_ _g1929219297_))
                    '()
                    _L18749_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         '@list)
                                                        '())))))))
                                        _var-r1877618815_))))))
                       (_loop1877118795_ _target1876818789_ '()))
                     (_g1876518782_ _g1876618786_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1876518782_
                                                    _g1876618786_))
                                               (_g1876518782_
                                                _g1876618786_)))))
                                    (_g1876419300_
                                     (gx#gentemps
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1930319306_
                                                        _g1930419309_)
                                                 (cons _g1930319306_
                                                       _g1930419309_))
                                               '()
                                               _L18749_))))))))
                            _var1870618745_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop1870118725_
                                                    _target1869818719_
                                                    '()))
                                                 (_g1869518712_
                                                  _g1869618716_)))))
                                       (_g1869518712_ _g1869618716_))
                                   (_g1869518712_ _g1869618716_)))))
                        (_g1869419312_
                         (|gerbil/core::<match>[1]#match-pattern-vars|
                          _hd18690_))))))
                 (_generate-simple-vector17789_
                  (lambda (_tgt18530_
                           _body18532_
                           _start18533_
                           _K18534_
                           _E18535_)
                    ((letrec ((_recur18537_
                               (lambda (_rest18540_ _off18542_)
                                 (let ((_g1854518557_
                                        (lambda (_g1854618553_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1854618553_))))
                                   (let ((_g1854418568_
                                          (lambda (_g1854618561_)
                                            ((lambda () _K18534_)))))
                                     (let ((_g1854318684_
                                            (lambda (_g1854618572_)
                                              (if (gx#stx-pair? _g1854618572_)
                                                  (let ((_e1854918575_
                                                         (gx#syntax-e
                                                          _g1854618572_)))
                                                    (let ((_hd1855018579_
                                                           (##car _e1854918575_))
                                                          (_tl1855118582_
                                                           (##cdr _e1854918575_)))
                                                      ((lambda (_L18585_
                                                                _L18587_)
                                                         (let ((_g1860218621_
                                                                (lambda (_g1860318617_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1860318617_))))
                   (let ((_g1860118680_
                          (lambda (_g1860318625_)
                            (if (gx#stx-pair? _g1860318625_)
                                (let ((_e1860718628_
                                       (gx#syntax-e _g1860318625_)))
                                  (let ((_hd1860818632_ (##car _e1860718628_))
                                        (_tl1860918635_ (##cdr _e1860718628_)))
                                    (if (gx#stx-pair? _tl1860918635_)
                                        (let ((_e1861018638_
                                               (gx#syntax-e _tl1860918635_)))
                                          (let ((_hd1861118642_
                                                 (##car _e1861018638_))
                                                (_tl1861218645_
                                                 (##cdr _e1861018638_)))
                                            (if (gx#stx-pair? _tl1861218645_)
                                                (let ((_e1861318648_
                                                       (gx#syntax-e
                                                        _tl1861218645_)))
                                                  (let ((_hd1861418652_
                                                         (##car _e1861318648_))
                                                        (_tl1861518655_
                                                         (##cdr _e1861318648_)))
                                                    (if (gx#stx-null?
                                                         _tl1861518655_)
                                                        ((lambda (_L18658_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18660_
                          _L18661_)
                   (let ()
                     (cons (gx#datum->syntax '#f 'let)
                           (cons (cons (cons _L18661_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##vector-ref)
                                                         (cons _L18660_
                                                               (cons _L18658_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())
                                 (cons (_generate117786_
                                        _L18661_
                                        _L18587_
                                        (_recur18537_
                                         _L18585_
                                         (fx1+ _off18542_))
                                        _E18535_)
                                       '())))))
                 _hd1861418652_
                 _hd1861118642_
                 _hd1860818632_)
                (_g1860218621_ _g1860318625_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1860218621_
                                                 _g1860318625_))))
                                        (_g1860218621_ _g1860318625_))))
                                (_g1860218621_ _g1860318625_)))))
                     (_g1860118680_
                      (list (gx#genident 'e) _tgt18530_ _off18542_)))))
               _tl1855118582_
               _hd1855018579_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1854418568_
                                                   _g1854618572_)))))
                                       (_g1854318684_ _rest18540_)))))))
                       _recur18537_)
                     _body18532_
                     _start18533_)))
                 (_generate-list-vector17790_
                  (lambda (_tgt18440_
                           _body18442_
                           _tgt->list18443_
                           _start18444_
                           _K18445_
                           _E18446_)
                    (let ((_g1844818467_
                           (lambda (_g1844918463_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1844918463_))))
                      (let ((_g1844718526_
                             (lambda (_g1844918471_)
                               (if (gx#stx-pair? _g1844918471_)
                                   (let ((_e1845318474_
                                          (gx#syntax-e _g1844918471_)))
                                     (let ((_hd1845418478_
                                            (##car _e1845318474_))
                                           (_tl1845518481_
                                            (##cdr _e1845318474_)))
                                       (if (gx#stx-pair? _tl1845518481_)
                                           (let ((_e1845618484_
                                                  (gx#syntax-e
                                                   _tl1845518481_)))
                                             (let ((_hd1845718488_
                                                    (##car _e1845618484_))
                                                   (_tl1845818491_
                                                    (##cdr _e1845618484_)))
                                               (if (gx#stx-pair?
                                                    _tl1845818491_)
                                                   (let ((_e1845918494_
                                                          (gx#syntax-e
                                                           _tl1845818491_)))
                                                     (let ((_hd1846018498_
                                                            (##car _e1845918494_))
                                                           (_tl1846118501_
                                                            (##cdr _e1845918494_)))
                                                       (if (gx#stx-null?
                                                            _tl1846118501_)
                                                           ((lambda (_L18504_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L18506_
                             _L18507_)
                      (let ()
                        (cons (gx#datum->syntax '#f 'let)
                              (cons (cons (cons _L18507_
                                                (cons (cons _L18504_
                                                            (cons _L18506_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())
                                    (cons (_generate117786_
                                           _L18507_
                                           _body18442_
                                           _K18445_
                                           _E18446_)
                                          '())))))
                    _hd1846018498_
                    _hd1845718488_
                    _hd1845418478_)
                   (_g1844818467_ _g1844918471_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1844818467_
                                                    _g1844918471_))))
                                           (_g1844818467_ _g1844918471_))))
                                   (_g1844818467_ _g1844918471_)))))
                        (_g1844718526_
                         (list (gx#genident 'e)
                               _tgt18440_
                               _tgt->list18443_))))))
                 (_generate-struct17791_
                  (lambda (_info18173_
                           _tgt18175_
                           _body18176_
                           _K18177_
                           _E18178_)
                    (let ((_rtd18180_
                           (if (|gerbil/core::<MOP>::<MOP:2>[1]#extended-struct-info?|
                                _info18173_)
                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor|
                                _info18173_)
                               '#f)))
                      (let ((_fields18190_
                             ((letrec ((_lp18183_
                                        (lambda (_rtd18186_ _k18188_)
                                          (if _rtd18186_
                                              (_lp18183_
                                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor-e|
                                                (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-super|
                                                 _rtd18186_))
                                               (fx+ (length (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-struct-fields|
                                                             _rtd18186_))
                                                    _k18188_))
                                              _k18188_))))
                                _lp18183_)
                              _rtd18180_
                              '0)))
                        (let ((_final?18193_
                               (if _rtd18180_
                                   (assgetq 'final:
                                            (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-plist|
                                             _rtd18180_))
                                   '#f)))
                          (let ((_g1819618204_
                                 (lambda (_g1819718200_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1819718200_))))
                            (let ((_g1819518436_
                                   (lambda (_g1819718208_)
                                     ((lambda (_L18211_)
                                        (let ()
                                          (let ((_g1822618234_
                                                 (lambda (_g1822718230_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1822718230_))))
                                            (let ((_g1822518432_
                                                   (lambda (_g1822718238_)
                                                     ((lambda (_L18241_)
                                                        (let ()
                                                          (let ((_g1825418262_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1825518258_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1825518258_))))
                    (let ((_g1825318428_
                           (lambda (_g1825518266_)
                             ((lambda (_L18269_)
                                (let ()
                                  (let ()
                                    (let ((_g1828518306_
                                           (lambda (_g1828618302_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1828618302_))))
                                      (let ((_g1828418349_
                                             (lambda (_g1828618310_)
                                               (if (gx#stx-pair? _g1828618310_)
                                                   (let ((_e1829518313_
                                                          (gx#syntax-e
                                                           _g1828618310_)))
                                                     (let ((_hd1829618317_
                                                            (##car _e1829518313_))
                                                           (_tl1829718320_
                                                            (##cdr _e1829518313_)))
                                                       (if (gx#stx-datum?
                                                            _hd1829618317_)
                                                           (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1829618317_)
                               'list:)
                       (if (gx#stx-pair? _tl1829718320_)
                           (let ((_e1829818323_ (gx#syntax-e _tl1829718320_)))
                             (let ((_hd1829918327_ (##car _e1829818323_))
                                   (_tl1830018330_ (##cdr _e1829818323_)))
                               (if (gx#stx-null? _tl1830018330_)
                                   ((lambda (_L18333_)
                                      (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons _L18269_
                                                        (cons _L18241_
                                                              (cons _L18211_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (_generate-list-vector17790_
                                                         _tgt18175_
                                                         _L18333_
                                                         (gx#datum->syntax
                                                          '#f
                                                          'struct->list)
                                                         '1
                                                         _K18177_
                                                         _E18178_)
                                                        (cons _E18178_ '())))))
                                    _hd1829918327_)
                                   (_g1828518306_ _g1828618310_))))
                           (_g1828518306_ _g1828618310_))
                       (_g1828518306_ _g1828618310_))
                   (_g1828518306_ _g1828618310_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1828518306_
                                                    _g1828618310_)))))
                                        (let ((_g1828318424_
                                               (lambda (_g1828618353_)
                                                 (if (gx#stx-pair?
                                                      _g1828618353_)
                                                     (let ((_e1828818356_
                                                            (gx#syntax-e
                                                             _g1828618353_)))
                                                       (let ((_hd1828918360_
                                                              (##car _e1828818356_))
                                                             (_tl1829018363_
                                                              (##cdr _e1828818356_)))
                                                         (if (gx#stx-datum?
                                                              _hd1828918360_)
                                                             (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _hd1828918360_)
                                 'simple:)
                         (if (gx#stx-pair? _tl1829018363_)
                             (let ((_e1829118366_
                                    (gx#syntax-e _tl1829018363_)))
                               (let ((_hd1829218370_ (##car _e1829118366_))
                                     (_tl1829318373_ (##cdr _e1829118366_)))
                                 (if (gx#stx-null? _tl1829318373_)
                                     ((lambda (_L18376_)
                                        (let ((_K18389_
                                               (_generate-simple-vector17789_
                                                _tgt18175_
                                                _L18376_
                                                '1
                                                _K18177_
                                                _E18178_)))
                                          (if (if _rtd18180_
                                                  (fx<= (gx#stx-length
                                                         _L18376_)
                                                        _fields18190_)
                                                  '#f)
                                              (cons (gx#datum->syntax '#f 'if)
                                                    (cons (cons _L18269_
                                                                (cons _L18241_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L18211_ '())))
                  (cons _K18389_ (cons _E18178_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_g1839218400_
                                                     (lambda (_g1839318396_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1839318396_))))
                                                (let ((_g1839118420_
                                                       (lambda (_g1839318404_)
                                                         ((lambda (_L18407_)
                                                            (let ()
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'if)
                            (cons (cons (gx#datum->syntax '#f 'and)
                                        (cons (cons _L18269_
                                                    (cons _L18241_
                                                          (cons _L18211_ '())))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##fx<)
                                                          (cons _L18407_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     '##vector-length)
                                    (cons _L18211_ '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons _K18389_ (cons _E18178_ '()))))))
                  _g1839318404_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1839118420_
                                                   (gx#stx-length
                                                    _L18376_)))))))
                                      _hd1829218370_)
                                     (_g1828418349_ _g1828618353_))))
                             (_g1828418349_ _g1828618353_))
                         (_g1828418349_ _g1828618353_))
                     (_g1828418349_ _g1828618353_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1828418349_
                                                      _g1828618353_)))))
                                          (_g1828318424_ _body18176_)))))))
                              _g1825518266_))))
                      (_g1825318428_
                       (if _final?18193_
                           (gx#datum->syntax '#f 'direct-struct-instance?)
                           (gx#datum->syntax '#f 'struct-instance?)))))))
              _g1822718238_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1822518432_
                                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                                                _info18173_))))))
                                      _g1819718208_))))
                              (_g1819518436_ _tgt18175_))))))))
                 (_generate-class17792_
                  (lambda (_info17794_
                           _tgt17796_
                           _body17797_
                           _K17798_
                           _E17799_)
                    (let ((_rtd17801_
                           (if (|gerbil/core::<MOP>::<MOP:2>[1]#extended-class-info?|
                                _info17794_)
                               (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor|
                                _info17794_)
                               '#f)))
                      (let ((_known-slot?17803_ #!void))
                        (letrec ((_rtd-known-slot?17805_
                                  (lambda (_rtd18154_ _slot18156_)
                                    (if _rtd18154_
                                        (let ((_$e18158_
                                               (memq _slot18156_
                                                     (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-class-slots|
                                                      _rtd18154_))))
                                          (if _$e18158_
                                              _$e18158_
                                              (ormap (lambda (_g1816118163_)
                                                       (_rtd-known-slot?17805_
                                                        _g1816118163_
                                                        _slot18156_))
                                                     (map |gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-exhibitor-e|
                                                          (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-super|
                                                           _rtd18154_)))))
                                        '#f)))
                                 (_recur17806_
                                  (lambda (_klass17940_ _rest17942_)
                                    (let ((_g1794517961_
                                           (lambda (_g1794617957_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1794617957_))))
                                      (let ((_g1794417972_
                                             (lambda (_g1794617965_)
                                               ((lambda () _K17798_)))))
                                        (let ((_g1794318150_
                                               (lambda (_g1794617976_)
                                                 (if (gx#stx-pair?
                                                      _g1794617976_)
                                                     (let ((_e1795017979_
                                                            (gx#syntax-e
                                                             _g1794617976_)))
                                                       (let ((_hd1795117983_
                                                              (##car _e1795017979_))
                                                             (_tl1795217986_
                                                              (##cdr _e1795017979_)))
                                                         (if (gx#stx-pair?
                                                              _tl1795217986_)
                                                             (let ((_e1795317989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl1795217986_)))
                       (let ((_hd1795417993_ (##car _e1795317989_))
                             (_tl1795517996_ (##cdr _e1795317989_)))
                         ((lambda (_L17999_ _L18001_ _L18002_)
                            (let ((_g1801818026_
                                   (lambda (_g1801918022_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1801918022_))))
                              (let ((_g1801718146_
                                     (lambda (_g1801918030_)
                                       ((lambda (_L18033_)
                                          (let ()
                                            (let ((_g1804518053_
                                                   (lambda (_g1804618049_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1804618049_))))
                                              (let ((_g1804418142_
                                                     (lambda (_g1804618057_)
                                                       ((lambda (_L18060_)
                                                          (let ()
                                                            (let ((_g1807318081_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g1807418077_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1807418077_))))
                      (let ((_g1807218138_
                             (lambda (_g1807418085_)
                               ((lambda (_L18088_)
                                  (let ()
                                    (let ((_g1810118109_
                                           (lambda (_g1810218105_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1810218105_))))
                                      (let ((_g1810018134_
                                             (lambda (_g1810218113_)
                                               ((lambda (_L18116_)
                                                  (let ()
                                                    (let ((_K18129_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons (cons (cons _L18116_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##vector-ref)
                                                       (cons _L18033_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'fx1+)
                                 (cons _L18088_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons (_generate117786_
                                      _L18116_
                                      _L18001_
                                      (_recur17806_ _klass17940_ _L17999_)
                                      _E17799_)
                                     '())))))
              (let ()
                (if (_known-slot?17803_ _L18002_)
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _L18088_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'class-slot-offset)
                                                        (cons _L18060_
                                                              (cons _L18002_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons _K18129_ '())))
                    (cons (gx#datum->syntax '#f 'let)
                          (cons (cons (cons _L18088_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'class-slot-offset)
                                                        (cons _L18060_
                                                              (cons _L18002_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons (cons (gx#datum->syntax '#f 'if)
                                            (cons _L18088_
                                                  (cons _K18129_
                                                        (cons _E17799_ '()))))
                                      '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1810218113_))))
                                        (_g1810018134_ (gx#genident 'e))))))
                                _g1807418085_))))
                        (_g1807218138_ (gx#genident 'slot))))))
                _g1804618057_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1804418142_
                                                 _klass17940_)))))
                                        _g1801918030_))))
                                (_g1801718146_ _tgt17796_))))
                          _tl1795517996_
                          _hd1795417993_
                          _hd1795117983_)))
                     (_g1794417972_ _g1794617976_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1794417972_
                                                      _g1794617976_)))))
                                          (_g1794318150_ _rest17942_)))))))
                          (begin
                            (set! _known-slot?17803_
                                  (if _rtd17801_
                                      (lambda (_key18167_)
                                        (let ((_slot18170_
                                               (keyword->symbol
                                                (gx#stx-e _key18167_))))
                                          (_rtd-known-slot?17805_
                                           _rtd17801_
                                           _slot18170_)))
                                      false))
                            (let ((_final?17804_
                                   (if _rtd17801_
                                       (assgetq 'final:
                                                (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-plist|
                                                 _rtd17801_))
                                       '#f)))
                              (let ((_g1780817816_
                                     (lambda (_g1780917812_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1780917812_))))
                                (let ((_g1780717936_
                                       (lambda (_g1780917820_)
                                         ((lambda (_L17823_)
                                            (let ()
                                              (let ((_g1783817846_
                                                     (lambda (_g1783917842_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g1783917842_))))
                                                (let ((_g1783717932_
                                                       (lambda (_g1783917850_)
                                                         ((lambda (_L17853_)
                                                            (let ()
                                                              (let ((_g1786617874_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1786717870_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1786717870_))))
                        (let ((_g1786517928_
                               (lambda (_g1786717878_)
                                 ((lambda (_L17881_)
                                    (let ()
                                      (let ((_g1789417902_
                                             (lambda (_g1789517898_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1789517898_))))
                                        (let ((_g1789317924_
                                               (lambda (_g1789517906_)
                                                 ((lambda (_L17909_)
                                                    (let ()
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'if)
                                                              (cons (cons _L17909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons _L17881_ (cons _L17853_ '())))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (cons _L17823_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'object-type)
                              (cons _L17853_ '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (_recur17806_
                                                     _L17823_
                                                     _body17797_)
                                                    '())))
                                  (cons _E17799_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1789517906_))))
                                          (_g1789317924_
                                           (if _final?17804_
                                               (gx#datum->syntax
                                                '#f
                                                'direct-class-instance?)
                                               (gx#datum->syntax
                                                '#f
                                                'class-instance?)))))))
                                  _g1786717878_))))
                          (_g1786517928_
                           (|gerbil/core::<MOP>::<MOP:2>[1]#runtime-type-identifier|
                            _info17794_))))))
                  _g1783917850_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1783717932_
                                                   _tgt17796_)))))
                                          _g1780917820_))))
                                  (_g1780717936_
                                   (gx#genident 'class))))))))))))
          (_generate117786_ _tgt17781_ _ptree17782_ _K17783_ _E17784_))))
    (define |gerbil/core::<match>[1]#generate-match*|
      (lambda (_stx16778_ _tgt-lst16780_ _clauses16781_)
        (let ((_parse-body16783_
               (lambda (_hd-len17601_)
                 ((letrec ((_lp17604_
                            (lambda (_rest17607_ _r17609_)
                              (let ((_g1761217624_
                                     (lambda (_g1761317620_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1761317620_))))
                                (let ((_g1761117635_
                                       (lambda (_g1761317628_)
                                         ((lambda () _r17609_)))))
                                  (let ((_g1761017775_
                                         (lambda (_g1761317639_)
                                           (if (gx#stx-pair? _g1761317639_)
                                               (let ((_e1761617642_
                                                      (gx#syntax-e
                                                       _g1761317639_)))
                                                 (let ((_hd1761717646_
                                                        (##car _e1761617642_))
                                                       (_tl1761817649_
                                                        (##cdr _e1761617642_)))
                                                   ((lambda (_L17652_ _L17654_)
                                                      (let ((_g1767117687_
                                                             (lambda (_g1767217683_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1767217683_))))
                                                        (let ((_g1767017698_
                                                               (lambda (_g1767217691_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; illegal match clause"
                             _stx16778_
                             _L17654_))))))
                  (let ((_g1766917739_
                         (lambda (_g1767217702_)
                           (if (gx#stx-pair? _g1767217702_)
                               (let ((_e1767917705_
                                      (gx#syntax-e _g1767217702_)))
                                 (let ((_hd1768017709_ (##car _e1767917705_))
                                       (_tl1768117712_ (##cdr _e1767917705_)))
                                   ((lambda (_L17715_ _L17717_)
                                      (if (if (gx#stx-list? _L17717_)
                                              (if (fx= (gx#stx-length _L17717_)
                                                       _hd-len17601_)
                                                  (if (gx#stx-list? _L17715_)
                                                      (not (gx#stx-null?
                                                            _L17715_))
                                                      '#f)
                                                  '#f)
                                              '#f)
                                          (_lp17604_
                                           _L17652_
                                           (cons (cons (gx#genident 'try-match)
                                                       (cons (gx#stx-map
                                                              (lambda (_g1772917731_)
                                                                (|gerbil/core::<match>[1]#parse-match-pattern|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1772917731_
                         _stx16778_))
                      _L17717_)
                     (cons (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'begin) _L17715_)
                            (let ((_$e17735_ (gx#stx-source _L17654_)))
                              (if _$e17735_
                                  _$e17735_
                                  (gx#stx-source _stx16778_))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _r17609_))
                                          (_g1767017698_ _g1767217702_)))
                                    _tl1768117712_
                                    _hd1768017709_)))
                               (_g1767017698_ _g1767217702_)))))
                    (let ((_g1766817771_
                           (lambda (_g1767217743_)
                             (if (gx#stx-pair? _g1767217743_)
                                 (let ((_e1767417746_
                                        (gx#syntax-e _g1767217743_)))
                                   (let ((_hd1767517750_ (##car _e1767417746_))
                                         (_tl1767617753_
                                          (##cdr _e1767417746_)))
                                     (if (gx#identifier? _hd1767517750_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core::<match>[1]#_g29566_|
                                              _hd1767517750_)
                                             ((lambda (_L17756_)
                                                (if (if (gx#stx-list? _L17756_)
                                                        (not (gx#stx-null?
                                                              _L17756_))
                                                        '#f)
                                                    (if (gx#stx-null? _L17652_)
                                                        (cons (cons (gx#genident
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             'else)
                            (cons '#f
                                  (cons (gx#stx-wrap-source
                                         (cons (gx#datum->syntax '#f 'begin)
                                               _L17756_)
                                         (let ((_$e17767_
                                                (gx#stx-source _L17654_)))
                                           (if _$e17767_
                                               _$e17767_
                                               (gx#stx-source _stx16778_))))
                                        '())))
                      _r17609_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; misplaced else"
                 _stx16778_
                 _L17654_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1766917739_
                                                     _g1767217743_)))
                                              _tl1767617753_)
                                             (_g1766917739_ _g1767217743_))
                                         (_g1766917739_ _g1767217743_))))
                                 (_g1766917739_ _g1767217743_)))))
                      (_g1766817771_ _L17654_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1761817649_
                                                    _hd1761717646_)))
                                               (_g1761117635_
                                                _g1761317639_)))))
                                    (_g1761017775_ _rest17607_)))))))
                    _lp17604_)
                  _clauses16781_
                  '()))))
          (let ((_generate116787_
                 (lambda (_clause16789_ _body16791_ _E16792_)
                   ((letrec ((_recur16794_
                              (lambda (_rest16797_ _rest-targets16799_)
                                (let ((_g1680216814_
                                       (lambda (_g1680316810_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1680316810_))))
                                  (let ((_g1680116825_
                                         (lambda (_g1680316818_)
                                           ((lambda () _body16791_)))))
                                    (let ((_g1680017096_
                                           (lambda (_g1680316829_)
                                             (if (gx#stx-pair? _g1680316829_)
                                                 (let ((_e1680616832_
                                                        (gx#syntax-e
                                                         _g1680316829_)))
                                                   (let ((_hd1680716836_
                                                          (##car _e1680616832_))
                                                         (_tl1680816839_
                                                          (##cdr _e1680616832_)))
                                                     ((lambda (_L16842_
                                                               _L16844_)
                                                        (let ((_g1686116873_
                                                               (lambda (_g1686216869_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1686216869_))))
                  (let ((_g1686017092_
                         (lambda (_g1686216877_)
                           (if (gx#stx-pair? _g1686216877_)
                               (let ((_e1686516880_
                                      (gx#syntax-e _g1686216877_)))
                                 (let ((_hd1686616884_ (##car _e1686516880_))
                                       (_tl1686716887_ (##cdr _e1686516880_)))
                                   ((lambda (_L16890_ _L16892_)
                                      (let ((_g1690416912_
                                             (lambda (_g1690516908_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1690516908_))))
                                        (let ((_g1690317088_
                                               (lambda (_g1690516916_)
                                                 ((lambda (_L16919_)
                                                    (let ()
                                                      (let ((_g1693116948_
                                                             (lambda (_g1693216944_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1693216944_))))
                                                        (let ((_g1693017084_
                                                               (lambda (_g1693216952_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#stx-pair/null? _g1693216952_)
                             (if (fx>= (gx#stx-length _g1693216952_) '0)
                                 (let ((_g29564_
                                        (gx#syntax-split-splice
                                         _g1693216952_
                                         '0)))
                                   (begin
                                     (let ((_g29565_ (values-count _g29564_)))
                                       (if (not (fx= _g29565_ 2))
                                           (error "Context expects 2 values"
                                                  _g29565_)))
                                     (let ((_target1693416955_
                                            (values-ref _g29564_ 0))
                                           (_tl1693616958_
                                            (values-ref _g29564_ 1)))
                                       (if (gx#stx-null? _tl1693616958_)
                                           (letrec ((_loop1693716961_
                                                     (lambda (_hd1693516965_
                                                              _var1694116968_)
                                                       (if (gx#stx-pair?
                                                            _hd1693516965_)
                                                           (let ((_e1693816971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1693516965_)))
                     (let ((_lp-hd1693916975_ (##car _e1693816971_))
                           (_lp-tl1694016978_ (##cdr _e1693816971_)))
                       (_loop1693716961_
                        _lp-tl1694016978_
                        (cons _lp-hd1693916975_ _var1694116968_))))
                   (let ((_var1694216981_ (reverse _var1694116968_)))
                     ((lambda (_L16985_)
                        (let ()
                          (let ((_g1700217010_
                                 (lambda (_g1700317006_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1700317006_))))
                            (let ((_g1700117080_
                                   (lambda (_g1700317014_)
                                     ((lambda (_L17017_)
                                        (let ()
                                          (let ((_g1703017038_
                                                 (lambda (_g1703117034_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1703117034_))))
                                            (let ((_g1702917068_
                                                   (lambda (_g1703117042_)
                                                     ((lambda (_L17045_)
                                                        (let ()
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let)
                          (cons (cons (cons _L16919_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons (begin
                                                                '#!void
                                                                (foldr (lambda (_g1705917062_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1706017065_)
                                 (cons _g1705917062_ _g1706017065_))
                               '()
                               _L16985_))
                      (cons _L17017_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons _L17045_ '()))))))
              _g1703117042_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1702917068_
                                               (|gerbil/core::<match>[1]#generate-match1|
                                                _stx16778_
                                                _L16892_
                                                _L16844_
                                                (cons _L16919_
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g1707117074_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1707217077_)
                         (cons _g1707117074_ _g1707217077_))
                       '()
                       _L16985_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _E16792_))))))
                                      _g1700317014_))))
                              (_g1700117080_
                               (_recur16794_ _L16842_ _L16890_))))))
                      _var1694216981_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1693716961_
                                              _target1693416955_
                                              '()))
                                           (_g1693116948_ _g1693216952_)))))
                                 (_g1693116948_ _g1693216952_))
                             (_g1693116948_ _g1693216952_)))))
                  (_g1693017084_
                   (|gerbil/core::<match>[1]#match-pattern-vars| _L16844_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1690516916_))))
                                          (_g1690317088_ (gx#genident 'K)))))
                                    _tl1686716887_
                                    _hd1686616884_)))
                               (_g1686116873_ _g1686216877_)))))
                    (_g1686017092_ _rest-targets16799_))))
              _tl1680816839_
              _hd1680716836_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1680116825_
                                                  _g1680316829_)))))
                                      (_g1680017096_ _rest16797_)))))))
                      _recur16794_)
                    _clause16789_
                    _tgt-lst16780_))))
            (letrec ((_generate-clauses16786_
                      (lambda (_rest17100_ _E17102_)
                        (let ((_g1710617122_
                               (lambda (_g1710717118_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1710717118_))))
                          (let ((_g1710517133_
                                 (lambda (_g1710717126_)
                                   ((lambda () _E17102_)))))
                            (let ((_g1710417309_
                                   (lambda (_g1710717137_)
                                     (if (gx#stx-pair? _g1710717137_)
                                         (let ((_e1711417140_
                                                (gx#syntax-e _g1710717137_)))
                                           (let ((_hd1711517144_
                                                  (##car _e1711417140_))
                                                 (_tl1711617147_
                                                  (##cdr _e1711417140_)))
                                             ((lambda (_L17150_ _L17152_)
                                                (let ((_g1716517184_
                                                       (lambda (_g1716617180_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1716617180_))))
                                                  (let ((_g1716417305_
                                                         (lambda (_g1716617188_)
                                                           (if (gx#stx-pair?
                                                                _g1716617188_)
                                                               (let ((_e1717017191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g1716617188_)))
                         (let ((_hd1717117195_ (##car _e1717017191_))
                               (_tl1717217198_ (##cdr _e1717017191_)))
                           (if (gx#stx-pair? _tl1717217198_)
                               (let ((_e1717317201_
                                      (gx#syntax-e _tl1717217198_)))
                                 (let ((_hd1717417205_ (##car _e1717317201_))
                                       (_tl1717517208_ (##cdr _e1717317201_)))
                                   (if (gx#stx-pair? _tl1717517208_)
                                       (let ((_e1717617211_
                                              (gx#syntax-e _tl1717517208_)))
                                         (let ((_hd1717717215_
                                                (##car _e1717617211_))
                                               (_tl1717817218_
                                                (##cdr _e1717617211_)))
                                           (if (gx#stx-null? _tl1717817218_)
                                               ((lambda (_L17221_
                                                         _L17223_
                                                         _L17224_)
                                                  (let ((_g1724117256_
                                                         (lambda (_g1724217252_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g1724217252_))))
                                                    (let ((_g1724017301_
                                                           (lambda (_g1724217260_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1724217260_)
                         (let ((_e1724517263_ (gx#syntax-e _g1724217260_)))
                           (let ((_hd1724617267_ (##car _e1724517263_))
                                 (_tl1724717270_ (##cdr _e1724517263_)))
                             (if (gx#stx-pair? _tl1724717270_)
                                 (let ((_e1724817273_
                                        (gx#syntax-e _tl1724717270_)))
                                   (let ((_hd1724917277_ (##car _e1724817273_))
                                         (_tl1725017280_
                                          (##cdr _e1724817273_)))
                                     (if (gx#stx-null? _tl1725017280_)
                                         ((lambda (_L17283_ _L17285_)
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (cons _L17224_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax '#f 'lambda)
                                          (cons '() (cons _L17285_ '())))
                                    '()))
                        '())
                  (cons _L17283_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd1724917277_
                                          _hd1724617267_)
                                         (_g1724117256_ _g1724217260_))))
                                 (_g1724117256_ _g1724217260_))))
                         (_g1724117256_ _g1724217260_)))))
              (_g1724017301_
               (list (if (gx#stx-e _L17223_)
                         (_generate116787_ _L17223_ _L17221_ _E17102_)
                         _L17221_)
                     (_generate-clauses16786_
                      _L17150_
                      (cons _L17224_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1717717215_
                                                _hd1717417205_
                                                _hd1717117195_)
                                               (_g1716517184_ _g1716617188_))))
                                       (_g1716517184_ _g1716617188_))))
                               (_g1716517184_ _g1716617188_))))
                       (_g1716517184_ _g1716617188_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1716417305_ _L17152_))))
                                              _tl1711617147_
                                              _hd1711517144_)))
                                         (_g1710517133_ _g1710717137_)))))
                              (let ((_g1710317414_
                                     (lambda (_g1710717313_)
                                       (if (gx#stx-pair? _g1710717313_)
                                           (let ((_e1710917316_
                                                  (gx#syntax-e _g1710717313_)))
                                             (let ((_hd1711017320_
                                                    (##car _e1710917316_))
                                                   (_tl1711117323_
                                                    (##cdr _e1710917316_)))
                                               (if (gx#stx-null?
                                                    _tl1711117323_)
                                                   ((lambda (_L17326_)
                                                      (let ((_g1733717355_
                                                             (lambda (_g1733817351_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1733817351_))))
                                                        (let ((_g1733617410_
                                                               (lambda (_g1733817359_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (gx#stx-pair? _g1733817359_)
                             (let ((_e1734117362_ (gx#syntax-e _g1733817359_)))
                               (let ((_hd1734217366_ (##car _e1734117362_))
                                     (_tl1734317369_ (##cdr _e1734117362_)))
                                 (if (gx#stx-pair? _tl1734317369_)
                                     (let ((_e1734417372_
                                            (gx#syntax-e _tl1734317369_)))
                                       (let ((_hd1734517376_
                                              (##car _e1734417372_))
                                             (_tl1734617379_
                                              (##cdr _e1734417372_)))
                                         (if (gx#stx-pair? _tl1734617379_)
                                             (let ((_e1734717382_
                                                    (gx#syntax-e
                                                     _tl1734617379_)))
                                               (let ((_hd1734817386_
                                                      (##car _e1734717382_))
                                                     (_tl1734917389_
                                                      (##cdr _e1734717382_)))
                                                 (if (gx#stx-null?
                                                      _tl1734917389_)
                                                     ((lambda (_L17392_
                                                               _L17394_)
                                                        (if (gx#stx-e _L17394_)
                                                            (_generate116787_
                                                             _L17394_
                                                             _L17392_
                                                             _E17102_)
                                                            _L17392_))
                                                      _hd1734817386_
                                                      _hd1734517376_)
                                                     (_g1733717355_
                                                      _g1733817359_))))
                                             (_g1733717355_ _g1733817359_))))
                                     (_g1733717355_ _g1733817359_))))
                             (_g1733717355_ _g1733817359_)))))
                  (_g1733617410_ _L17326_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd1711017320_)
                                                   (_g1710417309_
                                                    _g1710717313_))))
                                           (_g1710417309_ _g1710717313_)))))
                                (_g1710317414_ _rest17100_))))))))
              (let ((_generate-body16785_
                     (lambda (_body17418_)
                       (let ((_g1742117429_
                              (lambda (_g1742217425_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1742217425_))))
                         (let ((_g1742017597_
                                (lambda (_g1742217433_)
                                  ((lambda (_L17436_)
                                     (let ()
                                       (let ((_g1744817465_
                                              (lambda (_g1744917461_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g1744917461_))))
                                         (let ((_g1744717593_
                                                (lambda (_g1744917469_)
                                                  (if (gx#stx-pair/null?
                                                       _g1744917469_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1744917469_)
                        '0)
                  (let ((_g29562_ (gx#syntax-split-splice _g1744917469_ '0)))
                    (begin
                      (let ((_g29563_ (values-count _g29562_)))
                        (if (not (fx= _g29563_ 2))
                            (error "Context expects 2 values" _g29563_)))
                      (let ((_target1745117472_ (values-ref _g29562_ 0))
                            (_tl1745317475_ (values-ref _g29562_ 1)))
                        (if (gx#stx-null? _tl1745317475_)
                            (letrec ((_loop1745417478_
                                      (lambda (_hd1745217482_
                                               _target1745817485_)
                                        (if (gx#stx-pair? _hd1745217482_)
                                            (let ((_e1745517488_
                                                   (gx#syntax-e
                                                    _hd1745217482_)))
                                              (let ((_lp-hd1745617492_
                                                     (##car _e1745517488_))
                                                    (_lp-tl1745717495_
                                                     (##cdr _e1745517488_)))
                                                (_loop1745417478_
                                                 _lp-tl1745717495_
                                                 (cons _lp-hd1745617492_
                                                       _target1745817485_))))
                                            (let ((_target1745917498_
                                                   (reverse _target1745817485_)))
                                              ((lambda (_L17502_)
                                                 (let ()
                                                   (let ((_g1751917527_
                                                          (lambda (_g1752017523_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g1752017523_))))
                                                     (let ((_g1751817581_
                                                            (lambda (_g1752017531_)
                                                              ((lambda (_L17534_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((_g1754717555_
                                  (lambda (_g1754817551_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1754817551_))))
                             (let ((_g1754617577_
                                    (lambda (_g1754817559_)
                                      ((lambda (_L17562_)
                                         (let ()
                                           (let ()
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _L17436_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L17534_ '()))
                       '())
                 (cons _L17562_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _g1754817559_))))
                               (_g1754617577_
                                (_generate-clauses16786_
                                 _body17418_
                                 (cons _L17436_ '())))))))
                       _g1752017531_))))
               (_g1751817581_
                (gx#stx-wrap-source
                 (cons (gx#datum->syntax '#f 'lambda)
                       (cons '()
                             (cons (cons (gx#datum->syntax '#f 'error)
                                         (cons '"No clause matching"
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g1758417587_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1758517590_)
                  (cons _g1758417587_ _g1758517590_))
                '()
                _L17502_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '())))
                 (gx#stx-source _stx16778_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _target1745917498_))))))
                              (_loop1745417478_ _target1745117472_ '()))
                            (_g1744817465_ _g1744917469_)))))
                  (_g1744817465_ _g1744917469_))
              (_g1744817465_ _g1744917469_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1744717593_ _tgt-lst16780_)))))
                                   _g1742217433_))))
                           (_g1742017597_ (gx#genident 'E)))))))
                (_generate-body16785_
                 (_parse-body16783_ (gx#stx-length _tgt-lst16780_)))))))))
    (define |gerbil/core::<match>[1]#generate-match|
      (lambda (_stx16680_ _tgt16682_ _clauses16683_)
        (let ((_reclause16685_
               (lambda (_clause16688_)
                 (let ((_g1669316708_
                        (lambda (_g1669416704_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1669416704_))))
                   (let ((_g1669216719_
                          (lambda (_g1669416712_)
                            ((lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal match clause"
                                _stx16680_
                                _clause16688_))))))
                     (let ((_g1669116753_
                            (lambda (_g1669416723_)
                              (if (gx#stx-pair? _g1669416723_)
                                  (let ((_e1670016726_
                                         (gx#syntax-e _g1669416723_)))
                                    (let ((_hd1670116730_
                                           (##car _e1670016726_))
                                          (_tl1670216733_
                                           (##cdr _e1670016726_)))
                                      ((lambda (_L16736_ _L16738_)
                                         (gx#stx-wrap-source
                                          (cons (cons _L16738_ '()) _L16736_)
                                          (gx#stx-source
                                           (gx#datum->syntax '#f 'clause))))
                                       _tl1670216733_
                                       _hd1670116730_)))
                                  (_g1669216719_ _g1669416723_)))))
                       (let ((_g1669016774_
                              (lambda (_g1669416757_)
                                (if (gx#stx-pair? _g1669416757_)
                                    (let ((_e1669516760_
                                           (gx#syntax-e _g1669416757_)))
                                      (let ((_hd1669616764_
                                             (##car _e1669516760_))
                                            (_tl1669716767_
                                             (##cdr _e1669516760_)))
                                        (if (gx#identifier? _hd1669616764_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core::<match>[1]#_g29567_|
                                                 _hd1669616764_)
                                                ((lambda () _clause16688_))
                                                (_g1669116753_ _g1669416757_))
                                            (_g1669116753_ _g1669416757_))))
                                    (_g1669116753_ _g1669416757_)))))
                         (_g1669016774_ _clause16688_))))))))
          (|gerbil/core::<match>[1]#generate-match*|
           _stx16680_
           (cons _tgt16682_ '())
           (gx#stx-map _reclause16685_ _clauses16683_)))))
    (define |gerbil/core::<match>[:0:]#match|
      (lambda (_stx23658_)
        (let ((_g2366323692_
               (lambda (_g2366423688_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2366423688_))))
          (let ((_g2366223800_
                 (lambda (_g2366423696_)
                   (if (gx#stx-pair? _g2366423696_)
                       (let ((_e2368123699_ (gx#syntax-e _g2366423696_)))
                         (let ((_hd2368223703_ (##car _e2368123699_))
                               (_tl2368323706_ (##cdr _e2368123699_)))
                           (if (gx#stx-pair? _tl2368323706_)
                               (let ((_e2368423709_
                                      (gx#syntax-e _tl2368323706_)))
                                 (let ((_hd2368523713_ (##car _e2368423709_))
                                       (_tl2368623716_ (##cdr _e2368423709_)))
                                   ((lambda (_L23719_ _L23721_)
                                      (if (gx#stx-list? _L23719_)
                                          (let ((_g2373523743_
                                                 (lambda (_g2373623739_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2373623739_))))
                                            (let ((_g2373423796_
                                                   (lambda (_g2373623747_)
                                                     ((lambda (_L23750_)
                                                        (let ()
                                                          (let ((_g2376223770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2376323766_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2376323766_))))
                    (let ((_g2376123792_
                           (lambda (_g2376323774_)
                             ((lambda (_L23777_)
                                (let ()
                                  (let ()
                                    (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (cons _L23750_
                                                            (cons _L23721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _L23777_ '()))))))
                              _g2376323774_))))
                      (_g2376123792_
                       (|gerbil/core::<match>[1]#generate-match|
                        _stx23658_
                        _L23750_
                        _L23719_))))))
              _g2373623747_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2373423796_
                                               (gx#genident _L23721_))))
                                          (_g2366323692_ _g2366423696_)))
                                    _tl2368623716_
                                    _hd2368523713_)))
                               (_g2366323692_ _g2366423696_))))
                       (_g2366323692_ _g2366423696_)))))
            (let ((_g2366123905_
                   (lambda (_g2366423804_)
                     (if (gx#stx-pair? _g2366423804_)
                         (let ((_e2367323807_ (gx#syntax-e _g2366423804_)))
                           (let ((_hd2367423811_ (##car _e2367323807_))
                                 (_tl2367523814_ (##cdr _e2367323807_)))
                             (if (gx#stx-pair? _tl2367523814_)
                                 (let ((_e2367623817_
                                        (gx#syntax-e _tl2367523814_)))
                                   (let ((_hd2367723821_ (##car _e2367623817_))
                                         (_tl2367823824_
                                          (##cdr _e2367623817_)))
                                     (if (gx#identifier? _hd2367723821_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core::<match>[1]#_g29568_|
                                              _hd2367723821_)
                                             ((lambda (_L23827_)
                                                (if (gx#stx-list? _L23827_)
                                                    (let ((_g2384023848_
                                                           (lambda (_g2384123844_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g2384123844_))))
                                                      (let ((_g2383923901_
                                                             (lambda (_g2384123852_)
                                                               ((lambda (_L23855_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let ((_g2386723875_
                                   (lambda (_g2386823871_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2386823871_))))
                              (let ((_g2386623897_
                                     (lambda (_g2386823879_)
                                       ((lambda (_L23882_)
                                          (let ()
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons _L23855_
                                                          (cons _L23882_
                                                                '()))))))
                                        _g2386823879_))))
                                (_g2386623897_
                                 (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'match)
                                        (cons _L23855_ _L23827_))
                                  (gx#stx-source _stx23658_)))))))
                        _g2384123852_))))
                (_g2383923901_ (gx#genident 'args))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2366223800_
                                                     _g2366423804_)))
                                              _tl2367823824_)
                                             (_g2366223800_ _g2366423804_))
                                         (_g2366223800_ _g2366423804_))))
                                 (_g2366223800_ _g2366423804_))))
                         (_g2366223800_ _g2366423804_)))))
              (let ((_g2366024010_
                     (lambda (_g2366423909_)
                       (if (gx#stx-pair? _g2366423909_)
                           (let ((_e2366623912_ (gx#syntax-e _g2366423909_)))
                             (let ((_hd2366723916_ (##car _e2366623912_))
                                   (_tl2366823919_ (##cdr _e2366623912_)))
                               (if (gx#stx-pair? _tl2366823919_)
                                   (let ((_e2366923922_
                                          (gx#syntax-e _tl2366823919_)))
                                     (let ((_hd2367023926_
                                            (##car _e2366923922_))
                                           (_tl2367123929_
                                            (##cdr _e2366923922_)))
                                       (if (gx#identifier? _hd2367023926_)
                                           (if (gx#free-identifier=?
                                                |gerbil/core::<match>[1]#_g29569_|
                                                _hd2367023926_)
                                               ((lambda (_L23932_)
                                                  (if (gx#stx-list? _L23932_)
                                                      (let ((_g2394523953_
                                                             (lambda (_g2394623949_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g2394623949_))))
                                                        (let ((_g2394424006_
                                                               (lambda (_g2394623957_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ((lambda (_L23960_)
                            (let ()
                              (let ((_g2397223980_
                                     (lambda (_g2397323976_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g2397323976_))))
                                (let ((_g2397124002_
                                       (lambda (_g2397323984_)
                                         ((lambda (_L23987_)
                                            (let ()
                                              (let ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons _L23960_ '())
                                                            (cons _L23987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g2397323984_))))
                                  (_g2397124002_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'match)
                                          (cons _L23960_ _L23932_))
                                    (gx#stx-source _stx23658_)))))))
                          _g2394623957_))))
                  (_g2394424006_ (gx#genident 'e))))
              (_g2366123905_ _g2366423909_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _tl2367123929_)
                                               (_g2366123905_ _g2366423909_))
                                           (_g2366123905_ _g2366423909_))))
                                   (_g2366123905_ _g2366423909_))))
                           (_g2366123905_ _g2366423909_)))))
                (_g2366024010_ _stx23658_)))))))
    (define |gerbil/core::<match>[:0:]#match*|
      (lambda (_stx24014_)
        (let ((_g2401724041_
               (lambda (_g2401824037_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2401824037_))))
          (let ((_g2401624253_
                 (lambda (_g2401824045_)
                   (if (gx#stx-pair? _g2401824045_)
                       (let ((_e2402124048_ (gx#syntax-e _g2401824045_)))
                         (let ((_hd2402224052_ (##car _e2402124048_))
                               (_tl2402324055_ (##cdr _e2402124048_)))
                           (if (gx#stx-pair? _tl2402324055_)
                               (let ((_e2402424058_
                                      (gx#syntax-e _tl2402324055_)))
                                 (let ((_hd2402524062_ (##car _e2402424058_))
                                       (_tl2402624065_ (##cdr _e2402424058_)))
                                   (if (gx#stx-pair/null? _hd2402524062_)
                                       (if (fx>= (gx#stx-length _hd2402524062_)
                                                 '0)
                                           (let ((_g29570_
                                                  (gx#syntax-split-splice
                                                   _hd2402524062_
                                                   '0)))
                                             (begin
                                               (let ((_g29571_
                                                      (values-count _g29570_)))
                                                 (if (not (fx= _g29571_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29571_)))
                                               (let ((_target2402724068_
                                                      (values-ref _g29570_ 0))
                                                     (_tl2402924071_
                                                      (values-ref _g29570_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl2402924071_)
                                                     (letrec ((_loop2403024074_
                                                               (lambda (_hd2402824078_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _e2403424081_)
                         (if (gx#stx-pair? _hd2402824078_)
                             (let ((_e2403124084_
                                    (gx#syntax-e _hd2402824078_)))
                               (let ((_lp-hd2403224088_ (##car _e2403124084_))
                                     (_lp-tl2403324091_ (##cdr _e2403124084_)))
                                 (_loop2403024074_
                                  _lp-tl2403324091_
                                  (cons _lp-hd2403224088_ _e2403424081_))))
                             (let ((_e2403524094_ (reverse _e2403424081_)))
                               ((lambda (_L24098_ _L24100_)
                                  (if (gx#stx-list? _L24098_)
                                      (let ((_g2411824135_
                                             (lambda (_g2411924131_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2411924131_))))
                                        (let ((_g2411724241_
                                               (lambda (_g2411924139_)
                                                 (if (gx#stx-pair/null?
                                                      _g2411924139_)
                                                     (if (fx>= (gx#stx-length
                                                                _g2411924139_)
                                                               '0)
                                                         (let ((_g29572_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2411924139_
                         '0)))
                   (begin
                     (let ((_g29573_ (values-count _g29572_)))
                       (if (not (fx= _g29573_ 2))
                           (error "Context expects 2 values" _g29573_)))
                     (let ((_target2412124142_ (values-ref _g29572_ 0))
                           (_tl2412324145_ (values-ref _g29572_ 1)))
                       (if (gx#stx-null? _tl2412324145_)
                           (letrec ((_loop2412424148_
                                     (lambda (_hd2412224152_ _$e2412824155_)
                                       (if (gx#stx-pair? _hd2412224152_)
                                           (let ((_e2412524158_
                                                  (gx#syntax-e
                                                   _hd2412224152_)))
                                             (let ((_lp-hd2412624162_
                                                    (##car _e2412524158_))
                                                   (_lp-tl2412724165_
                                                    (##cdr _e2412524158_)))
                                               (_loop2412424148_
                                                _lp-tl2412724165_
                                                (cons _lp-hd2412624162_
                                                      _$e2412824155_))))
                                           (let ((_$e2412924168_
                                                  (reverse _$e2412824155_)))
                                             ((lambda (_L24172_)
                                                (let ()
                                                  (let ((_g2418824196_
                                                         (lambda (_g2418924192_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2418924192_))))
                                                    (let ((_g2418724229_
                                                           (lambda (_g2418924200_)
                                                             ((lambda (_L24203_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (begin
                                          (gx#syntax-check-splice-targets
                                           _L24100_
                                           _L24172_)
                                          (foldr (lambda (_g2421724221_
                                                          _g2421824224_
                                                          _g2421924226_)
                                                   (cons (cons _g2421824224_
                                                               (cons _g2421724221_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _g2421924226_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L24100_
                                                 _L24172_))
                                        (cons _L24203_ '()))))))
                      _g2418924200_))))
              (_g2418724229_
               (|gerbil/core::<match>[1]#generate-match*|
                _stx24014_
                (begin
                  '#!void
                  (foldr (lambda (_g2423224235_ _g2423324238_)
                           (cons _g2423224235_ _g2423324238_))
                         '()
                         _L24172_))
                _L24098_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _$e2412924168_))))))
                             (_loop2412424148_ _target2412124142_ '()))
                           (_g2411824135_ _g2411924139_)))))
                 (_g2411824135_ _g2411924139_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2411824135_
                                                      _g2411924139_)))))
                                          (_g2411724241_
                                           (gx#gentemps
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g2424424247_
                                                              _g2424524250_)
                                                       (cons _g2424424247_
                                                             _g2424524250_))
                                                     '()
                                                     _L24100_))))))
                                      (_g2401724041_ _g2401824045_)))
                                _tl2402624065_
                                _e2403524094_))))))
               (_loop2403024074_ _target2402724068_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2401724041_
                                                      _g2401824045_)))))
                                           (_g2401724041_ _g2401824045_))
                                       (_g2401724041_ _g2401824045_))))
                               (_g2401724041_ _g2401824045_))))
                       (_g2401724041_ _g2401824045_)))))
            (_g2401624253_ _stx24014_)))))
    (define |gerbil/core::<match>[:0:]#with|
      (lambda (_$stx24259_)
        (let ((_g2426524348_
               (lambda (_g2426624344_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2426624344_))))
          (let ((_g2426424509_
                 (lambda (_g2426624352_)
                   (if (gx#stx-pair? _g2426624352_)
                       (let ((_e2431124355_ (gx#syntax-e _g2426624352_)))
                         (let ((_hd2431224359_ (##car _e2431124355_))
                               (_tl2431324362_ (##cdr _e2431124355_)))
                           (if (gx#stx-pair? _tl2431324362_)
                               (let ((_e2431424365_
                                      (gx#syntax-e _tl2431324362_)))
                                 (let ((_hd2431524369_ (##car _e2431424365_))
                                       (_tl2431624372_ (##cdr _e2431424365_)))
                                   (if (gx#stx-pair/null? _hd2431524369_)
                                       (if (fx>= (gx#stx-length _hd2431524369_)
                                                 '0)
                                           (let ((_g29574_
                                                  (gx#syntax-split-splice
                                                   _hd2431524369_
                                                   '0)))
                                             (begin
                                               (let ((_g29575_
                                                      (values-count _g29574_)))
                                                 (if (not (fx= _g29575_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29575_)))
                                               (let ((_target2431724375_
                                                      (values-ref _g29574_ 0))
                                                     (_tl2431924378_
                                                      (values-ref _g29574_ 1)))
                                                 (if (gx#stx-null?
                                                      _tl2431924378_)
                                                     (letrec ((_loop2432024381_
                                                               (lambda (_hd2431824385_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _expr2432424388_
                                _hd2432524390_)
                         (if (gx#stx-pair? _hd2431824385_)
                             (let ((_e2432124393_
                                    (gx#syntax-e _hd2431824385_)))
                               (let ((_lp-hd2432224397_ (##car _e2432124393_))
                                     (_lp-tl2432324400_ (##cdr _e2432124393_)))
                                 (if (gx#stx-pair? _lp-hd2432224397_)
                                     (let ((_e2432824403_
                                            (gx#syntax-e _lp-hd2432224397_)))
                                       (let ((_hd2432924407_
                                              (##car _e2432824403_))
                                             (_tl2433024410_
                                              (##cdr _e2432824403_)))
                                         (if (gx#stx-pair? _tl2433024410_)
                                             (let ((_e2433124413_
                                                    (gx#syntax-e
                                                     _tl2433024410_)))
                                               (let ((_hd2433224417_
                                                      (##car _e2433124413_))
                                                     (_tl2433324420_
                                                      (##cdr _e2433124413_)))
                                                 (if (gx#stx-null?
                                                      _tl2433324420_)
                                                     (_loop2432024381_
                                                      _lp-tl2432324400_
                                                      (cons _hd2433224417_
                                                            _expr2432424388_)
                                                      (cons _hd2432924407_
                                                            _hd2432524390_))
                                                     (_g2426524348_
                                                      _g2426624352_))))
                                             (_g2426524348_ _g2426624352_))))
                                     (_g2426524348_ _g2426624352_))))
                             (let ((_expr2432624423_
                                    (reverse _expr2432424388_))
                                   (_hd2432724426_ (reverse _hd2432524390_)))
                               (if (gx#stx-pair/null? _tl2431624372_)
                                   (if (fx>= (gx#stx-length _tl2431624372_) '0)
                                       (let ((_g29576_
                                              (gx#syntax-split-splice
                                               _tl2431624372_
                                               '0)))
                                         (begin
                                           (let ((_g29577_
                                                  (values-count _g29576_)))
                                             (if (not (fx= _g29577_ 2))
                                                 (error "Context expects 2 values"
                                                        _g29577_)))
                                           (let ((_target2433424429_
                                                  (values-ref _g29576_ 0))
                                                 (_tl2433624432_
                                                  (values-ref _g29576_ 1)))
                                             (if (gx#stx-null? _tl2433624432_)
                                                 (letrec ((_loop2433724435_
                                                           (lambda (_hd2433524439_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _body2434124442_)
                     (if (gx#stx-pair? _hd2433524439_)
                         (let ((_e2433824445_ (gx#syntax-e _hd2433524439_)))
                           (let ((_lp-hd2433924449_ (##car _e2433824445_))
                                 (_lp-tl2434024452_ (##cdr _e2433824445_)))
                             (_loop2433724435_
                              _lp-tl2434024452_
                              (cons _lp-hd2433924449_ _body2434124442_))))
                         (let ((_body2434224455_ (reverse _body2434124442_)))
                           ((lambda (_L24459_ _L24461_ _L24462_)
                              (cons (gx#datum->syntax '#f 'match*)
                                    (cons (begin
                                            '#!void
                                            (foldr (lambda (_g2448424491_
                                                            _g2448524494_)
                                                     (cons _g2448424491_
                                                           _g2448524494_))
                                                   '()
                                                   _L24461_))
                                          (cons (cons (begin
                                                        '#!void
                                                        (foldr (lambda (_g2448624497_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2448724500_)
                         (cons _g2448624497_ _g2448724500_))
                       '()
                       _L24462_))
              (begin
                '#!void
                (foldr (lambda (_g2448824503_ _g2448924506_)
                         (cons _g2448824503_ _g2448924506_))
                       '()
                       _L24459_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                            _body2434224455_
                            _expr2432624423_
                            _hd2432724426_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop2433724435_
                                                    _target2433424429_
                                                    '()))
                                                 (_g2426524348_
                                                  _g2426624352_)))))
                                       (_g2426524348_ _g2426624352_))
                                   (_g2426524348_ _g2426624352_)))))))
               (_loop2432024381_ _target2431724375_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2426524348_
                                                      _g2426624352_)))))
                                           (_g2426524348_ _g2426624352_))
                                       (_g2426524348_ _g2426624352_))))
                               (_g2426524348_ _g2426624352_))))
                       (_g2426524348_ _g2426624352_)))))
            (let ((_g2426324621_
                   (lambda (_g2426624513_)
                     (if (gx#stx-pair? _g2426624513_)
                         (let ((_e2428724516_ (gx#syntax-e _g2426624513_)))
                           (let ((_hd2428824520_ (##car _e2428724516_))
                                 (_tl2428924523_ (##cdr _e2428724516_)))
                             (if (gx#stx-pair? _tl2428924523_)
                                 (let ((_e2429024526_
                                        (gx#syntax-e _tl2428924523_)))
                                   (let ((_hd2429124530_ (##car _e2429024526_))
                                         (_tl2429224533_
                                          (##cdr _e2429024526_)))
                                     (if (gx#stx-pair? _hd2429124530_)
                                         (let ((_e2429324536_
                                                (gx#syntax-e _hd2429124530_)))
                                           (let ((_hd2429424540_
                                                  (##car _e2429324536_))
                                                 (_tl2429524543_
                                                  (##cdr _e2429324536_)))
                                             (if (gx#stx-pair? _tl2429524543_)
                                                 (let ((_e2429624546_
                                                        (gx#syntax-e
                                                         _tl2429524543_)))
                                                   (let ((_hd2429724550_
                                                          (##car _e2429624546_))
                                                         (_tl2429824553_
                                                          (##cdr _e2429624546_)))
                                                     (if (gx#stx-null?
                                                          _tl2429824553_)
                                                         (if (gx#stx-pair/null?
                                                              _tl2429224533_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _tl2429224533_)
                               '0)
                         (let ((_g29578_
                                (gx#syntax-split-splice _tl2429224533_ '0)))
                           (begin
                             (let ((_g29579_ (values-count _g29578_)))
                               (if (not (fx= _g29579_ 2))
                                   (error "Context expects 2 values"
                                          _g29579_)))
                             (let ((_target2429924556_ (values-ref _g29578_ 0))
                                   (_tl2430124559_ (values-ref _g29578_ 1)))
                               (if (gx#stx-null? _tl2430124559_)
                                   (letrec ((_loop2430224562_
                                             (lambda (_hd2430024566_
                                                      _body2430624569_)
                                               (if (gx#stx-pair?
                                                    _hd2430024566_)
                                                   (let ((_e2430324572_
                                                          (gx#syntax-e
                                                           _hd2430024566_)))
                                                     (let ((_lp-hd2430424576_
                                                            (##car _e2430324572_))
                                                           (_lp-tl2430524579_
                                                            (##cdr _e2430324572_)))
                                                       (_loop2430224562_
                                                        _lp-tl2430524579_
                                                        (cons _lp-hd2430424576_
                                                              _body2430624569_))))
                                                   (let ((_body2430724582_
                                                          (reverse _body2430624569_)))
                                                     ((lambda (_L24586_
                                                               _L24588_
                                                               _L24589_
                                                               _L24590_)
                                                        (if (|gerbil/core::<match>[1]#match-pattern?|
                                                             _L24589_)
                                                            (cons _L24590_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons _L24589_ (cons _L24588_ '())) '())
                                (begin
                                  '#!void
                                  (foldr (lambda (_g2461224615_ _g2461324618_)
                                           (cons _g2461224615_ _g2461324618_))
                                         '()
                                         _L24586_))))
                    (_g2426424509_ _g2426624513_)))
              _body2430724582_
              _hd2429724550_
              _hd2429424540_
              _hd2428824520_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop2430224562_ _target2429924556_ '()))
                                   (_g2426424509_ _g2426624513_)))))
                         (_g2426424509_ _g2426624513_))
                     (_g2426424509_ _g2426624513_))
                 (_g2426424509_ _g2426624513_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2426424509_
                                                  _g2426624513_))))
                                         (_g2426424509_ _g2426624513_))))
                                 (_g2426424509_ _g2426624513_))))
                         (_g2426424509_ _g2426624513_)))))
              (let ((_g2426224703_
                     (lambda (_g2426624625_)
                       (if (gx#stx-pair? _g2426624625_)
                           (let ((_e2426824628_ (gx#syntax-e _g2426624625_)))
                             (let ((_hd2426924632_ (##car _e2426824628_))
                                   (_tl2427024635_ (##cdr _e2426824628_)))
                               (if (gx#stx-pair? _tl2427024635_)
                                   (let ((_e2427124638_
                                          (gx#syntax-e _tl2427024635_)))
                                     (let ((_hd2427224642_
                                            (##car _e2427124638_))
                                           (_tl2427324645_
                                            (##cdr _e2427124638_)))
                                       (if (gx#stx-null? _hd2427224642_)
                                           (if (gx#stx-pair/null?
                                                _tl2427324645_)
                                               (if (fx>= (gx#stx-length
                                                          _tl2427324645_)
                                                         '0)
                                                   (let ((_g29580_
                                                          (gx#syntax-split-splice
                                                           _tl2427324645_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29581_
                                                              (values-count
                                                               _g29580_)))
                                                         (if (not (fx= _g29581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29581_)))
               (let ((_target2427424648_ (values-ref _g29580_ 0))
                     (_tl2427624651_ (values-ref _g29580_ 1)))
                 (if (gx#stx-null? _tl2427624651_)
                     (letrec ((_loop2427724654_
                               (lambda (_hd2427524658_ _body2428124661_)
                                 (if (gx#stx-pair? _hd2427524658_)
                                     (let ((_e2427824664_
                                            (gx#syntax-e _hd2427524658_)))
                                       (let ((_lp-hd2427924668_
                                              (##car _e2427824664_))
                                             (_lp-tl2428024671_
                                              (##cdr _e2427824664_)))
                                         (_loop2427724654_
                                          _lp-tl2428024671_
                                          (cons _lp-hd2427924668_
                                                _body2428124661_))))
                                     (let ((_body2428224674_
                                            (reverse _body2428124661_)))
                                       ((lambda (_L24678_)
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons '()
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2469424697_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2469524700_)
                         (cons _g2469424697_ _g2469524700_))
                       '()
                       _L24678_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body2428224674_))))))
                       (_loop2427724654_ _target2427424648_ '()))
                     (_g2426324621_ _g2426624625_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2426324621_
                                                    _g2426624625_))
                                               (_g2426324621_ _g2426624625_))
                                           (_g2426324621_ _g2426624625_))))
                                   (_g2426324621_ _g2426624625_))))
                           (_g2426324621_ _g2426624625_)))))
                (_g2426224703_ _$stx24259_)))))))
    (define |gerbil/core::<match>[:0:]#with*|
      (lambda (_$stx24711_)
        (let ((_g2471624768_
               (lambda (_g2471724764_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2471724764_))))
          (let ((_g2471524851_
                 (lambda (_g2471724772_)
                   (if (gx#stx-pair? _g2471724772_)
                       (let ((_e2474824775_ (gx#syntax-e _g2471724772_)))
                         (let ((_hd2474924779_ (##car _e2474824775_))
                               (_tl2475024782_ (##cdr _e2474824775_)))
                           (if (gx#stx-pair? _tl2475024782_)
                               (let ((_e2475124785_
                                      (gx#syntax-e _tl2475024782_)))
                                 (let ((_hd2475224789_ (##car _e2475124785_))
                                       (_tl2475324792_ (##cdr _e2475124785_)))
                                   (if (gx#stx-null? _hd2475224789_)
                                       (if (gx#stx-pair/null? _tl2475324792_)
                                           (if (fx>= (gx#stx-length
                                                      _tl2475324792_)
                                                     '0)
                                               (let ((_g29582_
                                                      (gx#syntax-split-splice
                                                       _tl2475324792_
                                                       '0)))
                                                 (begin
                                                   (let ((_g29583_
                                                          (values-count
                                                           _g29582_)))
                                                     (if (not (fx= _g29583_ 2))
                                                         (error "Context expects 2 values"
                                                                _g29583_)))
                                                   (let ((_target2475424795_
                                                          (values-ref
                                                           _g29582_
                                                           0))
                                                         (_tl2475624798_
                                                          (values-ref
                                                           _g29582_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl2475624798_)
                                                         (letrec ((_loop2475724801_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd2475524805_ _body2476124808_)
                             (if (gx#stx-pair? _hd2475524805_)
                                 (let ((_e2475824811_
                                        (gx#syntax-e _hd2475524805_)))
                                   (let ((_lp-hd2475924815_
                                          (##car _e2475824811_))
                                         (_lp-tl2476024818_
                                          (##cdr _e2475824811_)))
                                     (_loop2475724801_
                                      _lp-tl2476024818_
                                      (cons _lp-hd2475924815_
                                            _body2476124808_))))
                                 (let ((_body2476224821_
                                        (reverse _body2476124808_)))
                                   ((lambda (_L24825_)
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g2484224845_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2484324848_)
                     (cons _g2484224845_ _g2484324848_))
                   '()
                   _L24825_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _body2476224821_))))))
                   (_loop2475724801_ _target2475424795_ '()))
                 (_g2471624768_ _g2471724772_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2471624768_ _g2471724772_))
                                           (_g2471624768_ _g2471724772_))
                                       (_g2471624768_ _g2471724772_))))
                               (_g2471624768_ _g2471724772_))))
                       (_g2471624768_ _g2471724772_)))))
            (let ((_g2471424977_
                   (lambda (_g2471724855_)
                     (if (gx#stx-pair? _g2471724855_)
                         (let ((_e2472324858_ (gx#syntax-e _g2471724855_)))
                           (let ((_hd2472424862_ (##car _e2472324858_))
                                 (_tl2472524865_ (##cdr _e2472324858_)))
                             (if (gx#stx-pair? _tl2472524865_)
                                 (let ((_e2472624868_
                                        (gx#syntax-e _tl2472524865_)))
                                   (let ((_hd2472724872_ (##car _e2472624868_))
                                         (_tl2472824875_
                                          (##cdr _e2472624868_)))
                                     (if (gx#stx-pair? _hd2472724872_)
                                         (let ((_e2472924878_
                                                (gx#syntax-e _hd2472724872_)))
                                           (let ((_hd2473024882_
                                                  (##car _e2472924878_))
                                                 (_tl2473124885_
                                                  (##cdr _e2472924878_)))
                                             (if (gx#stx-pair? _hd2473024882_)
                                                 (let ((_e2473224888_
                                                        (gx#syntax-e
                                                         _hd2473024882_)))
                                                   (let ((_hd2473324892_
                                                          (##car _e2473224888_))
                                                         (_tl2473424895_
                                                          (##cdr _e2473224888_)))
                                                     (if (gx#stx-pair?
                                                          _tl2473424895_)
                                                         (let ((_e2473524898_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2473424895_)))
                   (let ((_hd2473624902_ (##car _e2473524898_))
                         (_tl2473724905_ (##cdr _e2473524898_)))
                     (if (gx#stx-null? _tl2473724905_)
                         (if (gx#stx-pair/null? _tl2472824875_)
                             (if (fx>= (gx#stx-length _tl2472824875_) '0)
                                 (let ((_g29584_
                                        (gx#syntax-split-splice
                                         _tl2472824875_
                                         '0)))
                                   (begin
                                     (let ((_g29585_ (values-count _g29584_)))
                                       (if (not (fx= _g29585_ 2))
                                           (error "Context expects 2 values"
                                                  _g29585_)))
                                     (let ((_target2473824908_
                                            (values-ref _g29584_ 0))
                                           (_tl2474024911_
                                            (values-ref _g29584_ 1)))
                                       (if (gx#stx-null? _tl2474024911_)
                                           (letrec ((_loop2474124914_
                                                     (lambda (_hd2473924918_
                                                              _body2474524921_)
                                                       (if (gx#stx-pair?
                                                            _hd2473924918_)
                                                           (let ((_e2474224924_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd2473924918_)))
                     (let ((_lp-hd2474324928_ (##car _e2474224924_))
                           (_lp-tl2474424931_ (##cdr _e2474224924_)))
                       (_loop2474124914_
                        _lp-tl2474424931_
                        (cons _lp-hd2474324928_ _body2474524921_))))
                   (let ((_body2474624934_ (reverse _body2474524921_)))
                     ((lambda (_L24938_ _L24940_ _L24941_ _L24942_ _L24943_)
                        (cons (gx#datum->syntax '#f 'with)
                              (cons (cons (cons _L24942_ (cons _L24941_ '()))
                                          '())
                                    (cons (cons _L24943_
                                                (cons _L24940_
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2496824971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2496924974_)
                         (cons _g2496824971_ _g2496924974_))
                       '()
                       _L24938_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))))
                      _body2474624934_
                      _tl2473124885_
                      _hd2473624902_
                      _hd2473324892_
                      _hd2472424862_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop2474124914_
                                              _target2473824908_
                                              '()))
                                           (_g2471524851_ _g2471724855_)))))
                                 (_g2471524851_ _g2471724855_))
                             (_g2471524851_ _g2471724855_))
                         (_g2471524851_ _g2471724855_))))
                 (_g2471524851_ _g2471724855_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2471524851_
                                                  _g2471724855_))))
                                         (_g2471524851_ _g2471724855_))))
                                 (_g2471524851_ _g2471724855_))))
                         (_g2471524851_ _g2471724855_)))))
              (_g2471424977_ _$stx24711_))))))
    (define |gerbil/core::<match>[:0:]#?|
      (lambda (_$stx24983_)
        (let ((_g2499425138_
               (lambda (_g2499525134_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2499525134_))))
          (let ((_g2499325233_
                 (lambda (_g2499525142_)
                   (if (gx#stx-pair? _g2499525142_)
                       (let ((_e2511525145_ (gx#syntax-e _g2499525142_)))
                         (let ((_hd2511625149_ (##car _e2511525145_))
                               (_tl2511725152_ (##cdr _e2511525145_)))
                           (if (gx#stx-pair? _tl2511725152_)
                               (let ((_e2511825155_
                                      (gx#syntax-e _tl2511725152_)))
                                 (let ((_hd2511925159_ (##car _e2511825155_))
                                       (_tl2512025162_ (##cdr _e2511825155_)))
                                   (if (gx#stx-pair? _tl2512025162_)
                                       (let ((_e2512125165_
                                              (gx#syntax-e _tl2512025162_)))
                                         (let ((_hd2512225169_
                                                (##car _e2512125165_))
                                               (_tl2512325172_
                                                (##cdr _e2512125165_)))
                                           (if (gx#stx-datum? _hd2512225169_)
                                               (if (equal? (gx#stx-e
                                                            _hd2512225169_)
                                                           '::)
                                                   (if (gx#stx-pair?
                                                        _tl2512325172_)
                                                       (let ((_e2512425175_
                                                              (gx#syntax-e
                                                               _tl2512325172_)))
                                                         (let ((_hd2512525179_
                                                                (##car _e2512425175_))
                                                               (_tl2512625182_
                                                                (##cdr _e2512425175_)))
                                                           (if (gx#stx-pair?
                                                                _tl2512625182_)
                                                               (let ((_e2512725185_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2512625182_)))
                         (let ((_hd2512825189_ (##car _e2512725185_))
                               (_tl2512925192_ (##cdr _e2512725185_)))
                           (if (gx#identifier? _hd2512825189_)
                               (if (gx#free-identifier=?
                                    |gerbil/core::<match>[1]#_g29586_|
                                    _hd2512825189_)
                                   (if (gx#stx-pair? _tl2512925192_)
                                       (let ((_e2513025195_
                                              (gx#syntax-e _tl2512925192_)))
                                         (let ((_hd2513125199_
                                                (##car _e2513025195_))
                                               (_tl2513225202_
                                                (##cdr _e2513025195_)))
                                           (if (gx#stx-null? _tl2513225202_)
                                               ((lambda (_L25205_
                                                         _L25207_
                                                         _L25208_
                                                         _L25209_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$obj)
                            '())
                      (cons (cons (gx#datum->syntax '#f 'and)
                                  (cons (cons _L25209_
                                              (cons _L25208_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '$obj)
                                                          '())))
                                        (cons (cons _L25205_
                                                    (cons (cons _L25207_
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
                                                _hd2513125199_
                                                _hd2512525179_
                                                _hd2511925159_
                                                _hd2511625149_)
                                               (_g2499425138_ _g2499525142_))))
                                       (_g2499425138_ _g2499525142_))
                                   (_g2499425138_ _g2499525142_))
                               (_g2499425138_ _g2499525142_))))
                       (_g2499425138_ _g2499525142_))))
               (_g2499425138_ _g2499525142_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2499425138_
                                                    _g2499525142_))
                                               (_g2499425138_ _g2499525142_))))
                                       (_g2499425138_ _g2499525142_))))
                               (_g2499425138_ _g2499525142_))))
                       (_g2499425138_ _g2499525142_)))))
            (let ((_g2499225301_
                   (lambda (_g2499525237_)
                     (if (gx#stx-pair? _g2499525237_)
                         (let ((_e2509925240_ (gx#syntax-e _g2499525237_)))
                           (let ((_hd2510025244_ (##car _e2509925240_))
                                 (_tl2510125247_ (##cdr _e2509925240_)))
                             (if (gx#stx-pair? _tl2510125247_)
                                 (let ((_e2510225250_
                                        (gx#syntax-e _tl2510125247_)))
                                   (let ((_hd2510325254_ (##car _e2510225250_))
                                         (_tl2510425257_
                                          (##cdr _e2510225250_)))
                                     (if (gx#stx-pair? _tl2510425257_)
                                         (let ((_e2510525260_
                                                (gx#syntax-e _tl2510425257_)))
                                           (let ((_hd2510625264_
                                                  (##car _e2510525260_))
                                                 (_tl2510725267_
                                                  (##cdr _e2510525260_)))
                                             (if (gx#stx-datum? _hd2510625264_)
                                                 (if (equal? (gx#stx-e
                                                              _hd2510625264_)
                                                             '::)
                                                     (if (gx#stx-pair?
                                                          _tl2510725267_)
                                                         (let ((_e2510825270_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2510725267_)))
                   (let ((_hd2510925274_ (##car _e2510825270_))
                         (_tl2511025277_ (##cdr _e2510825270_)))
                     (if (gx#stx-null? _tl2511025277_)
                         ((lambda (_L25280_ _L25282_ _L25283_)
                            (cons (gx#datum->syntax '#f 'lambda)
                                  (cons (cons (gx#datum->syntax '#f '$obj) '())
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'alet)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$val)
                        (cons (cons _L25283_
                                    (cons _L25282_
                                          (cons (gx#datum->syntax '#f '$obj)
                                                '())))
                              '()))
                  (cons (cons _L25280_ (cons (gx#datum->syntax '#f '$val) '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          _hd2510925274_
                          _hd2510325254_
                          _hd2510025244_)
                         (_g2499325233_ _g2499525237_))))
                 (_g2499325233_ _g2499525237_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2499325233_
                                                      _g2499525237_))
                                                 (_g2499325233_
                                                  _g2499525237_))))
                                         (_g2499325233_ _g2499525237_))))
                                 (_g2499325233_ _g2499525237_))))
                         (_g2499325233_ _g2499525237_)))))
              (let ((_g2499125369_
                     (lambda (_g2499525305_)
                       (if (gx#stx-pair? _g2499525305_)
                           (let ((_e2508425308_ (gx#syntax-e _g2499525305_)))
                             (let ((_hd2508525312_ (##car _e2508425308_))
                                   (_tl2508625315_ (##cdr _e2508425308_)))
                               (if (gx#stx-pair? _tl2508625315_)
                                   (let ((_e2508725318_
                                          (gx#syntax-e _tl2508625315_)))
                                     (let ((_hd2508825322_
                                            (##car _e2508725318_))
                                           (_tl2508925325_
                                            (##cdr _e2508725318_)))
                                       (if (gx#stx-pair? _tl2508925325_)
                                           (let ((_e2509025328_
                                                  (gx#syntax-e
                                                   _tl2508925325_)))
                                             (let ((_hd2509125332_
                                                    (##car _e2509025328_))
                                                   (_tl2509225335_
                                                    (##cdr _e2509025328_)))
                                               (if (gx#identifier?
                                                    _hd2509125332_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core::<match>[1]#_g29587_|
                                                        _hd2509125332_)
                                                       (if (gx#stx-pair?
                                                            _tl2509225335_)
                                                           (let ((_e2509325338_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl2509225335_)))
                     (let ((_hd2509425342_ (##car _e2509325338_))
                           (_tl2509525345_ (##cdr _e2509325338_)))
                       (if (gx#stx-null? _tl2509525345_)
                           ((lambda (_L25348_ _L25350_ _L25351_)
                              (cons (gx#datum->syntax '#f 'lambda)
                                    (cons (cons (gx#datum->syntax '#f '$obj)
                                                '())
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'and)
                                                      (cons (cons _L25351_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L25350_
                                (cons (gx#datum->syntax '#f '$obj) '())))
                    (cons (cons _L25348_
                                (cons (gx#datum->syntax '#f '$obj) '()))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                            _hd2509425342_
                            _hd2508825322_
                            _hd2508525312_)
                           (_g2499225301_ _g2499525305_))))
                   (_g2499225301_ _g2499525305_))
               (_g2499225301_ _g2499525305_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2499225301_
                                                    _g2499525305_))))
                                           (_g2499225301_ _g2499525305_))))
                                   (_g2499225301_ _g2499525305_))))
                           (_g2499225301_ _g2499525305_)))))
                (let ((_g2499025411_
                       (lambda (_g2499525373_)
                         (if (gx#stx-pair? _g2499525373_)
                             (let ((_e2507525376_ (gx#syntax-e _g2499525373_)))
                               (let ((_hd2507625380_ (##car _e2507525376_))
                                     (_tl2507725383_ (##cdr _e2507525376_)))
                                 (if (gx#stx-pair? _tl2507725383_)
                                     (let ((_e2507825386_
                                            (gx#syntax-e _tl2507725383_)))
                                       (let ((_hd2507925390_
                                              (##car _e2507825386_))
                                             (_tl2508025393_
                                              (##cdr _e2507825386_)))
                                         (if (gx#stx-null? _tl2508025393_)
                                             ((lambda (_L25396_ _L25398_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'lambda)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '$obj)
                          '())
                    (cons (cons _L25398_
                                (cons _L25396_
                                      (cons (gx#datum->syntax '#f '$obj) '())))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd2507925390_
                                              _hd2507625380_)
                                             (_g2499125369_ _g2499525373_))))
                                     (_g2499125369_ _g2499525373_))))
                             (_g2499125369_ _g2499525373_)))))
                  (let ((_g2498925465_
                         (lambda (_g2499525415_)
                           (if (gx#stx-pair? _g2499525415_)
                               (let ((_e2506425418_
                                      (gx#syntax-e _g2499525415_)))
                                 (let ((_hd2506525422_ (##car _e2506425418_))
                                       (_tl2506625425_ (##cdr _e2506425418_)))
                                   (if (gx#stx-pair? _tl2506625425_)
                                       (let ((_e2506725428_
                                              (gx#syntax-e _tl2506625425_)))
                                         (let ((_hd2506825432_
                                                (##car _e2506725428_))
                                               (_tl2506925435_
                                                (##cdr _e2506725428_)))
                                           (if (gx#stx-pair? _tl2506925435_)
                                               (let ((_e2507025438_
                                                      (gx#syntax-e
                                                       _tl2506925435_)))
                                                 (let ((_hd2507125442_
                                                        (##car _e2507025438_))
                                                       (_tl2507225445_
                                                        (##cdr _e2507025438_)))
                                                   (if (gx#stx-null?
                                                        _tl2507225445_)
                                                       ((lambda (_L25448_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L25450_)
                  (cons _L25450_ (cons _L25448_ '())))
                _hd2507125442_
                _hd2506825432_)
               (_g2499025411_ _g2499525415_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2499025411_ _g2499525415_))))
                                       (_g2499025411_ _g2499525415_))))
                               (_g2499025411_ _g2499525415_)))))
                    (let ((_g2498825545_
                           (lambda (_g2499525469_)
                             (if (gx#stx-pair? _g2499525469_)
                                 (let ((_e2504725472_
                                        (gx#syntax-e _g2499525469_)))
                                   (let ((_hd2504825476_ (##car _e2504725472_))
                                         (_tl2504925479_
                                          (##cdr _e2504725472_)))
                                     (if (gx#stx-pair? _tl2504925479_)
                                         (let ((_e2505025482_
                                                (gx#syntax-e _tl2504925479_)))
                                           (let ((_hd2505125486_
                                                  (##car _e2505025482_))
                                                 (_tl2505225489_
                                                  (##cdr _e2505025482_)))
                                             (if (gx#stx-pair? _hd2505125486_)
                                                 (let ((_e2505325492_
                                                        (gx#syntax-e
                                                         _hd2505125486_)))
                                                   (let ((_hd2505425496_
                                                          (##car _e2505325492_))
                                                         (_tl2505525499_
                                                          (##cdr _e2505325492_)))
                                                     (if (gx#identifier?
                                                          _hd2505425496_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core::<match>[1]#_g29588_|
                                                              _hd2505425496_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2505525499_)
                         (let ((_e2505625502_ (gx#syntax-e _tl2505525499_)))
                           (let ((_hd2505725506_ (##car _e2505625502_))
                                 (_tl2505825509_ (##cdr _e2505625502_)))
                             (if (gx#stx-null? _tl2505825509_)
                                 (if (gx#stx-pair? _tl2505225489_)
                                     (let ((_e2505925512_
                                            (gx#syntax-e _tl2505225489_)))
                                       (let ((_hd2506025516_
                                              (##car _e2505925512_))
                                             (_tl2506125519_
                                              (##cdr _e2505925512_)))
                                         (if (gx#stx-null? _tl2506125519_)
                                             ((lambda (_L25522_
                                                       _L25524_
                                                       _L25525_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'not)
                                                      (cons (cons _L25525_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L25524_ (cons _L25522_ '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd2506025516_
                                              _hd2505725506_
                                              _hd2504825476_)
                                             (_g2498925465_ _g2499525469_))))
                                     (_g2498925465_ _g2499525469_))
                                 (_g2498925465_ _g2499525469_))))
                         (_g2498925465_ _g2499525469_))
                     (_g2498925465_ _g2499525469_))
                 (_g2498925465_ _g2499525469_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2498925465_
                                                  _g2499525469_))))
                                         (_g2498925465_ _g2499525469_))))
                                 (_g2498925465_ _g2499525469_)))))
                      (let ((_g2498725655_
                             (lambda (_g2499525549_)
                               (if (gx#stx-pair? _g2499525549_)
                                   (let ((_e2502325552_
                                          (gx#syntax-e _g2499525549_)))
                                     (let ((_hd2502425556_
                                            (##car _e2502325552_))
                                           (_tl2502525559_
                                            (##cdr _e2502325552_)))
                                       (if (gx#stx-pair? _tl2502525559_)
                                           (let ((_e2502625562_
                                                  (gx#syntax-e
                                                   _tl2502525559_)))
                                             (let ((_hd2502725566_
                                                    (##car _e2502625562_))
                                                   (_tl2502825569_
                                                    (##cdr _e2502625562_)))
                                               (if (gx#stx-pair?
                                                    _hd2502725566_)
                                                   (let ((_e2502925572_
                                                          (gx#syntax-e
                                                           _hd2502725566_)))
                                                     (let ((_hd2503025576_
                                                            (##car _e2502925572_))
                                                           (_tl2503125579_
                                                            (##cdr _e2502925572_)))
                                                       (if (gx#identifier?
                                                            _hd2503025576_)
                                                           (if (gx#free-identifier=?
                                                                |gerbil/core::<match>[1]#_g29589_|
                                                                _hd2503025576_)
                                                               (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl2503125579_)
                           (if (fx>= (gx#stx-length _tl2503125579_) '0)
                               (let ((_g29590_
                                      (gx#syntax-split-splice
                                       _tl2503125579_
                                       '0)))
                                 (begin
                                   (let ((_g29591_ (values-count _g29590_)))
                                     (if (not (fx= _g29591_ 2))
                                         (error "Context expects 2 values"
                                                _g29591_)))
                                   (let ((_target2503225582_
                                          (values-ref _g29590_ 0))
                                         (_tl2503425585_
                                          (values-ref _g29590_ 1)))
                                     (if (gx#stx-null? _tl2503425585_)
                                         (letrec ((_loop2503525588_
                                                   (lambda (_hd2503325592_
                                                            _pred2503925595_)
                                                     (if (gx#stx-pair?
                                                          _hd2503325592_)
                                                         (let ((_e2503625598_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2503325592_)))
                   (let ((_lp-hd2503725602_ (##car _e2503625598_))
                         (_lp-tl2503825605_ (##cdr _e2503625598_)))
                     (_loop2503525588_
                      _lp-tl2503825605_
                      (cons _lp-hd2503725602_ _pred2503925595_))))
                 (let ((_pred2504025608_ (reverse _pred2503925595_)))
                   (if (gx#stx-pair? _tl2502825569_)
                       (let ((_e2504125612_ (gx#syntax-e _tl2502825569_)))
                         (let ((_hd2504225616_ (##car _e2504125612_))
                               (_tl2504325619_ (##cdr _e2504125612_)))
                           (if (gx#stx-null? _tl2504325619_)
                               ((lambda (_L25622_ _L25624_ _L25625_)
                                  (cons (gx#datum->syntax '#f 'or)
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g2564625649_
                                                          _g2564725652_)
                                                   (cons (cons _L25625_
                                                               (cons _g2564625649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L25622_ '())))
                 _g2564725652_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L25624_))))
                                _hd2504225616_
                                _pred2504025608_
                                _hd2502425556_)
                               (_g2498825545_ _g2499525549_))))
                       (_g2498825545_ _g2499525549_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop2503525588_
                                            _target2503225582_
                                            '()))
                                         (_g2498825545_ _g2499525549_)))))
                               (_g2498825545_ _g2499525549_))
                           (_g2498825545_ _g2499525549_))
                       (_g2498825545_ _g2499525549_))
                   (_g2498825545_ _g2499525549_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2498825545_
                                                    _g2499525549_))))
                                           (_g2498825545_ _g2499525549_))))
                                   (_g2498825545_ _g2499525549_)))))
                        (let ((_g2498625765_
                               (lambda (_g2499525659_)
                                 (if (gx#stx-pair? _g2499525659_)
                                     (let ((_e2499925662_
                                            (gx#syntax-e _g2499525659_)))
                                       (let ((_hd2500025666_
                                              (##car _e2499925662_))
                                             (_tl2500125669_
                                              (##cdr _e2499925662_)))
                                         (if (gx#stx-pair? _tl2500125669_)
                                             (let ((_e2500225672_
                                                    (gx#syntax-e
                                                     _tl2500125669_)))
                                               (let ((_hd2500325676_
                                                      (##car _e2500225672_))
                                                     (_tl2500425679_
                                                      (##cdr _e2500225672_)))
                                                 (if (gx#stx-pair?
                                                      _hd2500325676_)
                                                     (let ((_e2500525682_
                                                            (gx#syntax-e
                                                             _hd2500325676_)))
                                                       (let ((_hd2500625686_
                                                              (##car _e2500525682_))
                                                             (_tl2500725689_
                                                              (##cdr _e2500525682_)))
                                                         (if (gx#identifier?
                                                              _hd2500625686_)
                                                             (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          |gerbil/core::<match>[1]#_g29592_|
                          _hd2500625686_)
                         (if (gx#stx-pair/null? _tl2500725689_)
                             (if (fx>= (gx#stx-length _tl2500725689_) '0)
                                 (let ((_g29593_
                                        (gx#syntax-split-splice
                                         _tl2500725689_
                                         '0)))
                                   (begin
                                     (let ((_g29594_ (values-count _g29593_)))
                                       (if (not (fx= _g29594_ 2))
                                           (error "Context expects 2 values"
                                                  _g29594_)))
                                     (let ((_target2500825692_
                                            (values-ref _g29593_ 0))
                                           (_tl2501025695_
                                            (values-ref _g29593_ 1)))
                                       (if (gx#stx-null? _tl2501025695_)
                                           (letrec ((_loop2501125698_
                                                     (lambda (_hd2500925702_
                                                              _pred2501525705_)
                                                       (if (gx#stx-pair?
                                                            _hd2500925702_)
                                                           (let ((_e2501225708_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd2500925702_)))
                     (let ((_lp-hd2501325712_ (##car _e2501225708_))
                           (_lp-tl2501425715_ (##cdr _e2501225708_)))
                       (_loop2501125698_
                        _lp-tl2501425715_
                        (cons _lp-hd2501325712_ _pred2501525705_))))
                   (let ((_pred2501625718_ (reverse _pred2501525705_)))
                     (if (gx#stx-pair? _tl2500425679_)
                         (let ((_e2501725722_ (gx#syntax-e _tl2500425679_)))
                           (let ((_hd2501825726_ (##car _e2501725722_))
                                 (_tl2501925729_ (##cdr _e2501725722_)))
                             (if (gx#stx-null? _tl2501925729_)
                                 ((lambda (_L25732_ _L25734_ _L25735_)
                                    (cons (gx#datum->syntax '#f 'and)
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2575625759_
                                                            _g2575725762_)
                                                     (cons (cons _L25735_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _g2575625759_ (cons _L25732_ '())))
                   _g2575725762_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _L25734_))))
                                  _hd2501825726_
                                  _pred2501625718_
                                  _hd2500025666_)
                                 (_g2498725655_ _g2499525659_))))
                         (_g2498725655_ _g2499525659_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop2501125698_
                                              _target2500825692_
                                              '()))
                                           (_g2498725655_ _g2499525659_)))))
                                 (_g2498725655_ _g2499525659_))
                             (_g2498725655_ _g2499525659_))
                         (_g2498725655_ _g2499525659_))
                     (_g2498725655_ _g2499525659_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2498725655_
                                                      _g2499525659_))))
                                             (_g2498725655_ _g2499525659_))))
                                     (_g2498725655_ _g2499525659_)))))
                          (_g2498625765_ _$stx24983_))))))))))))
    (define |gerbil/core::<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx25771_)
        (let ((_g2577625810_
               (lambda (_g2577725806_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2577725806_))))
          (let ((_g2577525867_
                 (lambda (_g2577725814_)
                   (if (gx#stx-pair? _g2577725814_)
                       (let ((_e2579625817_ (gx#syntax-e _g2577725814_)))
                         (let ((_hd2579725821_ (##car _e2579625817_))
                               (_tl2579825824_ (##cdr _e2579625817_)))
                           (if (gx#stx-pair? _tl2579825824_)
                               (let ((_e2579925827_
                                      (gx#syntax-e _tl2579825824_)))
                                 (let ((_hd2580025831_ (##car _e2579925827_))
                                       (_tl2580125834_ (##cdr _e2579925827_)))
                                   (if (gx#stx-pair? _tl2580125834_)
                                       (let ((_e2580225837_
                                              (gx#syntax-e _tl2580125834_)))
                                         (let ((_hd2580325841_
                                                (##car _e2580225837_))
                                               (_tl2580425844_
                                                (##cdr _e2580225837_)))
                                           (if (gx#stx-null? _tl2580425844_)
                                               ((lambda (_L25847_
                                                         _L25849_
                                                         _L25850_)
                                                  (cons _L25850_
                                                        (cons _L25849_
                                                              (cons _L25847_
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
                                                _hd2580325841_
                                                _hd2580025831_
                                                _hd2579725821_)
                                               (_g2577625810_ _g2577725814_))))
                                       (_g2577625810_ _g2577725814_))))
                               (_g2577625810_ _g2577725814_))))
                       (_g2577625810_ _g2577725814_)))))
            (let ((_g2577425935_
                   (lambda (_g2577725871_)
                     (if (gx#stx-pair? _g2577725871_)
                         (let ((_e2578125874_ (gx#syntax-e _g2577725871_)))
                           (let ((_hd2578225878_ (##car _e2578125874_))
                                 (_tl2578325881_ (##cdr _e2578125874_)))
                             (if (gx#stx-pair? _tl2578325881_)
                                 (let ((_e2578425884_
                                        (gx#syntax-e _tl2578325881_)))
                                   (let ((_hd2578525888_ (##car _e2578425884_))
                                         (_tl2578625891_
                                          (##cdr _e2578425884_)))
                                     (if (gx#stx-pair? _tl2578625891_)
                                         (let ((_e2578725894_
                                                (gx#syntax-e _tl2578625891_)))
                                           (let ((_hd2578825898_
                                                  (##car _e2578725894_))
                                                 (_tl2578925901_
                                                  (##cdr _e2578725894_)))
                                             (if (gx#stx-pair? _tl2578925901_)
                                                 (let ((_e2579025904_
                                                        (gx#syntax-e
                                                         _tl2578925901_)))
                                                   (let ((_hd2579125908_
                                                          (##car _e2579025904_))
                                                         (_tl2579225911_
                                                          (##cdr _e2579025904_)))
                                                     (if (gx#stx-null?
                                                          _tl2579225911_)
                                                         ((lambda (_L25914_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L25916_
                           _L25917_)
                    (if (gx#identifier? _L25917_)
                        (cons (gx#datum->syntax '#f 'defsyntax)
                              (cons _L25917_
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'make-match-macro)
                                                (cons 'macro:
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'let)
                          (cons (cons (cons (gx#datum->syntax '#f '$match-e)
                                            (cons _L25916_ '()))
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '$macro-e)
                                                  (cons _L25914_ '()))
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
                        (_g2577525867_ _g2577725871_)))
                  _hd2579125908_
                  _hd2578825898_
                  _hd2578525888_)
                 (_g2577525867_ _g2577725871_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2577525867_
                                                  _g2577725871_))))
                                         (_g2577525867_ _g2577725871_))))
                                 (_g2577525867_ _g2577725871_))))
                         (_g2577525867_ _g2577725871_)))))
              (_g2577425935_ _$stx25771_))))))
    (define |gerbil/core::<match>[:0:]#defrules-for-match|
      (lambda (_$stx25939_)
        (let ((_g2594325958_
               (lambda (_g2594425954_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g2594425954_))))
          (let ((_g2594226001_
                 (lambda (_g2594425962_)
                   (if (gx#stx-pair? _g2594425962_)
                       (let ((_e2594725965_ (gx#syntax-e _g2594425962_)))
                         (let ((_hd2594825969_ (##car _e2594725965_))
                               (_tl2594925972_ (##cdr _e2594725965_)))
                           (if (gx#stx-pair? _tl2594925972_)
                               (let ((_e2595025975_
                                      (gx#syntax-e _tl2594925972_)))
                                 (let ((_hd2595125979_ (##car _e2595025975_))
                                       (_tl2595225982_ (##cdr _e2595025975_)))
                                   ((lambda (_L25985_ _L25987_)
                                      (cons (gx#datum->syntax
                                             '#f
                                             'defsyntax-for-match)
                                            (cons _L25987_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'syntax-rules)
                                                              _L25985_)
                                                        '()))))
                                    _tl2595225982_
                                    _hd2595125979_)))
                               (_g2594325958_ _g2594425962_))))
                       (_g2594325958_ _g2594425962_)))))
            (_g2594226001_ _$stx25939_)))))))
