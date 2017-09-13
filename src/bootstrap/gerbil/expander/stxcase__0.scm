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
    (lambda _$args14281_
      (apply make-struct-instance gx#syntax-pattern::t _$args14281_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self14278_ _stx14279_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx14279_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx13887_)
      (letrec ((_generate13889_
                (lambda (_e14116_)
                  (letrec ((_BUG14118_
                            (lambda (_q14276_)
                              (error '"BUG: syntax; generate"
                                     _stx13887_
                                     _e14116_
                                     _q14276_)))
                           (_local-pattern-e14119_
                            (lambda (_pat14274_)
                              (gx#syntax-local-rewrap
                               (##structure-ref
                                _pat14274_
                                '2
                                gx#syntax-pattern::t
                                '#f))))
                           (_getvar14120_
                            (lambda (_q14271_ _vars14272_)
                              (assgetq _q14271_ _vars14272_ _BUG14118_)))
                           (_getarg14121_
                            (lambda (_arg14237_ _vars14238_)
                              (let* ((_arg1423914246_ _arg14237_)
                                     (_E1424114250_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _arg1423914246_)))
                                     (_K1424214259_
                                      (lambda (_e14253_ _tag14254_)
                                        (let ((_$e14256_ _tag14254_))
                                          (if (eq? _$e14256_ 'ref)
                                              (_getvar14120_
                                               _e14253_
                                               _vars14238_)
                                              (if (eq? _$e14256_ 'pattern)
                                                  (_local-pattern-e14119_
                                                   _e14253_)
                                                  (_BUG14118_ _arg14237_)))))))
                                (if (##pair? _arg1423914246_)
                                    (let ((_hd1424314262_
                                           (##car _arg1423914246_))
                                          (_tl1424414264_
                                           (##cdr _arg1423914246_)))
                                      (let* ((_tag14267_ _hd1424314262_)
                                             (_e14269_ _tl1424414264_))
                                        (_K1424214259_ _e14269_ _tag14267_)))
                                    (_E1424114250_))))))
                    (let _recur14123_ ((_e14125_ _e14116_) (_vars14126_ '()))
                      (let* ((_e1412714134_ _e14125_)
                             (_E1412914138_
                              (lambda ()
                                (error '"No clause matching" _e1412714134_)))
                             (_K1413014225_
                              (lambda (_body14141_ _tag14142_)
                                (let ((_$e14144_ _tag14142_))
                                  (if (eq? _$e14144_ 'datum)
                                      (gx#core-list 'quote _body14141_)
                                      (if (eq? _$e14144_ 'term)
                                          (gx#core-list
                                           'datum->syntax
                                           '#f
                                           (gx#core-list 'quote _body14141_))
                                          (if (eq? _$e14144_ 'pattern)
                                              (_local-pattern-e14119_
                                               _body14141_)
                                              (if (eq? _$e14144_ 'ref)
                                                  (_getvar14120_
                                                   _body14141_
                                                   _vars14126_)
                                                  (if (eq? _$e14144_ 'cons)
                                                      (gx#core-list
                                                       'cons
                                                       (_recur14123_
                                                        (car _body14141_)
                                                        _vars14126_)
                                                       (_recur14123_
                                                        (cdr _body14141_)
                                                        _vars14126_))
                                                      (if (eq? _$e14144_
                                                               'vector)
                                                          (gx#core-list
                                                           'list->vector
                                                           (_recur14123_
                                                            _body14141_
                                                            _vars14126_))
                                                          (if (eq? _$e14144_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'box)
                      (gx#core-list
                       'box
                       (_recur14123_ _body14141_ _vars14126_))
                      (if (eq? _$e14144_ 'splice)
                          (let* ((_body1414614157_ _body14141_)
                                 (_E1414814161_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _body1414614157_)))
                                 (_K1414914199_
                                  (lambda (_args14164_
                                           _iv14165_
                                           _hd14166_
                                           _depth14167_)
                                    (let* ((_targets14173_
                                            (map (lambda (_g1416814170_)
                                                   (_getarg14121_
                                                    _g1416814170_
                                                    _vars14126_))
                                                 _args14164_))
                                           (_fold-in14175_
                                            (gx#gentemps _args14164_))
                                           (_fold-out14177_ (gx#genident__0))
                                           (_lambda-args14179_
                                            (foldr1 cons
                                                    (cons _fold-out14177_ '())
                                                    _fold-in14175_))
                                           (_lambda-body14196_
                                            (if (fx> _depth14167_ '1)
                                                (let ((_r-args14187_
                                                       (map (lambda (_arg14181_)
                                                              (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cdr _arg14181_)))
                    _args14164_))
              (_r-vars14188_
               (foldr (lambda (_arg14183_ _var14184_ _r14185_)
                        (cons (cons (cdr _arg14183_) _var14184_) _r14185_))
                      _vars14126_
                      _args14164_
                      _fold-in14175_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur14123_
                                                   (cons* 'splice
                                                          (fx- _depth14167_ '1)
                                                          _hd14166_
                                                          (cons 'var
                                                                _fold-out14177_)
                                                          _r-args14187_)
                                                   _r-vars14188_))
                                                (let ((_hd-vars14194_
                                                       (foldr (lambda (_arg14190_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _var14191_
                               _r14192_)
                        (cons (cons (cdr _arg14190_) _var14191_) _r14192_))
                      _vars14126_
                      _args14164_
                      _fold-in14175_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#core-list
                                                   'cons
                                                   (_recur14123_
                                                    _hd14166_
                                                    _hd-vars14194_)
                                                   _fold-out14177_)))))
                                      (gx#core-list
                                       'begin
                                       (if (fx> (length _targets14173_) '1)
                                           (gx#core-cons*
                                            'syntax-check-splice-targets
                                            _targets14173_)
                                           '#!void)
                                       (gx#core-cons*
                                        'foldr
                                        (gx#core-list
                                         'lambda%
                                         _lambda-args14179_
                                         _lambda-body14196_)
                                        (_recur14123_ _iv14165_ _vars14126_)
                                        _targets14173_))))))
                            (if (##pair? _body1414614157_)
                                (let ((_hd1415014202_ (##car _body1414614157_))
                                      (_tl1415114204_
                                       (##cdr _body1414614157_)))
                                  (let ((_depth14207_ _hd1415014202_))
                                    (if (##pair? _tl1415114204_)
                                        (let ((_hd1415214209_
                                               (##car _tl1415114204_))
                                              (_tl1415314211_
                                               (##cdr _tl1415114204_)))
                                          (let ((_hd14214_ _hd1415214209_))
                                            (if (##pair? _tl1415314211_)
                                                (let ((_hd1415414216_
                                                       (##car _tl1415314211_))
                                                      (_tl1415514218_
                                                       (##cdr _tl1415314211_)))
                                                  (let* ((_iv14221_
                                                          _hd1415414216_)
                                                         (_args14223_
                                                          _tl1415514218_))
                                                    (_K1414914199_
                                                     _args14223_
                                                     _iv14221_
                                                     _hd14214_
                                                     _depth14207_)))
                                                (_E1414814161_))))
                                        (_E1414814161_))))
                                (_E1414814161_)))
                          (if (eq? _$e14144_ 'var)
                              _body14141_
                              (_BUG14118_ _e14125_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (if (##pair? _e1412714134_)
                            (let ((_hd1413114228_ (##car _e1412714134_))
                                  (_tl1413214230_ (##cdr _e1412714134_)))
                              (let* ((_tag14233_ _hd1413114228_)
                                     (_body14235_ _tl1413214230_))
                                (_K1413014225_ _body14235_ _tag14233_)))
                            (_E1412914138_)))))))
               (_parse13890_
                (lambda (_e13931_)
                  (letrec ((_make-cons13933_
                            (lambda (_hd14108_ _tl14109_)
                              (let ((_g14283_ _hd14108_) (_g14285_ _tl14109_))
                                (begin
                                  (let ((_g14284_ (values-count _g14283_)))
                                    (if (not (fx= _g14284_ 2))
                                        (error "Context expects 2 values"
                                               _g14284_)))
                                  (let ((_g14286_ (values-count _g14285_)))
                                    (if (not (fx= _g14286_ 2))
                                        (error "Context expects 2 values"
                                               _g14286_)))
                                  (let ((_hd-e14111_ (values-ref _g14283_ 0))
                                        (_hd-vars14112_
                                         (values-ref _g14283_ 1)))
                                    (let ((_tl-e14113_ (values-ref _g14285_ 0))
                                          (_tl-vars14114_
                                           (values-ref _g14285_ 1)))
                                      (values (cons* 'cons
                                                     _hd-e14111_
                                                     _tl-e14113_)
                                              (append _hd-vars14112_
                                                      _tl-vars14114_))))))))
                           (_make-splice13934_
                            (lambda (_where14047_
                                     _depth14048_
                                     _hd14049_
                                     _tl14050_)
                              (let ((_g14287_ _hd14049_) (_g14289_ _tl14050_))
                                (begin
                                  (let ((_g14288_ (values-count _g14287_)))
                                    (if (not (fx= _g14288_ 2))
                                        (error "Context expects 2 values"
                                               _g14288_)))
                                  (let ((_g14290_ (values-count _g14289_)))
                                    (if (not (fx= _g14290_ 2))
                                        (error "Context expects 2 values"
                                               _g14290_)))
                                  (let ((_hd-e14052_ (values-ref _g14287_ 0))
                                        (_hd-vars14053_
                                         (values-ref _g14287_ 1)))
                                    (let ((_tl-e14054_ (values-ref _g14289_ 0))
                                          (_tl-vars14055_
                                           (values-ref _g14289_ 1)))
                                      (let _lp14057_ ((_rest14059_
                                                       _hd-vars14053_)
                                                      (_targets14060_ '())
                                                      (_vars14061_
                                                       _tl-vars14055_))
                                        (let* ((_rest1406214072_ _rest14059_)
                                               (_E1406514076_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _rest1406214072_)))
                                               (_else1406414080_
                                                (lambda ()
                                                  (if (null? _targets14060_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Misplaced ellipsis"
                                                       _stx13887_
                                                       _where14047_)
                                                      (values (cons* 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _depth14048_
                             _hd-e14052_
                             _tl-e14054_
                             _targets14060_)
                      _vars14061_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_K1406614089_
                                                (lambda (_rest14083_
                                                         _hd-pat14084_
                                                         _hd-depth*14085_)
                                                  (let ((_hd-depth14087_
                                                         (fx- _hd-depth*14085_
                                                              _depth14048_)))
                                                    (if (fxpositive?
                                                         _hd-depth14087_)
                                                        (_lp14057_
                                                         _rest14083_
                                                         (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd-pat14084_)
                       _targets14060_)
                 (cons (cons _hd-depth14087_ _hd-pat14084_) _vars14061_))
                (if (fxzero? _hd-depth14087_)
                    (_lp14057_
                     _rest14083_
                     (cons (cons 'pattern _hd-pat14084_) _targets14060_)
                     _vars14061_)
                    (gx#raise-syntax-error
                     '#f
                     '"Too many ellipses"
                     _stx13887_
                     _where14047_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1406214072_)
                                              (let ((_hd1406714092_
                                                     (##car _rest1406214072_))
                                                    (_tl1406814094_
                                                     (##cdr _rest1406214072_)))
                                                (if (##pair? _hd1406714092_)
                                                    (let ((_hd1406914097_
                                                           (##car _hd1406714092_))
                                                          (_tl1407014099_
                                                           (##cdr _hd1406714092_)))
                                                      (let* ((_hd-depth*14102_
                                                              _hd1406914097_)
                                                             (_hd-pat14104_
                                                              _tl1407014099_)
                                                             (_rest14106_
                                                              _tl1406814094_))
                                                        (_K1406614089_
                                                         _rest14106_
                                                         _hd-pat14104_
                                                         _hd-depth*14102_)))
                                                    (_else1406414080_)))
                                              (_else1406414080_))))))))))
                           (_recur13935_
                            (lambda (_e13940_ _is-e?13941_)
                              (if (_is-e?13941_ _e13940_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Mislpaced ellipsis"
                                   _stx13887_)
                                  (if (gx#syntax-local-pattern? _e13940_)
                                      (let* ((_pat13943_
                                              (gx#syntax-local-e__0 _e13940_))
                                             (_depth13945_
                                              (##structure-ref
                                               _pat13943_
                                               '3
                                               gx#syntax-pattern::t
                                               '#f)))
                                        (if (fxpositive? _depth13945_)
                                            (values (cons 'ref _pat13943_)
                                                    (cons (cons _depth13945_
                                                                _pat13943_)
                                                          '()))
                                            (values (cons 'pattern _pat13943_)
                                                    '())))
                                      (if (gx#identifier? _e13940_)
                                          (values (cons 'term _e13940_) '())
                                          (if (gx#stx-pair? _e13940_)
                                              (let* ((_e1394713954_ _e13940_)
                                                     (_E1394913958_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _e1394713954_)))
                                                     (_E1394814037_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e1394713954_)
                                                            (let ((_e1395013962_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e1394713954_)))
                      (let ((_hd1395113965_ (##car _e1395013962_))
                            (_tl1395213967_ (##cdr _e1395013962_)))
                        (let* ((_hd13970_ _hd1395113965_)
                               (_rest13972_ _tl1395213967_))
                          (if '#t
                              (if (_is-e?13941_ _hd13970_)
                                  (let* ((_e1397313980_ _rest13972_)
                                         (_E1397513984_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _stx13887_
                                             _e13940_)))
                                         (_E1397413998_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1397313980_)
                                                (let ((_e1397613988_
                                                       (gx#syntax-e
                                                        _e1397313980_)))
                                                  (let ((_hd1397713991_
                                                         (##car _e1397613988_))
                                                        (_tl1397813993_
                                                         (##cdr _e1397613988_)))
                                                    (let ((_rest13996_
                                                           _hd1397713991_))
                                                      (if (gx#stx-null?
                                                           _tl1397813993_)
                                                          (if '#t
                                                              (_recur13935_
                                                               _rest13996_
                                                               false)
                                                              (_E1397513984_))
                                                          (_E1397513984_)))))
                                                (_E1397513984_)))))
                                    (_E1397413998_))
                                  (let _lp14002_ ((_rest14004_ _rest13972_)
                                                  (_depth14005_ '0))
                                    (let* ((_e1400614013_ _rest14004_)
                                           (_E1400814017_
                                            (lambda ()
                                              (if (fxpositive? _depth14005_)
                                                  (_make-splice13934_
                                                   _e13940_
                                                   _depth14005_
                                                   (_recur13935_
                                                    _hd13970_
                                                    _is-e?13941_)
                                                   (_recur13935_
                                                    _rest14004_
                                                    _is-e?13941_))
                                                  (_make-cons13933_
                                                   (_recur13935_
                                                    _hd13970_
                                                    _is-e?13941_)
                                                   (_recur13935_
                                                    _rest14004_
                                                    _is-e?13941_)))))
                                           (_E1400714033_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1400614013_)
                                                  (let ((_e1400914021_
                                                         (gx#syntax-e
                                                          _e1400614013_)))
                                                    (let ((_hd1401014024_
                                                           (##car _e1400914021_))
                                                          (_tl1401114026_
                                                           (##cdr _e1400914021_)))
                                                      (let* ((_rest-hd14029_
                                                              _hd1401014024_)
                                                             (_rest-tl14031_
                                                              _tl1401114026_))
                                                        (if '#t
                                                            (if (_is-e?13941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rest-hd14029_)
                        (_lp14002_ _rest-tl14031_ (fx+ _depth14005_ '1))
                        (if (fxpositive? _depth14005_)
                            (_make-splice13934_
                             _e13940_
                             _depth14005_
                             (_recur13935_ _hd13970_ _is-e?13941_)
                             (_recur13935_ _rest14004_ _is-e?13941_))
                            (_make-cons13933_
                             (_recur13935_ _hd13970_ _is-e?13941_)
                             (_recur13935_ _rest14004_ _is-e?13941_))))
                    (_E1400814017_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1400814017_)))))
                                      (_E1400714033_))))
                              (_E1394913958_)))))
                    (_E1394913958_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1394814037_))
                                              (if (gx#stx-vector? _e13940_)
                                                  (let ((_g14291_
                                                         (_recur13935_
                                                          (vector->list
                                                           (gx#stx-unwrap__0
                                                            _e13940_))
                                                          _is-e?13941_)))
                                                    (begin
                                                      (let ((_g14292_
                                                             (values-count
                                                              _g14291_)))
                                                        (if (not (fx= _g14292_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g14292_)))
              (let ((_e14041_ (values-ref _g14291_ 0))
                    (_vars14042_ (values-ref _g14291_ 1)))
                (values (cons 'vector _e14041_) _vars14042_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e13940_)
                                                      (let ((_g14293_
                                                             (_recur13935_
                                                              (unbox (gx#stx-unwrap__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e13940_))
                      _is-e?13941_)))
                (begin
                  (let ((_g14294_ (values-count _g14293_)))
                    (if (not (fx= _g14294_ 2))
                        (error "Context expects 2 values" _g14294_)))
                  (let ((_e14044_ (values-ref _g14293_ 0))
                        (_vars14045_ (values-ref _g14293_ 1)))
                    (values (cons 'box _e14044_) _vars14045_))))
              (values (cons 'datum _e13940_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    (let ((_g14295_ (_recur13935_ _e13931_ gx#ellipsis?)))
                      (begin
                        (let ((_g14296_ (values-count _g14295_)))
                          (if (not (fx= _g14296_ 2))
                              (error "Context expects 2 values" _g14296_)))
                        (let ((_tree13937_ (values-ref _g14295_ 0))
                              (_vars13938_ (values-ref _g14295_ 1)))
                          (if (null? _vars13938_)
                              _tree13937_
                              (gx#raise-syntax-error
                               '#f
                               '"Missing ellipsis"
                               _stx13887_
                               _vars13938_)))))))))
        (let* ((_e1389113901_ _stx13887_)
               (_E1389313905_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _stx13887_)))
               (_E1389213927_
                (lambda ()
                  (if (gx#stx-pair? _e1389113901_)
                      (let ((_e1389413909_ (gx#syntax-e _e1389113901_)))
                        (let ((_hd1389513912_ (##car _e1389413909_))
                              (_tl1389613914_ (##cdr _e1389413909_)))
                          (if (gx#stx-pair? _tl1389613914_)
                              (let ((_e1389713917_
                                     (gx#syntax-e _tl1389613914_)))
                                (let ((_hd1389813920_ (##car _e1389713917_))
                                      (_tl1389913922_ (##cdr _e1389713917_)))
                                  (let ((_form13925_ _hd1389813920_))
                                    (if (gx#stx-null? _tl1389913922_)
                                        (if '#t
                                            (gx#stx-wrap-source
                                             (_generate13889_
                                              (_parse13890_ _form13925_))
                                             (gx#stx-source _stx13887_))
                                            (_E1389313905_))
                                        (_E1389313905_)))))
                              (_E1389313905_))))
                      (_E1389313905_)))))
          (_E1389213927_)))))
  (begin
    (define gx#macro-expand-syntax-case__opt-lambda13157
      (lambda (_stx13159_ _identifier=?13160_ _unwrap-e13161_ _wrap-e13162_)
        (letrec ((_generate-bindings13164_
                  (lambda (_target13749_
                           _ids13750_
                           _clauses13751_
                           _clause-ids13752_
                           _E13753_)
                    (letrec ((_generate113755_
                              (lambda (_clause13854_ _clause-id13855_ _E13856_)
                                (cons (cons _clause-id13855_ '())
                                      (cons (gx#core-list
                                             'lambda%
                                             (cons _target13749_ '())
                                             (_generate-clause13166_
                                              _target13749_
                                              _ids13750_
                                              _clause13854_
                                              _E13856_))
                                            '())))))
                      (let _lp13757_ ((_rest13759_ _clauses13751_)
                                      (_rest-ids13760_ _clause-ids13752_)
                                      (_bindings13761_ '()))
                        (let* ((_rest1376213770_ _rest13759_)
                               (_E1376513774_
                                (lambda ()
                                  (error '"No clause matching"
                                         _rest1376213770_)))
                               (_else1376413778_ (lambda () _bindings13761_))
                               (_K1376613842_
                                (lambda (_rest13781_ _clause13782_)
                                  (let* ((_rest-ids1378313790_ _rest-ids13760_)
                                         (_E1378513794_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids1378313790_)))
                                         (_K1378613830_
                                          (lambda (_rest-ids13797_
                                                   _clause-id13798_)
                                            (let* ((_rest-ids1379913807_
                                                    _rest-ids13797_)
                                                   (_E1380213811_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _rest-ids1379913807_)))
                                                   (_else1380113815_
                                                    (lambda ()
                                                      (cons (_generate113755_
                                                             _clause13782_
                                                             _clause-id13798_
                                                             _E13753_)
                                                            _bindings13761_)))
                                                   (_K1380313820_
                                                    (lambda (_next-clause-id13818_)
                                                      (_lp13757_
                                                       _rest13781_
                                                       _rest-ids13797_
                                                       (cons (_generate113755_
                                                              _clause13782_
                                                              _clause-id13798_
                                                              _next-clause-id13818_)
                                                             _bindings13761_)))))
                                              (if (##pair? _rest-ids1379913807_)
                                                  (let ((_hd1380413823_
                                                         (##car _rest-ids1379913807_))
                                                        (_tl1380513825_
                                                         (##cdr _rest-ids1379913807_)))
                                                    (let ((_next-clause-id13828_
                                                           _hd1380413823_))
                                                      (_K1380313820_
                                                       _next-clause-id13828_)))
                                                  (_else1380113815_))))))
                                    (if (##pair? _rest-ids1378313790_)
                                        (let ((_hd1378713833_
                                               (##car _rest-ids1378313790_))
                                              (_tl1378813835_
                                               (##cdr _rest-ids1378313790_)))
                                          (let* ((_clause-id13838_
                                                  _hd1378713833_)
                                                 (_rest-ids13840_
                                                  _tl1378813835_))
                                            (_K1378613830_
                                             _rest-ids13840_
                                             _clause-id13838_)))
                                        (_E1378513794_))))))
                          (if (##pair? _rest1376213770_)
                              (let ((_hd1376713845_ (##car _rest1376213770_))
                                    (_tl1376813847_ (##cdr _rest1376213770_)))
                                (let* ((_clause13850_ _hd1376713845_)
                                       (_rest13852_ _tl1376813847_))
                                  (_K1376613842_ _rest13852_ _clause13850_)))
                              (_else1376413778_)))))))
                 (_generate-body13165_
                  (lambda (_bindings13709_ _body13710_)
                    (let _recur13712_ ((_rest13714_ _bindings13709_))
                      (let* ((_rest1371513723_ _rest13714_)
                             (_E1371813727_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1371513723_)))
                             (_else1371713731_ (lambda () _body13710_))
                             (_K1371913737_
                              (lambda (_rest13734_ _hd13735_)
                                (gx#core-list
                                 'let-values
                                 (cons _hd13735_ '())
                                 (_recur13712_ _rest13734_)))))
                        (if (##pair? _rest1371513723_)
                            (let ((_hd1372013740_ (##car _rest1371513723_))
                                  (_tl1372113742_ (##cdr _rest1371513723_)))
                              (let* ((_hd13745_ _hd1372013740_)
                                     (_rest13747_ _tl1372113742_))
                                (_K1371913737_ _rest13747_ _hd13745_)))
                            (_else1371713731_))))))
                 (_generate-clause13166_
                  (lambda (_target13572_ _ids13573_ _clause13574_ _E13575_)
                    (letrec ((_generate113577_
                              (lambda (_hd13664_ _fender13665_ _body13666_)
                                (let ((_g14297_
                                       (_parse-clause13168_
                                        _hd13664_
                                        _ids13573_)))
                                  (begin
                                    (let ((_g14298_ (values-count _g14297_)))
                                      (if (not (fx= _g14298_ 2))
                                          (error "Context expects 2 values"
                                                 _g14298_)))
                                    (let ((_e13668_ (values-ref _g14297_ 0))
                                          (_mvars13669_
                                           (values-ref _g14297_ 1)))
                                      (let* ((_pvars13671_
                                              (map gx#syntax-local-rewrap
                                                   (gx#gentemps _mvars13669_)))
                                             (_E13673_
                                              (cons _E13575_
                                                    (cons _target13572_ '())))
                                             (_K13706_
                                              (gx#core-list
                                               'lambda%
                                               _pvars13671_
                                               (gx#core-list
                                                'let-syntax
                                                (map (lambda (_mvar13675_
                                                              _pvar13676_)
                                                       (let* ((_mvar1367713684_
                                                               _mvar13675_)
                                                              (_E1367913688_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (error '"No clause matching" _mvar1367713684_)))
                      (_K1368013694_
                       (lambda (_depth13691_ _id13692_)
                         (cons _id13692_
                               (cons (gx#core-list
                                      'make-syntax-pattern
                                      (gx#core-list 'quote _id13692_)
                                      (gx#core-list 'quote _pvar13676_)
                                      _depth13691_)
                                     '())))))
                 (if (##pair? _mvar1367713684_)
                     (let ((_hd1368113697_ (##car _mvar1367713684_))
                           (_tl1368213699_ (##cdr _mvar1367713684_)))
                       (let* ((_id13702_ _hd1368113697_)
                              (_depth13704_ _tl1368213699_))
                         (_K1368013694_ _depth13704_ _id13702_)))
                     (_E1367913688_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _mvars13669_
                                                     _pvars13671_)
                                                (if (eq? _fender13665_ '#t)
                                                    _body13666_
                                                    (gx#core-list
                                                     'if
                                                     _fender13665_
                                                     _body13666_
                                                     _E13673_))))))
                                        (_generate-match13167_
                                         _hd13664_
                                         _target13572_
                                         _e13668_
                                         _mvars13669_
                                         _K13706_
                                         _E13673_))))))))
                      (let* ((_e1357813598_ _clause13574_)
                             (_E1358713602_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _e1357813598_)))
                             (_E1358013636_
                              (lambda ()
                                (if (gx#stx-pair? _e1357813598_)
                                    (let ((_e1358813606_
                                           (gx#syntax-e _e1357813598_)))
                                      (let ((_hd1358913609_
                                             (##car _e1358813606_))
                                            (_tl1359013611_
                                             (##cdr _e1358813606_)))
                                        (let ((_hd13614_ _hd1358913609_))
                                          (if (gx#stx-pair? _tl1359013611_)
                                              (let ((_e1359113616_
                                                     (gx#syntax-e
                                                      _tl1359013611_)))
                                                (let ((_hd1359213619_
                                                       (##car _e1359113616_))
                                                      (_tl1359313621_
                                                       (##cdr _e1359113616_)))
                                                  (let ((_fender13624_
                                                         _hd1359213619_))
                                                    (if (gx#stx-pair?
                                                         _tl1359313621_)
                                                        (let ((_e1359413626_
                                                               (gx#syntax-e
                                                                _tl1359313621_)))
                                                          (let ((_hd1359513629_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1359413626_))
                        (_tl1359613631_ (##cdr _e1359413626_)))
                    (let ((_body13634_ _hd1359513629_))
                      (if (gx#stx-null? _tl1359613631_)
                          (if '#t
                              (_generate113577_
                               _hd13614_
                               _fender13624_
                               _body13634_)
                              (_E1358713602_))
                          (_E1358713602_)))))
                (_E1358713602_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1358713602_)))))
                                    (_E1358713602_))))
                             (_E1357913660_
                              (lambda ()
                                (if (gx#stx-pair? _e1357813598_)
                                    (let ((_e1358113640_
                                           (gx#syntax-e _e1357813598_)))
                                      (let ((_hd1358213643_
                                             (##car _e1358113640_))
                                            (_tl1358313645_
                                             (##cdr _e1358113640_)))
                                        (let ((_hd13648_ _hd1358213643_))
                                          (if (gx#stx-pair? _tl1358313645_)
                                              (let ((_e1358413650_
                                                     (gx#syntax-e
                                                      _tl1358313645_)))
                                                (let ((_hd1358513653_
                                                       (##car _e1358413650_))
                                                      (_tl1358613655_
                                                       (##cdr _e1358413650_)))
                                                  (let ((_body13658_
                                                         _hd1358513653_))
                                                    (if (gx#stx-null?
                                                         _tl1358613655_)
                                                        (if '#t
                                                            (_generate113577_
                                                             _hd13648_
                                                             '#t
                                                             _body13658_)
                                                            (_E1358013636_))
                                                        (_E1358013636_)))))
                                              (_E1358013636_)))))
                                    (_E1358013636_)))))
                        (_E1357913660_)))))
                 (_generate-match13167_
                  (lambda (_where13331_
                           _target13332_
                           _hd13333_
                           _mvars13334_
                           _K13335_
                           _E13336_)
                    (letrec ((_BUG13338_
                              (lambda (_q13570_)
                                (error '"BUG: syntax-case; generate"
                                       _stx13159_
                                       _hd13333_
                                       _q13570_)))
                             (_recur13339_
                              (lambda (_e13424_
                                       _vars13425_
                                       _target13426_
                                       _E13427_
                                       _k13428_)
                                (let* ((_e1342913436_ _e13424_)
                                       (_E1343113440_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e1342913436_)))
                                       (_K1343213558_
                                        (lambda (_body13443_ _tag13444_)
                                          (let ((_$e13446_ _tag13444_))
                                            (if (eq? _$e13446_ 'any)
                                                (_k13428_ _vars13425_)
                                                (if (eq? _$e13446_ 'id)
                                                    (gx#core-list
                                                     'if
                                                     (gx#core-list
                                                      'identifier?
                                                      _target13426_)
                                                     (gx#core-list
                                                      'if
                                                      (gx#core-list
                                                       _identifier=?13160_
                                                       (gx#core-list
                                                        _wrap-e13162_
                                                        _body13443_)
                                                       _target13426_)
                                                      (_k13428_ _vars13425_)
                                                      _E13427_)
                                                     _E13427_)
                                                    (if (eq? _$e13446_ 'var)
                                                        (_k13428_
                                                         (cons (cons _body13443_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _target13426_)
                       _vars13425_))
                (if (eq? _$e13446_ 'cons)
                    (let ((_$e13449_ (gx#genident__1 'e))
                          (_$hd13450_ (gx#genident__1 'hd))
                          (_$tl13451_ (gx#genident__1 'tl)))
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _target13426_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$e13449_ '())
                                    (cons (gx#core-list
                                           _unwrap-e13161_
                                           _target13426_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$hd13450_ '())
                                     (cons (gx#core-list '##car _$e13449_)
                                           '()))
                               (cons (cons (cons _$tl13451_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$e13449_)
                                                 '()))
                                     '()))
                         (let* ((_body1345213459_ _body13443_)
                                (_E1345413463_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _body1345213459_)))
                                (_K1345513471_
                                 (lambda (_tl13466_ _hd13467_)
                                   (_recur13339_
                                    _hd13467_
                                    _vars13425_
                                    _$hd13450_
                                    _E13427_
                                    (lambda (_vars13469_)
                                      (_recur13339_
                                       _tl13466_
                                       _vars13469_
                                       _$tl13451_
                                       _E13427_
                                       _k13428_))))))
                           (if (##pair? _body1345213459_)
                               (let ((_hd1345613474_ (##car _body1345213459_))
                                     (_tl1345713476_ (##cdr _body1345213459_)))
                                 (let* ((_hd13479_ _hd1345613474_)
                                        (_tl13481_ _tl1345713476_))
                                   (_K1345513471_ _tl13481_ _hd13479_)))
                               (_E1345413463_)))))
                       _E13427_))
                    (if (eq? _$e13446_ 'splice)
                        (let* ((_body1348213489_ _body13443_)
                               (_E1348413493_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body1348213489_)))
                               (_K1348513542_
                                (lambda (_tl13496_ _hd13497_)
                                  (let* ((_rlen13499_
                                          (_splice-rlen13340_ _tl13496_))
                                         (_$target13501_
                                          (gx#genident__1 'target))
                                         (_$hd13503_ (gx#genident__1 'hd))
                                         (_$tl13505_ (gx#genident__1 'tl))
                                         (_$lp13507_ (gx#genident__1 'loop))
                                         (_$lp-e13509_ (gx#genident__1 'e))
                                         (_$lp-hd13511_
                                          (gx#genident__1 'lp-hd))
                                         (_$lp-tl13513_
                                          (gx#genident__1 'lp-tl))
                                         (_svars13515_
                                          (_splice-vars13341_ _hd13497_))
                                         (_lvars13517_
                                          (gx#gentemps _svars13515_))
                                         (_tlvars13519_
                                          (gx#gentemps _svars13515_))
                                         (_linit13523_
                                          (map (lambda (_var13521_)
                                                 (gx#core-list 'quote '()))
                                               _lvars13517_)))
                                    (letrec ((_make-loop13526_
                                              (lambda (_vars13528_)
                                                (gx#core-list
                                                 'letrec-values
                                                 (cons (cons (cons _$lp13507_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _$hd13503_ _lvars13517_)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-pair? _$hd13503_)
                             (gx#core-list
                              'let-values
                              (cons (cons (cons _$lp-e13509_ '())
                                          (cons (gx#core-list
                                                 _unwrap-e13161_
                                                 _$hd13503_)
                                                '()))
                                    '())
                              (gx#core-list
                               'let-values
                               (cons (cons (cons _$lp-hd13511_ '())
                                           (cons (gx#core-list
                                                  '##car
                                                  _$lp-e13509_)
                                                 '()))
                                     (cons (cons (cons _$lp-tl13513_ '())
                                                 (cons (gx#core-list
                                                        '##cdr
                                                        _$lp-e13509_)
                                                       '()))
                                           '()))
                               (_recur13339_
                                _hd13497_
                                '()
                                _$lp-hd13511_
                                _E13427_
                                (lambda (_hdvars13530_)
                                  (cons* _$lp13507_
                                         _$lp-tl13513_
                                         (map (lambda (_svar13532_ _lvar13533_)
                                                (gx#core-list
                                                 'cons
                                                 (assgetq _svar13532_
                                                          _hdvars13530_
                                                          _BUG13338_)
                                                 _lvar13533_))
                                              _svars13515_
                                              _lvars13517_))))))
                             (gx#core-list
                              'let-values
                              (map (lambda (_lvar13535_ _tlvar13536_)
                                     (cons (cons _tlvar13536_ '())
                                           (cons (gx#core-list
                                                  'reverse
                                                  _lvar13535_)
                                                 '())))
                                   _lvars13517_
                                   _tlvars13519_)
                              (_k13428_
                               (foldl (lambda (_svar13538_
                                               _tlvar13539_
                                               _r13540_)
                                        (cons (cons _svar13538_ _tlvar13539_)
                                              _r13540_))
                                      _vars13528_
                                      _svars13515_
                                      _tlvars13519_)))))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons* _$lp13507_
                                                        _$target13501_
                                                        _linit13523_)))))
                                      (gx#core-list
                                       'if
                                       (gx#core-list
                                        'stx-pair/null?
                                        _target13426_)
                                       (gx#core-list
                                        'if
                                        (gx#core-list
                                         'fx>=
                                         (gx#core-list
                                          'stx-length
                                          _target13426_)
                                         _rlen13499_)
                                        (gx#core-list
                                         'let-values
                                         (cons (cons (cons _$target13501_
                                                           (cons _$tl13505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (gx#core-list
                                                            'syntax-split-splice
                                                            _target13426_
                                                            _rlen13499_)
                                                           '()))
                                               '())
                                         (_recur13339_
                                          _tl13496_
                                          _vars13425_
                                          _$tl13505_
                                          _E13427_
                                          _make-loop13526_))
                                        _E13427_)
                                       _E13427_))))))
                          (if (##pair? _body1348213489_)
                              (let ((_hd1348613545_ (##car _body1348213489_))
                                    (_tl1348713547_ (##cdr _body1348213489_)))
                                (let* ((_hd13550_ _hd1348613545_)
                                       (_tl13552_ _tl1348713547_))
                                  (_K1348513542_ _tl13552_ _hd13550_)))
                              (_E1348413493_)))
                        (if (eq? _$e13446_ 'null)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-null? _target13426_)
                             (_k13428_ _vars13425_)
                             _E13427_)
                            (if (eq? _$e13446_ 'vector)
                                (let ((_$e13554_ (gx#genident__1 'e)))
                                  (gx#core-list
                                   'if
                                   (gx#core-list 'stx-vector? _target13426_)
                                   (gx#core-list
                                    'let-values
                                    (cons (cons (cons _$e13554_ '())
                                                (cons (gx#core-list
                                                       'vector->list
                                                       (gx#core-list
                                                        _unwrap-e13161_
                                                        _target13426_))
                                                      '()))
                                          '())
                                    (_recur13339_
                                     _body13443_
                                     _vars13425_
                                     _$e13554_
                                     _E13427_
                                     _k13428_))
                                   _E13427_))
                                (if (eq? _$e13446_ 'box)
                                    (let ((_$e13556_ (gx#genident__1 'e)))
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-box? _target13426_)
                                       (gx#core-list
                                        'let-values
                                        (cons (cons (cons _$e13556_ '())
                                                    (cons (gx#core-list
                                                           'unbox
                                                           (gx#core-list
                                                            _unwrap-e13161_
                                                            _target13426_))
                                                          '()))
                                              '())
                                        (_recur13339_
                                         _body13443_
                                         _vars13425_
                                         _$e13556_
                                         _E13427_
                                         _k13428_))
                                       _E13427_))
                                    (if (eq? _$e13446_ 'datum)
                                        (gx#core-list
                                         'if
                                         (gx#core-list
                                          'stx-datum?
                                          _target13426_)
                                         (gx#core-list
                                          'if
                                          (gx#core-list
                                           'equal?
                                           (gx#core-list 'stx-e _target13426_)
                                           _body13443_)
                                          (_k13428_ _vars13425_)
                                          _E13427_)
                                         _E13427_)
                                        (_BUG13338_ _e13424_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (##pair? _e1342913436_)
                                      (let ((_hd1343313561_
                                             (##car _e1342913436_))
                                            (_tl1343413563_
                                             (##cdr _e1342913436_)))
                                        (let* ((_tag13566_ _hd1343313561_)
                                               (_body13568_ _tl1343413563_))
                                          (_K1343213558_
                                           _body13568_
                                           _tag13566_)))
                                      (_E1343113440_)))))
                             (_splice-rlen13340_
                              (lambda (_e13386_)
                                (let _lp13388_ ((_e13390_ _e13386_)
                                                (_n13391_ '0))
                                  (let* ((_e1339213399_ _e13390_)
                                         (_E1339413403_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1339213399_)))
                                         (_K1339513412_
                                          (lambda (_body13406_ _tag13407_)
                                            (let ((_$e13409_ _tag13407_))
                                              (if (eq? _$e13409_ 'splice)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Ambiguous pattern"
                                                   _stx13159_
                                                   _where13331_)
                                                  (if (eq? _$e13409_ 'cons)
                                                      (_lp13388_
                                                       (cdr _body13406_)
                                                       (fx+ _n13391_ '1))
                                                      _n13391_))))))
                                    (if (##pair? _e1339213399_)
                                        (let ((_hd1339613415_
                                               (##car _e1339213399_))
                                              (_tl1339713417_
                                               (##cdr _e1339213399_)))
                                          (let* ((_tag13420_ _hd1339613415_)
                                                 (_body13422_ _tl1339713417_))
                                            (_K1339513412_
                                             _body13422_
                                             _tag13420_)))
                                        (_E1339413403_))))))
                             (_splice-vars13341_
                              (lambda (_e13348_)
                                (let _recur13350_ ((_e13352_ _e13348_)
                                                   (_vars13353_ '()))
                                  (let* ((_e1335413361_ _e13352_)
                                         (_E1335613365_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1335413361_)))
                                         (_K1335713374_
                                          (lambda (_body13368_ _tag13369_)
                                            (let ((_$e13371_ _tag13369_))
                                              (if (eq? _$e13371_ 'var)
                                                  (cons _body13368_
                                                        _vars13353_)
                                                  (if (memq _$e13371_
                                                            '(cons splice))
                                                      (_recur13350_
                                                       (cdr _body13368_)
                                                       (_recur13350_
                                                        (car _body13368_)
                                                        _vars13353_))
                                                      (if (memq _$e13371_
                                                                '(vector box))
                                                          (_recur13350_
                                                           _body13368_
                                                           _vars13353_)
                                                          _vars13353_)))))))
                                    (if (##pair? _e1335413361_)
                                        (let ((_hd1335813377_
                                               (##car _e1335413361_))
                                              (_tl1335913379_
                                               (##cdr _e1335413361_)))
                                          (let* ((_tag13382_ _hd1335813377_)
                                                 (_body13384_ _tl1335913379_))
                                            (_K1335713374_
                                             _body13384_
                                             _tag13382_)))
                                        (_E1335613365_))))))
                             (_make-body13342_
                              (lambda (_vars13344_)
                                (cons _K13335_
                                      (map (lambda (_mvar13346_)
                                             (assgetq (car _mvar13346_)
                                                      _vars13344_
                                                      _BUG13338_))
                                           _mvars13334_)))))
                      (_recur13339_
                       _hd13333_
                       '()
                       _target13332_
                       _E13336_
                       _make-body13342_))))
                 (_parse-clause13168_
                  (lambda (_hd13237_ _ids13238_)
                    (let _recur13240_ ((_e13242_ _hd13237_)
                                       (_vars13243_ '())
                                       (_depth13244_ '0))
                      (if (gx#identifier? _e13242_)
                          (if (gx#underscore? _e13242_)
                              (values '(any) _vars13243_)
                              (if (gx#ellipsis? _e13242_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Misplaced ellipsis"
                                   _stx13159_
                                   _hd13237_)
                                  (if (find (lambda (_id13246_)
                                              (gx#bound-identifier=?
                                               _e13242_
                                               _id13246_))
                                            _ids13238_)
                                      (values (cons 'id _e13242_) _vars13243_)
                                      (if (find (lambda (_var13248_)
                                                  (gx#bound-identifier=?
                                                   _e13242_
                                                   (car _var13248_)))
                                                _vars13243_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Duplicate pattern variable"
                                           _stx13159_
                                           _e13242_)
                                          (values (cons 'var _e13242_)
                                                  (cons (cons _e13242_
                                                              _depth13244_)
                                                        _vars13243_))))))
                          (if (gx#stx-pair? _e13242_)
                              (let* ((_e1324913256_ _e13242_)
                                     (_E1325113260_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _e1324913256_)))
                                     (_E1325013321_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1324913256_)
                                            (let ((_e1325213264_
                                                   (gx#syntax-e
                                                    _e1324913256_)))
                                              (let ((_hd1325313267_
                                                     (##car _e1325213264_))
                                                    (_tl1325413269_
                                                     (##cdr _e1325213264_)))
                                                (let* ((_hd13272_
                                                        _hd1325313267_)
                                                       (_rest13274_
                                                        _tl1325413269_))
                                                  (if '#t
                                                      (let* ((_make-pair13289_
                                                              (lambda (_tag13276_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd13277_
                               _tl13278_)
                        (let* ((_hd-depth13280_
                                (if (eq? _tag13276_ 'splice)
                                    (fx+ _depth13244_ '1)
                                    _depth13244_))
                               (_g14299_
                                (_recur13240_
                                 _hd13277_
                                 _vars13243_
                                 _hd-depth13280_)))
                          (begin
                            (let ((_g14300_ (values-count _g14299_)))
                              (if (not (fx= _g14300_ 2))
                                  (error "Context expects 2 values" _g14300_)))
                            (let ((_hd13282_ (values-ref _g14299_ 0))
                                  (_vars13283_ (values-ref _g14299_ 1)))
                              (let ((_g14301_
                                     (_recur13240_
                                      _tl13278_
                                      _vars13283_
                                      _depth13244_)))
                                (begin
                                  (let ((_g14302_ (values-count _g14301_)))
                                    (if (not (fx= _g14302_ 2))
                                        (error "Context expects 2 values"
                                               _g14302_)))
                                  (let ((_tl13285_ (values-ref _g14301_ 0))
                                        (_vars13286_ (values-ref _g14301_ 1)))
                                    (let ()
                                      (values (cons* _tag13276_
                                                     _hd13282_
                                                     _tl13285_)
                                              _vars13286_))))))))))
                     (_e1329013297_ _rest13274_)
                     (_E1329213301_
                      (lambda ()
                        (_make-pair13289_ 'cons _hd13272_ _rest13274_)))
                     (_E1329113317_
                      (lambda ()
                        (if (gx#stx-pair? _e1329013297_)
                            (let ((_e1329313305_ (gx#syntax-e _e1329013297_)))
                              (let ((_hd1329413308_ (##car _e1329313305_))
                                    (_tl1329513310_ (##cdr _e1329313305_)))
                                (let* ((_rest-hd13313_ _hd1329413308_)
                                       (_rest-tl13315_ _tl1329513310_))
                                  (if '#t
                                      (if (gx#ellipsis? _rest-hd13313_)
                                          (_make-pair13289_
                                           'splice
                                           _hd13272_
                                           _rest-tl13315_)
                                          (_make-pair13289_
                                           'cons
                                           _hd13272_
                                           _rest13274_))
                                      (_E1329213301_)))))
                            (_E1329213301_)))))
                (_E1329113317_))
              (_E1325113260_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1325113260_)))))
                                (_E1325013321_))
                              (if (gx#stx-null? _e13242_)
                                  (values '(null) _vars13243_)
                                  (if (gx#stx-vector? _e13242_)
                                      (let ((_g14303_
                                             (_recur13240_
                                              (vector->list
                                               (gx#syntax-e _e13242_))
                                              _vars13243_
                                              _depth13244_)))
                                        (begin
                                          (let ((_g14304_
                                                 (values-count _g14303_)))
                                            (if (not (fx= _g14304_ 2))
                                                (error "Context expects 2 values"
                                                       _g14304_)))
                                          (let ((_e13325_
                                                 (values-ref _g14303_ 0))
                                                (_vars13326_
                                                 (values-ref _g14303_ 1)))
                                            (values (cons 'vector _e13325_)
                                                    _vars13326_))))
                                      (if (gx#stx-box? _e13242_)
                                          (let ((_g14305_
                                                 (_recur13240_
                                                  (unbox (gx#syntax-e
                                                          _e13242_))
                                                  _vars13243_
                                                  _depth13244_)))
                                            (begin
                                              (let ((_g14306_
                                                     (values-count _g14305_)))
                                                (if (not (fx= _g14306_ 2))
                                                    (error "Context expects 2 values"
                                                           _g14306_)))
                                              (let ((_e13328_
                                                     (values-ref _g14305_ 0))
                                                    (_vars13329_
                                                     (values-ref _g14305_ 1)))
                                                (values (cons 'box _e13328_)
                                                        _vars13329_))))
                                          (if (gx#stx-datum? _e13242_)
                                              (values (cons 'datum
                                                            (gx#stx-e
                                                             _e13242_))
                                                      _vars13243_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad pattern"
                                               _stx13159_
                                               _e13242_)))))))))))
          (let* ((_e1316913182_ _stx13159_)
                 (_E1317113186_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1316913182_)))
                 (_E1317013233_
                  (lambda ()
                    (if (gx#stx-pair? _e1316913182_)
                        (let ((_e1317213190_ (gx#syntax-e _e1316913182_)))
                          (let ((_hd1317313193_ (##car _e1317213190_))
                                (_tl1317413195_ (##cdr _e1317213190_)))
                            (if (gx#stx-pair? _tl1317413195_)
                                (let ((_e1317513198_
                                       (gx#syntax-e _tl1317413195_)))
                                  (let ((_hd1317613201_ (##car _e1317513198_))
                                        (_tl1317713203_ (##cdr _e1317513198_)))
                                    (let ((_expr13206_ _hd1317613201_))
                                      (if (gx#stx-pair? _tl1317713203_)
                                          (let ((_e1317813208_
                                                 (gx#syntax-e _tl1317713203_)))
                                            (let ((_hd1317913211_
                                                   (##car _e1317813208_))
                                                  (_tl1318013213_
                                                   (##cdr _e1317813208_)))
                                              (let* ((_ids13216_
                                                      _hd1317913211_)
                                                     (_clauses13218_
                                                      _tl1318013213_))
                                                (if '#t
                                                    (if (not (gx#identifier-list?
                                                              _ids13216_))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad template identifier list"
                                                         _stx13159_
                                                         _ids13216_)
                                                        (if (not (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _clauses13218_))
                    (gx#raise-syntax-error '#f '"Bad syntax" _stx13159_)
                    (let* ((_ids13220_ (gx#syntax->list _ids13216_))
                           (_clauses13222_ (gx#syntax->list _clauses13218_))
                           (_clause-ids13224_ (gx#gentemps _clauses13222_))
                           (_E13226_ (gx#genident__0))
                           (_target13228_ (gx#genident__0))
                           (_first13230_
                            (if (null? _clauses13222_)
                                _E13226_
                                (car _clause-ids13224_))))
                      (gx#stx-wrap-source
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _E13226_ '())
                                    (cons (gx#core-list
                                           'lambda%
                                           (cons _target13228_ '())
                                           (gx#core-list
                                            'raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _target13228_))
                                          '()))
                              '())
                        (_generate-body13165_
                         (_generate-bindings13164_
                          _target13228_
                          _ids13220_
                          _clauses13222_
                          _clause-ids13224_
                          _E13226_)
                         (cons _first13230_ (cons _expr13206_ '()))))
                       (gx#stx-source _stx13159_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1317113186_)))))
                                          (_E1317113186_)))))
                                (_E1317113186_))))
                        (_E1317113186_)))))
            (_E1317013233_)))))
    (begin
      (define gx#macro-expand-syntax-case__0
        (lambda (_stx13861_)
          (let* ((_identifier=?13863_ 'free-identifier=?)
                 (_unwrap-e13865_ 'syntax-e)
                 (_wrap-e13867_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda13157
             _stx13861_
             _identifier=?13863_
             _unwrap-e13865_
             _wrap-e13867_))))
      (define gx#macro-expand-syntax-case__1
        (lambda (_stx13869_ _identifier=?13870_)
          (let* ((_unwrap-e13872_ 'syntax-e) (_wrap-e13874_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda13157
             _stx13869_
             _identifier=?13870_
             _unwrap-e13872_
             _wrap-e13874_))))
      (define gx#macro-expand-syntax-case__2
        (lambda (_stx13876_ _identifier=?13877_ _unwrap-e13878_)
          (let ((_wrap-e13880_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda13157
             _stx13876_
             _identifier=?13877_
             _unwrap-e13878_
             _wrap-e13880_))))
      (define gx#macro-expand-syntax-case
        (lambda _g14308_
          (let ((_g14307_ (length _g14308_)))
            (cond ((fx= _g14307_ 1)
                   (apply gx#macro-expand-syntax-case__0 _g14308_))
                  ((fx= _g14307_ 2)
                   (apply gx#macro-expand-syntax-case__1 _g14308_))
                  ((fx= _g14307_ 3)
                   (apply gx#macro-expand-syntax-case__2 _g14308_))
                  ((fx= _g14307_ 4)
                   (apply gx#macro-expand-syntax-case__opt-lambda13157
                          _g14308_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-syntax-case
                    _g14308_))))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx13156_)
      (if (gx#identifier? _stx13156_)
          (##structure-instance-of?
           (gx#syntax-local-e__opt-lambda4060 _stx13156_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd13114_ . _rest13115_)
      (let ((_len13117_ (length _hd13114_)))
        (let _lp13119_ ((_rest13121_ _rest13115_))
          (let* ((_rest1312213130_ _rest13121_)
                 (_E1312513134_
                  (lambda () (error '"No clause matching" _rest1312213130_)))
                 (_else1312413138_ (lambda () '#!void))
                 (_K1312613144_
                  (lambda (_rest13141_ _hd13142_)
                    (if (fx= _len13117_ (length _hd13142_))
                        (_lp13119_ _rest13141_)
                        (gx#raise-syntax-error
                         '#f
                         '"Splice length mismatch"
                         _hd13142_)))))
            (if (##pair? _rest1312213130_)
                (let ((_hd1312713147_ (##car _rest1312213130_))
                      (_tl1312813149_ (##cdr _rest1312213130_)))
                  (let* ((_hd13152_ _hd1312713147_)
                         (_rest13154_ _tl1312813149_))
                    (_K1312613144_ _rest13154_ _hd13152_)))
                (_else1312413138_)))))))
  (define gx#syntax-split-splice
    (lambda (_stx13072_ _n13073_)
      (let _lp13075_ ((_rest13077_ _stx13072_) (_r13078_ '()))
        (if (gx#stx-pair? _rest13077_)
            (let* ((_g1307913086_ (gx#syntax-e _rest13077_))
                   (_E1308113090_
                    (lambda () (error '"No clause matching" _g1307913086_)))
                   (_K1308213096_
                    (lambda (_rest13093_ _hd13094_)
                      (_lp13075_ _rest13093_ (cons _hd13094_ _r13078_)))))
              (if (##pair? _g1307913086_)
                  (let ((_hd1308313099_ (##car _g1307913086_))
                        (_tl1308413101_ (##cdr _g1307913086_)))
                    (let* ((_hd13104_ _hd1308313099_)
                           (_rest13106_ _tl1308413101_))
                      (_K1308213096_ _rest13106_ _hd13104_)))
                  (_E1308113090_)))
            (let _lp13108_ ((_n13110_ _n13073_)
                            (_l13111_ _r13078_)
                            (_r13112_ _rest13077_))
              (if (null? _l13111_)
                  (values _l13111_ _r13112_)
                  (if (fxpositive? _n13110_)
                      (_lp13108_
                       (fx- _n13110_ '1)
                       (cdr _l13111_)
                       (cons (car _l13111_) _r13112_))
                      (values (reverse _l13111_) _r13112_)))))))))
