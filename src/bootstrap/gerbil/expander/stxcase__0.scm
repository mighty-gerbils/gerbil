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
    (lambda _$args14102_
      (apply make-struct-instance gx#syntax-pattern::t _$args14102_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self14099_ _stx14100_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx14100_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx13708_)
      (let ((_generate13710_
             (lambda (_e13937_)
               (let ((_BUG13939_
                      (lambda (_q14097_)
                        (error '"BUG: syntax; generate"
                               _stx13708_
                               _e13937_
                               _q14097_))))
                 (let ((_local-pattern-e13940_
                        (lambda (_pat14095_)
                          (gx#syntax-local-rewrap
                           (##structure-ref
                            _pat14095_
                            '2
                            gx#syntax-pattern::t
                            '#f)))))
                   (let ((_getvar13941_
                          (lambda (_q14092_ _vars14093_)
                            (assgetq _q14092_ _vars14093_ _BUG13939_))))
                     (let ((_getarg13942_
                            (lambda (_arg14058_ _vars14059_)
                              (let ((_arg1406014067_ _arg14058_))
                                (let ((_E1406214071_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _arg1406014067_))))
                                  (let ((_K1406314080_
                                         (lambda (_e14074_ _tag14075_)
                                           (let ((_$e14077_ _tag14075_))
                                             (if (eq? _$e14077_ 'ref)
                                                 (_getvar13941_
                                                  _e14074_
                                                  _vars14059_)
                                                 (if (eq? _$e14077_ 'pattern)
                                                     (_local-pattern-e13940_
                                                      _e14074_)
                                                     (_BUG13939_
                                                      _arg14058_)))))))
                                    (if (##pair? _arg1406014067_)
                                        (let ((_hd1406414083_
                                               (##car _arg1406014067_))
                                              (_tl1406514085_
                                               (##cdr _arg1406014067_)))
                                          (let ((_tag14088_ _hd1406414083_))
                                            (let ((_e14090_ _tl1406514085_))
                                              (_K1406314080_
                                               _e14090_
                                               _tag14088_))))
                                        (_E1406214071_))))))))
                       ((letrec ((_recur13944_
                                  (lambda (_e13946_ _vars13947_)
                                    (let ((_e1394813955_ _e13946_))
                                      (let ((_E1395013959_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _e1394813955_))))
                                        (let ((_K1395114046_
                                               (lambda (_body13962_ _tag13963_)
                                                 (let ((_$e13965_ _tag13963_))
                                                   (if (eq? _$e13965_ 'datum)
                                                       (gx#core-list
                                                        'quote
                                                        _body13962_)
                                                       (if (eq? _$e13965_
                                                                'term)
                                                           (gx#core-list
                                                            'datum->syntax
                                                            '#f
                                                            (gx#core-list
                                                             'quote
                                                             _body13962_))
                                                           (if (eq? _$e13965_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'pattern)
                       (_local-pattern-e13940_ _body13962_)
                       (if (eq? _$e13965_ 'ref)
                           (_getvar13941_ _body13962_ _vars13947_)
                           (if (eq? _$e13965_ 'cons)
                               (gx#core-list
                                'cons
                                (_recur13944_ (car _body13962_) _vars13947_)
                                (_recur13944_ (cdr _body13962_) _vars13947_))
                               (if (eq? _$e13965_ 'vector)
                                   (gx#core-list
                                    'list->vector
                                    (_recur13944_ _body13962_ _vars13947_))
                                   (if (eq? _$e13965_ 'box)
                                       (gx#core-list
                                        'box
                                        (_recur13944_ _body13962_ _vars13947_))
                                       (if (eq? _$e13965_ 'splice)
                                           (let ((_body1396713978_
                                                  _body13962_))
                                             (let ((_E1396913982_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _body1396713978_))))
                                               (let ((_K1397014020_
                                                      (lambda (_args13985_
                                                               _iv13986_
                                                               _hd13987_
                                                               _depth13988_)
                                                        (let ((_targets13994_
                                                               (map (lambda (_g1398913991_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_getarg13942_ _g1398913991_ _vars13947_))
                            _args13985_)))
                  (let ((_fold-in13996_ (gx#gentemps _args13985_)))
                    (let ((_fold-out13998_ (gx#genident__0)))
                      (let ((_lambda-args14000_
                             (foldr1 cons
                                     (cons _fold-out13998_ '())
                                     _fold-in13996_)))
                        (let ((_lambda-body14017_
                               (if (fx> _depth13988_ '1)
                                   (let ((_r-args14008_
                                          (map (lambda (_arg14002_)
                                                 (cons 'ref (cdr _arg14002_)))
                                               _args13985_))
                                         (_r-vars14009_
                                          (foldr (lambda (_arg14004_
                                                          _var14005_
                                                          _r14006_)
                                                   (cons (cons (cdr _arg14004_)
                                                               _var14005_)
                                                         _r14006_))
                                                 _vars13947_
                                                 _args13985_
                                                 _fold-in13996_)))
                                     (_recur13944_
                                      (cons* 'splice
                                             (fx- _depth13988_ '1)
                                             _hd13987_
                                             (cons 'var _fold-out13998_)
                                             _r-args14008_)
                                      _r-vars14009_))
                                   (let ((_hd-vars14015_
                                          (foldr (lambda (_arg14011_
                                                          _var14012_
                                                          _r14013_)
                                                   (cons (cons (cdr _arg14011_)
                                                               _var14012_)
                                                         _r14013_))
                                                 _vars13947_
                                                 _args13985_
                                                 _fold-in13996_)))
                                     (gx#core-list
                                      'cons
                                      (_recur13944_ _hd13987_ _hd-vars14015_)
                                      _fold-out13998_)))))
                          (let ()
                            (gx#core-list
                             'begin
                             (if (fx> (length _targets13994_) '1)
                                 (gx#core-cons*
                                  'syntax-check-splice-targets
                                  _targets13994_)
                                 '#!void)
                             (gx#core-cons*
                              'foldr
                              (gx#core-list
                               'lambda%
                               _lambda-args14000_
                               _lambda-body14017_)
                              (_recur13944_ _iv13986_ _vars13947_)
                              _targets13994_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _body1396713978_)
                                                     (let ((_hd1397114023_
                                                            (##car _body1396713978_))
                                                           (_tl1397214025_
                                                            (##cdr _body1396713978_)))
                                                       (let ((_depth14028_
                                                              _hd1397114023_))
                                                         (if (##pair? _tl1397214025_)
                                                             (let ((_hd1397314030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##car _tl1397214025_))
                           (_tl1397414032_ (##cdr _tl1397214025_)))
                       (let ((_hd14035_ _hd1397314030_))
                         (if (##pair? _tl1397414032_)
                             (let ((_hd1397514037_ (##car _tl1397414032_))
                                   (_tl1397614039_ (##cdr _tl1397414032_)))
                               (let ((_iv14042_ _hd1397514037_))
                                 (let ((_args14044_ _tl1397614039_))
                                   (_K1397014020_
                                    _args14044_
                                    _iv14042_
                                    _hd14035_
                                    _depth14028_))))
                             (_E1396913982_))))
                     (_E1396913982_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1396913982_)))))
                                           (if (eq? _$e13965_ 'var)
                                               _body13962_
                                               (_BUG13939_
                                                _e13946_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _e1394813955_)
                                              (let ((_hd1395214049_
                                                     (##car _e1394813955_))
                                                    (_tl1395314051_
                                                     (##cdr _e1394813955_)))
                                                (let ((_tag14054_
                                                       _hd1395214049_))
                                                  (let ((_body14056_
                                                         _tl1395314051_))
                                                    (_K1395114046_
                                                     _body14056_
                                                     _tag14054_))))
                                              (_E1395013959_))))))))
                          _recur13944_)
                        _e13937_
                        '()))))))))
        (let ((_parse13711_
               (lambda (_e13752_)
                 (let ((_make-cons13754_
                        (lambda (_hd13929_ _tl13930_)
                          (let ((_g14114_ _hd13929_) (_g14116_ _tl13930_))
                            (begin
                              (let ((_g14115_ (values-count _g14114_)))
                                (if (not (fx= _g14115_ 2))
                                    (error "Context expects 2 values"
                                           _g14115_)))
                              (let ((_g14117_ (values-count _g14116_)))
                                (if (not (fx= _g14117_ 2))
                                    (error "Context expects 2 values"
                                           _g14117_)))
                              (let ((_hd-e13932_ (values-ref _g14114_ 0))
                                    (_hd-vars13933_ (values-ref _g14114_ 1)))
                                (let ((_tl-e13934_ (values-ref _g14116_ 0))
                                      (_tl-vars13935_ (values-ref _g14116_ 1)))
                                  (values (cons* 'cons _hd-e13932_ _tl-e13934_)
                                          (append _hd-vars13933_
                                                  _tl-vars13935_)))))))))
                   (let ((_make-splice13755_
                          (lambda (_where13868_
                                   _depth13869_
                                   _hd13870_
                                   _tl13871_)
                            (let ((_g14110_ _hd13870_) (_g14112_ _tl13871_))
                              (begin
                                (let ((_g14111_ (values-count _g14110_)))
                                  (if (not (fx= _g14111_ 2))
                                      (error "Context expects 2 values"
                                             _g14111_)))
                                (let ((_g14113_ (values-count _g14112_)))
                                  (if (not (fx= _g14113_ 2))
                                      (error "Context expects 2 values"
                                             _g14113_)))
                                (let ((_hd-e13873_ (values-ref _g14110_ 0))
                                      (_hd-vars13874_ (values-ref _g14110_ 1)))
                                  (let ((_tl-e13875_ (values-ref _g14112_ 0))
                                        (_tl-vars13876_
                                         (values-ref _g14112_ 1)))
                                    ((letrec ((_lp13878_
                                               (lambda (_rest13880_
                                                        _targets13881_
                                                        _vars13882_)
                                                 (let ((_rest1388313893_
                                                        _rest13880_))
                                                   (let ((_E1388613897_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest1388313893_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_else1388513901_
                                                            (lambda ()
                                                              (if (null? _targets13881_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Misplaced ellipsis"
                           _stx13708_
                           _where13868_)
                          (values (cons* 'splice
                                         _depth13869_
                                         _hd-e13873_
                                         _tl-e13875_
                                         _targets13881_)
                                  _vars13882_)))))
               (let ((_K1388713910_
                      (lambda (_rest13904_ _hd-pat13905_ _hd-depth*13906_)
                        (let ((_hd-depth13908_
                               (fx- _hd-depth*13906_ _depth13869_)))
                          (if (fxpositive? _hd-depth13908_)
                              (_lp13878_
                               _rest13904_
                               (cons (cons 'ref _hd-pat13905_) _targets13881_)
                               (cons (cons _hd-depth13908_ _hd-pat13905_)
                                     _vars13882_))
                              (if (fxzero? _hd-depth13908_)
                                  (_lp13878_
                                   _rest13904_
                                   (cons (cons 'pattern _hd-pat13905_)
                                         _targets13881_)
                                   _vars13882_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Too many ellipses"
                                   _stx13708_
                                   _where13868_)))))))
                 (if (##pair? _rest1388313893_)
                     (let ((_hd1388813913_ (##car _rest1388313893_))
                           (_tl1388913915_ (##cdr _rest1388313893_)))
                       (if (##pair? _hd1388813913_)
                           (let ((_hd1389013918_ (##car _hd1388813913_))
                                 (_tl1389113920_ (##cdr _hd1388813913_)))
                             (let ((_hd-depth*13923_ _hd1389013918_))
                               (let ((_hd-pat13925_ _tl1389113920_))
                                 (let ((_rest13927_ _tl1388913915_))
                                   (_K1388713910_
                                    _rest13927_
                                    _hd-pat13925_
                                    _hd-depth*13923_)))))
                           (_else1388513901_)))
                     (_else1388513901_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _lp13878_)
                                     _hd-vars13874_
                                     '()
                                     _tl-vars13876_))))))))
                     (letrec ((_recur13756_
                               (lambda (_e13761_ _is-e?13762_)
                                 (if (_is-e?13762_ _e13761_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Mislpaced ellipsis"
                                      _stx13708_)
                                     (if (gx#syntax-local-pattern? _e13761_)
                                         (let ((_pat13764_
                                                (gx#syntax-local-e__0
                                                 _e13761_)))
                                           (let ((_depth13766_
                                                  (##structure-ref
                                                   _pat13764_
                                                   '3
                                                   gx#syntax-pattern::t
                                                   '#f)))
                                             (let ()
                                               (if (fxpositive? _depth13766_)
                                                   (values (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat13764_)
                   (cons (cons _depth13766_ _pat13764_) '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (values (cons 'pattern
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat13764_)
                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (if (gx#identifier? _e13761_)
                                             (values (cons 'term _e13761_) '())
                                             (if (gx#stx-pair? _e13761_)
                                                 (let ((_e1376813775_
                                                        _e13761_))
                                                   (let ((_E1377013779_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _e1376813775_))))
                                                     (let ((_E1376913858_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e1376813775_)
                          (let ((_e1377113783_ (gx#syntax-e _e1376813775_)))
                            (let ((_hd1377213786_ (##car _e1377113783_))
                                  (_tl1377313788_ (##cdr _e1377113783_)))
                              (let ((_hd13791_ _hd1377213786_))
                                (let ((_rest13793_ _tl1377313788_))
                                  (if '#t
                                      (if (_is-e?13762_ _hd13791_)
                                          (let ((_e1379413801_ _rest13793_))
                                            (let ((_E1379613805_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad ellipsis syntax"
                                                      _stx13708_
                                                      _e13761_))))
                                              (let ((_E1379513819_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e1379413801_)
                                                           (let ((_e1379713809_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e1379413801_)))
                     (let ((_hd1379813812_ (##car _e1379713809_))
                           (_tl1379913814_ (##cdr _e1379713809_)))
                       (let ((_rest13817_ _hd1379813812_))
                         (if (gx#stx-null? _tl1379913814_)
                             (if '#t
                                 (_recur13756_ _rest13817_ false)
                                 (_E1379613805_))
                             (_E1379613805_)))))
                   (_E1379613805_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E1379513819_)))))
                                          ((letrec ((_lp13823_
                                                     (lambda (_rest13825_
                                                              _depth13826_)
                                                       (let ((_e1382713834_
                                                              _rest13825_))
                                                         (let ((_E1382913838_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (fxpositive? _depth13826_)
                              (_make-splice13755_
                               _e13761_
                               _depth13826_
                               (_recur13756_ _hd13791_ _is-e?13762_)
                               (_recur13756_ _rest13825_ _is-e?13762_))
                              (_make-cons13754_
                               (_recur13756_ _hd13791_ _is-e?13762_)
                               (_recur13756_ _rest13825_ _is-e?13762_))))))
                   (let ((_E1382813854_
                          (lambda ()
                            (if (gx#stx-pair? _e1382713834_)
                                (let ((_e1383013842_
                                       (gx#syntax-e _e1382713834_)))
                                  (let ((_hd1383113845_ (##car _e1383013842_))
                                        (_tl1383213847_ (##cdr _e1383013842_)))
                                    (let ((_rest-hd13850_ _hd1383113845_))
                                      (let ((_rest-tl13852_ _tl1383213847_))
                                        (if '#t
                                            (if (_is-e?13762_ _rest-hd13850_)
                                                (_lp13823_
                                                 _rest-tl13852_
                                                 (fx+ _depth13826_ '1))
                                                (if (fxpositive? _depth13826_)
                                                    (_make-splice13755_
                                                     _e13761_
                                                     _depth13826_
                                                     (_recur13756_
                                                      _hd13791_
                                                      _is-e?13762_)
                                                     (_recur13756_
                                                      _rest13825_
                                                      _is-e?13762_))
                                                    (_make-cons13754_
                                                     (_recur13756_
                                                      _hd13791_
                                                      _is-e?13762_)
                                                     (_recur13756_
                                                      _rest13825_
                                                      _is-e?13762_))))
                                            (_E1382913838_))))))
                                (_E1382913838_)))))
                     (let () (_E1382813854_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _lp13823_)
                                           _rest13793_
                                           '0))
                                      (_E1377013779_))))))
                          (_E1377013779_)))))
               (let () (_E1376913858_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-vector? _e13761_)
                                                     (let ((_g14104_
                                                            (_recur13756_
                                                             (vector->list
                                                              (gx#stx-unwrap__0
                                                               _e13761_))
                                                             _is-e?13762_)))
                                                       (begin
                                                         (let ((_g14105_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g14104_)))
                   (if (not (fx= _g14105_ 2))
                       (error "Context expects 2 values" _g14105_)))
                 (let ((_e13862_ (values-ref _g14104_ 0))
                       (_vars13863_ (values-ref _g14104_ 1)))
                   (values (cons 'vector _e13862_) _vars13863_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-box? _e13761_)
                                                         (let ((_g14106_
                                                                (_recur13756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (unbox (gx#stx-unwrap__0 _e13761_))
                         _is-e?13762_)))
                   (begin
                     (let ((_g14107_ (values-count _g14106_)))
                       (if (not (fx= _g14107_ 2))
                           (error "Context expects 2 values" _g14107_)))
                     (let ((_e13865_ (values-ref _g14106_ 0))
                           (_vars13866_ (values-ref _g14106_ 1)))
                       (values (cons 'box _e13865_) _vars13866_))))
                 (values (cons 'datum _e13761_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       (let ((_g14108_ (_recur13756_ _e13752_ gx#ellipsis?)))
                         (begin
                           (let ((_g14109_ (values-count _g14108_)))
                             (if (not (fx= _g14109_ 2))
                                 (error "Context expects 2 values" _g14109_)))
                           (let ((_tree13758_ (values-ref _g14108_ 0))
                                 (_vars13759_ (values-ref _g14108_ 1)))
                             (if (null? _vars13759_)
                                 _tree13758_
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Missing ellipsis"
                                  _stx13708_
                                  _vars13759_)))))))))))
          (let ((_e1371213722_ _stx13708_))
            (let ((_E1371413726_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _stx13708_))))
              (let ((_E1371313748_
                     (lambda ()
                       (if (gx#stx-pair? _e1371213722_)
                           (let ((_e1371513730_ (gx#syntax-e _e1371213722_)))
                             (let ((_hd1371613733_ (##car _e1371513730_))
                                   (_tl1371713735_ (##cdr _e1371513730_)))
                               (if (gx#stx-pair? _tl1371713735_)
                                   (let ((_e1371813738_
                                          (gx#syntax-e _tl1371713735_)))
                                     (let ((_hd1371913741_
                                            (##car _e1371813738_))
                                           (_tl1372013743_
                                            (##cdr _e1371813738_)))
                                       (let ((_form13746_ _hd1371913741_))
                                         (if (gx#stx-null? _tl1372013743_)
                                             (if '#t
                                                 (gx#stx-wrap-source
                                                  (_generate13710_
                                                   (_parse13711_ _form13746_))
                                                  (gx#stx-source _stx13708_))
                                                 (_E1371413726_))
                                             (_E1371413726_)))))
                                   (_E1371413726_))))
                           (_E1371413726_)))))
                (let () (_E1371313748_)))))))))
  (begin
    (define gx#macro-expand-syntax-case__opt-lambda12978
      (lambda (_stx12980_ _identifier=?12981_ _unwrap-e12982_ _wrap-e12983_)
        (let ((_generate-body12986_
               (lambda (_bindings13530_ _body13531_)
                 ((letrec ((_recur13533_
                            (lambda (_rest13535_)
                              (let ((_rest1353613544_ _rest13535_))
                                (let ((_E1353913548_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest1353613544_))))
                                  (let ((_else1353813552_
                                         (lambda () _body13531_)))
                                    (let ((_K1354013558_
                                           (lambda (_rest13555_ _hd13556_)
                                             (gx#core-list
                                              'let-values
                                              (cons _hd13556_ '())
                                              (_recur13533_ _rest13555_)))))
                                      (if (##pair? _rest1353613544_)
                                          (let ((_hd1354113561_
                                                 (##car _rest1353613544_))
                                                (_tl1354213563_
                                                 (##cdr _rest1353613544_)))
                                            (let ((_hd13566_ _hd1354113561_))
                                              (let ((_rest13568_
                                                     _tl1354213563_))
                                                (_K1354013558_
                                                 _rest13568_
                                                 _hd13566_))))
                                          (_else1353813552_)))))))))
                    _recur13533_)
                  _bindings13530_))))
          (let ((_generate-match12988_
                 (lambda (_where13152_
                          _target13153_
                          _hd13154_
                          _mvars13155_
                          _K13156_
                          _E13157_)
                   (let ((_BUG13159_
                          (lambda (_q13391_)
                            (error '"BUG: syntax-case; generate"
                                   _stx12980_
                                   _hd13154_
                                   _q13391_))))
                     (let ((_splice-rlen13161_
                            (lambda (_e13207_)
                              ((letrec ((_lp13209_
                                         (lambda (_e13211_ _n13212_)
                                           (let ((_e1321313220_ _e13211_))
                                             (let ((_E1321513224_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _e1321313220_))))
                                               (let ((_K1321613233_
                                                      (lambda (_body13227_
                                                               _tag13228_)
                                                        (let ((_$e13230_
                                                               _tag13228_))
                                                          (if (eq? _$e13230_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'splice)
                      (gx#raise-syntax-error
                       '#f
                       '"Ambiguous pattern"
                       _stx12980_
                       _where13152_)
                      (if (eq? _$e13230_ 'cons)
                          (_lp13209_ (cdr _body13227_) (fx+ _n13212_ '1))
                          _n13212_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _e1321313220_)
                                                     (let ((_hd1321713236_
                                                            (##car _e1321313220_))
                                                           (_tl1321813238_
                                                            (##cdr _e1321313220_)))
                                                       (let ((_tag13241_
                                                              _hd1321713236_))
                                                         (let ((_body13243_
                                                                _tl1321813238_))
                                                           (_K1321613233_
                                                            _body13243_
                                                            _tag13241_))))
                                                     (_E1321513224_))))))))
                                 _lp13209_)
                               _e13207_
                               '0))))
                       (let ((_splice-vars13162_
                              (lambda (_e13169_)
                                ((letrec ((_recur13171_
                                           (lambda (_e13173_ _vars13174_)
                                             (let ((_e1317513182_ _e13173_))
                                               (let ((_E1317713186_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _e1317513182_))))
                                                 (let ((_K1317813195_
                                                        (lambda (_body13189_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tag13190_)
                  (let ((_$e13192_ _tag13190_))
                    (if (eq? _$e13192_ 'var)
                        (cons _body13189_ _vars13174_)
                        (if (memq _$e13192_ '(cons splice))
                            (_recur13171_
                             (cdr _body13189_)
                             (_recur13171_ (car _body13189_) _vars13174_))
                            (if (memq _$e13192_ '(vector box))
                                (_recur13171_ _body13189_ _vars13174_)
                                _vars13174_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##pair? _e1317513182_)
                                                       (let ((_hd1317913198_
                                                              (##car _e1317513182_))
                                                             (_tl1318013200_
                                                              (##cdr _e1317513182_)))
                                                         (let ((_tag13203_
                                                                _hd1317913198_))
                                                           (let ((_body13205_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1318013200_))
                     (_K1317813195_ _body13205_ _tag13203_))))
               (_E1317713186_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _recur13171_)
                                 _e13169_
                                 '()))))
                         (let ((_make-body13163_
                                (lambda (_vars13165_)
                                  (cons _K13156_
                                        (map (lambda (_mvar13167_)
                                               (assgetq (car _mvar13167_)
                                                        _vars13165_
                                                        _BUG13159_))
                                             _mvars13155_)))))
                           (letrec ((_recur13160_
                                     (lambda (_e13245_
                                              _vars13246_
                                              _target13247_
                                              _E13248_
                                              _k13249_)
                                       (let ((_e1325013257_ _e13245_))
                                         (let ((_E1325213261_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _e1325013257_))))
                                           (let ((_K1325313379_
                                                  (lambda (_body13264_
                                                           _tag13265_)
                                                    (let ((_$e13267_
                                                           _tag13265_))
                                                      (if (eq? _$e13267_ 'any)
                                                          (_k13249_
                                                           _vars13246_)
                                                          (if (eq? _$e13267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'id)
                      (gx#core-list
                       'if
                       (gx#core-list 'identifier? _target13247_)
                       (gx#core-list
                        'if
                        (gx#core-list
                         _identifier=?12981_
                         (gx#core-list _wrap-e12983_ _body13264_)
                         _target13247_)
                        (_k13249_ _vars13246_)
                        _E13248_)
                       _E13248_)
                      (if (eq? _$e13267_ 'var)
                          (_k13249_
                           (cons (cons _body13264_ _target13247_) _vars13246_))
                          (if (eq? _$e13267_ 'cons)
                              (let ((_$e13270_ (gx#genident__1 'e))
                                    (_$hd13271_ (gx#genident__1 'hd))
                                    (_$tl13272_ (gx#genident__1 'tl)))
                                (gx#core-list
                                 'if
                                 (gx#core-list 'stx-pair? _target13247_)
                                 (gx#core-list
                                  'let-values
                                  (cons (cons (cons _$e13270_ '())
                                              (cons (gx#core-list
                                                     _unwrap-e12982_
                                                     _target13247_)
                                                    '()))
                                        '())
                                  (gx#core-list
                                   'let-values
                                   (cons (cons (cons _$hd13271_ '())
                                               (cons (gx#core-list
                                                      '##car
                                                      _$e13270_)
                                                     '()))
                                         (cons (cons (cons _$tl13272_ '())
                                                     (cons (gx#core-list
                                                            '##cdr
                                                            _$e13270_)
                                                           '()))
                                               '()))
                                   (let ((_body1327313280_ _body13264_))
                                     (let ((_E1327513284_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _body1327313280_))))
                                       (let ((_K1327613292_
                                              (lambda (_tl13287_ _hd13288_)
                                                (_recur13160_
                                                 _hd13288_
                                                 _vars13246_
                                                 _$hd13271_
                                                 _E13248_
                                                 (lambda (_vars13290_)
                                                   (_recur13160_
                                                    _tl13287_
                                                    _vars13290_
                                                    _$tl13272_
                                                    _E13248_
                                                    _k13249_))))))
                                         (if (##pair? _body1327313280_)
                                             (let ((_hd1327713295_
                                                    (##car _body1327313280_))
                                                   (_tl1327813297_
                                                    (##cdr _body1327313280_)))
                                               (let ((_hd13300_
                                                      _hd1327713295_))
                                                 (let ((_tl13302_
                                                        _tl1327813297_))
                                                   (_K1327613292_
                                                    _tl13302_
                                                    _hd13300_))))
                                             (_E1327513284_)))))))
                                 _E13248_))
                              (if (eq? _$e13267_ 'splice)
                                  (let ((_body1330313310_ _body13264_))
                                    (let ((_E1330513314_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _body1330313310_))))
                                      (let ((_K1330613363_
                                             (lambda (_tl13317_ _hd13318_)
                                               (let ((_rlen13320_
                                                      (_splice-rlen13161_
                                                       _tl13317_)))
                                                 (let ((_$target13322_
                                                        (gx#genident__1
                                                         'target)))
                                                   (let ((_$hd13324_
                                                          (gx#genident__1
                                                           'hd)))
                                                     (let ((_$tl13326_
                                                            (gx#genident__1
                                                             'tl)))
                                                       (let ((_$lp13328_
                                                              (gx#genident__1
                                                               'loop)))
                                                         (let ((_$lp-e13330_
                                                                (gx#genident__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'e)))
                   (let ((_$lp-hd13332_ (gx#genident__1 'lp-hd)))
                     (let ((_$lp-tl13334_ (gx#genident__1 'lp-tl)))
                       (let ((_svars13336_ (_splice-vars13162_ _hd13318_)))
                         (let ((_lvars13338_ (gx#gentemps _svars13336_)))
                           (let ((_tlvars13340_ (gx#gentemps _svars13336_)))
                             (let ((_linit13344_
                                    (map (lambda (_var13342_)
                                           (gx#core-list 'quote '()))
                                         _lvars13338_)))
                               (let ()
                                 (let ((_make-loop13347_
                                        (lambda (_vars13349_)
                                          (gx#core-list
                                           'letrec-values
                                           (cons (cons (cons _$lp13328_ '())
                                                       (cons (gx#core-list
                                                              'lambda%
                                                              (cons _$hd13324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _lvars13338_)
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _$hd13324_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$lp-e13330_ '())
                                    (cons (gx#core-list
                                           _unwrap-e12982_
                                           _$hd13324_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$lp-hd13332_ '())
                                     (cons (gx#core-list '##car _$lp-e13330_)
                                           '()))
                               (cons (cons (cons _$lp-tl13334_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$lp-e13330_)
                                                 '()))
                                     '()))
                         (_recur13160_
                          _hd13318_
                          '()
                          _$lp-hd13332_
                          _E13248_
                          (lambda (_hdvars13351_)
                            (cons* _$lp13328_
                                   _$lp-tl13334_
                                   (map (lambda (_svar13353_ _lvar13354_)
                                          (gx#core-list
                                           'cons
                                           (assgetq _svar13353_
                                                    _hdvars13351_
                                                    _BUG13159_)
                                           _lvar13354_))
                                        _svars13336_
                                        _lvars13338_))))))
                       (gx#core-list
                        'let-values
                        (map (lambda (_lvar13356_ _tlvar13357_)
                               (cons (cons _tlvar13357_ '())
                                     (cons (gx#core-list 'reverse _lvar13356_)
                                           '())))
                             _lvars13338_
                             _tlvars13340_)
                        (_k13249_
                         (foldl (lambda (_svar13359_ _tlvar13360_ _r13361_)
                                  (cons (cons _svar13359_ _tlvar13360_)
                                        _r13361_))
                                _vars13349_
                                _svars13336_
                                _tlvars13340_)))))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons* _$lp13328_
                                                  _$target13322_
                                                  _linit13344_)))))
                                   (gx#core-list
                                    'if
                                    (gx#core-list
                                     'stx-pair/null?
                                     _target13247_)
                                    (gx#core-list
                                     'if
                                     (gx#core-list
                                      'fx>=
                                      (gx#core-list 'stx-length _target13247_)
                                      _rlen13320_)
                                     (gx#core-list
                                      'let-values
                                      (cons (cons (cons _$target13322_
                                                        (cons _$tl13326_ '()))
                                                  (cons (gx#core-list
                                                         'syntax-split-splice
                                                         _target13247_
                                                         _rlen13320_)
                                                        '()))
                                            '())
                                      (_recur13160_
                                       _tl13317_
                                       _vars13246_
                                       _$tl13326_
                                       _E13248_
                                       _make-loop13347_))
                                     _E13248_)
                                    _E13248_))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _body1330313310_)
                                            (let ((_hd1330713366_
                                                   (##car _body1330313310_))
                                                  (_tl1330813368_
                                                   (##cdr _body1330313310_)))
                                              (let ((_hd13371_ _hd1330713366_))
                                                (let ((_tl13373_
                                                       _tl1330813368_))
                                                  (_K1330613363_
                                                   _tl13373_
                                                   _hd13371_))))
                                            (_E1330513314_)))))
                                  (if (eq? _$e13267_ 'null)
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-null? _target13247_)
                                       (_k13249_ _vars13246_)
                                       _E13248_)
                                      (if (eq? _$e13267_ 'vector)
                                          (let ((_$e13375_
                                                 (gx#genident__1 'e)))
                                            (gx#core-list
                                             'if
                                             (gx#core-list
                                              'stx-vector?
                                              _target13247_)
                                             (gx#core-list
                                              'let-values
                                              (cons (cons (cons _$e13375_ '())
                                                          (cons (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'vector->list
                         (gx#core-list _unwrap-e12982_ _target13247_))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (_recur13160_
                                               _body13264_
                                               _vars13246_
                                               _$e13375_
                                               _E13248_
                                               _k13249_))
                                             _E13248_))
                                          (if (eq? _$e13267_ 'box)
                                              (let ((_$e13377_
                                                     (gx#genident__1 'e)))
                                                (gx#core-list
                                                 'if
                                                 (gx#core-list
                                                  'stx-box?
                                                  _target13247_)
                                                 (gx#core-list
                                                  'let-values
                                                  (cons (cons (cons _$e13377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (gx#core-list
                             'unbox
                             (gx#core-list _unwrap-e12982_ _target13247_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur13160_
                                                   _body13264_
                                                   _vars13246_
                                                   _$e13377_
                                                   _E13248_
                                                   _k13249_))
                                                 _E13248_))
                                              (if (eq? _$e13267_ 'datum)
                                                  (gx#core-list
                                                   'if
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target13247_)
                                                   (gx#core-list
                                                    'if
                                                    (gx#core-list
                                                     'equal?
                                                     (gx#core-list
                                                      'stx-e
                                                      _target13247_)
                                                     _body13264_)
                                                    (_k13249_ _vars13246_)
                                                    _E13248_)
                                                   _E13248_)
                                                  (_BUG13159_
                                                   _e13245_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _e1325013257_)
                                                 (let ((_hd1325413382_
                                                        (##car _e1325013257_))
                                                       (_tl1325513384_
                                                        (##cdr _e1325013257_)))
                                                   (let ((_tag13387_
                                                          _hd1325413382_))
                                                     (let ((_body13389_
                                                            _tl1325513384_))
                                                       (_K1325313379_
                                                        _body13389_
                                                        _tag13387_))))
                                                 (_E1325213261_))))))))
                             (_recur13160_
                              _hd13154_
                              '()
                              _target13153_
                              _E13157_
                              _make-body13163_)))))))))
            (let ((_parse-clause12989_
                   (lambda (_hd13058_ _ids13059_)
                     ((letrec ((_recur13061_
                                (lambda (_e13063_ _vars13064_ _depth13065_)
                                  (if (gx#identifier? _e13063_)
                                      (if (gx#underscore? _e13063_)
                                          (values '(any) _vars13064_)
                                          (if (gx#ellipsis? _e13063_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Misplaced ellipsis"
                                               _stx12980_
                                               _hd13058_)
                                              (if (find (lambda (_id13067_)
                                                          (gx#bound-identifier=?
                                                           _e13063_
                                                           _id13067_))
                                                        _ids13059_)
                                                  (values (cons 'id _e13063_)
                                                          _vars13064_)
                                                  (if (find (lambda (_var13069_)
                                                              (gx#bound-identifier=?
                                                               _e13063_
                                                               (car _var13069_)))
                                                            _vars13064_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Duplicate pattern variable"
                                                       _stx12980_
                                                       _e13063_)
                                                      (values (cons 'var
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _e13063_)
                      (cons (cons _e13063_ _depth13065_) _vars13064_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _e13063_)
                                          (let ((_e1307013077_ _e13063_))
                                            (let ((_E1307213081_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _e1307013077_))))
                                              (let ((_E1307113142_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e1307013077_)
                                                           (let ((_e1307313085_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e1307013077_)))
                     (let ((_hd1307413088_ (##car _e1307313085_))
                           (_tl1307513090_ (##cdr _e1307313085_)))
                       (let ((_hd13093_ _hd1307413088_))
                         (let ((_rest13095_ _tl1307513090_))
                           (if '#t
                               (let ((_make-pair13110_
                                      (lambda (_tag13097_ _hd13098_ _tl13099_)
                                        (let ((_hd-depth13101_
                                               (if (eq? _tag13097_ 'splice)
                                                   (fx+ _depth13065_ '1)
                                                   _depth13065_)))
                                          (let ((_g14120_
                                                 (_recur13061_
                                                  _hd13098_
                                                  _vars13064_
                                                  _hd-depth13101_)))
                                            (begin
                                              (let ((_g14121_
                                                     (values-count _g14120_)))
                                                (if (not (fx= _g14121_ 2))
                                                    (error "Context expects 2 values"
                                                           _g14121_)))
                                              (let ((_hd13103_
                                                     (values-ref _g14120_ 0))
                                                    (_vars13104_
                                                     (values-ref _g14120_ 1)))
                                                (let ((_g14122_
                                                       (_recur13061_
                                                        _tl13099_
                                                        _vars13104_
                                                        _depth13065_)))
                                                  (begin
                                                    (let ((_g14123_
                                                           (values-count
                                                            _g14122_)))
                                                      (if (not (fx= _g14123_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g14123_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_tl13106_
                                                           (values-ref
                                                            _g14122_
                                                            0))
                                                          (_vars13107_
                                                           (values-ref
                                                            _g14122_
                                                            1)))
                                                      (let ()
                                                        (values (cons* _tag13097_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd13103_
                               _tl13106_)
                        _vars13107_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (let ((_e1311113118_ _rest13095_))
                                   (let ((_E1311313122_
                                          (lambda ()
                                            (_make-pair13110_
                                             'cons
                                             _hd13093_
                                             _rest13095_))))
                                     (let ((_E1311213138_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1311113118_)
                                                  (let ((_e1311413126_
                                                         (gx#syntax-e
                                                          _e1311113118_)))
                                                    (let ((_hd1311513129_
                                                           (##car _e1311413126_))
                                                          (_tl1311613131_
                                                           (##cdr _e1311413126_)))
                                                      (let ((_rest-hd13134_
                                                             _hd1311513129_))
                                                        (let ((_rest-tl13136_
                                                               _tl1311613131_))
                                                          (if '#t
                                                              (if (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest-hd13134_)
                          (_make-pair13110_ 'splice _hd13093_ _rest-tl13136_)
                          (_make-pair13110_ 'cons _hd13093_ _rest13095_))
                      (_E1311313122_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1311313122_)))))
                                       (let () (_E1311213138_))))))
                               (_E1307213081_))))))
                   (_E1307213081_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E1307113142_)))))
                                          (if (gx#stx-null? _e13063_)
                                              (values '(null) _vars13064_)
                                              (if (gx#stx-vector? _e13063_)
                                                  (let ((_g14124_
                                                         (_recur13061_
                                                          (vector->list
                                                           (gx#syntax-e
                                                            _e13063_))
                                                          _vars13064_
                                                          _depth13065_)))
                                                    (begin
                                                      (let ((_g14125_
                                                             (values-count
                                                              _g14124_)))
                                                        (if (not (fx= _g14125_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g14125_)))
              (let ((_e13146_ (values-ref _g14124_ 0))
                    (_vars13147_ (values-ref _g14124_ 1)))
                (values (cons 'vector _e13146_) _vars13147_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e13063_)
                                                      (let ((_g14126_
                                                             (_recur13061_
                                                              (unbox (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e13063_))
                      _vars13064_
                      _depth13065_)))
                (begin
                  (let ((_g14127_ (values-count _g14126_)))
                    (if (not (fx= _g14127_ 2))
                        (error "Context expects 2 values" _g14127_)))
                  (let ((_e13149_ (values-ref _g14126_ 0))
                        (_vars13150_ (values-ref _g14126_ 1)))
                    (values (cons 'box _e13149_) _vars13150_))))
              (if (gx#stx-datum? _e13063_)
                  (values (cons 'datum (gx#stx-e _e13063_)) _vars13064_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad pattern"
                   _stx12980_
                   _e13063_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        _recur13061_)
                      _hd13058_
                      '()
                      '0))))
              (let ((_generate-clause12987_
                     (lambda (_target13393_ _ids13394_ _clause13395_ _E13396_)
                       (let ((_generate113398_
                              (lambda (_hd13485_ _fender13486_ _body13487_)
                                (let ((_g14118_
                                       (_parse-clause12989_
                                        _hd13485_
                                        _ids13394_)))
                                  (begin
                                    (let ((_g14119_ (values-count _g14118_)))
                                      (if (not (fx= _g14119_ 2))
                                          (error "Context expects 2 values"
                                                 _g14119_)))
                                    (let ((_e13489_ (values-ref _g14118_ 0))
                                          (_mvars13490_
                                           (values-ref _g14118_ 1)))
                                      (let ((_pvars13492_
                                             (map gx#syntax-local-rewrap
                                                  (gx#gentemps _mvars13490_))))
                                        (let ((_E13494_
                                               (cons _E13396_
                                                     (cons _target13393_
                                                           '()))))
                                          (let ((_K13527_
                                                 (gx#core-list
                                                  'lambda%
                                                  _pvars13492_
                                                  (gx#core-list
                                                   'let-syntax
                                                   (map (lambda (_mvar13496_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pvar13497_)
                  (let ((_mvar1349813505_ _mvar13496_))
                    (let ((_E1350013509_
                           (lambda ()
                             (error '"No clause matching" _mvar1349813505_))))
                      (let ((_K1350113515_
                             (lambda (_depth13512_ _id13513_)
                               (cons _id13513_
                                     (cons (gx#core-list
                                            'make-syntax-pattern
                                            (gx#core-list 'quote _id13513_)
                                            (gx#core-list 'quote _pvar13497_)
                                            _depth13512_)
                                           '())))))
                        (if (##pair? _mvar1349813505_)
                            (let ((_hd1350213518_ (##car _mvar1349813505_))
                                  (_tl1350313520_ (##cdr _mvar1349813505_)))
                              (let ((_id13523_ _hd1350213518_))
                                (let ((_depth13525_ _tl1350313520_))
                                  (_K1350113515_ _depth13525_ _id13523_))))
                            (_E1350013509_))))))
                _mvars13490_
                _pvars13492_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (eq? _fender13486_ '#t)
                                                       _body13487_
                                                       (gx#core-list
                                                        'if
                                                        _fender13486_
                                                        _body13487_
                                                        _E13494_))))))
                                            (let ()
                                              (_generate-match12988_
                                               _hd13485_
                                               _target13393_
                                               _e13489_
                                               _mvars13490_
                                               _K13527_
                                               _E13494_)))))))))))
                         (let ((_e1339913419_ _clause13395_))
                           (let ((_E1340813423_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _e1339913419_))))
                             (let ((_E1340113457_
                                    (lambda ()
                                      (if (gx#stx-pair? _e1339913419_)
                                          (let ((_e1340913427_
                                                 (gx#syntax-e _e1339913419_)))
                                            (let ((_hd1341013430_
                                                   (##car _e1340913427_))
                                                  (_tl1341113432_
                                                   (##cdr _e1340913427_)))
                                              (let ((_hd13435_ _hd1341013430_))
                                                (if (gx#stx-pair?
                                                     _tl1341113432_)
                                                    (let ((_e1341213437_
                                                           (gx#syntax-e
                                                            _tl1341113432_)))
                                                      (let ((_hd1341313440_
                                                             (##car _e1341213437_))
                                                            (_tl1341413442_
                                                             (##cdr _e1341213437_)))
                                                        (let ((_fender13445_
                                                               _hd1341313440_))
                                                          (if (gx#stx-pair?
                                                               _tl1341413442_)
                                                              (let ((_e1341513447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1341413442_)))
                        (let ((_hd1341613450_ (##car _e1341513447_))
                              (_tl1341713452_ (##cdr _e1341513447_)))
                          (let ((_body13455_ _hd1341613450_))
                            (if (gx#stx-null? _tl1341713452_)
                                (if '#t
                                    (_generate113398_
                                     _hd13435_
                                     _fender13445_
                                     _body13455_)
                                    (_E1340813423_))
                                (_E1340813423_)))))
                      (_E1340813423_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1340813423_)))))
                                          (_E1340813423_)))))
                               (let ((_E1340013481_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1339913419_)
                                            (let ((_e1340213461_
                                                   (gx#syntax-e
                                                    _e1339913419_)))
                                              (let ((_hd1340313464_
                                                     (##car _e1340213461_))
                                                    (_tl1340413466_
                                                     (##cdr _e1340213461_)))
                                                (let ((_hd13469_
                                                       _hd1340313464_))
                                                  (if (gx#stx-pair?
                                                       _tl1340413466_)
                                                      (let ((_e1340513471_
                                                             (gx#syntax-e
                                                              _tl1340413466_)))
                                                        (let ((_hd1340613474_
                                                               (##car _e1340513471_))
                                                              (_tl1340713476_
                                                               (##cdr _e1340513471_)))
                                                          (let ((_body13479_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1340613474_))
                    (if (gx#stx-null? _tl1340713476_)
                        (if '#t
                            (_generate113398_ _hd13469_ '#t _body13479_)
                            (_E1340113457_))
                        (_E1340113457_)))))
              (_E1340113457_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1340113457_)))))
                                 (let () (_E1340013481_))))))))))
                (let ((_generate-bindings12985_
                       (lambda (_target13570_
                                _ids13571_
                                _clauses13572_
                                _clause-ids13573_
                                _E13574_)
                         (let ((_generate113576_
                                (lambda (_clause13675_
                                         _clause-id13676_
                                         _E13677_)
                                  (cons (cons _clause-id13676_ '())
                                        (cons (gx#core-list
                                               'lambda%
                                               (cons _target13570_ '())
                                               (_generate-clause12987_
                                                _target13570_
                                                _ids13571_
                                                _clause13675_
                                                _E13677_))
                                              '())))))
                           ((letrec ((_lp13578_
                                      (lambda (_rest13580_
                                               _rest-ids13581_
                                               _bindings13582_)
                                        (let ((_rest1358313591_ _rest13580_))
                                          (let ((_E1358613595_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _rest1358313591_))))
                                            (let ((_else1358513599_
                                                   (lambda ()
                                                     _bindings13582_)))
                                              (let ((_K1358713663_
                                                     (lambda (_rest13602_
                                                              _clause13603_)
                                                       (let ((_rest-ids1360413611_
                                                              _rest-ids13581_))
                                                         (let ((_E1360613615_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (error '"No clause matching" _rest-ids1360413611_))))
                   (let ((_K1360713651_
                          (lambda (_rest-ids13618_ _clause-id13619_)
                            (let ((_rest-ids1362013628_ _rest-ids13618_))
                              (let ((_E1362313632_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _rest-ids1362013628_))))
                                (let ((_else1362213636_
                                       (lambda ()
                                         (cons (_generate113576_
                                                _clause13603_
                                                _clause-id13619_
                                                _E13574_)
                                               _bindings13582_))))
                                  (let ((_K1362413641_
                                         (lambda (_next-clause-id13639_)
                                           (_lp13578_
                                            _rest13602_
                                            _rest-ids13618_
                                            (cons (_generate113576_
                                                   _clause13603_
                                                   _clause-id13619_
                                                   _next-clause-id13639_)
                                                  _bindings13582_)))))
                                    (if (##pair? _rest-ids1362013628_)
                                        (let ((_hd1362513644_
                                               (##car _rest-ids1362013628_))
                                              (_tl1362613646_
                                               (##cdr _rest-ids1362013628_)))
                                          (let ((_next-clause-id13649_
                                                 _hd1362513644_))
                                            (_K1362413641_
                                             _next-clause-id13649_)))
                                        (_else1362213636_)))))))))
                     (if (##pair? _rest-ids1360413611_)
                         (let ((_hd1360813654_ (##car _rest-ids1360413611_))
                               (_tl1360913656_ (##cdr _rest-ids1360413611_)))
                           (let ((_clause-id13659_ _hd1360813654_))
                             (let ((_rest-ids13661_ _tl1360913656_))
                               (_K1360713651_
                                _rest-ids13661_
                                _clause-id13659_))))
                         (_E1360613615_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (##pair? _rest1358313591_)
                                                    (let ((_hd1358813666_
                                                           (##car _rest1358313591_))
                                                          (_tl1358913668_
                                                           (##cdr _rest1358313591_)))
                                                      (let ((_clause13671_
                                                             _hd1358813666_))
                                                        (let ((_rest13673_
                                                               _tl1358913668_))
                                                          (_K1358713663_
                                                           _rest13673_
                                                           _clause13671_))))
                                                    (_else1358513599_)))))))))
                              _lp13578_)
                            _clauses13572_
                            _clause-ids13573_
                            '())))))
                  (let ((_e1299013003_ _stx12980_))
                    (let ((_E1299213007_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e1299013003_))))
                      (let ((_E1299113054_
                             (lambda ()
                               (if (gx#stx-pair? _e1299013003_)
                                   (let ((_e1299313011_
                                          (gx#syntax-e _e1299013003_)))
                                     (let ((_hd1299413014_
                                            (##car _e1299313011_))
                                           (_tl1299513016_
                                            (##cdr _e1299313011_)))
                                       (if (gx#stx-pair? _tl1299513016_)
                                           (let ((_e1299613019_
                                                  (gx#syntax-e
                                                   _tl1299513016_)))
                                             (let ((_hd1299713022_
                                                    (##car _e1299613019_))
                                                   (_tl1299813024_
                                                    (##cdr _e1299613019_)))
                                               (let ((_expr13027_
                                                      _hd1299713022_))
                                                 (if (gx#stx-pair?
                                                      _tl1299813024_)
                                                     (let ((_e1299913029_
                                                            (gx#syntax-e
                                                             _tl1299813024_)))
                                                       (let ((_hd1300013032_
                                                              (##car _e1299913029_))
                                                             (_tl1300113034_
                                                              (##cdr _e1299913029_)))
                                                         (let ((_ids13037_
                                                                _hd1300013032_))
                                                           (let ((_clauses13039_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1300113034_))
                     (if '#t
                         (if (not (gx#identifier-list? _ids13037_))
                             (gx#raise-syntax-error
                              '#f
                              '"Bad template identifier list"
                              _stx12980_
                              _ids13037_)
                             (if (not (gx#stx-list? _clauses13039_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _stx12980_)
                                 (let ((_ids13041_
                                        (gx#syntax->list _ids13037_)))
                                   (let ((_clauses13043_
                                          (gx#syntax->list _clauses13039_)))
                                     (let ((_clause-ids13045_
                                            (gx#gentemps _clauses13043_)))
                                       (let ((_E13047_ (gx#genident__0)))
                                         (let ((_target13049_
                                                (gx#genident__0)))
                                           (let ((_first13051_
                                                  (if (null? _clauses13043_)
                                                      _E13047_
                                                      (car _clause-ids13045_))))
                                             (let ()
                                               (gx#stx-wrap-source
                                                (gx#core-list
                                                 'let-values
                                                 (cons (cons (cons _E13047_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _target13049_ '())
                            (gx#core-list
                             'raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _target13049_))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_generate-body12986_
                                                  (_generate-bindings12985_
                                                   _target13049_
                                                   _ids13041_
                                                   _clauses13043_
                                                   _clause-ids13045_
                                                   _E13047_)
                                                  (cons _first13051_
                                                        (cons _expr13027_
                                                              '()))))
                                                (gx#stx-source
                                                 _stx12980_)))))))))))
                         (_E1299213007_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1299213007_)))))
                                           (_E1299213007_))))
                                   (_E1299213007_)))))
                        (let () (_E1299113054_))))))))))))
    (begin
      (define gx#macro-expand-syntax-case__0
        (lambda (_stx13682_)
          (let ((_identifier=?13684_ 'free-identifier=?))
            (let ((_unwrap-e13686_ 'syntax-e))
              (let ((_wrap-e13688_ 'quote-syntax))
                (gx#macro-expand-syntax-case__opt-lambda12978
                 _stx13682_
                 _identifier=?13684_
                 _unwrap-e13686_
                 _wrap-e13688_))))))
      (define gx#macro-expand-syntax-case__1
        (lambda (_stx13690_ _identifier=?13691_)
          (let ((_unwrap-e13693_ 'syntax-e))
            (let ((_wrap-e13695_ 'quote-syntax))
              (gx#macro-expand-syntax-case__opt-lambda12978
               _stx13690_
               _identifier=?13691_
               _unwrap-e13693_
               _wrap-e13695_)))))
      (define gx#macro-expand-syntax-case__2
        (lambda (_stx13697_ _identifier=?13698_ _unwrap-e13699_)
          (let ((_wrap-e13701_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda12978
             _stx13697_
             _identifier=?13698_
             _unwrap-e13699_
             _wrap-e13701_))))
      (define gx#macro-expand-syntax-case
        (lambda _g14129_
          (let ((_g14128_ (length _g14129_)))
            (cond ((fx= _g14128_ 1)
                   (apply gx#macro-expand-syntax-case__0 _g14129_))
                  ((fx= _g14128_ 2)
                   (apply gx#macro-expand-syntax-case__1 _g14129_))
                  ((fx= _g14128_ 3)
                   (apply gx#macro-expand-syntax-case__2 _g14129_))
                  ((fx= _g14128_ 4)
                   (apply gx#macro-expand-syntax-case__opt-lambda12978
                          _g14129_))
                  (else (error "No clause matching arguments" _g14129_))))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx12977_)
      (if (gx#identifier? _stx12977_)
          (##structure-instance-of?
           (gx#syntax-local-e__opt-lambda3895 _stx12977_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd12935_ . _rest12936_)
      (let ((_len12938_ (length _hd12935_)))
        ((letrec ((_lp12940_
                   (lambda (_rest12942_)
                     (let ((_rest1294312951_ _rest12942_))
                       (let ((_E1294612955_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1294312951_))))
                         (let ((_else1294512959_ (lambda () '#!void)))
                           (let ((_K1294712965_
                                  (lambda (_rest12962_ _hd12963_)
                                    (if (fx= _len12938_ (length _hd12963_))
                                        (_lp12940_ _rest12962_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Splice length mismatch"
                                         _hd12963_)))))
                             (if (##pair? _rest1294312951_)
                                 (let ((_hd1294812968_
                                        (##car _rest1294312951_))
                                       (_tl1294912970_
                                        (##cdr _rest1294312951_)))
                                   (let ((_hd12973_ _hd1294812968_))
                                     (let ((_rest12975_ _tl1294912970_))
                                       (_K1294712965_ _rest12975_ _hd12973_))))
                                 (_else1294512959_)))))))))
           _lp12940_)
         _rest12936_))))
  (define gx#syntax-split-splice
    (lambda (_stx12893_ _n12894_)
      ((letrec ((_lp12896_
                 (lambda (_rest12898_ _r12899_)
                   (if (gx#stx-pair? _rest12898_)
                       (let ((_g1290012907_ (gx#syntax-e _rest12898_)))
                         (let ((_E1290212911_
                                (lambda ()
                                  (error '"No clause matching"
                                         _g1290012907_))))
                           (let ((_K1290312917_
                                  (lambda (_rest12914_ _hd12915_)
                                    (_lp12896_
                                     _rest12914_
                                     (cons _hd12915_ _r12899_)))))
                             (if (##pair? _g1290012907_)
                                 (let ((_hd1290412920_ (##car _g1290012907_))
                                       (_tl1290512922_ (##cdr _g1290012907_)))
                                   (let ((_hd12925_ _hd1290412920_))
                                     (let ((_rest12927_ _tl1290512922_))
                                       (_K1290312917_ _rest12927_ _hd12925_))))
                                 (_E1290212911_)))))
                       ((letrec ((_lp12929_
                                  (lambda (_n12931_ _l12932_ _r12933_)
                                    (if (null? _l12932_)
                                        (values _l12932_ _r12933_)
                                        (if (fxpositive? _n12931_)
                                            (_lp12929_
                                             (fx- _n12931_ '1)
                                             (cdr _l12932_)
                                             (cons (car _l12932_) _r12933_))
                                            (values (reverse _l12932_)
                                                    _r12933_))))))
                          _lp12929_)
                        _n12894_
                        _r12899_
                        _rest12898_)))))
         _lp12896_)
       _stx12893_
       '()))))
