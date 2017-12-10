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
    (lambda _$args14341_
      (apply make-struct-instance gx#syntax-pattern::t _$args14341_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self14338_ _stx14339_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx14339_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx13947_)
      (letrec ((_generate13949_
                (lambda (_e14176_)
                  (letrec ((_BUG14178_
                            (lambda (_q14336_)
                              (error '"BUG: syntax; generate"
                                     _stx13947_
                                     _e14176_
                                     _q14336_)))
                           (_local-pattern-e14179_
                            (lambda (_pat14334_)
                              (gx#syntax-local-rewrap
                               (##structure-ref
                                _pat14334_
                                '2
                                gx#syntax-pattern::t
                                '#f))))
                           (_getvar14180_
                            (lambda (_q14331_ _vars14332_)
                              (assgetq _q14331_ _vars14332_ _BUG14178_)))
                           (_getarg14181_
                            (lambda (_arg14297_ _vars14298_)
                              (let* ((_arg1429914306_ _arg14297_)
                                     (_E1430114310_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _arg1429914306_)))
                                     (_K1430214319_
                                      (lambda (_e14313_ _tag14314_)
                                        (let ((_$e14316_ _tag14314_))
                                          (if (eq? _$e14316_ 'ref)
                                              (_getvar14180_
                                               _e14313_
                                               _vars14298_)
                                              (if (eq? _$e14316_ 'pattern)
                                                  (_local-pattern-e14179_
                                                   _e14313_)
                                                  (_BUG14178_ _arg14297_)))))))
                                (if (##pair? _arg1429914306_)
                                    (let ((_hd1430314322_
                                           (##car _arg1429914306_))
                                          (_tl1430414324_
                                           (##cdr _arg1429914306_)))
                                      (let* ((_tag14327_ _hd1430314322_)
                                             (_e14329_ _tl1430414324_))
                                        (_K1430214319_ _e14329_ _tag14327_)))
                                    (_E1430114310_))))))
                    (let _recur14183_ ((_e14185_ _e14176_) (_vars14186_ '()))
                      (let* ((_e1418714194_ _e14185_)
                             (_E1418914198_
                              (lambda ()
                                (error '"No clause matching" _e1418714194_)))
                             (_K1419014285_
                              (lambda (_body14201_ _tag14202_)
                                (let ((_$e14204_ _tag14202_))
                                  (if (eq? _$e14204_ 'datum)
                                      (gx#core-list 'quote _body14201_)
                                      (if (eq? _$e14204_ 'term)
                                          (gx#core-list
                                           'datum->syntax
                                           '#f
                                           (gx#core-list 'quote _body14201_))
                                          (if (eq? _$e14204_ 'pattern)
                                              (_local-pattern-e14179_
                                               _body14201_)
                                              (if (eq? _$e14204_ 'ref)
                                                  (_getvar14180_
                                                   _body14201_
                                                   _vars14186_)
                                                  (if (eq? _$e14204_ 'cons)
                                                      (gx#core-list
                                                       'cons
                                                       (_recur14183_
                                                        (car _body14201_)
                                                        _vars14186_)
                                                       (_recur14183_
                                                        (cdr _body14201_)
                                                        _vars14186_))
                                                      (if (eq? _$e14204_
                                                               'vector)
                                                          (gx#core-list
                                                           'list->vector
                                                           (_recur14183_
                                                            _body14201_
                                                            _vars14186_))
                                                          (if (eq? _$e14204_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'box)
                      (gx#core-list
                       'box
                       (_recur14183_ _body14201_ _vars14186_))
                      (if (eq? _$e14204_ 'splice)
                          (let* ((_body1420614217_ _body14201_)
                                 (_E1420814221_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _body1420614217_)))
                                 (_K1420914259_
                                  (lambda (_args14224_
                                           _iv14225_
                                           _hd14226_
                                           _depth14227_)
                                    (let* ((_targets14233_
                                            (map (lambda (_g1422814230_)
                                                   (_getarg14181_
                                                    _g1422814230_
                                                    _vars14186_))
                                                 _args14224_))
                                           (_fold-in14235_
                                            (gx#gentemps _args14224_))
                                           (_fold-out14237_ (gx#genident__0))
                                           (_lambda-args14239_
                                            (foldr1 cons
                                                    (cons _fold-out14237_ '())
                                                    _fold-in14235_))
                                           (_lambda-body14256_
                                            (if (fx> _depth14227_ '1)
                                                (let ((_r-args14247_
                                                       (map (lambda (_arg14241_)
                                                              (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cdr _arg14241_)))
                    _args14224_))
              (_r-vars14248_
               (foldr (lambda (_arg14243_ _var14244_ _r14245_)
                        (cons (cons (cdr _arg14243_) _var14244_) _r14245_))
                      _vars14186_
                      _args14224_
                      _fold-in14235_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur14183_
                                                   (cons* 'splice
                                                          (fx- _depth14227_ '1)
                                                          _hd14226_
                                                          (cons 'var
                                                                _fold-out14237_)
                                                          _r-args14247_)
                                                   _r-vars14248_))
                                                (let ((_hd-vars14254_
                                                       (foldr (lambda (_arg14250_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _var14251_
                               _r14252_)
                        (cons (cons (cdr _arg14250_) _var14251_) _r14252_))
                      _vars14186_
                      _args14224_
                      _fold-in14235_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#core-list
                                                   'cons
                                                   (_recur14183_
                                                    _hd14226_
                                                    _hd-vars14254_)
                                                   _fold-out14237_)))))
                                      (gx#core-list
                                       'begin
                                       (if (fx> (length _targets14233_) '1)
                                           (gx#core-cons*
                                            'syntax-check-splice-targets
                                            _targets14233_)
                                           '#!void)
                                       (gx#core-cons*
                                        'foldr
                                        (gx#core-list
                                         'lambda%
                                         _lambda-args14239_
                                         _lambda-body14256_)
                                        (_recur14183_ _iv14225_ _vars14186_)
                                        _targets14233_))))))
                            (if (##pair? _body1420614217_)
                                (let ((_hd1421014262_ (##car _body1420614217_))
                                      (_tl1421114264_
                                       (##cdr _body1420614217_)))
                                  (let ((_depth14267_ _hd1421014262_))
                                    (if (##pair? _tl1421114264_)
                                        (let ((_hd1421214269_
                                               (##car _tl1421114264_))
                                              (_tl1421314271_
                                               (##cdr _tl1421114264_)))
                                          (let ((_hd14274_ _hd1421214269_))
                                            (if (##pair? _tl1421314271_)
                                                (let ((_hd1421414276_
                                                       (##car _tl1421314271_))
                                                      (_tl1421514278_
                                                       (##cdr _tl1421314271_)))
                                                  (let* ((_iv14281_
                                                          _hd1421414276_)
                                                         (_args14283_
                                                          _tl1421514278_))
                                                    (_K1420914259_
                                                     _args14283_
                                                     _iv14281_
                                                     _hd14274_
                                                     _depth14267_)))
                                                (_E1420814221_))))
                                        (_E1420814221_))))
                                (_E1420814221_)))
                          (if (eq? _$e14204_ 'var)
                              _body14201_
                              (_BUG14178_ _e14185_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (if (##pair? _e1418714194_)
                            (let ((_hd1419114288_ (##car _e1418714194_))
                                  (_tl1419214290_ (##cdr _e1418714194_)))
                              (let* ((_tag14293_ _hd1419114288_)
                                     (_body14295_ _tl1419214290_))
                                (_K1419014285_ _body14295_ _tag14293_)))
                            (_E1418914198_)))))))
               (_parse13950_
                (lambda (_e13991_)
                  (letrec ((_make-cons13993_
                            (lambda (_hd14168_ _tl14169_)
                              (let ((_g14343_ _hd14168_) (_g14345_ _tl14169_))
                                (begin
                                  (let ((_g14344_ (values-count _g14343_)))
                                    (if (not (fx= _g14344_ 2))
                                        (error "Context expects 2 values"
                                               _g14344_)))
                                  (let ((_g14346_ (values-count _g14345_)))
                                    (if (not (fx= _g14346_ 2))
                                        (error "Context expects 2 values"
                                               _g14346_)))
                                  (let ((_hd-e14171_ (values-ref _g14343_ 0))
                                        (_hd-vars14172_
                                         (values-ref _g14343_ 1)))
                                    (let ((_tl-e14173_ (values-ref _g14345_ 0))
                                          (_tl-vars14174_
                                           (values-ref _g14345_ 1)))
                                      (values (cons* 'cons
                                                     _hd-e14171_
                                                     _tl-e14173_)
                                              (append _hd-vars14172_
                                                      _tl-vars14174_))))))))
                           (_make-splice13994_
                            (lambda (_where14107_
                                     _depth14108_
                                     _hd14109_
                                     _tl14110_)
                              (let ((_g14347_ _hd14109_) (_g14349_ _tl14110_))
                                (begin
                                  (let ((_g14348_ (values-count _g14347_)))
                                    (if (not (fx= _g14348_ 2))
                                        (error "Context expects 2 values"
                                               _g14348_)))
                                  (let ((_g14350_ (values-count _g14349_)))
                                    (if (not (fx= _g14350_ 2))
                                        (error "Context expects 2 values"
                                               _g14350_)))
                                  (let ((_hd-e14112_ (values-ref _g14347_ 0))
                                        (_hd-vars14113_
                                         (values-ref _g14347_ 1)))
                                    (let ((_tl-e14114_ (values-ref _g14349_ 0))
                                          (_tl-vars14115_
                                           (values-ref _g14349_ 1)))
                                      (let _lp14117_ ((_rest14119_
                                                       _hd-vars14113_)
                                                      (_targets14120_ '())
                                                      (_vars14121_
                                                       _tl-vars14115_))
                                        (let* ((_rest1412214132_ _rest14119_)
                                               (_E1412514136_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _rest1412214132_)))
                                               (_else1412414140_
                                                (lambda ()
                                                  (if (null? _targets14120_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Misplaced ellipsis"
                                                       _stx13947_
                                                       _where14107_)
                                                      (values (cons* 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _depth14108_
                             _hd-e14112_
                             _tl-e14114_
                             _targets14120_)
                      _vars14121_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_K1412614149_
                                                (lambda (_rest14143_
                                                         _hd-pat14144_
                                                         _hd-depth*14145_)
                                                  (let ((_hd-depth14147_
                                                         (fx- _hd-depth*14145_
                                                              _depth14108_)))
                                                    (if (fxpositive?
                                                         _hd-depth14147_)
                                                        (_lp14117_
                                                         _rest14143_
                                                         (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd-pat14144_)
                       _targets14120_)
                 (cons (cons _hd-depth14147_ _hd-pat14144_) _vars14121_))
                (if (fxzero? _hd-depth14147_)
                    (_lp14117_
                     _rest14143_
                     (cons (cons 'pattern _hd-pat14144_) _targets14120_)
                     _vars14121_)
                    (gx#raise-syntax-error
                     '#f
                     '"Too many ellipses"
                     _stx13947_
                     _where14107_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1412214132_)
                                              (let ((_hd1412714152_
                                                     (##car _rest1412214132_))
                                                    (_tl1412814154_
                                                     (##cdr _rest1412214132_)))
                                                (if (##pair? _hd1412714152_)
                                                    (let ((_hd1412914157_
                                                           (##car _hd1412714152_))
                                                          (_tl1413014159_
                                                           (##cdr _hd1412714152_)))
                                                      (let* ((_hd-depth*14162_
                                                              _hd1412914157_)
                                                             (_hd-pat14164_
                                                              _tl1413014159_)
                                                             (_rest14166_
                                                              _tl1412814154_))
                                                        (_K1412614149_
                                                         _rest14166_
                                                         _hd-pat14164_
                                                         _hd-depth*14162_)))
                                                    (_else1412414140_)))
                                              (_else1412414140_))))))))))
                           (_recur13995_
                            (lambda (_e14000_ _is-e?14001_)
                              (if (_is-e?14001_ _e14000_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Mislpaced ellipsis"
                                   _stx13947_)
                                  (if (gx#syntax-local-pattern? _e14000_)
                                      (let* ((_pat14003_
                                              (gx#syntax-local-e__0 _e14000_))
                                             (_depth14005_
                                              (##structure-ref
                                               _pat14003_
                                               '3
                                               gx#syntax-pattern::t
                                               '#f)))
                                        (if (fxpositive? _depth14005_)
                                            (values (cons 'ref _pat14003_)
                                                    (cons (cons _depth14005_
                                                                _pat14003_)
                                                          '()))
                                            (values (cons 'pattern _pat14003_)
                                                    '())))
                                      (if (gx#identifier? _e14000_)
                                          (values (cons 'term _e14000_) '())
                                          (if (gx#stx-pair? _e14000_)
                                              (let* ((_e1400714014_ _e14000_)
                                                     (_E1400914018_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _e1400714014_)))
                                                     (_E1400814097_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e1400714014_)
                                                            (let ((_e1401014022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e1400714014_)))
                      (let ((_hd1401114025_ (##car _e1401014022_))
                            (_tl1401214027_ (##cdr _e1401014022_)))
                        (let* ((_hd14030_ _hd1401114025_)
                               (_rest14032_ _tl1401214027_))
                          (if '#t
                              (if (_is-e?14001_ _hd14030_)
                                  (let* ((_e1403314040_ _rest14032_)
                                         (_E1403514044_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _stx13947_
                                             _e14000_)))
                                         (_E1403414058_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1403314040_)
                                                (let ((_e1403614048_
                                                       (gx#syntax-e
                                                        _e1403314040_)))
                                                  (let ((_hd1403714051_
                                                         (##car _e1403614048_))
                                                        (_tl1403814053_
                                                         (##cdr _e1403614048_)))
                                                    (let ((_rest14056_
                                                           _hd1403714051_))
                                                      (if (gx#stx-null?
                                                           _tl1403814053_)
                                                          (if '#t
                                                              (_recur13995_
                                                               _rest14056_
                                                               false)
                                                              (_E1403514044_))
                                                          (_E1403514044_)))))
                                                (_E1403514044_)))))
                                    (_E1403414058_))
                                  (let _lp14062_ ((_rest14064_ _rest14032_)
                                                  (_depth14065_ '0))
                                    (let* ((_e1406614073_ _rest14064_)
                                           (_E1406814077_
                                            (lambda ()
                                              (if (fxpositive? _depth14065_)
                                                  (_make-splice13994_
                                                   _e14000_
                                                   _depth14065_
                                                   (_recur13995_
                                                    _hd14030_
                                                    _is-e?14001_)
                                                   (_recur13995_
                                                    _rest14064_
                                                    _is-e?14001_))
                                                  (_make-cons13993_
                                                   (_recur13995_
                                                    _hd14030_
                                                    _is-e?14001_)
                                                   (_recur13995_
                                                    _rest14064_
                                                    _is-e?14001_)))))
                                           (_E1406714093_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1406614073_)
                                                  (let ((_e1406914081_
                                                         (gx#syntax-e
                                                          _e1406614073_)))
                                                    (let ((_hd1407014084_
                                                           (##car _e1406914081_))
                                                          (_tl1407114086_
                                                           (##cdr _e1406914081_)))
                                                      (let* ((_rest-hd14089_
                                                              _hd1407014084_)
                                                             (_rest-tl14091_
                                                              _tl1407114086_))
                                                        (if '#t
                                                            (if (_is-e?14001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rest-hd14089_)
                        (_lp14062_ _rest-tl14091_ (fx+ _depth14065_ '1))
                        (if (fxpositive? _depth14065_)
                            (_make-splice13994_
                             _e14000_
                             _depth14065_
                             (_recur13995_ _hd14030_ _is-e?14001_)
                             (_recur13995_ _rest14064_ _is-e?14001_))
                            (_make-cons13993_
                             (_recur13995_ _hd14030_ _is-e?14001_)
                             (_recur13995_ _rest14064_ _is-e?14001_))))
                    (_E1406814077_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1406814077_)))))
                                      (_E1406714093_))))
                              (_E1400914018_)))))
                    (_E1400914018_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1400814097_))
                                              (if (gx#stx-vector? _e14000_)
                                                  (let ((_g14351_
                                                         (_recur13995_
                                                          (vector->list
                                                           (gx#stx-unwrap__0
                                                            _e14000_))
                                                          _is-e?14001_)))
                                                    (begin
                                                      (let ((_g14352_
                                                             (values-count
                                                              _g14351_)))
                                                        (if (not (fx= _g14352_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g14352_)))
              (let ((_e14101_ (values-ref _g14351_ 0))
                    (_vars14102_ (values-ref _g14351_ 1)))
                (values (cons 'vector _e14101_) _vars14102_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e14000_)
                                                      (let ((_g14353_
                                                             (_recur13995_
                                                              (unbox (gx#stx-unwrap__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e14000_))
                      _is-e?14001_)))
                (begin
                  (let ((_g14354_ (values-count _g14353_)))
                    (if (not (fx= _g14354_ 2))
                        (error "Context expects 2 values" _g14354_)))
                  (let ((_e14104_ (values-ref _g14353_ 0))
                        (_vars14105_ (values-ref _g14353_ 1)))
                    (values (cons 'box _e14104_) _vars14105_))))
              (values (cons 'datum _e14000_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    (let ((_g14355_ (_recur13995_ _e13991_ gx#ellipsis?)))
                      (begin
                        (let ((_g14356_ (values-count _g14355_)))
                          (if (not (fx= _g14356_ 2))
                              (error "Context expects 2 values" _g14356_)))
                        (let ((_tree13997_ (values-ref _g14355_ 0))
                              (_vars13998_ (values-ref _g14355_ 1)))
                          (if (null? _vars13998_)
                              _tree13997_
                              (gx#raise-syntax-error
                               '#f
                               '"Missing ellipsis"
                               _stx13947_
                               _vars13998_)))))))))
        (let* ((_e1395113961_ _stx13947_)
               (_E1395313965_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _stx13947_)))
               (_E1395213987_
                (lambda ()
                  (if (gx#stx-pair? _e1395113961_)
                      (let ((_e1395413969_ (gx#syntax-e _e1395113961_)))
                        (let ((_hd1395513972_ (##car _e1395413969_))
                              (_tl1395613974_ (##cdr _e1395413969_)))
                          (if (gx#stx-pair? _tl1395613974_)
                              (let ((_e1395713977_
                                     (gx#syntax-e _tl1395613974_)))
                                (let ((_hd1395813980_ (##car _e1395713977_))
                                      (_tl1395913982_ (##cdr _e1395713977_)))
                                  (let ((_form13985_ _hd1395813980_))
                                    (if (gx#stx-null? _tl1395913982_)
                                        (if '#t
                                            (gx#stx-wrap-source
                                             (_generate13949_
                                              (_parse13950_ _form13985_))
                                             (gx#stx-source _stx13947_))
                                            (_E1395313965_))
                                        (_E1395313965_)))))
                              (_E1395313965_))))
                      (_E1395313965_)))))
          (_E1395213987_)))))
  (begin
    (define gx#macro-expand-syntax-case__opt-lambda13217
      (lambda (_stx13219_ _identifier=?13220_ _unwrap-e13221_ _wrap-e13222_)
        (letrec ((_generate-bindings13224_
                  (lambda (_target13809_
                           _ids13810_
                           _clauses13811_
                           _clause-ids13812_
                           _E13813_)
                    (letrec ((_generate113815_
                              (lambda (_clause13914_ _clause-id13915_ _E13916_)
                                (cons (cons _clause-id13915_ '())
                                      (cons (gx#core-list
                                             'lambda%
                                             (cons _target13809_ '())
                                             (_generate-clause13226_
                                              _target13809_
                                              _ids13810_
                                              _clause13914_
                                              _E13916_))
                                            '())))))
                      (let _lp13817_ ((_rest13819_ _clauses13811_)
                                      (_rest-ids13820_ _clause-ids13812_)
                                      (_bindings13821_ '()))
                        (let* ((_rest1382213830_ _rest13819_)
                               (_E1382513834_
                                (lambda ()
                                  (error '"No clause matching"
                                         _rest1382213830_)))
                               (_else1382413838_ (lambda () _bindings13821_))
                               (_K1382613902_
                                (lambda (_rest13841_ _clause13842_)
                                  (let* ((_rest-ids1384313850_ _rest-ids13820_)
                                         (_E1384513854_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids1384313850_)))
                                         (_K1384613890_
                                          (lambda (_rest-ids13857_
                                                   _clause-id13858_)
                                            (let* ((_rest-ids1385913867_
                                                    _rest-ids13857_)
                                                   (_E1386213871_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _rest-ids1385913867_)))
                                                   (_else1386113875_
                                                    (lambda ()
                                                      (cons (_generate113815_
                                                             _clause13842_
                                                             _clause-id13858_
                                                             _E13813_)
                                                            _bindings13821_)))
                                                   (_K1386313880_
                                                    (lambda (_next-clause-id13878_)
                                                      (_lp13817_
                                                       _rest13841_
                                                       _rest-ids13857_
                                                       (cons (_generate113815_
                                                              _clause13842_
                                                              _clause-id13858_
                                                              _next-clause-id13878_)
                                                             _bindings13821_)))))
                                              (if (##pair? _rest-ids1385913867_)
                                                  (let ((_hd1386413883_
                                                         (##car _rest-ids1385913867_))
                                                        (_tl1386513885_
                                                         (##cdr _rest-ids1385913867_)))
                                                    (let ((_next-clause-id13888_
                                                           _hd1386413883_))
                                                      (_K1386313880_
                                                       _next-clause-id13888_)))
                                                  (_else1386113875_))))))
                                    (if (##pair? _rest-ids1384313850_)
                                        (let ((_hd1384713893_
                                               (##car _rest-ids1384313850_))
                                              (_tl1384813895_
                                               (##cdr _rest-ids1384313850_)))
                                          (let* ((_clause-id13898_
                                                  _hd1384713893_)
                                                 (_rest-ids13900_
                                                  _tl1384813895_))
                                            (_K1384613890_
                                             _rest-ids13900_
                                             _clause-id13898_)))
                                        (_E1384513854_))))))
                          (if (##pair? _rest1382213830_)
                              (let ((_hd1382713905_ (##car _rest1382213830_))
                                    (_tl1382813907_ (##cdr _rest1382213830_)))
                                (let* ((_clause13910_ _hd1382713905_)
                                       (_rest13912_ _tl1382813907_))
                                  (_K1382613902_ _rest13912_ _clause13910_)))
                              (_else1382413838_)))))))
                 (_generate-body13225_
                  (lambda (_bindings13769_ _body13770_)
                    (let _recur13772_ ((_rest13774_ _bindings13769_))
                      (let* ((_rest1377513783_ _rest13774_)
                             (_E1377813787_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1377513783_)))
                             (_else1377713791_ (lambda () _body13770_))
                             (_K1377913797_
                              (lambda (_rest13794_ _hd13795_)
                                (gx#core-list
                                 'let-values
                                 (cons _hd13795_ '())
                                 (_recur13772_ _rest13794_)))))
                        (if (##pair? _rest1377513783_)
                            (let ((_hd1378013800_ (##car _rest1377513783_))
                                  (_tl1378113802_ (##cdr _rest1377513783_)))
                              (let* ((_hd13805_ _hd1378013800_)
                                     (_rest13807_ _tl1378113802_))
                                (_K1377913797_ _rest13807_ _hd13805_)))
                            (_else1377713791_))))))
                 (_generate-clause13226_
                  (lambda (_target13632_ _ids13633_ _clause13634_ _E13635_)
                    (letrec ((_generate113637_
                              (lambda (_hd13724_ _fender13725_ _body13726_)
                                (let ((_g14357_
                                       (_parse-clause13228_
                                        _hd13724_
                                        _ids13633_)))
                                  (begin
                                    (let ((_g14358_ (values-count _g14357_)))
                                      (if (not (fx= _g14358_ 2))
                                          (error "Context expects 2 values"
                                                 _g14358_)))
                                    (let ((_e13728_ (values-ref _g14357_ 0))
                                          (_mvars13729_
                                           (values-ref _g14357_ 1)))
                                      (let* ((_pvars13731_
                                              (map gx#syntax-local-rewrap
                                                   (gx#gentemps _mvars13729_)))
                                             (_E13733_
                                              (cons _E13635_
                                                    (cons _target13632_ '())))
                                             (_K13766_
                                              (gx#core-list
                                               'lambda%
                                               _pvars13731_
                                               (gx#core-list
                                                'let-syntax
                                                (map (lambda (_mvar13735_
                                                              _pvar13736_)
                                                       (let* ((_mvar1373713744_
                                                               _mvar13735_)
                                                              (_E1373913748_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (error '"No clause matching" _mvar1373713744_)))
                      (_K1374013754_
                       (lambda (_depth13751_ _id13752_)
                         (cons _id13752_
                               (cons (gx#core-list
                                      'make-syntax-pattern
                                      (gx#core-list 'quote _id13752_)
                                      (gx#core-list 'quote _pvar13736_)
                                      _depth13751_)
                                     '())))))
                 (if (##pair? _mvar1373713744_)
                     (let ((_hd1374113757_ (##car _mvar1373713744_))
                           (_tl1374213759_ (##cdr _mvar1373713744_)))
                       (let* ((_id13762_ _hd1374113757_)
                              (_depth13764_ _tl1374213759_))
                         (_K1374013754_ _depth13764_ _id13762_)))
                     (_E1373913748_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _mvars13729_
                                                     _pvars13731_)
                                                (if (eq? _fender13725_ '#t)
                                                    _body13726_
                                                    (gx#core-list
                                                     'if
                                                     _fender13725_
                                                     _body13726_
                                                     _E13733_))))))
                                        (_generate-match13227_
                                         _hd13724_
                                         _target13632_
                                         _e13728_
                                         _mvars13729_
                                         _K13766_
                                         _E13733_))))))))
                      (let* ((_e1363813658_ _clause13634_)
                             (_E1364713662_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _e1363813658_)))
                             (_E1364013696_
                              (lambda ()
                                (if (gx#stx-pair? _e1363813658_)
                                    (let ((_e1364813666_
                                           (gx#syntax-e _e1363813658_)))
                                      (let ((_hd1364913669_
                                             (##car _e1364813666_))
                                            (_tl1365013671_
                                             (##cdr _e1364813666_)))
                                        (let ((_hd13674_ _hd1364913669_))
                                          (if (gx#stx-pair? _tl1365013671_)
                                              (let ((_e1365113676_
                                                     (gx#syntax-e
                                                      _tl1365013671_)))
                                                (let ((_hd1365213679_
                                                       (##car _e1365113676_))
                                                      (_tl1365313681_
                                                       (##cdr _e1365113676_)))
                                                  (let ((_fender13684_
                                                         _hd1365213679_))
                                                    (if (gx#stx-pair?
                                                         _tl1365313681_)
                                                        (let ((_e1365413686_
                                                               (gx#syntax-e
                                                                _tl1365313681_)))
                                                          (let ((_hd1365513689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1365413686_))
                        (_tl1365613691_ (##cdr _e1365413686_)))
                    (let ((_body13694_ _hd1365513689_))
                      (if (gx#stx-null? _tl1365613691_)
                          (if '#t
                              (_generate113637_
                               _hd13674_
                               _fender13684_
                               _body13694_)
                              (_E1364713662_))
                          (_E1364713662_)))))
                (_E1364713662_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1364713662_)))))
                                    (_E1364713662_))))
                             (_E1363913720_
                              (lambda ()
                                (if (gx#stx-pair? _e1363813658_)
                                    (let ((_e1364113700_
                                           (gx#syntax-e _e1363813658_)))
                                      (let ((_hd1364213703_
                                             (##car _e1364113700_))
                                            (_tl1364313705_
                                             (##cdr _e1364113700_)))
                                        (let ((_hd13708_ _hd1364213703_))
                                          (if (gx#stx-pair? _tl1364313705_)
                                              (let ((_e1364413710_
                                                     (gx#syntax-e
                                                      _tl1364313705_)))
                                                (let ((_hd1364513713_
                                                       (##car _e1364413710_))
                                                      (_tl1364613715_
                                                       (##cdr _e1364413710_)))
                                                  (let ((_body13718_
                                                         _hd1364513713_))
                                                    (if (gx#stx-null?
                                                         _tl1364613715_)
                                                        (if '#t
                                                            (_generate113637_
                                                             _hd13708_
                                                             '#t
                                                             _body13718_)
                                                            (_E1364013696_))
                                                        (_E1364013696_)))))
                                              (_E1364013696_)))))
                                    (_E1364013696_)))))
                        (_E1363913720_)))))
                 (_generate-match13227_
                  (lambda (_where13391_
                           _target13392_
                           _hd13393_
                           _mvars13394_
                           _K13395_
                           _E13396_)
                    (letrec ((_BUG13398_
                              (lambda (_q13630_)
                                (error '"BUG: syntax-case; generate"
                                       _stx13219_
                                       _hd13393_
                                       _q13630_)))
                             (_recur13399_
                              (lambda (_e13484_
                                       _vars13485_
                                       _target13486_
                                       _E13487_
                                       _k13488_)
                                (let* ((_e1348913496_ _e13484_)
                                       (_E1349113500_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e1348913496_)))
                                       (_K1349213618_
                                        (lambda (_body13503_ _tag13504_)
                                          (let ((_$e13506_ _tag13504_))
                                            (if (eq? _$e13506_ 'any)
                                                (_k13488_ _vars13485_)
                                                (if (eq? _$e13506_ 'id)
                                                    (gx#core-list
                                                     'if
                                                     (gx#core-list
                                                      'identifier?
                                                      _target13486_)
                                                     (gx#core-list
                                                      'if
                                                      (gx#core-list
                                                       _identifier=?13220_
                                                       (gx#core-list
                                                        _wrap-e13222_
                                                        _body13503_)
                                                       _target13486_)
                                                      (_k13488_ _vars13485_)
                                                      _E13487_)
                                                     _E13487_)
                                                    (if (eq? _$e13506_ 'var)
                                                        (_k13488_
                                                         (cons (cons _body13503_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _target13486_)
                       _vars13485_))
                (if (eq? _$e13506_ 'cons)
                    (let ((_$e13509_ (gx#genident__1 'e))
                          (_$hd13510_ (gx#genident__1 'hd))
                          (_$tl13511_ (gx#genident__1 'tl)))
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _target13486_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$e13509_ '())
                                    (cons (gx#core-list
                                           _unwrap-e13221_
                                           _target13486_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$hd13510_ '())
                                     (cons (gx#core-list '##car _$e13509_)
                                           '()))
                               (cons (cons (cons _$tl13511_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$e13509_)
                                                 '()))
                                     '()))
                         (let* ((_body1351213519_ _body13503_)
                                (_E1351413523_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _body1351213519_)))
                                (_K1351513531_
                                 (lambda (_tl13526_ _hd13527_)
                                   (_recur13399_
                                    _hd13527_
                                    _vars13485_
                                    _$hd13510_
                                    _E13487_
                                    (lambda (_vars13529_)
                                      (_recur13399_
                                       _tl13526_
                                       _vars13529_
                                       _$tl13511_
                                       _E13487_
                                       _k13488_))))))
                           (if (##pair? _body1351213519_)
                               (let ((_hd1351613534_ (##car _body1351213519_))
                                     (_tl1351713536_ (##cdr _body1351213519_)))
                                 (let* ((_hd13539_ _hd1351613534_)
                                        (_tl13541_ _tl1351713536_))
                                   (_K1351513531_ _tl13541_ _hd13539_)))
                               (_E1351413523_)))))
                       _E13487_))
                    (if (eq? _$e13506_ 'splice)
                        (let* ((_body1354213549_ _body13503_)
                               (_E1354413553_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body1354213549_)))
                               (_K1354513602_
                                (lambda (_tl13556_ _hd13557_)
                                  (let* ((_rlen13559_
                                          (_splice-rlen13400_ _tl13556_))
                                         (_$target13561_
                                          (gx#genident__1 'target))
                                         (_$hd13563_ (gx#genident__1 'hd))
                                         (_$tl13565_ (gx#genident__1 'tl))
                                         (_$lp13567_ (gx#genident__1 'loop))
                                         (_$lp-e13569_ (gx#genident__1 'e))
                                         (_$lp-hd13571_
                                          (gx#genident__1 'lp-hd))
                                         (_$lp-tl13573_
                                          (gx#genident__1 'lp-tl))
                                         (_svars13575_
                                          (_splice-vars13401_ _hd13557_))
                                         (_lvars13577_
                                          (gx#gentemps _svars13575_))
                                         (_tlvars13579_
                                          (gx#gentemps _svars13575_))
                                         (_linit13583_
                                          (map (lambda (_var13581_)
                                                 (gx#core-list 'quote '()))
                                               _lvars13577_)))
                                    (letrec ((_make-loop13586_
                                              (lambda (_vars13588_)
                                                (gx#core-list
                                                 'letrec-values
                                                 (cons (cons (cons _$lp13567_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _$hd13563_ _lvars13577_)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-pair? _$hd13563_)
                             (gx#core-list
                              'let-values
                              (cons (cons (cons _$lp-e13569_ '())
                                          (cons (gx#core-list
                                                 _unwrap-e13221_
                                                 _$hd13563_)
                                                '()))
                                    '())
                              (gx#core-list
                               'let-values
                               (cons (cons (cons _$lp-hd13571_ '())
                                           (cons (gx#core-list
                                                  '##car
                                                  _$lp-e13569_)
                                                 '()))
                                     (cons (cons (cons _$lp-tl13573_ '())
                                                 (cons (gx#core-list
                                                        '##cdr
                                                        _$lp-e13569_)
                                                       '()))
                                           '()))
                               (_recur13399_
                                _hd13557_
                                '()
                                _$lp-hd13571_
                                _E13487_
                                (lambda (_hdvars13590_)
                                  (cons* _$lp13567_
                                         _$lp-tl13573_
                                         (map (lambda (_svar13592_ _lvar13593_)
                                                (gx#core-list
                                                 'cons
                                                 (assgetq _svar13592_
                                                          _hdvars13590_
                                                          _BUG13398_)
                                                 _lvar13593_))
                                              _svars13575_
                                              _lvars13577_))))))
                             (gx#core-list
                              'let-values
                              (map (lambda (_lvar13595_ _tlvar13596_)
                                     (cons (cons _tlvar13596_ '())
                                           (cons (gx#core-list
                                                  'reverse
                                                  _lvar13595_)
                                                 '())))
                                   _lvars13577_
                                   _tlvars13579_)
                              (_k13488_
                               (foldl (lambda (_svar13598_
                                               _tlvar13599_
                                               _r13600_)
                                        (cons (cons _svar13598_ _tlvar13599_)
                                              _r13600_))
                                      _vars13588_
                                      _svars13575_
                                      _tlvars13579_)))))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons* _$lp13567_
                                                        _$target13561_
                                                        _linit13583_)))))
                                      (gx#core-list
                                       'if
                                       (gx#core-list
                                        'stx-pair/null?
                                        _target13486_)
                                       (gx#core-list
                                        'if
                                        (gx#core-list
                                         'fx>=
                                         (gx#core-list
                                          'stx-length
                                          _target13486_)
                                         _rlen13559_)
                                        (gx#core-list
                                         'let-values
                                         (cons (cons (cons _$target13561_
                                                           (cons _$tl13565_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (gx#core-list
                                                            'syntax-split-splice
                                                            _target13486_
                                                            _rlen13559_)
                                                           '()))
                                               '())
                                         (_recur13399_
                                          _tl13556_
                                          _vars13485_
                                          _$tl13565_
                                          _E13487_
                                          _make-loop13586_))
                                        _E13487_)
                                       _E13487_))))))
                          (if (##pair? _body1354213549_)
                              (let ((_hd1354613605_ (##car _body1354213549_))
                                    (_tl1354713607_ (##cdr _body1354213549_)))
                                (let* ((_hd13610_ _hd1354613605_)
                                       (_tl13612_ _tl1354713607_))
                                  (_K1354513602_ _tl13612_ _hd13610_)))
                              (_E1354413553_)))
                        (if (eq? _$e13506_ 'null)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-null? _target13486_)
                             (_k13488_ _vars13485_)
                             _E13487_)
                            (if (eq? _$e13506_ 'vector)
                                (let ((_$e13614_ (gx#genident__1 'e)))
                                  (gx#core-list
                                   'if
                                   (gx#core-list 'stx-vector? _target13486_)
                                   (gx#core-list
                                    'let-values
                                    (cons (cons (cons _$e13614_ '())
                                                (cons (gx#core-list
                                                       'vector->list
                                                       (gx#core-list
                                                        _unwrap-e13221_
                                                        _target13486_))
                                                      '()))
                                          '())
                                    (_recur13399_
                                     _body13503_
                                     _vars13485_
                                     _$e13614_
                                     _E13487_
                                     _k13488_))
                                   _E13487_))
                                (if (eq? _$e13506_ 'box)
                                    (let ((_$e13616_ (gx#genident__1 'e)))
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-box? _target13486_)
                                       (gx#core-list
                                        'let-values
                                        (cons (cons (cons _$e13616_ '())
                                                    (cons (gx#core-list
                                                           'unbox
                                                           (gx#core-list
                                                            _unwrap-e13221_
                                                            _target13486_))
                                                          '()))
                                              '())
                                        (_recur13399_
                                         _body13503_
                                         _vars13485_
                                         _$e13616_
                                         _E13487_
                                         _k13488_))
                                       _E13487_))
                                    (if (eq? _$e13506_ 'datum)
                                        (gx#core-list
                                         'if
                                         (gx#core-list
                                          'stx-datum?
                                          _target13486_)
                                         (gx#core-list
                                          'if
                                          (gx#core-list
                                           'equal?
                                           (gx#core-list 'stx-e _target13486_)
                                           _body13503_)
                                          (_k13488_ _vars13485_)
                                          _E13487_)
                                         _E13487_)
                                        (_BUG13398_ _e13484_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (##pair? _e1348913496_)
                                      (let ((_hd1349313621_
                                             (##car _e1348913496_))
                                            (_tl1349413623_
                                             (##cdr _e1348913496_)))
                                        (let* ((_tag13626_ _hd1349313621_)
                                               (_body13628_ _tl1349413623_))
                                          (_K1349213618_
                                           _body13628_
                                           _tag13626_)))
                                      (_E1349113500_)))))
                             (_splice-rlen13400_
                              (lambda (_e13446_)
                                (let _lp13448_ ((_e13450_ _e13446_)
                                                (_n13451_ '0))
                                  (let* ((_e1345213459_ _e13450_)
                                         (_E1345413463_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1345213459_)))
                                         (_K1345513472_
                                          (lambda (_body13466_ _tag13467_)
                                            (let ((_$e13469_ _tag13467_))
                                              (if (eq? _$e13469_ 'splice)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Ambiguous pattern"
                                                   _stx13219_
                                                   _where13391_)
                                                  (if (eq? _$e13469_ 'cons)
                                                      (_lp13448_
                                                       (cdr _body13466_)
                                                       (fx+ _n13451_ '1))
                                                      _n13451_))))))
                                    (if (##pair? _e1345213459_)
                                        (let ((_hd1345613475_
                                               (##car _e1345213459_))
                                              (_tl1345713477_
                                               (##cdr _e1345213459_)))
                                          (let* ((_tag13480_ _hd1345613475_)
                                                 (_body13482_ _tl1345713477_))
                                            (_K1345513472_
                                             _body13482_
                                             _tag13480_)))
                                        (_E1345413463_))))))
                             (_splice-vars13401_
                              (lambda (_e13408_)
                                (let _recur13410_ ((_e13412_ _e13408_)
                                                   (_vars13413_ '()))
                                  (let* ((_e1341413421_ _e13412_)
                                         (_E1341613425_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1341413421_)))
                                         (_K1341713434_
                                          (lambda (_body13428_ _tag13429_)
                                            (let ((_$e13431_ _tag13429_))
                                              (if (eq? _$e13431_ 'var)
                                                  (cons _body13428_
                                                        _vars13413_)
                                                  (if (memq _$e13431_
                                                            '(cons splice))
                                                      (_recur13410_
                                                       (cdr _body13428_)
                                                       (_recur13410_
                                                        (car _body13428_)
                                                        _vars13413_))
                                                      (if (memq _$e13431_
                                                                '(vector box))
                                                          (_recur13410_
                                                           _body13428_
                                                           _vars13413_)
                                                          _vars13413_)))))))
                                    (if (##pair? _e1341413421_)
                                        (let ((_hd1341813437_
                                               (##car _e1341413421_))
                                              (_tl1341913439_
                                               (##cdr _e1341413421_)))
                                          (let* ((_tag13442_ _hd1341813437_)
                                                 (_body13444_ _tl1341913439_))
                                            (_K1341713434_
                                             _body13444_
                                             _tag13442_)))
                                        (_E1341613425_))))))
                             (_make-body13402_
                              (lambda (_vars13404_)
                                (cons _K13395_
                                      (map (lambda (_mvar13406_)
                                             (assgetq (car _mvar13406_)
                                                      _vars13404_
                                                      _BUG13398_))
                                           _mvars13394_)))))
                      (_recur13399_
                       _hd13393_
                       '()
                       _target13392_
                       _E13396_
                       _make-body13402_))))
                 (_parse-clause13228_
                  (lambda (_hd13297_ _ids13298_)
                    (let _recur13300_ ((_e13302_ _hd13297_)
                                       (_vars13303_ '())
                                       (_depth13304_ '0))
                      (if (gx#identifier? _e13302_)
                          (if (gx#underscore? _e13302_)
                              (values '(any) _vars13303_)
                              (if (gx#ellipsis? _e13302_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Misplaced ellipsis"
                                   _stx13219_
                                   _hd13297_)
                                  (if (find (lambda (_id13306_)
                                              (gx#bound-identifier=?
                                               _e13302_
                                               _id13306_))
                                            _ids13298_)
                                      (values (cons 'id _e13302_) _vars13303_)
                                      (if (find (lambda (_var13308_)
                                                  (gx#bound-identifier=?
                                                   _e13302_
                                                   (car _var13308_)))
                                                _vars13303_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Duplicate pattern variable"
                                           _stx13219_
                                           _e13302_)
                                          (values (cons 'var _e13302_)
                                                  (cons (cons _e13302_
                                                              _depth13304_)
                                                        _vars13303_))))))
                          (if (gx#stx-pair? _e13302_)
                              (let* ((_e1330913316_ _e13302_)
                                     (_E1331113320_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _e1330913316_)))
                                     (_E1331013381_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1330913316_)
                                            (let ((_e1331213324_
                                                   (gx#syntax-e
                                                    _e1330913316_)))
                                              (let ((_hd1331313327_
                                                     (##car _e1331213324_))
                                                    (_tl1331413329_
                                                     (##cdr _e1331213324_)))
                                                (let* ((_hd13332_
                                                        _hd1331313327_)
                                                       (_rest13334_
                                                        _tl1331413329_))
                                                  (if '#t
                                                      (let* ((_make-pair13349_
                                                              (lambda (_tag13336_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd13337_
                               _tl13338_)
                        (let* ((_hd-depth13340_
                                (if (eq? _tag13336_ 'splice)
                                    (fx+ _depth13304_ '1)
                                    _depth13304_))
                               (_g14359_
                                (_recur13300_
                                 _hd13337_
                                 _vars13303_
                                 _hd-depth13340_)))
                          (begin
                            (let ((_g14360_ (values-count _g14359_)))
                              (if (not (fx= _g14360_ 2))
                                  (error "Context expects 2 values" _g14360_)))
                            (let ((_hd13342_ (values-ref _g14359_ 0))
                                  (_vars13343_ (values-ref _g14359_ 1)))
                              (let ((_g14361_
                                     (_recur13300_
                                      _tl13338_
                                      _vars13343_
                                      _depth13304_)))
                                (begin
                                  (let ((_g14362_ (values-count _g14361_)))
                                    (if (not (fx= _g14362_ 2))
                                        (error "Context expects 2 values"
                                               _g14362_)))
                                  (let ((_tl13345_ (values-ref _g14361_ 0))
                                        (_vars13346_ (values-ref _g14361_ 1)))
                                    (let ()
                                      (values (cons* _tag13336_
                                                     _hd13342_
                                                     _tl13345_)
                                              _vars13346_))))))))))
                     (_e1335013357_ _rest13334_)
                     (_E1335213361_
                      (lambda ()
                        (_make-pair13349_ 'cons _hd13332_ _rest13334_)))
                     (_E1335113377_
                      (lambda ()
                        (if (gx#stx-pair? _e1335013357_)
                            (let ((_e1335313365_ (gx#syntax-e _e1335013357_)))
                              (let ((_hd1335413368_ (##car _e1335313365_))
                                    (_tl1335513370_ (##cdr _e1335313365_)))
                                (let* ((_rest-hd13373_ _hd1335413368_)
                                       (_rest-tl13375_ _tl1335513370_))
                                  (if '#t
                                      (if (gx#ellipsis? _rest-hd13373_)
                                          (_make-pair13349_
                                           'splice
                                           _hd13332_
                                           _rest-tl13375_)
                                          (_make-pair13349_
                                           'cons
                                           _hd13332_
                                           _rest13334_))
                                      (_E1335213361_)))))
                            (_E1335213361_)))))
                (_E1335113377_))
              (_E1331113320_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1331113320_)))))
                                (_E1331013381_))
                              (if (gx#stx-null? _e13302_)
                                  (values '(null) _vars13303_)
                                  (if (gx#stx-vector? _e13302_)
                                      (let ((_g14363_
                                             (_recur13300_
                                              (vector->list
                                               (gx#syntax-e _e13302_))
                                              _vars13303_
                                              _depth13304_)))
                                        (begin
                                          (let ((_g14364_
                                                 (values-count _g14363_)))
                                            (if (not (fx= _g14364_ 2))
                                                (error "Context expects 2 values"
                                                       _g14364_)))
                                          (let ((_e13385_
                                                 (values-ref _g14363_ 0))
                                                (_vars13386_
                                                 (values-ref _g14363_ 1)))
                                            (values (cons 'vector _e13385_)
                                                    _vars13386_))))
                                      (if (gx#stx-box? _e13302_)
                                          (let ((_g14365_
                                                 (_recur13300_
                                                  (unbox (gx#syntax-e
                                                          _e13302_))
                                                  _vars13303_
                                                  _depth13304_)))
                                            (begin
                                              (let ((_g14366_
                                                     (values-count _g14365_)))
                                                (if (not (fx= _g14366_ 2))
                                                    (error "Context expects 2 values"
                                                           _g14366_)))
                                              (let ((_e13388_
                                                     (values-ref _g14365_ 0))
                                                    (_vars13389_
                                                     (values-ref _g14365_ 1)))
                                                (values (cons 'box _e13388_)
                                                        _vars13389_))))
                                          (if (gx#stx-datum? _e13302_)
                                              (values (cons 'datum
                                                            (gx#stx-e
                                                             _e13302_))
                                                      _vars13303_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad pattern"
                                               _stx13219_
                                               _e13302_)))))))))))
          (let* ((_e1322913242_ _stx13219_)
                 (_E1323113246_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1322913242_)))
                 (_E1323013293_
                  (lambda ()
                    (if (gx#stx-pair? _e1322913242_)
                        (let ((_e1323213250_ (gx#syntax-e _e1322913242_)))
                          (let ((_hd1323313253_ (##car _e1323213250_))
                                (_tl1323413255_ (##cdr _e1323213250_)))
                            (if (gx#stx-pair? _tl1323413255_)
                                (let ((_e1323513258_
                                       (gx#syntax-e _tl1323413255_)))
                                  (let ((_hd1323613261_ (##car _e1323513258_))
                                        (_tl1323713263_ (##cdr _e1323513258_)))
                                    (let ((_expr13266_ _hd1323613261_))
                                      (if (gx#stx-pair? _tl1323713263_)
                                          (let ((_e1323813268_
                                                 (gx#syntax-e _tl1323713263_)))
                                            (let ((_hd1323913271_
                                                   (##car _e1323813268_))
                                                  (_tl1324013273_
                                                   (##cdr _e1323813268_)))
                                              (let* ((_ids13276_
                                                      _hd1323913271_)
                                                     (_clauses13278_
                                                      _tl1324013273_))
                                                (if '#t
                                                    (if (not (gx#identifier-list?
                                                              _ids13276_))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad template identifier list"
                                                         _stx13219_
                                                         _ids13276_)
                                                        (if (not (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _clauses13278_))
                    (gx#raise-syntax-error '#f '"Bad syntax" _stx13219_)
                    (let* ((_ids13280_ (gx#syntax->list _ids13276_))
                           (_clauses13282_ (gx#syntax->list _clauses13278_))
                           (_clause-ids13284_ (gx#gentemps _clauses13282_))
                           (_E13286_ (gx#genident__0))
                           (_target13288_ (gx#genident__0))
                           (_first13290_
                            (if (null? _clauses13282_)
                                _E13286_
                                (car _clause-ids13284_))))
                      (gx#stx-wrap-source
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _E13286_ '())
                                    (cons (gx#core-list
                                           'lambda%
                                           (cons _target13288_ '())
                                           (gx#core-list
                                            'raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _target13288_))
                                          '()))
                              '())
                        (_generate-body13225_
                         (_generate-bindings13224_
                          _target13288_
                          _ids13280_
                          _clauses13282_
                          _clause-ids13284_
                          _E13286_)
                         (cons _first13290_ (cons _expr13266_ '()))))
                       (gx#stx-source _stx13219_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1323113246_)))))
                                          (_E1323113246_)))))
                                (_E1323113246_))))
                        (_E1323113246_)))))
            (_E1323013293_)))))
    (begin
      (define gx#macro-expand-syntax-case__0
        (lambda (_stx13921_)
          (let* ((_identifier=?13923_ 'free-identifier=?)
                 (_unwrap-e13925_ 'syntax-e)
                 (_wrap-e13927_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda13217
             _stx13921_
             _identifier=?13923_
             _unwrap-e13925_
             _wrap-e13927_))))
      (define gx#macro-expand-syntax-case__1
        (lambda (_stx13929_ _identifier=?13930_)
          (let* ((_unwrap-e13932_ 'syntax-e) (_wrap-e13934_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda13217
             _stx13929_
             _identifier=?13930_
             _unwrap-e13932_
             _wrap-e13934_))))
      (define gx#macro-expand-syntax-case__2
        (lambda (_stx13936_ _identifier=?13937_ _unwrap-e13938_)
          (let ((_wrap-e13940_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda13217
             _stx13936_
             _identifier=?13937_
             _unwrap-e13938_
             _wrap-e13940_))))
      (define gx#macro-expand-syntax-case
        (lambda _g14368_
          (let ((_g14367_ (length _g14368_)))
            (cond ((fx= _g14367_ 1)
                   (apply gx#macro-expand-syntax-case__0 _g14368_))
                  ((fx= _g14367_ 2)
                   (apply gx#macro-expand-syntax-case__1 _g14368_))
                  ((fx= _g14367_ 3)
                   (apply gx#macro-expand-syntax-case__2 _g14368_))
                  ((fx= _g14367_ 4)
                   (apply gx#macro-expand-syntax-case__opt-lambda13217
                          _g14368_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-syntax-case
                    _g14368_))))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx13216_)
      (if (gx#identifier? _stx13216_)
          (##structure-instance-of?
           (gx#syntax-local-e__opt-lambda4060 _stx13216_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd13174_ . _rest13175_)
      (let ((_len13177_ (length _hd13174_)))
        (let _lp13179_ ((_rest13181_ _rest13175_))
          (let* ((_rest1318213190_ _rest13181_)
                 (_E1318513194_
                  (lambda () (error '"No clause matching" _rest1318213190_)))
                 (_else1318413198_ (lambda () '#!void))
                 (_K1318613204_
                  (lambda (_rest13201_ _hd13202_)
                    (if (fx= _len13177_ (length _hd13202_))
                        (_lp13179_ _rest13201_)
                        (gx#raise-syntax-error
                         '#f
                         '"Splice length mismatch"
                         _hd13202_)))))
            (if (##pair? _rest1318213190_)
                (let ((_hd1318713207_ (##car _rest1318213190_))
                      (_tl1318813209_ (##cdr _rest1318213190_)))
                  (let* ((_hd13212_ _hd1318713207_)
                         (_rest13214_ _tl1318813209_))
                    (_K1318613204_ _rest13214_ _hd13212_)))
                (_else1318413198_)))))))
  (define gx#syntax-split-splice
    (lambda (_stx13132_ _n13133_)
      (let _lp13135_ ((_rest13137_ _stx13132_) (_r13138_ '()))
        (if (gx#stx-pair? _rest13137_)
            (let* ((_g1313913146_ (gx#syntax-e _rest13137_))
                   (_E1314113150_
                    (lambda () (error '"No clause matching" _g1313913146_)))
                   (_K1314213156_
                    (lambda (_rest13153_ _hd13154_)
                      (_lp13135_ _rest13153_ (cons _hd13154_ _r13138_)))))
              (if (##pair? _g1313913146_)
                  (let ((_hd1314313159_ (##car _g1313913146_))
                        (_tl1314413161_ (##cdr _g1313913146_)))
                    (let* ((_hd13164_ _hd1314313159_)
                           (_rest13166_ _tl1314413161_))
                      (_K1314213156_ _rest13166_ _hd13164_)))
                  (_E1314113150_)))
            (let _lp13168_ ((_n13170_ _n13133_)
                            (_l13171_ _r13138_)
                            (_r13172_ _rest13137_))
              (if (null? _l13171_)
                  (values _l13171_ _r13172_)
                  (if (fxpositive? _n13170_)
                      (_lp13168_
                       (fx- _n13170_ '1)
                       (cdr _l13171_)
                       (cons (car _l13171_) _r13172_))
                      (values (reverse _l13171_) _r13172_)))))))))
