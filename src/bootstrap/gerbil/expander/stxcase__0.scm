(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#syntax-pattern::t
    (make-struct-type
     'gx#syntax-pattern::t
     gx#expander::t
     '2
     'syntax-pattern
     '()
     '#f
     '(id depth)))
  (define gx#syntax-pattern? (make-struct-predicate gx#syntax-pattern::t))
  (define gx#make-syntax-pattern
    (lambda _$args18268_
      (apply make-struct-instance gx#syntax-pattern::t _$args18268_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self18265_ _stx18266_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx18266_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx17747_)
      (letrec ((_generate17749_
                (lambda (_e17976_)
                  (letrec ((_BUG17978_
                            (lambda (_q18140_)
                              (error '"BUG: syntax; generate"
                                     _stx17747_
                                     _e17976_
                                     _q18140_)))
                           (_local-pattern-e17979_
                            (lambda (_pat18138_)
                              (gx#syntax-local-rewrap
                               (##structure-ref
                                _pat18138_
                                '2
                                gx#syntax-pattern::t
                                '#f))))
                           (_getvar17980_
                            (lambda (_q18135_ _vars18136_)
                              (assgetq _q18135_ _vars18136_ _BUG17978_)))
                           (_getarg17981_
                            (lambda (_arg18101_ _vars18102_)
                              (let* ((_arg1810318110_ _arg18101_)
                                     (_E1810518114_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _arg1810318110_)))
                                     (_K1810618123_
                                      (lambda (_e18117_ _tag18118_)
                                        (let ((_$e18120_ _tag18118_))
                                          (if (eq? 'ref _$e18120_)
                                              (_getvar17980_
                                               _e18117_
                                               _vars18102_)
                                              (if (eq? 'pattern _$e18120_)
                                                  (_local-pattern-e17979_
                                                   _e18117_)
                                                  (_BUG17978_ _arg18101_)))))))
                                (if (##pair? _arg1810318110_)
                                    (let ((_hd1810718126_
                                           (##car _arg1810318110_))
                                          (_tl1810818128_
                                           (##cdr _arg1810318110_)))
                                      (let* ((_tag18131_ _hd1810718126_)
                                             (_e18133_ _tl1810818128_))
                                        (_K1810618123_ _e18133_ _tag18131_)))
                                    (_E1810518114_))))))
                    (let _recur17983_ ((_e17985_ _e17976_) (_vars17986_ '()))
                      (let* ((_e1798717994_ _e17985_)
                             (_E1798917998_
                              (lambda ()
                                (error '"No clause matching" _e1798717994_)))
                             (_K1799018089_
                              (lambda (_body18001_ _tag18002_)
                                (let ((_$e18004_ _tag18002_))
                                  (if (eq? 'datum _$e18004_)
                                      (gx#core-list 'quote _body18001_)
                                      (if (eq? 'term _$e18004_)
                                          (let ((_id18007_
                                                 (gx#syntax-local-unwrap
                                                  _body18001_)))
                                            (if (##structure-direct-instance-of?
                                                 _id18007_
                                                 'gx#identifier-wrap::t)
                                                (let ((_marks18009_
                                                       (##direct-structure-ref
                                                        _id18007_
                                                        '3
                                                        gx#identifier-wrap::t
                                                        '#f)))
                                                  (if (null? _marks18009_)
                                                      (gx#core-list
                                                       'datum->syntax
                                                       '#f
                                                       (gx#core-list
                                                        'quote
                                                        _body18001_))
                                                      (gx#core-list
                                                       'datum->syntax
                                                       (gx#core-list
                                                        'quote-syntax
                                                        _body18001_)
                                                       (gx#core-list
                                                        'quote
                                                        _body18001_)
                                                       '#f
                                                       '#f)))
                                                (if (##structure-direct-instance-of?
                                                     _id18007_
                                                     'gx#syntax-quote::t)
                                                    (gx#core-list
                                                     'quote-syntax
                                                     _body18001_)
                                                    (_BUG17978_ _e17985_))))
                                          (if (eq? 'pattern _$e18004_)
                                              (_local-pattern-e17979_
                                               _body18001_)
                                              (if (eq? 'ref _$e18004_)
                                                  (_getvar17980_
                                                   _body18001_
                                                   _vars17986_)
                                                  (if (eq? 'cons _$e18004_)
                                                      (gx#core-list
                                                       'cons
                                                       (_recur17983_
                                                        (car _body18001_)
                                                        _vars17986_)
                                                       (_recur17983_
                                                        (cdr _body18001_)
                                                        _vars17986_))
                                                      (if (eq? 'vector
                                                               _$e18004_)
                                                          (gx#core-list
                                                           'list->vector
                                                           (_recur17983_
                                                            _body18001_
                                                            _vars17986_))
                                                          (if (eq? 'box
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e18004_)
                      (gx#core-list
                       'box
                       (_recur17983_ _body18001_ _vars17986_))
                      (if (eq? 'splice _$e18004_)
                          (let* ((_body1801018021_ _body18001_)
                                 (_E1801218025_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _body1801018021_)))
                                 (_K1801318063_
                                  (lambda (_args18028_
                                           _iv18029_
                                           _hd18030_
                                           _depth18031_)
                                    (let* ((_targets18037_
                                            (map (lambda (_g1803218034_)
                                                   (_getarg17981_
                                                    _g1803218034_
                                                    _vars17986_))
                                                 _args18028_))
                                           (_fold-in18039_
                                            (gx#gentemps _args18028_))
                                           (_fold-out18041_ (gx#genident__0))
                                           (_lambda-args18043_
                                            (foldr1 cons
                                                    (cons _fold-out18041_ '())
                                                    _fold-in18039_))
                                           (_lambda-body18060_
                                            (if (fx> _depth18031_ '1)
                                                (let ((_r-args18051_
                                                       (map (lambda (_arg18045_)
                                                              (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cdr _arg18045_)))
                    _args18028_))
              (_r-vars18052_
               (foldr2 (lambda (_arg18047_ _var18048_ _r18049_)
                         (cons (cons (cdr _arg18047_) _var18048_) _r18049_))
                       _vars17986_
                       _args18028_
                       _fold-in18039_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur17983_
                                                   (cons 'splice
                                                         (cons (fx- _depth18031_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                       (cons _hd18030_
                             (cons (cons 'var _fold-out18041_)
                                   _r-args18051_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _r-vars18052_))
                                                (let ((_hd-vars18058_
                                                       (foldr2 (lambda (_arg18054_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _var18055_
                                _r18056_)
                         (cons (cons (cdr _arg18054_) _var18055_) _r18056_))
                       _vars17986_
                       _args18028_
                       _fold-in18039_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#core-list
                                                   'cons
                                                   (_recur17983_
                                                    _hd18030_
                                                    _hd-vars18058_)
                                                   _fold-out18041_)))))
                                      (gx#core-list
                                       'begin
                                       (if (fx> (length _targets18037_) '1)
                                           (gx#core-cons*
                                            'syntax-check-splice-targets
                                            _targets18037_)
                                           '#!void)
                                       (gx#core-cons*
                                        'foldr
                                        (gx#core-list
                                         'lambda%
                                         _lambda-args18043_
                                         _lambda-body18060_)
                                        (_recur17983_ _iv18029_ _vars17986_)
                                        _targets18037_))))))
                            (if (##pair? _body1801018021_)
                                (let ((_hd1801418066_ (##car _body1801018021_))
                                      (_tl1801518068_
                                       (##cdr _body1801018021_)))
                                  (let ((_depth18071_ _hd1801418066_))
                                    (if (##pair? _tl1801518068_)
                                        (let ((_hd1801618073_
                                               (##car _tl1801518068_))
                                              (_tl1801718075_
                                               (##cdr _tl1801518068_)))
                                          (let ((_hd18078_ _hd1801618073_))
                                            (if (##pair? _tl1801718075_)
                                                (let ((_hd1801818080_
                                                       (##car _tl1801718075_))
                                                      (_tl1801918082_
                                                       (##cdr _tl1801718075_)))
                                                  (let* ((_iv18085_
                                                          _hd1801818080_)
                                                         (_args18087_
                                                          _tl1801918082_))
                                                    (_K1801318063_
                                                     _args18087_
                                                     _iv18085_
                                                     _hd18078_
                                                     _depth18071_)))
                                                (_E1801218025_))))
                                        (_E1801218025_))))
                                (_E1801218025_)))
                          (if (eq? 'var _$e18004_)
                              _body18001_
                              (_BUG17978_ _e17985_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (if (##pair? _e1798717994_)
                            (let ((_hd1799118092_ (##car _e1798717994_))
                                  (_tl1799218094_ (##cdr _e1798717994_)))
                              (let* ((_tag18097_ _hd1799118092_)
                                     (_body18099_ _tl1799218094_))
                                (_K1799018089_ _body18099_ _tag18097_)))
                            (_E1798917998_)))))))
               (_parse17750_
                (lambda (_e17791_)
                  (letrec ((_make-cons17793_
                            (lambda (_hd17968_ _tl17969_)
                              (let ((_g18270_ _hd17968_) (_g18272_ _tl17969_))
                                (begin
                                  (let ((_g18271_
                                         (if (##values? _g18270_)
                                             (##vector-length _g18270_)
                                             1)))
                                    (if (not (##fx= _g18271_ 2))
                                        (error "Context expects 2 values"
                                               _g18271_)))
                                  (let ((_g18273_
                                         (if (##values? _g18272_)
                                             (##vector-length _g18272_)
                                             1)))
                                    (if (not (##fx= _g18273_ 2))
                                        (error "Context expects 2 values"
                                               _g18273_)))
                                  (let ((_hd-e17971_ (##vector-ref _g18270_ 0))
                                        (_hd-vars17972_
                                         (##vector-ref _g18270_ 1)))
                                    (let ((_tl-e17973_
                                           (##vector-ref _g18272_ 0))
                                          (_tl-vars17974_
                                           (##vector-ref _g18272_ 1)))
                                      (values (cons 'cons
                                                    (cons _hd-e17971_
                                                          _tl-e17973_))
                                              (append _hd-vars17972_
                                                      _tl-vars17974_))))))))
                           (_make-splice17794_
                            (lambda (_where17907_
                                     _depth17908_
                                     _hd17909_
                                     _tl17910_)
                              (let ((_g18274_ _hd17909_) (_g18276_ _tl17910_))
                                (begin
                                  (let ((_g18275_
                                         (if (##values? _g18274_)
                                             (##vector-length _g18274_)
                                             1)))
                                    (if (not (##fx= _g18275_ 2))
                                        (error "Context expects 2 values"
                                               _g18275_)))
                                  (let ((_g18277_
                                         (if (##values? _g18276_)
                                             (##vector-length _g18276_)
                                             1)))
                                    (if (not (##fx= _g18277_ 2))
                                        (error "Context expects 2 values"
                                               _g18277_)))
                                  (let ((_hd-e17912_ (##vector-ref _g18274_ 0))
                                        (_hd-vars17913_
                                         (##vector-ref _g18274_ 1)))
                                    (let ((_tl-e17914_
                                           (##vector-ref _g18276_ 0))
                                          (_tl-vars17915_
                                           (##vector-ref _g18276_ 1)))
                                      (let _lp17917_ ((_rest17919_
                                                       _hd-vars17913_)
                                                      (_targets17920_ '())
                                                      (_vars17921_
                                                       _tl-vars17915_))
                                        (let* ((_rest1792217932_ _rest17919_)
                                               (_else1792417940_
                                                (lambda ()
                                                  (if (null? _targets17920_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Misplaced ellipsis"
                                                       _stx17747_
                                                       _where17907_)
                                                      (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _depth17908_
                                  (cons _hd-e17912_
                                        (cons _tl-e17914_ _targets17920_))))
                      _vars17921_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_K1792617949_
                                                (lambda (_rest17943_
                                                         _hd-pat17944_
                                                         _hd-depth*17945_)
                                                  (let ((_hd-depth17947_
                                                         (fx- _hd-depth*17945_
                                                              _depth17908_)))
                                                    (if (fxpositive?
                                                         _hd-depth17947_)
                                                        (_lp17917_
                                                         _rest17943_
                                                         (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd-pat17944_)
                       _targets17920_)
                 (cons (cons _hd-depth17947_ _hd-pat17944_) _vars17921_))
                (if (fxzero? _hd-depth17947_)
                    (_lp17917_
                     _rest17943_
                     (cons (cons 'pattern _hd-pat17944_) _targets17920_)
                     _vars17921_)
                    (gx#raise-syntax-error
                     '#f
                     '"Too many ellipses"
                     _stx17747_
                     _where17907_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1792217932_)
                                              (let ((_hd1792717952_
                                                     (##car _rest1792217932_))
                                                    (_tl1792817954_
                                                     (##cdr _rest1792217932_)))
                                                (if (##pair? _hd1792717952_)
                                                    (let ((_hd1792917957_
                                                           (##car _hd1792717952_))
                                                          (_tl1793017959_
                                                           (##cdr _hd1792717952_)))
                                                      (let* ((_hd-depth*17962_
                                                              _hd1792917957_)
                                                             (_hd-pat17964_
                                                              _tl1793017959_)
                                                             (_rest17966_
                                                              _tl1792817954_))
                                                        (_K1792617949_
                                                         _rest17966_
                                                         _hd-pat17964_
                                                         _hd-depth*17962_)))
                                                    (_else1792417940_)))
                                              (_else1792417940_))))))))))
                           (_recur17795_
                            (lambda (_e17800_ _is-e?17801_)
                              (if (_is-e?17801_ _e17800_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Mislpaced ellipsis"
                                   _stx17747_)
                                  (if (gx#syntax-local-pattern? _e17800_)
                                      (let* ((_pat17803_
                                              (gx#syntax-local-e__0 _e17800_))
                                             (_depth17805_
                                              (##structure-ref
                                               _pat17803_
                                               '3
                                               gx#syntax-pattern::t
                                               '#f)))
                                        (if (fxpositive? _depth17805_)
                                            (values (cons 'ref _pat17803_)
                                                    (cons (cons _depth17805_
                                                                _pat17803_)
                                                          '()))
                                            (values (cons 'pattern _pat17803_)
                                                    '())))
                                      (if (gx#identifier? _e17800_)
                                          (values (cons 'term _e17800_) '())
                                          (if (gx#stx-pair? _e17800_)
                                              (let* ((_e1780717814_ _e17800_)
                                                     (_E1780917818_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _e1780717814_)))
                                                     (_E1780817897_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e1780717814_)
                                                            (let ((_e1781017822_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e1780717814_)))
                      (let ((_hd1781117825_ (##car _e1781017822_))
                            (_tl1781217827_ (##cdr _e1781017822_)))
                        (let* ((_hd17830_ _hd1781117825_)
                               (_rest17832_ _tl1781217827_))
                          (if '#t
                              (if (_is-e?17801_ _hd17830_)
                                  (let* ((_e1783317840_ _rest17832_)
                                         (_E1783517844_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _stx17747_
                                             _e17800_)))
                                         (_E1783417858_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1783317840_)
                                                (let ((_e1783617848_
                                                       (gx#syntax-e
                                                        _e1783317840_)))
                                                  (let ((_hd1783717851_
                                                         (##car _e1783617848_))
                                                        (_tl1783817853_
                                                         (##cdr _e1783617848_)))
                                                    (let ((_rest17856_
                                                           _hd1783717851_))
                                                      (if (gx#stx-null?
                                                           _tl1783817853_)
                                                          (if '#t
                                                              (_recur17795_
                                                               _rest17856_
                                                               false)
                                                              (_E1783517844_))
                                                          (_E1783517844_)))))
                                                (_E1783517844_)))))
                                    (_E1783417858_))
                                  (let _lp17862_ ((_rest17864_ _rest17832_)
                                                  (_depth17865_ '0))
                                    (let* ((_e1786617873_ _rest17864_)
                                           (_E1786817877_
                                            (lambda ()
                                              (if (fxpositive? _depth17865_)
                                                  (_make-splice17794_
                                                   _e17800_
                                                   _depth17865_
                                                   (_recur17795_
                                                    _hd17830_
                                                    _is-e?17801_)
                                                   (_recur17795_
                                                    _rest17864_
                                                    _is-e?17801_))
                                                  (_make-cons17793_
                                                   (_recur17795_
                                                    _hd17830_
                                                    _is-e?17801_)
                                                   (_recur17795_
                                                    _rest17864_
                                                    _is-e?17801_)))))
                                           (_E1786717893_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1786617873_)
                                                  (let ((_e1786917881_
                                                         (gx#syntax-e
                                                          _e1786617873_)))
                                                    (let ((_hd1787017884_
                                                           (##car _e1786917881_))
                                                          (_tl1787117886_
                                                           (##cdr _e1786917881_)))
                                                      (let* ((_rest-hd17889_
                                                              _hd1787017884_)
                                                             (_rest-tl17891_
                                                              _tl1787117886_))
                                                        (if '#t
                                                            (if (_is-e?17801_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rest-hd17889_)
                        (_lp17862_ _rest-tl17891_ (fx+ _depth17865_ '1))
                        (if (fxpositive? _depth17865_)
                            (_make-splice17794_
                             _e17800_
                             _depth17865_
                             (_recur17795_ _hd17830_ _is-e?17801_)
                             (_recur17795_ _rest17864_ _is-e?17801_))
                            (_make-cons17793_
                             (_recur17795_ _hd17830_ _is-e?17801_)
                             (_recur17795_ _rest17864_ _is-e?17801_))))
                    (_E1786817877_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1786817877_)))))
                                      (_E1786717893_))))
                              (_E1780917818_)))))
                    (_E1780917818_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1780817897_))
                                              (if (gx#stx-vector? _e17800_)
                                                  (let ((_g18278_
                                                         (_recur17795_
                                                          (vector->list
                                                           (gx#stx-unwrap__0
                                                            _e17800_))
                                                          _is-e?17801_)))
                                                    (begin
                                                      (let ((_g18279_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g18278_)
                         (##vector-length _g18278_)
                         1)))
                (if (not (##fx= _g18279_ 2))
                    (error "Context expects 2 values" _g18279_)))
              (let ((_e17901_ (##vector-ref _g18278_ 0))
                    (_vars17902_ (##vector-ref _g18278_ 1)))
                (values (cons 'vector _e17901_) _vars17902_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e17800_)
                                                      (let ((_g18280_
                                                             (_recur17795_
                                                              (unbox (gx#stx-unwrap__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e17800_))
                      _is-e?17801_)))
                (begin
                  (let ((_g18281_
                         (if (##values? _g18280_)
                             (##vector-length _g18280_)
                             1)))
                    (if (not (##fx= _g18281_ 2))
                        (error "Context expects 2 values" _g18281_)))
                  (let ((_e17904_ (##vector-ref _g18280_ 0))
                        (_vars17905_ (##vector-ref _g18280_ 1)))
                    (values (cons 'box _e17904_) _vars17905_))))
              (values (cons 'datum _e17800_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    (let ((_g18282_ (_recur17795_ _e17791_ gx#ellipsis?)))
                      (begin
                        (let ((_g18283_
                               (if (##values? _g18282_)
                                   (##vector-length _g18282_)
                                   1)))
                          (if (not (##fx= _g18283_ 2))
                              (error "Context expects 2 values" _g18283_)))
                        (let ((_tree17797_ (##vector-ref _g18282_ 0))
                              (_vars17798_ (##vector-ref _g18282_ 1)))
                          (if (null? _vars17798_)
                              _tree17797_
                              (gx#raise-syntax-error
                               '#f
                               '"Missing ellipsis"
                               _stx17747_
                               _vars17798_)))))))))
        (let* ((_e1775117761_ _stx17747_)
               (_E1775317765_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _stx17747_)))
               (_E1775217787_
                (lambda ()
                  (if (gx#stx-pair? _e1775117761_)
                      (let ((_e1775417769_ (gx#syntax-e _e1775117761_)))
                        (let ((_hd1775517772_ (##car _e1775417769_))
                              (_tl1775617774_ (##cdr _e1775417769_)))
                          (if (gx#stx-pair? _tl1775617774_)
                              (let ((_e1775717777_
                                     (gx#syntax-e _tl1775617774_)))
                                (let ((_hd1775817780_ (##car _e1775717777_))
                                      (_tl1775917782_ (##cdr _e1775717777_)))
                                  (let ((_form17785_ _hd1775817780_))
                                    (if (gx#stx-null? _tl1775917782_)
                                        (if '#t
                                            (gx#stx-wrap-source
                                             (_generate17749_
                                              (_parse17750_ _form17785_))
                                             (gx#stx-source _stx17747_))
                                            (_E1775317765_))
                                        (_E1775317765_)))))
                              (_E1775317765_))))
                      (_E1775317765_)))))
          (_E1775217787_)))))
  (begin
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx17015_ _identifier=?17016_ _unwrap-e17017_ _wrap-e17018_)
        (letrec ((_generate-bindings17020_
                  (lambda (_target17611_
                           _ids17612_
                           _clauses17613_
                           _clause-ids17614_
                           _E17615_)
                    (letrec ((_generate117617_
                              (lambda (_clause17714_ _clause-id17715_ _E17716_)
                                (cons (cons _clause-id17715_ '())
                                      (cons (gx#core-list
                                             'lambda%
                                             (cons _target17611_ '())
                                             (_generate-clause17022_
                                              _target17611_
                                              _ids17612_
                                              _clause17714_
                                              _E17716_))
                                            '())))))
                      (let _lp17619_ ((_rest17621_ _clauses17613_)
                                      (_rest-ids17622_ _clause-ids17614_)
                                      (_bindings17623_ '()))
                        (let* ((_rest1762417632_ _rest17621_)
                               (_else1762617640_ (lambda () _bindings17623_))
                               (_K1762817702_
                                (lambda (_rest17643_ _clause17644_)
                                  (let* ((_rest-ids1764517652_ _rest-ids17622_)
                                         (_E1764717656_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids1764517652_)))
                                         (_K1764817690_
                                          (lambda (_rest-ids17659_
                                                   _clause-id17660_)
                                            (let* ((_rest-ids1766117669_
                                                    _rest-ids17659_)
                                                   (_else1766317677_
                                                    (lambda ()
                                                      (cons (_generate117617_
                                                             _clause17644_
                                                             _clause-id17660_
                                                             _E17615_)
                                                            _bindings17623_)))
                                                   (_K1766517682_
                                                    (lambda (_next-clause-id17680_)
                                                      (_lp17619_
                                                       _rest17643_
                                                       _rest-ids17659_
                                                       (cons (_generate117617_
                                                              _clause17644_
                                                              _clause-id17660_
                                                              _next-clause-id17680_)
                                                             _bindings17623_)))))
                                              (if (##pair? _rest-ids1766117669_)
                                                  (let* ((_hd1766617685_
                                                          (##car _rest-ids1766117669_))
                                                         (_next-clause-id17688_
                                                          _hd1766617685_))
                                                    (_K1766517682_
                                                     _next-clause-id17688_))
                                                  (_else1766317677_))))))
                                    (if (##pair? _rest-ids1764517652_)
                                        (let ((_hd1764917693_
                                               (##car _rest-ids1764517652_))
                                              (_tl1765017695_
                                               (##cdr _rest-ids1764517652_)))
                                          (let* ((_clause-id17698_
                                                  _hd1764917693_)
                                                 (_rest-ids17700_
                                                  _tl1765017695_))
                                            (_K1764817690_
                                             _rest-ids17700_
                                             _clause-id17698_)))
                                        (_E1764717656_))))))
                          (if (##pair? _rest1762417632_)
                              (let ((_hd1762917705_ (##car _rest1762417632_))
                                    (_tl1763017707_ (##cdr _rest1762417632_)))
                                (let* ((_clause17710_ _hd1762917705_)
                                       (_rest17712_ _tl1763017707_))
                                  (_K1762817702_ _rest17712_ _clause17710_)))
                              (_else1762617640_)))))))
                 (_generate-body17021_
                  (lambda (_bindings17571_ _body17572_)
                    (let _recur17574_ ((_rest17576_ _bindings17571_))
                      (let* ((_rest1757717585_ _rest17576_)
                             (_else1757917593_ (lambda () _body17572_))
                             (_K1758117599_
                              (lambda (_rest17596_ _hd17597_)
                                (gx#core-list
                                 'let-values
                                 (cons _hd17597_ '())
                                 (_recur17574_ _rest17596_)))))
                        (if (##pair? _rest1757717585_)
                            (let ((_hd1758217602_ (##car _rest1757717585_))
                                  (_tl1758317604_ (##cdr _rest1757717585_)))
                              (let* ((_hd17607_ _hd1758217602_)
                                     (_rest17609_ _tl1758317604_))
                                (_K1758117599_ _rest17609_ _hd17607_)))
                            (_else1757917593_))))))
                 (_generate-clause17022_
                  (lambda (_target17434_ _ids17435_ _clause17436_ _E17437_)
                    (letrec ((_generate117439_
                              (lambda (_hd17526_ _fender17527_ _body17528_)
                                (let ((_g18284_
                                       (_parse-clause17024_
                                        _hd17526_
                                        _ids17435_)))
                                  (begin
                                    (let ((_g18285_
                                           (if (##values? _g18284_)
                                               (##vector-length _g18284_)
                                               1)))
                                      (if (not (##fx= _g18285_ 2))
                                          (error "Context expects 2 values"
                                                 _g18285_)))
                                    (let ((_e17530_ (##vector-ref _g18284_ 0))
                                          (_mvars17531_
                                           (##vector-ref _g18284_ 1)))
                                      (let* ((_pvars17533_
                                              (map gx#syntax-local-rewrap
                                                   (gx#gentemps _mvars17531_)))
                                             (_E17535_
                                              (cons _E17437_
                                                    (cons _target17434_ '())))
                                             (_K17568_
                                              (gx#core-list
                                               'lambda%
                                               _pvars17533_
                                               (gx#core-list
                                                'let-syntax
                                                (map (lambda (_mvar17537_
                                                              _pvar17538_)
                                                       (let* ((_mvar1753917546_
                                                               _mvar17537_)
                                                              (_E1754117550_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (error '"No clause matching" _mvar1753917546_)))
                      (_K1754217556_
                       (lambda (_depth17553_ _id17554_)
                         (cons _id17554_
                               (cons (gx#core-list
                                      'make-syntax-pattern
                                      (gx#core-list 'quote _id17554_)
                                      (gx#core-list 'quote _pvar17538_)
                                      _depth17553_)
                                     '())))))
                 (if (##pair? _mvar1753917546_)
                     (let ((_hd1754317559_ (##car _mvar1753917546_))
                           (_tl1754417561_ (##cdr _mvar1753917546_)))
                       (let* ((_id17564_ _hd1754317559_)
                              (_depth17566_ _tl1754417561_))
                         (_K1754217556_ _depth17566_ _id17564_)))
                     (_E1754117550_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _mvars17531_
                                                     _pvars17533_)
                                                (if (eq? _fender17527_ '#t)
                                                    _body17528_
                                                    (gx#core-list
                                                     'if
                                                     _fender17527_
                                                     _body17528_
                                                     _E17535_))))))
                                        (_generate-match17023_
                                         _hd17526_
                                         _target17434_
                                         _e17530_
                                         _mvars17531_
                                         _K17568_
                                         _E17535_))))))))
                      (let* ((_e1744017460_ _clause17436_)
                             (_E1744917464_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _e1744017460_)))
                             (_E1744217498_
                              (lambda ()
                                (if (gx#stx-pair? _e1744017460_)
                                    (let ((_e1745017468_
                                           (gx#syntax-e _e1744017460_)))
                                      (let ((_hd1745117471_
                                             (##car _e1745017468_))
                                            (_tl1745217473_
                                             (##cdr _e1745017468_)))
                                        (let ((_hd17476_ _hd1745117471_))
                                          (if (gx#stx-pair? _tl1745217473_)
                                              (let ((_e1745317478_
                                                     (gx#syntax-e
                                                      _tl1745217473_)))
                                                (let ((_hd1745417481_
                                                       (##car _e1745317478_))
                                                      (_tl1745517483_
                                                       (##cdr _e1745317478_)))
                                                  (let ((_fender17486_
                                                         _hd1745417481_))
                                                    (if (gx#stx-pair?
                                                         _tl1745517483_)
                                                        (let ((_e1745617488_
                                                               (gx#syntax-e
                                                                _tl1745517483_)))
                                                          (let ((_hd1745717491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1745617488_))
                        (_tl1745817493_ (##cdr _e1745617488_)))
                    (let ((_body17496_ _hd1745717491_))
                      (if (gx#stx-null? _tl1745817493_)
                          (if '#t
                              (_generate117439_
                               _hd17476_
                               _fender17486_
                               _body17496_)
                              (_E1744917464_))
                          (_E1744917464_)))))
                (_E1744917464_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1744917464_)))))
                                    (_E1744917464_))))
                             (_E1744117522_
                              (lambda ()
                                (if (gx#stx-pair? _e1744017460_)
                                    (let ((_e1744317502_
                                           (gx#syntax-e _e1744017460_)))
                                      (let ((_hd1744417505_
                                             (##car _e1744317502_))
                                            (_tl1744517507_
                                             (##cdr _e1744317502_)))
                                        (let ((_hd17510_ _hd1744417505_))
                                          (if (gx#stx-pair? _tl1744517507_)
                                              (let ((_e1744617512_
                                                     (gx#syntax-e
                                                      _tl1744517507_)))
                                                (let ((_hd1744717515_
                                                       (##car _e1744617512_))
                                                      (_tl1744817517_
                                                       (##cdr _e1744617512_)))
                                                  (let ((_body17520_
                                                         _hd1744717515_))
                                                    (if (gx#stx-null?
                                                         _tl1744817517_)
                                                        (if '#t
                                                            (_generate117439_
                                                             _hd17510_
                                                             '#t
                                                             _body17520_)
                                                            (_E1744217498_))
                                                        (_E1744217498_)))))
                                              (_E1744217498_)))))
                                    (_E1744217498_)))))
                        (_E1744117522_)))))
                 (_generate-match17023_
                  (lambda (_where17187_
                           _target17188_
                           _hd17189_
                           _mvars17190_
                           _K17191_
                           _E17192_)
                    (letrec ((_BUG17194_
                              (lambda (_q17432_)
                                (error '"BUG: syntax-case; generate"
                                       _stx17015_
                                       _hd17189_
                                       _q17432_)))
                             (_recur17195_
                              (lambda (_e17286_
                                       _vars17287_
                                       _target17288_
                                       _E17289_
                                       _k17290_)
                                (let* ((_e1729117298_ _e17286_)
                                       (_E1729317302_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e1729117298_)))
                                       (_K1729417420_
                                        (lambda (_body17305_ _tag17306_)
                                          (let ((_$e17308_ _tag17306_))
                                            (if (eq? 'any _$e17308_)
                                                (_k17290_ _vars17287_)
                                                (if (eq? 'id _$e17308_)
                                                    (gx#core-list
                                                     'if
                                                     (gx#core-list
                                                      'identifier?
                                                      _target17288_)
                                                     (gx#core-list
                                                      'if
                                                      (gx#core-list
                                                       _identifier=?17016_
                                                       (gx#core-list
                                                        _wrap-e17018_
                                                        _body17305_)
                                                       _target17288_)
                                                      (_k17290_ _vars17287_)
                                                      _E17289_)
                                                     _E17289_)
                                                    (if (eq? 'var _$e17308_)
                                                        (_k17290_
                                                         (cons (cons _body17305_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _target17288_)
                       _vars17287_))
                (if (eq? 'cons _$e17308_)
                    (let ((_$e17311_ (gx#genident__1 'e))
                          (_$hd17312_ (gx#genident__1 'hd))
                          (_$tl17313_ (gx#genident__1 'tl)))
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _target17288_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$e17311_ '())
                                    (cons (gx#core-list
                                           _unwrap-e17017_
                                           _target17288_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$hd17312_ '())
                                     (cons (gx#core-list '##car _$e17311_)
                                           '()))
                               (cons (cons (cons _$tl17313_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$e17311_)
                                                 '()))
                                     '()))
                         (let* ((_body1731417321_ _body17305_)
                                (_E1731617325_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _body1731417321_)))
                                (_K1731717333_
                                 (lambda (_tl17328_ _hd17329_)
                                   (_recur17195_
                                    _hd17329_
                                    _vars17287_
                                    _$hd17312_
                                    _E17289_
                                    (lambda (_vars17331_)
                                      (_recur17195_
                                       _tl17328_
                                       _vars17331_
                                       _$tl17313_
                                       _E17289_
                                       _k17290_))))))
                           (if (##pair? _body1731417321_)
                               (let ((_hd1731817336_ (##car _body1731417321_))
                                     (_tl1731917338_ (##cdr _body1731417321_)))
                                 (let* ((_hd17341_ _hd1731817336_)
                                        (_tl17343_ _tl1731917338_))
                                   (_K1731717333_ _tl17343_ _hd17341_)))
                               (_E1731617325_)))))
                       _E17289_))
                    (if (eq? 'splice _$e17308_)
                        (let* ((_body1734417351_ _body17305_)
                               (_E1734617355_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body1734417351_)))
                               (_K1734717404_
                                (lambda (_tl17358_ _hd17359_)
                                  (let* ((_rlen17361_
                                          (_splice-rlen17196_ _tl17358_))
                                         (_$target17363_
                                          (gx#genident__1 'target))
                                         (_$hd17365_ (gx#genident__1 'hd))
                                         (_$tl17367_ (gx#genident__1 'tl))
                                         (_$lp17369_ (gx#genident__1 'loop))
                                         (_$lp-e17371_ (gx#genident__1 'e))
                                         (_$lp-hd17373_
                                          (gx#genident__1 'lp-hd))
                                         (_$lp-tl17375_
                                          (gx#genident__1 'lp-tl))
                                         (_svars17377_
                                          (_splice-vars17197_ _hd17359_))
                                         (_lvars17379_
                                          (gx#gentemps _svars17377_))
                                         (_tlvars17381_
                                          (gx#gentemps _svars17377_))
                                         (_linit17385_
                                          (map (lambda (_var17383_)
                                                 (gx#core-list 'quote '()))
                                               _lvars17379_)))
                                    (letrec ((_make-loop17388_
                                              (lambda (_vars17390_)
                                                (gx#core-list
                                                 'letrec-values
                                                 (cons (cons (cons _$lp17369_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _$hd17365_ _lvars17379_)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-pair? _$hd17365_)
                             (gx#core-list
                              'let-values
                              (cons (cons (cons _$lp-e17371_ '())
                                          (cons (gx#core-list
                                                 _unwrap-e17017_
                                                 _$hd17365_)
                                                '()))
                                    '())
                              (gx#core-list
                               'let-values
                               (cons (cons (cons _$lp-hd17373_ '())
                                           (cons (gx#core-list
                                                  '##car
                                                  _$lp-e17371_)
                                                 '()))
                                     (cons (cons (cons _$lp-tl17375_ '())
                                                 (cons (gx#core-list
                                                        '##cdr
                                                        _$lp-e17371_)
                                                       '()))
                                           '()))
                               (_recur17195_
                                _hd17359_
                                '()
                                _$lp-hd17373_
                                _E17289_
                                (lambda (_hdvars17392_)
                                  (cons _$lp17369_
                                        (cons _$lp-tl17375_
                                              (map (lambda (_svar17394_
                                                            _lvar17395_)
                                                     (gx#core-list
                                                      'cons
                                                      (assgetq _svar17394_
                                                               _hdvars17392_
                                                               _BUG17194_)
                                                      _lvar17395_))
                                                   _svars17377_
                                                   _lvars17379_)))))))
                             (gx#core-list
                              'let-values
                              (map (lambda (_lvar17397_ _tlvar17398_)
                                     (cons (cons _tlvar17398_ '())
                                           (cons (gx#core-list
                                                  'reverse
                                                  _lvar17397_)
                                                 '())))
                                   _lvars17379_
                                   _tlvars17381_)
                              (_k17290_
                               (foldl2 (lambda (_svar17400_
                                                _tlvar17401_
                                                _r17402_)
                                         (cons (cons _svar17400_ _tlvar17401_)
                                               _r17402_))
                                       _vars17390_
                                       _svars17377_
                                       _tlvars17381_)))))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _$lp17369_
                                                       (cons _$target17363_
                                                             _linit17385_))))))
                                      (gx#core-list
                                       'if
                                       (gx#core-list
                                        'stx-pair/null?
                                        _target17288_)
                                       (gx#core-list
                                        'if
                                        (gx#core-list
                                         'fx>=
                                         (gx#core-list
                                          'stx-length
                                          _target17288_)
                                         _rlen17361_)
                                        (gx#core-list
                                         'let-values
                                         (cons (cons (cons _$target17363_
                                                           (cons _$tl17367_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (gx#core-list
                                                            'syntax-split-splice
                                                            _target17288_
                                                            _rlen17361_)
                                                           '()))
                                               '())
                                         (_recur17195_
                                          _tl17358_
                                          _vars17287_
                                          _$tl17367_
                                          _E17289_
                                          _make-loop17388_))
                                        _E17289_)
                                       _E17289_))))))
                          (if (##pair? _body1734417351_)
                              (let ((_hd1734817407_ (##car _body1734417351_))
                                    (_tl1734917409_ (##cdr _body1734417351_)))
                                (let* ((_hd17412_ _hd1734817407_)
                                       (_tl17414_ _tl1734917409_))
                                  (_K1734717404_ _tl17414_ _hd17412_)))
                              (_E1734617355_)))
                        (if (eq? 'null _$e17308_)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-null? _target17288_)
                             (_k17290_ _vars17287_)
                             _E17289_)
                            (if (eq? 'vector _$e17308_)
                                (let ((_$e17416_ (gx#genident__1 'e)))
                                  (gx#core-list
                                   'if
                                   (gx#core-list 'stx-vector? _target17288_)
                                   (gx#core-list
                                    'let-values
                                    (cons (cons (cons _$e17416_ '())
                                                (cons (gx#core-list
                                                       'vector->list
                                                       (gx#core-list
                                                        _unwrap-e17017_
                                                        _target17288_))
                                                      '()))
                                          '())
                                    (_recur17195_
                                     _body17305_
                                     _vars17287_
                                     _$e17416_
                                     _E17289_
                                     _k17290_))
                                   _E17289_))
                                (if (eq? 'box _$e17308_)
                                    (let ((_$e17418_ (gx#genident__1 'e)))
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-box? _target17288_)
                                       (gx#core-list
                                        'let-values
                                        (cons (cons (cons _$e17418_ '())
                                                    (cons (gx#core-list
                                                           'unbox
                                                           (gx#core-list
                                                            _unwrap-e17017_
                                                            _target17288_))
                                                          '()))
                                              '())
                                        (_recur17195_
                                         _body17305_
                                         _vars17287_
                                         _$e17418_
                                         _E17289_
                                         _k17290_))
                                       _E17289_))
                                    (if (eq? 'datum _$e17308_)
                                        (gx#core-list
                                         'if
                                         (gx#core-list
                                          'stx-datum?
                                          _target17288_)
                                         (gx#core-list
                                          'if
                                          (gx#core-list
                                           'equal?
                                           (gx#core-list 'stx-e _target17288_)
                                           _body17305_)
                                          (_k17290_ _vars17287_)
                                          _E17289_)
                                         _E17289_)
                                        (_BUG17194_ _e17286_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (##pair? _e1729117298_)
                                      (let ((_hd1729517423_
                                             (##car _e1729117298_))
                                            (_tl1729617425_
                                             (##cdr _e1729117298_)))
                                        (let* ((_tag17428_ _hd1729517423_)
                                               (_body17430_ _tl1729617425_))
                                          (_K1729417420_
                                           _body17430_
                                           _tag17428_)))
                                      (_E1729317302_)))))
                             (_splice-rlen17196_
                              (lambda (_e17248_)
                                (let _lp17250_ ((_e17252_ _e17248_)
                                                (_n17253_ '0))
                                  (let* ((_e1725417261_ _e17252_)
                                         (_E1725617265_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1725417261_)))
                                         (_K1725717274_
                                          (lambda (_body17268_ _tag17269_)
                                            (let ((_$e17271_ _tag17269_))
                                              (if (eq? 'splice _$e17271_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Ambiguous pattern"
                                                   _stx17015_
                                                   _where17187_)
                                                  (if (eq? 'cons _$e17271_)
                                                      (_lp17250_
                                                       (cdr _body17268_)
                                                       (fx+ _n17253_ '1))
                                                      _n17253_))))))
                                    (if (##pair? _e1725417261_)
                                        (let ((_hd1725817277_
                                               (##car _e1725417261_))
                                              (_tl1725917279_
                                               (##cdr _e1725417261_)))
                                          (let* ((_tag17282_ _hd1725817277_)
                                                 (_body17284_ _tl1725917279_))
                                            (_K1725717274_
                                             _body17284_
                                             _tag17282_)))
                                        (_E1725617265_))))))
                             (_splice-vars17197_
                              (lambda (_e17204_)
                                (let _recur17206_ ((_e17208_ _e17204_)
                                                   (_vars17209_ '()))
                                  (let* ((_e1721017217_ _e17208_)
                                         (_E1721217221_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1721017217_)))
                                         (_K1721317236_
                                          (lambda (_body17224_ _tag17225_)
                                            (let ((_$e17227_ _tag17225_))
                                              (if (eq? 'var _$e17227_)
                                                  (cons _body17224_
                                                        _vars17209_)
                                                  (if (let ((_$e17230_
                                                             (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _$e17227_)))
                (if _$e17230_ _$e17230_ (eq? 'splice _$e17227_)))
              (_recur17206_
               (cdr _body17224_)
               (_recur17206_ (car _body17224_) _vars17209_))
              (if (let ((_$e17233_ (eq? 'vector _$e17227_)))
                    (if _$e17233_ _$e17233_ (eq? 'box _$e17227_)))
                  (_recur17206_ _body17224_ _vars17209_)
                  _vars17209_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (##pair? _e1721017217_)
                                        (let ((_hd1721417239_
                                               (##car _e1721017217_))
                                              (_tl1721517241_
                                               (##cdr _e1721017217_)))
                                          (let* ((_tag17244_ _hd1721417239_)
                                                 (_body17246_ _tl1721517241_))
                                            (_K1721317236_
                                             _body17246_
                                             _tag17244_)))
                                        (_E1721217221_))))))
                             (_make-body17198_
                              (lambda (_vars17200_)
                                (cons _K17191_
                                      (map (lambda (_mvar17202_)
                                             (assgetq (car _mvar17202_)
                                                      _vars17200_
                                                      _BUG17194_))
                                           _mvars17190_)))))
                      (_recur17195_
                       _hd17189_
                       '()
                       _target17188_
                       _E17192_
                       _make-body17198_))))
                 (_parse-clause17024_
                  (lambda (_hd17093_ _ids17094_)
                    (let _recur17096_ ((_e17098_ _hd17093_)
                                       (_vars17099_ '())
                                       (_depth17100_ '0))
                      (if (gx#identifier? _e17098_)
                          (if (gx#underscore? _e17098_)
                              (values '(any) _vars17099_)
                              (if (gx#ellipsis? _e17098_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Misplaced ellipsis"
                                   _stx17015_
                                   _hd17093_)
                                  (if (find (lambda (_id17102_)
                                              (gx#bound-identifier=?
                                               _e17098_
                                               _id17102_))
                                            _ids17094_)
                                      (values (cons 'id _e17098_) _vars17099_)
                                      (if (find (lambda (_var17104_)
                                                  (gx#bound-identifier=?
                                                   _e17098_
                                                   (car _var17104_)))
                                                _vars17099_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Duplicate pattern variable"
                                           _stx17015_
                                           _e17098_)
                                          (values (cons 'var _e17098_)
                                                  (cons (cons _e17098_
                                                              _depth17100_)
                                                        _vars17099_))))))
                          (if (gx#stx-pair? _e17098_)
                              (let* ((_e1710517112_ _e17098_)
                                     (_E1710717116_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _e1710517112_)))
                                     (_E1710617177_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1710517112_)
                                            (let ((_e1710817120_
                                                   (gx#syntax-e
                                                    _e1710517112_)))
                                              (let ((_hd1710917123_
                                                     (##car _e1710817120_))
                                                    (_tl1711017125_
                                                     (##cdr _e1710817120_)))
                                                (let* ((_hd17128_
                                                        _hd1710917123_)
                                                       (_rest17130_
                                                        _tl1711017125_))
                                                  (if '#t
                                                      (let* ((_make-pair17145_
                                                              (lambda (_tag17132_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd17133_
                               _tl17134_)
                        (let* ((_hd-depth17136_
                                (if (eq? _tag17132_ 'splice)
                                    (fx+ _depth17100_ '1)
                                    _depth17100_))
                               (_g18286_
                                (_recur17096_
                                 _hd17133_
                                 _vars17099_
                                 _hd-depth17136_)))
                          (begin
                            (let ((_g18287_
                                   (if (##values? _g18286_)
                                       (##vector-length _g18286_)
                                       1)))
                              (if (not (##fx= _g18287_ 2))
                                  (error "Context expects 2 values" _g18287_)))
                            (let ((_hd17138_ (##vector-ref _g18286_ 0))
                                  (_vars17139_ (##vector-ref _g18286_ 1)))
                              (let ((_g18288_
                                     (_recur17096_
                                      _tl17134_
                                      _vars17139_
                                      _depth17100_)))
                                (begin
                                  (let ((_g18289_
                                         (if (##values? _g18288_)
                                             (##vector-length _g18288_)
                                             1)))
                                    (if (not (##fx= _g18289_ 2))
                                        (error "Context expects 2 values"
                                               _g18289_)))
                                  (let ((_tl17141_ (##vector-ref _g18288_ 0))
                                        (_vars17142_
                                         (##vector-ref _g18288_ 1)))
                                    (let ()
                                      (values (cons _tag17132_
                                                    (cons _hd17138_ _tl17141_))
                                              _vars17142_))))))))))
                     (_e1714617153_ _rest17130_)
                     (_E1714817157_
                      (lambda ()
                        (_make-pair17145_ 'cons _hd17128_ _rest17130_)))
                     (_E1714717173_
                      (lambda ()
                        (if (gx#stx-pair? _e1714617153_)
                            (let ((_e1714917161_ (gx#syntax-e _e1714617153_)))
                              (let ((_hd1715017164_ (##car _e1714917161_))
                                    (_tl1715117166_ (##cdr _e1714917161_)))
                                (let* ((_rest-hd17169_ _hd1715017164_)
                                       (_rest-tl17171_ _tl1715117166_))
                                  (if '#t
                                      (if (gx#ellipsis? _rest-hd17169_)
                                          (_make-pair17145_
                                           'splice
                                           _hd17128_
                                           _rest-tl17171_)
                                          (_make-pair17145_
                                           'cons
                                           _hd17128_
                                           _rest17130_))
                                      (_E1714817157_)))))
                            (_E1714817157_)))))
                (_E1714717173_))
              (_E1710717116_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1710717116_)))))
                                (_E1710617177_))
                              (if (gx#stx-null? _e17098_)
                                  (values '(null) _vars17099_)
                                  (if (gx#stx-vector? _e17098_)
                                      (let ((_g18290_
                                             (_recur17096_
                                              (vector->list
                                               (gx#syntax-e _e17098_))
                                              _vars17099_
                                              _depth17100_)))
                                        (begin
                                          (let ((_g18291_
                                                 (if (##values? _g18290_)
                                                     (##vector-length _g18290_)
                                                     1)))
                                            (if (not (##fx= _g18291_ 2))
                                                (error "Context expects 2 values"
                                                       _g18291_)))
                                          (let ((_e17181_
                                                 (##vector-ref _g18290_ 0))
                                                (_vars17182_
                                                 (##vector-ref _g18290_ 1)))
                                            (values (cons 'vector _e17181_)
                                                    _vars17182_))))
                                      (if (gx#stx-box? _e17098_)
                                          (let ((_g18292_
                                                 (_recur17096_
                                                  (unbox (gx#syntax-e
                                                          _e17098_))
                                                  _vars17099_
                                                  _depth17100_)))
                                            (begin
                                              (let ((_g18293_
                                                     (if (##values? _g18292_)
                                                         (##vector-length
                                                          _g18292_)
                                                         1)))
                                                (if (not (##fx= _g18293_ 2))
                                                    (error "Context expects 2 values"
                                                           _g18293_)))
                                              (let ((_e17184_
                                                     (##vector-ref _g18292_ 0))
                                                    (_vars17185_
                                                     (##vector-ref
                                                      _g18292_
                                                      1)))
                                                (values (cons 'box _e17184_)
                                                        _vars17185_))))
                                          (if (gx#stx-datum? _e17098_)
                                              (values (cons 'datum
                                                            (gx#stx-e
                                                             _e17098_))
                                                      _vars17099_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad pattern"
                                               _stx17015_
                                               _e17098_)))))))))))
          (let* ((_e1702517038_ _stx17015_)
                 (_E1702717042_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1702517038_)))
                 (_E1702617089_
                  (lambda ()
                    (if (gx#stx-pair? _e1702517038_)
                        (let ((_e1702817046_ (gx#syntax-e _e1702517038_)))
                          (let ((_hd1702917049_ (##car _e1702817046_))
                                (_tl1703017051_ (##cdr _e1702817046_)))
                            (if (gx#stx-pair? _tl1703017051_)
                                (let ((_e1703117054_
                                       (gx#syntax-e _tl1703017051_)))
                                  (let ((_hd1703217057_ (##car _e1703117054_))
                                        (_tl1703317059_ (##cdr _e1703117054_)))
                                    (let ((_expr17062_ _hd1703217057_))
                                      (if (gx#stx-pair? _tl1703317059_)
                                          (let ((_e1703417064_
                                                 (gx#syntax-e _tl1703317059_)))
                                            (let ((_hd1703517067_
                                                   (##car _e1703417064_))
                                                  (_tl1703617069_
                                                   (##cdr _e1703417064_)))
                                              (let* ((_ids17072_
                                                      _hd1703517067_)
                                                     (_clauses17074_
                                                      _tl1703617069_))
                                                (if '#t
                                                    (if (not (gx#identifier-list?
                                                              _ids17072_))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad template identifier list"
                                                         _stx17015_
                                                         _ids17072_)
                                                        (if (not (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _clauses17074_))
                    (gx#raise-syntax-error '#f '"Bad syntax" _stx17015_)
                    (let* ((_ids17076_ (gx#syntax->list _ids17072_))
                           (_clauses17078_ (gx#syntax->list _clauses17074_))
                           (_clause-ids17080_ (gx#gentemps _clauses17078_))
                           (_E17082_ (gx#genident__0))
                           (_target17084_ (gx#genident__0))
                           (_first17086_
                            (if (null? _clauses17078_)
                                _E17082_
                                (car _clause-ids17080_))))
                      (gx#stx-wrap-source
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _E17082_ '())
                                    (cons (gx#core-list
                                           'lambda%
                                           (cons _target17084_ '())
                                           (gx#core-list
                                            'raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _target17084_))
                                          '()))
                              '())
                        (_generate-body17021_
                         (_generate-bindings17020_
                          _target17084_
                          _ids17076_
                          _clauses17078_
                          _clause-ids17080_
                          _E17082_)
                         (cons _first17086_ (cons _expr17062_ '()))))
                       (gx#stx-source _stx17015_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1702717042_)))))
                                          (_E1702717042_)))))
                                (_E1702717042_))))
                        (_E1702717042_)))))
            (_E1702617089_)))))
    (begin
      (define gx#macro-expand-syntax-case__0
        (lambda (_stx17721_)
          (let* ((_identifier=?17723_ 'free-identifier=?)
                 (_unwrap-e17725_ 'syntax-e)
                 (_wrap-e17727_ 'quote-syntax))
            (gx#macro-expand-syntax-case__%
             _stx17721_
             _identifier=?17723_
             _unwrap-e17725_
             _wrap-e17727_))))
      (define gx#macro-expand-syntax-case__1
        (lambda (_stx17729_ _identifier=?17730_)
          (let* ((_unwrap-e17732_ 'syntax-e) (_wrap-e17734_ 'quote-syntax))
            (gx#macro-expand-syntax-case__%
             _stx17729_
             _identifier=?17730_
             _unwrap-e17732_
             _wrap-e17734_))))
      (define gx#macro-expand-syntax-case__2
        (lambda (_stx17736_ _identifier=?17737_ _unwrap-e17738_)
          (let ((_wrap-e17740_ 'quote-syntax))
            (gx#macro-expand-syntax-case__%
             _stx17736_
             _identifier=?17737_
             _unwrap-e17738_
             _wrap-e17740_))))
      (define gx#macro-expand-syntax-case
        (lambda _g18295_
          (let ((_g18294_ (length _g18295_)))
            (cond ((##fx= _g18294_ 1)
                   (apply gx#macro-expand-syntax-case__0 _g18295_))
                  ((##fx= _g18294_ 2)
                   (apply gx#macro-expand-syntax-case__1 _g18295_))
                  ((##fx= _g18294_ 3)
                   (apply gx#macro-expand-syntax-case__2 _g18295_))
                  ((##fx= _g18294_ 4)
                   (apply gx#macro-expand-syntax-case__% _g18295_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-syntax-case
                    _g18295_))))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx17012_)
      (if (gx#identifier? _stx17012_)
          (##structure-instance-of?
           (gx#syntax-local-e__% _stx17012_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd16970_ . _rest16971_)
      (let ((_len16973_ (length _hd16970_)))
        (let _lp16975_ ((_rest16977_ _rest16971_))
          (let* ((_rest1697816986_ _rest16977_)
                 (_else1698016994_ (lambda () '#!void))
                 (_K1698217000_
                  (lambda (_rest16997_ _hd16998_)
                    (if (fx= _len16973_ (length _hd16998_))
                        (_lp16975_ _rest16997_)
                        (gx#raise-syntax-error
                         '#f
                         '"Splice length mismatch"
                         _hd16998_)))))
            (if (##pair? _rest1697816986_)
                (let ((_hd1698317003_ (##car _rest1697816986_))
                      (_tl1698417005_ (##cdr _rest1697816986_)))
                  (let* ((_hd17008_ _hd1698317003_)
                         (_rest17010_ _tl1698417005_))
                    (_K1698217000_ _rest17010_ _hd17008_)))
                (_else1698016994_)))))))
  (define gx#syntax-split-splice
    (lambda (_stx16928_ _n16929_)
      (let _lp16931_ ((_rest16933_ _stx16928_) (_r16934_ '()))
        (if (gx#stx-pair? _rest16933_)
            (let* ((_g1693516942_ (gx#syntax-e _rest16933_))
                   (_E1693716946_
                    (lambda () (error '"No clause matching" _g1693516942_)))
                   (_K1693816952_
                    (lambda (_rest16949_ _hd16950_)
                      (_lp16931_ _rest16949_ (cons _hd16950_ _r16934_)))))
              (if (##pair? _g1693516942_)
                  (let ((_hd1693916955_ (##car _g1693516942_))
                        (_tl1694016957_ (##cdr _g1693516942_)))
                    (let* ((_hd16960_ _hd1693916955_)
                           (_rest16962_ _tl1694016957_))
                      (_K1693816952_ _rest16962_ _hd16960_)))
                  (_E1693716946_)))
            (let _lp16964_ ((_n16966_ _n16929_)
                            (_l16967_ _r16934_)
                            (_r16968_ _rest16933_))
              (if (null? _l16967_)
                  (values _l16967_ _r16968_)
                  (if (fxpositive? _n16966_)
                      (_lp16964_
                       (fx- _n16966_ '1)
                       (cdr _l16967_)
                       (cons (car _l16967_) _r16968_))
                      (values (reverse _l16967_) _r16968_)))))))))
