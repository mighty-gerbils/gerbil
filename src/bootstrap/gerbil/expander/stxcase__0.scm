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
    (lambda _$args14188_
      (apply make-struct-instance gx#syntax-pattern::t _$args14188_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self14185_ _stx14186_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx14186_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx13794_)
      (let ((_generate13796_
             (lambda (_e14023_)
               (let ((_BUG14025_
                      (lambda (_q14183_)
                        (error '"BUG: syntax; generate"
                               _stx13794_
                               _e14023_
                               _q14183_))))
                 (let ((_local-pattern-e14026_
                        (lambda (_pat14181_)
                          (gx#syntax-local-rewrap
                           (##structure-ref
                            _pat14181_
                            '2
                            gx#syntax-pattern::t
                            '#f)))))
                   (let ((_getvar14027_
                          (lambda (_q14178_ _vars14179_)
                            (assgetq _q14178_ _vars14179_ _BUG14025_))))
                     (let ((_getarg14028_
                            (lambda (_arg14144_ _vars14145_)
                              (let ((_arg1414614153_ _arg14144_))
                                (let ((_E1414814157_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _arg1414614153_))))
                                  (let ((_K1414914166_
                                         (lambda (_e14160_ _tag14161_)
                                           (let ((_$e14163_ _tag14161_))
                                             (if (eq? _$e14163_ 'ref)
                                                 (_getvar14027_
                                                  _e14160_
                                                  _vars14145_)
                                                 (if (eq? _$e14163_ 'pattern)
                                                     (_local-pattern-e14026_
                                                      _e14160_)
                                                     (_BUG14025_
                                                      _arg14144_)))))))
                                    (if (##pair? _arg1414614153_)
                                        (let ((_hd1415014169_
                                               (##car _arg1414614153_))
                                              (_tl1415114171_
                                               (##cdr _arg1414614153_)))
                                          (let ((_tag14174_ _hd1415014169_))
                                            (let ((_e14176_ _tl1415114171_))
                                              (_K1414914166_
                                               _e14176_
                                               _tag14174_))))
                                        (_E1414814157_))))))))
                       ((letrec ((_recur14030_
                                  (lambda (_e14032_ _vars14033_)
                                    (let ((_e1403414041_ _e14032_))
                                      (let ((_E1403614045_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _e1403414041_))))
                                        (let ((_K1403714132_
                                               (lambda (_body14048_ _tag14049_)
                                                 (let ((_$e14051_ _tag14049_))
                                                   (if (eq? _$e14051_ 'datum)
                                                       (gx#core-list
                                                        'quote
                                                        _body14048_)
                                                       (if (eq? _$e14051_
                                                                'term)
                                                           (gx#core-list
                                                            'datum->syntax
                                                            '#f
                                                            (gx#core-list
                                                             'quote
                                                             _body14048_))
                                                           (if (eq? _$e14051_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'pattern)
                       (_local-pattern-e14026_ _body14048_)
                       (if (eq? _$e14051_ 'ref)
                           (_getvar14027_ _body14048_ _vars14033_)
                           (if (eq? _$e14051_ 'cons)
                               (gx#core-list
                                'cons
                                (_recur14030_ (car _body14048_) _vars14033_)
                                (_recur14030_ (cdr _body14048_) _vars14033_))
                               (if (eq? _$e14051_ 'vector)
                                   (gx#core-list
                                    'list->vector
                                    (_recur14030_ _body14048_ _vars14033_))
                                   (if (eq? _$e14051_ 'box)
                                       (gx#core-list
                                        'box
                                        (_recur14030_ _body14048_ _vars14033_))
                                       (if (eq? _$e14051_ 'splice)
                                           (let ((_body1405314064_
                                                  _body14048_))
                                             (let ((_E1405514068_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _body1405314064_))))
                                               (let ((_K1405614106_
                                                      (lambda (_args14071_
                                                               _iv14072_
                                                               _hd14073_
                                                               _depth14074_)
                                                        (let ((_targets14080_
                                                               (map (lambda (_g1407514077_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_getarg14028_ _g1407514077_ _vars14033_))
                            _args14071_)))
                  (let ((_fold-in14082_ (gx#gentemps _args14071_)))
                    (let ((_fold-out14084_ (gx#genident__0)))
                      (let ((_lambda-args14086_
                             (foldr1 cons
                                     (cons _fold-out14084_ '())
                                     _fold-in14082_)))
                        (let ((_lambda-body14103_
                               (if (fx> _depth14074_ '1)
                                   (let ((_r-args14094_
                                          (map (lambda (_arg14088_)
                                                 (cons 'ref (cdr _arg14088_)))
                                               _args14071_))
                                         (_r-vars14095_
                                          (foldr (lambda (_arg14090_
                                                          _var14091_
                                                          _r14092_)
                                                   (cons (cons (cdr _arg14090_)
                                                               _var14091_)
                                                         _r14092_))
                                                 _vars14033_
                                                 _args14071_
                                                 _fold-in14082_)))
                                     (_recur14030_
                                      (cons* 'splice
                                             (fx- _depth14074_ '1)
                                             _hd14073_
                                             (cons 'var _fold-out14084_)
                                             _r-args14094_)
                                      _r-vars14095_))
                                   (let ((_hd-vars14101_
                                          (foldr (lambda (_arg14097_
                                                          _var14098_
                                                          _r14099_)
                                                   (cons (cons (cdr _arg14097_)
                                                               _var14098_)
                                                         _r14099_))
                                                 _vars14033_
                                                 _args14071_
                                                 _fold-in14082_)))
                                     (gx#core-list
                                      'cons
                                      (_recur14030_ _hd14073_ _hd-vars14101_)
                                      _fold-out14084_)))))
                          (let ()
                            (gx#core-list
                             'begin
                             (if (fx> (length _targets14080_) '1)
                                 (gx#core-cons*
                                  'syntax-check-splice-targets
                                  _targets14080_)
                                 '#!void)
                             (gx#core-cons*
                              'foldr
                              (gx#core-list
                               'lambda%
                               _lambda-args14086_
                               _lambda-body14103_)
                              (_recur14030_ _iv14072_ _vars14033_)
                              _targets14080_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _body1405314064_)
                                                     (let ((_hd1405714109_
                                                            (##car _body1405314064_))
                                                           (_tl1405814111_
                                                            (##cdr _body1405314064_)))
                                                       (let ((_depth14114_
                                                              _hd1405714109_))
                                                         (if (##pair? _tl1405814111_)
                                                             (let ((_hd1405914116_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##car _tl1405814111_))
                           (_tl1406014118_ (##cdr _tl1405814111_)))
                       (let ((_hd14121_ _hd1405914116_))
                         (if (##pair? _tl1406014118_)
                             (let ((_hd1406114123_ (##car _tl1406014118_))
                                   (_tl1406214125_ (##cdr _tl1406014118_)))
                               (let ((_iv14128_ _hd1406114123_))
                                 (let ((_args14130_ _tl1406214125_))
                                   (_K1405614106_
                                    _args14130_
                                    _iv14128_
                                    _hd14121_
                                    _depth14114_))))
                             (_E1405514068_))))
                     (_E1405514068_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1405514068_)))))
                                           (if (eq? _$e14051_ 'var)
                                               _body14048_
                                               (_BUG14025_
                                                _e14032_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _e1403414041_)
                                              (let ((_hd1403814135_
                                                     (##car _e1403414041_))
                                                    (_tl1403914137_
                                                     (##cdr _e1403414041_)))
                                                (let ((_tag14140_
                                                       _hd1403814135_))
                                                  (let ((_body14142_
                                                         _tl1403914137_))
                                                    (_K1403714132_
                                                     _body14142_
                                                     _tag14140_))))
                                              (_E1403614045_))))))))
                          _recur14030_)
                        _e14023_
                        '()))))))))
        (let ((_parse13797_
               (lambda (_e13838_)
                 (let ((_make-cons13840_
                        (lambda (_hd14015_ _tl14016_)
                          (let ((_g14200_ _hd14015_) (_g14202_ _tl14016_))
                            (begin
                              (let ((_g14201_ (values-count _g14200_)))
                                (if (not (fx= _g14201_ 2))
                                    (error "Context expects 2 values"
                                           _g14201_)))
                              (let ((_g14203_ (values-count _g14202_)))
                                (if (not (fx= _g14203_ 2))
                                    (error "Context expects 2 values"
                                           _g14203_)))
                              (let ((_hd-e14018_ (values-ref _g14200_ 0))
                                    (_hd-vars14019_ (values-ref _g14200_ 1)))
                                (let ((_tl-e14020_ (values-ref _g14202_ 0))
                                      (_tl-vars14021_ (values-ref _g14202_ 1)))
                                  (values (cons* 'cons _hd-e14018_ _tl-e14020_)
                                          (append _hd-vars14019_
                                                  _tl-vars14021_)))))))))
                   (let ((_make-splice13841_
                          (lambda (_where13954_
                                   _depth13955_
                                   _hd13956_
                                   _tl13957_)
                            (let ((_g14196_ _hd13956_) (_g14198_ _tl13957_))
                              (begin
                                (let ((_g14197_ (values-count _g14196_)))
                                  (if (not (fx= _g14197_ 2))
                                      (error "Context expects 2 values"
                                             _g14197_)))
                                (let ((_g14199_ (values-count _g14198_)))
                                  (if (not (fx= _g14199_ 2))
                                      (error "Context expects 2 values"
                                             _g14199_)))
                                (let ((_hd-e13959_ (values-ref _g14196_ 0))
                                      (_hd-vars13960_ (values-ref _g14196_ 1)))
                                  (let ((_tl-e13961_ (values-ref _g14198_ 0))
                                        (_tl-vars13962_
                                         (values-ref _g14198_ 1)))
                                    ((letrec ((_lp13964_
                                               (lambda (_rest13966_
                                                        _targets13967_
                                                        _vars13968_)
                                                 (let ((_rest1396913979_
                                                        _rest13966_))
                                                   (let ((_E1397213983_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest1396913979_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_else1397113987_
                                                            (lambda ()
                                                              (if (null? _targets13967_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Misplaced ellipsis"
                           _stx13794_
                           _where13954_)
                          (values (cons* 'splice
                                         _depth13955_
                                         _hd-e13959_
                                         _tl-e13961_
                                         _targets13967_)
                                  _vars13968_)))))
               (let ((_K1397313996_
                      (lambda (_rest13990_ _hd-pat13991_ _hd-depth*13992_)
                        (let ((_hd-depth13994_
                               (fx- _hd-depth*13992_ _depth13955_)))
                          (if (fxpositive? _hd-depth13994_)
                              (_lp13964_
                               _rest13990_
                               (cons (cons 'ref _hd-pat13991_) _targets13967_)
                               (cons (cons _hd-depth13994_ _hd-pat13991_)
                                     _vars13968_))
                              (if (fxzero? _hd-depth13994_)
                                  (_lp13964_
                                   _rest13990_
                                   (cons (cons 'pattern _hd-pat13991_)
                                         _targets13967_)
                                   _vars13968_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Too many ellipses"
                                   _stx13794_
                                   _where13954_)))))))
                 (if (##pair? _rest1396913979_)
                     (let ((_hd1397413999_ (##car _rest1396913979_))
                           (_tl1397514001_ (##cdr _rest1396913979_)))
                       (if (##pair? _hd1397413999_)
                           (let ((_hd1397614004_ (##car _hd1397413999_))
                                 (_tl1397714006_ (##cdr _hd1397413999_)))
                             (let ((_hd-depth*14009_ _hd1397614004_))
                               (let ((_hd-pat14011_ _tl1397714006_))
                                 (let ((_rest14013_ _tl1397514001_))
                                   (_K1397313996_
                                    _rest14013_
                                    _hd-pat14011_
                                    _hd-depth*14009_)))))
                           (_else1397113987_)))
                     (_else1397113987_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _lp13964_)
                                     _hd-vars13960_
                                     '()
                                     _tl-vars13962_))))))))
                     (letrec ((_recur13842_
                               (lambda (_e13847_ _is-e?13848_)
                                 (if (_is-e?13848_ _e13847_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Mislpaced ellipsis"
                                      _stx13794_)
                                     (if (gx#syntax-local-pattern? _e13847_)
                                         (let ((_pat13850_
                                                (gx#syntax-local-e__0
                                                 _e13847_)))
                                           (let ((_depth13852_
                                                  (##structure-ref
                                                   _pat13850_
                                                   '3
                                                   gx#syntax-pattern::t
                                                   '#f)))
                                             (let ()
                                               (if (fxpositive? _depth13852_)
                                                   (values (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat13850_)
                   (cons (cons _depth13852_ _pat13850_) '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (values (cons 'pattern
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat13850_)
                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (if (gx#identifier? _e13847_)
                                             (values (cons 'term _e13847_) '())
                                             (if (gx#stx-pair? _e13847_)
                                                 (let ((_e1385413861_
                                                        _e13847_))
                                                   (let ((_E1385613865_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _e1385413861_))))
                                                     (let ((_E1385513944_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e1385413861_)
                          (let ((_e1385713869_ (gx#syntax-e _e1385413861_)))
                            (let ((_hd1385813872_ (##car _e1385713869_))
                                  (_tl1385913874_ (##cdr _e1385713869_)))
                              (let ((_hd13877_ _hd1385813872_))
                                (let ((_rest13879_ _tl1385913874_))
                                  (if '#t
                                      (if (_is-e?13848_ _hd13877_)
                                          (let ((_e1388013887_ _rest13879_))
                                            (let ((_E1388213891_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad ellipsis syntax"
                                                      _stx13794_
                                                      _e13847_))))
                                              (let ((_E1388113905_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e1388013887_)
                                                           (let ((_e1388313895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e1388013887_)))
                     (let ((_hd1388413898_ (##car _e1388313895_))
                           (_tl1388513900_ (##cdr _e1388313895_)))
                       (let ((_rest13903_ _hd1388413898_))
                         (if (gx#stx-null? _tl1388513900_)
                             (if '#t
                                 (_recur13842_ _rest13903_ false)
                                 (_E1388213891_))
                             (_E1388213891_)))))
                   (_E1388213891_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E1388113905_)))))
                                          ((letrec ((_lp13909_
                                                     (lambda (_rest13911_
                                                              _depth13912_)
                                                       (let ((_e1391313920_
                                                              _rest13911_))
                                                         (let ((_E1391513924_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (fxpositive? _depth13912_)
                              (_make-splice13841_
                               _e13847_
                               _depth13912_
                               (_recur13842_ _hd13877_ _is-e?13848_)
                               (_recur13842_ _rest13911_ _is-e?13848_))
                              (_make-cons13840_
                               (_recur13842_ _hd13877_ _is-e?13848_)
                               (_recur13842_ _rest13911_ _is-e?13848_))))))
                   (let ((_E1391413940_
                          (lambda ()
                            (if (gx#stx-pair? _e1391313920_)
                                (let ((_e1391613928_
                                       (gx#syntax-e _e1391313920_)))
                                  (let ((_hd1391713931_ (##car _e1391613928_))
                                        (_tl1391813933_ (##cdr _e1391613928_)))
                                    (let ((_rest-hd13936_ _hd1391713931_))
                                      (let ((_rest-tl13938_ _tl1391813933_))
                                        (if '#t
                                            (if (_is-e?13848_ _rest-hd13936_)
                                                (_lp13909_
                                                 _rest-tl13938_
                                                 (fx+ _depth13912_ '1))
                                                (if (fxpositive? _depth13912_)
                                                    (_make-splice13841_
                                                     _e13847_
                                                     _depth13912_
                                                     (_recur13842_
                                                      _hd13877_
                                                      _is-e?13848_)
                                                     (_recur13842_
                                                      _rest13911_
                                                      _is-e?13848_))
                                                    (_make-cons13840_
                                                     (_recur13842_
                                                      _hd13877_
                                                      _is-e?13848_)
                                                     (_recur13842_
                                                      _rest13911_
                                                      _is-e?13848_))))
                                            (_E1391513924_))))))
                                (_E1391513924_)))))
                     (let () (_E1391413940_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _lp13909_)
                                           _rest13879_
                                           '0))
                                      (_E1385613865_))))))
                          (_E1385613865_)))))
               (let () (_E1385513944_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-vector? _e13847_)
                                                     (let ((_g14190_
                                                            (_recur13842_
                                                             (vector->list
                                                              (gx#stx-unwrap__0
                                                               _e13847_))
                                                             _is-e?13848_)))
                                                       (begin
                                                         (let ((_g14191_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g14190_)))
                   (if (not (fx= _g14191_ 2))
                       (error "Context expects 2 values" _g14191_)))
                 (let ((_e13948_ (values-ref _g14190_ 0))
                       (_vars13949_ (values-ref _g14190_ 1)))
                   (values (cons 'vector _e13948_) _vars13949_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-box? _e13847_)
                                                         (let ((_g14192_
                                                                (_recur13842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (unbox (gx#stx-unwrap__0 _e13847_))
                         _is-e?13848_)))
                   (begin
                     (let ((_g14193_ (values-count _g14192_)))
                       (if (not (fx= _g14193_ 2))
                           (error "Context expects 2 values" _g14193_)))
                     (let ((_e13951_ (values-ref _g14192_ 0))
                           (_vars13952_ (values-ref _g14192_ 1)))
                       (values (cons 'box _e13951_) _vars13952_))))
                 (values (cons 'datum _e13847_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       (let ((_g14194_ (_recur13842_ _e13838_ gx#ellipsis?)))
                         (begin
                           (let ((_g14195_ (values-count _g14194_)))
                             (if (not (fx= _g14195_ 2))
                                 (error "Context expects 2 values" _g14195_)))
                           (let ((_tree13844_ (values-ref _g14194_ 0))
                                 (_vars13845_ (values-ref _g14194_ 1)))
                             (if (null? _vars13845_)
                                 _tree13844_
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Missing ellipsis"
                                  _stx13794_
                                  _vars13845_)))))))))))
          (let ((_e1379813808_ _stx13794_))
            (let ((_E1380013812_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _stx13794_))))
              (let ((_E1379913834_
                     (lambda ()
                       (if (gx#stx-pair? _e1379813808_)
                           (let ((_e1380113816_ (gx#syntax-e _e1379813808_)))
                             (let ((_hd1380213819_ (##car _e1380113816_))
                                   (_tl1380313821_ (##cdr _e1380113816_)))
                               (if (gx#stx-pair? _tl1380313821_)
                                   (let ((_e1380413824_
                                          (gx#syntax-e _tl1380313821_)))
                                     (let ((_hd1380513827_
                                            (##car _e1380413824_))
                                           (_tl1380613829_
                                            (##cdr _e1380413824_)))
                                       (let ((_form13832_ _hd1380513827_))
                                         (if (gx#stx-null? _tl1380613829_)
                                             (if '#t
                                                 (gx#stx-wrap-source
                                                  (_generate13796_
                                                   (_parse13797_ _form13832_))
                                                  (gx#stx-source _stx13794_))
                                                 (_E1380013812_))
                                             (_E1380013812_)))))
                                   (_E1380013812_))))
                           (_E1380013812_)))))
                (let () (_E1379913834_)))))))))
  (begin
    (define gx#macro-expand-syntax-case__opt-lambda13064
      (lambda (_stx13066_ _identifier=?13067_ _unwrap-e13068_ _wrap-e13069_)
        (let ((_generate-body13072_
               (lambda (_bindings13616_ _body13617_)
                 ((letrec ((_recur13619_
                            (lambda (_rest13621_)
                              (let ((_rest1362213630_ _rest13621_))
                                (let ((_E1362513634_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest1362213630_))))
                                  (let ((_else1362413638_
                                         (lambda () _body13617_)))
                                    (let ((_K1362613644_
                                           (lambda (_rest13641_ _hd13642_)
                                             (gx#core-list
                                              'let-values
                                              (cons _hd13642_ '())
                                              (_recur13619_ _rest13641_)))))
                                      (if (##pair? _rest1362213630_)
                                          (let ((_hd1362713647_
                                                 (##car _rest1362213630_))
                                                (_tl1362813649_
                                                 (##cdr _rest1362213630_)))
                                            (let ((_hd13652_ _hd1362713647_))
                                              (let ((_rest13654_
                                                     _tl1362813649_))
                                                (_K1362613644_
                                                 _rest13654_
                                                 _hd13652_))))
                                          (_else1362413638_)))))))))
                    _recur13619_)
                  _bindings13616_))))
          (let ((_generate-match13074_
                 (lambda (_where13238_
                          _target13239_
                          _hd13240_
                          _mvars13241_
                          _K13242_
                          _E13243_)
                   (let ((_BUG13245_
                          (lambda (_q13477_)
                            (error '"BUG: syntax-case; generate"
                                   _stx13066_
                                   _hd13240_
                                   _q13477_))))
                     (let ((_splice-rlen13247_
                            (lambda (_e13293_)
                              ((letrec ((_lp13295_
                                         (lambda (_e13297_ _n13298_)
                                           (let ((_e1329913306_ _e13297_))
                                             (let ((_E1330113310_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _e1329913306_))))
                                               (let ((_K1330213319_
                                                      (lambda (_body13313_
                                                               _tag13314_)
                                                        (let ((_$e13316_
                                                               _tag13314_))
                                                          (if (eq? _$e13316_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'splice)
                      (gx#raise-syntax-error
                       '#f
                       '"Ambiguous pattern"
                       _stx13066_
                       _where13238_)
                      (if (eq? _$e13316_ 'cons)
                          (_lp13295_ (cdr _body13313_) (fx+ _n13298_ '1))
                          _n13298_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _e1329913306_)
                                                     (let ((_hd1330313322_
                                                            (##car _e1329913306_))
                                                           (_tl1330413324_
                                                            (##cdr _e1329913306_)))
                                                       (let ((_tag13327_
                                                              _hd1330313322_))
                                                         (let ((_body13329_
                                                                _tl1330413324_))
                                                           (_K1330213319_
                                                            _body13329_
                                                            _tag13327_))))
                                                     (_E1330113310_))))))))
                                 _lp13295_)
                               _e13293_
                               '0))))
                       (let ((_splice-vars13248_
                              (lambda (_e13255_)
                                ((letrec ((_recur13257_
                                           (lambda (_e13259_ _vars13260_)
                                             (let ((_e1326113268_ _e13259_))
                                               (let ((_E1326313272_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _e1326113268_))))
                                                 (let ((_K1326413281_
                                                        (lambda (_body13275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tag13276_)
                  (let ((_$e13278_ _tag13276_))
                    (if (eq? _$e13278_ 'var)
                        (cons _body13275_ _vars13260_)
                        (if (memq _$e13278_ '(cons splice))
                            (_recur13257_
                             (cdr _body13275_)
                             (_recur13257_ (car _body13275_) _vars13260_))
                            (if (memq _$e13278_ '(vector box))
                                (_recur13257_ _body13275_ _vars13260_)
                                _vars13260_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##pair? _e1326113268_)
                                                       (let ((_hd1326513284_
                                                              (##car _e1326113268_))
                                                             (_tl1326613286_
                                                              (##cdr _e1326113268_)))
                                                         (let ((_tag13289_
                                                                _hd1326513284_))
                                                           (let ((_body13291_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1326613286_))
                     (_K1326413281_ _body13291_ _tag13289_))))
               (_E1326313272_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _recur13257_)
                                 _e13255_
                                 '()))))
                         (let ((_make-body13249_
                                (lambda (_vars13251_)
                                  (cons _K13242_
                                        (map (lambda (_mvar13253_)
                                               (assgetq (car _mvar13253_)
                                                        _vars13251_
                                                        _BUG13245_))
                                             _mvars13241_)))))
                           (letrec ((_recur13246_
                                     (lambda (_e13331_
                                              _vars13332_
                                              _target13333_
                                              _E13334_
                                              _k13335_)
                                       (let ((_e1333613343_ _e13331_))
                                         (let ((_E1333813347_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _e1333613343_))))
                                           (let ((_K1333913465_
                                                  (lambda (_body13350_
                                                           _tag13351_)
                                                    (let ((_$e13353_
                                                           _tag13351_))
                                                      (if (eq? _$e13353_ 'any)
                                                          (_k13335_
                                                           _vars13332_)
                                                          (if (eq? _$e13353_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'id)
                      (gx#core-list
                       'if
                       (gx#core-list 'identifier? _target13333_)
                       (gx#core-list
                        'if
                        (gx#core-list
                         _identifier=?13067_
                         (gx#core-list _wrap-e13069_ _body13350_)
                         _target13333_)
                        (_k13335_ _vars13332_)
                        _E13334_)
                       _E13334_)
                      (if (eq? _$e13353_ 'var)
                          (_k13335_
                           (cons (cons _body13350_ _target13333_) _vars13332_))
                          (if (eq? _$e13353_ 'cons)
                              (let ((_$e13356_ (gx#genident__1 'e))
                                    (_$hd13357_ (gx#genident__1 'hd))
                                    (_$tl13358_ (gx#genident__1 'tl)))
                                (gx#core-list
                                 'if
                                 (gx#core-list 'stx-pair? _target13333_)
                                 (gx#core-list
                                  'let-values
                                  (cons (cons (cons _$e13356_ '())
                                              (cons (gx#core-list
                                                     _unwrap-e13068_
                                                     _target13333_)
                                                    '()))
                                        '())
                                  (gx#core-list
                                   'let-values
                                   (cons (cons (cons _$hd13357_ '())
                                               (cons (gx#core-list
                                                      '##car
                                                      _$e13356_)
                                                     '()))
                                         (cons (cons (cons _$tl13358_ '())
                                                     (cons (gx#core-list
                                                            '##cdr
                                                            _$e13356_)
                                                           '()))
                                               '()))
                                   (let ((_body1335913366_ _body13350_))
                                     (let ((_E1336113370_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _body1335913366_))))
                                       (let ((_K1336213378_
                                              (lambda (_tl13373_ _hd13374_)
                                                (_recur13246_
                                                 _hd13374_
                                                 _vars13332_
                                                 _$hd13357_
                                                 _E13334_
                                                 (lambda (_vars13376_)
                                                   (_recur13246_
                                                    _tl13373_
                                                    _vars13376_
                                                    _$tl13358_
                                                    _E13334_
                                                    _k13335_))))))
                                         (if (##pair? _body1335913366_)
                                             (let ((_hd1336313381_
                                                    (##car _body1335913366_))
                                                   (_tl1336413383_
                                                    (##cdr _body1335913366_)))
                                               (let ((_hd13386_
                                                      _hd1336313381_))
                                                 (let ((_tl13388_
                                                        _tl1336413383_))
                                                   (_K1336213378_
                                                    _tl13388_
                                                    _hd13386_))))
                                             (_E1336113370_)))))))
                                 _E13334_))
                              (if (eq? _$e13353_ 'splice)
                                  (let ((_body1338913396_ _body13350_))
                                    (let ((_E1339113400_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _body1338913396_))))
                                      (let ((_K1339213449_
                                             (lambda (_tl13403_ _hd13404_)
                                               (let ((_rlen13406_
                                                      (_splice-rlen13247_
                                                       _tl13403_)))
                                                 (let ((_$target13408_
                                                        (gx#genident__1
                                                         'target)))
                                                   (let ((_$hd13410_
                                                          (gx#genident__1
                                                           'hd)))
                                                     (let ((_$tl13412_
                                                            (gx#genident__1
                                                             'tl)))
                                                       (let ((_$lp13414_
                                                              (gx#genident__1
                                                               'loop)))
                                                         (let ((_$lp-e13416_
                                                                (gx#genident__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'e)))
                   (let ((_$lp-hd13418_ (gx#genident__1 'lp-hd)))
                     (let ((_$lp-tl13420_ (gx#genident__1 'lp-tl)))
                       (let ((_svars13422_ (_splice-vars13248_ _hd13404_)))
                         (let ((_lvars13424_ (gx#gentemps _svars13422_)))
                           (let ((_tlvars13426_ (gx#gentemps _svars13422_)))
                             (let ((_linit13430_
                                    (map (lambda (_var13428_)
                                           (gx#core-list 'quote '()))
                                         _lvars13424_)))
                               (let ()
                                 (let ((_make-loop13433_
                                        (lambda (_vars13435_)
                                          (gx#core-list
                                           'letrec-values
                                           (cons (cons (cons _$lp13414_ '())
                                                       (cons (gx#core-list
                                                              'lambda%
                                                              (cons _$hd13410_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _lvars13424_)
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _$hd13410_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$lp-e13416_ '())
                                    (cons (gx#core-list
                                           _unwrap-e13068_
                                           _$hd13410_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$lp-hd13418_ '())
                                     (cons (gx#core-list '##car _$lp-e13416_)
                                           '()))
                               (cons (cons (cons _$lp-tl13420_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$lp-e13416_)
                                                 '()))
                                     '()))
                         (_recur13246_
                          _hd13404_
                          '()
                          _$lp-hd13418_
                          _E13334_
                          (lambda (_hdvars13437_)
                            (cons* _$lp13414_
                                   _$lp-tl13420_
                                   (map (lambda (_svar13439_ _lvar13440_)
                                          (gx#core-list
                                           'cons
                                           (assgetq _svar13439_
                                                    _hdvars13437_
                                                    _BUG13245_)
                                           _lvar13440_))
                                        _svars13422_
                                        _lvars13424_))))))
                       (gx#core-list
                        'let-values
                        (map (lambda (_lvar13442_ _tlvar13443_)
                               (cons (cons _tlvar13443_ '())
                                     (cons (gx#core-list 'reverse _lvar13442_)
                                           '())))
                             _lvars13424_
                             _tlvars13426_)
                        (_k13335_
                         (foldl (lambda (_svar13445_ _tlvar13446_ _r13447_)
                                  (cons (cons _svar13445_ _tlvar13446_)
                                        _r13447_))
                                _vars13435_
                                _svars13422_
                                _tlvars13426_)))))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons* _$lp13414_
                                                  _$target13408_
                                                  _linit13430_)))))
                                   (gx#core-list
                                    'if
                                    (gx#core-list
                                     'stx-pair/null?
                                     _target13333_)
                                    (gx#core-list
                                     'if
                                     (gx#core-list
                                      'fx>=
                                      (gx#core-list 'stx-length _target13333_)
                                      _rlen13406_)
                                     (gx#core-list
                                      'let-values
                                      (cons (cons (cons _$target13408_
                                                        (cons _$tl13412_ '()))
                                                  (cons (gx#core-list
                                                         'syntax-split-splice
                                                         _target13333_
                                                         _rlen13406_)
                                                        '()))
                                            '())
                                      (_recur13246_
                                       _tl13403_
                                       _vars13332_
                                       _$tl13412_
                                       _E13334_
                                       _make-loop13433_))
                                     _E13334_)
                                    _E13334_))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _body1338913396_)
                                            (let ((_hd1339313452_
                                                   (##car _body1338913396_))
                                                  (_tl1339413454_
                                                   (##cdr _body1338913396_)))
                                              (let ((_hd13457_ _hd1339313452_))
                                                (let ((_tl13459_
                                                       _tl1339413454_))
                                                  (_K1339213449_
                                                   _tl13459_
                                                   _hd13457_))))
                                            (_E1339113400_)))))
                                  (if (eq? _$e13353_ 'null)
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-null? _target13333_)
                                       (_k13335_ _vars13332_)
                                       _E13334_)
                                      (if (eq? _$e13353_ 'vector)
                                          (let ((_$e13461_
                                                 (gx#genident__1 'e)))
                                            (gx#core-list
                                             'if
                                             (gx#core-list
                                              'stx-vector?
                                              _target13333_)
                                             (gx#core-list
                                              'let-values
                                              (cons (cons (cons _$e13461_ '())
                                                          (cons (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'vector->list
                         (gx#core-list _unwrap-e13068_ _target13333_))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (_recur13246_
                                               _body13350_
                                               _vars13332_
                                               _$e13461_
                                               _E13334_
                                               _k13335_))
                                             _E13334_))
                                          (if (eq? _$e13353_ 'box)
                                              (let ((_$e13463_
                                                     (gx#genident__1 'e)))
                                                (gx#core-list
                                                 'if
                                                 (gx#core-list
                                                  'stx-box?
                                                  _target13333_)
                                                 (gx#core-list
                                                  'let-values
                                                  (cons (cons (cons _$e13463_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (gx#core-list
                             'unbox
                             (gx#core-list _unwrap-e13068_ _target13333_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur13246_
                                                   _body13350_
                                                   _vars13332_
                                                   _$e13463_
                                                   _E13334_
                                                   _k13335_))
                                                 _E13334_))
                                              (if (eq? _$e13353_ 'datum)
                                                  (gx#core-list
                                                   'if
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target13333_)
                                                   (gx#core-list
                                                    'if
                                                    (gx#core-list
                                                     'equal?
                                                     (gx#core-list
                                                      'stx-e
                                                      _target13333_)
                                                     _body13350_)
                                                    (_k13335_ _vars13332_)
                                                    _E13334_)
                                                   _E13334_)
                                                  (_BUG13245_
                                                   _e13331_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _e1333613343_)
                                                 (let ((_hd1334013468_
                                                        (##car _e1333613343_))
                                                       (_tl1334113470_
                                                        (##cdr _e1333613343_)))
                                                   (let ((_tag13473_
                                                          _hd1334013468_))
                                                     (let ((_body13475_
                                                            _tl1334113470_))
                                                       (_K1333913465_
                                                        _body13475_
                                                        _tag13473_))))
                                                 (_E1333813347_))))))))
                             (_recur13246_
                              _hd13240_
                              '()
                              _target13239_
                              _E13243_
                              _make-body13249_)))))))))
            (let ((_parse-clause13075_
                   (lambda (_hd13144_ _ids13145_)
                     ((letrec ((_recur13147_
                                (lambda (_e13149_ _vars13150_ _depth13151_)
                                  (if (gx#identifier? _e13149_)
                                      (if (gx#underscore? _e13149_)
                                          (values '(any) _vars13150_)
                                          (if (gx#ellipsis? _e13149_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Misplaced ellipsis"
                                               _stx13066_
                                               _hd13144_)
                                              (if (find (lambda (_id13153_)
                                                          (gx#bound-identifier=?
                                                           _e13149_
                                                           _id13153_))
                                                        _ids13145_)
                                                  (values (cons 'id _e13149_)
                                                          _vars13150_)
                                                  (if (find (lambda (_var13155_)
                                                              (gx#bound-identifier=?
                                                               _e13149_
                                                               (car _var13155_)))
                                                            _vars13150_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Duplicate pattern variable"
                                                       _stx13066_
                                                       _e13149_)
                                                      (values (cons 'var
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _e13149_)
                      (cons (cons _e13149_ _depth13151_) _vars13150_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _e13149_)
                                          (let ((_e1315613163_ _e13149_))
                                            (let ((_E1315813167_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _e1315613163_))))
                                              (let ((_E1315713228_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e1315613163_)
                                                           (let ((_e1315913171_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e1315613163_)))
                     (let ((_hd1316013174_ (##car _e1315913171_))
                           (_tl1316113176_ (##cdr _e1315913171_)))
                       (let ((_hd13179_ _hd1316013174_))
                         (let ((_rest13181_ _tl1316113176_))
                           (if '#t
                               (let ((_make-pair13196_
                                      (lambda (_tag13183_ _hd13184_ _tl13185_)
                                        (let ((_hd-depth13187_
                                               (if (eq? _tag13183_ 'splice)
                                                   (fx+ _depth13151_ '1)
                                                   _depth13151_)))
                                          (let ((_g14206_
                                                 (_recur13147_
                                                  _hd13184_
                                                  _vars13150_
                                                  _hd-depth13187_)))
                                            (begin
                                              (let ((_g14207_
                                                     (values-count _g14206_)))
                                                (if (not (fx= _g14207_ 2))
                                                    (error "Context expects 2 values"
                                                           _g14207_)))
                                              (let ((_hd13189_
                                                     (values-ref _g14206_ 0))
                                                    (_vars13190_
                                                     (values-ref _g14206_ 1)))
                                                (let ((_g14208_
                                                       (_recur13147_
                                                        _tl13185_
                                                        _vars13190_
                                                        _depth13151_)))
                                                  (begin
                                                    (let ((_g14209_
                                                           (values-count
                                                            _g14208_)))
                                                      (if (not (fx= _g14209_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g14209_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_tl13192_
                                                           (values-ref
                                                            _g14208_
                                                            0))
                                                          (_vars13193_
                                                           (values-ref
                                                            _g14208_
                                                            1)))
                                                      (let ()
                                                        (values (cons* _tag13183_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd13189_
                               _tl13192_)
                        _vars13193_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (let ((_e1319713204_ _rest13181_))
                                   (let ((_E1319913208_
                                          (lambda ()
                                            (_make-pair13196_
                                             'cons
                                             _hd13179_
                                             _rest13181_))))
                                     (let ((_E1319813224_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1319713204_)
                                                  (let ((_e1320013212_
                                                         (gx#syntax-e
                                                          _e1319713204_)))
                                                    (let ((_hd1320113215_
                                                           (##car _e1320013212_))
                                                          (_tl1320213217_
                                                           (##cdr _e1320013212_)))
                                                      (let ((_rest-hd13220_
                                                             _hd1320113215_))
                                                        (let ((_rest-tl13222_
                                                               _tl1320213217_))
                                                          (if '#t
                                                              (if (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest-hd13220_)
                          (_make-pair13196_ 'splice _hd13179_ _rest-tl13222_)
                          (_make-pair13196_ 'cons _hd13179_ _rest13181_))
                      (_E1319913208_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1319913208_)))))
                                       (let () (_E1319813224_))))))
                               (_E1315813167_))))))
                   (_E1315813167_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E1315713228_)))))
                                          (if (gx#stx-null? _e13149_)
                                              (values '(null) _vars13150_)
                                              (if (gx#stx-vector? _e13149_)
                                                  (let ((_g14210_
                                                         (_recur13147_
                                                          (vector->list
                                                           (gx#syntax-e
                                                            _e13149_))
                                                          _vars13150_
                                                          _depth13151_)))
                                                    (begin
                                                      (let ((_g14211_
                                                             (values-count
                                                              _g14210_)))
                                                        (if (not (fx= _g14211_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g14211_)))
              (let ((_e13232_ (values-ref _g14210_ 0))
                    (_vars13233_ (values-ref _g14210_ 1)))
                (values (cons 'vector _e13232_) _vars13233_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e13149_)
                                                      (let ((_g14212_
                                                             (_recur13147_
                                                              (unbox (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e13149_))
                      _vars13150_
                      _depth13151_)))
                (begin
                  (let ((_g14213_ (values-count _g14212_)))
                    (if (not (fx= _g14213_ 2))
                        (error "Context expects 2 values" _g14213_)))
                  (let ((_e13235_ (values-ref _g14212_ 0))
                        (_vars13236_ (values-ref _g14212_ 1)))
                    (values (cons 'box _e13235_) _vars13236_))))
              (if (gx#stx-datum? _e13149_)
                  (values (cons 'datum (gx#stx-e _e13149_)) _vars13150_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad pattern"
                   _stx13066_
                   _e13149_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        _recur13147_)
                      _hd13144_
                      '()
                      '0))))
              (let ((_generate-clause13073_
                     (lambda (_target13479_ _ids13480_ _clause13481_ _E13482_)
                       (let ((_generate113484_
                              (lambda (_hd13571_ _fender13572_ _body13573_)
                                (let ((_g14204_
                                       (_parse-clause13075_
                                        _hd13571_
                                        _ids13480_)))
                                  (begin
                                    (let ((_g14205_ (values-count _g14204_)))
                                      (if (not (fx= _g14205_ 2))
                                          (error "Context expects 2 values"
                                                 _g14205_)))
                                    (let ((_e13575_ (values-ref _g14204_ 0))
                                          (_mvars13576_
                                           (values-ref _g14204_ 1)))
                                      (let ((_pvars13578_
                                             (map gx#syntax-local-rewrap
                                                  (gx#gentemps _mvars13576_))))
                                        (let ((_E13580_
                                               (cons _E13482_
                                                     (cons _target13479_
                                                           '()))))
                                          (let ((_K13613_
                                                 (gx#core-list
                                                  'lambda%
                                                  _pvars13578_
                                                  (gx#core-list
                                                   'let-syntax
                                                   (map (lambda (_mvar13582_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pvar13583_)
                  (let ((_mvar1358413591_ _mvar13582_))
                    (let ((_E1358613595_
                           (lambda ()
                             (error '"No clause matching" _mvar1358413591_))))
                      (let ((_K1358713601_
                             (lambda (_depth13598_ _id13599_)
                               (cons _id13599_
                                     (cons (gx#core-list
                                            'make-syntax-pattern
                                            (gx#core-list 'quote _id13599_)
                                            (gx#core-list 'quote _pvar13583_)
                                            _depth13598_)
                                           '())))))
                        (if (##pair? _mvar1358413591_)
                            (let ((_hd1358813604_ (##car _mvar1358413591_))
                                  (_tl1358913606_ (##cdr _mvar1358413591_)))
                              (let ((_id13609_ _hd1358813604_))
                                (let ((_depth13611_ _tl1358913606_))
                                  (_K1358713601_ _depth13611_ _id13609_))))
                            (_E1358613595_))))))
                _mvars13576_
                _pvars13578_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (eq? _fender13572_ '#t)
                                                       _body13573_
                                                       (gx#core-list
                                                        'if
                                                        _fender13572_
                                                        _body13573_
                                                        _E13580_))))))
                                            (let ()
                                              (_generate-match13074_
                                               _hd13571_
                                               _target13479_
                                               _e13575_
                                               _mvars13576_
                                               _K13613_
                                               _E13580_)))))))))))
                         (let ((_e1348513505_ _clause13481_))
                           (let ((_E1349413509_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _e1348513505_))))
                             (let ((_E1348713543_
                                    (lambda ()
                                      (if (gx#stx-pair? _e1348513505_)
                                          (let ((_e1349513513_
                                                 (gx#syntax-e _e1348513505_)))
                                            (let ((_hd1349613516_
                                                   (##car _e1349513513_))
                                                  (_tl1349713518_
                                                   (##cdr _e1349513513_)))
                                              (let ((_hd13521_ _hd1349613516_))
                                                (if (gx#stx-pair?
                                                     _tl1349713518_)
                                                    (let ((_e1349813523_
                                                           (gx#syntax-e
                                                            _tl1349713518_)))
                                                      (let ((_hd1349913526_
                                                             (##car _e1349813523_))
                                                            (_tl1350013528_
                                                             (##cdr _e1349813523_)))
                                                        (let ((_fender13531_
                                                               _hd1349913526_))
                                                          (if (gx#stx-pair?
                                                               _tl1350013528_)
                                                              (let ((_e1350113533_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1350013528_)))
                        (let ((_hd1350213536_ (##car _e1350113533_))
                              (_tl1350313538_ (##cdr _e1350113533_)))
                          (let ((_body13541_ _hd1350213536_))
                            (if (gx#stx-null? _tl1350313538_)
                                (if '#t
                                    (_generate113484_
                                     _hd13521_
                                     _fender13531_
                                     _body13541_)
                                    (_E1349413509_))
                                (_E1349413509_)))))
                      (_E1349413509_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1349413509_)))))
                                          (_E1349413509_)))))
                               (let ((_E1348613567_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1348513505_)
                                            (let ((_e1348813547_
                                                   (gx#syntax-e
                                                    _e1348513505_)))
                                              (let ((_hd1348913550_
                                                     (##car _e1348813547_))
                                                    (_tl1349013552_
                                                     (##cdr _e1348813547_)))
                                                (let ((_hd13555_
                                                       _hd1348913550_))
                                                  (if (gx#stx-pair?
                                                       _tl1349013552_)
                                                      (let ((_e1349113557_
                                                             (gx#syntax-e
                                                              _tl1349013552_)))
                                                        (let ((_hd1349213560_
                                                               (##car _e1349113557_))
                                                              (_tl1349313562_
                                                               (##cdr _e1349113557_)))
                                                          (let ((_body13565_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1349213560_))
                    (if (gx#stx-null? _tl1349313562_)
                        (if '#t
                            (_generate113484_ _hd13555_ '#t _body13565_)
                            (_E1348713543_))
                        (_E1348713543_)))))
              (_E1348713543_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1348713543_)))))
                                 (let () (_E1348613567_))))))))))
                (let ((_generate-bindings13071_
                       (lambda (_target13656_
                                _ids13657_
                                _clauses13658_
                                _clause-ids13659_
                                _E13660_)
                         (let ((_generate113662_
                                (lambda (_clause13761_
                                         _clause-id13762_
                                         _E13763_)
                                  (cons (cons _clause-id13762_ '())
                                        (cons (gx#core-list
                                               'lambda%
                                               (cons _target13656_ '())
                                               (_generate-clause13073_
                                                _target13656_
                                                _ids13657_
                                                _clause13761_
                                                _E13763_))
                                              '())))))
                           ((letrec ((_lp13664_
                                      (lambda (_rest13666_
                                               _rest-ids13667_
                                               _bindings13668_)
                                        (let ((_rest1366913677_ _rest13666_))
                                          (let ((_E1367213681_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _rest1366913677_))))
                                            (let ((_else1367113685_
                                                   (lambda ()
                                                     _bindings13668_)))
                                              (let ((_K1367313749_
                                                     (lambda (_rest13688_
                                                              _clause13689_)
                                                       (let ((_rest-ids1369013697_
                                                              _rest-ids13667_))
                                                         (let ((_E1369213701_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (error '"No clause matching" _rest-ids1369013697_))))
                   (let ((_K1369313737_
                          (lambda (_rest-ids13704_ _clause-id13705_)
                            (let ((_rest-ids1370613714_ _rest-ids13704_))
                              (let ((_E1370913718_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _rest-ids1370613714_))))
                                (let ((_else1370813722_
                                       (lambda ()
                                         (cons (_generate113662_
                                                _clause13689_
                                                _clause-id13705_
                                                _E13660_)
                                               _bindings13668_))))
                                  (let ((_K1371013727_
                                         (lambda (_next-clause-id13725_)
                                           (_lp13664_
                                            _rest13688_
                                            _rest-ids13704_
                                            (cons (_generate113662_
                                                   _clause13689_
                                                   _clause-id13705_
                                                   _next-clause-id13725_)
                                                  _bindings13668_)))))
                                    (if (##pair? _rest-ids1370613714_)
                                        (let ((_hd1371113730_
                                               (##car _rest-ids1370613714_))
                                              (_tl1371213732_
                                               (##cdr _rest-ids1370613714_)))
                                          (let ((_next-clause-id13735_
                                                 _hd1371113730_))
                                            (_K1371013727_
                                             _next-clause-id13735_)))
                                        (_else1370813722_)))))))))
                     (if (##pair? _rest-ids1369013697_)
                         (let ((_hd1369413740_ (##car _rest-ids1369013697_))
                               (_tl1369513742_ (##cdr _rest-ids1369013697_)))
                           (let ((_clause-id13745_ _hd1369413740_))
                             (let ((_rest-ids13747_ _tl1369513742_))
                               (_K1369313737_
                                _rest-ids13747_
                                _clause-id13745_))))
                         (_E1369213701_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (##pair? _rest1366913677_)
                                                    (let ((_hd1367413752_
                                                           (##car _rest1366913677_))
                                                          (_tl1367513754_
                                                           (##cdr _rest1366913677_)))
                                                      (let ((_clause13757_
                                                             _hd1367413752_))
                                                        (let ((_rest13759_
                                                               _tl1367513754_))
                                                          (_K1367313749_
                                                           _rest13759_
                                                           _clause13757_))))
                                                    (_else1367113685_)))))))))
                              _lp13664_)
                            _clauses13658_
                            _clause-ids13659_
                            '())))))
                  (let ((_e1307613089_ _stx13066_))
                    (let ((_E1307813093_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e1307613089_))))
                      (let ((_E1307713140_
                             (lambda ()
                               (if (gx#stx-pair? _e1307613089_)
                                   (let ((_e1307913097_
                                          (gx#syntax-e _e1307613089_)))
                                     (let ((_hd1308013100_
                                            (##car _e1307913097_))
                                           (_tl1308113102_
                                            (##cdr _e1307913097_)))
                                       (if (gx#stx-pair? _tl1308113102_)
                                           (let ((_e1308213105_
                                                  (gx#syntax-e
                                                   _tl1308113102_)))
                                             (let ((_hd1308313108_
                                                    (##car _e1308213105_))
                                                   (_tl1308413110_
                                                    (##cdr _e1308213105_)))
                                               (let ((_expr13113_
                                                      _hd1308313108_))
                                                 (if (gx#stx-pair?
                                                      _tl1308413110_)
                                                     (let ((_e1308513115_
                                                            (gx#syntax-e
                                                             _tl1308413110_)))
                                                       (let ((_hd1308613118_
                                                              (##car _e1308513115_))
                                                             (_tl1308713120_
                                                              (##cdr _e1308513115_)))
                                                         (let ((_ids13123_
                                                                _hd1308613118_))
                                                           (let ((_clauses13125_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1308713120_))
                     (if '#t
                         (if (not (gx#identifier-list? _ids13123_))
                             (gx#raise-syntax-error
                              '#f
                              '"Bad template identifier list"
                              _stx13066_
                              _ids13123_)
                             (if (not (gx#stx-list? _clauses13125_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _stx13066_)
                                 (let ((_ids13127_
                                        (gx#syntax->list _ids13123_)))
                                   (let ((_clauses13129_
                                          (gx#syntax->list _clauses13125_)))
                                     (let ((_clause-ids13131_
                                            (gx#gentemps _clauses13129_)))
                                       (let ((_E13133_ (gx#genident__0)))
                                         (let ((_target13135_
                                                (gx#genident__0)))
                                           (let ((_first13137_
                                                  (if (null? _clauses13129_)
                                                      _E13133_
                                                      (car _clause-ids13131_))))
                                             (let ()
                                               (gx#stx-wrap-source
                                                (gx#core-list
                                                 'let-values
                                                 (cons (cons (cons _E13133_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _target13135_ '())
                            (gx#core-list
                             'raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _target13135_))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_generate-body13072_
                                                  (_generate-bindings13071_
                                                   _target13135_
                                                   _ids13127_
                                                   _clauses13129_
                                                   _clause-ids13131_
                                                   _E13133_)
                                                  (cons _first13137_
                                                        (cons _expr13113_
                                                              '()))))
                                                (gx#stx-source
                                                 _stx13066_)))))))))))
                         (_E1307813093_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1307813093_)))))
                                           (_E1307813093_))))
                                   (_E1307813093_)))))
                        (let () (_E1307713140_))))))))))))
    (begin
      (define gx#macro-expand-syntax-case__0
        (lambda (_stx13768_)
          (let ((_identifier=?13770_ 'free-identifier=?))
            (let ((_unwrap-e13772_ 'syntax-e))
              (let ((_wrap-e13774_ 'quote-syntax))
                (gx#macro-expand-syntax-case__opt-lambda13064
                 _stx13768_
                 _identifier=?13770_
                 _unwrap-e13772_
                 _wrap-e13774_))))))
      (define gx#macro-expand-syntax-case__1
        (lambda (_stx13776_ _identifier=?13777_)
          (let ((_unwrap-e13779_ 'syntax-e))
            (let ((_wrap-e13781_ 'quote-syntax))
              (gx#macro-expand-syntax-case__opt-lambda13064
               _stx13776_
               _identifier=?13777_
               _unwrap-e13779_
               _wrap-e13781_)))))
      (define gx#macro-expand-syntax-case__2
        (lambda (_stx13783_ _identifier=?13784_ _unwrap-e13785_)
          (let ((_wrap-e13787_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda13064
             _stx13783_
             _identifier=?13784_
             _unwrap-e13785_
             _wrap-e13787_))))
      (define gx#macro-expand-syntax-case
        (lambda _g14215_
          (let ((_g14214_ (length _g14215_)))
            (cond ((fx= _g14214_ 1)
                   (apply gx#macro-expand-syntax-case__0 _g14215_))
                  ((fx= _g14214_ 2)
                   (apply gx#macro-expand-syntax-case__1 _g14215_))
                  ((fx= _g14214_ 3)
                   (apply gx#macro-expand-syntax-case__2 _g14215_))
                  ((fx= _g14214_ 4)
                   (apply gx#macro-expand-syntax-case__opt-lambda13064
                          _g14215_))
                  (else (error "No clause matching arguments" _g14215_))))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx13063_)
      (if (gx#identifier? _stx13063_)
          (##structure-instance-of?
           (gx#syntax-local-e__opt-lambda4057 _stx13063_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd13021_ . _rest13022_)
      (let ((_len13024_ (length _hd13021_)))
        ((letrec ((_lp13026_
                   (lambda (_rest13028_)
                     (let ((_rest1302913037_ _rest13028_))
                       (let ((_E1303213041_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1302913037_))))
                         (let ((_else1303113045_ (lambda () '#!void)))
                           (let ((_K1303313051_
                                  (lambda (_rest13048_ _hd13049_)
                                    (if (fx= _len13024_ (length _hd13049_))
                                        (_lp13026_ _rest13048_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Splice length mismatch"
                                         _hd13049_)))))
                             (if (##pair? _rest1302913037_)
                                 (let ((_hd1303413054_
                                        (##car _rest1302913037_))
                                       (_tl1303513056_
                                        (##cdr _rest1302913037_)))
                                   (let ((_hd13059_ _hd1303413054_))
                                     (let ((_rest13061_ _tl1303513056_))
                                       (_K1303313051_ _rest13061_ _hd13059_))))
                                 (_else1303113045_)))))))))
           _lp13026_)
         _rest13022_))))
  (define gx#syntax-split-splice
    (lambda (_stx12979_ _n12980_)
      ((letrec ((_lp12982_
                 (lambda (_rest12984_ _r12985_)
                   (if (gx#stx-pair? _rest12984_)
                       (let ((_g1298612993_ (gx#syntax-e _rest12984_)))
                         (let ((_E1298812997_
                                (lambda ()
                                  (error '"No clause matching"
                                         _g1298612993_))))
                           (let ((_K1298913003_
                                  (lambda (_rest13000_ _hd13001_)
                                    (_lp12982_
                                     _rest13000_
                                     (cons _hd13001_ _r12985_)))))
                             (if (##pair? _g1298612993_)
                                 (let ((_hd1299013006_ (##car _g1298612993_))
                                       (_tl1299113008_ (##cdr _g1298612993_)))
                                   (let ((_hd13011_ _hd1299013006_))
                                     (let ((_rest13013_ _tl1299113008_))
                                       (_K1298913003_ _rest13013_ _hd13011_))))
                                 (_E1298812997_)))))
                       ((letrec ((_lp13015_
                                  (lambda (_n13017_ _l13018_ _r13019_)
                                    (if (null? _l13018_)
                                        (values _l13018_ _r13019_)
                                        (if (fxpositive? _n13017_)
                                            (_lp13015_
                                             (fx- _n13017_ '1)
                                             (cdr _l13018_)
                                             (cons (car _l13018_) _r13019_))
                                            (values (reverse _l13018_)
                                                    _r13019_))))))
                          _lp13015_)
                        _n12980_
                        _r12985_
                        _rest12984_)))))
         _lp12982_)
       _stx12979_
       '()))))
