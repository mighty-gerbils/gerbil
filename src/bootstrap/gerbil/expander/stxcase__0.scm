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
    (lambda _$args14186_
      (apply make-struct-instance gx#syntax-pattern::t _$args14186_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self14183_ _stx14184_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx14184_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx13792_)
      (let ((_generate13794_
             (lambda (_e14021_)
               (let ((_BUG14023_
                      (lambda (_q14181_)
                        (error '"BUG: syntax; generate"
                               _stx13792_
                               _e14021_
                               _q14181_))))
                 (let ((_local-pattern-e14024_
                        (lambda (_pat14179_)
                          (gx#syntax-local-rewrap
                           (##structure-ref
                            _pat14179_
                            '2
                            gx#syntax-pattern::t
                            '#f)))))
                   (let ((_getvar14025_
                          (lambda (_q14176_ _vars14177_)
                            (assgetq _q14176_ _vars14177_ _BUG14023_))))
                     (let ((_getarg14026_
                            (lambda (_arg14142_ _vars14143_)
                              (let ((_arg1414414151_ _arg14142_))
                                (let ((_E1414614155_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _arg1414414151_))))
                                  (let ((_K1414714164_
                                         (lambda (_e14158_ _tag14159_)
                                           (let ((_$e14161_ _tag14159_))
                                             (if (eq? _$e14161_ 'ref)
                                                 (_getvar14025_
                                                  _e14158_
                                                  _vars14143_)
                                                 (if (eq? _$e14161_ 'pattern)
                                                     (_local-pattern-e14024_
                                                      _e14158_)
                                                     (_BUG14023_
                                                      _arg14142_)))))))
                                    (if (##pair? _arg1414414151_)
                                        (let ((_hd1414814167_
                                               (##car _arg1414414151_))
                                              (_tl1414914169_
                                               (##cdr _arg1414414151_)))
                                          (let ((_tag14172_ _hd1414814167_))
                                            (let ((_e14174_ _tl1414914169_))
                                              (_K1414714164_
                                               _e14174_
                                               _tag14172_))))
                                        (_E1414614155_))))))))
                       ((letrec ((_recur14028_
                                  (lambda (_e14030_ _vars14031_)
                                    (let ((_e1403214039_ _e14030_))
                                      (let ((_E1403414043_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _e1403214039_))))
                                        (let ((_K1403514130_
                                               (lambda (_body14046_ _tag14047_)
                                                 (let ((_$e14049_ _tag14047_))
                                                   (if (eq? _$e14049_ 'datum)
                                                       (gx#core-list
                                                        'quote
                                                        _body14046_)
                                                       (if (eq? _$e14049_
                                                                'term)
                                                           (gx#core-list
                                                            'datum->syntax
                                                            '#f
                                                            (gx#core-list
                                                             'quote
                                                             _body14046_))
                                                           (if (eq? _$e14049_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'pattern)
                       (_local-pattern-e14024_ _body14046_)
                       (if (eq? _$e14049_ 'ref)
                           (_getvar14025_ _body14046_ _vars14031_)
                           (if (eq? _$e14049_ 'cons)
                               (gx#core-list
                                'cons
                                (_recur14028_ (car _body14046_) _vars14031_)
                                (_recur14028_ (cdr _body14046_) _vars14031_))
                               (if (eq? _$e14049_ 'vector)
                                   (gx#core-list
                                    'list->vector
                                    (_recur14028_ _body14046_ _vars14031_))
                                   (if (eq? _$e14049_ 'box)
                                       (gx#core-list
                                        'box
                                        (_recur14028_ _body14046_ _vars14031_))
                                       (if (eq? _$e14049_ 'splice)
                                           (let ((_body1405114062_
                                                  _body14046_))
                                             (let ((_E1405314066_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _body1405114062_))))
                                               (let ((_K1405414104_
                                                      (lambda (_args14069_
                                                               _iv14070_
                                                               _hd14071_
                                                               _depth14072_)
                                                        (let ((_targets14078_
                                                               (map (lambda (_g1407314075_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_getarg14026_ _g1407314075_ _vars14031_))
                            _args14069_)))
                  (let ((_fold-in14080_ (gx#gentemps _args14069_)))
                    (let ((_fold-out14082_ (gx#genident__0)))
                      (let ((_lambda-args14084_
                             (foldr1 cons
                                     (cons _fold-out14082_ '())
                                     _fold-in14080_)))
                        (let ((_lambda-body14101_
                               (if (fx> _depth14072_ '1)
                                   (let ((_r-args14092_
                                          (map (lambda (_arg14086_)
                                                 (cons 'ref (cdr _arg14086_)))
                                               _args14069_))
                                         (_r-vars14093_
                                          (foldr (lambda (_arg14088_
                                                          _var14089_
                                                          _r14090_)
                                                   (cons (cons (cdr _arg14088_)
                                                               _var14089_)
                                                         _r14090_))
                                                 _vars14031_
                                                 _args14069_
                                                 _fold-in14080_)))
                                     (_recur14028_
                                      (cons* 'splice
                                             (fx- _depth14072_ '1)
                                             _hd14071_
                                             (cons 'var _fold-out14082_)
                                             _r-args14092_)
                                      _r-vars14093_))
                                   (let ((_hd-vars14099_
                                          (foldr (lambda (_arg14095_
                                                          _var14096_
                                                          _r14097_)
                                                   (cons (cons (cdr _arg14095_)
                                                               _var14096_)
                                                         _r14097_))
                                                 _vars14031_
                                                 _args14069_
                                                 _fold-in14080_)))
                                     (gx#core-list
                                      'cons
                                      (_recur14028_ _hd14071_ _hd-vars14099_)
                                      _fold-out14082_)))))
                          (let ()
                            (gx#core-list
                             'begin
                             (if (fx> (length _targets14078_) '1)
                                 (gx#core-cons*
                                  'syntax-check-splice-targets
                                  _targets14078_)
                                 '#!void)
                             (gx#core-cons*
                              'foldr
                              (gx#core-list
                               'lambda%
                               _lambda-args14084_
                               _lambda-body14101_)
                              (_recur14028_ _iv14070_ _vars14031_)
                              _targets14078_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _body1405114062_)
                                                     (let ((_hd1405514107_
                                                            (##car _body1405114062_))
                                                           (_tl1405614109_
                                                            (##cdr _body1405114062_)))
                                                       (let ((_depth14112_
                                                              _hd1405514107_))
                                                         (if (##pair? _tl1405614109_)
                                                             (let ((_hd1405714114_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##car _tl1405614109_))
                           (_tl1405814116_ (##cdr _tl1405614109_)))
                       (let ((_hd14119_ _hd1405714114_))
                         (if (##pair? _tl1405814116_)
                             (let ((_hd1405914121_ (##car _tl1405814116_))
                                   (_tl1406014123_ (##cdr _tl1405814116_)))
                               (let ((_iv14126_ _hd1405914121_))
                                 (let ((_args14128_ _tl1406014123_))
                                   (_K1405414104_
                                    _args14128_
                                    _iv14126_
                                    _hd14119_
                                    _depth14112_))))
                             (_E1405314066_))))
                     (_E1405314066_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1405314066_)))))
                                           (if (eq? _$e14049_ 'var)
                                               _body14046_
                                               (_BUG14023_
                                                _e14030_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _e1403214039_)
                                              (let ((_hd1403614133_
                                                     (##car _e1403214039_))
                                                    (_tl1403714135_
                                                     (##cdr _e1403214039_)))
                                                (let ((_tag14138_
                                                       _hd1403614133_))
                                                  (let ((_body14140_
                                                         _tl1403714135_))
                                                    (_K1403514130_
                                                     _body14140_
                                                     _tag14138_))))
                                              (_E1403414043_))))))))
                          _recur14028_)
                        _e14021_
                        '()))))))))
        (let ((_parse13795_
               (lambda (_e13836_)
                 (let ((_make-cons13838_
                        (lambda (_hd14013_ _tl14014_)
                          (let ((_g14198_ _hd14013_) (_g14200_ _tl14014_))
                            (begin
                              (let ((_g14199_ (values-count _g14198_)))
                                (if (not (fx= _g14199_ 2))
                                    (error "Context expects 2 values"
                                           _g14199_)))
                              (let ((_g14201_ (values-count _g14200_)))
                                (if (not (fx= _g14201_ 2))
                                    (error "Context expects 2 values"
                                           _g14201_)))
                              (let ((_hd-e14016_ (values-ref _g14198_ 0))
                                    (_hd-vars14017_ (values-ref _g14198_ 1)))
                                (let ((_tl-e14018_ (values-ref _g14200_ 0))
                                      (_tl-vars14019_ (values-ref _g14200_ 1)))
                                  (values (cons* 'cons _hd-e14016_ _tl-e14018_)
                                          (append _hd-vars14017_
                                                  _tl-vars14019_)))))))))
                   (let ((_make-splice13839_
                          (lambda (_where13952_
                                   _depth13953_
                                   _hd13954_
                                   _tl13955_)
                            (let ((_g14194_ _hd13954_) (_g14196_ _tl13955_))
                              (begin
                                (let ((_g14195_ (values-count _g14194_)))
                                  (if (not (fx= _g14195_ 2))
                                      (error "Context expects 2 values"
                                             _g14195_)))
                                (let ((_g14197_ (values-count _g14196_)))
                                  (if (not (fx= _g14197_ 2))
                                      (error "Context expects 2 values"
                                             _g14197_)))
                                (let ((_hd-e13957_ (values-ref _g14194_ 0))
                                      (_hd-vars13958_ (values-ref _g14194_ 1)))
                                  (let ((_tl-e13959_ (values-ref _g14196_ 0))
                                        (_tl-vars13960_
                                         (values-ref _g14196_ 1)))
                                    ((letrec ((_lp13962_
                                               (lambda (_rest13964_
                                                        _targets13965_
                                                        _vars13966_)
                                                 (let ((_rest1396713977_
                                                        _rest13964_))
                                                   (let ((_E1397013981_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest1396713977_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_else1396913985_
                                                            (lambda ()
                                                              (if (null? _targets13965_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Misplaced ellipsis"
                           _stx13792_
                           _where13952_)
                          (values (cons* 'splice
                                         _depth13953_
                                         _hd-e13957_
                                         _tl-e13959_
                                         _targets13965_)
                                  _vars13966_)))))
               (let ((_K1397113994_
                      (lambda (_rest13988_ _hd-pat13989_ _hd-depth*13990_)
                        (let ((_hd-depth13992_
                               (fx- _hd-depth*13990_ _depth13953_)))
                          (if (fxpositive? _hd-depth13992_)
                              (_lp13962_
                               _rest13988_
                               (cons (cons 'ref _hd-pat13989_) _targets13965_)
                               (cons (cons _hd-depth13992_ _hd-pat13989_)
                                     _vars13966_))
                              (if (fxzero? _hd-depth13992_)
                                  (_lp13962_
                                   _rest13988_
                                   (cons (cons 'pattern _hd-pat13989_)
                                         _targets13965_)
                                   _vars13966_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Too many ellipses"
                                   _stx13792_
                                   _where13952_)))))))
                 (if (##pair? _rest1396713977_)
                     (let ((_hd1397213997_ (##car _rest1396713977_))
                           (_tl1397313999_ (##cdr _rest1396713977_)))
                       (if (##pair? _hd1397213997_)
                           (let ((_hd1397414002_ (##car _hd1397213997_))
                                 (_tl1397514004_ (##cdr _hd1397213997_)))
                             (let ((_hd-depth*14007_ _hd1397414002_))
                               (let ((_hd-pat14009_ _tl1397514004_))
                                 (let ((_rest14011_ _tl1397313999_))
                                   (_K1397113994_
                                    _rest14011_
                                    _hd-pat14009_
                                    _hd-depth*14007_)))))
                           (_else1396913985_)))
                     (_else1396913985_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _lp13962_)
                                     _hd-vars13958_
                                     '()
                                     _tl-vars13960_))))))))
                     (letrec ((_recur13840_
                               (lambda (_e13845_ _is-e?13846_)
                                 (if (_is-e?13846_ _e13845_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Mislpaced ellipsis"
                                      _stx13792_)
                                     (if (gx#syntax-local-pattern? _e13845_)
                                         (let ((_pat13848_
                                                (gx#syntax-local-e__0
                                                 _e13845_)))
                                           (let ((_depth13850_
                                                  (##structure-ref
                                                   _pat13848_
                                                   '3
                                                   gx#syntax-pattern::t
                                                   '#f)))
                                             (let ()
                                               (if (fxpositive? _depth13850_)
                                                   (values (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat13848_)
                   (cons (cons _depth13850_ _pat13848_) '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (values (cons 'pattern
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat13848_)
                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (if (gx#identifier? _e13845_)
                                             (values (cons 'term _e13845_) '())
                                             (if (gx#stx-pair? _e13845_)
                                                 (let ((_e1385213859_
                                                        _e13845_))
                                                   (let ((_E1385413863_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _e1385213859_))))
                                                     (let ((_E1385313942_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e1385213859_)
                          (let ((_e1385513867_ (gx#syntax-e _e1385213859_)))
                            (let ((_hd1385613870_ (##car _e1385513867_))
                                  (_tl1385713872_ (##cdr _e1385513867_)))
                              (let ((_hd13875_ _hd1385613870_))
                                (let ((_rest13877_ _tl1385713872_))
                                  (if '#t
                                      (if (_is-e?13846_ _hd13875_)
                                          (let ((_e1387813885_ _rest13877_))
                                            (let ((_E1388013889_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad ellipsis syntax"
                                                      _stx13792_
                                                      _e13845_))))
                                              (let ((_E1387913903_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e1387813885_)
                                                           (let ((_e1388113893_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e1387813885_)))
                     (let ((_hd1388213896_ (##car _e1388113893_))
                           (_tl1388313898_ (##cdr _e1388113893_)))
                       (let ((_rest13901_ _hd1388213896_))
                         (if (gx#stx-null? _tl1388313898_)
                             (if '#t
                                 (_recur13840_ _rest13901_ false)
                                 (_E1388013889_))
                             (_E1388013889_)))))
                   (_E1388013889_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E1387913903_)))))
                                          ((letrec ((_lp13907_
                                                     (lambda (_rest13909_
                                                              _depth13910_)
                                                       (let ((_e1391113918_
                                                              _rest13909_))
                                                         (let ((_E1391313922_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (fxpositive? _depth13910_)
                              (_make-splice13839_
                               _e13845_
                               _depth13910_
                               (_recur13840_ _hd13875_ _is-e?13846_)
                               (_recur13840_ _rest13909_ _is-e?13846_))
                              (_make-cons13838_
                               (_recur13840_ _hd13875_ _is-e?13846_)
                               (_recur13840_ _rest13909_ _is-e?13846_))))))
                   (let ((_E1391213938_
                          (lambda ()
                            (if (gx#stx-pair? _e1391113918_)
                                (let ((_e1391413926_
                                       (gx#syntax-e _e1391113918_)))
                                  (let ((_hd1391513929_ (##car _e1391413926_))
                                        (_tl1391613931_ (##cdr _e1391413926_)))
                                    (let ((_rest-hd13934_ _hd1391513929_))
                                      (let ((_rest-tl13936_ _tl1391613931_))
                                        (if '#t
                                            (if (_is-e?13846_ _rest-hd13934_)
                                                (_lp13907_
                                                 _rest-tl13936_
                                                 (fx+ _depth13910_ '1))
                                                (if (fxpositive? _depth13910_)
                                                    (_make-splice13839_
                                                     _e13845_
                                                     _depth13910_
                                                     (_recur13840_
                                                      _hd13875_
                                                      _is-e?13846_)
                                                     (_recur13840_
                                                      _rest13909_
                                                      _is-e?13846_))
                                                    (_make-cons13838_
                                                     (_recur13840_
                                                      _hd13875_
                                                      _is-e?13846_)
                                                     (_recur13840_
                                                      _rest13909_
                                                      _is-e?13846_))))
                                            (_E1391313922_))))))
                                (_E1391313922_)))))
                     (let () (_E1391213938_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _lp13907_)
                                           _rest13877_
                                           '0))
                                      (_E1385413863_))))))
                          (_E1385413863_)))))
               (let () (_E1385313942_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-vector? _e13845_)
                                                     (let ((_g14188_
                                                            (_recur13840_
                                                             (vector->list
                                                              (gx#stx-unwrap__0
                                                               _e13845_))
                                                             _is-e?13846_)))
                                                       (begin
                                                         (let ((_g14189_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g14188_)))
                   (if (not (fx= _g14189_ 2))
                       (error "Context expects 2 values" _g14189_)))
                 (let ((_e13946_ (values-ref _g14188_ 0))
                       (_vars13947_ (values-ref _g14188_ 1)))
                   (values (cons 'vector _e13946_) _vars13947_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-box? _e13845_)
                                                         (let ((_g14190_
                                                                (_recur13840_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (unbox (gx#stx-unwrap__0 _e13845_))
                         _is-e?13846_)))
                   (begin
                     (let ((_g14191_ (values-count _g14190_)))
                       (if (not (fx= _g14191_ 2))
                           (error "Context expects 2 values" _g14191_)))
                     (let ((_e13949_ (values-ref _g14190_ 0))
                           (_vars13950_ (values-ref _g14190_ 1)))
                       (values (cons 'box _e13949_) _vars13950_))))
                 (values (cons 'datum _e13845_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       (let ((_g14192_ (_recur13840_ _e13836_ gx#ellipsis?)))
                         (begin
                           (let ((_g14193_ (values-count _g14192_)))
                             (if (not (fx= _g14193_ 2))
                                 (error "Context expects 2 values" _g14193_)))
                           (let ((_tree13842_ (values-ref _g14192_ 0))
                                 (_vars13843_ (values-ref _g14192_ 1)))
                             (if (null? _vars13843_)
                                 _tree13842_
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Missing ellipsis"
                                  _stx13792_
                                  _vars13843_)))))))))))
          (let ((_e1379613806_ _stx13792_))
            (let ((_E1379813810_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _stx13792_))))
              (let ((_E1379713832_
                     (lambda ()
                       (if (gx#stx-pair? _e1379613806_)
                           (let ((_e1379913814_ (gx#syntax-e _e1379613806_)))
                             (let ((_hd1380013817_ (##car _e1379913814_))
                                   (_tl1380113819_ (##cdr _e1379913814_)))
                               (if (gx#stx-pair? _tl1380113819_)
                                   (let ((_e1380213822_
                                          (gx#syntax-e _tl1380113819_)))
                                     (let ((_hd1380313825_
                                            (##car _e1380213822_))
                                           (_tl1380413827_
                                            (##cdr _e1380213822_)))
                                       (let ((_form13830_ _hd1380313825_))
                                         (if (gx#stx-null? _tl1380413827_)
                                             (if '#t
                                                 (gx#stx-wrap-source
                                                  (_generate13794_
                                                   (_parse13795_ _form13830_))
                                                  (gx#stx-source _stx13792_))
                                                 (_E1379813810_))
                                             (_E1379813810_)))))
                                   (_E1379813810_))))
                           (_E1379813810_)))))
                (let () (_E1379713832_)))))))))
  (begin
    (define gx#macro-expand-syntax-case__opt-lambda13062
      (lambda (_stx13064_ _identifier=?13065_ _unwrap-e13066_ _wrap-e13067_)
        (let ((_generate-body13070_
               (lambda (_bindings13614_ _body13615_)
                 ((letrec ((_recur13617_
                            (lambda (_rest13619_)
                              (let ((_rest1362013628_ _rest13619_))
                                (let ((_E1362313632_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest1362013628_))))
                                  (let ((_else1362213636_
                                         (lambda () _body13615_)))
                                    (let ((_K1362413642_
                                           (lambda (_rest13639_ _hd13640_)
                                             (gx#core-list
                                              'let-values
                                              (cons _hd13640_ '())
                                              (_recur13617_ _rest13639_)))))
                                      (if (##pair? _rest1362013628_)
                                          (let ((_hd1362513645_
                                                 (##car _rest1362013628_))
                                                (_tl1362613647_
                                                 (##cdr _rest1362013628_)))
                                            (let ((_hd13650_ _hd1362513645_))
                                              (let ((_rest13652_
                                                     _tl1362613647_))
                                                (_K1362413642_
                                                 _rest13652_
                                                 _hd13650_))))
                                          (_else1362213636_)))))))))
                    _recur13617_)
                  _bindings13614_))))
          (let ((_generate-match13072_
                 (lambda (_where13236_
                          _target13237_
                          _hd13238_
                          _mvars13239_
                          _K13240_
                          _E13241_)
                   (let ((_BUG13243_
                          (lambda (_q13475_)
                            (error '"BUG: syntax-case; generate"
                                   _stx13064_
                                   _hd13238_
                                   _q13475_))))
                     (let ((_splice-rlen13245_
                            (lambda (_e13291_)
                              ((letrec ((_lp13293_
                                         (lambda (_e13295_ _n13296_)
                                           (let ((_e1329713304_ _e13295_))
                                             (let ((_E1329913308_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _e1329713304_))))
                                               (let ((_K1330013317_
                                                      (lambda (_body13311_
                                                               _tag13312_)
                                                        (let ((_$e13314_
                                                               _tag13312_))
                                                          (if (eq? _$e13314_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'splice)
                      (gx#raise-syntax-error
                       '#f
                       '"Ambiguous pattern"
                       _stx13064_
                       _where13236_)
                      (if (eq? _$e13314_ 'cons)
                          (_lp13293_ (cdr _body13311_) (fx+ _n13296_ '1))
                          _n13296_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _e1329713304_)
                                                     (let ((_hd1330113320_
                                                            (##car _e1329713304_))
                                                           (_tl1330213322_
                                                            (##cdr _e1329713304_)))
                                                       (let ((_tag13325_
                                                              _hd1330113320_))
                                                         (let ((_body13327_
                                                                _tl1330213322_))
                                                           (_K1330013317_
                                                            _body13327_
                                                            _tag13325_))))
                                                     (_E1329913308_))))))))
                                 _lp13293_)
                               _e13291_
                               '0))))
                       (let ((_splice-vars13246_
                              (lambda (_e13253_)
                                ((letrec ((_recur13255_
                                           (lambda (_e13257_ _vars13258_)
                                             (let ((_e1325913266_ _e13257_))
                                               (let ((_E1326113270_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _e1325913266_))))
                                                 (let ((_K1326213279_
                                                        (lambda (_body13273_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tag13274_)
                  (let ((_$e13276_ _tag13274_))
                    (if (eq? _$e13276_ 'var)
                        (cons _body13273_ _vars13258_)
                        (if (memq _$e13276_ '(cons splice))
                            (_recur13255_
                             (cdr _body13273_)
                             (_recur13255_ (car _body13273_) _vars13258_))
                            (if (memq _$e13276_ '(vector box))
                                (_recur13255_ _body13273_ _vars13258_)
                                _vars13258_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##pair? _e1325913266_)
                                                       (let ((_hd1326313282_
                                                              (##car _e1325913266_))
                                                             (_tl1326413284_
                                                              (##cdr _e1325913266_)))
                                                         (let ((_tag13287_
                                                                _hd1326313282_))
                                                           (let ((_body13289_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1326413284_))
                     (_K1326213279_ _body13289_ _tag13287_))))
               (_E1326113270_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _recur13255_)
                                 _e13253_
                                 '()))))
                         (let ((_make-body13247_
                                (lambda (_vars13249_)
                                  (cons _K13240_
                                        (map (lambda (_mvar13251_)
                                               (assgetq (car _mvar13251_)
                                                        _vars13249_
                                                        _BUG13243_))
                                             _mvars13239_)))))
                           (letrec ((_recur13244_
                                     (lambda (_e13329_
                                              _vars13330_
                                              _target13331_
                                              _E13332_
                                              _k13333_)
                                       (let ((_e1333413341_ _e13329_))
                                         (let ((_E1333613345_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _e1333413341_))))
                                           (let ((_K1333713463_
                                                  (lambda (_body13348_
                                                           _tag13349_)
                                                    (let ((_$e13351_
                                                           _tag13349_))
                                                      (if (eq? _$e13351_ 'any)
                                                          (_k13333_
                                                           _vars13330_)
                                                          (if (eq? _$e13351_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'id)
                      (gx#core-list
                       'if
                       (gx#core-list 'identifier? _target13331_)
                       (gx#core-list
                        'if
                        (gx#core-list
                         _identifier=?13065_
                         (gx#core-list _wrap-e13067_ _body13348_)
                         _target13331_)
                        (_k13333_ _vars13330_)
                        _E13332_)
                       _E13332_)
                      (if (eq? _$e13351_ 'var)
                          (_k13333_
                           (cons (cons _body13348_ _target13331_) _vars13330_))
                          (if (eq? _$e13351_ 'cons)
                              (let ((_$e13354_ (gx#genident__1 'e))
                                    (_$hd13355_ (gx#genident__1 'hd))
                                    (_$tl13356_ (gx#genident__1 'tl)))
                                (gx#core-list
                                 'if
                                 (gx#core-list 'stx-pair? _target13331_)
                                 (gx#core-list
                                  'let-values
                                  (cons (cons (cons _$e13354_ '())
                                              (cons (gx#core-list
                                                     _unwrap-e13066_
                                                     _target13331_)
                                                    '()))
                                        '())
                                  (gx#core-list
                                   'let-values
                                   (cons (cons (cons _$hd13355_ '())
                                               (cons (gx#core-list
                                                      '##car
                                                      _$e13354_)
                                                     '()))
                                         (cons (cons (cons _$tl13356_ '())
                                                     (cons (gx#core-list
                                                            '##cdr
                                                            _$e13354_)
                                                           '()))
                                               '()))
                                   (let ((_body1335713364_ _body13348_))
                                     (let ((_E1335913368_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _body1335713364_))))
                                       (let ((_K1336013376_
                                              (lambda (_tl13371_ _hd13372_)
                                                (_recur13244_
                                                 _hd13372_
                                                 _vars13330_
                                                 _$hd13355_
                                                 _E13332_
                                                 (lambda (_vars13374_)
                                                   (_recur13244_
                                                    _tl13371_
                                                    _vars13374_
                                                    _$tl13356_
                                                    _E13332_
                                                    _k13333_))))))
                                         (if (##pair? _body1335713364_)
                                             (let ((_hd1336113379_
                                                    (##car _body1335713364_))
                                                   (_tl1336213381_
                                                    (##cdr _body1335713364_)))
                                               (let ((_hd13384_
                                                      _hd1336113379_))
                                                 (let ((_tl13386_
                                                        _tl1336213381_))
                                                   (_K1336013376_
                                                    _tl13386_
                                                    _hd13384_))))
                                             (_E1335913368_)))))))
                                 _E13332_))
                              (if (eq? _$e13351_ 'splice)
                                  (let ((_body1338713394_ _body13348_))
                                    (let ((_E1338913398_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _body1338713394_))))
                                      (let ((_K1339013447_
                                             (lambda (_tl13401_ _hd13402_)
                                               (let ((_rlen13404_
                                                      (_splice-rlen13245_
                                                       _tl13401_)))
                                                 (let ((_$target13406_
                                                        (gx#genident__1
                                                         'target)))
                                                   (let ((_$hd13408_
                                                          (gx#genident__1
                                                           'hd)))
                                                     (let ((_$tl13410_
                                                            (gx#genident__1
                                                             'tl)))
                                                       (let ((_$lp13412_
                                                              (gx#genident__1
                                                               'loop)))
                                                         (let ((_$lp-e13414_
                                                                (gx#genident__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'e)))
                   (let ((_$lp-hd13416_ (gx#genident__1 'lp-hd)))
                     (let ((_$lp-tl13418_ (gx#genident__1 'lp-tl)))
                       (let ((_svars13420_ (_splice-vars13246_ _hd13402_)))
                         (let ((_lvars13422_ (gx#gentemps _svars13420_)))
                           (let ((_tlvars13424_ (gx#gentemps _svars13420_)))
                             (let ((_linit13428_
                                    (map (lambda (_var13426_)
                                           (gx#core-list 'quote '()))
                                         _lvars13422_)))
                               (let ()
                                 (let ((_make-loop13431_
                                        (lambda (_vars13433_)
                                          (gx#core-list
                                           'letrec-values
                                           (cons (cons (cons _$lp13412_ '())
                                                       (cons (gx#core-list
                                                              'lambda%
                                                              (cons _$hd13408_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _lvars13422_)
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _$hd13408_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$lp-e13414_ '())
                                    (cons (gx#core-list
                                           _unwrap-e13066_
                                           _$hd13408_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$lp-hd13416_ '())
                                     (cons (gx#core-list '##car _$lp-e13414_)
                                           '()))
                               (cons (cons (cons _$lp-tl13418_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$lp-e13414_)
                                                 '()))
                                     '()))
                         (_recur13244_
                          _hd13402_
                          '()
                          _$lp-hd13416_
                          _E13332_
                          (lambda (_hdvars13435_)
                            (cons* _$lp13412_
                                   _$lp-tl13418_
                                   (map (lambda (_svar13437_ _lvar13438_)
                                          (gx#core-list
                                           'cons
                                           (assgetq _svar13437_
                                                    _hdvars13435_
                                                    _BUG13243_)
                                           _lvar13438_))
                                        _svars13420_
                                        _lvars13422_))))))
                       (gx#core-list
                        'let-values
                        (map (lambda (_lvar13440_ _tlvar13441_)
                               (cons (cons _tlvar13441_ '())
                                     (cons (gx#core-list 'reverse _lvar13440_)
                                           '())))
                             _lvars13422_
                             _tlvars13424_)
                        (_k13333_
                         (foldl (lambda (_svar13443_ _tlvar13444_ _r13445_)
                                  (cons (cons _svar13443_ _tlvar13444_)
                                        _r13445_))
                                _vars13433_
                                _svars13420_
                                _tlvars13424_)))))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons* _$lp13412_
                                                  _$target13406_
                                                  _linit13428_)))))
                                   (gx#core-list
                                    'if
                                    (gx#core-list
                                     'stx-pair/null?
                                     _target13331_)
                                    (gx#core-list
                                     'if
                                     (gx#core-list
                                      'fx>=
                                      (gx#core-list 'stx-length _target13331_)
                                      _rlen13404_)
                                     (gx#core-list
                                      'let-values
                                      (cons (cons (cons _$target13406_
                                                        (cons _$tl13410_ '()))
                                                  (cons (gx#core-list
                                                         'syntax-split-splice
                                                         _target13331_
                                                         _rlen13404_)
                                                        '()))
                                            '())
                                      (_recur13244_
                                       _tl13401_
                                       _vars13330_
                                       _$tl13410_
                                       _E13332_
                                       _make-loop13431_))
                                     _E13332_)
                                    _E13332_))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _body1338713394_)
                                            (let ((_hd1339113450_
                                                   (##car _body1338713394_))
                                                  (_tl1339213452_
                                                   (##cdr _body1338713394_)))
                                              (let ((_hd13455_ _hd1339113450_))
                                                (let ((_tl13457_
                                                       _tl1339213452_))
                                                  (_K1339013447_
                                                   _tl13457_
                                                   _hd13455_))))
                                            (_E1338913398_)))))
                                  (if (eq? _$e13351_ 'null)
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-null? _target13331_)
                                       (_k13333_ _vars13330_)
                                       _E13332_)
                                      (if (eq? _$e13351_ 'vector)
                                          (let ((_$e13459_
                                                 (gx#genident__1 'e)))
                                            (gx#core-list
                                             'if
                                             (gx#core-list
                                              'stx-vector?
                                              _target13331_)
                                             (gx#core-list
                                              'let-values
                                              (cons (cons (cons _$e13459_ '())
                                                          (cons (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'vector->list
                         (gx#core-list _unwrap-e13066_ _target13331_))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (_recur13244_
                                               _body13348_
                                               _vars13330_
                                               _$e13459_
                                               _E13332_
                                               _k13333_))
                                             _E13332_))
                                          (if (eq? _$e13351_ 'box)
                                              (let ((_$e13461_
                                                     (gx#genident__1 'e)))
                                                (gx#core-list
                                                 'if
                                                 (gx#core-list
                                                  'stx-box?
                                                  _target13331_)
                                                 (gx#core-list
                                                  'let-values
                                                  (cons (cons (cons _$e13461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (gx#core-list
                             'unbox
                             (gx#core-list _unwrap-e13066_ _target13331_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur13244_
                                                   _body13348_
                                                   _vars13330_
                                                   _$e13461_
                                                   _E13332_
                                                   _k13333_))
                                                 _E13332_))
                                              (if (eq? _$e13351_ 'datum)
                                                  (gx#core-list
                                                   'if
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target13331_)
                                                   (gx#core-list
                                                    'if
                                                    (gx#core-list
                                                     'equal?
                                                     (gx#core-list
                                                      'stx-e
                                                      _target13331_)
                                                     _body13348_)
                                                    (_k13333_ _vars13330_)
                                                    _E13332_)
                                                   _E13332_)
                                                  (_BUG13243_
                                                   _e13329_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _e1333413341_)
                                                 (let ((_hd1333813466_
                                                        (##car _e1333413341_))
                                                       (_tl1333913468_
                                                        (##cdr _e1333413341_)))
                                                   (let ((_tag13471_
                                                          _hd1333813466_))
                                                     (let ((_body13473_
                                                            _tl1333913468_))
                                                       (_K1333713463_
                                                        _body13473_
                                                        _tag13471_))))
                                                 (_E1333613345_))))))))
                             (_recur13244_
                              _hd13238_
                              '()
                              _target13237_
                              _E13241_
                              _make-body13247_)))))))))
            (let ((_parse-clause13073_
                   (lambda (_hd13142_ _ids13143_)
                     ((letrec ((_recur13145_
                                (lambda (_e13147_ _vars13148_ _depth13149_)
                                  (if (gx#identifier? _e13147_)
                                      (if (gx#underscore? _e13147_)
                                          (values '(any) _vars13148_)
                                          (if (gx#ellipsis? _e13147_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Misplaced ellipsis"
                                               _stx13064_
                                               _hd13142_)
                                              (if (find (lambda (_id13151_)
                                                          (gx#bound-identifier=?
                                                           _e13147_
                                                           _id13151_))
                                                        _ids13143_)
                                                  (values (cons 'id _e13147_)
                                                          _vars13148_)
                                                  (if (find (lambda (_var13153_)
                                                              (gx#bound-identifier=?
                                                               _e13147_
                                                               (car _var13153_)))
                                                            _vars13148_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Duplicate pattern variable"
                                                       _stx13064_
                                                       _e13147_)
                                                      (values (cons 'var
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _e13147_)
                      (cons (cons _e13147_ _depth13149_) _vars13148_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _e13147_)
                                          (let ((_e1315413161_ _e13147_))
                                            (let ((_E1315613165_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _e1315413161_))))
                                              (let ((_E1315513226_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e1315413161_)
                                                           (let ((_e1315713169_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e1315413161_)))
                     (let ((_hd1315813172_ (##car _e1315713169_))
                           (_tl1315913174_ (##cdr _e1315713169_)))
                       (let ((_hd13177_ _hd1315813172_))
                         (let ((_rest13179_ _tl1315913174_))
                           (if '#t
                               (let ((_make-pair13194_
                                      (lambda (_tag13181_ _hd13182_ _tl13183_)
                                        (let ((_hd-depth13185_
                                               (if (eq? _tag13181_ 'splice)
                                                   (fx+ _depth13149_ '1)
                                                   _depth13149_)))
                                          (let ((_g14204_
                                                 (_recur13145_
                                                  _hd13182_
                                                  _vars13148_
                                                  _hd-depth13185_)))
                                            (begin
                                              (let ((_g14205_
                                                     (values-count _g14204_)))
                                                (if (not (fx= _g14205_ 2))
                                                    (error "Context expects 2 values"
                                                           _g14205_)))
                                              (let ((_hd13187_
                                                     (values-ref _g14204_ 0))
                                                    (_vars13188_
                                                     (values-ref _g14204_ 1)))
                                                (let ((_g14206_
                                                       (_recur13145_
                                                        _tl13183_
                                                        _vars13188_
                                                        _depth13149_)))
                                                  (begin
                                                    (let ((_g14207_
                                                           (values-count
                                                            _g14206_)))
                                                      (if (not (fx= _g14207_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g14207_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_tl13190_
                                                           (values-ref
                                                            _g14206_
                                                            0))
                                                          (_vars13191_
                                                           (values-ref
                                                            _g14206_
                                                            1)))
                                                      (let ()
                                                        (values (cons* _tag13181_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd13187_
                               _tl13190_)
                        _vars13191_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (let ((_e1319513202_ _rest13179_))
                                   (let ((_E1319713206_
                                          (lambda ()
                                            (_make-pair13194_
                                             'cons
                                             _hd13177_
                                             _rest13179_))))
                                     (let ((_E1319613222_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1319513202_)
                                                  (let ((_e1319813210_
                                                         (gx#syntax-e
                                                          _e1319513202_)))
                                                    (let ((_hd1319913213_
                                                           (##car _e1319813210_))
                                                          (_tl1320013215_
                                                           (##cdr _e1319813210_)))
                                                      (let ((_rest-hd13218_
                                                             _hd1319913213_))
                                                        (let ((_rest-tl13220_
                                                               _tl1320013215_))
                                                          (if '#t
                                                              (if (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest-hd13218_)
                          (_make-pair13194_ 'splice _hd13177_ _rest-tl13220_)
                          (_make-pair13194_ 'cons _hd13177_ _rest13179_))
                      (_E1319713206_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1319713206_)))))
                                       (let () (_E1319613222_))))))
                               (_E1315613165_))))))
                   (_E1315613165_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E1315513226_)))))
                                          (if (gx#stx-null? _e13147_)
                                              (values '(null) _vars13148_)
                                              (if (gx#stx-vector? _e13147_)
                                                  (let ((_g14208_
                                                         (_recur13145_
                                                          (vector->list
                                                           (gx#syntax-e
                                                            _e13147_))
                                                          _vars13148_
                                                          _depth13149_)))
                                                    (begin
                                                      (let ((_g14209_
                                                             (values-count
                                                              _g14208_)))
                                                        (if (not (fx= _g14209_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g14209_)))
              (let ((_e13230_ (values-ref _g14208_ 0))
                    (_vars13231_ (values-ref _g14208_ 1)))
                (values (cons 'vector _e13230_) _vars13231_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e13147_)
                                                      (let ((_g14210_
                                                             (_recur13145_
                                                              (unbox (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e13147_))
                      _vars13148_
                      _depth13149_)))
                (begin
                  (let ((_g14211_ (values-count _g14210_)))
                    (if (not (fx= _g14211_ 2))
                        (error "Context expects 2 values" _g14211_)))
                  (let ((_e13233_ (values-ref _g14210_ 0))
                        (_vars13234_ (values-ref _g14210_ 1)))
                    (values (cons 'box _e13233_) _vars13234_))))
              (if (gx#stx-datum? _e13147_)
                  (values (cons 'datum (gx#stx-e _e13147_)) _vars13148_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad pattern"
                   _stx13064_
                   _e13147_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        _recur13145_)
                      _hd13142_
                      '()
                      '0))))
              (let ((_generate-clause13071_
                     (lambda (_target13477_ _ids13478_ _clause13479_ _E13480_)
                       (let ((_generate113482_
                              (lambda (_hd13569_ _fender13570_ _body13571_)
                                (let ((_g14202_
                                       (_parse-clause13073_
                                        _hd13569_
                                        _ids13478_)))
                                  (begin
                                    (let ((_g14203_ (values-count _g14202_)))
                                      (if (not (fx= _g14203_ 2))
                                          (error "Context expects 2 values"
                                                 _g14203_)))
                                    (let ((_e13573_ (values-ref _g14202_ 0))
                                          (_mvars13574_
                                           (values-ref _g14202_ 1)))
                                      (let ((_pvars13576_
                                             (map gx#syntax-local-rewrap
                                                  (gx#gentemps _mvars13574_))))
                                        (let ((_E13578_
                                               (cons _E13480_
                                                     (cons _target13477_
                                                           '()))))
                                          (let ((_K13611_
                                                 (gx#core-list
                                                  'lambda%
                                                  _pvars13576_
                                                  (gx#core-list
                                                   'let-syntax
                                                   (map (lambda (_mvar13580_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pvar13581_)
                  (let ((_mvar1358213589_ _mvar13580_))
                    (let ((_E1358413593_
                           (lambda ()
                             (error '"No clause matching" _mvar1358213589_))))
                      (let ((_K1358513599_
                             (lambda (_depth13596_ _id13597_)
                               (cons _id13597_
                                     (cons (gx#core-list
                                            'make-syntax-pattern
                                            (gx#core-list 'quote _id13597_)
                                            (gx#core-list 'quote _pvar13581_)
                                            _depth13596_)
                                           '())))))
                        (if (##pair? _mvar1358213589_)
                            (let ((_hd1358613602_ (##car _mvar1358213589_))
                                  (_tl1358713604_ (##cdr _mvar1358213589_)))
                              (let ((_id13607_ _hd1358613602_))
                                (let ((_depth13609_ _tl1358713604_))
                                  (_K1358513599_ _depth13609_ _id13607_))))
                            (_E1358413593_))))))
                _mvars13574_
                _pvars13576_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (eq? _fender13570_ '#t)
                                                       _body13571_
                                                       (gx#core-list
                                                        'if
                                                        _fender13570_
                                                        _body13571_
                                                        _E13578_))))))
                                            (let ()
                                              (_generate-match13072_
                                               _hd13569_
                                               _target13477_
                                               _e13573_
                                               _mvars13574_
                                               _K13611_
                                               _E13578_)))))))))))
                         (let ((_e1348313503_ _clause13479_))
                           (let ((_E1349213507_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _e1348313503_))))
                             (let ((_E1348513541_
                                    (lambda ()
                                      (if (gx#stx-pair? _e1348313503_)
                                          (let ((_e1349313511_
                                                 (gx#syntax-e _e1348313503_)))
                                            (let ((_hd1349413514_
                                                   (##car _e1349313511_))
                                                  (_tl1349513516_
                                                   (##cdr _e1349313511_)))
                                              (let ((_hd13519_ _hd1349413514_))
                                                (if (gx#stx-pair?
                                                     _tl1349513516_)
                                                    (let ((_e1349613521_
                                                           (gx#syntax-e
                                                            _tl1349513516_)))
                                                      (let ((_hd1349713524_
                                                             (##car _e1349613521_))
                                                            (_tl1349813526_
                                                             (##cdr _e1349613521_)))
                                                        (let ((_fender13529_
                                                               _hd1349713524_))
                                                          (if (gx#stx-pair?
                                                               _tl1349813526_)
                                                              (let ((_e1349913531_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1349813526_)))
                        (let ((_hd1350013534_ (##car _e1349913531_))
                              (_tl1350113536_ (##cdr _e1349913531_)))
                          (let ((_body13539_ _hd1350013534_))
                            (if (gx#stx-null? _tl1350113536_)
                                (if '#t
                                    (_generate113482_
                                     _hd13519_
                                     _fender13529_
                                     _body13539_)
                                    (_E1349213507_))
                                (_E1349213507_)))))
                      (_E1349213507_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1349213507_)))))
                                          (_E1349213507_)))))
                               (let ((_E1348413565_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1348313503_)
                                            (let ((_e1348613545_
                                                   (gx#syntax-e
                                                    _e1348313503_)))
                                              (let ((_hd1348713548_
                                                     (##car _e1348613545_))
                                                    (_tl1348813550_
                                                     (##cdr _e1348613545_)))
                                                (let ((_hd13553_
                                                       _hd1348713548_))
                                                  (if (gx#stx-pair?
                                                       _tl1348813550_)
                                                      (let ((_e1348913555_
                                                             (gx#syntax-e
                                                              _tl1348813550_)))
                                                        (let ((_hd1349013558_
                                                               (##car _e1348913555_))
                                                              (_tl1349113560_
                                                               (##cdr _e1348913555_)))
                                                          (let ((_body13563_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1349013558_))
                    (if (gx#stx-null? _tl1349113560_)
                        (if '#t
                            (_generate113482_ _hd13553_ '#t _body13563_)
                            (_E1348513541_))
                        (_E1348513541_)))))
              (_E1348513541_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1348513541_)))))
                                 (let () (_E1348413565_))))))))))
                (let ((_generate-bindings13069_
                       (lambda (_target13654_
                                _ids13655_
                                _clauses13656_
                                _clause-ids13657_
                                _E13658_)
                         (let ((_generate113660_
                                (lambda (_clause13759_
                                         _clause-id13760_
                                         _E13761_)
                                  (cons (cons _clause-id13760_ '())
                                        (cons (gx#core-list
                                               'lambda%
                                               (cons _target13654_ '())
                                               (_generate-clause13071_
                                                _target13654_
                                                _ids13655_
                                                _clause13759_
                                                _E13761_))
                                              '())))))
                           ((letrec ((_lp13662_
                                      (lambda (_rest13664_
                                               _rest-ids13665_
                                               _bindings13666_)
                                        (let ((_rest1366713675_ _rest13664_))
                                          (let ((_E1367013679_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _rest1366713675_))))
                                            (let ((_else1366913683_
                                                   (lambda ()
                                                     _bindings13666_)))
                                              (let ((_K1367113747_
                                                     (lambda (_rest13686_
                                                              _clause13687_)
                                                       (let ((_rest-ids1368813695_
                                                              _rest-ids13665_))
                                                         (let ((_E1369013699_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (error '"No clause matching" _rest-ids1368813695_))))
                   (let ((_K1369113735_
                          (lambda (_rest-ids13702_ _clause-id13703_)
                            (let ((_rest-ids1370413712_ _rest-ids13702_))
                              (let ((_E1370713716_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _rest-ids1370413712_))))
                                (let ((_else1370613720_
                                       (lambda ()
                                         (cons (_generate113660_
                                                _clause13687_
                                                _clause-id13703_
                                                _E13658_)
                                               _bindings13666_))))
                                  (let ((_K1370813725_
                                         (lambda (_next-clause-id13723_)
                                           (_lp13662_
                                            _rest13686_
                                            _rest-ids13702_
                                            (cons (_generate113660_
                                                   _clause13687_
                                                   _clause-id13703_
                                                   _next-clause-id13723_)
                                                  _bindings13666_)))))
                                    (if (##pair? _rest-ids1370413712_)
                                        (let ((_hd1370913728_
                                               (##car _rest-ids1370413712_))
                                              (_tl1371013730_
                                               (##cdr _rest-ids1370413712_)))
                                          (let ((_next-clause-id13733_
                                                 _hd1370913728_))
                                            (_K1370813725_
                                             _next-clause-id13733_)))
                                        (_else1370613720_)))))))))
                     (if (##pair? _rest-ids1368813695_)
                         (let ((_hd1369213738_ (##car _rest-ids1368813695_))
                               (_tl1369313740_ (##cdr _rest-ids1368813695_)))
                           (let ((_clause-id13743_ _hd1369213738_))
                             (let ((_rest-ids13745_ _tl1369313740_))
                               (_K1369113735_
                                _rest-ids13745_
                                _clause-id13743_))))
                         (_E1369013699_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (##pair? _rest1366713675_)
                                                    (let ((_hd1367213750_
                                                           (##car _rest1366713675_))
                                                          (_tl1367313752_
                                                           (##cdr _rest1366713675_)))
                                                      (let ((_clause13755_
                                                             _hd1367213750_))
                                                        (let ((_rest13757_
                                                               _tl1367313752_))
                                                          (_K1367113747_
                                                           _rest13757_
                                                           _clause13755_))))
                                                    (_else1366913683_)))))))))
                              _lp13662_)
                            _clauses13656_
                            _clause-ids13657_
                            '())))))
                  (let ((_e1307413087_ _stx13064_))
                    (let ((_E1307613091_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e1307413087_))))
                      (let ((_E1307513138_
                             (lambda ()
                               (if (gx#stx-pair? _e1307413087_)
                                   (let ((_e1307713095_
                                          (gx#syntax-e _e1307413087_)))
                                     (let ((_hd1307813098_
                                            (##car _e1307713095_))
                                           (_tl1307913100_
                                            (##cdr _e1307713095_)))
                                       (if (gx#stx-pair? _tl1307913100_)
                                           (let ((_e1308013103_
                                                  (gx#syntax-e
                                                   _tl1307913100_)))
                                             (let ((_hd1308113106_
                                                    (##car _e1308013103_))
                                                   (_tl1308213108_
                                                    (##cdr _e1308013103_)))
                                               (let ((_expr13111_
                                                      _hd1308113106_))
                                                 (if (gx#stx-pair?
                                                      _tl1308213108_)
                                                     (let ((_e1308313113_
                                                            (gx#syntax-e
                                                             _tl1308213108_)))
                                                       (let ((_hd1308413116_
                                                              (##car _e1308313113_))
                                                             (_tl1308513118_
                                                              (##cdr _e1308313113_)))
                                                         (let ((_ids13121_
                                                                _hd1308413116_))
                                                           (let ((_clauses13123_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1308513118_))
                     (if '#t
                         (if (not (gx#identifier-list? _ids13121_))
                             (gx#raise-syntax-error
                              '#f
                              '"Bad template identifier list"
                              _stx13064_
                              _ids13121_)
                             (if (not (gx#stx-list? _clauses13123_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _stx13064_)
                                 (let ((_ids13125_
                                        (gx#syntax->list _ids13121_)))
                                   (let ((_clauses13127_
                                          (gx#syntax->list _clauses13123_)))
                                     (let ((_clause-ids13129_
                                            (gx#gentemps _clauses13127_)))
                                       (let ((_E13131_ (gx#genident__0)))
                                         (let ((_target13133_
                                                (gx#genident__0)))
                                           (let ((_first13135_
                                                  (if (null? _clauses13127_)
                                                      _E13131_
                                                      (car _clause-ids13129_))))
                                             (let ()
                                               (gx#stx-wrap-source
                                                (gx#core-list
                                                 'let-values
                                                 (cons (cons (cons _E13131_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _target13133_ '())
                            (gx#core-list
                             'raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _target13133_))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_generate-body13070_
                                                  (_generate-bindings13069_
                                                   _target13133_
                                                   _ids13125_
                                                   _clauses13127_
                                                   _clause-ids13129_
                                                   _E13131_)
                                                  (cons _first13135_
                                                        (cons _expr13111_
                                                              '()))))
                                                (gx#stx-source
                                                 _stx13064_)))))))))))
                         (_E1307613091_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1307613091_)))))
                                           (_E1307613091_))))
                                   (_E1307613091_)))))
                        (let () (_E1307513138_))))))))))))
    (begin
      (define gx#macro-expand-syntax-case__0
        (lambda (_stx13766_)
          (let ((_identifier=?13768_ 'free-identifier=?))
            (let ((_unwrap-e13770_ 'syntax-e))
              (let ((_wrap-e13772_ 'quote-syntax))
                (gx#macro-expand-syntax-case__opt-lambda13062
                 _stx13766_
                 _identifier=?13768_
                 _unwrap-e13770_
                 _wrap-e13772_))))))
      (define gx#macro-expand-syntax-case__1
        (lambda (_stx13774_ _identifier=?13775_)
          (let ((_unwrap-e13777_ 'syntax-e))
            (let ((_wrap-e13779_ 'quote-syntax))
              (gx#macro-expand-syntax-case__opt-lambda13062
               _stx13774_
               _identifier=?13775_
               _unwrap-e13777_
               _wrap-e13779_)))))
      (define gx#macro-expand-syntax-case__2
        (lambda (_stx13781_ _identifier=?13782_ _unwrap-e13783_)
          (let ((_wrap-e13785_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda13062
             _stx13781_
             _identifier=?13782_
             _unwrap-e13783_
             _wrap-e13785_))))
      (define gx#macro-expand-syntax-case
        (lambda _g14213_
          (let ((_g14212_ (length _g14213_)))
            (cond ((fx= _g14212_ 1)
                   (apply gx#macro-expand-syntax-case__0 _g14213_))
                  ((fx= _g14212_ 2)
                   (apply gx#macro-expand-syntax-case__1 _g14213_))
                  ((fx= _g14212_ 3)
                   (apply gx#macro-expand-syntax-case__2 _g14213_))
                  ((fx= _g14212_ 4)
                   (apply gx#macro-expand-syntax-case__opt-lambda13062
                          _g14213_))
                  (else (error "No clause matching arguments" _g14213_))))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx13061_)
      (if (gx#identifier? _stx13061_)
          (##structure-instance-of?
           (gx#syntax-local-e__opt-lambda4057 _stx13061_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd13019_ . _rest13020_)
      (let ((_len13022_ (length _hd13019_)))
        ((letrec ((_lp13024_
                   (lambda (_rest13026_)
                     (let ((_rest1302713035_ _rest13026_))
                       (let ((_E1303013039_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1302713035_))))
                         (let ((_else1302913043_ (lambda () '#!void)))
                           (let ((_K1303113049_
                                  (lambda (_rest13046_ _hd13047_)
                                    (if (fx= _len13022_ (length _hd13047_))
                                        (_lp13024_ _rest13046_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Splice length mismatch"
                                         _hd13047_)))))
                             (if (##pair? _rest1302713035_)
                                 (let ((_hd1303213052_
                                        (##car _rest1302713035_))
                                       (_tl1303313054_
                                        (##cdr _rest1302713035_)))
                                   (let ((_hd13057_ _hd1303213052_))
                                     (let ((_rest13059_ _tl1303313054_))
                                       (_K1303113049_ _rest13059_ _hd13057_))))
                                 (_else1302913043_)))))))))
           _lp13024_)
         _rest13020_))))
  (define gx#syntax-split-splice
    (lambda (_stx12977_ _n12978_)
      ((letrec ((_lp12980_
                 (lambda (_rest12982_ _r12983_)
                   (if (gx#stx-pair? _rest12982_)
                       (let ((_g1298412991_ (gx#syntax-e _rest12982_)))
                         (let ((_E1298612995_
                                (lambda ()
                                  (error '"No clause matching"
                                         _g1298412991_))))
                           (let ((_K1298713001_
                                  (lambda (_rest12998_ _hd12999_)
                                    (_lp12980_
                                     _rest12998_
                                     (cons _hd12999_ _r12983_)))))
                             (if (##pair? _g1298412991_)
                                 (let ((_hd1298813004_ (##car _g1298412991_))
                                       (_tl1298913006_ (##cdr _g1298412991_)))
                                   (let ((_hd13009_ _hd1298813004_))
                                     (let ((_rest13011_ _tl1298913006_))
                                       (_K1298713001_ _rest13011_ _hd13009_))))
                                 (_E1298612995_)))))
                       ((letrec ((_lp13013_
                                  (lambda (_n13015_ _l13016_ _r13017_)
                                    (if (null? _l13016_)
                                        (values _l13016_ _r13017_)
                                        (if (fxpositive? _n13015_)
                                            (_lp13013_
                                             (fx- _n13015_ '1)
                                             (cdr _l13016_)
                                             (cons (car _l13016_) _r13017_))
                                            (values (reverse _l13016_)
                                                    _r13017_))))))
                          _lp13013_)
                        _n12978_
                        _r12983_
                        _rest12982_)))))
         _lp12980_)
       _stx12977_
       '()))))
