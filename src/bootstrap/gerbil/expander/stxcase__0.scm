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
    (lambda _$args14284_
      (apply make-struct-instance gx#syntax-pattern::t _$args14284_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self14281_ _stx14282_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx14282_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx13890_)
      (letrec ((_generate13892_
                (lambda (_e14119_)
                  (letrec ((_BUG14121_
                            (lambda (_q14279_)
                              (error '"BUG: syntax; generate"
                                     _stx13890_
                                     _e14119_
                                     _q14279_)))
                           (_local-pattern-e14122_
                            (lambda (_pat14277_)
                              (gx#syntax-local-rewrap
                               (##structure-ref
                                _pat14277_
                                '2
                                gx#syntax-pattern::t
                                '#f))))
                           (_getvar14123_
                            (lambda (_q14274_ _vars14275_)
                              (assgetq _q14274_ _vars14275_ _BUG14121_)))
                           (_getarg14124_
                            (lambda (_arg14240_ _vars14241_)
                              (let* ((_arg1424214249_ _arg14240_)
                                     (_E1424414253_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _arg1424214249_)))
                                     (_K1424514262_
                                      (lambda (_e14256_ _tag14257_)
                                        (let ((_$e14259_ _tag14257_))
                                          (if (eq? _$e14259_ 'ref)
                                              (_getvar14123_
                                               _e14256_
                                               _vars14241_)
                                              (if (eq? _$e14259_ 'pattern)
                                                  (_local-pattern-e14122_
                                                   _e14256_)
                                                  (_BUG14121_ _arg14240_)))))))
                                (if (##pair? _arg1424214249_)
                                    (let ((_hd1424614265_
                                           (##car _arg1424214249_))
                                          (_tl1424714267_
                                           (##cdr _arg1424214249_)))
                                      (let* ((_tag14270_ _hd1424614265_)
                                             (_e14272_ _tl1424714267_))
                                        (_K1424514262_ _e14272_ _tag14270_)))
                                    (_E1424414253_))))))
                    (let _recur14126_ ((_e14128_ _e14119_) (_vars14129_ '()))
                      (let* ((_e1413014137_ _e14128_)
                             (_E1413214141_
                              (lambda ()
                                (error '"No clause matching" _e1413014137_)))
                             (_K1413314228_
                              (lambda (_body14144_ _tag14145_)
                                (let ((_$e14147_ _tag14145_))
                                  (if (eq? _$e14147_ 'datum)
                                      (gx#core-list 'quote _body14144_)
                                      (if (eq? _$e14147_ 'term)
                                          (gx#core-list
                                           'datum->syntax
                                           '#f
                                           (gx#core-list 'quote _body14144_))
                                          (if (eq? _$e14147_ 'pattern)
                                              (_local-pattern-e14122_
                                               _body14144_)
                                              (if (eq? _$e14147_ 'ref)
                                                  (_getvar14123_
                                                   _body14144_
                                                   _vars14129_)
                                                  (if (eq? _$e14147_ 'cons)
                                                      (gx#core-list
                                                       'cons
                                                       (_recur14126_
                                                        (car _body14144_)
                                                        _vars14129_)
                                                       (_recur14126_
                                                        (cdr _body14144_)
                                                        _vars14129_))
                                                      (if (eq? _$e14147_
                                                               'vector)
                                                          (gx#core-list
                                                           'list->vector
                                                           (_recur14126_
                                                            _body14144_
                                                            _vars14129_))
                                                          (if (eq? _$e14147_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'box)
                      (gx#core-list
                       'box
                       (_recur14126_ _body14144_ _vars14129_))
                      (if (eq? _$e14147_ 'splice)
                          (let* ((_body1414914160_ _body14144_)
                                 (_E1415114164_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _body1414914160_)))
                                 (_K1415214202_
                                  (lambda (_args14167_
                                           _iv14168_
                                           _hd14169_
                                           _depth14170_)
                                    (let* ((_targets14176_
                                            (map (lambda (_g1417114173_)
                                                   (_getarg14124_
                                                    _g1417114173_
                                                    _vars14129_))
                                                 _args14167_))
                                           (_fold-in14178_
                                            (gx#gentemps _args14167_))
                                           (_fold-out14180_ (gx#genident__0))
                                           (_lambda-args14182_
                                            (foldr1 cons
                                                    (cons _fold-out14180_ '())
                                                    _fold-in14178_))
                                           (_lambda-body14199_
                                            (if (fx> _depth14170_ '1)
                                                (let ((_r-args14190_
                                                       (map (lambda (_arg14184_)
                                                              (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cdr _arg14184_)))
                    _args14167_))
              (_r-vars14191_
               (foldr (lambda (_arg14186_ _var14187_ _r14188_)
                        (cons (cons (cdr _arg14186_) _var14187_) _r14188_))
                      _vars14129_
                      _args14167_
                      _fold-in14178_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur14126_
                                                   (cons* 'splice
                                                          (fx- _depth14170_ '1)
                                                          _hd14169_
                                                          (cons 'var
                                                                _fold-out14180_)
                                                          _r-args14190_)
                                                   _r-vars14191_))
                                                (let ((_hd-vars14197_
                                                       (foldr (lambda (_arg14193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _var14194_
                               _r14195_)
                        (cons (cons (cdr _arg14193_) _var14194_) _r14195_))
                      _vars14129_
                      _args14167_
                      _fold-in14178_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#core-list
                                                   'cons
                                                   (_recur14126_
                                                    _hd14169_
                                                    _hd-vars14197_)
                                                   _fold-out14180_)))))
                                      (gx#core-list
                                       'begin
                                       (if (fx> (length _targets14176_) '1)
                                           (gx#core-cons*
                                            'syntax-check-splice-targets
                                            _targets14176_)
                                           '#!void)
                                       (gx#core-cons*
                                        'foldr
                                        (gx#core-list
                                         'lambda%
                                         _lambda-args14182_
                                         _lambda-body14199_)
                                        (_recur14126_ _iv14168_ _vars14129_)
                                        _targets14176_))))))
                            (if (##pair? _body1414914160_)
                                (let ((_hd1415314205_ (##car _body1414914160_))
                                      (_tl1415414207_
                                       (##cdr _body1414914160_)))
                                  (let ((_depth14210_ _hd1415314205_))
                                    (if (##pair? _tl1415414207_)
                                        (let ((_hd1415514212_
                                               (##car _tl1415414207_))
                                              (_tl1415614214_
                                               (##cdr _tl1415414207_)))
                                          (let ((_hd14217_ _hd1415514212_))
                                            (if (##pair? _tl1415614214_)
                                                (let ((_hd1415714219_
                                                       (##car _tl1415614214_))
                                                      (_tl1415814221_
                                                       (##cdr _tl1415614214_)))
                                                  (let* ((_iv14224_
                                                          _hd1415714219_)
                                                         (_args14226_
                                                          _tl1415814221_))
                                                    (_K1415214202_
                                                     _args14226_
                                                     _iv14224_
                                                     _hd14217_
                                                     _depth14210_)))
                                                (_E1415114164_))))
                                        (_E1415114164_))))
                                (_E1415114164_)))
                          (if (eq? _$e14147_ 'var)
                              _body14144_
                              (_BUG14121_ _e14128_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (if (##pair? _e1413014137_)
                            (let ((_hd1413414231_ (##car _e1413014137_))
                                  (_tl1413514233_ (##cdr _e1413014137_)))
                              (let* ((_tag14236_ _hd1413414231_)
                                     (_body14238_ _tl1413514233_))
                                (_K1413314228_ _body14238_ _tag14236_)))
                            (_E1413214141_)))))))
               (_parse13893_
                (lambda (_e13934_)
                  (letrec ((_make-cons13936_
                            (lambda (_hd14111_ _tl14112_)
                              (let ((_g14286_ _hd14111_) (_g14288_ _tl14112_))
                                (begin
                                  (let ((_g14287_ (values-count _g14286_)))
                                    (if (not (fx= _g14287_ 2))
                                        (error "Context expects 2 values"
                                               _g14287_)))
                                  (let ((_g14289_ (values-count _g14288_)))
                                    (if (not (fx= _g14289_ 2))
                                        (error "Context expects 2 values"
                                               _g14289_)))
                                  (let ((_hd-e14114_ (values-ref _g14286_ 0))
                                        (_hd-vars14115_
                                         (values-ref _g14286_ 1)))
                                    (let ((_tl-e14116_ (values-ref _g14288_ 0))
                                          (_tl-vars14117_
                                           (values-ref _g14288_ 1)))
                                      (values (cons* 'cons
                                                     _hd-e14114_
                                                     _tl-e14116_)
                                              (append _hd-vars14115_
                                                      _tl-vars14117_))))))))
                           (_make-splice13937_
                            (lambda (_where14050_
                                     _depth14051_
                                     _hd14052_
                                     _tl14053_)
                              (let ((_g14290_ _hd14052_) (_g14292_ _tl14053_))
                                (begin
                                  (let ((_g14291_ (values-count _g14290_)))
                                    (if (not (fx= _g14291_ 2))
                                        (error "Context expects 2 values"
                                               _g14291_)))
                                  (let ((_g14293_ (values-count _g14292_)))
                                    (if (not (fx= _g14293_ 2))
                                        (error "Context expects 2 values"
                                               _g14293_)))
                                  (let ((_hd-e14055_ (values-ref _g14290_ 0))
                                        (_hd-vars14056_
                                         (values-ref _g14290_ 1)))
                                    (let ((_tl-e14057_ (values-ref _g14292_ 0))
                                          (_tl-vars14058_
                                           (values-ref _g14292_ 1)))
                                      (let _lp14060_ ((_rest14062_
                                                       _hd-vars14056_)
                                                      (_targets14063_ '())
                                                      (_vars14064_
                                                       _tl-vars14058_))
                                        (let* ((_rest1406514075_ _rest14062_)
                                               (_E1406814079_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _rest1406514075_)))
                                               (_else1406714083_
                                                (lambda ()
                                                  (if (null? _targets14063_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Misplaced ellipsis"
                                                       _stx13890_
                                                       _where14050_)
                                                      (values (cons* 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _depth14051_
                             _hd-e14055_
                             _tl-e14057_
                             _targets14063_)
                      _vars14064_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_K1406914092_
                                                (lambda (_rest14086_
                                                         _hd-pat14087_
                                                         _hd-depth*14088_)
                                                  (let ((_hd-depth14090_
                                                         (fx- _hd-depth*14088_
                                                              _depth14051_)))
                                                    (if (fxpositive?
                                                         _hd-depth14090_)
                                                        (_lp14060_
                                                         _rest14086_
                                                         (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd-pat14087_)
                       _targets14063_)
                 (cons (cons _hd-depth14090_ _hd-pat14087_) _vars14064_))
                (if (fxzero? _hd-depth14090_)
                    (_lp14060_
                     _rest14086_
                     (cons (cons 'pattern _hd-pat14087_) _targets14063_)
                     _vars14064_)
                    (gx#raise-syntax-error
                     '#f
                     '"Too many ellipses"
                     _stx13890_
                     _where14050_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1406514075_)
                                              (let ((_hd1407014095_
                                                     (##car _rest1406514075_))
                                                    (_tl1407114097_
                                                     (##cdr _rest1406514075_)))
                                                (if (##pair? _hd1407014095_)
                                                    (let ((_hd1407214100_
                                                           (##car _hd1407014095_))
                                                          (_tl1407314102_
                                                           (##cdr _hd1407014095_)))
                                                      (let* ((_hd-depth*14105_
                                                              _hd1407214100_)
                                                             (_hd-pat14107_
                                                              _tl1407314102_)
                                                             (_rest14109_
                                                              _tl1407114097_))
                                                        (_K1406914092_
                                                         _rest14109_
                                                         _hd-pat14107_
                                                         _hd-depth*14105_)))
                                                    (_else1406714083_)))
                                              (_else1406714083_))))))))))
                           (_recur13938_
                            (lambda (_e13943_ _is-e?13944_)
                              (if (_is-e?13944_ _e13943_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Mislpaced ellipsis"
                                   _stx13890_)
                                  (if (gx#syntax-local-pattern? _e13943_)
                                      (let* ((_pat13946_
                                              (gx#syntax-local-e__0 _e13943_))
                                             (_depth13948_
                                              (##structure-ref
                                               _pat13946_
                                               '3
                                               gx#syntax-pattern::t
                                               '#f)))
                                        (if (fxpositive? _depth13948_)
                                            (values (cons 'ref _pat13946_)
                                                    (cons (cons _depth13948_
                                                                _pat13946_)
                                                          '()))
                                            (values (cons 'pattern _pat13946_)
                                                    '())))
                                      (if (gx#identifier? _e13943_)
                                          (values (cons 'term _e13943_) '())
                                          (if (gx#stx-pair? _e13943_)
                                              (let* ((_e1395013957_ _e13943_)
                                                     (_E1395213961_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _e1395013957_)))
                                                     (_E1395114040_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e1395013957_)
                                                            (let ((_e1395313965_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e1395013957_)))
                      (let ((_hd1395413968_ (##car _e1395313965_))
                            (_tl1395513970_ (##cdr _e1395313965_)))
                        (let* ((_hd13973_ _hd1395413968_)
                               (_rest13975_ _tl1395513970_))
                          (if '#t
                              (if (_is-e?13944_ _hd13973_)
                                  (let* ((_e1397613983_ _rest13975_)
                                         (_E1397813987_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _stx13890_
                                             _e13943_)))
                                         (_E1397714001_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1397613983_)
                                                (let ((_e1397913991_
                                                       (gx#syntax-e
                                                        _e1397613983_)))
                                                  (let ((_hd1398013994_
                                                         (##car _e1397913991_))
                                                        (_tl1398113996_
                                                         (##cdr _e1397913991_)))
                                                    (let ((_rest13999_
                                                           _hd1398013994_))
                                                      (if (gx#stx-null?
                                                           _tl1398113996_)
                                                          (if '#t
                                                              (_recur13938_
                                                               _rest13999_
                                                               false)
                                                              (_E1397813987_))
                                                          (_E1397813987_)))))
                                                (_E1397813987_)))))
                                    (_E1397714001_))
                                  (let _lp14005_ ((_rest14007_ _rest13975_)
                                                  (_depth14008_ '0))
                                    (let* ((_e1400914016_ _rest14007_)
                                           (_E1401114020_
                                            (lambda ()
                                              (if (fxpositive? _depth14008_)
                                                  (_make-splice13937_
                                                   _e13943_
                                                   _depth14008_
                                                   (_recur13938_
                                                    _hd13973_
                                                    _is-e?13944_)
                                                   (_recur13938_
                                                    _rest14007_
                                                    _is-e?13944_))
                                                  (_make-cons13936_
                                                   (_recur13938_
                                                    _hd13973_
                                                    _is-e?13944_)
                                                   (_recur13938_
                                                    _rest14007_
                                                    _is-e?13944_)))))
                                           (_E1401014036_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1400914016_)
                                                  (let ((_e1401214024_
                                                         (gx#syntax-e
                                                          _e1400914016_)))
                                                    (let ((_hd1401314027_
                                                           (##car _e1401214024_))
                                                          (_tl1401414029_
                                                           (##cdr _e1401214024_)))
                                                      (let* ((_rest-hd14032_
                                                              _hd1401314027_)
                                                             (_rest-tl14034_
                                                              _tl1401414029_))
                                                        (if '#t
                                                            (if (_is-e?13944_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rest-hd14032_)
                        (_lp14005_ _rest-tl14034_ (fx+ _depth14008_ '1))
                        (if (fxpositive? _depth14008_)
                            (_make-splice13937_
                             _e13943_
                             _depth14008_
                             (_recur13938_ _hd13973_ _is-e?13944_)
                             (_recur13938_ _rest14007_ _is-e?13944_))
                            (_make-cons13936_
                             (_recur13938_ _hd13973_ _is-e?13944_)
                             (_recur13938_ _rest14007_ _is-e?13944_))))
                    (_E1401114020_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1401114020_)))))
                                      (_E1401014036_))))
                              (_E1395213961_)))))
                    (_E1395213961_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1395114040_))
                                              (if (gx#stx-vector? _e13943_)
                                                  (let ((_g14294_
                                                         (_recur13938_
                                                          (vector->list
                                                           (gx#stx-unwrap__0
                                                            _e13943_))
                                                          _is-e?13944_)))
                                                    (begin
                                                      (let ((_g14295_
                                                             (values-count
                                                              _g14294_)))
                                                        (if (not (fx= _g14295_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g14295_)))
              (let ((_e14044_ (values-ref _g14294_ 0))
                    (_vars14045_ (values-ref _g14294_ 1)))
                (values (cons 'vector _e14044_) _vars14045_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e13943_)
                                                      (let ((_g14296_
                                                             (_recur13938_
                                                              (unbox (gx#stx-unwrap__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e13943_))
                      _is-e?13944_)))
                (begin
                  (let ((_g14297_ (values-count _g14296_)))
                    (if (not (fx= _g14297_ 2))
                        (error "Context expects 2 values" _g14297_)))
                  (let ((_e14047_ (values-ref _g14296_ 0))
                        (_vars14048_ (values-ref _g14296_ 1)))
                    (values (cons 'box _e14047_) _vars14048_))))
              (values (cons 'datum _e13943_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    (let ((_g14298_ (_recur13938_ _e13934_ gx#ellipsis?)))
                      (begin
                        (let ((_g14299_ (values-count _g14298_)))
                          (if (not (fx= _g14299_ 2))
                              (error "Context expects 2 values" _g14299_)))
                        (let ((_tree13940_ (values-ref _g14298_ 0))
                              (_vars13941_ (values-ref _g14298_ 1)))
                          (if (null? _vars13941_)
                              _tree13940_
                              (gx#raise-syntax-error
                               '#f
                               '"Missing ellipsis"
                               _stx13890_
                               _vars13941_)))))))))
        (let* ((_e1389413904_ _stx13890_)
               (_E1389613908_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _stx13890_)))
               (_E1389513930_
                (lambda ()
                  (if (gx#stx-pair? _e1389413904_)
                      (let ((_e1389713912_ (gx#syntax-e _e1389413904_)))
                        (let ((_hd1389813915_ (##car _e1389713912_))
                              (_tl1389913917_ (##cdr _e1389713912_)))
                          (if (gx#stx-pair? _tl1389913917_)
                              (let ((_e1390013920_
                                     (gx#syntax-e _tl1389913917_)))
                                (let ((_hd1390113923_ (##car _e1390013920_))
                                      (_tl1390213925_ (##cdr _e1390013920_)))
                                  (let ((_form13928_ _hd1390113923_))
                                    (if (gx#stx-null? _tl1390213925_)
                                        (if '#t
                                            (gx#stx-wrap-source
                                             (_generate13892_
                                              (_parse13893_ _form13928_))
                                             (gx#stx-source _stx13890_))
                                            (_E1389613908_))
                                        (_E1389613908_)))))
                              (_E1389613908_))))
                      (_E1389613908_)))))
          (_E1389513930_)))))
  (begin
    (define gx#macro-expand-syntax-case__opt-lambda13160
      (lambda (_stx13162_ _identifier=?13163_ _unwrap-e13164_ _wrap-e13165_)
        (letrec ((_generate-bindings13167_
                  (lambda (_target13752_
                           _ids13753_
                           _clauses13754_
                           _clause-ids13755_
                           _E13756_)
                    (letrec ((_generate113758_
                              (lambda (_clause13857_ _clause-id13858_ _E13859_)
                                (cons (cons _clause-id13858_ '())
                                      (cons (gx#core-list
                                             'lambda%
                                             (cons _target13752_ '())
                                             (_generate-clause13169_
                                              _target13752_
                                              _ids13753_
                                              _clause13857_
                                              _E13859_))
                                            '())))))
                      (let _lp13760_ ((_rest13762_ _clauses13754_)
                                      (_rest-ids13763_ _clause-ids13755_)
                                      (_bindings13764_ '()))
                        (let* ((_rest1376513773_ _rest13762_)
                               (_E1376813777_
                                (lambda ()
                                  (error '"No clause matching"
                                         _rest1376513773_)))
                               (_else1376713781_ (lambda () _bindings13764_))
                               (_K1376913845_
                                (lambda (_rest13784_ _clause13785_)
                                  (let* ((_rest-ids1378613793_ _rest-ids13763_)
                                         (_E1378813797_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids1378613793_)))
                                         (_K1378913833_
                                          (lambda (_rest-ids13800_
                                                   _clause-id13801_)
                                            (let* ((_rest-ids1380213810_
                                                    _rest-ids13800_)
                                                   (_E1380513814_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _rest-ids1380213810_)))
                                                   (_else1380413818_
                                                    (lambda ()
                                                      (cons (_generate113758_
                                                             _clause13785_
                                                             _clause-id13801_
                                                             _E13756_)
                                                            _bindings13764_)))
                                                   (_K1380613823_
                                                    (lambda (_next-clause-id13821_)
                                                      (_lp13760_
                                                       _rest13784_
                                                       _rest-ids13800_
                                                       (cons (_generate113758_
                                                              _clause13785_
                                                              _clause-id13801_
                                                              _next-clause-id13821_)
                                                             _bindings13764_)))))
                                              (if (##pair? _rest-ids1380213810_)
                                                  (let ((_hd1380713826_
                                                         (##car _rest-ids1380213810_))
                                                        (_tl1380813828_
                                                         (##cdr _rest-ids1380213810_)))
                                                    (let ((_next-clause-id13831_
                                                           _hd1380713826_))
                                                      (_K1380613823_
                                                       _next-clause-id13831_)))
                                                  (_else1380413818_))))))
                                    (if (##pair? _rest-ids1378613793_)
                                        (let ((_hd1379013836_
                                               (##car _rest-ids1378613793_))
                                              (_tl1379113838_
                                               (##cdr _rest-ids1378613793_)))
                                          (let* ((_clause-id13841_
                                                  _hd1379013836_)
                                                 (_rest-ids13843_
                                                  _tl1379113838_))
                                            (_K1378913833_
                                             _rest-ids13843_
                                             _clause-id13841_)))
                                        (_E1378813797_))))))
                          (if (##pair? _rest1376513773_)
                              (let ((_hd1377013848_ (##car _rest1376513773_))
                                    (_tl1377113850_ (##cdr _rest1376513773_)))
                                (let* ((_clause13853_ _hd1377013848_)
                                       (_rest13855_ _tl1377113850_))
                                  (_K1376913845_ _rest13855_ _clause13853_)))
                              (_else1376713781_)))))))
                 (_generate-body13168_
                  (lambda (_bindings13712_ _body13713_)
                    (let _recur13715_ ((_rest13717_ _bindings13712_))
                      (let* ((_rest1371813726_ _rest13717_)
                             (_E1372113730_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1371813726_)))
                             (_else1372013734_ (lambda () _body13713_))
                             (_K1372213740_
                              (lambda (_rest13737_ _hd13738_)
                                (gx#core-list
                                 'let-values
                                 (cons _hd13738_ '())
                                 (_recur13715_ _rest13737_)))))
                        (if (##pair? _rest1371813726_)
                            (let ((_hd1372313743_ (##car _rest1371813726_))
                                  (_tl1372413745_ (##cdr _rest1371813726_)))
                              (let* ((_hd13748_ _hd1372313743_)
                                     (_rest13750_ _tl1372413745_))
                                (_K1372213740_ _rest13750_ _hd13748_)))
                            (_else1372013734_))))))
                 (_generate-clause13169_
                  (lambda (_target13575_ _ids13576_ _clause13577_ _E13578_)
                    (letrec ((_generate113580_
                              (lambda (_hd13667_ _fender13668_ _body13669_)
                                (let ((_g14300_
                                       (_parse-clause13171_
                                        _hd13667_
                                        _ids13576_)))
                                  (begin
                                    (let ((_g14301_ (values-count _g14300_)))
                                      (if (not (fx= _g14301_ 2))
                                          (error "Context expects 2 values"
                                                 _g14301_)))
                                    (let ((_e13671_ (values-ref _g14300_ 0))
                                          (_mvars13672_
                                           (values-ref _g14300_ 1)))
                                      (let* ((_pvars13674_
                                              (map gx#syntax-local-rewrap
                                                   (gx#gentemps _mvars13672_)))
                                             (_E13676_
                                              (cons _E13578_
                                                    (cons _target13575_ '())))
                                             (_K13709_
                                              (gx#core-list
                                               'lambda%
                                               _pvars13674_
                                               (gx#core-list
                                                'let-syntax
                                                (map (lambda (_mvar13678_
                                                              _pvar13679_)
                                                       (let* ((_mvar1368013687_
                                                               _mvar13678_)
                                                              (_E1368213691_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (error '"No clause matching" _mvar1368013687_)))
                      (_K1368313697_
                       (lambda (_depth13694_ _id13695_)
                         (cons _id13695_
                               (cons (gx#core-list
                                      'make-syntax-pattern
                                      (gx#core-list 'quote _id13695_)
                                      (gx#core-list 'quote _pvar13679_)
                                      _depth13694_)
                                     '())))))
                 (if (##pair? _mvar1368013687_)
                     (let ((_hd1368413700_ (##car _mvar1368013687_))
                           (_tl1368513702_ (##cdr _mvar1368013687_)))
                       (let* ((_id13705_ _hd1368413700_)
                              (_depth13707_ _tl1368513702_))
                         (_K1368313697_ _depth13707_ _id13705_)))
                     (_E1368213691_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _mvars13672_
                                                     _pvars13674_)
                                                (if (eq? _fender13668_ '#t)
                                                    _body13669_
                                                    (gx#core-list
                                                     'if
                                                     _fender13668_
                                                     _body13669_
                                                     _E13676_))))))
                                        (_generate-match13170_
                                         _hd13667_
                                         _target13575_
                                         _e13671_
                                         _mvars13672_
                                         _K13709_
                                         _E13676_))))))))
                      (let* ((_e1358113601_ _clause13577_)
                             (_E1359013605_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _e1358113601_)))
                             (_E1358313639_
                              (lambda ()
                                (if (gx#stx-pair? _e1358113601_)
                                    (let ((_e1359113609_
                                           (gx#syntax-e _e1358113601_)))
                                      (let ((_hd1359213612_
                                             (##car _e1359113609_))
                                            (_tl1359313614_
                                             (##cdr _e1359113609_)))
                                        (let ((_hd13617_ _hd1359213612_))
                                          (if (gx#stx-pair? _tl1359313614_)
                                              (let ((_e1359413619_
                                                     (gx#syntax-e
                                                      _tl1359313614_)))
                                                (let ((_hd1359513622_
                                                       (##car _e1359413619_))
                                                      (_tl1359613624_
                                                       (##cdr _e1359413619_)))
                                                  (let ((_fender13627_
                                                         _hd1359513622_))
                                                    (if (gx#stx-pair?
                                                         _tl1359613624_)
                                                        (let ((_e1359713629_
                                                               (gx#syntax-e
                                                                _tl1359613624_)))
                                                          (let ((_hd1359813632_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1359713629_))
                        (_tl1359913634_ (##cdr _e1359713629_)))
                    (let ((_body13637_ _hd1359813632_))
                      (if (gx#stx-null? _tl1359913634_)
                          (if '#t
                              (_generate113580_
                               _hd13617_
                               _fender13627_
                               _body13637_)
                              (_E1359013605_))
                          (_E1359013605_)))))
                (_E1359013605_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1359013605_)))))
                                    (_E1359013605_))))
                             (_E1358213663_
                              (lambda ()
                                (if (gx#stx-pair? _e1358113601_)
                                    (let ((_e1358413643_
                                           (gx#syntax-e _e1358113601_)))
                                      (let ((_hd1358513646_
                                             (##car _e1358413643_))
                                            (_tl1358613648_
                                             (##cdr _e1358413643_)))
                                        (let ((_hd13651_ _hd1358513646_))
                                          (if (gx#stx-pair? _tl1358613648_)
                                              (let ((_e1358713653_
                                                     (gx#syntax-e
                                                      _tl1358613648_)))
                                                (let ((_hd1358813656_
                                                       (##car _e1358713653_))
                                                      (_tl1358913658_
                                                       (##cdr _e1358713653_)))
                                                  (let ((_body13661_
                                                         _hd1358813656_))
                                                    (if (gx#stx-null?
                                                         _tl1358913658_)
                                                        (if '#t
                                                            (_generate113580_
                                                             _hd13651_
                                                             '#t
                                                             _body13661_)
                                                            (_E1358313639_))
                                                        (_E1358313639_)))))
                                              (_E1358313639_)))))
                                    (_E1358313639_)))))
                        (_E1358213663_)))))
                 (_generate-match13170_
                  (lambda (_where13334_
                           _target13335_
                           _hd13336_
                           _mvars13337_
                           _K13338_
                           _E13339_)
                    (letrec ((_BUG13341_
                              (lambda (_q13573_)
                                (error '"BUG: syntax-case; generate"
                                       _stx13162_
                                       _hd13336_
                                       _q13573_)))
                             (_recur13342_
                              (lambda (_e13427_
                                       _vars13428_
                                       _target13429_
                                       _E13430_
                                       _k13431_)
                                (let* ((_e1343213439_ _e13427_)
                                       (_E1343413443_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e1343213439_)))
                                       (_K1343513561_
                                        (lambda (_body13446_ _tag13447_)
                                          (let ((_$e13449_ _tag13447_))
                                            (if (eq? _$e13449_ 'any)
                                                (_k13431_ _vars13428_)
                                                (if (eq? _$e13449_ 'id)
                                                    (gx#core-list
                                                     'if
                                                     (gx#core-list
                                                      'identifier?
                                                      _target13429_)
                                                     (gx#core-list
                                                      'if
                                                      (gx#core-list
                                                       _identifier=?13163_
                                                       (gx#core-list
                                                        _wrap-e13165_
                                                        _body13446_)
                                                       _target13429_)
                                                      (_k13431_ _vars13428_)
                                                      _E13430_)
                                                     _E13430_)
                                                    (if (eq? _$e13449_ 'var)
                                                        (_k13431_
                                                         (cons (cons _body13446_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _target13429_)
                       _vars13428_))
                (if (eq? _$e13449_ 'cons)
                    (let ((_$e13452_ (gx#genident__1 'e))
                          (_$hd13453_ (gx#genident__1 'hd))
                          (_$tl13454_ (gx#genident__1 'tl)))
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _target13429_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$e13452_ '())
                                    (cons (gx#core-list
                                           _unwrap-e13164_
                                           _target13429_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$hd13453_ '())
                                     (cons (gx#core-list '##car _$e13452_)
                                           '()))
                               (cons (cons (cons _$tl13454_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$e13452_)
                                                 '()))
                                     '()))
                         (let* ((_body1345513462_ _body13446_)
                                (_E1345713466_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _body1345513462_)))
                                (_K1345813474_
                                 (lambda (_tl13469_ _hd13470_)
                                   (_recur13342_
                                    _hd13470_
                                    _vars13428_
                                    _$hd13453_
                                    _E13430_
                                    (lambda (_vars13472_)
                                      (_recur13342_
                                       _tl13469_
                                       _vars13472_
                                       _$tl13454_
                                       _E13430_
                                       _k13431_))))))
                           (if (##pair? _body1345513462_)
                               (let ((_hd1345913477_ (##car _body1345513462_))
                                     (_tl1346013479_ (##cdr _body1345513462_)))
                                 (let* ((_hd13482_ _hd1345913477_)
                                        (_tl13484_ _tl1346013479_))
                                   (_K1345813474_ _tl13484_ _hd13482_)))
                               (_E1345713466_)))))
                       _E13430_))
                    (if (eq? _$e13449_ 'splice)
                        (let* ((_body1348513492_ _body13446_)
                               (_E1348713496_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body1348513492_)))
                               (_K1348813545_
                                (lambda (_tl13499_ _hd13500_)
                                  (let* ((_rlen13502_
                                          (_splice-rlen13343_ _tl13499_))
                                         (_$target13504_
                                          (gx#genident__1 'target))
                                         (_$hd13506_ (gx#genident__1 'hd))
                                         (_$tl13508_ (gx#genident__1 'tl))
                                         (_$lp13510_ (gx#genident__1 'loop))
                                         (_$lp-e13512_ (gx#genident__1 'e))
                                         (_$lp-hd13514_
                                          (gx#genident__1 'lp-hd))
                                         (_$lp-tl13516_
                                          (gx#genident__1 'lp-tl))
                                         (_svars13518_
                                          (_splice-vars13344_ _hd13500_))
                                         (_lvars13520_
                                          (gx#gentemps _svars13518_))
                                         (_tlvars13522_
                                          (gx#gentemps _svars13518_))
                                         (_linit13526_
                                          (map (lambda (_var13524_)
                                                 (gx#core-list 'quote '()))
                                               _lvars13520_)))
                                    (letrec ((_make-loop13529_
                                              (lambda (_vars13531_)
                                                (gx#core-list
                                                 'letrec-values
                                                 (cons (cons (cons _$lp13510_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _$hd13506_ _lvars13520_)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-pair? _$hd13506_)
                             (gx#core-list
                              'let-values
                              (cons (cons (cons _$lp-e13512_ '())
                                          (cons (gx#core-list
                                                 _unwrap-e13164_
                                                 _$hd13506_)
                                                '()))
                                    '())
                              (gx#core-list
                               'let-values
                               (cons (cons (cons _$lp-hd13514_ '())
                                           (cons (gx#core-list
                                                  '##car
                                                  _$lp-e13512_)
                                                 '()))
                                     (cons (cons (cons _$lp-tl13516_ '())
                                                 (cons (gx#core-list
                                                        '##cdr
                                                        _$lp-e13512_)
                                                       '()))
                                           '()))
                               (_recur13342_
                                _hd13500_
                                '()
                                _$lp-hd13514_
                                _E13430_
                                (lambda (_hdvars13533_)
                                  (cons* _$lp13510_
                                         _$lp-tl13516_
                                         (map (lambda (_svar13535_ _lvar13536_)
                                                (gx#core-list
                                                 'cons
                                                 (assgetq _svar13535_
                                                          _hdvars13533_
                                                          _BUG13341_)
                                                 _lvar13536_))
                                              _svars13518_
                                              _lvars13520_))))))
                             (gx#core-list
                              'let-values
                              (map (lambda (_lvar13538_ _tlvar13539_)
                                     (cons (cons _tlvar13539_ '())
                                           (cons (gx#core-list
                                                  'reverse
                                                  _lvar13538_)
                                                 '())))
                                   _lvars13520_
                                   _tlvars13522_)
                              (_k13431_
                               (foldl (lambda (_svar13541_
                                               _tlvar13542_
                                               _r13543_)
                                        (cons (cons _svar13541_ _tlvar13542_)
                                              _r13543_))
                                      _vars13531_
                                      _svars13518_
                                      _tlvars13522_)))))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons* _$lp13510_
                                                        _$target13504_
                                                        _linit13526_)))))
                                      (gx#core-list
                                       'if
                                       (gx#core-list
                                        'stx-pair/null?
                                        _target13429_)
                                       (gx#core-list
                                        'if
                                        (gx#core-list
                                         'fx>=
                                         (gx#core-list
                                          'stx-length
                                          _target13429_)
                                         _rlen13502_)
                                        (gx#core-list
                                         'let-values
                                         (cons (cons (cons _$target13504_
                                                           (cons _$tl13508_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (gx#core-list
                                                            'syntax-split-splice
                                                            _target13429_
                                                            _rlen13502_)
                                                           '()))
                                               '())
                                         (_recur13342_
                                          _tl13499_
                                          _vars13428_
                                          _$tl13508_
                                          _E13430_
                                          _make-loop13529_))
                                        _E13430_)
                                       _E13430_))))))
                          (if (##pair? _body1348513492_)
                              (let ((_hd1348913548_ (##car _body1348513492_))
                                    (_tl1349013550_ (##cdr _body1348513492_)))
                                (let* ((_hd13553_ _hd1348913548_)
                                       (_tl13555_ _tl1349013550_))
                                  (_K1348813545_ _tl13555_ _hd13553_)))
                              (_E1348713496_)))
                        (if (eq? _$e13449_ 'null)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-null? _target13429_)
                             (_k13431_ _vars13428_)
                             _E13430_)
                            (if (eq? _$e13449_ 'vector)
                                (let ((_$e13557_ (gx#genident__1 'e)))
                                  (gx#core-list
                                   'if
                                   (gx#core-list 'stx-vector? _target13429_)
                                   (gx#core-list
                                    'let-values
                                    (cons (cons (cons _$e13557_ '())
                                                (cons (gx#core-list
                                                       'vector->list
                                                       (gx#core-list
                                                        _unwrap-e13164_
                                                        _target13429_))
                                                      '()))
                                          '())
                                    (_recur13342_
                                     _body13446_
                                     _vars13428_
                                     _$e13557_
                                     _E13430_
                                     _k13431_))
                                   _E13430_))
                                (if (eq? _$e13449_ 'box)
                                    (let ((_$e13559_ (gx#genident__1 'e)))
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-box? _target13429_)
                                       (gx#core-list
                                        'let-values
                                        (cons (cons (cons _$e13559_ '())
                                                    (cons (gx#core-list
                                                           'unbox
                                                           (gx#core-list
                                                            _unwrap-e13164_
                                                            _target13429_))
                                                          '()))
                                              '())
                                        (_recur13342_
                                         _body13446_
                                         _vars13428_
                                         _$e13559_
                                         _E13430_
                                         _k13431_))
                                       _E13430_))
                                    (if (eq? _$e13449_ 'datum)
                                        (gx#core-list
                                         'if
                                         (gx#core-list
                                          'stx-datum?
                                          _target13429_)
                                         (gx#core-list
                                          'if
                                          (gx#core-list
                                           'equal?
                                           (gx#core-list 'stx-e _target13429_)
                                           _body13446_)
                                          (_k13431_ _vars13428_)
                                          _E13430_)
                                         _E13430_)
                                        (_BUG13341_ _e13427_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (##pair? _e1343213439_)
                                      (let ((_hd1343613564_
                                             (##car _e1343213439_))
                                            (_tl1343713566_
                                             (##cdr _e1343213439_)))
                                        (let* ((_tag13569_ _hd1343613564_)
                                               (_body13571_ _tl1343713566_))
                                          (_K1343513561_
                                           _body13571_
                                           _tag13569_)))
                                      (_E1343413443_)))))
                             (_splice-rlen13343_
                              (lambda (_e13389_)
                                (let _lp13391_ ((_e13393_ _e13389_)
                                                (_n13394_ '0))
                                  (let* ((_e1339513402_ _e13393_)
                                         (_E1339713406_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1339513402_)))
                                         (_K1339813415_
                                          (lambda (_body13409_ _tag13410_)
                                            (let ((_$e13412_ _tag13410_))
                                              (if (eq? _$e13412_ 'splice)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Ambiguous pattern"
                                                   _stx13162_
                                                   _where13334_)
                                                  (if (eq? _$e13412_ 'cons)
                                                      (_lp13391_
                                                       (cdr _body13409_)
                                                       (fx+ _n13394_ '1))
                                                      _n13394_))))))
                                    (if (##pair? _e1339513402_)
                                        (let ((_hd1339913418_
                                               (##car _e1339513402_))
                                              (_tl1340013420_
                                               (##cdr _e1339513402_)))
                                          (let* ((_tag13423_ _hd1339913418_)
                                                 (_body13425_ _tl1340013420_))
                                            (_K1339813415_
                                             _body13425_
                                             _tag13423_)))
                                        (_E1339713406_))))))
                             (_splice-vars13344_
                              (lambda (_e13351_)
                                (let _recur13353_ ((_e13355_ _e13351_)
                                                   (_vars13356_ '()))
                                  (let* ((_e1335713364_ _e13355_)
                                         (_E1335913368_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1335713364_)))
                                         (_K1336013377_
                                          (lambda (_body13371_ _tag13372_)
                                            (let ((_$e13374_ _tag13372_))
                                              (if (eq? _$e13374_ 'var)
                                                  (cons _body13371_
                                                        _vars13356_)
                                                  (if (memq _$e13374_
                                                            '(cons splice))
                                                      (_recur13353_
                                                       (cdr _body13371_)
                                                       (_recur13353_
                                                        (car _body13371_)
                                                        _vars13356_))
                                                      (if (memq _$e13374_
                                                                '(vector box))
                                                          (_recur13353_
                                                           _body13371_
                                                           _vars13356_)
                                                          _vars13356_)))))))
                                    (if (##pair? _e1335713364_)
                                        (let ((_hd1336113380_
                                               (##car _e1335713364_))
                                              (_tl1336213382_
                                               (##cdr _e1335713364_)))
                                          (let* ((_tag13385_ _hd1336113380_)
                                                 (_body13387_ _tl1336213382_))
                                            (_K1336013377_
                                             _body13387_
                                             _tag13385_)))
                                        (_E1335913368_))))))
                             (_make-body13345_
                              (lambda (_vars13347_)
                                (cons _K13338_
                                      (map (lambda (_mvar13349_)
                                             (assgetq (car _mvar13349_)
                                                      _vars13347_
                                                      _BUG13341_))
                                           _mvars13337_)))))
                      (_recur13342_
                       _hd13336_
                       '()
                       _target13335_
                       _E13339_
                       _make-body13345_))))
                 (_parse-clause13171_
                  (lambda (_hd13240_ _ids13241_)
                    (let _recur13243_ ((_e13245_ _hd13240_)
                                       (_vars13246_ '())
                                       (_depth13247_ '0))
                      (if (gx#identifier? _e13245_)
                          (if (gx#underscore? _e13245_)
                              (values '(any) _vars13246_)
                              (if (gx#ellipsis? _e13245_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Misplaced ellipsis"
                                   _stx13162_
                                   _hd13240_)
                                  (if (find (lambda (_id13249_)
                                              (gx#bound-identifier=?
                                               _e13245_
                                               _id13249_))
                                            _ids13241_)
                                      (values (cons 'id _e13245_) _vars13246_)
                                      (if (find (lambda (_var13251_)
                                                  (gx#bound-identifier=?
                                                   _e13245_
                                                   (car _var13251_)))
                                                _vars13246_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Duplicate pattern variable"
                                           _stx13162_
                                           _e13245_)
                                          (values (cons 'var _e13245_)
                                                  (cons (cons _e13245_
                                                              _depth13247_)
                                                        _vars13246_))))))
                          (if (gx#stx-pair? _e13245_)
                              (let* ((_e1325213259_ _e13245_)
                                     (_E1325413263_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _e1325213259_)))
                                     (_E1325313324_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1325213259_)
                                            (let ((_e1325513267_
                                                   (gx#syntax-e
                                                    _e1325213259_)))
                                              (let ((_hd1325613270_
                                                     (##car _e1325513267_))
                                                    (_tl1325713272_
                                                     (##cdr _e1325513267_)))
                                                (let* ((_hd13275_
                                                        _hd1325613270_)
                                                       (_rest13277_
                                                        _tl1325713272_))
                                                  (if '#t
                                                      (let* ((_make-pair13292_
                                                              (lambda (_tag13279_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd13280_
                               _tl13281_)
                        (let* ((_hd-depth13283_
                                (if (eq? _tag13279_ 'splice)
                                    (fx+ _depth13247_ '1)
                                    _depth13247_))
                               (_g14302_
                                (_recur13243_
                                 _hd13280_
                                 _vars13246_
                                 _hd-depth13283_)))
                          (begin
                            (let ((_g14303_ (values-count _g14302_)))
                              (if (not (fx= _g14303_ 2))
                                  (error "Context expects 2 values" _g14303_)))
                            (let ((_hd13285_ (values-ref _g14302_ 0))
                                  (_vars13286_ (values-ref _g14302_ 1)))
                              (let ((_g14304_
                                     (_recur13243_
                                      _tl13281_
                                      _vars13286_
                                      _depth13247_)))
                                (begin
                                  (let ((_g14305_ (values-count _g14304_)))
                                    (if (not (fx= _g14305_ 2))
                                        (error "Context expects 2 values"
                                               _g14305_)))
                                  (let ((_tl13288_ (values-ref _g14304_ 0))
                                        (_vars13289_ (values-ref _g14304_ 1)))
                                    (let ()
                                      (values (cons* _tag13279_
                                                     _hd13285_
                                                     _tl13288_)
                                              _vars13289_))))))))))
                     (_e1329313300_ _rest13277_)
                     (_E1329513304_
                      (lambda ()
                        (_make-pair13292_ 'cons _hd13275_ _rest13277_)))
                     (_E1329413320_
                      (lambda ()
                        (if (gx#stx-pair? _e1329313300_)
                            (let ((_e1329613308_ (gx#syntax-e _e1329313300_)))
                              (let ((_hd1329713311_ (##car _e1329613308_))
                                    (_tl1329813313_ (##cdr _e1329613308_)))
                                (let* ((_rest-hd13316_ _hd1329713311_)
                                       (_rest-tl13318_ _tl1329813313_))
                                  (if '#t
                                      (if (gx#ellipsis? _rest-hd13316_)
                                          (_make-pair13292_
                                           'splice
                                           _hd13275_
                                           _rest-tl13318_)
                                          (_make-pair13292_
                                           'cons
                                           _hd13275_
                                           _rest13277_))
                                      (_E1329513304_)))))
                            (_E1329513304_)))))
                (_E1329413320_))
              (_E1325413263_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1325413263_)))))
                                (_E1325313324_))
                              (if (gx#stx-null? _e13245_)
                                  (values '(null) _vars13246_)
                                  (if (gx#stx-vector? _e13245_)
                                      (let ((_g14306_
                                             (_recur13243_
                                              (vector->list
                                               (gx#syntax-e _e13245_))
                                              _vars13246_
                                              _depth13247_)))
                                        (begin
                                          (let ((_g14307_
                                                 (values-count _g14306_)))
                                            (if (not (fx= _g14307_ 2))
                                                (error "Context expects 2 values"
                                                       _g14307_)))
                                          (let ((_e13328_
                                                 (values-ref _g14306_ 0))
                                                (_vars13329_
                                                 (values-ref _g14306_ 1)))
                                            (values (cons 'vector _e13328_)
                                                    _vars13329_))))
                                      (if (gx#stx-box? _e13245_)
                                          (let ((_g14308_
                                                 (_recur13243_
                                                  (unbox (gx#syntax-e
                                                          _e13245_))
                                                  _vars13246_
                                                  _depth13247_)))
                                            (begin
                                              (let ((_g14309_
                                                     (values-count _g14308_)))
                                                (if (not (fx= _g14309_ 2))
                                                    (error "Context expects 2 values"
                                                           _g14309_)))
                                              (let ((_e13331_
                                                     (values-ref _g14308_ 0))
                                                    (_vars13332_
                                                     (values-ref _g14308_ 1)))
                                                (values (cons 'box _e13331_)
                                                        _vars13332_))))
                                          (if (gx#stx-datum? _e13245_)
                                              (values (cons 'datum
                                                            (gx#stx-e
                                                             _e13245_))
                                                      _vars13246_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad pattern"
                                               _stx13162_
                                               _e13245_)))))))))))
          (let* ((_e1317213185_ _stx13162_)
                 (_E1317413189_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1317213185_)))
                 (_E1317313236_
                  (lambda ()
                    (if (gx#stx-pair? _e1317213185_)
                        (let ((_e1317513193_ (gx#syntax-e _e1317213185_)))
                          (let ((_hd1317613196_ (##car _e1317513193_))
                                (_tl1317713198_ (##cdr _e1317513193_)))
                            (if (gx#stx-pair? _tl1317713198_)
                                (let ((_e1317813201_
                                       (gx#syntax-e _tl1317713198_)))
                                  (let ((_hd1317913204_ (##car _e1317813201_))
                                        (_tl1318013206_ (##cdr _e1317813201_)))
                                    (let ((_expr13209_ _hd1317913204_))
                                      (if (gx#stx-pair? _tl1318013206_)
                                          (let ((_e1318113211_
                                                 (gx#syntax-e _tl1318013206_)))
                                            (let ((_hd1318213214_
                                                   (##car _e1318113211_))
                                                  (_tl1318313216_
                                                   (##cdr _e1318113211_)))
                                              (let* ((_ids13219_
                                                      _hd1318213214_)
                                                     (_clauses13221_
                                                      _tl1318313216_))
                                                (if '#t
                                                    (if (not (gx#identifier-list?
                                                              _ids13219_))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad template identifier list"
                                                         _stx13162_
                                                         _ids13219_)
                                                        (if (not (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _clauses13221_))
                    (gx#raise-syntax-error '#f '"Bad syntax" _stx13162_)
                    (let* ((_ids13223_ (gx#syntax->list _ids13219_))
                           (_clauses13225_ (gx#syntax->list _clauses13221_))
                           (_clause-ids13227_ (gx#gentemps _clauses13225_))
                           (_E13229_ (gx#genident__0))
                           (_target13231_ (gx#genident__0))
                           (_first13233_
                            (if (null? _clauses13225_)
                                _E13229_
                                (car _clause-ids13227_))))
                      (gx#stx-wrap-source
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _E13229_ '())
                                    (cons (gx#core-list
                                           'lambda%
                                           (cons _target13231_ '())
                                           (gx#core-list
                                            'raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _target13231_))
                                          '()))
                              '())
                        (_generate-body13168_
                         (_generate-bindings13167_
                          _target13231_
                          _ids13223_
                          _clauses13225_
                          _clause-ids13227_
                          _E13229_)
                         (cons _first13233_ (cons _expr13209_ '()))))
                       (gx#stx-source _stx13162_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1317413189_)))))
                                          (_E1317413189_)))))
                                (_E1317413189_))))
                        (_E1317413189_)))))
            (_E1317313236_)))))
    (begin
      (define gx#macro-expand-syntax-case__0
        (lambda (_stx13864_)
          (let* ((_identifier=?13866_ 'free-identifier=?)
                 (_unwrap-e13868_ 'syntax-e)
                 (_wrap-e13870_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda13160
             _stx13864_
             _identifier=?13866_
             _unwrap-e13868_
             _wrap-e13870_))))
      (define gx#macro-expand-syntax-case__1
        (lambda (_stx13872_ _identifier=?13873_)
          (let* ((_unwrap-e13875_ 'syntax-e) (_wrap-e13877_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda13160
             _stx13872_
             _identifier=?13873_
             _unwrap-e13875_
             _wrap-e13877_))))
      (define gx#macro-expand-syntax-case__2
        (lambda (_stx13879_ _identifier=?13880_ _unwrap-e13881_)
          (let ((_wrap-e13883_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda13160
             _stx13879_
             _identifier=?13880_
             _unwrap-e13881_
             _wrap-e13883_))))
      (define gx#macro-expand-syntax-case
        (lambda _g14311_
          (let ((_g14310_ (length _g14311_)))
            (cond ((fx= _g14310_ 1)
                   (apply gx#macro-expand-syntax-case__0 _g14311_))
                  ((fx= _g14310_ 2)
                   (apply gx#macro-expand-syntax-case__1 _g14311_))
                  ((fx= _g14310_ 3)
                   (apply gx#macro-expand-syntax-case__2 _g14311_))
                  ((fx= _g14310_ 4)
                   (apply gx#macro-expand-syntax-case__opt-lambda13160
                          _g14311_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-syntax-case
                    _g14311_))))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx13159_)
      (if (gx#identifier? _stx13159_)
          (##structure-instance-of?
           (gx#syntax-local-e__opt-lambda4063 _stx13159_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd13117_ . _rest13118_)
      (let ((_len13120_ (length _hd13117_)))
        (let _lp13122_ ((_rest13124_ _rest13118_))
          (let* ((_rest1312513133_ _rest13124_)
                 (_E1312813137_
                  (lambda () (error '"No clause matching" _rest1312513133_)))
                 (_else1312713141_ (lambda () '#!void))
                 (_K1312913147_
                  (lambda (_rest13144_ _hd13145_)
                    (if (fx= _len13120_ (length _hd13145_))
                        (_lp13122_ _rest13144_)
                        (gx#raise-syntax-error
                         '#f
                         '"Splice length mismatch"
                         _hd13145_)))))
            (if (##pair? _rest1312513133_)
                (let ((_hd1313013150_ (##car _rest1312513133_))
                      (_tl1313113152_ (##cdr _rest1312513133_)))
                  (let* ((_hd13155_ _hd1313013150_)
                         (_rest13157_ _tl1313113152_))
                    (_K1312913147_ _rest13157_ _hd13155_)))
                (_else1312713141_)))))))
  (define gx#syntax-split-splice
    (lambda (_stx13075_ _n13076_)
      (let _lp13078_ ((_rest13080_ _stx13075_) (_r13081_ '()))
        (if (gx#stx-pair? _rest13080_)
            (let* ((_g1308213089_ (gx#syntax-e _rest13080_))
                   (_E1308413093_
                    (lambda () (error '"No clause matching" _g1308213089_)))
                   (_K1308513099_
                    (lambda (_rest13096_ _hd13097_)
                      (_lp13078_ _rest13096_ (cons _hd13097_ _r13081_)))))
              (if (##pair? _g1308213089_)
                  (let ((_hd1308613102_ (##car _g1308213089_))
                        (_tl1308713104_ (##cdr _g1308213089_)))
                    (let* ((_hd13107_ _hd1308613102_)
                           (_rest13109_ _tl1308713104_))
                      (_K1308513099_ _rest13109_ _hd13107_)))
                  (_E1308413093_)))
            (let _lp13111_ ((_n13113_ _n13076_)
                            (_l13114_ _r13081_)
                            (_r13115_ _rest13080_))
              (if (null? _l13114_)
                  (values _l13114_ _r13115_)
                  (if (fxpositive? _n13113_)
                      (_lp13111_
                       (fx- _n13113_ '1)
                       (cdr _l13114_)
                       (cons (car _l13114_) _r13115_))
                      (values (reverse _l13114_) _r13115_)))))))))
