(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#syntax-pattern::t
    (make-struct-type
     'gx#syntax-pattern::t
     gx#expander::t
     '2
     'syntax-pattern
     '()
     '#f))
  (define gx#syntax-pattern? (make-struct-predicate gx#syntax-pattern::t))
  (define gx#make-syntax-pattern
    (lambda _$args14189_
      (apply make-struct-instance gx#syntax-pattern::t _$args14189_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self14186_ _stx14187_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx14187_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx13795_)
      (let ((_generate13797_
             (lambda (_e14024_)
               (let ((_BUG14026_
                      (lambda (_q14184_)
                        (error '"BUG: syntax; generate"
                               _stx13795_
                               _e14024_
                               _q14184_))))
                 (let ((_local-pattern-e14027_
                        (lambda (_pat14182_)
                          (gx#syntax-local-rewrap
                           (##structure-ref
                            _pat14182_
                            '2
                            gx#syntax-pattern::t
                            '#f)))))
                   (let ((_getvar14028_
                          (lambda (_q14179_ _vars14180_)
                            (assgetq _q14179_ _vars14180_ _BUG14026_))))
                     (let ((_getarg14029_
                            (lambda (_arg14145_ _vars14146_)
                              (let ((_arg1414714154_ _arg14145_))
                                (let ((_E1414914158_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _arg1414714154_))))
                                  (let ((_K1415014167_
                                         (lambda (_e14161_ _tag14162_)
                                           (let ((_$e14164_ _tag14162_))
                                             (if (eq? _$e14164_ 'ref)
                                                 (_getvar14028_
                                                  _e14161_
                                                  _vars14146_)
                                                 (if (eq? _$e14164_ 'pattern)
                                                     (_local-pattern-e14027_
                                                      _e14161_)
                                                     (_BUG14026_
                                                      _arg14145_)))))))
                                    (if (##pair? _arg1414714154_)
                                        (let ((_hd1415114170_
                                               (##car _arg1414714154_))
                                              (_tl1415214172_
                                               (##cdr _arg1414714154_)))
                                          (let ((_tag14175_ _hd1415114170_))
                                            (let ((_e14177_ _tl1415214172_))
                                              (_K1415014167_
                                               _e14177_
                                               _tag14175_))))
                                        (_E1414914158_))))))))
                       ((letrec ((_recur14031_
                                  (lambda (_e14033_ _vars14034_)
                                    (let ((_e1403514042_ _e14033_))
                                      (let ((_E1403714046_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _e1403514042_))))
                                        (let ((_K1403814133_
                                               (lambda (_body14049_ _tag14050_)
                                                 (let ((_$e14052_ _tag14050_))
                                                   (if (eq? _$e14052_ 'datum)
                                                       (gx#core-list
                                                        'quote
                                                        _body14049_)
                                                       (if (eq? _$e14052_
                                                                'term)
                                                           (gx#core-list
                                                            'datum->syntax
                                                            '#f
                                                            (gx#core-list
                                                             'quote
                                                             _body14049_))
                                                           (if (eq? _$e14052_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'pattern)
                       (_local-pattern-e14027_ _body14049_)
                       (if (eq? _$e14052_ 'ref)
                           (_getvar14028_ _body14049_ _vars14034_)
                           (if (eq? _$e14052_ 'cons)
                               (gx#core-list
                                'cons
                                (_recur14031_ (car _body14049_) _vars14034_)
                                (_recur14031_ (cdr _body14049_) _vars14034_))
                               (if (eq? _$e14052_ 'vector)
                                   (gx#core-list
                                    'list->vector
                                    (_recur14031_ _body14049_ _vars14034_))
                                   (if (eq? _$e14052_ 'box)
                                       (gx#core-list
                                        'box
                                        (_recur14031_ _body14049_ _vars14034_))
                                       (if (eq? _$e14052_ 'splice)
                                           (let ((_body1405414065_
                                                  _body14049_))
                                             (let ((_E1405614069_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _body1405414065_))))
                                               (let ((_K1405714107_
                                                      (lambda (_args14072_
                                                               _iv14073_
                                                               _hd14074_
                                                               _depth14075_)
                                                        (let ((_targets14081_
                                                               (map (lambda (_g1407614078_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_getarg14029_ _g1407614078_ _vars14034_))
                            _args14072_)))
                  (let ((_fold-in14083_ (gx#gentemps _args14072_)))
                    (let ((_fold-out14085_ (gx#genident__0)))
                      (let ((_lambda-args14087_
                             (foldr1 cons
                                     (cons _fold-out14085_ '())
                                     _fold-in14083_)))
                        (let ((_lambda-body14104_
                               (if (fx> _depth14075_ '1)
                                   (let ((_r-args14095_
                                          (map (lambda (_arg14089_)
                                                 (cons 'ref (cdr _arg14089_)))
                                               _args14072_))
                                         (_r-vars14096_
                                          (foldr (lambda (_arg14091_
                                                          _var14092_
                                                          _r14093_)
                                                   (cons (cons (cdr _arg14091_)
                                                               _var14092_)
                                                         _r14093_))
                                                 _vars14034_
                                                 _args14072_
                                                 _fold-in14083_)))
                                     (_recur14031_
                                      (cons* 'splice
                                             (fx- _depth14075_ '1)
                                             _hd14074_
                                             (cons 'var _fold-out14085_)
                                             _r-args14095_)
                                      _r-vars14096_))
                                   (let ((_hd-vars14102_
                                          (foldr (lambda (_arg14098_
                                                          _var14099_
                                                          _r14100_)
                                                   (cons (cons (cdr _arg14098_)
                                                               _var14099_)
                                                         _r14100_))
                                                 _vars14034_
                                                 _args14072_
                                                 _fold-in14083_)))
                                     (gx#core-list
                                      'cons
                                      (_recur14031_ _hd14074_ _hd-vars14102_)
                                      _fold-out14085_)))))
                          (let ()
                            (gx#core-list
                             'begin
                             (if (fx> (length _targets14081_) '1)
                                 (gx#core-cons*
                                  'syntax-check-splice-targets
                                  _targets14081_)
                                 '#!void)
                             (gx#core-cons*
                              'foldr
                              (gx#core-list
                               'lambda%
                               _lambda-args14087_
                               _lambda-body14104_)
                              (_recur14031_ _iv14073_ _vars14034_)
                              _targets14081_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _body1405414065_)
                                                     (let ((_hd1405814110_
                                                            (##car _body1405414065_))
                                                           (_tl1405914112_
                                                            (##cdr _body1405414065_)))
                                                       (let ((_depth14115_
                                                              _hd1405814110_))
                                                         (if (##pair? _tl1405914112_)
                                                             (let ((_hd1406014117_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##car _tl1405914112_))
                           (_tl1406114119_ (##cdr _tl1405914112_)))
                       (let ((_hd14122_ _hd1406014117_))
                         (if (##pair? _tl1406114119_)
                             (let ((_hd1406214124_ (##car _tl1406114119_))
                                   (_tl1406314126_ (##cdr _tl1406114119_)))
                               (let ((_iv14129_ _hd1406214124_))
                                 (let ((_args14131_ _tl1406314126_))
                                   (_K1405714107_
                                    _args14131_
                                    _iv14129_
                                    _hd14122_
                                    _depth14115_))))
                             (_E1405614069_))))
                     (_E1405614069_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1405614069_)))))
                                           (if (eq? _$e14052_ 'var)
                                               _body14049_
                                               (_BUG14026_
                                                _e14033_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _e1403514042_)
                                              (let ((_hd1403914136_
                                                     (##car _e1403514042_))
                                                    (_tl1404014138_
                                                     (##cdr _e1403514042_)))
                                                (let ((_tag14141_
                                                       _hd1403914136_))
                                                  (let ((_body14143_
                                                         _tl1404014138_))
                                                    (_K1403814133_
                                                     _body14143_
                                                     _tag14141_))))
                                              (_E1403714046_))))))))
                          _recur14031_)
                        _e14024_
                        '()))))))))
        (let ((_parse13798_
               (lambda (_e13839_)
                 (let ((_make-cons13841_
                        (lambda (_hd14016_ _tl14017_)
                          (let ((_g14201_ _hd14016_) (_g14203_ _tl14017_))
                            (begin
                              (let ((_g14202_ (values-count _g14201_)))
                                (if (not (fx= _g14202_ 2))
                                    (error "Context expects 2 values"
                                           _g14202_)))
                              (let ((_g14204_ (values-count _g14203_)))
                                (if (not (fx= _g14204_ 2))
                                    (error "Context expects 2 values"
                                           _g14204_)))
                              (let ((_hd-e14019_ (values-ref _g14201_ 0))
                                    (_hd-vars14020_ (values-ref _g14201_ 1)))
                                (let ((_tl-e14021_ (values-ref _g14203_ 0))
                                      (_tl-vars14022_ (values-ref _g14203_ 1)))
                                  (values (cons* 'cons _hd-e14019_ _tl-e14021_)
                                          (append _hd-vars14020_
                                                  _tl-vars14022_)))))))))
                   (let ((_make-splice13842_
                          (lambda (_where13955_
                                   _depth13956_
                                   _hd13957_
                                   _tl13958_)
                            (let ((_g14197_ _hd13957_) (_g14199_ _tl13958_))
                              (begin
                                (let ((_g14198_ (values-count _g14197_)))
                                  (if (not (fx= _g14198_ 2))
                                      (error "Context expects 2 values"
                                             _g14198_)))
                                (let ((_g14200_ (values-count _g14199_)))
                                  (if (not (fx= _g14200_ 2))
                                      (error "Context expects 2 values"
                                             _g14200_)))
                                (let ((_hd-e13960_ (values-ref _g14197_ 0))
                                      (_hd-vars13961_ (values-ref _g14197_ 1)))
                                  (let ((_tl-e13962_ (values-ref _g14199_ 0))
                                        (_tl-vars13963_
                                         (values-ref _g14199_ 1)))
                                    ((letrec ((_lp13965_
                                               (lambda (_rest13967_
                                                        _targets13968_
                                                        _vars13969_)
                                                 (let ((_rest1397013980_
                                                        _rest13967_))
                                                   (let ((_E1397313984_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest1397013980_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_else1397213988_
                                                            (lambda ()
                                                              (if (null? _targets13968_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Misplaced ellipsis"
                           _stx13795_
                           _where13955_)
                          (values (cons* 'splice
                                         _depth13956_
                                         _hd-e13960_
                                         _tl-e13962_
                                         _targets13968_)
                                  _vars13969_)))))
               (let ((_K1397413997_
                      (lambda (_rest13991_ _hd-pat13992_ _hd-depth*13993_)
                        (let ((_hd-depth13995_
                               (fx- _hd-depth*13993_ _depth13956_)))
                          (if (fxpositive? _hd-depth13995_)
                              (_lp13965_
                               _rest13991_
                               (cons (cons 'ref _hd-pat13992_) _targets13968_)
                               (cons (cons _hd-depth13995_ _hd-pat13992_)
                                     _vars13969_))
                              (if (fxzero? _hd-depth13995_)
                                  (_lp13965_
                                   _rest13991_
                                   (cons (cons 'pattern _hd-pat13992_)
                                         _targets13968_)
                                   _vars13969_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Too many ellipses"
                                   _stx13795_
                                   _where13955_)))))))
                 (if (##pair? _rest1397013980_)
                     (let ((_hd1397514000_ (##car _rest1397013980_))
                           (_tl1397614002_ (##cdr _rest1397013980_)))
                       (if (##pair? _hd1397514000_)
                           (let ((_hd1397714005_ (##car _hd1397514000_))
                                 (_tl1397814007_ (##cdr _hd1397514000_)))
                             (let ((_hd-depth*14010_ _hd1397714005_))
                               (let ((_hd-pat14012_ _tl1397814007_))
                                 (let ((_rest14014_ _tl1397614002_))
                                   (_K1397413997_
                                    _rest14014_
                                    _hd-pat14012_
                                    _hd-depth*14010_)))))
                           (_else1397213988_)))
                     (_else1397213988_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _lp13965_)
                                     _hd-vars13961_
                                     '()
                                     _tl-vars13963_))))))))
                     (letrec ((_recur13843_
                               (lambda (_e13848_ _is-e?13849_)
                                 (if (_is-e?13849_ _e13848_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Mislpaced ellipsis"
                                      _stx13795_)
                                     (if (gx#syntax-local-pattern? _e13848_)
                                         (let ((_pat13851_
                                                (gx#syntax-local-e__0
                                                 _e13848_)))
                                           (let ((_depth13853_
                                                  (##structure-ref
                                                   _pat13851_
                                                   '3
                                                   gx#syntax-pattern::t
                                                   '#f)))
                                             (let ()
                                               (if (fxpositive? _depth13853_)
                                                   (values (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat13851_)
                   (cons (cons _depth13853_ _pat13851_) '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (values (cons 'pattern
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat13851_)
                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (if (gx#identifier? _e13848_)
                                             (values (cons 'term _e13848_) '())
                                             (if (gx#stx-pair? _e13848_)
                                                 (let ((_e1385513862_
                                                        _e13848_))
                                                   (let ((_E1385713866_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _e1385513862_))))
                                                     (let ((_E1385613945_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e1385513862_)
                          (let ((_e1385813870_ (gx#syntax-e _e1385513862_)))
                            (let ((_hd1385913873_ (##car _e1385813870_))
                                  (_tl1386013875_ (##cdr _e1385813870_)))
                              (let ((_hd13878_ _hd1385913873_))
                                (let ((_rest13880_ _tl1386013875_))
                                  (if '#t
                                      (if (_is-e?13849_ _hd13878_)
                                          (let ((_e1388113888_ _rest13880_))
                                            (let ((_E1388313892_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad ellipsis syntax"
                                                      _stx13795_
                                                      _e13848_))))
                                              (let ((_E1388213906_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e1388113888_)
                                                           (let ((_e1388413896_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e1388113888_)))
                     (let ((_hd1388513899_ (##car _e1388413896_))
                           (_tl1388613901_ (##cdr _e1388413896_)))
                       (let ((_rest13904_ _hd1388513899_))
                         (if (gx#stx-null? _tl1388613901_)
                             (if '#t
                                 (_recur13843_ _rest13904_ false)
                                 (_E1388313892_))
                             (_E1388313892_)))))
                   (_E1388313892_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E1388213906_)))))
                                          ((letrec ((_lp13910_
                                                     (lambda (_rest13912_
                                                              _depth13913_)
                                                       (let ((_e1391413921_
                                                              _rest13912_))
                                                         (let ((_E1391613925_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (fxpositive? _depth13913_)
                              (_make-splice13842_
                               _e13848_
                               _depth13913_
                               (_recur13843_ _hd13878_ _is-e?13849_)
                               (_recur13843_ _rest13912_ _is-e?13849_))
                              (_make-cons13841_
                               (_recur13843_ _hd13878_ _is-e?13849_)
                               (_recur13843_ _rest13912_ _is-e?13849_))))))
                   (let ((_E1391513941_
                          (lambda ()
                            (if (gx#stx-pair? _e1391413921_)
                                (let ((_e1391713929_
                                       (gx#syntax-e _e1391413921_)))
                                  (let ((_hd1391813932_ (##car _e1391713929_))
                                        (_tl1391913934_ (##cdr _e1391713929_)))
                                    (let ((_rest-hd13937_ _hd1391813932_))
                                      (let ((_rest-tl13939_ _tl1391913934_))
                                        (if '#t
                                            (if (_is-e?13849_ _rest-hd13937_)
                                                (_lp13910_
                                                 _rest-tl13939_
                                                 (fx+ _depth13913_ '1))
                                                (if (fxpositive? _depth13913_)
                                                    (_make-splice13842_
                                                     _e13848_
                                                     _depth13913_
                                                     (_recur13843_
                                                      _hd13878_
                                                      _is-e?13849_)
                                                     (_recur13843_
                                                      _rest13912_
                                                      _is-e?13849_))
                                                    (_make-cons13841_
                                                     (_recur13843_
                                                      _hd13878_
                                                      _is-e?13849_)
                                                     (_recur13843_
                                                      _rest13912_
                                                      _is-e?13849_))))
                                            (_E1391613925_))))))
                                (_E1391613925_)))))
                     (let () (_E1391513941_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _lp13910_)
                                           _rest13880_
                                           '0))
                                      (_E1385713866_))))))
                          (_E1385713866_)))))
               (let () (_E1385613945_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-vector? _e13848_)
                                                     (let ((_g14191_
                                                            (_recur13843_
                                                             (vector->list
                                                              (gx#stx-unwrap__0
                                                               _e13848_))
                                                             _is-e?13849_)))
                                                       (begin
                                                         (let ((_g14192_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g14191_)))
                   (if (not (fx= _g14192_ 2))
                       (error "Context expects 2 values" _g14192_)))
                 (let ((_e13949_ (values-ref _g14191_ 0))
                       (_vars13950_ (values-ref _g14191_ 1)))
                   (values (cons 'vector _e13949_) _vars13950_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-box? _e13848_)
                                                         (let ((_g14193_
                                                                (_recur13843_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (unbox (gx#stx-unwrap__0 _e13848_))
                         _is-e?13849_)))
                   (begin
                     (let ((_g14194_ (values-count _g14193_)))
                       (if (not (fx= _g14194_ 2))
                           (error "Context expects 2 values" _g14194_)))
                     (let ((_e13952_ (values-ref _g14193_ 0))
                           (_vars13953_ (values-ref _g14193_ 1)))
                       (values (cons 'box _e13952_) _vars13953_))))
                 (values (cons 'datum _e13848_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       (let ((_g14195_ (_recur13843_ _e13839_ gx#ellipsis?)))
                         (begin
                           (let ((_g14196_ (values-count _g14195_)))
                             (if (not (fx= _g14196_ 2))
                                 (error "Context expects 2 values" _g14196_)))
                           (let ((_tree13845_ (values-ref _g14195_ 0))
                                 (_vars13846_ (values-ref _g14195_ 1)))
                             (if (null? _vars13846_)
                                 _tree13845_
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Missing ellipsis"
                                  _stx13795_
                                  _vars13846_)))))))))))
          (let ((_e1379913809_ _stx13795_))
            (let ((_E1380113813_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _stx13795_))))
              (let ((_E1380013835_
                     (lambda ()
                       (if (gx#stx-pair? _e1379913809_)
                           (let ((_e1380213817_ (gx#syntax-e _e1379913809_)))
                             (let ((_hd1380313820_ (##car _e1380213817_))
                                   (_tl1380413822_ (##cdr _e1380213817_)))
                               (if (gx#stx-pair? _tl1380413822_)
                                   (let ((_e1380513825_
                                          (gx#syntax-e _tl1380413822_)))
                                     (let ((_hd1380613828_
                                            (##car _e1380513825_))
                                           (_tl1380713830_
                                            (##cdr _e1380513825_)))
                                       (let ((_form13833_ _hd1380613828_))
                                         (if (gx#stx-null? _tl1380713830_)
                                             (if '#t
                                                 (gx#stx-wrap-source
                                                  (_generate13797_
                                                   (_parse13798_ _form13833_))
                                                  (gx#stx-source _stx13795_))
                                                 (_E1380113813_))
                                             (_E1380113813_)))))
                                   (_E1380113813_))))
                           (_E1380113813_)))))
                (let () (_E1380013835_)))))))))
  (begin
    (define gx#macro-expand-syntax-case__opt-lambda13065
      (lambda (_stx13067_ _identifier=?13068_ _unwrap-e13069_ _wrap-e13070_)
        (let ((_generate-body13073_
               (lambda (_bindings13617_ _body13618_)
                 ((letrec ((_recur13620_
                            (lambda (_rest13622_)
                              (let ((_rest1362313631_ _rest13622_))
                                (let ((_E1362613635_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest1362313631_))))
                                  (let ((_else1362513639_
                                         (lambda () _body13618_)))
                                    (let ((_K1362713645_
                                           (lambda (_rest13642_ _hd13643_)
                                             (gx#core-list
                                              'let-values
                                              (cons _hd13643_ '())
                                              (_recur13620_ _rest13642_)))))
                                      (if (##pair? _rest1362313631_)
                                          (let ((_hd1362813648_
                                                 (##car _rest1362313631_))
                                                (_tl1362913650_
                                                 (##cdr _rest1362313631_)))
                                            (let ((_hd13653_ _hd1362813648_))
                                              (let ((_rest13655_
                                                     _tl1362913650_))
                                                (_K1362713645_
                                                 _rest13655_
                                                 _hd13653_))))
                                          (_else1362513639_)))))))))
                    _recur13620_)
                  _bindings13617_))))
          (let ((_generate-match13075_
                 (lambda (_where13239_
                          _target13240_
                          _hd13241_
                          _mvars13242_
                          _K13243_
                          _E13244_)
                   (let ((_BUG13246_
                          (lambda (_q13478_)
                            (error '"BUG: syntax-case; generate"
                                   _stx13067_
                                   _hd13241_
                                   _q13478_))))
                     (let ((_splice-rlen13248_
                            (lambda (_e13294_)
                              ((letrec ((_lp13296_
                                         (lambda (_e13298_ _n13299_)
                                           (let ((_e1330013307_ _e13298_))
                                             (let ((_E1330213311_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _e1330013307_))))
                                               (let ((_K1330313320_
                                                      (lambda (_body13314_
                                                               _tag13315_)
                                                        (let ((_$e13317_
                                                               _tag13315_))
                                                          (if (eq? _$e13317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'splice)
                      (gx#raise-syntax-error
                       '#f
                       '"Ambiguous pattern"
                       _stx13067_
                       _where13239_)
                      (if (eq? _$e13317_ 'cons)
                          (_lp13296_ (cdr _body13314_) (fx+ _n13299_ '1))
                          _n13299_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _e1330013307_)
                                                     (let ((_hd1330413323_
                                                            (##car _e1330013307_))
                                                           (_tl1330513325_
                                                            (##cdr _e1330013307_)))
                                                       (let ((_tag13328_
                                                              _hd1330413323_))
                                                         (let ((_body13330_
                                                                _tl1330513325_))
                                                           (_K1330313320_
                                                            _body13330_
                                                            _tag13328_))))
                                                     (_E1330213311_))))))))
                                 _lp13296_)
                               _e13294_
                               '0))))
                       (let ((_splice-vars13249_
                              (lambda (_e13256_)
                                ((letrec ((_recur13258_
                                           (lambda (_e13260_ _vars13261_)
                                             (let ((_e1326213269_ _e13260_))
                                               (let ((_E1326413273_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _e1326213269_))))
                                                 (let ((_K1326513282_
                                                        (lambda (_body13276_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tag13277_)
                  (let ((_$e13279_ _tag13277_))
                    (if (eq? _$e13279_ 'var)
                        (cons _body13276_ _vars13261_)
                        (if (memq _$e13279_ '(cons splice))
                            (_recur13258_
                             (cdr _body13276_)
                             (_recur13258_ (car _body13276_) _vars13261_))
                            (if (memq _$e13279_ '(vector box))
                                (_recur13258_ _body13276_ _vars13261_)
                                _vars13261_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##pair? _e1326213269_)
                                                       (let ((_hd1326613285_
                                                              (##car _e1326213269_))
                                                             (_tl1326713287_
                                                              (##cdr _e1326213269_)))
                                                         (let ((_tag13290_
                                                                _hd1326613285_))
                                                           (let ((_body13292_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1326713287_))
                     (_K1326513282_ _body13292_ _tag13290_))))
               (_E1326413273_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _recur13258_)
                                 _e13256_
                                 '()))))
                         (let ((_make-body13250_
                                (lambda (_vars13252_)
                                  (cons _K13243_
                                        (map (lambda (_mvar13254_)
                                               (assgetq (car _mvar13254_)
                                                        _vars13252_
                                                        _BUG13246_))
                                             _mvars13242_)))))
                           (letrec ((_recur13247_
                                     (lambda (_e13332_
                                              _vars13333_
                                              _target13334_
                                              _E13335_
                                              _k13336_)
                                       (let ((_e1333713344_ _e13332_))
                                         (let ((_E1333913348_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _e1333713344_))))
                                           (let ((_K1334013466_
                                                  (lambda (_body13351_
                                                           _tag13352_)
                                                    (let ((_$e13354_
                                                           _tag13352_))
                                                      (if (eq? _$e13354_ 'any)
                                                          (_k13336_
                                                           _vars13333_)
                                                          (if (eq? _$e13354_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'id)
                      (gx#core-list
                       'if
                       (gx#core-list 'identifier? _target13334_)
                       (gx#core-list
                        'if
                        (gx#core-list
                         _identifier=?13068_
                         (gx#core-list _wrap-e13070_ _body13351_)
                         _target13334_)
                        (_k13336_ _vars13333_)
                        _E13335_)
                       _E13335_)
                      (if (eq? _$e13354_ 'var)
                          (_k13336_
                           (cons (cons _body13351_ _target13334_) _vars13333_))
                          (if (eq? _$e13354_ 'cons)
                              (let ((_$e13357_ (gx#genident__1 'e))
                                    (_$hd13358_ (gx#genident__1 'hd))
                                    (_$tl13359_ (gx#genident__1 'tl)))
                                (gx#core-list
                                 'if
                                 (gx#core-list 'stx-pair? _target13334_)
                                 (gx#core-list
                                  'let-values
                                  (cons (cons (cons _$e13357_ '())
                                              (cons (gx#core-list
                                                     _unwrap-e13069_
                                                     _target13334_)
                                                    '()))
                                        '())
                                  (gx#core-list
                                   'let-values
                                   (cons (cons (cons _$hd13358_ '())
                                               (cons (gx#core-list
                                                      '##car
                                                      _$e13357_)
                                                     '()))
                                         (cons (cons (cons _$tl13359_ '())
                                                     (cons (gx#core-list
                                                            '##cdr
                                                            _$e13357_)
                                                           '()))
                                               '()))
                                   (let ((_body1336013367_ _body13351_))
                                     (let ((_E1336213371_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _body1336013367_))))
                                       (let ((_K1336313379_
                                              (lambda (_tl13374_ _hd13375_)
                                                (_recur13247_
                                                 _hd13375_
                                                 _vars13333_
                                                 _$hd13358_
                                                 _E13335_
                                                 (lambda (_vars13377_)
                                                   (_recur13247_
                                                    _tl13374_
                                                    _vars13377_
                                                    _$tl13359_
                                                    _E13335_
                                                    _k13336_))))))
                                         (if (##pair? _body1336013367_)
                                             (let ((_hd1336413382_
                                                    (##car _body1336013367_))
                                                   (_tl1336513384_
                                                    (##cdr _body1336013367_)))
                                               (let ((_hd13387_
                                                      _hd1336413382_))
                                                 (let ((_tl13389_
                                                        _tl1336513384_))
                                                   (_K1336313379_
                                                    _tl13389_
                                                    _hd13387_))))
                                             (_E1336213371_)))))))
                                 _E13335_))
                              (if (eq? _$e13354_ 'splice)
                                  (let ((_body1339013397_ _body13351_))
                                    (let ((_E1339213401_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _body1339013397_))))
                                      (let ((_K1339313450_
                                             (lambda (_tl13404_ _hd13405_)
                                               (let ((_rlen13407_
                                                      (_splice-rlen13248_
                                                       _tl13404_)))
                                                 (let ((_$target13409_
                                                        (gx#genident__1
                                                         'target)))
                                                   (let ((_$hd13411_
                                                          (gx#genident__1
                                                           'hd)))
                                                     (let ((_$tl13413_
                                                            (gx#genident__1
                                                             'tl)))
                                                       (let ((_$lp13415_
                                                              (gx#genident__1
                                                               'loop)))
                                                         (let ((_$lp-e13417_
                                                                (gx#genident__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'e)))
                   (let ((_$lp-hd13419_ (gx#genident__1 'lp-hd)))
                     (let ((_$lp-tl13421_ (gx#genident__1 'lp-tl)))
                       (let ((_svars13423_ (_splice-vars13249_ _hd13405_)))
                         (let ((_lvars13425_ (gx#gentemps _svars13423_)))
                           (let ((_tlvars13427_ (gx#gentemps _svars13423_)))
                             (let ((_linit13431_
                                    (map (lambda (_var13429_)
                                           (gx#core-list 'quote '()))
                                         _lvars13425_)))
                               (let ()
                                 (let ((_make-loop13434_
                                        (lambda (_vars13436_)
                                          (gx#core-list
                                           'letrec-values
                                           (cons (cons (cons _$lp13415_ '())
                                                       (cons (gx#core-list
                                                              'lambda%
                                                              (cons _$hd13411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _lvars13425_)
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _$hd13411_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$lp-e13417_ '())
                                    (cons (gx#core-list
                                           _unwrap-e13069_
                                           _$hd13411_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$lp-hd13419_ '())
                                     (cons (gx#core-list '##car _$lp-e13417_)
                                           '()))
                               (cons (cons (cons _$lp-tl13421_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$lp-e13417_)
                                                 '()))
                                     '()))
                         (_recur13247_
                          _hd13405_
                          '()
                          _$lp-hd13419_
                          _E13335_
                          (lambda (_hdvars13438_)
                            (cons* _$lp13415_
                                   _$lp-tl13421_
                                   (map (lambda (_svar13440_ _lvar13441_)
                                          (gx#core-list
                                           'cons
                                           (assgetq _svar13440_
                                                    _hdvars13438_
                                                    _BUG13246_)
                                           _lvar13441_))
                                        _svars13423_
                                        _lvars13425_))))))
                       (gx#core-list
                        'let-values
                        (map (lambda (_lvar13443_ _tlvar13444_)
                               (cons (cons _tlvar13444_ '())
                                     (cons (gx#core-list 'reverse _lvar13443_)
                                           '())))
                             _lvars13425_
                             _tlvars13427_)
                        (_k13336_
                         (foldl (lambda (_svar13446_ _tlvar13447_ _r13448_)
                                  (cons (cons _svar13446_ _tlvar13447_)
                                        _r13448_))
                                _vars13436_
                                _svars13423_
                                _tlvars13427_)))))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons* _$lp13415_
                                                  _$target13409_
                                                  _linit13431_)))))
                                   (gx#core-list
                                    'if
                                    (gx#core-list
                                     'stx-pair/null?
                                     _target13334_)
                                    (gx#core-list
                                     'if
                                     (gx#core-list
                                      'fx>=
                                      (gx#core-list 'stx-length _target13334_)
                                      _rlen13407_)
                                     (gx#core-list
                                      'let-values
                                      (cons (cons (cons _$target13409_
                                                        (cons _$tl13413_ '()))
                                                  (cons (gx#core-list
                                                         'syntax-split-splice
                                                         _target13334_
                                                         _rlen13407_)
                                                        '()))
                                            '())
                                      (_recur13247_
                                       _tl13404_
                                       _vars13333_
                                       _$tl13413_
                                       _E13335_
                                       _make-loop13434_))
                                     _E13335_)
                                    _E13335_))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _body1339013397_)
                                            (let ((_hd1339413453_
                                                   (##car _body1339013397_))
                                                  (_tl1339513455_
                                                   (##cdr _body1339013397_)))
                                              (let ((_hd13458_ _hd1339413453_))
                                                (let ((_tl13460_
                                                       _tl1339513455_))
                                                  (_K1339313450_
                                                   _tl13460_
                                                   _hd13458_))))
                                            (_E1339213401_)))))
                                  (if (eq? _$e13354_ 'null)
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-null? _target13334_)
                                       (_k13336_ _vars13333_)
                                       _E13335_)
                                      (if (eq? _$e13354_ 'vector)
                                          (let ((_$e13462_
                                                 (gx#genident__1 'e)))
                                            (gx#core-list
                                             'if
                                             (gx#core-list
                                              'stx-vector?
                                              _target13334_)
                                             (gx#core-list
                                              'let-values
                                              (cons (cons (cons _$e13462_ '())
                                                          (cons (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'vector->list
                         (gx#core-list _unwrap-e13069_ _target13334_))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (_recur13247_
                                               _body13351_
                                               _vars13333_
                                               _$e13462_
                                               _E13335_
                                               _k13336_))
                                             _E13335_))
                                          (if (eq? _$e13354_ 'box)
                                              (let ((_$e13464_
                                                     (gx#genident__1 'e)))
                                                (gx#core-list
                                                 'if
                                                 (gx#core-list
                                                  'stx-box?
                                                  _target13334_)
                                                 (gx#core-list
                                                  'let-values
                                                  (cons (cons (cons _$e13464_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (gx#core-list
                             'unbox
                             (gx#core-list _unwrap-e13069_ _target13334_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur13247_
                                                   _body13351_
                                                   _vars13333_
                                                   _$e13464_
                                                   _E13335_
                                                   _k13336_))
                                                 _E13335_))
                                              (if (eq? _$e13354_ 'datum)
                                                  (gx#core-list
                                                   'if
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target13334_)
                                                   (gx#core-list
                                                    'if
                                                    (gx#core-list
                                                     'equal?
                                                     (gx#core-list
                                                      'stx-e
                                                      _target13334_)
                                                     _body13351_)
                                                    (_k13336_ _vars13333_)
                                                    _E13335_)
                                                   _E13335_)
                                                  (_BUG13246_
                                                   _e13332_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _e1333713344_)
                                                 (let ((_hd1334113469_
                                                        (##car _e1333713344_))
                                                       (_tl1334213471_
                                                        (##cdr _e1333713344_)))
                                                   (let ((_tag13474_
                                                          _hd1334113469_))
                                                     (let ((_body13476_
                                                            _tl1334213471_))
                                                       (_K1334013466_
                                                        _body13476_
                                                        _tag13474_))))
                                                 (_E1333913348_))))))))
                             (_recur13247_
                              _hd13241_
                              '()
                              _target13240_
                              _E13244_
                              _make-body13250_)))))))))
            (let ((_parse-clause13076_
                   (lambda (_hd13145_ _ids13146_)
                     ((letrec ((_recur13148_
                                (lambda (_e13150_ _vars13151_ _depth13152_)
                                  (if (gx#identifier? _e13150_)
                                      (if (gx#underscore? _e13150_)
                                          (values '(any) _vars13151_)
                                          (if (gx#ellipsis? _e13150_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Misplaced ellipsis"
                                               _stx13067_
                                               _hd13145_)
                                              (if (find (lambda (_id13154_)
                                                          (gx#bound-identifier=?
                                                           _e13150_
                                                           _id13154_))
                                                        _ids13146_)
                                                  (values (cons 'id _e13150_)
                                                          _vars13151_)
                                                  (if (find (lambda (_var13156_)
                                                              (gx#bound-identifier=?
                                                               _e13150_
                                                               (car _var13156_)))
                                                            _vars13151_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Duplicate pattern variable"
                                                       _stx13067_
                                                       _e13150_)
                                                      (values (cons 'var
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _e13150_)
                      (cons (cons _e13150_ _depth13152_) _vars13151_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _e13150_)
                                          (let ((_e1315713164_ _e13150_))
                                            (let ((_E1315913168_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _e1315713164_))))
                                              (let ((_E1315813229_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e1315713164_)
                                                           (let ((_e1316013172_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e1315713164_)))
                     (let ((_hd1316113175_ (##car _e1316013172_))
                           (_tl1316213177_ (##cdr _e1316013172_)))
                       (let ((_hd13180_ _hd1316113175_))
                         (let ((_rest13182_ _tl1316213177_))
                           (if '#t
                               (let ((_make-pair13197_
                                      (lambda (_tag13184_ _hd13185_ _tl13186_)
                                        (let ((_hd-depth13188_
                                               (if (eq? _tag13184_ 'splice)
                                                   (fx+ _depth13152_ '1)
                                                   _depth13152_)))
                                          (let ((_g14207_
                                                 (_recur13148_
                                                  _hd13185_
                                                  _vars13151_
                                                  _hd-depth13188_)))
                                            (begin
                                              (let ((_g14208_
                                                     (values-count _g14207_)))
                                                (if (not (fx= _g14208_ 2))
                                                    (error "Context expects 2 values"
                                                           _g14208_)))
                                              (let ((_hd13190_
                                                     (values-ref _g14207_ 0))
                                                    (_vars13191_
                                                     (values-ref _g14207_ 1)))
                                                (let ((_g14209_
                                                       (_recur13148_
                                                        _tl13186_
                                                        _vars13191_
                                                        _depth13152_)))
                                                  (begin
                                                    (let ((_g14210_
                                                           (values-count
                                                            _g14209_)))
                                                      (if (not (fx= _g14210_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g14210_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_tl13193_
                                                           (values-ref
                                                            _g14209_
                                                            0))
                                                          (_vars13194_
                                                           (values-ref
                                                            _g14209_
                                                            1)))
                                                      (let ()
                                                        (values (cons* _tag13184_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd13190_
                               _tl13193_)
                        _vars13194_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (let ((_e1319813205_ _rest13182_))
                                   (let ((_E1320013209_
                                          (lambda ()
                                            (_make-pair13197_
                                             'cons
                                             _hd13180_
                                             _rest13182_))))
                                     (let ((_E1319913225_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1319813205_)
                                                  (let ((_e1320113213_
                                                         (gx#syntax-e
                                                          _e1319813205_)))
                                                    (let ((_hd1320213216_
                                                           (##car _e1320113213_))
                                                          (_tl1320313218_
                                                           (##cdr _e1320113213_)))
                                                      (let ((_rest-hd13221_
                                                             _hd1320213216_))
                                                        (let ((_rest-tl13223_
                                                               _tl1320313218_))
                                                          (if '#t
                                                              (if (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest-hd13221_)
                          (_make-pair13197_ 'splice _hd13180_ _rest-tl13223_)
                          (_make-pair13197_ 'cons _hd13180_ _rest13182_))
                      (_E1320013209_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1320013209_)))))
                                       (let () (_E1319913225_))))))
                               (_E1315913168_))))))
                   (_E1315913168_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E1315813229_)))))
                                          (if (gx#stx-null? _e13150_)
                                              (values '(null) _vars13151_)
                                              (if (gx#stx-vector? _e13150_)
                                                  (let ((_g14211_
                                                         (_recur13148_
                                                          (vector->list
                                                           (gx#syntax-e
                                                            _e13150_))
                                                          _vars13151_
                                                          _depth13152_)))
                                                    (begin
                                                      (let ((_g14212_
                                                             (values-count
                                                              _g14211_)))
                                                        (if (not (fx= _g14212_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g14212_)))
              (let ((_e13233_ (values-ref _g14211_ 0))
                    (_vars13234_ (values-ref _g14211_ 1)))
                (values (cons 'vector _e13233_) _vars13234_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e13150_)
                                                      (let ((_g14213_
                                                             (_recur13148_
                                                              (unbox (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e13150_))
                      _vars13151_
                      _depth13152_)))
                (begin
                  (let ((_g14214_ (values-count _g14213_)))
                    (if (not (fx= _g14214_ 2))
                        (error "Context expects 2 values" _g14214_)))
                  (let ((_e13236_ (values-ref _g14213_ 0))
                        (_vars13237_ (values-ref _g14213_ 1)))
                    (values (cons 'box _e13236_) _vars13237_))))
              (if (gx#stx-datum? _e13150_)
                  (values (cons 'datum (gx#stx-e _e13150_)) _vars13151_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad pattern"
                   _stx13067_
                   _e13150_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        _recur13148_)
                      _hd13145_
                      '()
                      '0))))
              (let ((_generate-clause13074_
                     (lambda (_target13480_ _ids13481_ _clause13482_ _E13483_)
                       (let ((_generate113485_
                              (lambda (_hd13572_ _fender13573_ _body13574_)
                                (let ((_g14205_
                                       (_parse-clause13076_
                                        _hd13572_
                                        _ids13481_)))
                                  (begin
                                    (let ((_g14206_ (values-count _g14205_)))
                                      (if (not (fx= _g14206_ 2))
                                          (error "Context expects 2 values"
                                                 _g14206_)))
                                    (let ((_e13576_ (values-ref _g14205_ 0))
                                          (_mvars13577_
                                           (values-ref _g14205_ 1)))
                                      (let ((_pvars13579_
                                             (map gx#syntax-local-rewrap
                                                  (gx#gentemps _mvars13577_))))
                                        (let ((_E13581_
                                               (cons _E13483_
                                                     (cons _target13480_
                                                           '()))))
                                          (let ((_K13614_
                                                 (gx#core-list
                                                  'lambda%
                                                  _pvars13579_
                                                  (gx#core-list
                                                   'let-syntax
                                                   (map (lambda (_mvar13583_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pvar13584_)
                  (let ((_mvar1358513592_ _mvar13583_))
                    (let ((_E1358713596_
                           (lambda ()
                             (error '"No clause matching" _mvar1358513592_))))
                      (let ((_K1358813602_
                             (lambda (_depth13599_ _id13600_)
                               (cons _id13600_
                                     (cons (gx#core-list
                                            'make-syntax-pattern
                                            (gx#core-list 'quote _id13600_)
                                            (gx#core-list 'quote _pvar13584_)
                                            _depth13599_)
                                           '())))))
                        (if (##pair? _mvar1358513592_)
                            (let ((_hd1358913605_ (##car _mvar1358513592_))
                                  (_tl1359013607_ (##cdr _mvar1358513592_)))
                              (let ((_id13610_ _hd1358913605_))
                                (let ((_depth13612_ _tl1359013607_))
                                  (_K1358813602_ _depth13612_ _id13610_))))
                            (_E1358713596_))))))
                _mvars13577_
                _pvars13579_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (eq? _fender13573_ '#t)
                                                       _body13574_
                                                       (gx#core-list
                                                        'if
                                                        _fender13573_
                                                        _body13574_
                                                        _E13581_))))))
                                            (let ()
                                              (_generate-match13075_
                                               _hd13572_
                                               _target13480_
                                               _e13576_
                                               _mvars13577_
                                               _K13614_
                                               _E13581_)))))))))))
                         (let ((_e1348613506_ _clause13482_))
                           (let ((_E1349513510_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _e1348613506_))))
                             (let ((_E1348813544_
                                    (lambda ()
                                      (if (gx#stx-pair? _e1348613506_)
                                          (let ((_e1349613514_
                                                 (gx#syntax-e _e1348613506_)))
                                            (let ((_hd1349713517_
                                                   (##car _e1349613514_))
                                                  (_tl1349813519_
                                                   (##cdr _e1349613514_)))
                                              (let ((_hd13522_ _hd1349713517_))
                                                (if (gx#stx-pair?
                                                     _tl1349813519_)
                                                    (let ((_e1349913524_
                                                           (gx#syntax-e
                                                            _tl1349813519_)))
                                                      (let ((_hd1350013527_
                                                             (##car _e1349913524_))
                                                            (_tl1350113529_
                                                             (##cdr _e1349913524_)))
                                                        (let ((_fender13532_
                                                               _hd1350013527_))
                                                          (if (gx#stx-pair?
                                                               _tl1350113529_)
                                                              (let ((_e1350213534_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1350113529_)))
                        (let ((_hd1350313537_ (##car _e1350213534_))
                              (_tl1350413539_ (##cdr _e1350213534_)))
                          (let ((_body13542_ _hd1350313537_))
                            (if (gx#stx-null? _tl1350413539_)
                                (if '#t
                                    (_generate113485_
                                     _hd13522_
                                     _fender13532_
                                     _body13542_)
                                    (_E1349513510_))
                                (_E1349513510_)))))
                      (_E1349513510_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1349513510_)))))
                                          (_E1349513510_)))))
                               (let ((_E1348713568_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1348613506_)
                                            (let ((_e1348913548_
                                                   (gx#syntax-e
                                                    _e1348613506_)))
                                              (let ((_hd1349013551_
                                                     (##car _e1348913548_))
                                                    (_tl1349113553_
                                                     (##cdr _e1348913548_)))
                                                (let ((_hd13556_
                                                       _hd1349013551_))
                                                  (if (gx#stx-pair?
                                                       _tl1349113553_)
                                                      (let ((_e1349213558_
                                                             (gx#syntax-e
                                                              _tl1349113553_)))
                                                        (let ((_hd1349313561_
                                                               (##car _e1349213558_))
                                                              (_tl1349413563_
                                                               (##cdr _e1349213558_)))
                                                          (let ((_body13566_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1349313561_))
                    (if (gx#stx-null? _tl1349413563_)
                        (if '#t
                            (_generate113485_ _hd13556_ '#t _body13566_)
                            (_E1348813544_))
                        (_E1348813544_)))))
              (_E1348813544_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1348813544_)))))
                                 (let () (_E1348713568_))))))))))
                (let ((_generate-bindings13072_
                       (lambda (_target13657_
                                _ids13658_
                                _clauses13659_
                                _clause-ids13660_
                                _E13661_)
                         (let ((_generate113663_
                                (lambda (_clause13762_
                                         _clause-id13763_
                                         _E13764_)
                                  (cons (cons _clause-id13763_ '())
                                        (cons (gx#core-list
                                               'lambda%
                                               (cons _target13657_ '())
                                               (_generate-clause13074_
                                                _target13657_
                                                _ids13658_
                                                _clause13762_
                                                _E13764_))
                                              '())))))
                           ((letrec ((_lp13665_
                                      (lambda (_rest13667_
                                               _rest-ids13668_
                                               _bindings13669_)
                                        (let ((_rest1367013678_ _rest13667_))
                                          (let ((_E1367313682_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _rest1367013678_))))
                                            (let ((_else1367213686_
                                                   (lambda ()
                                                     _bindings13669_)))
                                              (let ((_K1367413750_
                                                     (lambda (_rest13689_
                                                              _clause13690_)
                                                       (let ((_rest-ids1369113698_
                                                              _rest-ids13668_))
                                                         (let ((_E1369313702_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (error '"No clause matching" _rest-ids1369113698_))))
                   (let ((_K1369413738_
                          (lambda (_rest-ids13705_ _clause-id13706_)
                            (let ((_rest-ids1370713715_ _rest-ids13705_))
                              (let ((_E1371013719_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _rest-ids1370713715_))))
                                (let ((_else1370913723_
                                       (lambda ()
                                         (cons (_generate113663_
                                                _clause13690_
                                                _clause-id13706_
                                                _E13661_)
                                               _bindings13669_))))
                                  (let ((_K1371113728_
                                         (lambda (_next-clause-id13726_)
                                           (_lp13665_
                                            _rest13689_
                                            _rest-ids13705_
                                            (cons (_generate113663_
                                                   _clause13690_
                                                   _clause-id13706_
                                                   _next-clause-id13726_)
                                                  _bindings13669_)))))
                                    (if (##pair? _rest-ids1370713715_)
                                        (let ((_hd1371213731_
                                               (##car _rest-ids1370713715_))
                                              (_tl1371313733_
                                               (##cdr _rest-ids1370713715_)))
                                          (let ((_next-clause-id13736_
                                                 _hd1371213731_))
                                            (_K1371113728_
                                             _next-clause-id13736_)))
                                        (_else1370913723_)))))))))
                     (if (##pair? _rest-ids1369113698_)
                         (let ((_hd1369513741_ (##car _rest-ids1369113698_))
                               (_tl1369613743_ (##cdr _rest-ids1369113698_)))
                           (let ((_clause-id13746_ _hd1369513741_))
                             (let ((_rest-ids13748_ _tl1369613743_))
                               (_K1369413738_
                                _rest-ids13748_
                                _clause-id13746_))))
                         (_E1369313702_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (##pair? _rest1367013678_)
                                                    (let ((_hd1367513753_
                                                           (##car _rest1367013678_))
                                                          (_tl1367613755_
                                                           (##cdr _rest1367013678_)))
                                                      (let ((_clause13758_
                                                             _hd1367513753_))
                                                        (let ((_rest13760_
                                                               _tl1367613755_))
                                                          (_K1367413750_
                                                           _rest13760_
                                                           _clause13758_))))
                                                    (_else1367213686_)))))))))
                              _lp13665_)
                            _clauses13659_
                            _clause-ids13660_
                            '())))))
                  (let ((_e1307713090_ _stx13067_))
                    (let ((_E1307913094_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e1307713090_))))
                      (let ((_E1307813141_
                             (lambda ()
                               (if (gx#stx-pair? _e1307713090_)
                                   (let ((_e1308013098_
                                          (gx#syntax-e _e1307713090_)))
                                     (let ((_hd1308113101_
                                            (##car _e1308013098_))
                                           (_tl1308213103_
                                            (##cdr _e1308013098_)))
                                       (if (gx#stx-pair? _tl1308213103_)
                                           (let ((_e1308313106_
                                                  (gx#syntax-e
                                                   _tl1308213103_)))
                                             (let ((_hd1308413109_
                                                    (##car _e1308313106_))
                                                   (_tl1308513111_
                                                    (##cdr _e1308313106_)))
                                               (let ((_expr13114_
                                                      _hd1308413109_))
                                                 (if (gx#stx-pair?
                                                      _tl1308513111_)
                                                     (let ((_e1308613116_
                                                            (gx#syntax-e
                                                             _tl1308513111_)))
                                                       (let ((_hd1308713119_
                                                              (##car _e1308613116_))
                                                             (_tl1308813121_
                                                              (##cdr _e1308613116_)))
                                                         (let ((_ids13124_
                                                                _hd1308713119_))
                                                           (let ((_clauses13126_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1308813121_))
                     (if '#t
                         (if (not (gx#identifier-list? _ids13124_))
                             (gx#raise-syntax-error
                              '#f
                              '"Bad template identifier list"
                              _stx13067_
                              _ids13124_)
                             (if (not (gx#stx-list? _clauses13126_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _stx13067_)
                                 (let ((_ids13128_
                                        (gx#syntax->list _ids13124_)))
                                   (let ((_clauses13130_
                                          (gx#syntax->list _clauses13126_)))
                                     (let ((_clause-ids13132_
                                            (gx#gentemps _clauses13130_)))
                                       (let ((_E13134_ (gx#genident__0)))
                                         (let ((_target13136_
                                                (gx#genident__0)))
                                           (let ((_first13138_
                                                  (if (null? _clauses13130_)
                                                      _E13134_
                                                      (car _clause-ids13132_))))
                                             (let ()
                                               (gx#stx-wrap-source
                                                (gx#core-list
                                                 'let-values
                                                 (cons (cons (cons _E13134_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _target13136_ '())
                            (gx#core-list
                             'raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _target13136_))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_generate-body13073_
                                                  (_generate-bindings13072_
                                                   _target13136_
                                                   _ids13128_
                                                   _clauses13130_
                                                   _clause-ids13132_
                                                   _E13134_)
                                                  (cons _first13138_
                                                        (cons _expr13114_
                                                              '()))))
                                                (gx#stx-source
                                                 _stx13067_)))))))))))
                         (_E1307913094_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1307913094_)))))
                                           (_E1307913094_))))
                                   (_E1307913094_)))))
                        (let () (_E1307813141_))))))))))))
    (begin
      (define gx#macro-expand-syntax-case__0
        (lambda (_stx13769_)
          (let ((_identifier=?13771_ 'free-identifier=?))
            (let ((_unwrap-e13773_ 'syntax-e))
              (let ((_wrap-e13775_ 'quote-syntax))
                (gx#macro-expand-syntax-case__opt-lambda13065
                 _stx13769_
                 _identifier=?13771_
                 _unwrap-e13773_
                 _wrap-e13775_))))))
      (define gx#macro-expand-syntax-case__1
        (lambda (_stx13777_ _identifier=?13778_)
          (let ((_unwrap-e13780_ 'syntax-e))
            (let ((_wrap-e13782_ 'quote-syntax))
              (gx#macro-expand-syntax-case__opt-lambda13065
               _stx13777_
               _identifier=?13778_
               _unwrap-e13780_
               _wrap-e13782_)))))
      (define gx#macro-expand-syntax-case__2
        (lambda (_stx13784_ _identifier=?13785_ _unwrap-e13786_)
          (let ((_wrap-e13788_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda13065
             _stx13784_
             _identifier=?13785_
             _unwrap-e13786_
             _wrap-e13788_))))
      (define gx#macro-expand-syntax-case
        (lambda _g14216_
          (let ((_g14215_ (length _g14216_)))
            (cond ((fx= _g14215_ 1)
                   (apply gx#macro-expand-syntax-case__0 _g14216_))
                  ((fx= _g14215_ 2)
                   (apply gx#macro-expand-syntax-case__1 _g14216_))
                  ((fx= _g14215_ 3)
                   (apply gx#macro-expand-syntax-case__2 _g14216_))
                  ((fx= _g14215_ 4)
                   (apply gx#macro-expand-syntax-case__opt-lambda13065
                          _g14216_))
                  (else (error "No clause matching arguments" _g14216_))))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx13064_)
      (if (gx#identifier? _stx13064_)
          (##structure-instance-of?
           (gx#syntax-local-e__opt-lambda4057 _stx13064_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd13022_ . _rest13023_)
      (let ((_len13025_ (length _hd13022_)))
        ((letrec ((_lp13027_
                   (lambda (_rest13029_)
                     (let ((_rest1303013038_ _rest13029_))
                       (let ((_E1303313042_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1303013038_))))
                         (let ((_else1303213046_ (lambda () '#!void)))
                           (let ((_K1303413052_
                                  (lambda (_rest13049_ _hd13050_)
                                    (if (fx= _len13025_ (length _hd13050_))
                                        (_lp13027_ _rest13049_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Splice length mismatch"
                                         _hd13050_)))))
                             (if (##pair? _rest1303013038_)
                                 (let ((_hd1303513055_
                                        (##car _rest1303013038_))
                                       (_tl1303613057_
                                        (##cdr _rest1303013038_)))
                                   (let ((_hd13060_ _hd1303513055_))
                                     (let ((_rest13062_ _tl1303613057_))
                                       (_K1303413052_ _rest13062_ _hd13060_))))
                                 (_else1303213046_)))))))))
           _lp13027_)
         _rest13023_))))
  (define gx#syntax-split-splice
    (lambda (_stx12980_ _n12981_)
      ((letrec ((_lp12983_
                 (lambda (_rest12985_ _r12986_)
                   (if (gx#stx-pair? _rest12985_)
                       (let ((_g1298712994_ (gx#syntax-e _rest12985_)))
                         (let ((_E1298912998_
                                (lambda ()
                                  (error '"No clause matching"
                                         _g1298712994_))))
                           (let ((_K1299013004_
                                  (lambda (_rest13001_ _hd13002_)
                                    (_lp12983_
                                     _rest13001_
                                     (cons _hd13002_ _r12986_)))))
                             (if (##pair? _g1298712994_)
                                 (let ((_hd1299113007_ (##car _g1298712994_))
                                       (_tl1299213009_ (##cdr _g1298712994_)))
                                   (let ((_hd13012_ _hd1299113007_))
                                     (let ((_rest13014_ _tl1299213009_))
                                       (_K1299013004_ _rest13014_ _hd13012_))))
                                 (_E1298912998_)))))
                       ((letrec ((_lp13016_
                                  (lambda (_n13018_ _l13019_ _r13020_)
                                    (if (null? _l13019_)
                                        (values _l13019_ _r13020_)
                                        (if (fxpositive? _n13018_)
                                            (_lp13016_
                                             (fx- _n13018_ '1)
                                             (cdr _l13019_)
                                             (cons (car _l13019_) _r13020_))
                                            (values (reverse _l13019_)
                                                    _r13020_))))))
                          _lp13016_)
                        _n12981_
                        _r12986_
                        _rest12985_)))))
         _lp12983_)
       _stx12980_
       '()))))
