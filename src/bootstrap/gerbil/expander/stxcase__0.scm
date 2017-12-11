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
    (lambda _$args14339_
      (apply make-struct-instance gx#syntax-pattern::t _$args14339_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self14336_ _stx14337_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx14337_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx13945_)
      (letrec ((_generate13947_
                (lambda (_e14174_)
                  (letrec ((_BUG14176_
                            (lambda (_q14334_)
                              (error '"BUG: syntax; generate"
                                     _stx13945_
                                     _e14174_
                                     _q14334_)))
                           (_local-pattern-e14177_
                            (lambda (_pat14332_)
                              (gx#syntax-local-rewrap
                               (##structure-ref
                                _pat14332_
                                '2
                                gx#syntax-pattern::t
                                '#f))))
                           (_getvar14178_
                            (lambda (_q14329_ _vars14330_)
                              (assgetq _q14329_ _vars14330_ _BUG14176_)))
                           (_getarg14179_
                            (lambda (_arg14295_ _vars14296_)
                              (let* ((_arg1429714304_ _arg14295_)
                                     (_E1429914308_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _arg1429714304_)))
                                     (_K1430014317_
                                      (lambda (_e14311_ _tag14312_)
                                        (let ((_$e14314_ _tag14312_))
                                          (if (eq? _$e14314_ 'ref)
                                              (_getvar14178_
                                               _e14311_
                                               _vars14296_)
                                              (if (eq? _$e14314_ 'pattern)
                                                  (_local-pattern-e14177_
                                                   _e14311_)
                                                  (_BUG14176_ _arg14295_)))))))
                                (if (##pair? _arg1429714304_)
                                    (let ((_hd1430114320_
                                           (##car _arg1429714304_))
                                          (_tl1430214322_
                                           (##cdr _arg1429714304_)))
                                      (let* ((_tag14325_ _hd1430114320_)
                                             (_e14327_ _tl1430214322_))
                                        (_K1430014317_ _e14327_ _tag14325_)))
                                    (_E1429914308_))))))
                    (let _recur14181_ ((_e14183_ _e14174_) (_vars14184_ '()))
                      (let* ((_e1418514192_ _e14183_)
                             (_E1418714196_
                              (lambda ()
                                (error '"No clause matching" _e1418514192_)))
                             (_K1418814283_
                              (lambda (_body14199_ _tag14200_)
                                (let ((_$e14202_ _tag14200_))
                                  (if (eq? _$e14202_ 'datum)
                                      (gx#core-list 'quote _body14199_)
                                      (if (eq? _$e14202_ 'term)
                                          (gx#core-list
                                           'datum->syntax
                                           '#f
                                           (gx#core-list 'quote _body14199_))
                                          (if (eq? _$e14202_ 'pattern)
                                              (_local-pattern-e14177_
                                               _body14199_)
                                              (if (eq? _$e14202_ 'ref)
                                                  (_getvar14178_
                                                   _body14199_
                                                   _vars14184_)
                                                  (if (eq? _$e14202_ 'cons)
                                                      (gx#core-list
                                                       'cons
                                                       (_recur14181_
                                                        (car _body14199_)
                                                        _vars14184_)
                                                       (_recur14181_
                                                        (cdr _body14199_)
                                                        _vars14184_))
                                                      (if (eq? _$e14202_
                                                               'vector)
                                                          (gx#core-list
                                                           'list->vector
                                                           (_recur14181_
                                                            _body14199_
                                                            _vars14184_))
                                                          (if (eq? _$e14202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'box)
                      (gx#core-list
                       'box
                       (_recur14181_ _body14199_ _vars14184_))
                      (if (eq? _$e14202_ 'splice)
                          (let* ((_body1420414215_ _body14199_)
                                 (_E1420614219_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _body1420414215_)))
                                 (_K1420714257_
                                  (lambda (_args14222_
                                           _iv14223_
                                           _hd14224_
                                           _depth14225_)
                                    (let* ((_targets14231_
                                            (map (lambda (_g1422614228_)
                                                   (_getarg14179_
                                                    _g1422614228_
                                                    _vars14184_))
                                                 _args14222_))
                                           (_fold-in14233_
                                            (gx#gentemps _args14222_))
                                           (_fold-out14235_ (gx#genident__0))
                                           (_lambda-args14237_
                                            (foldr1 cons
                                                    (cons _fold-out14235_ '())
                                                    _fold-in14233_))
                                           (_lambda-body14254_
                                            (if (fx> _depth14225_ '1)
                                                (let ((_r-args14245_
                                                       (map (lambda (_arg14239_)
                                                              (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cdr _arg14239_)))
                    _args14222_))
              (_r-vars14246_
               (foldr (lambda (_arg14241_ _var14242_ _r14243_)
                        (cons (cons (cdr _arg14241_) _var14242_) _r14243_))
                      _vars14184_
                      _args14222_
                      _fold-in14233_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur14181_
                                                   (cons* 'splice
                                                          (fx- _depth14225_ '1)
                                                          _hd14224_
                                                          (cons 'var
                                                                _fold-out14235_)
                                                          _r-args14245_)
                                                   _r-vars14246_))
                                                (let ((_hd-vars14252_
                                                       (foldr (lambda (_arg14248_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _var14249_
                               _r14250_)
                        (cons (cons (cdr _arg14248_) _var14249_) _r14250_))
                      _vars14184_
                      _args14222_
                      _fold-in14233_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#core-list
                                                   'cons
                                                   (_recur14181_
                                                    _hd14224_
                                                    _hd-vars14252_)
                                                   _fold-out14235_)))))
                                      (gx#core-list
                                       'begin
                                       (if (fx> (length _targets14231_) '1)
                                           (gx#core-cons*
                                            'syntax-check-splice-targets
                                            _targets14231_)
                                           '#!void)
                                       (gx#core-cons*
                                        'foldr
                                        (gx#core-list
                                         'lambda%
                                         _lambda-args14237_
                                         _lambda-body14254_)
                                        (_recur14181_ _iv14223_ _vars14184_)
                                        _targets14231_))))))
                            (if (##pair? _body1420414215_)
                                (let ((_hd1420814260_ (##car _body1420414215_))
                                      (_tl1420914262_
                                       (##cdr _body1420414215_)))
                                  (let ((_depth14265_ _hd1420814260_))
                                    (if (##pair? _tl1420914262_)
                                        (let ((_hd1421014267_
                                               (##car _tl1420914262_))
                                              (_tl1421114269_
                                               (##cdr _tl1420914262_)))
                                          (let ((_hd14272_ _hd1421014267_))
                                            (if (##pair? _tl1421114269_)
                                                (let ((_hd1421214274_
                                                       (##car _tl1421114269_))
                                                      (_tl1421314276_
                                                       (##cdr _tl1421114269_)))
                                                  (let* ((_iv14279_
                                                          _hd1421214274_)
                                                         (_args14281_
                                                          _tl1421314276_))
                                                    (_K1420714257_
                                                     _args14281_
                                                     _iv14279_
                                                     _hd14272_
                                                     _depth14265_)))
                                                (_E1420614219_))))
                                        (_E1420614219_))))
                                (_E1420614219_)))
                          (if (eq? _$e14202_ 'var)
                              _body14199_
                              (_BUG14176_ _e14183_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (if (##pair? _e1418514192_)
                            (let ((_hd1418914286_ (##car _e1418514192_))
                                  (_tl1419014288_ (##cdr _e1418514192_)))
                              (let* ((_tag14291_ _hd1418914286_)
                                     (_body14293_ _tl1419014288_))
                                (_K1418814283_ _body14293_ _tag14291_)))
                            (_E1418714196_)))))))
               (_parse13948_
                (lambda (_e13989_)
                  (letrec ((_make-cons13991_
                            (lambda (_hd14166_ _tl14167_)
                              (let ((_g14341_ _hd14166_) (_g14343_ _tl14167_))
                                (begin
                                  (let ((_g14342_ (values-count _g14341_)))
                                    (if (not (fx= _g14342_ 2))
                                        (error "Context expects 2 values"
                                               _g14342_)))
                                  (let ((_g14344_ (values-count _g14343_)))
                                    (if (not (fx= _g14344_ 2))
                                        (error "Context expects 2 values"
                                               _g14344_)))
                                  (let ((_hd-e14169_ (values-ref _g14341_ 0))
                                        (_hd-vars14170_
                                         (values-ref _g14341_ 1)))
                                    (let ((_tl-e14171_ (values-ref _g14343_ 0))
                                          (_tl-vars14172_
                                           (values-ref _g14343_ 1)))
                                      (values (cons* 'cons
                                                     _hd-e14169_
                                                     _tl-e14171_)
                                              (append _hd-vars14170_
                                                      _tl-vars14172_))))))))
                           (_make-splice13992_
                            (lambda (_where14105_
                                     _depth14106_
                                     _hd14107_
                                     _tl14108_)
                              (let ((_g14345_ _hd14107_) (_g14347_ _tl14108_))
                                (begin
                                  (let ((_g14346_ (values-count _g14345_)))
                                    (if (not (fx= _g14346_ 2))
                                        (error "Context expects 2 values"
                                               _g14346_)))
                                  (let ((_g14348_ (values-count _g14347_)))
                                    (if (not (fx= _g14348_ 2))
                                        (error "Context expects 2 values"
                                               _g14348_)))
                                  (let ((_hd-e14110_ (values-ref _g14345_ 0))
                                        (_hd-vars14111_
                                         (values-ref _g14345_ 1)))
                                    (let ((_tl-e14112_ (values-ref _g14347_ 0))
                                          (_tl-vars14113_
                                           (values-ref _g14347_ 1)))
                                      (let _lp14115_ ((_rest14117_
                                                       _hd-vars14111_)
                                                      (_targets14118_ '())
                                                      (_vars14119_
                                                       _tl-vars14113_))
                                        (let* ((_rest1412014130_ _rest14117_)
                                               (_E1412314134_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _rest1412014130_)))
                                               (_else1412214138_
                                                (lambda ()
                                                  (if (null? _targets14118_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Misplaced ellipsis"
                                                       _stx13945_
                                                       _where14105_)
                                                      (values (cons* 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _depth14106_
                             _hd-e14110_
                             _tl-e14112_
                             _targets14118_)
                      _vars14119_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_K1412414147_
                                                (lambda (_rest14141_
                                                         _hd-pat14142_
                                                         _hd-depth*14143_)
                                                  (let ((_hd-depth14145_
                                                         (fx- _hd-depth*14143_
                                                              _depth14106_)))
                                                    (if (fxpositive?
                                                         _hd-depth14145_)
                                                        (_lp14115_
                                                         _rest14141_
                                                         (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd-pat14142_)
                       _targets14118_)
                 (cons (cons _hd-depth14145_ _hd-pat14142_) _vars14119_))
                (if (fxzero? _hd-depth14145_)
                    (_lp14115_
                     _rest14141_
                     (cons (cons 'pattern _hd-pat14142_) _targets14118_)
                     _vars14119_)
                    (gx#raise-syntax-error
                     '#f
                     '"Too many ellipses"
                     _stx13945_
                     _where14105_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1412014130_)
                                              (let ((_hd1412514150_
                                                     (##car _rest1412014130_))
                                                    (_tl1412614152_
                                                     (##cdr _rest1412014130_)))
                                                (if (##pair? _hd1412514150_)
                                                    (let ((_hd1412714155_
                                                           (##car _hd1412514150_))
                                                          (_tl1412814157_
                                                           (##cdr _hd1412514150_)))
                                                      (let* ((_hd-depth*14160_
                                                              _hd1412714155_)
                                                             (_hd-pat14162_
                                                              _tl1412814157_)
                                                             (_rest14164_
                                                              _tl1412614152_))
                                                        (_K1412414147_
                                                         _rest14164_
                                                         _hd-pat14162_
                                                         _hd-depth*14160_)))
                                                    (_else1412214138_)))
                                              (_else1412214138_))))))))))
                           (_recur13993_
                            (lambda (_e13998_ _is-e?13999_)
                              (if (_is-e?13999_ _e13998_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Mislpaced ellipsis"
                                   _stx13945_)
                                  (if (gx#syntax-local-pattern? _e13998_)
                                      (let* ((_pat14001_
                                              (gx#syntax-local-e__0 _e13998_))
                                             (_depth14003_
                                              (##structure-ref
                                               _pat14001_
                                               '3
                                               gx#syntax-pattern::t
                                               '#f)))
                                        (if (fxpositive? _depth14003_)
                                            (values (cons 'ref _pat14001_)
                                                    (cons (cons _depth14003_
                                                                _pat14001_)
                                                          '()))
                                            (values (cons 'pattern _pat14001_)
                                                    '())))
                                      (if (gx#identifier? _e13998_)
                                          (values (cons 'term _e13998_) '())
                                          (if (gx#stx-pair? _e13998_)
                                              (let* ((_e1400514012_ _e13998_)
                                                     (_E1400714016_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _e1400514012_)))
                                                     (_E1400614095_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e1400514012_)
                                                            (let ((_e1400814020_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e1400514012_)))
                      (let ((_hd1400914023_ (##car _e1400814020_))
                            (_tl1401014025_ (##cdr _e1400814020_)))
                        (let* ((_hd14028_ _hd1400914023_)
                               (_rest14030_ _tl1401014025_))
                          (if '#t
                              (if (_is-e?13999_ _hd14028_)
                                  (let* ((_e1403114038_ _rest14030_)
                                         (_E1403314042_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _stx13945_
                                             _e13998_)))
                                         (_E1403214056_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1403114038_)
                                                (let ((_e1403414046_
                                                       (gx#syntax-e
                                                        _e1403114038_)))
                                                  (let ((_hd1403514049_
                                                         (##car _e1403414046_))
                                                        (_tl1403614051_
                                                         (##cdr _e1403414046_)))
                                                    (let ((_rest14054_
                                                           _hd1403514049_))
                                                      (if (gx#stx-null?
                                                           _tl1403614051_)
                                                          (if '#t
                                                              (_recur13993_
                                                               _rest14054_
                                                               false)
                                                              (_E1403314042_))
                                                          (_E1403314042_)))))
                                                (_E1403314042_)))))
                                    (_E1403214056_))
                                  (let _lp14060_ ((_rest14062_ _rest14030_)
                                                  (_depth14063_ '0))
                                    (let* ((_e1406414071_ _rest14062_)
                                           (_E1406614075_
                                            (lambda ()
                                              (if (fxpositive? _depth14063_)
                                                  (_make-splice13992_
                                                   _e13998_
                                                   _depth14063_
                                                   (_recur13993_
                                                    _hd14028_
                                                    _is-e?13999_)
                                                   (_recur13993_
                                                    _rest14062_
                                                    _is-e?13999_))
                                                  (_make-cons13991_
                                                   (_recur13993_
                                                    _hd14028_
                                                    _is-e?13999_)
                                                   (_recur13993_
                                                    _rest14062_
                                                    _is-e?13999_)))))
                                           (_E1406514091_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1406414071_)
                                                  (let ((_e1406714079_
                                                         (gx#syntax-e
                                                          _e1406414071_)))
                                                    (let ((_hd1406814082_
                                                           (##car _e1406714079_))
                                                          (_tl1406914084_
                                                           (##cdr _e1406714079_)))
                                                      (let* ((_rest-hd14087_
                                                              _hd1406814082_)
                                                             (_rest-tl14089_
                                                              _tl1406914084_))
                                                        (if '#t
                                                            (if (_is-e?13999_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rest-hd14087_)
                        (_lp14060_ _rest-tl14089_ (fx+ _depth14063_ '1))
                        (if (fxpositive? _depth14063_)
                            (_make-splice13992_
                             _e13998_
                             _depth14063_
                             (_recur13993_ _hd14028_ _is-e?13999_)
                             (_recur13993_ _rest14062_ _is-e?13999_))
                            (_make-cons13991_
                             (_recur13993_ _hd14028_ _is-e?13999_)
                             (_recur13993_ _rest14062_ _is-e?13999_))))
                    (_E1406614075_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1406614075_)))))
                                      (_E1406514091_))))
                              (_E1400714016_)))))
                    (_E1400714016_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1400614095_))
                                              (if (gx#stx-vector? _e13998_)
                                                  (let ((_g14349_
                                                         (_recur13993_
                                                          (vector->list
                                                           (gx#stx-unwrap__0
                                                            _e13998_))
                                                          _is-e?13999_)))
                                                    (begin
                                                      (let ((_g14350_
                                                             (values-count
                                                              _g14349_)))
                                                        (if (not (fx= _g14350_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g14350_)))
              (let ((_e14099_ (values-ref _g14349_ 0))
                    (_vars14100_ (values-ref _g14349_ 1)))
                (values (cons 'vector _e14099_) _vars14100_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e13998_)
                                                      (let ((_g14351_
                                                             (_recur13993_
                                                              (unbox (gx#stx-unwrap__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e13998_))
                      _is-e?13999_)))
                (begin
                  (let ((_g14352_ (values-count _g14351_)))
                    (if (not (fx= _g14352_ 2))
                        (error "Context expects 2 values" _g14352_)))
                  (let ((_e14102_ (values-ref _g14351_ 0))
                        (_vars14103_ (values-ref _g14351_ 1)))
                    (values (cons 'box _e14102_) _vars14103_))))
              (values (cons 'datum _e13998_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    (let ((_g14353_ (_recur13993_ _e13989_ gx#ellipsis?)))
                      (begin
                        (let ((_g14354_ (values-count _g14353_)))
                          (if (not (fx= _g14354_ 2))
                              (error "Context expects 2 values" _g14354_)))
                        (let ((_tree13995_ (values-ref _g14353_ 0))
                              (_vars13996_ (values-ref _g14353_ 1)))
                          (if (null? _vars13996_)
                              _tree13995_
                              (gx#raise-syntax-error
                               '#f
                               '"Missing ellipsis"
                               _stx13945_
                               _vars13996_)))))))))
        (let* ((_e1394913959_ _stx13945_)
               (_E1395113963_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _stx13945_)))
               (_E1395013985_
                (lambda ()
                  (if (gx#stx-pair? _e1394913959_)
                      (let ((_e1395213967_ (gx#syntax-e _e1394913959_)))
                        (let ((_hd1395313970_ (##car _e1395213967_))
                              (_tl1395413972_ (##cdr _e1395213967_)))
                          (if (gx#stx-pair? _tl1395413972_)
                              (let ((_e1395513975_
                                     (gx#syntax-e _tl1395413972_)))
                                (let ((_hd1395613978_ (##car _e1395513975_))
                                      (_tl1395713980_ (##cdr _e1395513975_)))
                                  (let ((_form13983_ _hd1395613978_))
                                    (if (gx#stx-null? _tl1395713980_)
                                        (if '#t
                                            (gx#stx-wrap-source
                                             (_generate13947_
                                              (_parse13948_ _form13983_))
                                             (gx#stx-source _stx13945_))
                                            (_E1395113963_))
                                        (_E1395113963_)))))
                              (_E1395113963_))))
                      (_E1395113963_)))))
          (_E1395013985_)))))
  (begin
    (define gx#macro-expand-syntax-case__opt-lambda13215
      (lambda (_stx13217_ _identifier=?13218_ _unwrap-e13219_ _wrap-e13220_)
        (letrec ((_generate-bindings13222_
                  (lambda (_target13807_
                           _ids13808_
                           _clauses13809_
                           _clause-ids13810_
                           _E13811_)
                    (letrec ((_generate113813_
                              (lambda (_clause13912_ _clause-id13913_ _E13914_)
                                (cons (cons _clause-id13913_ '())
                                      (cons (gx#core-list
                                             'lambda%
                                             (cons _target13807_ '())
                                             (_generate-clause13224_
                                              _target13807_
                                              _ids13808_
                                              _clause13912_
                                              _E13914_))
                                            '())))))
                      (let _lp13815_ ((_rest13817_ _clauses13809_)
                                      (_rest-ids13818_ _clause-ids13810_)
                                      (_bindings13819_ '()))
                        (let* ((_rest1382013828_ _rest13817_)
                               (_E1382313832_
                                (lambda ()
                                  (error '"No clause matching"
                                         _rest1382013828_)))
                               (_else1382213836_ (lambda () _bindings13819_))
                               (_K1382413900_
                                (lambda (_rest13839_ _clause13840_)
                                  (let* ((_rest-ids1384113848_ _rest-ids13818_)
                                         (_E1384313852_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids1384113848_)))
                                         (_K1384413888_
                                          (lambda (_rest-ids13855_
                                                   _clause-id13856_)
                                            (let* ((_rest-ids1385713865_
                                                    _rest-ids13855_)
                                                   (_E1386013869_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _rest-ids1385713865_)))
                                                   (_else1385913873_
                                                    (lambda ()
                                                      (cons (_generate113813_
                                                             _clause13840_
                                                             _clause-id13856_
                                                             _E13811_)
                                                            _bindings13819_)))
                                                   (_K1386113878_
                                                    (lambda (_next-clause-id13876_)
                                                      (_lp13815_
                                                       _rest13839_
                                                       _rest-ids13855_
                                                       (cons (_generate113813_
                                                              _clause13840_
                                                              _clause-id13856_
                                                              _next-clause-id13876_)
                                                             _bindings13819_)))))
                                              (if (##pair? _rest-ids1385713865_)
                                                  (let ((_hd1386213881_
                                                         (##car _rest-ids1385713865_))
                                                        (_tl1386313883_
                                                         (##cdr _rest-ids1385713865_)))
                                                    (let ((_next-clause-id13886_
                                                           _hd1386213881_))
                                                      (_K1386113878_
                                                       _next-clause-id13886_)))
                                                  (_else1385913873_))))))
                                    (if (##pair? _rest-ids1384113848_)
                                        (let ((_hd1384513891_
                                               (##car _rest-ids1384113848_))
                                              (_tl1384613893_
                                               (##cdr _rest-ids1384113848_)))
                                          (let* ((_clause-id13896_
                                                  _hd1384513891_)
                                                 (_rest-ids13898_
                                                  _tl1384613893_))
                                            (_K1384413888_
                                             _rest-ids13898_
                                             _clause-id13896_)))
                                        (_E1384313852_))))))
                          (if (##pair? _rest1382013828_)
                              (let ((_hd1382513903_ (##car _rest1382013828_))
                                    (_tl1382613905_ (##cdr _rest1382013828_)))
                                (let* ((_clause13908_ _hd1382513903_)
                                       (_rest13910_ _tl1382613905_))
                                  (_K1382413900_ _rest13910_ _clause13908_)))
                              (_else1382213836_)))))))
                 (_generate-body13223_
                  (lambda (_bindings13767_ _body13768_)
                    (let _recur13770_ ((_rest13772_ _bindings13767_))
                      (let* ((_rest1377313781_ _rest13772_)
                             (_E1377613785_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1377313781_)))
                             (_else1377513789_ (lambda () _body13768_))
                             (_K1377713795_
                              (lambda (_rest13792_ _hd13793_)
                                (gx#core-list
                                 'let-values
                                 (cons _hd13793_ '())
                                 (_recur13770_ _rest13792_)))))
                        (if (##pair? _rest1377313781_)
                            (let ((_hd1377813798_ (##car _rest1377313781_))
                                  (_tl1377913800_ (##cdr _rest1377313781_)))
                              (let* ((_hd13803_ _hd1377813798_)
                                     (_rest13805_ _tl1377913800_))
                                (_K1377713795_ _rest13805_ _hd13803_)))
                            (_else1377513789_))))))
                 (_generate-clause13224_
                  (lambda (_target13630_ _ids13631_ _clause13632_ _E13633_)
                    (letrec ((_generate113635_
                              (lambda (_hd13722_ _fender13723_ _body13724_)
                                (let ((_g14355_
                                       (_parse-clause13226_
                                        _hd13722_
                                        _ids13631_)))
                                  (begin
                                    (let ((_g14356_ (values-count _g14355_)))
                                      (if (not (fx= _g14356_ 2))
                                          (error "Context expects 2 values"
                                                 _g14356_)))
                                    (let ((_e13726_ (values-ref _g14355_ 0))
                                          (_mvars13727_
                                           (values-ref _g14355_ 1)))
                                      (let* ((_pvars13729_
                                              (map gx#syntax-local-rewrap
                                                   (gx#gentemps _mvars13727_)))
                                             (_E13731_
                                              (cons _E13633_
                                                    (cons _target13630_ '())))
                                             (_K13764_
                                              (gx#core-list
                                               'lambda%
                                               _pvars13729_
                                               (gx#core-list
                                                'let-syntax
                                                (map (lambda (_mvar13733_
                                                              _pvar13734_)
                                                       (let* ((_mvar1373513742_
                                                               _mvar13733_)
                                                              (_E1373713746_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (error '"No clause matching" _mvar1373513742_)))
                      (_K1373813752_
                       (lambda (_depth13749_ _id13750_)
                         (cons _id13750_
                               (cons (gx#core-list
                                      'make-syntax-pattern
                                      (gx#core-list 'quote _id13750_)
                                      (gx#core-list 'quote _pvar13734_)
                                      _depth13749_)
                                     '())))))
                 (if (##pair? _mvar1373513742_)
                     (let ((_hd1373913755_ (##car _mvar1373513742_))
                           (_tl1374013757_ (##cdr _mvar1373513742_)))
                       (let* ((_id13760_ _hd1373913755_)
                              (_depth13762_ _tl1374013757_))
                         (_K1373813752_ _depth13762_ _id13760_)))
                     (_E1373713746_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _mvars13727_
                                                     _pvars13729_)
                                                (if (eq? _fender13723_ '#t)
                                                    _body13724_
                                                    (gx#core-list
                                                     'if
                                                     _fender13723_
                                                     _body13724_
                                                     _E13731_))))))
                                        (_generate-match13225_
                                         _hd13722_
                                         _target13630_
                                         _e13726_
                                         _mvars13727_
                                         _K13764_
                                         _E13731_))))))))
                      (let* ((_e1363613656_ _clause13632_)
                             (_E1364513660_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _e1363613656_)))
                             (_E1363813694_
                              (lambda ()
                                (if (gx#stx-pair? _e1363613656_)
                                    (let ((_e1364613664_
                                           (gx#syntax-e _e1363613656_)))
                                      (let ((_hd1364713667_
                                             (##car _e1364613664_))
                                            (_tl1364813669_
                                             (##cdr _e1364613664_)))
                                        (let ((_hd13672_ _hd1364713667_))
                                          (if (gx#stx-pair? _tl1364813669_)
                                              (let ((_e1364913674_
                                                     (gx#syntax-e
                                                      _tl1364813669_)))
                                                (let ((_hd1365013677_
                                                       (##car _e1364913674_))
                                                      (_tl1365113679_
                                                       (##cdr _e1364913674_)))
                                                  (let ((_fender13682_
                                                         _hd1365013677_))
                                                    (if (gx#stx-pair?
                                                         _tl1365113679_)
                                                        (let ((_e1365213684_
                                                               (gx#syntax-e
                                                                _tl1365113679_)))
                                                          (let ((_hd1365313687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1365213684_))
                        (_tl1365413689_ (##cdr _e1365213684_)))
                    (let ((_body13692_ _hd1365313687_))
                      (if (gx#stx-null? _tl1365413689_)
                          (if '#t
                              (_generate113635_
                               _hd13672_
                               _fender13682_
                               _body13692_)
                              (_E1364513660_))
                          (_E1364513660_)))))
                (_E1364513660_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1364513660_)))))
                                    (_E1364513660_))))
                             (_E1363713718_
                              (lambda ()
                                (if (gx#stx-pair? _e1363613656_)
                                    (let ((_e1363913698_
                                           (gx#syntax-e _e1363613656_)))
                                      (let ((_hd1364013701_
                                             (##car _e1363913698_))
                                            (_tl1364113703_
                                             (##cdr _e1363913698_)))
                                        (let ((_hd13706_ _hd1364013701_))
                                          (if (gx#stx-pair? _tl1364113703_)
                                              (let ((_e1364213708_
                                                     (gx#syntax-e
                                                      _tl1364113703_)))
                                                (let ((_hd1364313711_
                                                       (##car _e1364213708_))
                                                      (_tl1364413713_
                                                       (##cdr _e1364213708_)))
                                                  (let ((_body13716_
                                                         _hd1364313711_))
                                                    (if (gx#stx-null?
                                                         _tl1364413713_)
                                                        (if '#t
                                                            (_generate113635_
                                                             _hd13706_
                                                             '#t
                                                             _body13716_)
                                                            (_E1363813694_))
                                                        (_E1363813694_)))))
                                              (_E1363813694_)))))
                                    (_E1363813694_)))))
                        (_E1363713718_)))))
                 (_generate-match13225_
                  (lambda (_where13389_
                           _target13390_
                           _hd13391_
                           _mvars13392_
                           _K13393_
                           _E13394_)
                    (letrec ((_BUG13396_
                              (lambda (_q13628_)
                                (error '"BUG: syntax-case; generate"
                                       _stx13217_
                                       _hd13391_
                                       _q13628_)))
                             (_recur13397_
                              (lambda (_e13482_
                                       _vars13483_
                                       _target13484_
                                       _E13485_
                                       _k13486_)
                                (let* ((_e1348713494_ _e13482_)
                                       (_E1348913498_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e1348713494_)))
                                       (_K1349013616_
                                        (lambda (_body13501_ _tag13502_)
                                          (let ((_$e13504_ _tag13502_))
                                            (if (eq? _$e13504_ 'any)
                                                (_k13486_ _vars13483_)
                                                (if (eq? _$e13504_ 'id)
                                                    (gx#core-list
                                                     'if
                                                     (gx#core-list
                                                      'identifier?
                                                      _target13484_)
                                                     (gx#core-list
                                                      'if
                                                      (gx#core-list
                                                       _identifier=?13218_
                                                       (gx#core-list
                                                        _wrap-e13220_
                                                        _body13501_)
                                                       _target13484_)
                                                      (_k13486_ _vars13483_)
                                                      _E13485_)
                                                     _E13485_)
                                                    (if (eq? _$e13504_ 'var)
                                                        (_k13486_
                                                         (cons (cons _body13501_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _target13484_)
                       _vars13483_))
                (if (eq? _$e13504_ 'cons)
                    (let ((_$e13507_ (gx#genident__1 'e))
                          (_$hd13508_ (gx#genident__1 'hd))
                          (_$tl13509_ (gx#genident__1 'tl)))
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _target13484_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$e13507_ '())
                                    (cons (gx#core-list
                                           _unwrap-e13219_
                                           _target13484_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$hd13508_ '())
                                     (cons (gx#core-list '##car _$e13507_)
                                           '()))
                               (cons (cons (cons _$tl13509_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$e13507_)
                                                 '()))
                                     '()))
                         (let* ((_body1351013517_ _body13501_)
                                (_E1351213521_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _body1351013517_)))
                                (_K1351313529_
                                 (lambda (_tl13524_ _hd13525_)
                                   (_recur13397_
                                    _hd13525_
                                    _vars13483_
                                    _$hd13508_
                                    _E13485_
                                    (lambda (_vars13527_)
                                      (_recur13397_
                                       _tl13524_
                                       _vars13527_
                                       _$tl13509_
                                       _E13485_
                                       _k13486_))))))
                           (if (##pair? _body1351013517_)
                               (let ((_hd1351413532_ (##car _body1351013517_))
                                     (_tl1351513534_ (##cdr _body1351013517_)))
                                 (let* ((_hd13537_ _hd1351413532_)
                                        (_tl13539_ _tl1351513534_))
                                   (_K1351313529_ _tl13539_ _hd13537_)))
                               (_E1351213521_)))))
                       _E13485_))
                    (if (eq? _$e13504_ 'splice)
                        (let* ((_body1354013547_ _body13501_)
                               (_E1354213551_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body1354013547_)))
                               (_K1354313600_
                                (lambda (_tl13554_ _hd13555_)
                                  (let* ((_rlen13557_
                                          (_splice-rlen13398_ _tl13554_))
                                         (_$target13559_
                                          (gx#genident__1 'target))
                                         (_$hd13561_ (gx#genident__1 'hd))
                                         (_$tl13563_ (gx#genident__1 'tl))
                                         (_$lp13565_ (gx#genident__1 'loop))
                                         (_$lp-e13567_ (gx#genident__1 'e))
                                         (_$lp-hd13569_
                                          (gx#genident__1 'lp-hd))
                                         (_$lp-tl13571_
                                          (gx#genident__1 'lp-tl))
                                         (_svars13573_
                                          (_splice-vars13399_ _hd13555_))
                                         (_lvars13575_
                                          (gx#gentemps _svars13573_))
                                         (_tlvars13577_
                                          (gx#gentemps _svars13573_))
                                         (_linit13581_
                                          (map (lambda (_var13579_)
                                                 (gx#core-list 'quote '()))
                                               _lvars13575_)))
                                    (letrec ((_make-loop13584_
                                              (lambda (_vars13586_)
                                                (gx#core-list
                                                 'letrec-values
                                                 (cons (cons (cons _$lp13565_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _$hd13561_ _lvars13575_)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-pair? _$hd13561_)
                             (gx#core-list
                              'let-values
                              (cons (cons (cons _$lp-e13567_ '())
                                          (cons (gx#core-list
                                                 _unwrap-e13219_
                                                 _$hd13561_)
                                                '()))
                                    '())
                              (gx#core-list
                               'let-values
                               (cons (cons (cons _$lp-hd13569_ '())
                                           (cons (gx#core-list
                                                  '##car
                                                  _$lp-e13567_)
                                                 '()))
                                     (cons (cons (cons _$lp-tl13571_ '())
                                                 (cons (gx#core-list
                                                        '##cdr
                                                        _$lp-e13567_)
                                                       '()))
                                           '()))
                               (_recur13397_
                                _hd13555_
                                '()
                                _$lp-hd13569_
                                _E13485_
                                (lambda (_hdvars13588_)
                                  (cons* _$lp13565_
                                         _$lp-tl13571_
                                         (map (lambda (_svar13590_ _lvar13591_)
                                                (gx#core-list
                                                 'cons
                                                 (assgetq _svar13590_
                                                          _hdvars13588_
                                                          _BUG13396_)
                                                 _lvar13591_))
                                              _svars13573_
                                              _lvars13575_))))))
                             (gx#core-list
                              'let-values
                              (map (lambda (_lvar13593_ _tlvar13594_)
                                     (cons (cons _tlvar13594_ '())
                                           (cons (gx#core-list
                                                  'reverse
                                                  _lvar13593_)
                                                 '())))
                                   _lvars13575_
                                   _tlvars13577_)
                              (_k13486_
                               (foldl (lambda (_svar13596_
                                               _tlvar13597_
                                               _r13598_)
                                        (cons (cons _svar13596_ _tlvar13597_)
                                              _r13598_))
                                      _vars13586_
                                      _svars13573_
                                      _tlvars13577_)))))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons* _$lp13565_
                                                        _$target13559_
                                                        _linit13581_)))))
                                      (gx#core-list
                                       'if
                                       (gx#core-list
                                        'stx-pair/null?
                                        _target13484_)
                                       (gx#core-list
                                        'if
                                        (gx#core-list
                                         'fx>=
                                         (gx#core-list
                                          'stx-length
                                          _target13484_)
                                         _rlen13557_)
                                        (gx#core-list
                                         'let-values
                                         (cons (cons (cons _$target13559_
                                                           (cons _$tl13563_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (gx#core-list
                                                            'syntax-split-splice
                                                            _target13484_
                                                            _rlen13557_)
                                                           '()))
                                               '())
                                         (_recur13397_
                                          _tl13554_
                                          _vars13483_
                                          _$tl13563_
                                          _E13485_
                                          _make-loop13584_))
                                        _E13485_)
                                       _E13485_))))))
                          (if (##pair? _body1354013547_)
                              (let ((_hd1354413603_ (##car _body1354013547_))
                                    (_tl1354513605_ (##cdr _body1354013547_)))
                                (let* ((_hd13608_ _hd1354413603_)
                                       (_tl13610_ _tl1354513605_))
                                  (_K1354313600_ _tl13610_ _hd13608_)))
                              (_E1354213551_)))
                        (if (eq? _$e13504_ 'null)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-null? _target13484_)
                             (_k13486_ _vars13483_)
                             _E13485_)
                            (if (eq? _$e13504_ 'vector)
                                (let ((_$e13612_ (gx#genident__1 'e)))
                                  (gx#core-list
                                   'if
                                   (gx#core-list 'stx-vector? _target13484_)
                                   (gx#core-list
                                    'let-values
                                    (cons (cons (cons _$e13612_ '())
                                                (cons (gx#core-list
                                                       'vector->list
                                                       (gx#core-list
                                                        _unwrap-e13219_
                                                        _target13484_))
                                                      '()))
                                          '())
                                    (_recur13397_
                                     _body13501_
                                     _vars13483_
                                     _$e13612_
                                     _E13485_
                                     _k13486_))
                                   _E13485_))
                                (if (eq? _$e13504_ 'box)
                                    (let ((_$e13614_ (gx#genident__1 'e)))
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-box? _target13484_)
                                       (gx#core-list
                                        'let-values
                                        (cons (cons (cons _$e13614_ '())
                                                    (cons (gx#core-list
                                                           'unbox
                                                           (gx#core-list
                                                            _unwrap-e13219_
                                                            _target13484_))
                                                          '()))
                                              '())
                                        (_recur13397_
                                         _body13501_
                                         _vars13483_
                                         _$e13614_
                                         _E13485_
                                         _k13486_))
                                       _E13485_))
                                    (if (eq? _$e13504_ 'datum)
                                        (gx#core-list
                                         'if
                                         (gx#core-list
                                          'stx-datum?
                                          _target13484_)
                                         (gx#core-list
                                          'if
                                          (gx#core-list
                                           'equal?
                                           (gx#core-list 'stx-e _target13484_)
                                           _body13501_)
                                          (_k13486_ _vars13483_)
                                          _E13485_)
                                         _E13485_)
                                        (_BUG13396_ _e13482_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (##pair? _e1348713494_)
                                      (let ((_hd1349113619_
                                             (##car _e1348713494_))
                                            (_tl1349213621_
                                             (##cdr _e1348713494_)))
                                        (let* ((_tag13624_ _hd1349113619_)
                                               (_body13626_ _tl1349213621_))
                                          (_K1349013616_
                                           _body13626_
                                           _tag13624_)))
                                      (_E1348913498_)))))
                             (_splice-rlen13398_
                              (lambda (_e13444_)
                                (let _lp13446_ ((_e13448_ _e13444_)
                                                (_n13449_ '0))
                                  (let* ((_e1345013457_ _e13448_)
                                         (_E1345213461_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1345013457_)))
                                         (_K1345313470_
                                          (lambda (_body13464_ _tag13465_)
                                            (let ((_$e13467_ _tag13465_))
                                              (if (eq? _$e13467_ 'splice)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Ambiguous pattern"
                                                   _stx13217_
                                                   _where13389_)
                                                  (if (eq? _$e13467_ 'cons)
                                                      (_lp13446_
                                                       (cdr _body13464_)
                                                       (fx+ _n13449_ '1))
                                                      _n13449_))))))
                                    (if (##pair? _e1345013457_)
                                        (let ((_hd1345413473_
                                               (##car _e1345013457_))
                                              (_tl1345513475_
                                               (##cdr _e1345013457_)))
                                          (let* ((_tag13478_ _hd1345413473_)
                                                 (_body13480_ _tl1345513475_))
                                            (_K1345313470_
                                             _body13480_
                                             _tag13478_)))
                                        (_E1345213461_))))))
                             (_splice-vars13399_
                              (lambda (_e13406_)
                                (let _recur13408_ ((_e13410_ _e13406_)
                                                   (_vars13411_ '()))
                                  (let* ((_e1341213419_ _e13410_)
                                         (_E1341413423_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1341213419_)))
                                         (_K1341513432_
                                          (lambda (_body13426_ _tag13427_)
                                            (let ((_$e13429_ _tag13427_))
                                              (if (eq? _$e13429_ 'var)
                                                  (cons _body13426_
                                                        _vars13411_)
                                                  (if (memq _$e13429_
                                                            '(cons splice))
                                                      (_recur13408_
                                                       (cdr _body13426_)
                                                       (_recur13408_
                                                        (car _body13426_)
                                                        _vars13411_))
                                                      (if (memq _$e13429_
                                                                '(vector box))
                                                          (_recur13408_
                                                           _body13426_
                                                           _vars13411_)
                                                          _vars13411_)))))))
                                    (if (##pair? _e1341213419_)
                                        (let ((_hd1341613435_
                                               (##car _e1341213419_))
                                              (_tl1341713437_
                                               (##cdr _e1341213419_)))
                                          (let* ((_tag13440_ _hd1341613435_)
                                                 (_body13442_ _tl1341713437_))
                                            (_K1341513432_
                                             _body13442_
                                             _tag13440_)))
                                        (_E1341413423_))))))
                             (_make-body13400_
                              (lambda (_vars13402_)
                                (cons _K13393_
                                      (map (lambda (_mvar13404_)
                                             (assgetq (car _mvar13404_)
                                                      _vars13402_
                                                      _BUG13396_))
                                           _mvars13392_)))))
                      (_recur13397_
                       _hd13391_
                       '()
                       _target13390_
                       _E13394_
                       _make-body13400_))))
                 (_parse-clause13226_
                  (lambda (_hd13295_ _ids13296_)
                    (let _recur13298_ ((_e13300_ _hd13295_)
                                       (_vars13301_ '())
                                       (_depth13302_ '0))
                      (if (gx#identifier? _e13300_)
                          (if (gx#underscore? _e13300_)
                              (values '(any) _vars13301_)
                              (if (gx#ellipsis? _e13300_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Misplaced ellipsis"
                                   _stx13217_
                                   _hd13295_)
                                  (if (find (lambda (_id13304_)
                                              (gx#bound-identifier=?
                                               _e13300_
                                               _id13304_))
                                            _ids13296_)
                                      (values (cons 'id _e13300_) _vars13301_)
                                      (if (find (lambda (_var13306_)
                                                  (gx#bound-identifier=?
                                                   _e13300_
                                                   (car _var13306_)))
                                                _vars13301_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Duplicate pattern variable"
                                           _stx13217_
                                           _e13300_)
                                          (values (cons 'var _e13300_)
                                                  (cons (cons _e13300_
                                                              _depth13302_)
                                                        _vars13301_))))))
                          (if (gx#stx-pair? _e13300_)
                              (let* ((_e1330713314_ _e13300_)
                                     (_E1330913318_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _e1330713314_)))
                                     (_E1330813379_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1330713314_)
                                            (let ((_e1331013322_
                                                   (gx#syntax-e
                                                    _e1330713314_)))
                                              (let ((_hd1331113325_
                                                     (##car _e1331013322_))
                                                    (_tl1331213327_
                                                     (##cdr _e1331013322_)))
                                                (let* ((_hd13330_
                                                        _hd1331113325_)
                                                       (_rest13332_
                                                        _tl1331213327_))
                                                  (if '#t
                                                      (let* ((_make-pair13347_
                                                              (lambda (_tag13334_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd13335_
                               _tl13336_)
                        (let* ((_hd-depth13338_
                                (if (eq? _tag13334_ 'splice)
                                    (fx+ _depth13302_ '1)
                                    _depth13302_))
                               (_g14357_
                                (_recur13298_
                                 _hd13335_
                                 _vars13301_
                                 _hd-depth13338_)))
                          (begin
                            (let ((_g14358_ (values-count _g14357_)))
                              (if (not (fx= _g14358_ 2))
                                  (error "Context expects 2 values" _g14358_)))
                            (let ((_hd13340_ (values-ref _g14357_ 0))
                                  (_vars13341_ (values-ref _g14357_ 1)))
                              (let ((_g14359_
                                     (_recur13298_
                                      _tl13336_
                                      _vars13341_
                                      _depth13302_)))
                                (begin
                                  (let ((_g14360_ (values-count _g14359_)))
                                    (if (not (fx= _g14360_ 2))
                                        (error "Context expects 2 values"
                                               _g14360_)))
                                  (let ((_tl13343_ (values-ref _g14359_ 0))
                                        (_vars13344_ (values-ref _g14359_ 1)))
                                    (let ()
                                      (values (cons* _tag13334_
                                                     _hd13340_
                                                     _tl13343_)
                                              _vars13344_))))))))))
                     (_e1334813355_ _rest13332_)
                     (_E1335013359_
                      (lambda ()
                        (_make-pair13347_ 'cons _hd13330_ _rest13332_)))
                     (_E1334913375_
                      (lambda ()
                        (if (gx#stx-pair? _e1334813355_)
                            (let ((_e1335113363_ (gx#syntax-e _e1334813355_)))
                              (let ((_hd1335213366_ (##car _e1335113363_))
                                    (_tl1335313368_ (##cdr _e1335113363_)))
                                (let* ((_rest-hd13371_ _hd1335213366_)
                                       (_rest-tl13373_ _tl1335313368_))
                                  (if '#t
                                      (if (gx#ellipsis? _rest-hd13371_)
                                          (_make-pair13347_
                                           'splice
                                           _hd13330_
                                           _rest-tl13373_)
                                          (_make-pair13347_
                                           'cons
                                           _hd13330_
                                           _rest13332_))
                                      (_E1335013359_)))))
                            (_E1335013359_)))))
                (_E1334913375_))
              (_E1330913318_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1330913318_)))))
                                (_E1330813379_))
                              (if (gx#stx-null? _e13300_)
                                  (values '(null) _vars13301_)
                                  (if (gx#stx-vector? _e13300_)
                                      (let ((_g14361_
                                             (_recur13298_
                                              (vector->list
                                               (gx#syntax-e _e13300_))
                                              _vars13301_
                                              _depth13302_)))
                                        (begin
                                          (let ((_g14362_
                                                 (values-count _g14361_)))
                                            (if (not (fx= _g14362_ 2))
                                                (error "Context expects 2 values"
                                                       _g14362_)))
                                          (let ((_e13383_
                                                 (values-ref _g14361_ 0))
                                                (_vars13384_
                                                 (values-ref _g14361_ 1)))
                                            (values (cons 'vector _e13383_)
                                                    _vars13384_))))
                                      (if (gx#stx-box? _e13300_)
                                          (let ((_g14363_
                                                 (_recur13298_
                                                  (unbox (gx#syntax-e
                                                          _e13300_))
                                                  _vars13301_
                                                  _depth13302_)))
                                            (begin
                                              (let ((_g14364_
                                                     (values-count _g14363_)))
                                                (if (not (fx= _g14364_ 2))
                                                    (error "Context expects 2 values"
                                                           _g14364_)))
                                              (let ((_e13386_
                                                     (values-ref _g14363_ 0))
                                                    (_vars13387_
                                                     (values-ref _g14363_ 1)))
                                                (values (cons 'box _e13386_)
                                                        _vars13387_))))
                                          (if (gx#stx-datum? _e13300_)
                                              (values (cons 'datum
                                                            (gx#stx-e
                                                             _e13300_))
                                                      _vars13301_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad pattern"
                                               _stx13217_
                                               _e13300_)))))))))))
          (let* ((_e1322713240_ _stx13217_)
                 (_E1322913244_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1322713240_)))
                 (_E1322813291_
                  (lambda ()
                    (if (gx#stx-pair? _e1322713240_)
                        (let ((_e1323013248_ (gx#syntax-e _e1322713240_)))
                          (let ((_hd1323113251_ (##car _e1323013248_))
                                (_tl1323213253_ (##cdr _e1323013248_)))
                            (if (gx#stx-pair? _tl1323213253_)
                                (let ((_e1323313256_
                                       (gx#syntax-e _tl1323213253_)))
                                  (let ((_hd1323413259_ (##car _e1323313256_))
                                        (_tl1323513261_ (##cdr _e1323313256_)))
                                    (let ((_expr13264_ _hd1323413259_))
                                      (if (gx#stx-pair? _tl1323513261_)
                                          (let ((_e1323613266_
                                                 (gx#syntax-e _tl1323513261_)))
                                            (let ((_hd1323713269_
                                                   (##car _e1323613266_))
                                                  (_tl1323813271_
                                                   (##cdr _e1323613266_)))
                                              (let* ((_ids13274_
                                                      _hd1323713269_)
                                                     (_clauses13276_
                                                      _tl1323813271_))
                                                (if '#t
                                                    (if (not (gx#identifier-list?
                                                              _ids13274_))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad template identifier list"
                                                         _stx13217_
                                                         _ids13274_)
                                                        (if (not (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _clauses13276_))
                    (gx#raise-syntax-error '#f '"Bad syntax" _stx13217_)
                    (let* ((_ids13278_ (gx#syntax->list _ids13274_))
                           (_clauses13280_ (gx#syntax->list _clauses13276_))
                           (_clause-ids13282_ (gx#gentemps _clauses13280_))
                           (_E13284_ (gx#genident__0))
                           (_target13286_ (gx#genident__0))
                           (_first13288_
                            (if (null? _clauses13280_)
                                _E13284_
                                (car _clause-ids13282_))))
                      (gx#stx-wrap-source
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _E13284_ '())
                                    (cons (gx#core-list
                                           'lambda%
                                           (cons _target13286_ '())
                                           (gx#core-list
                                            'raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _target13286_))
                                          '()))
                              '())
                        (_generate-body13223_
                         (_generate-bindings13222_
                          _target13286_
                          _ids13278_
                          _clauses13280_
                          _clause-ids13282_
                          _E13284_)
                         (cons _first13288_ (cons _expr13264_ '()))))
                       (gx#stx-source _stx13217_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1322913244_)))))
                                          (_E1322913244_)))))
                                (_E1322913244_))))
                        (_E1322913244_)))))
            (_E1322813291_)))))
    (begin
      (define gx#macro-expand-syntax-case__0
        (lambda (_stx13919_)
          (let* ((_identifier=?13921_ 'free-identifier=?)
                 (_unwrap-e13923_ 'syntax-e)
                 (_wrap-e13925_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda13215
             _stx13919_
             _identifier=?13921_
             _unwrap-e13923_
             _wrap-e13925_))))
      (define gx#macro-expand-syntax-case__1
        (lambda (_stx13927_ _identifier=?13928_)
          (let* ((_unwrap-e13930_ 'syntax-e) (_wrap-e13932_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda13215
             _stx13927_
             _identifier=?13928_
             _unwrap-e13930_
             _wrap-e13932_))))
      (define gx#macro-expand-syntax-case__2
        (lambda (_stx13934_ _identifier=?13935_ _unwrap-e13936_)
          (let ((_wrap-e13938_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda13215
             _stx13934_
             _identifier=?13935_
             _unwrap-e13936_
             _wrap-e13938_))))
      (define gx#macro-expand-syntax-case
        (lambda _g14366_
          (let ((_g14365_ (length _g14366_)))
            (cond ((fx= _g14365_ 1)
                   (apply gx#macro-expand-syntax-case__0 _g14366_))
                  ((fx= _g14365_ 2)
                   (apply gx#macro-expand-syntax-case__1 _g14366_))
                  ((fx= _g14365_ 3)
                   (apply gx#macro-expand-syntax-case__2 _g14366_))
                  ((fx= _g14365_ 4)
                   (apply gx#macro-expand-syntax-case__opt-lambda13215
                          _g14366_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-syntax-case
                    _g14366_))))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx13214_)
      (if (gx#identifier? _stx13214_)
          (##structure-instance-of?
           (gx#syntax-local-e__opt-lambda4060 _stx13214_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd13172_ . _rest13173_)
      (let ((_len13175_ (length _hd13172_)))
        (let _lp13177_ ((_rest13179_ _rest13173_))
          (let* ((_rest1318013188_ _rest13179_)
                 (_E1318313192_
                  (lambda () (error '"No clause matching" _rest1318013188_)))
                 (_else1318213196_ (lambda () '#!void))
                 (_K1318413202_
                  (lambda (_rest13199_ _hd13200_)
                    (if (fx= _len13175_ (length _hd13200_))
                        (_lp13177_ _rest13199_)
                        (gx#raise-syntax-error
                         '#f
                         '"Splice length mismatch"
                         _hd13200_)))))
            (if (##pair? _rest1318013188_)
                (let ((_hd1318513205_ (##car _rest1318013188_))
                      (_tl1318613207_ (##cdr _rest1318013188_)))
                  (let* ((_hd13210_ _hd1318513205_)
                         (_rest13212_ _tl1318613207_))
                    (_K1318413202_ _rest13212_ _hd13210_)))
                (_else1318213196_)))))))
  (define gx#syntax-split-splice
    (lambda (_stx13130_ _n13131_)
      (let _lp13133_ ((_rest13135_ _stx13130_) (_r13136_ '()))
        (if (gx#stx-pair? _rest13135_)
            (let* ((_g1313713144_ (gx#syntax-e _rest13135_))
                   (_E1313913148_
                    (lambda () (error '"No clause matching" _g1313713144_)))
                   (_K1314013154_
                    (lambda (_rest13151_ _hd13152_)
                      (_lp13133_ _rest13151_ (cons _hd13152_ _r13136_)))))
              (if (##pair? _g1313713144_)
                  (let ((_hd1314113157_ (##car _g1313713144_))
                        (_tl1314213159_ (##cdr _g1313713144_)))
                    (let* ((_hd13162_ _hd1314113157_)
                           (_rest13164_ _tl1314213159_))
                      (_K1314013154_ _rest13164_ _hd13162_)))
                  (_E1313913148_)))
            (let _lp13166_ ((_n13168_ _n13131_)
                            (_l13169_ _r13136_)
                            (_r13170_ _rest13135_))
              (if (null? _l13169_)
                  (values _l13169_ _r13170_)
                  (if (fxpositive? _n13168_)
                      (_lp13166_
                       (fx- _n13168_ '1)
                       (cdr _l13169_)
                       (cons (car _l13169_) _r13170_))
                      (values (reverse _l13169_) _r13170_)))))))))
