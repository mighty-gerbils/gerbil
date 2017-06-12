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
    (lambda _$args14248_
      (apply make-struct-instance gx#syntax-pattern::t _$args14248_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self14245_ _stx14246_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx14246_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx13854_)
      (let ((_generate13856_
             (lambda (_e14083_)
               (let ((_BUG14085_
                      (lambda (_q14243_)
                        (error '"BUG: syntax; generate"
                               _stx13854_
                               _e14083_
                               _q14243_))))
                 (let ((_local-pattern-e14086_
                        (lambda (_pat14241_)
                          (gx#syntax-local-rewrap
                           (##structure-ref
                            _pat14241_
                            '2
                            gx#syntax-pattern::t
                            '#f)))))
                   (let ((_getvar14087_
                          (lambda (_q14238_ _vars14239_)
                            (assgetq _q14238_ _vars14239_ _BUG14085_))))
                     (let ((_getarg14088_
                            (lambda (_arg14204_ _vars14205_)
                              (let ((_arg1420614213_ _arg14204_))
                                (let ((_E1420814217_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _arg1420614213_))))
                                  (let ((_K1420914226_
                                         (lambda (_e14220_ _tag14221_)
                                           (let ((_$e14223_ _tag14221_))
                                             (if (eq? _$e14223_ 'ref)
                                                 (_getvar14087_
                                                  _e14220_
                                                  _vars14205_)
                                                 (if (eq? _$e14223_ 'pattern)
                                                     (_local-pattern-e14086_
                                                      _e14220_)
                                                     (_BUG14085_
                                                      _arg14204_)))))))
                                    (if (##pair? _arg1420614213_)
                                        (let ((_hd1421014229_
                                               (##car _arg1420614213_))
                                              (_tl1421114231_
                                               (##cdr _arg1420614213_)))
                                          (let ((_tag14234_ _hd1421014229_))
                                            (let ((_e14236_ _tl1421114231_))
                                              (_K1420914226_
                                               _e14236_
                                               _tag14234_))))
                                        (_E1420814217_))))))))
                       ((letrec ((_recur14090_
                                  (lambda (_e14092_ _vars14093_)
                                    (let ((_e1409414101_ _e14092_))
                                      (let ((_E1409614105_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _e1409414101_))))
                                        (let ((_K1409714192_
                                               (lambda (_body14108_ _tag14109_)
                                                 (let ((_$e14111_ _tag14109_))
                                                   (if (eq? _$e14111_ 'datum)
                                                       (gx#core-list
                                                        'quote
                                                        _body14108_)
                                                       (if (eq? _$e14111_
                                                                'term)
                                                           (gx#core-list
                                                            'datum->syntax
                                                            '#f
                                                            (gx#core-list
                                                             'quote
                                                             _body14108_))
                                                           (if (eq? _$e14111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'pattern)
                       (_local-pattern-e14086_ _body14108_)
                       (if (eq? _$e14111_ 'ref)
                           (_getvar14087_ _body14108_ _vars14093_)
                           (if (eq? _$e14111_ 'cons)
                               (gx#core-list
                                'cons
                                (_recur14090_ (car _body14108_) _vars14093_)
                                (_recur14090_ (cdr _body14108_) _vars14093_))
                               (if (eq? _$e14111_ 'vector)
                                   (gx#core-list
                                    'list->vector
                                    (_recur14090_ _body14108_ _vars14093_))
                                   (if (eq? _$e14111_ 'box)
                                       (gx#core-list
                                        'box
                                        (_recur14090_ _body14108_ _vars14093_))
                                       (if (eq? _$e14111_ 'splice)
                                           (let ((_body1411314124_
                                                  _body14108_))
                                             (let ((_E1411514128_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _body1411314124_))))
                                               (let ((_K1411614166_
                                                      (lambda (_args14131_
                                                               _iv14132_
                                                               _hd14133_
                                                               _depth14134_)
                                                        (let ((_targets14140_
                                                               (map (lambda (_g1413514137_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_getarg14088_ _g1413514137_ _vars14093_))
                            _args14131_)))
                  (let ((_fold-in14142_ (gx#gentemps _args14131_)))
                    (let ((_fold-out14144_ (gx#genident__0)))
                      (let ((_lambda-args14146_
                             (foldr1 cons
                                     (cons _fold-out14144_ '())
                                     _fold-in14142_)))
                        (let ((_lambda-body14163_
                               (if (fx> _depth14134_ '1)
                                   (let ((_r-args14154_
                                          (map (lambda (_arg14148_)
                                                 (cons 'ref (cdr _arg14148_)))
                                               _args14131_))
                                         (_r-vars14155_
                                          (foldr (lambda (_arg14150_
                                                          _var14151_
                                                          _r14152_)
                                                   (cons (cons (cdr _arg14150_)
                                                               _var14151_)
                                                         _r14152_))
                                                 _vars14093_
                                                 _args14131_
                                                 _fold-in14142_)))
                                     (_recur14090_
                                      (cons* 'splice
                                             (fx- _depth14134_ '1)
                                             _hd14133_
                                             (cons 'var _fold-out14144_)
                                             _r-args14154_)
                                      _r-vars14155_))
                                   (let ((_hd-vars14161_
                                          (foldr (lambda (_arg14157_
                                                          _var14158_
                                                          _r14159_)
                                                   (cons (cons (cdr _arg14157_)
                                                               _var14158_)
                                                         _r14159_))
                                                 _vars14093_
                                                 _args14131_
                                                 _fold-in14142_)))
                                     (gx#core-list
                                      'cons
                                      (_recur14090_ _hd14133_ _hd-vars14161_)
                                      _fold-out14144_)))))
                          (let ()
                            (gx#core-list
                             'begin
                             (if (fx> (length _targets14140_) '1)
                                 (gx#core-cons*
                                  'syntax-check-splice-targets
                                  _targets14140_)
                                 '#!void)
                             (gx#core-cons*
                              'foldr
                              (gx#core-list
                               'lambda%
                               _lambda-args14146_
                               _lambda-body14163_)
                              (_recur14090_ _iv14132_ _vars14093_)
                              _targets14140_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _body1411314124_)
                                                     (let ((_hd1411714169_
                                                            (##car _body1411314124_))
                                                           (_tl1411814171_
                                                            (##cdr _body1411314124_)))
                                                       (let ((_depth14174_
                                                              _hd1411714169_))
                                                         (if (##pair? _tl1411814171_)
                                                             (let ((_hd1411914176_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##car _tl1411814171_))
                           (_tl1412014178_ (##cdr _tl1411814171_)))
                       (let ((_hd14181_ _hd1411914176_))
                         (if (##pair? _tl1412014178_)
                             (let ((_hd1412114183_ (##car _tl1412014178_))
                                   (_tl1412214185_ (##cdr _tl1412014178_)))
                               (let ((_iv14188_ _hd1412114183_))
                                 (let ((_args14190_ _tl1412214185_))
                                   (_K1411614166_
                                    _args14190_
                                    _iv14188_
                                    _hd14181_
                                    _depth14174_))))
                             (_E1411514128_))))
                     (_E1411514128_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1411514128_)))))
                                           (if (eq? _$e14111_ 'var)
                                               _body14108_
                                               (_BUG14085_
                                                _e14092_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _e1409414101_)
                                              (let ((_hd1409814195_
                                                     (##car _e1409414101_))
                                                    (_tl1409914197_
                                                     (##cdr _e1409414101_)))
                                                (let ((_tag14200_
                                                       _hd1409814195_))
                                                  (let ((_body14202_
                                                         _tl1409914197_))
                                                    (_K1409714192_
                                                     _body14202_
                                                     _tag14200_))))
                                              (_E1409614105_))))))))
                          _recur14090_)
                        _e14083_
                        '()))))))))
        (let ((_parse13857_
               (lambda (_e13898_)
                 (let ((_make-cons13900_
                        (lambda (_hd14075_ _tl14076_)
                          (let ((_g14260_ _hd14075_) (_g14262_ _tl14076_))
                            (begin
                              (let ((_g14261_ (values-count _g14260_)))
                                (if (not (fx= _g14261_ 2))
                                    (error "Context expects 2 values"
                                           _g14261_)))
                              (let ((_g14263_ (values-count _g14262_)))
                                (if (not (fx= _g14263_ 2))
                                    (error "Context expects 2 values"
                                           _g14263_)))
                              (let ((_hd-e14078_ (values-ref _g14260_ 0))
                                    (_hd-vars14079_ (values-ref _g14260_ 1)))
                                (let ((_tl-e14080_ (values-ref _g14262_ 0))
                                      (_tl-vars14081_ (values-ref _g14262_ 1)))
                                  (values (cons* 'cons _hd-e14078_ _tl-e14080_)
                                          (append _hd-vars14079_
                                                  _tl-vars14081_)))))))))
                   (let ((_make-splice13901_
                          (lambda (_where14014_
                                   _depth14015_
                                   _hd14016_
                                   _tl14017_)
                            (let ((_g14256_ _hd14016_) (_g14258_ _tl14017_))
                              (begin
                                (let ((_g14257_ (values-count _g14256_)))
                                  (if (not (fx= _g14257_ 2))
                                      (error "Context expects 2 values"
                                             _g14257_)))
                                (let ((_g14259_ (values-count _g14258_)))
                                  (if (not (fx= _g14259_ 2))
                                      (error "Context expects 2 values"
                                             _g14259_)))
                                (let ((_hd-e14019_ (values-ref _g14256_ 0))
                                      (_hd-vars14020_ (values-ref _g14256_ 1)))
                                  (let ((_tl-e14021_ (values-ref _g14258_ 0))
                                        (_tl-vars14022_
                                         (values-ref _g14258_ 1)))
                                    ((letrec ((_lp14024_
                                               (lambda (_rest14026_
                                                        _targets14027_
                                                        _vars14028_)
                                                 (let ((_rest1402914039_
                                                        _rest14026_))
                                                   (let ((_E1403214043_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest1402914039_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_else1403114047_
                                                            (lambda ()
                                                              (if (null? _targets14027_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Misplaced ellipsis"
                           _stx13854_
                           _where14014_)
                          (values (cons* 'splice
                                         _depth14015_
                                         _hd-e14019_
                                         _tl-e14021_
                                         _targets14027_)
                                  _vars14028_)))))
               (let ((_K1403314056_
                      (lambda (_rest14050_ _hd-pat14051_ _hd-depth*14052_)
                        (let ((_hd-depth14054_
                               (fx- _hd-depth*14052_ _depth14015_)))
                          (if (fxpositive? _hd-depth14054_)
                              (_lp14024_
                               _rest14050_
                               (cons (cons 'ref _hd-pat14051_) _targets14027_)
                               (cons (cons _hd-depth14054_ _hd-pat14051_)
                                     _vars14028_))
                              (if (fxzero? _hd-depth14054_)
                                  (_lp14024_
                                   _rest14050_
                                   (cons (cons 'pattern _hd-pat14051_)
                                         _targets14027_)
                                   _vars14028_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Too many ellipses"
                                   _stx13854_
                                   _where14014_)))))))
                 (if (##pair? _rest1402914039_)
                     (let ((_hd1403414059_ (##car _rest1402914039_))
                           (_tl1403514061_ (##cdr _rest1402914039_)))
                       (if (##pair? _hd1403414059_)
                           (let ((_hd1403614064_ (##car _hd1403414059_))
                                 (_tl1403714066_ (##cdr _hd1403414059_)))
                             (let ((_hd-depth*14069_ _hd1403614064_))
                               (let ((_hd-pat14071_ _tl1403714066_))
                                 (let ((_rest14073_ _tl1403514061_))
                                   (_K1403314056_
                                    _rest14073_
                                    _hd-pat14071_
                                    _hd-depth*14069_)))))
                           (_else1403114047_)))
                     (_else1403114047_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _lp14024_)
                                     _hd-vars14020_
                                     '()
                                     _tl-vars14022_))))))))
                     (letrec ((_recur13902_
                               (lambda (_e13907_ _is-e?13908_)
                                 (if (_is-e?13908_ _e13907_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Mislpaced ellipsis"
                                      _stx13854_)
                                     (if (gx#syntax-local-pattern? _e13907_)
                                         (let ((_pat13910_
                                                (gx#syntax-local-e__0
                                                 _e13907_)))
                                           (let ((_depth13912_
                                                  (##structure-ref
                                                   _pat13910_
                                                   '3
                                                   gx#syntax-pattern::t
                                                   '#f)))
                                             (let ()
                                               (if (fxpositive? _depth13912_)
                                                   (values (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat13910_)
                   (cons (cons _depth13912_ _pat13910_) '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (values (cons 'pattern
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat13910_)
                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (if (gx#identifier? _e13907_)
                                             (values (cons 'term _e13907_) '())
                                             (if (gx#stx-pair? _e13907_)
                                                 (let ((_e1391413921_
                                                        _e13907_))
                                                   (let ((_E1391613925_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _e1391413921_))))
                                                     (let ((_E1391514004_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e1391413921_)
                          (let ((_e1391713929_ (gx#syntax-e _e1391413921_)))
                            (let ((_hd1391813932_ (##car _e1391713929_))
                                  (_tl1391913934_ (##cdr _e1391713929_)))
                              (let ((_hd13937_ _hd1391813932_))
                                (let ((_rest13939_ _tl1391913934_))
                                  (if '#t
                                      (if (_is-e?13908_ _hd13937_)
                                          (let ((_e1394013947_ _rest13939_))
                                            (let ((_E1394213951_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad ellipsis syntax"
                                                      _stx13854_
                                                      _e13907_))))
                                              (let ((_E1394113965_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e1394013947_)
                                                           (let ((_e1394313955_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e1394013947_)))
                     (let ((_hd1394413958_ (##car _e1394313955_))
                           (_tl1394513960_ (##cdr _e1394313955_)))
                       (let ((_rest13963_ _hd1394413958_))
                         (if (gx#stx-null? _tl1394513960_)
                             (if '#t
                                 (_recur13902_ _rest13963_ false)
                                 (_E1394213951_))
                             (_E1394213951_)))))
                   (_E1394213951_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E1394113965_)))))
                                          ((letrec ((_lp13969_
                                                     (lambda (_rest13971_
                                                              _depth13972_)
                                                       (let ((_e1397313980_
                                                              _rest13971_))
                                                         (let ((_E1397513984_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (fxpositive? _depth13972_)
                              (_make-splice13901_
                               _e13907_
                               _depth13972_
                               (_recur13902_ _hd13937_ _is-e?13908_)
                               (_recur13902_ _rest13971_ _is-e?13908_))
                              (_make-cons13900_
                               (_recur13902_ _hd13937_ _is-e?13908_)
                               (_recur13902_ _rest13971_ _is-e?13908_))))))
                   (let ((_E1397414000_
                          (lambda ()
                            (if (gx#stx-pair? _e1397313980_)
                                (let ((_e1397613988_
                                       (gx#syntax-e _e1397313980_)))
                                  (let ((_hd1397713991_ (##car _e1397613988_))
                                        (_tl1397813993_ (##cdr _e1397613988_)))
                                    (let ((_rest-hd13996_ _hd1397713991_))
                                      (let ((_rest-tl13998_ _tl1397813993_))
                                        (if '#t
                                            (if (_is-e?13908_ _rest-hd13996_)
                                                (_lp13969_
                                                 _rest-tl13998_
                                                 (fx+ _depth13972_ '1))
                                                (if (fxpositive? _depth13972_)
                                                    (_make-splice13901_
                                                     _e13907_
                                                     _depth13972_
                                                     (_recur13902_
                                                      _hd13937_
                                                      _is-e?13908_)
                                                     (_recur13902_
                                                      _rest13971_
                                                      _is-e?13908_))
                                                    (_make-cons13900_
                                                     (_recur13902_
                                                      _hd13937_
                                                      _is-e?13908_)
                                                     (_recur13902_
                                                      _rest13971_
                                                      _is-e?13908_))))
                                            (_E1397513984_))))))
                                (_E1397513984_)))))
                     (let () (_E1397414000_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _lp13969_)
                                           _rest13939_
                                           '0))
                                      (_E1391613925_))))))
                          (_E1391613925_)))))
               (let () (_E1391514004_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-vector? _e13907_)
                                                     (let ((_g14250_
                                                            (_recur13902_
                                                             (vector->list
                                                              (gx#stx-unwrap__0
                                                               _e13907_))
                                                             _is-e?13908_)))
                                                       (begin
                                                         (let ((_g14251_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g14250_)))
                   (if (not (fx= _g14251_ 2))
                       (error "Context expects 2 values" _g14251_)))
                 (let ((_e14008_ (values-ref _g14250_ 0))
                       (_vars14009_ (values-ref _g14250_ 1)))
                   (values (cons 'vector _e14008_) _vars14009_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-box? _e13907_)
                                                         (let ((_g14252_
                                                                (_recur13902_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (unbox (gx#stx-unwrap__0 _e13907_))
                         _is-e?13908_)))
                   (begin
                     (let ((_g14253_ (values-count _g14252_)))
                       (if (not (fx= _g14253_ 2))
                           (error "Context expects 2 values" _g14253_)))
                     (let ((_e14011_ (values-ref _g14252_ 0))
                           (_vars14012_ (values-ref _g14252_ 1)))
                       (values (cons 'box _e14011_) _vars14012_))))
                 (values (cons 'datum _e13907_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       (let ((_g14254_ (_recur13902_ _e13898_ gx#ellipsis?)))
                         (begin
                           (let ((_g14255_ (values-count _g14254_)))
                             (if (not (fx= _g14255_ 2))
                                 (error "Context expects 2 values" _g14255_)))
                           (let ((_tree13904_ (values-ref _g14254_ 0))
                                 (_vars13905_ (values-ref _g14254_ 1)))
                             (if (null? _vars13905_)
                                 _tree13904_
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Missing ellipsis"
                                  _stx13854_
                                  _vars13905_)))))))))))
          (let ((_e1385813868_ _stx13854_))
            (let ((_E1386013872_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _stx13854_))))
              (let ((_E1385913894_
                     (lambda ()
                       (if (gx#stx-pair? _e1385813868_)
                           (let ((_e1386113876_ (gx#syntax-e _e1385813868_)))
                             (let ((_hd1386213879_ (##car _e1386113876_))
                                   (_tl1386313881_ (##cdr _e1386113876_)))
                               (if (gx#stx-pair? _tl1386313881_)
                                   (let ((_e1386413884_
                                          (gx#syntax-e _tl1386313881_)))
                                     (let ((_hd1386513887_
                                            (##car _e1386413884_))
                                           (_tl1386613889_
                                            (##cdr _e1386413884_)))
                                       (let ((_form13892_ _hd1386513887_))
                                         (if (gx#stx-null? _tl1386613889_)
                                             (if '#t
                                                 (gx#stx-wrap-source
                                                  (_generate13856_
                                                   (_parse13857_ _form13892_))
                                                  (gx#stx-source _stx13854_))
                                                 (_E1386013872_))
                                             (_E1386013872_)))))
                                   (_E1386013872_))))
                           (_E1386013872_)))))
                (let () (_E1385913894_)))))))))
  (begin
    (define gx#macro-expand-syntax-case__opt-lambda13124
      (lambda (_stx13126_ _identifier=?13127_ _unwrap-e13128_ _wrap-e13129_)
        (let ((_generate-body13132_
               (lambda (_bindings13676_ _body13677_)
                 ((letrec ((_recur13679_
                            (lambda (_rest13681_)
                              (let ((_rest1368213690_ _rest13681_))
                                (let ((_E1368513694_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest1368213690_))))
                                  (let ((_else1368413698_
                                         (lambda () _body13677_)))
                                    (let ((_K1368613704_
                                           (lambda (_rest13701_ _hd13702_)
                                             (gx#core-list
                                              'let-values
                                              (cons _hd13702_ '())
                                              (_recur13679_ _rest13701_)))))
                                      (if (##pair? _rest1368213690_)
                                          (let ((_hd1368713707_
                                                 (##car _rest1368213690_))
                                                (_tl1368813709_
                                                 (##cdr _rest1368213690_)))
                                            (let ((_hd13712_ _hd1368713707_))
                                              (let ((_rest13714_
                                                     _tl1368813709_))
                                                (_K1368613704_
                                                 _rest13714_
                                                 _hd13712_))))
                                          (_else1368413698_)))))))))
                    _recur13679_)
                  _bindings13676_))))
          (let ((_generate-match13134_
                 (lambda (_where13298_
                          _target13299_
                          _hd13300_
                          _mvars13301_
                          _K13302_
                          _E13303_)
                   (let ((_BUG13305_
                          (lambda (_q13537_)
                            (error '"BUG: syntax-case; generate"
                                   _stx13126_
                                   _hd13300_
                                   _q13537_))))
                     (let ((_splice-rlen13307_
                            (lambda (_e13353_)
                              ((letrec ((_lp13355_
                                         (lambda (_e13357_ _n13358_)
                                           (let ((_e1335913366_ _e13357_))
                                             (let ((_E1336113370_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _e1335913366_))))
                                               (let ((_K1336213379_
                                                      (lambda (_body13373_
                                                               _tag13374_)
                                                        (let ((_$e13376_
                                                               _tag13374_))
                                                          (if (eq? _$e13376_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'splice)
                      (gx#raise-syntax-error
                       '#f
                       '"Ambiguous pattern"
                       _stx13126_
                       _where13298_)
                      (if (eq? _$e13376_ 'cons)
                          (_lp13355_ (cdr _body13373_) (fx+ _n13358_ '1))
                          _n13358_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _e1335913366_)
                                                     (let ((_hd1336313382_
                                                            (##car _e1335913366_))
                                                           (_tl1336413384_
                                                            (##cdr _e1335913366_)))
                                                       (let ((_tag13387_
                                                              _hd1336313382_))
                                                         (let ((_body13389_
                                                                _tl1336413384_))
                                                           (_K1336213379_
                                                            _body13389_
                                                            _tag13387_))))
                                                     (_E1336113370_))))))))
                                 _lp13355_)
                               _e13353_
                               '0))))
                       (let ((_splice-vars13308_
                              (lambda (_e13315_)
                                ((letrec ((_recur13317_
                                           (lambda (_e13319_ _vars13320_)
                                             (let ((_e1332113328_ _e13319_))
                                               (let ((_E1332313332_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _e1332113328_))))
                                                 (let ((_K1332413341_
                                                        (lambda (_body13335_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tag13336_)
                  (let ((_$e13338_ _tag13336_))
                    (if (eq? _$e13338_ 'var)
                        (cons _body13335_ _vars13320_)
                        (if (memq _$e13338_ '(cons splice))
                            (_recur13317_
                             (cdr _body13335_)
                             (_recur13317_ (car _body13335_) _vars13320_))
                            (if (memq _$e13338_ '(vector box))
                                (_recur13317_ _body13335_ _vars13320_)
                                _vars13320_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##pair? _e1332113328_)
                                                       (let ((_hd1332513344_
                                                              (##car _e1332113328_))
                                                             (_tl1332613346_
                                                              (##cdr _e1332113328_)))
                                                         (let ((_tag13349_
                                                                _hd1332513344_))
                                                           (let ((_body13351_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1332613346_))
                     (_K1332413341_ _body13351_ _tag13349_))))
               (_E1332313332_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _recur13317_)
                                 _e13315_
                                 '()))))
                         (let ((_make-body13309_
                                (lambda (_vars13311_)
                                  (cons _K13302_
                                        (map (lambda (_mvar13313_)
                                               (assgetq (car _mvar13313_)
                                                        _vars13311_
                                                        _BUG13305_))
                                             _mvars13301_)))))
                           (letrec ((_recur13306_
                                     (lambda (_e13391_
                                              _vars13392_
                                              _target13393_
                                              _E13394_
                                              _k13395_)
                                       (let ((_e1339613403_ _e13391_))
                                         (let ((_E1339813407_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _e1339613403_))))
                                           (let ((_K1339913525_
                                                  (lambda (_body13410_
                                                           _tag13411_)
                                                    (let ((_$e13413_
                                                           _tag13411_))
                                                      (if (eq? _$e13413_ 'any)
                                                          (_k13395_
                                                           _vars13392_)
                                                          (if (eq? _$e13413_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'id)
                      (gx#core-list
                       'if
                       (gx#core-list 'identifier? _target13393_)
                       (gx#core-list
                        'if
                        (gx#core-list
                         _identifier=?13127_
                         (gx#core-list _wrap-e13129_ _body13410_)
                         _target13393_)
                        (_k13395_ _vars13392_)
                        _E13394_)
                       _E13394_)
                      (if (eq? _$e13413_ 'var)
                          (_k13395_
                           (cons (cons _body13410_ _target13393_) _vars13392_))
                          (if (eq? _$e13413_ 'cons)
                              (let ((_$e13416_ (gx#genident__1 'e))
                                    (_$hd13417_ (gx#genident__1 'hd))
                                    (_$tl13418_ (gx#genident__1 'tl)))
                                (gx#core-list
                                 'if
                                 (gx#core-list 'stx-pair? _target13393_)
                                 (gx#core-list
                                  'let-values
                                  (cons (cons (cons _$e13416_ '())
                                              (cons (gx#core-list
                                                     _unwrap-e13128_
                                                     _target13393_)
                                                    '()))
                                        '())
                                  (gx#core-list
                                   'let-values
                                   (cons (cons (cons _$hd13417_ '())
                                               (cons (gx#core-list
                                                      '##car
                                                      _$e13416_)
                                                     '()))
                                         (cons (cons (cons _$tl13418_ '())
                                                     (cons (gx#core-list
                                                            '##cdr
                                                            _$e13416_)
                                                           '()))
                                               '()))
                                   (let ((_body1341913426_ _body13410_))
                                     (let ((_E1342113430_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _body1341913426_))))
                                       (let ((_K1342213438_
                                              (lambda (_tl13433_ _hd13434_)
                                                (_recur13306_
                                                 _hd13434_
                                                 _vars13392_
                                                 _$hd13417_
                                                 _E13394_
                                                 (lambda (_vars13436_)
                                                   (_recur13306_
                                                    _tl13433_
                                                    _vars13436_
                                                    _$tl13418_
                                                    _E13394_
                                                    _k13395_))))))
                                         (if (##pair? _body1341913426_)
                                             (let ((_hd1342313441_
                                                    (##car _body1341913426_))
                                                   (_tl1342413443_
                                                    (##cdr _body1341913426_)))
                                               (let ((_hd13446_
                                                      _hd1342313441_))
                                                 (let ((_tl13448_
                                                        _tl1342413443_))
                                                   (_K1342213438_
                                                    _tl13448_
                                                    _hd13446_))))
                                             (_E1342113430_)))))))
                                 _E13394_))
                              (if (eq? _$e13413_ 'splice)
                                  (let ((_body1344913456_ _body13410_))
                                    (let ((_E1345113460_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _body1344913456_))))
                                      (let ((_K1345213509_
                                             (lambda (_tl13463_ _hd13464_)
                                               (let ((_rlen13466_
                                                      (_splice-rlen13307_
                                                       _tl13463_)))
                                                 (let ((_$target13468_
                                                        (gx#genident__1
                                                         'target)))
                                                   (let ((_$hd13470_
                                                          (gx#genident__1
                                                           'hd)))
                                                     (let ((_$tl13472_
                                                            (gx#genident__1
                                                             'tl)))
                                                       (let ((_$lp13474_
                                                              (gx#genident__1
                                                               'loop)))
                                                         (let ((_$lp-e13476_
                                                                (gx#genident__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'e)))
                   (let ((_$lp-hd13478_ (gx#genident__1 'lp-hd)))
                     (let ((_$lp-tl13480_ (gx#genident__1 'lp-tl)))
                       (let ((_svars13482_ (_splice-vars13308_ _hd13464_)))
                         (let ((_lvars13484_ (gx#gentemps _svars13482_)))
                           (let ((_tlvars13486_ (gx#gentemps _svars13482_)))
                             (let ((_linit13490_
                                    (map (lambda (_var13488_)
                                           (gx#core-list 'quote '()))
                                         _lvars13484_)))
                               (let ()
                                 (let ((_make-loop13493_
                                        (lambda (_vars13495_)
                                          (gx#core-list
                                           'letrec-values
                                           (cons (cons (cons _$lp13474_ '())
                                                       (cons (gx#core-list
                                                              'lambda%
                                                              (cons _$hd13470_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _lvars13484_)
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _$hd13470_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$lp-e13476_ '())
                                    (cons (gx#core-list
                                           _unwrap-e13128_
                                           _$hd13470_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$lp-hd13478_ '())
                                     (cons (gx#core-list '##car _$lp-e13476_)
                                           '()))
                               (cons (cons (cons _$lp-tl13480_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$lp-e13476_)
                                                 '()))
                                     '()))
                         (_recur13306_
                          _hd13464_
                          '()
                          _$lp-hd13478_
                          _E13394_
                          (lambda (_hdvars13497_)
                            (cons* _$lp13474_
                                   _$lp-tl13480_
                                   (map (lambda (_svar13499_ _lvar13500_)
                                          (gx#core-list
                                           'cons
                                           (assgetq _svar13499_
                                                    _hdvars13497_
                                                    _BUG13305_)
                                           _lvar13500_))
                                        _svars13482_
                                        _lvars13484_))))))
                       (gx#core-list
                        'let-values
                        (map (lambda (_lvar13502_ _tlvar13503_)
                               (cons (cons _tlvar13503_ '())
                                     (cons (gx#core-list 'reverse _lvar13502_)
                                           '())))
                             _lvars13484_
                             _tlvars13486_)
                        (_k13395_
                         (foldl (lambda (_svar13505_ _tlvar13506_ _r13507_)
                                  (cons (cons _svar13505_ _tlvar13506_)
                                        _r13507_))
                                _vars13495_
                                _svars13482_
                                _tlvars13486_)))))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons* _$lp13474_
                                                  _$target13468_
                                                  _linit13490_)))))
                                   (gx#core-list
                                    'if
                                    (gx#core-list
                                     'stx-pair/null?
                                     _target13393_)
                                    (gx#core-list
                                     'if
                                     (gx#core-list
                                      'fx>=
                                      (gx#core-list 'stx-length _target13393_)
                                      _rlen13466_)
                                     (gx#core-list
                                      'let-values
                                      (cons (cons (cons _$target13468_
                                                        (cons _$tl13472_ '()))
                                                  (cons (gx#core-list
                                                         'syntax-split-splice
                                                         _target13393_
                                                         _rlen13466_)
                                                        '()))
                                            '())
                                      (_recur13306_
                                       _tl13463_
                                       _vars13392_
                                       _$tl13472_
                                       _E13394_
                                       _make-loop13493_))
                                     _E13394_)
                                    _E13394_))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _body1344913456_)
                                            (let ((_hd1345313512_
                                                   (##car _body1344913456_))
                                                  (_tl1345413514_
                                                   (##cdr _body1344913456_)))
                                              (let ((_hd13517_ _hd1345313512_))
                                                (let ((_tl13519_
                                                       _tl1345413514_))
                                                  (_K1345213509_
                                                   _tl13519_
                                                   _hd13517_))))
                                            (_E1345113460_)))))
                                  (if (eq? _$e13413_ 'null)
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-null? _target13393_)
                                       (_k13395_ _vars13392_)
                                       _E13394_)
                                      (if (eq? _$e13413_ 'vector)
                                          (let ((_$e13521_
                                                 (gx#genident__1 'e)))
                                            (gx#core-list
                                             'if
                                             (gx#core-list
                                              'stx-vector?
                                              _target13393_)
                                             (gx#core-list
                                              'let-values
                                              (cons (cons (cons _$e13521_ '())
                                                          (cons (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'vector->list
                         (gx#core-list _unwrap-e13128_ _target13393_))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (_recur13306_
                                               _body13410_
                                               _vars13392_
                                               _$e13521_
                                               _E13394_
                                               _k13395_))
                                             _E13394_))
                                          (if (eq? _$e13413_ 'box)
                                              (let ((_$e13523_
                                                     (gx#genident__1 'e)))
                                                (gx#core-list
                                                 'if
                                                 (gx#core-list
                                                  'stx-box?
                                                  _target13393_)
                                                 (gx#core-list
                                                  'let-values
                                                  (cons (cons (cons _$e13523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (gx#core-list
                             'unbox
                             (gx#core-list _unwrap-e13128_ _target13393_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur13306_
                                                   _body13410_
                                                   _vars13392_
                                                   _$e13523_
                                                   _E13394_
                                                   _k13395_))
                                                 _E13394_))
                                              (if (eq? _$e13413_ 'datum)
                                                  (gx#core-list
                                                   'if
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target13393_)
                                                   (gx#core-list
                                                    'if
                                                    (gx#core-list
                                                     'equal?
                                                     (gx#core-list
                                                      'stx-e
                                                      _target13393_)
                                                     _body13410_)
                                                    (_k13395_ _vars13392_)
                                                    _E13394_)
                                                   _E13394_)
                                                  (_BUG13305_
                                                   _e13391_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _e1339613403_)
                                                 (let ((_hd1340013528_
                                                        (##car _e1339613403_))
                                                       (_tl1340113530_
                                                        (##cdr _e1339613403_)))
                                                   (let ((_tag13533_
                                                          _hd1340013528_))
                                                     (let ((_body13535_
                                                            _tl1340113530_))
                                                       (_K1339913525_
                                                        _body13535_
                                                        _tag13533_))))
                                                 (_E1339813407_))))))))
                             (_recur13306_
                              _hd13300_
                              '()
                              _target13299_
                              _E13303_
                              _make-body13309_)))))))))
            (let ((_parse-clause13135_
                   (lambda (_hd13204_ _ids13205_)
                     ((letrec ((_recur13207_
                                (lambda (_e13209_ _vars13210_ _depth13211_)
                                  (if (gx#identifier? _e13209_)
                                      (if (gx#underscore? _e13209_)
                                          (values '(any) _vars13210_)
                                          (if (gx#ellipsis? _e13209_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Misplaced ellipsis"
                                               _stx13126_
                                               _hd13204_)
                                              (if (find (lambda (_id13213_)
                                                          (gx#bound-identifier=?
                                                           _e13209_
                                                           _id13213_))
                                                        _ids13205_)
                                                  (values (cons 'id _e13209_)
                                                          _vars13210_)
                                                  (if (find (lambda (_var13215_)
                                                              (gx#bound-identifier=?
                                                               _e13209_
                                                               (car _var13215_)))
                                                            _vars13210_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Duplicate pattern variable"
                                                       _stx13126_
                                                       _e13209_)
                                                      (values (cons 'var
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _e13209_)
                      (cons (cons _e13209_ _depth13211_) _vars13210_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _e13209_)
                                          (let ((_e1321613223_ _e13209_))
                                            (let ((_E1321813227_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _e1321613223_))))
                                              (let ((_E1321713288_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e1321613223_)
                                                           (let ((_e1321913231_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e1321613223_)))
                     (let ((_hd1322013234_ (##car _e1321913231_))
                           (_tl1322113236_ (##cdr _e1321913231_)))
                       (let ((_hd13239_ _hd1322013234_))
                         (let ((_rest13241_ _tl1322113236_))
                           (if '#t
                               (let ((_make-pair13256_
                                      (lambda (_tag13243_ _hd13244_ _tl13245_)
                                        (let ((_hd-depth13247_
                                               (if (eq? _tag13243_ 'splice)
                                                   (fx+ _depth13211_ '1)
                                                   _depth13211_)))
                                          (let ((_g14266_
                                                 (_recur13207_
                                                  _hd13244_
                                                  _vars13210_
                                                  _hd-depth13247_)))
                                            (begin
                                              (let ((_g14267_
                                                     (values-count _g14266_)))
                                                (if (not (fx= _g14267_ 2))
                                                    (error "Context expects 2 values"
                                                           _g14267_)))
                                              (let ((_hd13249_
                                                     (values-ref _g14266_ 0))
                                                    (_vars13250_
                                                     (values-ref _g14266_ 1)))
                                                (let ((_g14268_
                                                       (_recur13207_
                                                        _tl13245_
                                                        _vars13250_
                                                        _depth13211_)))
                                                  (begin
                                                    (let ((_g14269_
                                                           (values-count
                                                            _g14268_)))
                                                      (if (not (fx= _g14269_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g14269_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_tl13252_
                                                           (values-ref
                                                            _g14268_
                                                            0))
                                                          (_vars13253_
                                                           (values-ref
                                                            _g14268_
                                                            1)))
                                                      (let ()
                                                        (values (cons* _tag13243_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd13249_
                               _tl13252_)
                        _vars13253_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (let ((_e1325713264_ _rest13241_))
                                   (let ((_E1325913268_
                                          (lambda ()
                                            (_make-pair13256_
                                             'cons
                                             _hd13239_
                                             _rest13241_))))
                                     (let ((_E1325813284_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1325713264_)
                                                  (let ((_e1326013272_
                                                         (gx#syntax-e
                                                          _e1325713264_)))
                                                    (let ((_hd1326113275_
                                                           (##car _e1326013272_))
                                                          (_tl1326213277_
                                                           (##cdr _e1326013272_)))
                                                      (let ((_rest-hd13280_
                                                             _hd1326113275_))
                                                        (let ((_rest-tl13282_
                                                               _tl1326213277_))
                                                          (if '#t
                                                              (if (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest-hd13280_)
                          (_make-pair13256_ 'splice _hd13239_ _rest-tl13282_)
                          (_make-pair13256_ 'cons _hd13239_ _rest13241_))
                      (_E1325913268_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1325913268_)))))
                                       (let () (_E1325813284_))))))
                               (_E1321813227_))))))
                   (_E1321813227_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E1321713288_)))))
                                          (if (gx#stx-null? _e13209_)
                                              (values '(null) _vars13210_)
                                              (if (gx#stx-vector? _e13209_)
                                                  (let ((_g14270_
                                                         (_recur13207_
                                                          (vector->list
                                                           (gx#syntax-e
                                                            _e13209_))
                                                          _vars13210_
                                                          _depth13211_)))
                                                    (begin
                                                      (let ((_g14271_
                                                             (values-count
                                                              _g14270_)))
                                                        (if (not (fx= _g14271_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g14271_)))
              (let ((_e13292_ (values-ref _g14270_ 0))
                    (_vars13293_ (values-ref _g14270_ 1)))
                (values (cons 'vector _e13292_) _vars13293_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e13209_)
                                                      (let ((_g14272_
                                                             (_recur13207_
                                                              (unbox (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e13209_))
                      _vars13210_
                      _depth13211_)))
                (begin
                  (let ((_g14273_ (values-count _g14272_)))
                    (if (not (fx= _g14273_ 2))
                        (error "Context expects 2 values" _g14273_)))
                  (let ((_e13295_ (values-ref _g14272_ 0))
                        (_vars13296_ (values-ref _g14272_ 1)))
                    (values (cons 'box _e13295_) _vars13296_))))
              (if (gx#stx-datum? _e13209_)
                  (values (cons 'datum (gx#stx-e _e13209_)) _vars13210_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad pattern"
                   _stx13126_
                   _e13209_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        _recur13207_)
                      _hd13204_
                      '()
                      '0))))
              (let ((_generate-clause13133_
                     (lambda (_target13539_ _ids13540_ _clause13541_ _E13542_)
                       (let ((_generate113544_
                              (lambda (_hd13631_ _fender13632_ _body13633_)
                                (let ((_g14264_
                                       (_parse-clause13135_
                                        _hd13631_
                                        _ids13540_)))
                                  (begin
                                    (let ((_g14265_ (values-count _g14264_)))
                                      (if (not (fx= _g14265_ 2))
                                          (error "Context expects 2 values"
                                                 _g14265_)))
                                    (let ((_e13635_ (values-ref _g14264_ 0))
                                          (_mvars13636_
                                           (values-ref _g14264_ 1)))
                                      (let ((_pvars13638_
                                             (map gx#syntax-local-rewrap
                                                  (gx#gentemps _mvars13636_))))
                                        (let ((_E13640_
                                               (cons _E13542_
                                                     (cons _target13539_
                                                           '()))))
                                          (let ((_K13673_
                                                 (gx#core-list
                                                  'lambda%
                                                  _pvars13638_
                                                  (gx#core-list
                                                   'let-syntax
                                                   (map (lambda (_mvar13642_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pvar13643_)
                  (let ((_mvar1364413651_ _mvar13642_))
                    (let ((_E1364613655_
                           (lambda ()
                             (error '"No clause matching" _mvar1364413651_))))
                      (let ((_K1364713661_
                             (lambda (_depth13658_ _id13659_)
                               (cons _id13659_
                                     (cons (gx#core-list
                                            'make-syntax-pattern
                                            (gx#core-list 'quote _id13659_)
                                            (gx#core-list 'quote _pvar13643_)
                                            _depth13658_)
                                           '())))))
                        (if (##pair? _mvar1364413651_)
                            (let ((_hd1364813664_ (##car _mvar1364413651_))
                                  (_tl1364913666_ (##cdr _mvar1364413651_)))
                              (let ((_id13669_ _hd1364813664_))
                                (let ((_depth13671_ _tl1364913666_))
                                  (_K1364713661_ _depth13671_ _id13669_))))
                            (_E1364613655_))))))
                _mvars13636_
                _pvars13638_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (eq? _fender13632_ '#t)
                                                       _body13633_
                                                       (gx#core-list
                                                        'if
                                                        _fender13632_
                                                        _body13633_
                                                        _E13640_))))))
                                            (let ()
                                              (_generate-match13134_
                                               _hd13631_
                                               _target13539_
                                               _e13635_
                                               _mvars13636_
                                               _K13673_
                                               _E13640_)))))))))))
                         (let ((_e1354513565_ _clause13541_))
                           (let ((_E1355413569_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _e1354513565_))))
                             (let ((_E1354713603_
                                    (lambda ()
                                      (if (gx#stx-pair? _e1354513565_)
                                          (let ((_e1355513573_
                                                 (gx#syntax-e _e1354513565_)))
                                            (let ((_hd1355613576_
                                                   (##car _e1355513573_))
                                                  (_tl1355713578_
                                                   (##cdr _e1355513573_)))
                                              (let ((_hd13581_ _hd1355613576_))
                                                (if (gx#stx-pair?
                                                     _tl1355713578_)
                                                    (let ((_e1355813583_
                                                           (gx#syntax-e
                                                            _tl1355713578_)))
                                                      (let ((_hd1355913586_
                                                             (##car _e1355813583_))
                                                            (_tl1356013588_
                                                             (##cdr _e1355813583_)))
                                                        (let ((_fender13591_
                                                               _hd1355913586_))
                                                          (if (gx#stx-pair?
                                                               _tl1356013588_)
                                                              (let ((_e1356113593_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1356013588_)))
                        (let ((_hd1356213596_ (##car _e1356113593_))
                              (_tl1356313598_ (##cdr _e1356113593_)))
                          (let ((_body13601_ _hd1356213596_))
                            (if (gx#stx-null? _tl1356313598_)
                                (if '#t
                                    (_generate113544_
                                     _hd13581_
                                     _fender13591_
                                     _body13601_)
                                    (_E1355413569_))
                                (_E1355413569_)))))
                      (_E1355413569_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1355413569_)))))
                                          (_E1355413569_)))))
                               (let ((_E1354613627_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1354513565_)
                                            (let ((_e1354813607_
                                                   (gx#syntax-e
                                                    _e1354513565_)))
                                              (let ((_hd1354913610_
                                                     (##car _e1354813607_))
                                                    (_tl1355013612_
                                                     (##cdr _e1354813607_)))
                                                (let ((_hd13615_
                                                       _hd1354913610_))
                                                  (if (gx#stx-pair?
                                                       _tl1355013612_)
                                                      (let ((_e1355113617_
                                                             (gx#syntax-e
                                                              _tl1355013612_)))
                                                        (let ((_hd1355213620_
                                                               (##car _e1355113617_))
                                                              (_tl1355313622_
                                                               (##cdr _e1355113617_)))
                                                          (let ((_body13625_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1355213620_))
                    (if (gx#stx-null? _tl1355313622_)
                        (if '#t
                            (_generate113544_ _hd13615_ '#t _body13625_)
                            (_E1354713603_))
                        (_E1354713603_)))))
              (_E1354713603_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1354713603_)))))
                                 (let () (_E1354613627_))))))))))
                (let ((_generate-bindings13131_
                       (lambda (_target13716_
                                _ids13717_
                                _clauses13718_
                                _clause-ids13719_
                                _E13720_)
                         (let ((_generate113722_
                                (lambda (_clause13821_
                                         _clause-id13822_
                                         _E13823_)
                                  (cons (cons _clause-id13822_ '())
                                        (cons (gx#core-list
                                               'lambda%
                                               (cons _target13716_ '())
                                               (_generate-clause13133_
                                                _target13716_
                                                _ids13717_
                                                _clause13821_
                                                _E13823_))
                                              '())))))
                           ((letrec ((_lp13724_
                                      (lambda (_rest13726_
                                               _rest-ids13727_
                                               _bindings13728_)
                                        (let ((_rest1372913737_ _rest13726_))
                                          (let ((_E1373213741_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _rest1372913737_))))
                                            (let ((_else1373113745_
                                                   (lambda ()
                                                     _bindings13728_)))
                                              (let ((_K1373313809_
                                                     (lambda (_rest13748_
                                                              _clause13749_)
                                                       (let ((_rest-ids1375013757_
                                                              _rest-ids13727_))
                                                         (let ((_E1375213761_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (error '"No clause matching" _rest-ids1375013757_))))
                   (let ((_K1375313797_
                          (lambda (_rest-ids13764_ _clause-id13765_)
                            (let ((_rest-ids1376613774_ _rest-ids13764_))
                              (let ((_E1376913778_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _rest-ids1376613774_))))
                                (let ((_else1376813782_
                                       (lambda ()
                                         (cons (_generate113722_
                                                _clause13749_
                                                _clause-id13765_
                                                _E13720_)
                                               _bindings13728_))))
                                  (let ((_K1377013787_
                                         (lambda (_next-clause-id13785_)
                                           (_lp13724_
                                            _rest13748_
                                            _rest-ids13764_
                                            (cons (_generate113722_
                                                   _clause13749_
                                                   _clause-id13765_
                                                   _next-clause-id13785_)
                                                  _bindings13728_)))))
                                    (if (##pair? _rest-ids1376613774_)
                                        (let ((_hd1377113790_
                                               (##car _rest-ids1376613774_))
                                              (_tl1377213792_
                                               (##cdr _rest-ids1376613774_)))
                                          (let ((_next-clause-id13795_
                                                 _hd1377113790_))
                                            (_K1377013787_
                                             _next-clause-id13795_)))
                                        (_else1376813782_)))))))))
                     (if (##pair? _rest-ids1375013757_)
                         (let ((_hd1375413800_ (##car _rest-ids1375013757_))
                               (_tl1375513802_ (##cdr _rest-ids1375013757_)))
                           (let ((_clause-id13805_ _hd1375413800_))
                             (let ((_rest-ids13807_ _tl1375513802_))
                               (_K1375313797_
                                _rest-ids13807_
                                _clause-id13805_))))
                         (_E1375213761_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (##pair? _rest1372913737_)
                                                    (let ((_hd1373413812_
                                                           (##car _rest1372913737_))
                                                          (_tl1373513814_
                                                           (##cdr _rest1372913737_)))
                                                      (let ((_clause13817_
                                                             _hd1373413812_))
                                                        (let ((_rest13819_
                                                               _tl1373513814_))
                                                          (_K1373313809_
                                                           _rest13819_
                                                           _clause13817_))))
                                                    (_else1373113745_)))))))))
                              _lp13724_)
                            _clauses13718_
                            _clause-ids13719_
                            '())))))
                  (let ((_e1313613149_ _stx13126_))
                    (let ((_E1313813153_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e1313613149_))))
                      (let ((_E1313713200_
                             (lambda ()
                               (if (gx#stx-pair? _e1313613149_)
                                   (let ((_e1313913157_
                                          (gx#syntax-e _e1313613149_)))
                                     (let ((_hd1314013160_
                                            (##car _e1313913157_))
                                           (_tl1314113162_
                                            (##cdr _e1313913157_)))
                                       (if (gx#stx-pair? _tl1314113162_)
                                           (let ((_e1314213165_
                                                  (gx#syntax-e
                                                   _tl1314113162_)))
                                             (let ((_hd1314313168_
                                                    (##car _e1314213165_))
                                                   (_tl1314413170_
                                                    (##cdr _e1314213165_)))
                                               (let ((_expr13173_
                                                      _hd1314313168_))
                                                 (if (gx#stx-pair?
                                                      _tl1314413170_)
                                                     (let ((_e1314513175_
                                                            (gx#syntax-e
                                                             _tl1314413170_)))
                                                       (let ((_hd1314613178_
                                                              (##car _e1314513175_))
                                                             (_tl1314713180_
                                                              (##cdr _e1314513175_)))
                                                         (let ((_ids13183_
                                                                _hd1314613178_))
                                                           (let ((_clauses13185_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1314713180_))
                     (if '#t
                         (if (not (gx#identifier-list? _ids13183_))
                             (gx#raise-syntax-error
                              '#f
                              '"Bad template identifier list"
                              _stx13126_
                              _ids13183_)
                             (if (not (gx#stx-list? _clauses13185_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _stx13126_)
                                 (let ((_ids13187_
                                        (gx#syntax->list _ids13183_)))
                                   (let ((_clauses13189_
                                          (gx#syntax->list _clauses13185_)))
                                     (let ((_clause-ids13191_
                                            (gx#gentemps _clauses13189_)))
                                       (let ((_E13193_ (gx#genident__0)))
                                         (let ((_target13195_
                                                (gx#genident__0)))
                                           (let ((_first13197_
                                                  (if (null? _clauses13189_)
                                                      _E13193_
                                                      (car _clause-ids13191_))))
                                             (let ()
                                               (gx#stx-wrap-source
                                                (gx#core-list
                                                 'let-values
                                                 (cons (cons (cons _E13193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _target13195_ '())
                            (gx#core-list
                             'raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _target13195_))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_generate-body13132_
                                                  (_generate-bindings13131_
                                                   _target13195_
                                                   _ids13187_
                                                   _clauses13189_
                                                   _clause-ids13191_
                                                   _E13193_)
                                                  (cons _first13197_
                                                        (cons _expr13173_
                                                              '()))))
                                                (gx#stx-source
                                                 _stx13126_)))))))))))
                         (_E1313813153_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1313813153_)))))
                                           (_E1313813153_))))
                                   (_E1313813153_)))))
                        (let () (_E1313713200_))))))))))))
    (begin
      (define gx#macro-expand-syntax-case__0
        (lambda (_stx13828_)
          (let ((_identifier=?13830_ 'free-identifier=?))
            (let ((_unwrap-e13832_ 'syntax-e))
              (let ((_wrap-e13834_ 'quote-syntax))
                (gx#macro-expand-syntax-case__opt-lambda13124
                 _stx13828_
                 _identifier=?13830_
                 _unwrap-e13832_
                 _wrap-e13834_))))))
      (define gx#macro-expand-syntax-case__1
        (lambda (_stx13836_ _identifier=?13837_)
          (let ((_unwrap-e13839_ 'syntax-e))
            (let ((_wrap-e13841_ 'quote-syntax))
              (gx#macro-expand-syntax-case__opt-lambda13124
               _stx13836_
               _identifier=?13837_
               _unwrap-e13839_
               _wrap-e13841_)))))
      (define gx#macro-expand-syntax-case__2
        (lambda (_stx13843_ _identifier=?13844_ _unwrap-e13845_)
          (let ((_wrap-e13847_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda13124
             _stx13843_
             _identifier=?13844_
             _unwrap-e13845_
             _wrap-e13847_))))
      (define gx#macro-expand-syntax-case
        (lambda _g14275_
          (let ((_g14274_ (length _g14275_)))
            (cond ((fx= _g14274_ 1)
                   (apply gx#macro-expand-syntax-case__0 _g14275_))
                  ((fx= _g14274_ 2)
                   (apply gx#macro-expand-syntax-case__1 _g14275_))
                  ((fx= _g14274_ 3)
                   (apply gx#macro-expand-syntax-case__2 _g14275_))
                  ((fx= _g14274_ 4)
                   (apply gx#macro-expand-syntax-case__opt-lambda13124
                          _g14275_))
                  (else (error "No clause matching arguments" _g14275_))))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx13123_)
      (if (gx#identifier? _stx13123_)
          (##structure-instance-of?
           (gx#syntax-local-e__opt-lambda4061 _stx13123_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd13081_ . _rest13082_)
      (let ((_len13084_ (length _hd13081_)))
        ((letrec ((_lp13086_
                   (lambda (_rest13088_)
                     (let ((_rest1308913097_ _rest13088_))
                       (let ((_E1309213101_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1308913097_))))
                         (let ((_else1309113105_ (lambda () '#!void)))
                           (let ((_K1309313111_
                                  (lambda (_rest13108_ _hd13109_)
                                    (if (fx= _len13084_ (length _hd13109_))
                                        (_lp13086_ _rest13108_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Splice length mismatch"
                                         _hd13109_)))))
                             (if (##pair? _rest1308913097_)
                                 (let ((_hd1309413114_
                                        (##car _rest1308913097_))
                                       (_tl1309513116_
                                        (##cdr _rest1308913097_)))
                                   (let ((_hd13119_ _hd1309413114_))
                                     (let ((_rest13121_ _tl1309513116_))
                                       (_K1309313111_ _rest13121_ _hd13119_))))
                                 (_else1309113105_)))))))))
           _lp13086_)
         _rest13082_))))
  (define gx#syntax-split-splice
    (lambda (_stx13039_ _n13040_)
      ((letrec ((_lp13042_
                 (lambda (_rest13044_ _r13045_)
                   (if (gx#stx-pair? _rest13044_)
                       (let ((_g1304613053_ (gx#syntax-e _rest13044_)))
                         (let ((_E1304813057_
                                (lambda ()
                                  (error '"No clause matching"
                                         _g1304613053_))))
                           (let ((_K1304913063_
                                  (lambda (_rest13060_ _hd13061_)
                                    (_lp13042_
                                     _rest13060_
                                     (cons _hd13061_ _r13045_)))))
                             (if (##pair? _g1304613053_)
                                 (let ((_hd1305013066_ (##car _g1304613053_))
                                       (_tl1305113068_ (##cdr _g1304613053_)))
                                   (let ((_hd13071_ _hd1305013066_))
                                     (let ((_rest13073_ _tl1305113068_))
                                       (_K1304913063_ _rest13073_ _hd13071_))))
                                 (_E1304813057_)))))
                       ((letrec ((_lp13075_
                                  (lambda (_n13077_ _l13078_ _r13079_)
                                    (if (null? _l13078_)
                                        (values _l13078_ _r13079_)
                                        (if (fxpositive? _n13077_)
                                            (_lp13075_
                                             (fx- _n13077_ '1)
                                             (cdr _l13078_)
                                             (cons (car _l13078_) _r13079_))
                                            (values (reverse _l13078_)
                                                    _r13079_))))))
                          _lp13075_)
                        _n13040_
                        _r13045_
                        _rest13044_)))))
         _lp13042_)
       _stx13039_
       '()))))
