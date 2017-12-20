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
    (lambda _$args14371_
      (apply make-struct-instance gx#syntax-pattern::t _$args14371_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self14368_ _stx14369_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx14369_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx13972_)
      (letrec ((_generate13974_
                (lambda (_e14201_)
                  (letrec ((_BUG14203_
                            (lambda (_q14366_)
                              (error '"BUG: syntax; generate"
                                     _stx13972_
                                     _e14201_
                                     _q14366_)))
                           (_local-pattern-e14204_
                            (lambda (_pat14364_)
                              (gx#syntax-local-rewrap
                               (##structure-ref
                                _pat14364_
                                '2
                                gx#syntax-pattern::t
                                '#f))))
                           (_getvar14205_
                            (lambda (_q14361_ _vars14362_)
                              (assgetq _q14361_ _vars14362_ _BUG14203_)))
                           (_getarg14206_
                            (lambda (_arg14327_ _vars14328_)
                              (let* ((_arg1432914336_ _arg14327_)
                                     (_E1433114340_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _arg1432914336_)))
                                     (_K1433214349_
                                      (lambda (_e14343_ _tag14344_)
                                        (let ((_$e14346_ _tag14344_))
                                          (if (eq? _$e14346_ 'ref)
                                              (_getvar14205_
                                               _e14343_
                                               _vars14328_)
                                              (if (eq? _$e14346_ 'pattern)
                                                  (_local-pattern-e14204_
                                                   _e14343_)
                                                  (_BUG14203_ _arg14327_)))))))
                                (if (##pair? _arg1432914336_)
                                    (let ((_hd1433314352_
                                           (##car _arg1432914336_))
                                          (_tl1433414354_
                                           (##cdr _arg1432914336_)))
                                      (let* ((_tag14357_ _hd1433314352_)
                                             (_e14359_ _tl1433414354_))
                                        (_K1433214349_ _e14359_ _tag14357_)))
                                    (_E1433114340_))))))
                    (let _recur14208_ ((_e14210_ _e14201_) (_vars14211_ '()))
                      (let* ((_e1421214219_ _e14210_)
                             (_E1421414223_
                              (lambda ()
                                (error '"No clause matching" _e1421214219_)))
                             (_K1421514315_
                              (lambda (_body14226_ _tag14227_)
                                (let ((_$e14229_ _tag14227_))
                                  (if (eq? _$e14229_ 'datum)
                                      (gx#core-list 'quote _body14226_)
                                      (if (eq? _$e14229_ 'term)
                                          (let* ((_id14232_
                                                  (gx#syntax-local-unwrap
                                                   _body14226_))
                                                 (_marks14234_
                                                  (##direct-structure-ref
                                                   _id14232_
                                                   '3
                                                   gx#identifier-wrap::t
                                                   '#f)))
                                            (if (null? _marks14234_)
                                                (gx#core-list
                                                 'datum->syntax
                                                 '#f
                                                 (gx#core-list
                                                  'quote
                                                  _body14226_))
                                                (gx#core-list
                                                 'datum->syntax
                                                 (gx#core-list
                                                  'quote-syntax
                                                  _body14226_)
                                                 (gx#core-list
                                                  'quote
                                                  _body14226_)
                                                 '#f
                                                 '#f)))
                                          (if (eq? _$e14229_ 'pattern)
                                              (_local-pattern-e14204_
                                               _body14226_)
                                              (if (eq? _$e14229_ 'ref)
                                                  (_getvar14205_
                                                   _body14226_
                                                   _vars14211_)
                                                  (if (eq? _$e14229_ 'cons)
                                                      (gx#core-list
                                                       'cons
                                                       (_recur14208_
                                                        (car _body14226_)
                                                        _vars14211_)
                                                       (_recur14208_
                                                        (cdr _body14226_)
                                                        _vars14211_))
                                                      (if (eq? _$e14229_
                                                               'vector)
                                                          (gx#core-list
                                                           'list->vector
                                                           (_recur14208_
                                                            _body14226_
                                                            _vars14211_))
                                                          (if (eq? _$e14229_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'box)
                      (gx#core-list
                       'box
                       (_recur14208_ _body14226_ _vars14211_))
                      (if (eq? _$e14229_ 'splice)
                          (let* ((_body1423614247_ _body14226_)
                                 (_E1423814251_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _body1423614247_)))
                                 (_K1423914289_
                                  (lambda (_args14254_
                                           _iv14255_
                                           _hd14256_
                                           _depth14257_)
                                    (let* ((_targets14263_
                                            (map (lambda (_g1425814260_)
                                                   (_getarg14206_
                                                    _g1425814260_
                                                    _vars14211_))
                                                 _args14254_))
                                           (_fold-in14265_
                                            (gx#gentemps _args14254_))
                                           (_fold-out14267_ (gx#genident__0))
                                           (_lambda-args14269_
                                            (foldr1 cons
                                                    (cons _fold-out14267_ '())
                                                    _fold-in14265_))
                                           (_lambda-body14286_
                                            (if (fx> _depth14257_ '1)
                                                (let ((_r-args14277_
                                                       (map (lambda (_arg14271_)
                                                              (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cdr _arg14271_)))
                    _args14254_))
              (_r-vars14278_
               (foldr (lambda (_arg14273_ _var14274_ _r14275_)
                        (cons (cons (cdr _arg14273_) _var14274_) _r14275_))
                      _vars14211_
                      _args14254_
                      _fold-in14265_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur14208_
                                                   (cons* 'splice
                                                          (fx- _depth14257_ '1)
                                                          _hd14256_
                                                          (cons 'var
                                                                _fold-out14267_)
                                                          _r-args14277_)
                                                   _r-vars14278_))
                                                (let ((_hd-vars14284_
                                                       (foldr (lambda (_arg14280_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _var14281_
                               _r14282_)
                        (cons (cons (cdr _arg14280_) _var14281_) _r14282_))
                      _vars14211_
                      _args14254_
                      _fold-in14265_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#core-list
                                                   'cons
                                                   (_recur14208_
                                                    _hd14256_
                                                    _hd-vars14284_)
                                                   _fold-out14267_)))))
                                      (gx#core-list
                                       'begin
                                       (if (fx> (length _targets14263_) '1)
                                           (gx#core-cons*
                                            'syntax-check-splice-targets
                                            _targets14263_)
                                           '#!void)
                                       (gx#core-cons*
                                        'foldr
                                        (gx#core-list
                                         'lambda%
                                         _lambda-args14269_
                                         _lambda-body14286_)
                                        (_recur14208_ _iv14255_ _vars14211_)
                                        _targets14263_))))))
                            (if (##pair? _body1423614247_)
                                (let ((_hd1424014292_ (##car _body1423614247_))
                                      (_tl1424114294_
                                       (##cdr _body1423614247_)))
                                  (let ((_depth14297_ _hd1424014292_))
                                    (if (##pair? _tl1424114294_)
                                        (let ((_hd1424214299_
                                               (##car _tl1424114294_))
                                              (_tl1424314301_
                                               (##cdr _tl1424114294_)))
                                          (let ((_hd14304_ _hd1424214299_))
                                            (if (##pair? _tl1424314301_)
                                                (let ((_hd1424414306_
                                                       (##car _tl1424314301_))
                                                      (_tl1424514308_
                                                       (##cdr _tl1424314301_)))
                                                  (let* ((_iv14311_
                                                          _hd1424414306_)
                                                         (_args14313_
                                                          _tl1424514308_))
                                                    (_K1423914289_
                                                     _args14313_
                                                     _iv14311_
                                                     _hd14304_
                                                     _depth14297_)))
                                                (_E1423814251_))))
                                        (_E1423814251_))))
                                (_E1423814251_)))
                          (if (eq? _$e14229_ 'var)
                              _body14226_
                              (_BUG14203_ _e14210_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (if (##pair? _e1421214219_)
                            (let ((_hd1421614318_ (##car _e1421214219_))
                                  (_tl1421714320_ (##cdr _e1421214219_)))
                              (let* ((_tag14323_ _hd1421614318_)
                                     (_body14325_ _tl1421714320_))
                                (_K1421514315_ _body14325_ _tag14323_)))
                            (_E1421414223_)))))))
               (_parse13975_
                (lambda (_e14016_)
                  (letrec ((_make-cons14018_
                            (lambda (_hd14193_ _tl14194_)
                              (let ((_g14373_ _hd14193_) (_g14375_ _tl14194_))
                                (begin
                                  (let ((_g14374_ (values-count _g14373_)))
                                    (if (not (fx= _g14374_ 2))
                                        (error "Context expects 2 values"
                                               _g14374_)))
                                  (let ((_g14376_ (values-count _g14375_)))
                                    (if (not (fx= _g14376_ 2))
                                        (error "Context expects 2 values"
                                               _g14376_)))
                                  (let ((_hd-e14196_ (values-ref _g14373_ 0))
                                        (_hd-vars14197_
                                         (values-ref _g14373_ 1)))
                                    (let ((_tl-e14198_ (values-ref _g14375_ 0))
                                          (_tl-vars14199_
                                           (values-ref _g14375_ 1)))
                                      (values (cons* 'cons
                                                     _hd-e14196_
                                                     _tl-e14198_)
                                              (append _hd-vars14197_
                                                      _tl-vars14199_))))))))
                           (_make-splice14019_
                            (lambda (_where14132_
                                     _depth14133_
                                     _hd14134_
                                     _tl14135_)
                              (let ((_g14377_ _hd14134_) (_g14379_ _tl14135_))
                                (begin
                                  (let ((_g14378_ (values-count _g14377_)))
                                    (if (not (fx= _g14378_ 2))
                                        (error "Context expects 2 values"
                                               _g14378_)))
                                  (let ((_g14380_ (values-count _g14379_)))
                                    (if (not (fx= _g14380_ 2))
                                        (error "Context expects 2 values"
                                               _g14380_)))
                                  (let ((_hd-e14137_ (values-ref _g14377_ 0))
                                        (_hd-vars14138_
                                         (values-ref _g14377_ 1)))
                                    (let ((_tl-e14139_ (values-ref _g14379_ 0))
                                          (_tl-vars14140_
                                           (values-ref _g14379_ 1)))
                                      (let _lp14142_ ((_rest14144_
                                                       _hd-vars14138_)
                                                      (_targets14145_ '())
                                                      (_vars14146_
                                                       _tl-vars14140_))
                                        (let* ((_rest1414714157_ _rest14144_)
                                               (_E1415014161_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _rest1414714157_)))
                                               (_else1414914165_
                                                (lambda ()
                                                  (if (null? _targets14145_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Misplaced ellipsis"
                                                       _stx13972_
                                                       _where14132_)
                                                      (values (cons* 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _depth14133_
                             _hd-e14137_
                             _tl-e14139_
                             _targets14145_)
                      _vars14146_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_K1415114174_
                                                (lambda (_rest14168_
                                                         _hd-pat14169_
                                                         _hd-depth*14170_)
                                                  (let ((_hd-depth14172_
                                                         (fx- _hd-depth*14170_
                                                              _depth14133_)))
                                                    (if (fxpositive?
                                                         _hd-depth14172_)
                                                        (_lp14142_
                                                         _rest14168_
                                                         (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd-pat14169_)
                       _targets14145_)
                 (cons (cons _hd-depth14172_ _hd-pat14169_) _vars14146_))
                (if (fxzero? _hd-depth14172_)
                    (_lp14142_
                     _rest14168_
                     (cons (cons 'pattern _hd-pat14169_) _targets14145_)
                     _vars14146_)
                    (gx#raise-syntax-error
                     '#f
                     '"Too many ellipses"
                     _stx13972_
                     _where14132_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1414714157_)
                                              (let ((_hd1415214177_
                                                     (##car _rest1414714157_))
                                                    (_tl1415314179_
                                                     (##cdr _rest1414714157_)))
                                                (if (##pair? _hd1415214177_)
                                                    (let ((_hd1415414182_
                                                           (##car _hd1415214177_))
                                                          (_tl1415514184_
                                                           (##cdr _hd1415214177_)))
                                                      (let* ((_hd-depth*14187_
                                                              _hd1415414182_)
                                                             (_hd-pat14189_
                                                              _tl1415514184_)
                                                             (_rest14191_
                                                              _tl1415314179_))
                                                        (_K1415114174_
                                                         _rest14191_
                                                         _hd-pat14189_
                                                         _hd-depth*14187_)))
                                                    (_else1414914165_)))
                                              (_else1414914165_))))))))))
                           (_recur14020_
                            (lambda (_e14025_ _is-e?14026_)
                              (if (_is-e?14026_ _e14025_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Mislpaced ellipsis"
                                   _stx13972_)
                                  (if (gx#syntax-local-pattern? _e14025_)
                                      (let* ((_pat14028_
                                              (gx#syntax-local-e__0 _e14025_))
                                             (_depth14030_
                                              (##structure-ref
                                               _pat14028_
                                               '3
                                               gx#syntax-pattern::t
                                               '#f)))
                                        (if (fxpositive? _depth14030_)
                                            (values (cons 'ref _pat14028_)
                                                    (cons (cons _depth14030_
                                                                _pat14028_)
                                                          '()))
                                            (values (cons 'pattern _pat14028_)
                                                    '())))
                                      (if (gx#identifier? _e14025_)
                                          (values (cons 'term _e14025_) '())
                                          (if (gx#stx-pair? _e14025_)
                                              (let* ((_e1403214039_ _e14025_)
                                                     (_E1403414043_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _e1403214039_)))
                                                     (_E1403314122_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e1403214039_)
                                                            (let ((_e1403514047_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e1403214039_)))
                      (let ((_hd1403614050_ (##car _e1403514047_))
                            (_tl1403714052_ (##cdr _e1403514047_)))
                        (let* ((_hd14055_ _hd1403614050_)
                               (_rest14057_ _tl1403714052_))
                          (if '#t
                              (if (_is-e?14026_ _hd14055_)
                                  (let* ((_e1405814065_ _rest14057_)
                                         (_E1406014069_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _stx13972_
                                             _e14025_)))
                                         (_E1405914083_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1405814065_)
                                                (let ((_e1406114073_
                                                       (gx#syntax-e
                                                        _e1405814065_)))
                                                  (let ((_hd1406214076_
                                                         (##car _e1406114073_))
                                                        (_tl1406314078_
                                                         (##cdr _e1406114073_)))
                                                    (let ((_rest14081_
                                                           _hd1406214076_))
                                                      (if (gx#stx-null?
                                                           _tl1406314078_)
                                                          (if '#t
                                                              (_recur14020_
                                                               _rest14081_
                                                               false)
                                                              (_E1406014069_))
                                                          (_E1406014069_)))))
                                                (_E1406014069_)))))
                                    (_E1405914083_))
                                  (let _lp14087_ ((_rest14089_ _rest14057_)
                                                  (_depth14090_ '0))
                                    (let* ((_e1409114098_ _rest14089_)
                                           (_E1409314102_
                                            (lambda ()
                                              (if (fxpositive? _depth14090_)
                                                  (_make-splice14019_
                                                   _e14025_
                                                   _depth14090_
                                                   (_recur14020_
                                                    _hd14055_
                                                    _is-e?14026_)
                                                   (_recur14020_
                                                    _rest14089_
                                                    _is-e?14026_))
                                                  (_make-cons14018_
                                                   (_recur14020_
                                                    _hd14055_
                                                    _is-e?14026_)
                                                   (_recur14020_
                                                    _rest14089_
                                                    _is-e?14026_)))))
                                           (_E1409214118_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1409114098_)
                                                  (let ((_e1409414106_
                                                         (gx#syntax-e
                                                          _e1409114098_)))
                                                    (let ((_hd1409514109_
                                                           (##car _e1409414106_))
                                                          (_tl1409614111_
                                                           (##cdr _e1409414106_)))
                                                      (let* ((_rest-hd14114_
                                                              _hd1409514109_)
                                                             (_rest-tl14116_
                                                              _tl1409614111_))
                                                        (if '#t
                                                            (if (_is-e?14026_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rest-hd14114_)
                        (_lp14087_ _rest-tl14116_ (fx+ _depth14090_ '1))
                        (if (fxpositive? _depth14090_)
                            (_make-splice14019_
                             _e14025_
                             _depth14090_
                             (_recur14020_ _hd14055_ _is-e?14026_)
                             (_recur14020_ _rest14089_ _is-e?14026_))
                            (_make-cons14018_
                             (_recur14020_ _hd14055_ _is-e?14026_)
                             (_recur14020_ _rest14089_ _is-e?14026_))))
                    (_E1409314102_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1409314102_)))))
                                      (_E1409214118_))))
                              (_E1403414043_)))))
                    (_E1403414043_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1403314122_))
                                              (if (gx#stx-vector? _e14025_)
                                                  (let ((_g14381_
                                                         (_recur14020_
                                                          (vector->list
                                                           (gx#stx-unwrap__0
                                                            _e14025_))
                                                          _is-e?14026_)))
                                                    (begin
                                                      (let ((_g14382_
                                                             (values-count
                                                              _g14381_)))
                                                        (if (not (fx= _g14382_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g14382_)))
              (let ((_e14126_ (values-ref _g14381_ 0))
                    (_vars14127_ (values-ref _g14381_ 1)))
                (values (cons 'vector _e14126_) _vars14127_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e14025_)
                                                      (let ((_g14383_
                                                             (_recur14020_
                                                              (unbox (gx#stx-unwrap__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e14025_))
                      _is-e?14026_)))
                (begin
                  (let ((_g14384_ (values-count _g14383_)))
                    (if (not (fx= _g14384_ 2))
                        (error "Context expects 2 values" _g14384_)))
                  (let ((_e14129_ (values-ref _g14383_ 0))
                        (_vars14130_ (values-ref _g14383_ 1)))
                    (values (cons 'box _e14129_) _vars14130_))))
              (values (cons 'datum _e14025_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    (let ((_g14385_ (_recur14020_ _e14016_ gx#ellipsis?)))
                      (begin
                        (let ((_g14386_ (values-count _g14385_)))
                          (if (not (fx= _g14386_ 2))
                              (error "Context expects 2 values" _g14386_)))
                        (let ((_tree14022_ (values-ref _g14385_ 0))
                              (_vars14023_ (values-ref _g14385_ 1)))
                          (if (null? _vars14023_)
                              _tree14022_
                              (gx#raise-syntax-error
                               '#f
                               '"Missing ellipsis"
                               _stx13972_
                               _vars14023_)))))))))
        (let* ((_e1397613986_ _stx13972_)
               (_E1397813990_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _stx13972_)))
               (_E1397714012_
                (lambda ()
                  (if (gx#stx-pair? _e1397613986_)
                      (let ((_e1397913994_ (gx#syntax-e _e1397613986_)))
                        (let ((_hd1398013997_ (##car _e1397913994_))
                              (_tl1398113999_ (##cdr _e1397913994_)))
                          (if (gx#stx-pair? _tl1398113999_)
                              (let ((_e1398214002_
                                     (gx#syntax-e _tl1398113999_)))
                                (let ((_hd1398314005_ (##car _e1398214002_))
                                      (_tl1398414007_ (##cdr _e1398214002_)))
                                  (let ((_form14010_ _hd1398314005_))
                                    (if (gx#stx-null? _tl1398414007_)
                                        (if '#t
                                            (gx#stx-wrap-source
                                             (_generate13974_
                                              (_parse13975_ _form14010_))
                                             (gx#stx-source _stx13972_))
                                            (_E1397813990_))
                                        (_E1397813990_)))))
                              (_E1397813990_))))
                      (_E1397813990_)))))
          (_E1397714012_)))))
  (begin
    (define gx#macro-expand-syntax-case__opt-lambda13242
      (lambda (_stx13244_ _identifier=?13245_ _unwrap-e13246_ _wrap-e13247_)
        (letrec ((_generate-bindings13249_
                  (lambda (_target13834_
                           _ids13835_
                           _clauses13836_
                           _clause-ids13837_
                           _E13838_)
                    (letrec ((_generate113840_
                              (lambda (_clause13939_ _clause-id13940_ _E13941_)
                                (cons (cons _clause-id13940_ '())
                                      (cons (gx#core-list
                                             'lambda%
                                             (cons _target13834_ '())
                                             (_generate-clause13251_
                                              _target13834_
                                              _ids13835_
                                              _clause13939_
                                              _E13941_))
                                            '())))))
                      (let _lp13842_ ((_rest13844_ _clauses13836_)
                                      (_rest-ids13845_ _clause-ids13837_)
                                      (_bindings13846_ '()))
                        (let* ((_rest1384713855_ _rest13844_)
                               (_E1385013859_
                                (lambda ()
                                  (error '"No clause matching"
                                         _rest1384713855_)))
                               (_else1384913863_ (lambda () _bindings13846_))
                               (_K1385113927_
                                (lambda (_rest13866_ _clause13867_)
                                  (let* ((_rest-ids1386813875_ _rest-ids13845_)
                                         (_E1387013879_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids1386813875_)))
                                         (_K1387113915_
                                          (lambda (_rest-ids13882_
                                                   _clause-id13883_)
                                            (let* ((_rest-ids1388413892_
                                                    _rest-ids13882_)
                                                   (_E1388713896_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _rest-ids1388413892_)))
                                                   (_else1388613900_
                                                    (lambda ()
                                                      (cons (_generate113840_
                                                             _clause13867_
                                                             _clause-id13883_
                                                             _E13838_)
                                                            _bindings13846_)))
                                                   (_K1388813905_
                                                    (lambda (_next-clause-id13903_)
                                                      (_lp13842_
                                                       _rest13866_
                                                       _rest-ids13882_
                                                       (cons (_generate113840_
                                                              _clause13867_
                                                              _clause-id13883_
                                                              _next-clause-id13903_)
                                                             _bindings13846_)))))
                                              (if (##pair? _rest-ids1388413892_)
                                                  (let ((_hd1388913908_
                                                         (##car _rest-ids1388413892_))
                                                        (_tl1389013910_
                                                         (##cdr _rest-ids1388413892_)))
                                                    (let ((_next-clause-id13913_
                                                           _hd1388913908_))
                                                      (_K1388813905_
                                                       _next-clause-id13913_)))
                                                  (_else1388613900_))))))
                                    (if (##pair? _rest-ids1386813875_)
                                        (let ((_hd1387213918_
                                               (##car _rest-ids1386813875_))
                                              (_tl1387313920_
                                               (##cdr _rest-ids1386813875_)))
                                          (let* ((_clause-id13923_
                                                  _hd1387213918_)
                                                 (_rest-ids13925_
                                                  _tl1387313920_))
                                            (_K1387113915_
                                             _rest-ids13925_
                                             _clause-id13923_)))
                                        (_E1387013879_))))))
                          (if (##pair? _rest1384713855_)
                              (let ((_hd1385213930_ (##car _rest1384713855_))
                                    (_tl1385313932_ (##cdr _rest1384713855_)))
                                (let* ((_clause13935_ _hd1385213930_)
                                       (_rest13937_ _tl1385313932_))
                                  (_K1385113927_ _rest13937_ _clause13935_)))
                              (_else1384913863_)))))))
                 (_generate-body13250_
                  (lambda (_bindings13794_ _body13795_)
                    (let _recur13797_ ((_rest13799_ _bindings13794_))
                      (let* ((_rest1380013808_ _rest13799_)
                             (_E1380313812_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1380013808_)))
                             (_else1380213816_ (lambda () _body13795_))
                             (_K1380413822_
                              (lambda (_rest13819_ _hd13820_)
                                (gx#core-list
                                 'let-values
                                 (cons _hd13820_ '())
                                 (_recur13797_ _rest13819_)))))
                        (if (##pair? _rest1380013808_)
                            (let ((_hd1380513825_ (##car _rest1380013808_))
                                  (_tl1380613827_ (##cdr _rest1380013808_)))
                              (let* ((_hd13830_ _hd1380513825_)
                                     (_rest13832_ _tl1380613827_))
                                (_K1380413822_ _rest13832_ _hd13830_)))
                            (_else1380213816_))))))
                 (_generate-clause13251_
                  (lambda (_target13657_ _ids13658_ _clause13659_ _E13660_)
                    (letrec ((_generate113662_
                              (lambda (_hd13749_ _fender13750_ _body13751_)
                                (let ((_g14387_
                                       (_parse-clause13253_
                                        _hd13749_
                                        _ids13658_)))
                                  (begin
                                    (let ((_g14388_ (values-count _g14387_)))
                                      (if (not (fx= _g14388_ 2))
                                          (error "Context expects 2 values"
                                                 _g14388_)))
                                    (let ((_e13753_ (values-ref _g14387_ 0))
                                          (_mvars13754_
                                           (values-ref _g14387_ 1)))
                                      (let* ((_pvars13756_
                                              (map gx#syntax-local-rewrap
                                                   (gx#gentemps _mvars13754_)))
                                             (_E13758_
                                              (cons _E13660_
                                                    (cons _target13657_ '())))
                                             (_K13791_
                                              (gx#core-list
                                               'lambda%
                                               _pvars13756_
                                               (gx#core-list
                                                'let-syntax
                                                (map (lambda (_mvar13760_
                                                              _pvar13761_)
                                                       (let* ((_mvar1376213769_
                                                               _mvar13760_)
                                                              (_E1376413773_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (error '"No clause matching" _mvar1376213769_)))
                      (_K1376513779_
                       (lambda (_depth13776_ _id13777_)
                         (cons _id13777_
                               (cons (gx#core-list
                                      'make-syntax-pattern
                                      (gx#core-list 'quote _id13777_)
                                      (gx#core-list 'quote _pvar13761_)
                                      _depth13776_)
                                     '())))))
                 (if (##pair? _mvar1376213769_)
                     (let ((_hd1376613782_ (##car _mvar1376213769_))
                           (_tl1376713784_ (##cdr _mvar1376213769_)))
                       (let* ((_id13787_ _hd1376613782_)
                              (_depth13789_ _tl1376713784_))
                         (_K1376513779_ _depth13789_ _id13787_)))
                     (_E1376413773_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _mvars13754_
                                                     _pvars13756_)
                                                (if (eq? _fender13750_ '#t)
                                                    _body13751_
                                                    (gx#core-list
                                                     'if
                                                     _fender13750_
                                                     _body13751_
                                                     _E13758_))))))
                                        (_generate-match13252_
                                         _hd13749_
                                         _target13657_
                                         _e13753_
                                         _mvars13754_
                                         _K13791_
                                         _E13758_))))))))
                      (let* ((_e1366313683_ _clause13659_)
                             (_E1367213687_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _e1366313683_)))
                             (_E1366513721_
                              (lambda ()
                                (if (gx#stx-pair? _e1366313683_)
                                    (let ((_e1367313691_
                                           (gx#syntax-e _e1366313683_)))
                                      (let ((_hd1367413694_
                                             (##car _e1367313691_))
                                            (_tl1367513696_
                                             (##cdr _e1367313691_)))
                                        (let ((_hd13699_ _hd1367413694_))
                                          (if (gx#stx-pair? _tl1367513696_)
                                              (let ((_e1367613701_
                                                     (gx#syntax-e
                                                      _tl1367513696_)))
                                                (let ((_hd1367713704_
                                                       (##car _e1367613701_))
                                                      (_tl1367813706_
                                                       (##cdr _e1367613701_)))
                                                  (let ((_fender13709_
                                                         _hd1367713704_))
                                                    (if (gx#stx-pair?
                                                         _tl1367813706_)
                                                        (let ((_e1367913711_
                                                               (gx#syntax-e
                                                                _tl1367813706_)))
                                                          (let ((_hd1368013714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1367913711_))
                        (_tl1368113716_ (##cdr _e1367913711_)))
                    (let ((_body13719_ _hd1368013714_))
                      (if (gx#stx-null? _tl1368113716_)
                          (if '#t
                              (_generate113662_
                               _hd13699_
                               _fender13709_
                               _body13719_)
                              (_E1367213687_))
                          (_E1367213687_)))))
                (_E1367213687_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1367213687_)))))
                                    (_E1367213687_))))
                             (_E1366413745_
                              (lambda ()
                                (if (gx#stx-pair? _e1366313683_)
                                    (let ((_e1366613725_
                                           (gx#syntax-e _e1366313683_)))
                                      (let ((_hd1366713728_
                                             (##car _e1366613725_))
                                            (_tl1366813730_
                                             (##cdr _e1366613725_)))
                                        (let ((_hd13733_ _hd1366713728_))
                                          (if (gx#stx-pair? _tl1366813730_)
                                              (let ((_e1366913735_
                                                     (gx#syntax-e
                                                      _tl1366813730_)))
                                                (let ((_hd1367013738_
                                                       (##car _e1366913735_))
                                                      (_tl1367113740_
                                                       (##cdr _e1366913735_)))
                                                  (let ((_body13743_
                                                         _hd1367013738_))
                                                    (if (gx#stx-null?
                                                         _tl1367113740_)
                                                        (if '#t
                                                            (_generate113662_
                                                             _hd13733_
                                                             '#t
                                                             _body13743_)
                                                            (_E1366513721_))
                                                        (_E1366513721_)))))
                                              (_E1366513721_)))))
                                    (_E1366513721_)))))
                        (_E1366413745_)))))
                 (_generate-match13252_
                  (lambda (_where13416_
                           _target13417_
                           _hd13418_
                           _mvars13419_
                           _K13420_
                           _E13421_)
                    (letrec ((_BUG13423_
                              (lambda (_q13655_)
                                (error '"BUG: syntax-case; generate"
                                       _stx13244_
                                       _hd13418_
                                       _q13655_)))
                             (_recur13424_
                              (lambda (_e13509_
                                       _vars13510_
                                       _target13511_
                                       _E13512_
                                       _k13513_)
                                (let* ((_e1351413521_ _e13509_)
                                       (_E1351613525_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e1351413521_)))
                                       (_K1351713643_
                                        (lambda (_body13528_ _tag13529_)
                                          (let ((_$e13531_ _tag13529_))
                                            (if (eq? _$e13531_ 'any)
                                                (_k13513_ _vars13510_)
                                                (if (eq? _$e13531_ 'id)
                                                    (gx#core-list
                                                     'if
                                                     (gx#core-list
                                                      'identifier?
                                                      _target13511_)
                                                     (gx#core-list
                                                      'if
                                                      (gx#core-list
                                                       _identifier=?13245_
                                                       (gx#core-list
                                                        _wrap-e13247_
                                                        _body13528_)
                                                       _target13511_)
                                                      (_k13513_ _vars13510_)
                                                      _E13512_)
                                                     _E13512_)
                                                    (if (eq? _$e13531_ 'var)
                                                        (_k13513_
                                                         (cons (cons _body13528_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _target13511_)
                       _vars13510_))
                (if (eq? _$e13531_ 'cons)
                    (let ((_$e13534_ (gx#genident__1 'e))
                          (_$hd13535_ (gx#genident__1 'hd))
                          (_$tl13536_ (gx#genident__1 'tl)))
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _target13511_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$e13534_ '())
                                    (cons (gx#core-list
                                           _unwrap-e13246_
                                           _target13511_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$hd13535_ '())
                                     (cons (gx#core-list '##car _$e13534_)
                                           '()))
                               (cons (cons (cons _$tl13536_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$e13534_)
                                                 '()))
                                     '()))
                         (let* ((_body1353713544_ _body13528_)
                                (_E1353913548_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _body1353713544_)))
                                (_K1354013556_
                                 (lambda (_tl13551_ _hd13552_)
                                   (_recur13424_
                                    _hd13552_
                                    _vars13510_
                                    _$hd13535_
                                    _E13512_
                                    (lambda (_vars13554_)
                                      (_recur13424_
                                       _tl13551_
                                       _vars13554_
                                       _$tl13536_
                                       _E13512_
                                       _k13513_))))))
                           (if (##pair? _body1353713544_)
                               (let ((_hd1354113559_ (##car _body1353713544_))
                                     (_tl1354213561_ (##cdr _body1353713544_)))
                                 (let* ((_hd13564_ _hd1354113559_)
                                        (_tl13566_ _tl1354213561_))
                                   (_K1354013556_ _tl13566_ _hd13564_)))
                               (_E1353913548_)))))
                       _E13512_))
                    (if (eq? _$e13531_ 'splice)
                        (let* ((_body1356713574_ _body13528_)
                               (_E1356913578_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body1356713574_)))
                               (_K1357013627_
                                (lambda (_tl13581_ _hd13582_)
                                  (let* ((_rlen13584_
                                          (_splice-rlen13425_ _tl13581_))
                                         (_$target13586_
                                          (gx#genident__1 'target))
                                         (_$hd13588_ (gx#genident__1 'hd))
                                         (_$tl13590_ (gx#genident__1 'tl))
                                         (_$lp13592_ (gx#genident__1 'loop))
                                         (_$lp-e13594_ (gx#genident__1 'e))
                                         (_$lp-hd13596_
                                          (gx#genident__1 'lp-hd))
                                         (_$lp-tl13598_
                                          (gx#genident__1 'lp-tl))
                                         (_svars13600_
                                          (_splice-vars13426_ _hd13582_))
                                         (_lvars13602_
                                          (gx#gentemps _svars13600_))
                                         (_tlvars13604_
                                          (gx#gentemps _svars13600_))
                                         (_linit13608_
                                          (map (lambda (_var13606_)
                                                 (gx#core-list 'quote '()))
                                               _lvars13602_)))
                                    (letrec ((_make-loop13611_
                                              (lambda (_vars13613_)
                                                (gx#core-list
                                                 'letrec-values
                                                 (cons (cons (cons _$lp13592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _$hd13588_ _lvars13602_)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-pair? _$hd13588_)
                             (gx#core-list
                              'let-values
                              (cons (cons (cons _$lp-e13594_ '())
                                          (cons (gx#core-list
                                                 _unwrap-e13246_
                                                 _$hd13588_)
                                                '()))
                                    '())
                              (gx#core-list
                               'let-values
                               (cons (cons (cons _$lp-hd13596_ '())
                                           (cons (gx#core-list
                                                  '##car
                                                  _$lp-e13594_)
                                                 '()))
                                     (cons (cons (cons _$lp-tl13598_ '())
                                                 (cons (gx#core-list
                                                        '##cdr
                                                        _$lp-e13594_)
                                                       '()))
                                           '()))
                               (_recur13424_
                                _hd13582_
                                '()
                                _$lp-hd13596_
                                _E13512_
                                (lambda (_hdvars13615_)
                                  (cons* _$lp13592_
                                         _$lp-tl13598_
                                         (map (lambda (_svar13617_ _lvar13618_)
                                                (gx#core-list
                                                 'cons
                                                 (assgetq _svar13617_
                                                          _hdvars13615_
                                                          _BUG13423_)
                                                 _lvar13618_))
                                              _svars13600_
                                              _lvars13602_))))))
                             (gx#core-list
                              'let-values
                              (map (lambda (_lvar13620_ _tlvar13621_)
                                     (cons (cons _tlvar13621_ '())
                                           (cons (gx#core-list
                                                  'reverse
                                                  _lvar13620_)
                                                 '())))
                                   _lvars13602_
                                   _tlvars13604_)
                              (_k13513_
                               (foldl (lambda (_svar13623_
                                               _tlvar13624_
                                               _r13625_)
                                        (cons (cons _svar13623_ _tlvar13624_)
                                              _r13625_))
                                      _vars13613_
                                      _svars13600_
                                      _tlvars13604_)))))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons* _$lp13592_
                                                        _$target13586_
                                                        _linit13608_)))))
                                      (gx#core-list
                                       'if
                                       (gx#core-list
                                        'stx-pair/null?
                                        _target13511_)
                                       (gx#core-list
                                        'if
                                        (gx#core-list
                                         'fx>=
                                         (gx#core-list
                                          'stx-length
                                          _target13511_)
                                         _rlen13584_)
                                        (gx#core-list
                                         'let-values
                                         (cons (cons (cons _$target13586_
                                                           (cons _$tl13590_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (gx#core-list
                                                            'syntax-split-splice
                                                            _target13511_
                                                            _rlen13584_)
                                                           '()))
                                               '())
                                         (_recur13424_
                                          _tl13581_
                                          _vars13510_
                                          _$tl13590_
                                          _E13512_
                                          _make-loop13611_))
                                        _E13512_)
                                       _E13512_))))))
                          (if (##pair? _body1356713574_)
                              (let ((_hd1357113630_ (##car _body1356713574_))
                                    (_tl1357213632_ (##cdr _body1356713574_)))
                                (let* ((_hd13635_ _hd1357113630_)
                                       (_tl13637_ _tl1357213632_))
                                  (_K1357013627_ _tl13637_ _hd13635_)))
                              (_E1356913578_)))
                        (if (eq? _$e13531_ 'null)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-null? _target13511_)
                             (_k13513_ _vars13510_)
                             _E13512_)
                            (if (eq? _$e13531_ 'vector)
                                (let ((_$e13639_ (gx#genident__1 'e)))
                                  (gx#core-list
                                   'if
                                   (gx#core-list 'stx-vector? _target13511_)
                                   (gx#core-list
                                    'let-values
                                    (cons (cons (cons _$e13639_ '())
                                                (cons (gx#core-list
                                                       'vector->list
                                                       (gx#core-list
                                                        _unwrap-e13246_
                                                        _target13511_))
                                                      '()))
                                          '())
                                    (_recur13424_
                                     _body13528_
                                     _vars13510_
                                     _$e13639_
                                     _E13512_
                                     _k13513_))
                                   _E13512_))
                                (if (eq? _$e13531_ 'box)
                                    (let ((_$e13641_ (gx#genident__1 'e)))
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-box? _target13511_)
                                       (gx#core-list
                                        'let-values
                                        (cons (cons (cons _$e13641_ '())
                                                    (cons (gx#core-list
                                                           'unbox
                                                           (gx#core-list
                                                            _unwrap-e13246_
                                                            _target13511_))
                                                          '()))
                                              '())
                                        (_recur13424_
                                         _body13528_
                                         _vars13510_
                                         _$e13641_
                                         _E13512_
                                         _k13513_))
                                       _E13512_))
                                    (if (eq? _$e13531_ 'datum)
                                        (gx#core-list
                                         'if
                                         (gx#core-list
                                          'stx-datum?
                                          _target13511_)
                                         (gx#core-list
                                          'if
                                          (gx#core-list
                                           'equal?
                                           (gx#core-list 'stx-e _target13511_)
                                           _body13528_)
                                          (_k13513_ _vars13510_)
                                          _E13512_)
                                         _E13512_)
                                        (_BUG13423_ _e13509_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (##pair? _e1351413521_)
                                      (let ((_hd1351813646_
                                             (##car _e1351413521_))
                                            (_tl1351913648_
                                             (##cdr _e1351413521_)))
                                        (let* ((_tag13651_ _hd1351813646_)
                                               (_body13653_ _tl1351913648_))
                                          (_K1351713643_
                                           _body13653_
                                           _tag13651_)))
                                      (_E1351613525_)))))
                             (_splice-rlen13425_
                              (lambda (_e13471_)
                                (let _lp13473_ ((_e13475_ _e13471_)
                                                (_n13476_ '0))
                                  (let* ((_e1347713484_ _e13475_)
                                         (_E1347913488_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1347713484_)))
                                         (_K1348013497_
                                          (lambda (_body13491_ _tag13492_)
                                            (let ((_$e13494_ _tag13492_))
                                              (if (eq? _$e13494_ 'splice)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Ambiguous pattern"
                                                   _stx13244_
                                                   _where13416_)
                                                  (if (eq? _$e13494_ 'cons)
                                                      (_lp13473_
                                                       (cdr _body13491_)
                                                       (fx+ _n13476_ '1))
                                                      _n13476_))))))
                                    (if (##pair? _e1347713484_)
                                        (let ((_hd1348113500_
                                               (##car _e1347713484_))
                                              (_tl1348213502_
                                               (##cdr _e1347713484_)))
                                          (let* ((_tag13505_ _hd1348113500_)
                                                 (_body13507_ _tl1348213502_))
                                            (_K1348013497_
                                             _body13507_
                                             _tag13505_)))
                                        (_E1347913488_))))))
                             (_splice-vars13426_
                              (lambda (_e13433_)
                                (let _recur13435_ ((_e13437_ _e13433_)
                                                   (_vars13438_ '()))
                                  (let* ((_e1343913446_ _e13437_)
                                         (_E1344113450_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1343913446_)))
                                         (_K1344213459_
                                          (lambda (_body13453_ _tag13454_)
                                            (let ((_$e13456_ _tag13454_))
                                              (if (eq? _$e13456_ 'var)
                                                  (cons _body13453_
                                                        _vars13438_)
                                                  (if (memq _$e13456_
                                                            '(cons splice))
                                                      (_recur13435_
                                                       (cdr _body13453_)
                                                       (_recur13435_
                                                        (car _body13453_)
                                                        _vars13438_))
                                                      (if (memq _$e13456_
                                                                '(vector box))
                                                          (_recur13435_
                                                           _body13453_
                                                           _vars13438_)
                                                          _vars13438_)))))))
                                    (if (##pair? _e1343913446_)
                                        (let ((_hd1344313462_
                                               (##car _e1343913446_))
                                              (_tl1344413464_
                                               (##cdr _e1343913446_)))
                                          (let* ((_tag13467_ _hd1344313462_)
                                                 (_body13469_ _tl1344413464_))
                                            (_K1344213459_
                                             _body13469_
                                             _tag13467_)))
                                        (_E1344113450_))))))
                             (_make-body13427_
                              (lambda (_vars13429_)
                                (cons _K13420_
                                      (map (lambda (_mvar13431_)
                                             (assgetq (car _mvar13431_)
                                                      _vars13429_
                                                      _BUG13423_))
                                           _mvars13419_)))))
                      (_recur13424_
                       _hd13418_
                       '()
                       _target13417_
                       _E13421_
                       _make-body13427_))))
                 (_parse-clause13253_
                  (lambda (_hd13322_ _ids13323_)
                    (let _recur13325_ ((_e13327_ _hd13322_)
                                       (_vars13328_ '())
                                       (_depth13329_ '0))
                      (if (gx#identifier? _e13327_)
                          (if (gx#underscore? _e13327_)
                              (values '(any) _vars13328_)
                              (if (gx#ellipsis? _e13327_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Misplaced ellipsis"
                                   _stx13244_
                                   _hd13322_)
                                  (if (find (lambda (_id13331_)
                                              (gx#bound-identifier=?
                                               _e13327_
                                               _id13331_))
                                            _ids13323_)
                                      (values (cons 'id _e13327_) _vars13328_)
                                      (if (find (lambda (_var13333_)
                                                  (gx#bound-identifier=?
                                                   _e13327_
                                                   (car _var13333_)))
                                                _vars13328_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Duplicate pattern variable"
                                           _stx13244_
                                           _e13327_)
                                          (values (cons 'var _e13327_)
                                                  (cons (cons _e13327_
                                                              _depth13329_)
                                                        _vars13328_))))))
                          (if (gx#stx-pair? _e13327_)
                              (let* ((_e1333413341_ _e13327_)
                                     (_E1333613345_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _e1333413341_)))
                                     (_E1333513406_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1333413341_)
                                            (let ((_e1333713349_
                                                   (gx#syntax-e
                                                    _e1333413341_)))
                                              (let ((_hd1333813352_
                                                     (##car _e1333713349_))
                                                    (_tl1333913354_
                                                     (##cdr _e1333713349_)))
                                                (let* ((_hd13357_
                                                        _hd1333813352_)
                                                       (_rest13359_
                                                        _tl1333913354_))
                                                  (if '#t
                                                      (let* ((_make-pair13374_
                                                              (lambda (_tag13361_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd13362_
                               _tl13363_)
                        (let* ((_hd-depth13365_
                                (if (eq? _tag13361_ 'splice)
                                    (fx+ _depth13329_ '1)
                                    _depth13329_))
                               (_g14389_
                                (_recur13325_
                                 _hd13362_
                                 _vars13328_
                                 _hd-depth13365_)))
                          (begin
                            (let ((_g14390_ (values-count _g14389_)))
                              (if (not (fx= _g14390_ 2))
                                  (error "Context expects 2 values" _g14390_)))
                            (let ((_hd13367_ (values-ref _g14389_ 0))
                                  (_vars13368_ (values-ref _g14389_ 1)))
                              (let ((_g14391_
                                     (_recur13325_
                                      _tl13363_
                                      _vars13368_
                                      _depth13329_)))
                                (begin
                                  (let ((_g14392_ (values-count _g14391_)))
                                    (if (not (fx= _g14392_ 2))
                                        (error "Context expects 2 values"
                                               _g14392_)))
                                  (let ((_tl13370_ (values-ref _g14391_ 0))
                                        (_vars13371_ (values-ref _g14391_ 1)))
                                    (let ()
                                      (values (cons* _tag13361_
                                                     _hd13367_
                                                     _tl13370_)
                                              _vars13371_))))))))))
                     (_e1337513382_ _rest13359_)
                     (_E1337713386_
                      (lambda ()
                        (_make-pair13374_ 'cons _hd13357_ _rest13359_)))
                     (_E1337613402_
                      (lambda ()
                        (if (gx#stx-pair? _e1337513382_)
                            (let ((_e1337813390_ (gx#syntax-e _e1337513382_)))
                              (let ((_hd1337913393_ (##car _e1337813390_))
                                    (_tl1338013395_ (##cdr _e1337813390_)))
                                (let* ((_rest-hd13398_ _hd1337913393_)
                                       (_rest-tl13400_ _tl1338013395_))
                                  (if '#t
                                      (if (gx#ellipsis? _rest-hd13398_)
                                          (_make-pair13374_
                                           'splice
                                           _hd13357_
                                           _rest-tl13400_)
                                          (_make-pair13374_
                                           'cons
                                           _hd13357_
                                           _rest13359_))
                                      (_E1337713386_)))))
                            (_E1337713386_)))))
                (_E1337613402_))
              (_E1333613345_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1333613345_)))))
                                (_E1333513406_))
                              (if (gx#stx-null? _e13327_)
                                  (values '(null) _vars13328_)
                                  (if (gx#stx-vector? _e13327_)
                                      (let ((_g14393_
                                             (_recur13325_
                                              (vector->list
                                               (gx#syntax-e _e13327_))
                                              _vars13328_
                                              _depth13329_)))
                                        (begin
                                          (let ((_g14394_
                                                 (values-count _g14393_)))
                                            (if (not (fx= _g14394_ 2))
                                                (error "Context expects 2 values"
                                                       _g14394_)))
                                          (let ((_e13410_
                                                 (values-ref _g14393_ 0))
                                                (_vars13411_
                                                 (values-ref _g14393_ 1)))
                                            (values (cons 'vector _e13410_)
                                                    _vars13411_))))
                                      (if (gx#stx-box? _e13327_)
                                          (let ((_g14395_
                                                 (_recur13325_
                                                  (unbox (gx#syntax-e
                                                          _e13327_))
                                                  _vars13328_
                                                  _depth13329_)))
                                            (begin
                                              (let ((_g14396_
                                                     (values-count _g14395_)))
                                                (if (not (fx= _g14396_ 2))
                                                    (error "Context expects 2 values"
                                                           _g14396_)))
                                              (let ((_e13413_
                                                     (values-ref _g14395_ 0))
                                                    (_vars13414_
                                                     (values-ref _g14395_ 1)))
                                                (values (cons 'box _e13413_)
                                                        _vars13414_))))
                                          (if (gx#stx-datum? _e13327_)
                                              (values (cons 'datum
                                                            (gx#stx-e
                                                             _e13327_))
                                                      _vars13328_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad pattern"
                                               _stx13244_
                                               _e13327_)))))))))))
          (let* ((_e1325413267_ _stx13244_)
                 (_E1325613271_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1325413267_)))
                 (_E1325513318_
                  (lambda ()
                    (if (gx#stx-pair? _e1325413267_)
                        (let ((_e1325713275_ (gx#syntax-e _e1325413267_)))
                          (let ((_hd1325813278_ (##car _e1325713275_))
                                (_tl1325913280_ (##cdr _e1325713275_)))
                            (if (gx#stx-pair? _tl1325913280_)
                                (let ((_e1326013283_
                                       (gx#syntax-e _tl1325913280_)))
                                  (let ((_hd1326113286_ (##car _e1326013283_))
                                        (_tl1326213288_ (##cdr _e1326013283_)))
                                    (let ((_expr13291_ _hd1326113286_))
                                      (if (gx#stx-pair? _tl1326213288_)
                                          (let ((_e1326313293_
                                                 (gx#syntax-e _tl1326213288_)))
                                            (let ((_hd1326413296_
                                                   (##car _e1326313293_))
                                                  (_tl1326513298_
                                                   (##cdr _e1326313293_)))
                                              (let* ((_ids13301_
                                                      _hd1326413296_)
                                                     (_clauses13303_
                                                      _tl1326513298_))
                                                (if '#t
                                                    (if (not (gx#identifier-list?
                                                              _ids13301_))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad template identifier list"
                                                         _stx13244_
                                                         _ids13301_)
                                                        (if (not (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _clauses13303_))
                    (gx#raise-syntax-error '#f '"Bad syntax" _stx13244_)
                    (let* ((_ids13305_ (gx#syntax->list _ids13301_))
                           (_clauses13307_ (gx#syntax->list _clauses13303_))
                           (_clause-ids13309_ (gx#gentemps _clauses13307_))
                           (_E13311_ (gx#genident__0))
                           (_target13313_ (gx#genident__0))
                           (_first13315_
                            (if (null? _clauses13307_)
                                _E13311_
                                (car _clause-ids13309_))))
                      (gx#stx-wrap-source
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _E13311_ '())
                                    (cons (gx#core-list
                                           'lambda%
                                           (cons _target13313_ '())
                                           (gx#core-list
                                            'raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _target13313_))
                                          '()))
                              '())
                        (_generate-body13250_
                         (_generate-bindings13249_
                          _target13313_
                          _ids13305_
                          _clauses13307_
                          _clause-ids13309_
                          _E13311_)
                         (cons _first13315_ (cons _expr13291_ '()))))
                       (gx#stx-source _stx13244_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1325613271_)))))
                                          (_E1325613271_)))))
                                (_E1325613271_))))
                        (_E1325613271_)))))
            (_E1325513318_)))))
    (begin
      (define gx#macro-expand-syntax-case__0
        (lambda (_stx13946_)
          (let* ((_identifier=?13948_ 'free-identifier=?)
                 (_unwrap-e13950_ 'syntax-e)
                 (_wrap-e13952_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda13242
             _stx13946_
             _identifier=?13948_
             _unwrap-e13950_
             _wrap-e13952_))))
      (define gx#macro-expand-syntax-case__1
        (lambda (_stx13954_ _identifier=?13955_)
          (let* ((_unwrap-e13957_ 'syntax-e) (_wrap-e13959_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda13242
             _stx13954_
             _identifier=?13955_
             _unwrap-e13957_
             _wrap-e13959_))))
      (define gx#macro-expand-syntax-case__2
        (lambda (_stx13961_ _identifier=?13962_ _unwrap-e13963_)
          (let ((_wrap-e13965_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda13242
             _stx13961_
             _identifier=?13962_
             _unwrap-e13963_
             _wrap-e13965_))))
      (define gx#macro-expand-syntax-case
        (lambda _g14398_
          (let ((_g14397_ (length _g14398_)))
            (cond ((fx= _g14397_ 1)
                   (apply gx#macro-expand-syntax-case__0 _g14398_))
                  ((fx= _g14397_ 2)
                   (apply gx#macro-expand-syntax-case__1 _g14398_))
                  ((fx= _g14397_ 3)
                   (apply gx#macro-expand-syntax-case__2 _g14398_))
                  ((fx= _g14397_ 4)
                   (apply gx#macro-expand-syntax-case__opt-lambda13242
                          _g14398_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-syntax-case
                    _g14398_))))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx13241_)
      (if (gx#identifier? _stx13241_)
          (##structure-instance-of?
           (gx#syntax-local-e__opt-lambda4087 _stx13241_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd13199_ . _rest13200_)
      (let ((_len13202_ (length _hd13199_)))
        (let _lp13204_ ((_rest13206_ _rest13200_))
          (let* ((_rest1320713215_ _rest13206_)
                 (_E1321013219_
                  (lambda () (error '"No clause matching" _rest1320713215_)))
                 (_else1320913223_ (lambda () '#!void))
                 (_K1321113229_
                  (lambda (_rest13226_ _hd13227_)
                    (if (fx= _len13202_ (length _hd13227_))
                        (_lp13204_ _rest13226_)
                        (gx#raise-syntax-error
                         '#f
                         '"Splice length mismatch"
                         _hd13227_)))))
            (if (##pair? _rest1320713215_)
                (let ((_hd1321213232_ (##car _rest1320713215_))
                      (_tl1321313234_ (##cdr _rest1320713215_)))
                  (let* ((_hd13237_ _hd1321213232_)
                         (_rest13239_ _tl1321313234_))
                    (_K1321113229_ _rest13239_ _hd13237_)))
                (_else1320913223_)))))))
  (define gx#syntax-split-splice
    (lambda (_stx13157_ _n13158_)
      (let _lp13160_ ((_rest13162_ _stx13157_) (_r13163_ '()))
        (if (gx#stx-pair? _rest13162_)
            (let* ((_g1316413171_ (gx#syntax-e _rest13162_))
                   (_E1316613175_
                    (lambda () (error '"No clause matching" _g1316413171_)))
                   (_K1316713181_
                    (lambda (_rest13178_ _hd13179_)
                      (_lp13160_ _rest13178_ (cons _hd13179_ _r13163_)))))
              (if (##pair? _g1316413171_)
                  (let ((_hd1316813184_ (##car _g1316413171_))
                        (_tl1316913186_ (##cdr _g1316413171_)))
                    (let* ((_hd13189_ _hd1316813184_)
                           (_rest13191_ _tl1316913186_))
                      (_K1316713181_ _rest13191_ _hd13189_)))
                  (_E1316613175_)))
            (let _lp13193_ ((_n13195_ _n13158_)
                            (_l13196_ _r13163_)
                            (_r13197_ _rest13162_))
              (if (null? _l13196_)
                  (values _l13196_ _r13197_)
                  (if (fxpositive? _n13195_)
                      (_lp13193_
                       (fx- _n13195_ '1)
                       (cdr _l13196_)
                       (cons (car _l13196_) _r13197_))
                      (values (reverse _l13196_) _r13197_)))))))))
