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
    (lambda _$args14242_
      (apply make-struct-instance gx#syntax-pattern::t _$args14242_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self14239_ _stx14240_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx14240_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx13848_)
      (let ((_generate13850_
             (lambda (_e14077_)
               (let ((_BUG14079_
                      (lambda (_q14237_)
                        (error '"BUG: syntax; generate"
                               _stx13848_
                               _e14077_
                               _q14237_))))
                 (let ((_local-pattern-e14080_
                        (lambda (_pat14235_)
                          (gx#syntax-local-rewrap
                           (##structure-ref
                            _pat14235_
                            '2
                            gx#syntax-pattern::t
                            '#f)))))
                   (let ((_getvar14081_
                          (lambda (_q14232_ _vars14233_)
                            (assgetq _q14232_ _vars14233_ _BUG14079_))))
                     (let ((_getarg14082_
                            (lambda (_arg14198_ _vars14199_)
                              (let ((_arg1420014207_ _arg14198_))
                                (let ((_E1420214211_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _arg1420014207_))))
                                  (let ((_K1420314220_
                                         (lambda (_e14214_ _tag14215_)
                                           (let ((_$e14217_ _tag14215_))
                                             (if (eq? _$e14217_ 'ref)
                                                 (_getvar14081_
                                                  _e14214_
                                                  _vars14199_)
                                                 (if (eq? _$e14217_ 'pattern)
                                                     (_local-pattern-e14080_
                                                      _e14214_)
                                                     (_BUG14079_
                                                      _arg14198_)))))))
                                    (if (##pair? _arg1420014207_)
                                        (let ((_hd1420414223_
                                               (##car _arg1420014207_))
                                              (_tl1420514225_
                                               (##cdr _arg1420014207_)))
                                          (let ((_tag14228_ _hd1420414223_))
                                            (let ((_e14230_ _tl1420514225_))
                                              (_K1420314220_
                                               _e14230_
                                               _tag14228_))))
                                        (_E1420214211_))))))))
                       ((letrec ((_recur14084_
                                  (lambda (_e14086_ _vars14087_)
                                    (let ((_e1408814095_ _e14086_))
                                      (let ((_E1409014099_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _e1408814095_))))
                                        (let ((_K1409114186_
                                               (lambda (_body14102_ _tag14103_)
                                                 (let ((_$e14105_ _tag14103_))
                                                   (if (eq? _$e14105_ 'datum)
                                                       (gx#core-list
                                                        'quote
                                                        _body14102_)
                                                       (if (eq? _$e14105_
                                                                'term)
                                                           (gx#core-list
                                                            'datum->syntax
                                                            '#f
                                                            (gx#core-list
                                                             'quote
                                                             _body14102_))
                                                           (if (eq? _$e14105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'pattern)
                       (_local-pattern-e14080_ _body14102_)
                       (if (eq? _$e14105_ 'ref)
                           (_getvar14081_ _body14102_ _vars14087_)
                           (if (eq? _$e14105_ 'cons)
                               (gx#core-list
                                'cons
                                (_recur14084_ (car _body14102_) _vars14087_)
                                (_recur14084_ (cdr _body14102_) _vars14087_))
                               (if (eq? _$e14105_ 'vector)
                                   (gx#core-list
                                    'list->vector
                                    (_recur14084_ _body14102_ _vars14087_))
                                   (if (eq? _$e14105_ 'box)
                                       (gx#core-list
                                        'box
                                        (_recur14084_ _body14102_ _vars14087_))
                                       (if (eq? _$e14105_ 'splice)
                                           (let ((_body1410714118_
                                                  _body14102_))
                                             (let ((_E1410914122_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _body1410714118_))))
                                               (let ((_K1411014160_
                                                      (lambda (_args14125_
                                                               _iv14126_
                                                               _hd14127_
                                                               _depth14128_)
                                                        (let ((_targets14134_
                                                               (map (lambda (_g1412914131_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_getarg14082_ _g1412914131_ _vars14087_))
                            _args14125_)))
                  (let ((_fold-in14136_ (gx#gentemps _args14125_)))
                    (let ((_fold-out14138_ (gx#genident__0)))
                      (let ((_lambda-args14140_
                             (foldr1 cons
                                     (cons _fold-out14138_ '())
                                     _fold-in14136_)))
                        (let ((_lambda-body14157_
                               (if (fx> _depth14128_ '1)
                                   (let ((_r-args14148_
                                          (map (lambda (_arg14142_)
                                                 (cons 'ref (cdr _arg14142_)))
                                               _args14125_))
                                         (_r-vars14149_
                                          (foldr (lambda (_arg14144_
                                                          _var14145_
                                                          _r14146_)
                                                   (cons (cons (cdr _arg14144_)
                                                               _var14145_)
                                                         _r14146_))
                                                 _vars14087_
                                                 _args14125_
                                                 _fold-in14136_)))
                                     (_recur14084_
                                      (cons* 'splice
                                             (fx- _depth14128_ '1)
                                             _hd14127_
                                             (cons 'var _fold-out14138_)
                                             _r-args14148_)
                                      _r-vars14149_))
                                   (let ((_hd-vars14155_
                                          (foldr (lambda (_arg14151_
                                                          _var14152_
                                                          _r14153_)
                                                   (cons (cons (cdr _arg14151_)
                                                               _var14152_)
                                                         _r14153_))
                                                 _vars14087_
                                                 _args14125_
                                                 _fold-in14136_)))
                                     (gx#core-list
                                      'cons
                                      (_recur14084_ _hd14127_ _hd-vars14155_)
                                      _fold-out14138_)))))
                          (let ()
                            (gx#core-list
                             'begin
                             (if (fx> (length _targets14134_) '1)
                                 (gx#core-cons*
                                  'syntax-check-splice-targets
                                  _targets14134_)
                                 '#!void)
                             (gx#core-cons*
                              'foldr
                              (gx#core-list
                               'lambda%
                               _lambda-args14140_
                               _lambda-body14157_)
                              (_recur14084_ _iv14126_ _vars14087_)
                              _targets14134_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _body1410714118_)
                                                     (let ((_hd1411114163_
                                                            (##car _body1410714118_))
                                                           (_tl1411214165_
                                                            (##cdr _body1410714118_)))
                                                       (let ((_depth14168_
                                                              _hd1411114163_))
                                                         (if (##pair? _tl1411214165_)
                                                             (let ((_hd1411314170_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##car _tl1411214165_))
                           (_tl1411414172_ (##cdr _tl1411214165_)))
                       (let ((_hd14175_ _hd1411314170_))
                         (if (##pair? _tl1411414172_)
                             (let ((_hd1411514177_ (##car _tl1411414172_))
                                   (_tl1411614179_ (##cdr _tl1411414172_)))
                               (let ((_iv14182_ _hd1411514177_))
                                 (let ((_args14184_ _tl1411614179_))
                                   (_K1411014160_
                                    _args14184_
                                    _iv14182_
                                    _hd14175_
                                    _depth14168_))))
                             (_E1410914122_))))
                     (_E1410914122_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1410914122_)))))
                                           (if (eq? _$e14105_ 'var)
                                               _body14102_
                                               (_BUG14079_
                                                _e14086_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _e1408814095_)
                                              (let ((_hd1409214189_
                                                     (##car _e1408814095_))
                                                    (_tl1409314191_
                                                     (##cdr _e1408814095_)))
                                                (let ((_tag14194_
                                                       _hd1409214189_))
                                                  (let ((_body14196_
                                                         _tl1409314191_))
                                                    (_K1409114186_
                                                     _body14196_
                                                     _tag14194_))))
                                              (_E1409014099_))))))))
                          _recur14084_)
                        _e14077_
                        '()))))))))
        (let ((_parse13851_
               (lambda (_e13892_)
                 (let ((_make-cons13894_
                        (lambda (_hd14069_ _tl14070_)
                          (let ((_g14254_ _hd14069_) (_g14256_ _tl14070_))
                            (begin
                              (let ((_g14255_ (values-count _g14254_)))
                                (if (not (fx= _g14255_ 2))
                                    (error "Context expects 2 values"
                                           _g14255_)))
                              (let ((_g14257_ (values-count _g14256_)))
                                (if (not (fx= _g14257_ 2))
                                    (error "Context expects 2 values"
                                           _g14257_)))
                              (let ((_hd-e14072_ (values-ref _g14254_ 0))
                                    (_hd-vars14073_ (values-ref _g14254_ 1)))
                                (let ((_tl-e14074_ (values-ref _g14256_ 0))
                                      (_tl-vars14075_ (values-ref _g14256_ 1)))
                                  (values (cons* 'cons _hd-e14072_ _tl-e14074_)
                                          (append _hd-vars14073_
                                                  _tl-vars14075_)))))))))
                   (let ((_make-splice13895_
                          (lambda (_where14008_
                                   _depth14009_
                                   _hd14010_
                                   _tl14011_)
                            (let ((_g14250_ _hd14010_) (_g14252_ _tl14011_))
                              (begin
                                (let ((_g14251_ (values-count _g14250_)))
                                  (if (not (fx= _g14251_ 2))
                                      (error "Context expects 2 values"
                                             _g14251_)))
                                (let ((_g14253_ (values-count _g14252_)))
                                  (if (not (fx= _g14253_ 2))
                                      (error "Context expects 2 values"
                                             _g14253_)))
                                (let ((_hd-e14013_ (values-ref _g14250_ 0))
                                      (_hd-vars14014_ (values-ref _g14250_ 1)))
                                  (let ((_tl-e14015_ (values-ref _g14252_ 0))
                                        (_tl-vars14016_
                                         (values-ref _g14252_ 1)))
                                    ((letrec ((_lp14018_
                                               (lambda (_rest14020_
                                                        _targets14021_
                                                        _vars14022_)
                                                 (let ((_rest1402314033_
                                                        _rest14020_))
                                                   (let ((_E1402614037_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest1402314033_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_else1402514041_
                                                            (lambda ()
                                                              (if (null? _targets14021_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Misplaced ellipsis"
                           _stx13848_
                           _where14008_)
                          (values (cons* 'splice
                                         _depth14009_
                                         _hd-e14013_
                                         _tl-e14015_
                                         _targets14021_)
                                  _vars14022_)))))
               (let ((_K1402714050_
                      (lambda (_rest14044_ _hd-pat14045_ _hd-depth*14046_)
                        (let ((_hd-depth14048_
                               (fx- _hd-depth*14046_ _depth14009_)))
                          (if (fxpositive? _hd-depth14048_)
                              (_lp14018_
                               _rest14044_
                               (cons (cons 'ref _hd-pat14045_) _targets14021_)
                               (cons (cons _hd-depth14048_ _hd-pat14045_)
                                     _vars14022_))
                              (if (fxzero? _hd-depth14048_)
                                  (_lp14018_
                                   _rest14044_
                                   (cons (cons 'pattern _hd-pat14045_)
                                         _targets14021_)
                                   _vars14022_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Too many ellipses"
                                   _stx13848_
                                   _where14008_)))))))
                 (if (##pair? _rest1402314033_)
                     (let ((_hd1402814053_ (##car _rest1402314033_))
                           (_tl1402914055_ (##cdr _rest1402314033_)))
                       (if (##pair? _hd1402814053_)
                           (let ((_hd1403014058_ (##car _hd1402814053_))
                                 (_tl1403114060_ (##cdr _hd1402814053_)))
                             (let ((_hd-depth*14063_ _hd1403014058_))
                               (let ((_hd-pat14065_ _tl1403114060_))
                                 (let ((_rest14067_ _tl1402914055_))
                                   (_K1402714050_
                                    _rest14067_
                                    _hd-pat14065_
                                    _hd-depth*14063_)))))
                           (_else1402514041_)))
                     (_else1402514041_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _lp14018_)
                                     _hd-vars14014_
                                     '()
                                     _tl-vars14016_))))))))
                     (letrec ((_recur13896_
                               (lambda (_e13901_ _is-e?13902_)
                                 (if (_is-e?13902_ _e13901_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Mislpaced ellipsis"
                                      _stx13848_)
                                     (if (gx#syntax-local-pattern? _e13901_)
                                         (let ((_pat13904_
                                                (gx#syntax-local-e__0
                                                 _e13901_)))
                                           (let ((_depth13906_
                                                  (##structure-ref
                                                   _pat13904_
                                                   '3
                                                   gx#syntax-pattern::t
                                                   '#f)))
                                             (let ()
                                               (if (fxpositive? _depth13906_)
                                                   (values (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat13904_)
                   (cons (cons _depth13906_ _pat13904_) '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (values (cons 'pattern
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat13904_)
                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (if (gx#identifier? _e13901_)
                                             (values (cons 'term _e13901_) '())
                                             (if (gx#stx-pair? _e13901_)
                                                 (let ((_e1390813915_
                                                        _e13901_))
                                                   (let ((_E1391013919_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _e1390813915_))))
                                                     (let ((_E1390913998_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e1390813915_)
                          (let ((_e1391113923_ (gx#syntax-e _e1390813915_)))
                            (let ((_hd1391213926_ (##car _e1391113923_))
                                  (_tl1391313928_ (##cdr _e1391113923_)))
                              (let ((_hd13931_ _hd1391213926_))
                                (let ((_rest13933_ _tl1391313928_))
                                  (if '#t
                                      (if (_is-e?13902_ _hd13931_)
                                          (let ((_e1393413941_ _rest13933_))
                                            (let ((_E1393613945_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad ellipsis syntax"
                                                      _stx13848_
                                                      _e13901_))))
                                              (let ((_E1393513959_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e1393413941_)
                                                           (let ((_e1393713949_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e1393413941_)))
                     (let ((_hd1393813952_ (##car _e1393713949_))
                           (_tl1393913954_ (##cdr _e1393713949_)))
                       (let ((_rest13957_ _hd1393813952_))
                         (if (gx#stx-null? _tl1393913954_)
                             (if '#t
                                 (_recur13896_ _rest13957_ false)
                                 (_E1393613945_))
                             (_E1393613945_)))))
                   (_E1393613945_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E1393513959_)))))
                                          ((letrec ((_lp13963_
                                                     (lambda (_rest13965_
                                                              _depth13966_)
                                                       (let ((_e1396713974_
                                                              _rest13965_))
                                                         (let ((_E1396913978_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (fxpositive? _depth13966_)
                              (_make-splice13895_
                               _e13901_
                               _depth13966_
                               (_recur13896_ _hd13931_ _is-e?13902_)
                               (_recur13896_ _rest13965_ _is-e?13902_))
                              (_make-cons13894_
                               (_recur13896_ _hd13931_ _is-e?13902_)
                               (_recur13896_ _rest13965_ _is-e?13902_))))))
                   (let ((_E1396813994_
                          (lambda ()
                            (if (gx#stx-pair? _e1396713974_)
                                (let ((_e1397013982_
                                       (gx#syntax-e _e1396713974_)))
                                  (let ((_hd1397113985_ (##car _e1397013982_))
                                        (_tl1397213987_ (##cdr _e1397013982_)))
                                    (let ((_rest-hd13990_ _hd1397113985_))
                                      (let ((_rest-tl13992_ _tl1397213987_))
                                        (if '#t
                                            (if (_is-e?13902_ _rest-hd13990_)
                                                (_lp13963_
                                                 _rest-tl13992_
                                                 (fx+ _depth13966_ '1))
                                                (if (fxpositive? _depth13966_)
                                                    (_make-splice13895_
                                                     _e13901_
                                                     _depth13966_
                                                     (_recur13896_
                                                      _hd13931_
                                                      _is-e?13902_)
                                                     (_recur13896_
                                                      _rest13965_
                                                      _is-e?13902_))
                                                    (_make-cons13894_
                                                     (_recur13896_
                                                      _hd13931_
                                                      _is-e?13902_)
                                                     (_recur13896_
                                                      _rest13965_
                                                      _is-e?13902_))))
                                            (_E1396913978_))))))
                                (_E1396913978_)))))
                     (let () (_E1396813994_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _lp13963_)
                                           _rest13933_
                                           '0))
                                      (_E1391013919_))))))
                          (_E1391013919_)))))
               (let () (_E1390913998_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-vector? _e13901_)
                                                     (let ((_g14244_
                                                            (_recur13896_
                                                             (vector->list
                                                              (gx#stx-unwrap__0
                                                               _e13901_))
                                                             _is-e?13902_)))
                                                       (begin
                                                         (let ((_g14245_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g14244_)))
                   (if (not (fx= _g14245_ 2))
                       (error "Context expects 2 values" _g14245_)))
                 (let ((_e14002_ (values-ref _g14244_ 0))
                       (_vars14003_ (values-ref _g14244_ 1)))
                   (values (cons 'vector _e14002_) _vars14003_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-box? _e13901_)
                                                         (let ((_g14246_
                                                                (_recur13896_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (unbox (gx#stx-unwrap__0 _e13901_))
                         _is-e?13902_)))
                   (begin
                     (let ((_g14247_ (values-count _g14246_)))
                       (if (not (fx= _g14247_ 2))
                           (error "Context expects 2 values" _g14247_)))
                     (let ((_e14005_ (values-ref _g14246_ 0))
                           (_vars14006_ (values-ref _g14246_ 1)))
                       (values (cons 'box _e14005_) _vars14006_))))
                 (values (cons 'datum _e13901_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       (let ((_g14248_ (_recur13896_ _e13892_ gx#ellipsis?)))
                         (begin
                           (let ((_g14249_ (values-count _g14248_)))
                             (if (not (fx= _g14249_ 2))
                                 (error "Context expects 2 values" _g14249_)))
                           (let ((_tree13898_ (values-ref _g14248_ 0))
                                 (_vars13899_ (values-ref _g14248_ 1)))
                             (if (null? _vars13899_)
                                 _tree13898_
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Missing ellipsis"
                                  _stx13848_
                                  _vars13899_)))))))))))
          (let ((_e1385213862_ _stx13848_))
            (let ((_E1385413866_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _stx13848_))))
              (let ((_E1385313888_
                     (lambda ()
                       (if (gx#stx-pair? _e1385213862_)
                           (let ((_e1385513870_ (gx#syntax-e _e1385213862_)))
                             (let ((_hd1385613873_ (##car _e1385513870_))
                                   (_tl1385713875_ (##cdr _e1385513870_)))
                               (if (gx#stx-pair? _tl1385713875_)
                                   (let ((_e1385813878_
                                          (gx#syntax-e _tl1385713875_)))
                                     (let ((_hd1385913881_
                                            (##car _e1385813878_))
                                           (_tl1386013883_
                                            (##cdr _e1385813878_)))
                                       (let ((_form13886_ _hd1385913881_))
                                         (if (gx#stx-null? _tl1386013883_)
                                             (if '#t
                                                 (gx#stx-wrap-source
                                                  (_generate13850_
                                                   (_parse13851_ _form13886_))
                                                  (gx#stx-source _stx13848_))
                                                 (_E1385413866_))
                                             (_E1385413866_)))))
                                   (_E1385413866_))))
                           (_E1385413866_)))))
                (let () (_E1385313888_)))))))))
  (begin
    (define gx#macro-expand-syntax-case__opt-lambda13118
      (lambda (_stx13120_ _identifier=?13121_ _unwrap-e13122_ _wrap-e13123_)
        (let ((_generate-body13126_
               (lambda (_bindings13670_ _body13671_)
                 ((letrec ((_recur13673_
                            (lambda (_rest13675_)
                              (let ((_rest1367613684_ _rest13675_))
                                (let ((_E1367913688_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest1367613684_))))
                                  (let ((_else1367813692_
                                         (lambda () _body13671_)))
                                    (let ((_K1368013698_
                                           (lambda (_rest13695_ _hd13696_)
                                             (gx#core-list
                                              'let-values
                                              (cons _hd13696_ '())
                                              (_recur13673_ _rest13695_)))))
                                      (if (##pair? _rest1367613684_)
                                          (let ((_hd1368113701_
                                                 (##car _rest1367613684_))
                                                (_tl1368213703_
                                                 (##cdr _rest1367613684_)))
                                            (let ((_hd13706_ _hd1368113701_))
                                              (let ((_rest13708_
                                                     _tl1368213703_))
                                                (_K1368013698_
                                                 _rest13708_
                                                 _hd13706_))))
                                          (_else1367813692_)))))))))
                    _recur13673_)
                  _bindings13670_))))
          (let ((_generate-match13128_
                 (lambda (_where13292_
                          _target13293_
                          _hd13294_
                          _mvars13295_
                          _K13296_
                          _E13297_)
                   (let ((_BUG13299_
                          (lambda (_q13531_)
                            (error '"BUG: syntax-case; generate"
                                   _stx13120_
                                   _hd13294_
                                   _q13531_))))
                     (let ((_splice-rlen13301_
                            (lambda (_e13347_)
                              ((letrec ((_lp13349_
                                         (lambda (_e13351_ _n13352_)
                                           (let ((_e1335313360_ _e13351_))
                                             (let ((_E1335513364_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _e1335313360_))))
                                               (let ((_K1335613373_
                                                      (lambda (_body13367_
                                                               _tag13368_)
                                                        (let ((_$e13370_
                                                               _tag13368_))
                                                          (if (eq? _$e13370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'splice)
                      (gx#raise-syntax-error
                       '#f
                       '"Ambiguous pattern"
                       _stx13120_
                       _where13292_)
                      (if (eq? _$e13370_ 'cons)
                          (_lp13349_ (cdr _body13367_) (fx+ _n13352_ '1))
                          _n13352_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _e1335313360_)
                                                     (let ((_hd1335713376_
                                                            (##car _e1335313360_))
                                                           (_tl1335813378_
                                                            (##cdr _e1335313360_)))
                                                       (let ((_tag13381_
                                                              _hd1335713376_))
                                                         (let ((_body13383_
                                                                _tl1335813378_))
                                                           (_K1335613373_
                                                            _body13383_
                                                            _tag13381_))))
                                                     (_E1335513364_))))))))
                                 _lp13349_)
                               _e13347_
                               '0))))
                       (let ((_splice-vars13302_
                              (lambda (_e13309_)
                                ((letrec ((_recur13311_
                                           (lambda (_e13313_ _vars13314_)
                                             (let ((_e1331513322_ _e13313_))
                                               (let ((_E1331713326_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _e1331513322_))))
                                                 (let ((_K1331813335_
                                                        (lambda (_body13329_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tag13330_)
                  (let ((_$e13332_ _tag13330_))
                    (if (eq? _$e13332_ 'var)
                        (cons _body13329_ _vars13314_)
                        (if (memq _$e13332_ '(cons splice))
                            (_recur13311_
                             (cdr _body13329_)
                             (_recur13311_ (car _body13329_) _vars13314_))
                            (if (memq _$e13332_ '(vector box))
                                (_recur13311_ _body13329_ _vars13314_)
                                _vars13314_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##pair? _e1331513322_)
                                                       (let ((_hd1331913338_
                                                              (##car _e1331513322_))
                                                             (_tl1332013340_
                                                              (##cdr _e1331513322_)))
                                                         (let ((_tag13343_
                                                                _hd1331913338_))
                                                           (let ((_body13345_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1332013340_))
                     (_K1331813335_ _body13345_ _tag13343_))))
               (_E1331713326_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _recur13311_)
                                 _e13309_
                                 '()))))
                         (let ((_make-body13303_
                                (lambda (_vars13305_)
                                  (cons _K13296_
                                        (map (lambda (_mvar13307_)
                                               (assgetq (car _mvar13307_)
                                                        _vars13305_
                                                        _BUG13299_))
                                             _mvars13295_)))))
                           (letrec ((_recur13300_
                                     (lambda (_e13385_
                                              _vars13386_
                                              _target13387_
                                              _E13388_
                                              _k13389_)
                                       (let ((_e1339013397_ _e13385_))
                                         (let ((_E1339213401_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _e1339013397_))))
                                           (let ((_K1339313519_
                                                  (lambda (_body13404_
                                                           _tag13405_)
                                                    (let ((_$e13407_
                                                           _tag13405_))
                                                      (if (eq? _$e13407_ 'any)
                                                          (_k13389_
                                                           _vars13386_)
                                                          (if (eq? _$e13407_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'id)
                      (gx#core-list
                       'if
                       (gx#core-list 'identifier? _target13387_)
                       (gx#core-list
                        'if
                        (gx#core-list
                         _identifier=?13121_
                         (gx#core-list _wrap-e13123_ _body13404_)
                         _target13387_)
                        (_k13389_ _vars13386_)
                        _E13388_)
                       _E13388_)
                      (if (eq? _$e13407_ 'var)
                          (_k13389_
                           (cons (cons _body13404_ _target13387_) _vars13386_))
                          (if (eq? _$e13407_ 'cons)
                              (let ((_$e13410_ (gx#genident__1 'e))
                                    (_$hd13411_ (gx#genident__1 'hd))
                                    (_$tl13412_ (gx#genident__1 'tl)))
                                (gx#core-list
                                 'if
                                 (gx#core-list 'stx-pair? _target13387_)
                                 (gx#core-list
                                  'let-values
                                  (cons (cons (cons _$e13410_ '())
                                              (cons (gx#core-list
                                                     _unwrap-e13122_
                                                     _target13387_)
                                                    '()))
                                        '())
                                  (gx#core-list
                                   'let-values
                                   (cons (cons (cons _$hd13411_ '())
                                               (cons (gx#core-list
                                                      '##car
                                                      _$e13410_)
                                                     '()))
                                         (cons (cons (cons _$tl13412_ '())
                                                     (cons (gx#core-list
                                                            '##cdr
                                                            _$e13410_)
                                                           '()))
                                               '()))
                                   (let ((_body1341313420_ _body13404_))
                                     (let ((_E1341513424_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _body1341313420_))))
                                       (let ((_K1341613432_
                                              (lambda (_tl13427_ _hd13428_)
                                                (_recur13300_
                                                 _hd13428_
                                                 _vars13386_
                                                 _$hd13411_
                                                 _E13388_
                                                 (lambda (_vars13430_)
                                                   (_recur13300_
                                                    _tl13427_
                                                    _vars13430_
                                                    _$tl13412_
                                                    _E13388_
                                                    _k13389_))))))
                                         (if (##pair? _body1341313420_)
                                             (let ((_hd1341713435_
                                                    (##car _body1341313420_))
                                                   (_tl1341813437_
                                                    (##cdr _body1341313420_)))
                                               (let ((_hd13440_
                                                      _hd1341713435_))
                                                 (let ((_tl13442_
                                                        _tl1341813437_))
                                                   (_K1341613432_
                                                    _tl13442_
                                                    _hd13440_))))
                                             (_E1341513424_)))))))
                                 _E13388_))
                              (if (eq? _$e13407_ 'splice)
                                  (let ((_body1344313450_ _body13404_))
                                    (let ((_E1344513454_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _body1344313450_))))
                                      (let ((_K1344613503_
                                             (lambda (_tl13457_ _hd13458_)
                                               (let ((_rlen13460_
                                                      (_splice-rlen13301_
                                                       _tl13457_)))
                                                 (let ((_$target13462_
                                                        (gx#genident__1
                                                         'target)))
                                                   (let ((_$hd13464_
                                                          (gx#genident__1
                                                           'hd)))
                                                     (let ((_$tl13466_
                                                            (gx#genident__1
                                                             'tl)))
                                                       (let ((_$lp13468_
                                                              (gx#genident__1
                                                               'loop)))
                                                         (let ((_$lp-e13470_
                                                                (gx#genident__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'e)))
                   (let ((_$lp-hd13472_ (gx#genident__1 'lp-hd)))
                     (let ((_$lp-tl13474_ (gx#genident__1 'lp-tl)))
                       (let ((_svars13476_ (_splice-vars13302_ _hd13458_)))
                         (let ((_lvars13478_ (gx#gentemps _svars13476_)))
                           (let ((_tlvars13480_ (gx#gentemps _svars13476_)))
                             (let ((_linit13484_
                                    (map (lambda (_var13482_)
                                           (gx#core-list 'quote '()))
                                         _lvars13478_)))
                               (let ()
                                 (let ((_make-loop13487_
                                        (lambda (_vars13489_)
                                          (gx#core-list
                                           'letrec-values
                                           (cons (cons (cons _$lp13468_ '())
                                                       (cons (gx#core-list
                                                              'lambda%
                                                              (cons _$hd13464_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _lvars13478_)
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _$hd13464_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$lp-e13470_ '())
                                    (cons (gx#core-list
                                           _unwrap-e13122_
                                           _$hd13464_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$lp-hd13472_ '())
                                     (cons (gx#core-list '##car _$lp-e13470_)
                                           '()))
                               (cons (cons (cons _$lp-tl13474_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$lp-e13470_)
                                                 '()))
                                     '()))
                         (_recur13300_
                          _hd13458_
                          '()
                          _$lp-hd13472_
                          _E13388_
                          (lambda (_hdvars13491_)
                            (cons* _$lp13468_
                                   _$lp-tl13474_
                                   (map (lambda (_svar13493_ _lvar13494_)
                                          (gx#core-list
                                           'cons
                                           (assgetq _svar13493_
                                                    _hdvars13491_
                                                    _BUG13299_)
                                           _lvar13494_))
                                        _svars13476_
                                        _lvars13478_))))))
                       (gx#core-list
                        'let-values
                        (map (lambda (_lvar13496_ _tlvar13497_)
                               (cons (cons _tlvar13497_ '())
                                     (cons (gx#core-list 'reverse _lvar13496_)
                                           '())))
                             _lvars13478_
                             _tlvars13480_)
                        (_k13389_
                         (foldl (lambda (_svar13499_ _tlvar13500_ _r13501_)
                                  (cons (cons _svar13499_ _tlvar13500_)
                                        _r13501_))
                                _vars13489_
                                _svars13476_
                                _tlvars13480_)))))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons* _$lp13468_
                                                  _$target13462_
                                                  _linit13484_)))))
                                   (gx#core-list
                                    'if
                                    (gx#core-list
                                     'stx-pair/null?
                                     _target13387_)
                                    (gx#core-list
                                     'if
                                     (gx#core-list
                                      'fx>=
                                      (gx#core-list 'stx-length _target13387_)
                                      _rlen13460_)
                                     (gx#core-list
                                      'let-values
                                      (cons (cons (cons _$target13462_
                                                        (cons _$tl13466_ '()))
                                                  (cons (gx#core-list
                                                         'syntax-split-splice
                                                         _target13387_
                                                         _rlen13460_)
                                                        '()))
                                            '())
                                      (_recur13300_
                                       _tl13457_
                                       _vars13386_
                                       _$tl13466_
                                       _E13388_
                                       _make-loop13487_))
                                     _E13388_)
                                    _E13388_))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _body1344313450_)
                                            (let ((_hd1344713506_
                                                   (##car _body1344313450_))
                                                  (_tl1344813508_
                                                   (##cdr _body1344313450_)))
                                              (let ((_hd13511_ _hd1344713506_))
                                                (let ((_tl13513_
                                                       _tl1344813508_))
                                                  (_K1344613503_
                                                   _tl13513_
                                                   _hd13511_))))
                                            (_E1344513454_)))))
                                  (if (eq? _$e13407_ 'null)
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-null? _target13387_)
                                       (_k13389_ _vars13386_)
                                       _E13388_)
                                      (if (eq? _$e13407_ 'vector)
                                          (let ((_$e13515_
                                                 (gx#genident__1 'e)))
                                            (gx#core-list
                                             'if
                                             (gx#core-list
                                              'stx-vector?
                                              _target13387_)
                                             (gx#core-list
                                              'let-values
                                              (cons (cons (cons _$e13515_ '())
                                                          (cons (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'vector->list
                         (gx#core-list _unwrap-e13122_ _target13387_))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (_recur13300_
                                               _body13404_
                                               _vars13386_
                                               _$e13515_
                                               _E13388_
                                               _k13389_))
                                             _E13388_))
                                          (if (eq? _$e13407_ 'box)
                                              (let ((_$e13517_
                                                     (gx#genident__1 'e)))
                                                (gx#core-list
                                                 'if
                                                 (gx#core-list
                                                  'stx-box?
                                                  _target13387_)
                                                 (gx#core-list
                                                  'let-values
                                                  (cons (cons (cons _$e13517_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (gx#core-list
                             'unbox
                             (gx#core-list _unwrap-e13122_ _target13387_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur13300_
                                                   _body13404_
                                                   _vars13386_
                                                   _$e13517_
                                                   _E13388_
                                                   _k13389_))
                                                 _E13388_))
                                              (if (eq? _$e13407_ 'datum)
                                                  (gx#core-list
                                                   'if
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target13387_)
                                                   (gx#core-list
                                                    'if
                                                    (gx#core-list
                                                     'equal?
                                                     (gx#core-list
                                                      'stx-e
                                                      _target13387_)
                                                     _body13404_)
                                                    (_k13389_ _vars13386_)
                                                    _E13388_)
                                                   _E13388_)
                                                  (_BUG13299_
                                                   _e13385_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _e1339013397_)
                                                 (let ((_hd1339413522_
                                                        (##car _e1339013397_))
                                                       (_tl1339513524_
                                                        (##cdr _e1339013397_)))
                                                   (let ((_tag13527_
                                                          _hd1339413522_))
                                                     (let ((_body13529_
                                                            _tl1339513524_))
                                                       (_K1339313519_
                                                        _body13529_
                                                        _tag13527_))))
                                                 (_E1339213401_))))))))
                             (_recur13300_
                              _hd13294_
                              '()
                              _target13293_
                              _E13297_
                              _make-body13303_)))))))))
            (let ((_parse-clause13129_
                   (lambda (_hd13198_ _ids13199_)
                     ((letrec ((_recur13201_
                                (lambda (_e13203_ _vars13204_ _depth13205_)
                                  (if (gx#identifier? _e13203_)
                                      (if (gx#underscore? _e13203_)
                                          (values '(any) _vars13204_)
                                          (if (gx#ellipsis? _e13203_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Misplaced ellipsis"
                                               _stx13120_
                                               _hd13198_)
                                              (if (find (lambda (_id13207_)
                                                          (gx#bound-identifier=?
                                                           _e13203_
                                                           _id13207_))
                                                        _ids13199_)
                                                  (values (cons 'id _e13203_)
                                                          _vars13204_)
                                                  (if (find (lambda (_var13209_)
                                                              (gx#bound-identifier=?
                                                               _e13203_
                                                               (car _var13209_)))
                                                            _vars13204_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Duplicate pattern variable"
                                                       _stx13120_
                                                       _e13203_)
                                                      (values (cons 'var
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _e13203_)
                      (cons (cons _e13203_ _depth13205_) _vars13204_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _e13203_)
                                          (let ((_e1321013217_ _e13203_))
                                            (let ((_E1321213221_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _e1321013217_))))
                                              (let ((_E1321113282_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e1321013217_)
                                                           (let ((_e1321313225_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e1321013217_)))
                     (let ((_hd1321413228_ (##car _e1321313225_))
                           (_tl1321513230_ (##cdr _e1321313225_)))
                       (let ((_hd13233_ _hd1321413228_))
                         (let ((_rest13235_ _tl1321513230_))
                           (if '#t
                               (let ((_make-pair13250_
                                      (lambda (_tag13237_ _hd13238_ _tl13239_)
                                        (let ((_hd-depth13241_
                                               (if (eq? _tag13237_ 'splice)
                                                   (fx+ _depth13205_ '1)
                                                   _depth13205_)))
                                          (let ((_g14260_
                                                 (_recur13201_
                                                  _hd13238_
                                                  _vars13204_
                                                  _hd-depth13241_)))
                                            (begin
                                              (let ((_g14261_
                                                     (values-count _g14260_)))
                                                (if (not (fx= _g14261_ 2))
                                                    (error "Context expects 2 values"
                                                           _g14261_)))
                                              (let ((_hd13243_
                                                     (values-ref _g14260_ 0))
                                                    (_vars13244_
                                                     (values-ref _g14260_ 1)))
                                                (let ((_g14262_
                                                       (_recur13201_
                                                        _tl13239_
                                                        _vars13244_
                                                        _depth13205_)))
                                                  (begin
                                                    (let ((_g14263_
                                                           (values-count
                                                            _g14262_)))
                                                      (if (not (fx= _g14263_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g14263_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_tl13246_
                                                           (values-ref
                                                            _g14262_
                                                            0))
                                                          (_vars13247_
                                                           (values-ref
                                                            _g14262_
                                                            1)))
                                                      (let ()
                                                        (values (cons* _tag13237_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd13243_
                               _tl13246_)
                        _vars13247_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (let ((_e1325113258_ _rest13235_))
                                   (let ((_E1325313262_
                                          (lambda ()
                                            (_make-pair13250_
                                             'cons
                                             _hd13233_
                                             _rest13235_))))
                                     (let ((_E1325213278_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1325113258_)
                                                  (let ((_e1325413266_
                                                         (gx#syntax-e
                                                          _e1325113258_)))
                                                    (let ((_hd1325513269_
                                                           (##car _e1325413266_))
                                                          (_tl1325613271_
                                                           (##cdr _e1325413266_)))
                                                      (let ((_rest-hd13274_
                                                             _hd1325513269_))
                                                        (let ((_rest-tl13276_
                                                               _tl1325613271_))
                                                          (if '#t
                                                              (if (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest-hd13274_)
                          (_make-pair13250_ 'splice _hd13233_ _rest-tl13276_)
                          (_make-pair13250_ 'cons _hd13233_ _rest13235_))
                      (_E1325313262_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1325313262_)))))
                                       (let () (_E1325213278_))))))
                               (_E1321213221_))))))
                   (_E1321213221_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E1321113282_)))))
                                          (if (gx#stx-null? _e13203_)
                                              (values '(null) _vars13204_)
                                              (if (gx#stx-vector? _e13203_)
                                                  (let ((_g14264_
                                                         (_recur13201_
                                                          (vector->list
                                                           (gx#syntax-e
                                                            _e13203_))
                                                          _vars13204_
                                                          _depth13205_)))
                                                    (begin
                                                      (let ((_g14265_
                                                             (values-count
                                                              _g14264_)))
                                                        (if (not (fx= _g14265_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g14265_)))
              (let ((_e13286_ (values-ref _g14264_ 0))
                    (_vars13287_ (values-ref _g14264_ 1)))
                (values (cons 'vector _e13286_) _vars13287_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e13203_)
                                                      (let ((_g14266_
                                                             (_recur13201_
                                                              (unbox (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e13203_))
                      _vars13204_
                      _depth13205_)))
                (begin
                  (let ((_g14267_ (values-count _g14266_)))
                    (if (not (fx= _g14267_ 2))
                        (error "Context expects 2 values" _g14267_)))
                  (let ((_e13289_ (values-ref _g14266_ 0))
                        (_vars13290_ (values-ref _g14266_ 1)))
                    (values (cons 'box _e13289_) _vars13290_))))
              (if (gx#stx-datum? _e13203_)
                  (values (cons 'datum (gx#stx-e _e13203_)) _vars13204_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad pattern"
                   _stx13120_
                   _e13203_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        _recur13201_)
                      _hd13198_
                      '()
                      '0))))
              (let ((_generate-clause13127_
                     (lambda (_target13533_ _ids13534_ _clause13535_ _E13536_)
                       (let ((_generate113538_
                              (lambda (_hd13625_ _fender13626_ _body13627_)
                                (let ((_g14258_
                                       (_parse-clause13129_
                                        _hd13625_
                                        _ids13534_)))
                                  (begin
                                    (let ((_g14259_ (values-count _g14258_)))
                                      (if (not (fx= _g14259_ 2))
                                          (error "Context expects 2 values"
                                                 _g14259_)))
                                    (let ((_e13629_ (values-ref _g14258_ 0))
                                          (_mvars13630_
                                           (values-ref _g14258_ 1)))
                                      (let ((_pvars13632_
                                             (map gx#syntax-local-rewrap
                                                  (gx#gentemps _mvars13630_))))
                                        (let ((_E13634_
                                               (cons _E13536_
                                                     (cons _target13533_
                                                           '()))))
                                          (let ((_K13667_
                                                 (gx#core-list
                                                  'lambda%
                                                  _pvars13632_
                                                  (gx#core-list
                                                   'let-syntax
                                                   (map (lambda (_mvar13636_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pvar13637_)
                  (let ((_mvar1363813645_ _mvar13636_))
                    (let ((_E1364013649_
                           (lambda ()
                             (error '"No clause matching" _mvar1363813645_))))
                      (let ((_K1364113655_
                             (lambda (_depth13652_ _id13653_)
                               (cons _id13653_
                                     (cons (gx#core-list
                                            'make-syntax-pattern
                                            (gx#core-list 'quote _id13653_)
                                            (gx#core-list 'quote _pvar13637_)
                                            _depth13652_)
                                           '())))))
                        (if (##pair? _mvar1363813645_)
                            (let ((_hd1364213658_ (##car _mvar1363813645_))
                                  (_tl1364313660_ (##cdr _mvar1363813645_)))
                              (let ((_id13663_ _hd1364213658_))
                                (let ((_depth13665_ _tl1364313660_))
                                  (_K1364113655_ _depth13665_ _id13663_))))
                            (_E1364013649_))))))
                _mvars13630_
                _pvars13632_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (eq? _fender13626_ '#t)
                                                       _body13627_
                                                       (gx#core-list
                                                        'if
                                                        _fender13626_
                                                        _body13627_
                                                        _E13634_))))))
                                            (let ()
                                              (_generate-match13128_
                                               _hd13625_
                                               _target13533_
                                               _e13629_
                                               _mvars13630_
                                               _K13667_
                                               _E13634_)))))))))))
                         (let ((_e1353913559_ _clause13535_))
                           (let ((_E1354813563_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _e1353913559_))))
                             (let ((_E1354113597_
                                    (lambda ()
                                      (if (gx#stx-pair? _e1353913559_)
                                          (let ((_e1354913567_
                                                 (gx#syntax-e _e1353913559_)))
                                            (let ((_hd1355013570_
                                                   (##car _e1354913567_))
                                                  (_tl1355113572_
                                                   (##cdr _e1354913567_)))
                                              (let ((_hd13575_ _hd1355013570_))
                                                (if (gx#stx-pair?
                                                     _tl1355113572_)
                                                    (let ((_e1355213577_
                                                           (gx#syntax-e
                                                            _tl1355113572_)))
                                                      (let ((_hd1355313580_
                                                             (##car _e1355213577_))
                                                            (_tl1355413582_
                                                             (##cdr _e1355213577_)))
                                                        (let ((_fender13585_
                                                               _hd1355313580_))
                                                          (if (gx#stx-pair?
                                                               _tl1355413582_)
                                                              (let ((_e1355513587_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1355413582_)))
                        (let ((_hd1355613590_ (##car _e1355513587_))
                              (_tl1355713592_ (##cdr _e1355513587_)))
                          (let ((_body13595_ _hd1355613590_))
                            (if (gx#stx-null? _tl1355713592_)
                                (if '#t
                                    (_generate113538_
                                     _hd13575_
                                     _fender13585_
                                     _body13595_)
                                    (_E1354813563_))
                                (_E1354813563_)))))
                      (_E1354813563_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1354813563_)))))
                                          (_E1354813563_)))))
                               (let ((_E1354013621_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1353913559_)
                                            (let ((_e1354213601_
                                                   (gx#syntax-e
                                                    _e1353913559_)))
                                              (let ((_hd1354313604_
                                                     (##car _e1354213601_))
                                                    (_tl1354413606_
                                                     (##cdr _e1354213601_)))
                                                (let ((_hd13609_
                                                       _hd1354313604_))
                                                  (if (gx#stx-pair?
                                                       _tl1354413606_)
                                                      (let ((_e1354513611_
                                                             (gx#syntax-e
                                                              _tl1354413606_)))
                                                        (let ((_hd1354613614_
                                                               (##car _e1354513611_))
                                                              (_tl1354713616_
                                                               (##cdr _e1354513611_)))
                                                          (let ((_body13619_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1354613614_))
                    (if (gx#stx-null? _tl1354713616_)
                        (if '#t
                            (_generate113538_ _hd13609_ '#t _body13619_)
                            (_E1354113597_))
                        (_E1354113597_)))))
              (_E1354113597_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1354113597_)))))
                                 (let () (_E1354013621_))))))))))
                (let ((_generate-bindings13125_
                       (lambda (_target13710_
                                _ids13711_
                                _clauses13712_
                                _clause-ids13713_
                                _E13714_)
                         (let ((_generate113716_
                                (lambda (_clause13815_
                                         _clause-id13816_
                                         _E13817_)
                                  (cons (cons _clause-id13816_ '())
                                        (cons (gx#core-list
                                               'lambda%
                                               (cons _target13710_ '())
                                               (_generate-clause13127_
                                                _target13710_
                                                _ids13711_
                                                _clause13815_
                                                _E13817_))
                                              '())))))
                           ((letrec ((_lp13718_
                                      (lambda (_rest13720_
                                               _rest-ids13721_
                                               _bindings13722_)
                                        (let ((_rest1372313731_ _rest13720_))
                                          (let ((_E1372613735_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _rest1372313731_))))
                                            (let ((_else1372513739_
                                                   (lambda ()
                                                     _bindings13722_)))
                                              (let ((_K1372713803_
                                                     (lambda (_rest13742_
                                                              _clause13743_)
                                                       (let ((_rest-ids1374413751_
                                                              _rest-ids13721_))
                                                         (let ((_E1374613755_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (error '"No clause matching" _rest-ids1374413751_))))
                   (let ((_K1374713791_
                          (lambda (_rest-ids13758_ _clause-id13759_)
                            (let ((_rest-ids1376013768_ _rest-ids13758_))
                              (let ((_E1376313772_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _rest-ids1376013768_))))
                                (let ((_else1376213776_
                                       (lambda ()
                                         (cons (_generate113716_
                                                _clause13743_
                                                _clause-id13759_
                                                _E13714_)
                                               _bindings13722_))))
                                  (let ((_K1376413781_
                                         (lambda (_next-clause-id13779_)
                                           (_lp13718_
                                            _rest13742_
                                            _rest-ids13758_
                                            (cons (_generate113716_
                                                   _clause13743_
                                                   _clause-id13759_
                                                   _next-clause-id13779_)
                                                  _bindings13722_)))))
                                    (if (##pair? _rest-ids1376013768_)
                                        (let ((_hd1376513784_
                                               (##car _rest-ids1376013768_))
                                              (_tl1376613786_
                                               (##cdr _rest-ids1376013768_)))
                                          (let ((_next-clause-id13789_
                                                 _hd1376513784_))
                                            (_K1376413781_
                                             _next-clause-id13789_)))
                                        (_else1376213776_)))))))))
                     (if (##pair? _rest-ids1374413751_)
                         (let ((_hd1374813794_ (##car _rest-ids1374413751_))
                               (_tl1374913796_ (##cdr _rest-ids1374413751_)))
                           (let ((_clause-id13799_ _hd1374813794_))
                             (let ((_rest-ids13801_ _tl1374913796_))
                               (_K1374713791_
                                _rest-ids13801_
                                _clause-id13799_))))
                         (_E1374613755_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (##pair? _rest1372313731_)
                                                    (let ((_hd1372813806_
                                                           (##car _rest1372313731_))
                                                          (_tl1372913808_
                                                           (##cdr _rest1372313731_)))
                                                      (let ((_clause13811_
                                                             _hd1372813806_))
                                                        (let ((_rest13813_
                                                               _tl1372913808_))
                                                          (_K1372713803_
                                                           _rest13813_
                                                           _clause13811_))))
                                                    (_else1372513739_)))))))))
                              _lp13718_)
                            _clauses13712_
                            _clause-ids13713_
                            '())))))
                  (let ((_e1313013143_ _stx13120_))
                    (let ((_E1313213147_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e1313013143_))))
                      (let ((_E1313113194_
                             (lambda ()
                               (if (gx#stx-pair? _e1313013143_)
                                   (let ((_e1313313151_
                                          (gx#syntax-e _e1313013143_)))
                                     (let ((_hd1313413154_
                                            (##car _e1313313151_))
                                           (_tl1313513156_
                                            (##cdr _e1313313151_)))
                                       (if (gx#stx-pair? _tl1313513156_)
                                           (let ((_e1313613159_
                                                  (gx#syntax-e
                                                   _tl1313513156_)))
                                             (let ((_hd1313713162_
                                                    (##car _e1313613159_))
                                                   (_tl1313813164_
                                                    (##cdr _e1313613159_)))
                                               (let ((_expr13167_
                                                      _hd1313713162_))
                                                 (if (gx#stx-pair?
                                                      _tl1313813164_)
                                                     (let ((_e1313913169_
                                                            (gx#syntax-e
                                                             _tl1313813164_)))
                                                       (let ((_hd1314013172_
                                                              (##car _e1313913169_))
                                                             (_tl1314113174_
                                                              (##cdr _e1313913169_)))
                                                         (let ((_ids13177_
                                                                _hd1314013172_))
                                                           (let ((_clauses13179_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1314113174_))
                     (if '#t
                         (if (not (gx#identifier-list? _ids13177_))
                             (gx#raise-syntax-error
                              '#f
                              '"Bad template identifier list"
                              _stx13120_
                              _ids13177_)
                             (if (not (gx#stx-list? _clauses13179_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _stx13120_)
                                 (let ((_ids13181_
                                        (gx#syntax->list _ids13177_)))
                                   (let ((_clauses13183_
                                          (gx#syntax->list _clauses13179_)))
                                     (let ((_clause-ids13185_
                                            (gx#gentemps _clauses13183_)))
                                       (let ((_E13187_ (gx#genident__0)))
                                         (let ((_target13189_
                                                (gx#genident__0)))
                                           (let ((_first13191_
                                                  (if (null? _clauses13183_)
                                                      _E13187_
                                                      (car _clause-ids13185_))))
                                             (let ()
                                               (gx#stx-wrap-source
                                                (gx#core-list
                                                 'let-values
                                                 (cons (cons (cons _E13187_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _target13189_ '())
                            (gx#core-list
                             'raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _target13189_))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_generate-body13126_
                                                  (_generate-bindings13125_
                                                   _target13189_
                                                   _ids13181_
                                                   _clauses13183_
                                                   _clause-ids13185_
                                                   _E13187_)
                                                  (cons _first13191_
                                                        (cons _expr13167_
                                                              '()))))
                                                (gx#stx-source
                                                 _stx13120_)))))))))))
                         (_E1313213147_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1313213147_)))))
                                           (_E1313213147_))))
                                   (_E1313213147_)))))
                        (let () (_E1313113194_))))))))))))
    (begin
      (define gx#macro-expand-syntax-case__0
        (lambda (_stx13822_)
          (let ((_identifier=?13824_ 'free-identifier=?))
            (let ((_unwrap-e13826_ 'syntax-e))
              (let ((_wrap-e13828_ 'quote-syntax))
                (gx#macro-expand-syntax-case__opt-lambda13118
                 _stx13822_
                 _identifier=?13824_
                 _unwrap-e13826_
                 _wrap-e13828_))))))
      (define gx#macro-expand-syntax-case__1
        (lambda (_stx13830_ _identifier=?13831_)
          (let ((_unwrap-e13833_ 'syntax-e))
            (let ((_wrap-e13835_ 'quote-syntax))
              (gx#macro-expand-syntax-case__opt-lambda13118
               _stx13830_
               _identifier=?13831_
               _unwrap-e13833_
               _wrap-e13835_)))))
      (define gx#macro-expand-syntax-case__2
        (lambda (_stx13837_ _identifier=?13838_ _unwrap-e13839_)
          (let ((_wrap-e13841_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda13118
             _stx13837_
             _identifier=?13838_
             _unwrap-e13839_
             _wrap-e13841_))))
      (define gx#macro-expand-syntax-case
        (lambda _g14269_
          (let ((_g14268_ (length _g14269_)))
            (cond ((fx= _g14268_ 1)
                   (apply gx#macro-expand-syntax-case__0 _g14269_))
                  ((fx= _g14268_ 2)
                   (apply gx#macro-expand-syntax-case__1 _g14269_))
                  ((fx= _g14268_ 3)
                   (apply gx#macro-expand-syntax-case__2 _g14269_))
                  ((fx= _g14268_ 4)
                   (apply gx#macro-expand-syntax-case__opt-lambda13118
                          _g14269_))
                  (else (error "No clause matching arguments" _g14269_))))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx13117_)
      (if (gx#identifier? _stx13117_)
          (##structure-instance-of?
           (gx#syntax-local-e__opt-lambda4061 _stx13117_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd13075_ . _rest13076_)
      (let ((_len13078_ (length _hd13075_)))
        ((letrec ((_lp13080_
                   (lambda (_rest13082_)
                     (let ((_rest1308313091_ _rest13082_))
                       (let ((_E1308613095_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1308313091_))))
                         (let ((_else1308513099_ (lambda () '#!void)))
                           (let ((_K1308713105_
                                  (lambda (_rest13102_ _hd13103_)
                                    (if (fx= _len13078_ (length _hd13103_))
                                        (_lp13080_ _rest13102_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Splice length mismatch"
                                         _hd13103_)))))
                             (if (##pair? _rest1308313091_)
                                 (let ((_hd1308813108_
                                        (##car _rest1308313091_))
                                       (_tl1308913110_
                                        (##cdr _rest1308313091_)))
                                   (let ((_hd13113_ _hd1308813108_))
                                     (let ((_rest13115_ _tl1308913110_))
                                       (_K1308713105_ _rest13115_ _hd13113_))))
                                 (_else1308513099_)))))))))
           _lp13080_)
         _rest13076_))))
  (define gx#syntax-split-splice
    (lambda (_stx13033_ _n13034_)
      ((letrec ((_lp13036_
                 (lambda (_rest13038_ _r13039_)
                   (if (gx#stx-pair? _rest13038_)
                       (let ((_g1304013047_ (gx#syntax-e _rest13038_)))
                         (let ((_E1304213051_
                                (lambda ()
                                  (error '"No clause matching"
                                         _g1304013047_))))
                           (let ((_K1304313057_
                                  (lambda (_rest13054_ _hd13055_)
                                    (_lp13036_
                                     _rest13054_
                                     (cons _hd13055_ _r13039_)))))
                             (if (##pair? _g1304013047_)
                                 (let ((_hd1304413060_ (##car _g1304013047_))
                                       (_tl1304513062_ (##cdr _g1304013047_)))
                                   (let ((_hd13065_ _hd1304413060_))
                                     (let ((_rest13067_ _tl1304513062_))
                                       (_K1304313057_ _rest13067_ _hd13065_))))
                                 (_E1304213051_)))))
                       ((letrec ((_lp13069_
                                  (lambda (_n13071_ _l13072_ _r13073_)
                                    (if (null? _l13072_)
                                        (values _l13072_ _r13073_)
                                        (if (fxpositive? _n13071_)
                                            (_lp13069_
                                             (fx- _n13071_ '1)
                                             (cdr _l13072_)
                                             (cons (car _l13072_) _r13073_))
                                            (values (reverse _l13072_)
                                                    _r13073_))))))
                          _lp13069_)
                        _n13034_
                        _r13039_
                        _rest13038_)))))
         _lp13036_)
       _stx13033_
       '()))))
