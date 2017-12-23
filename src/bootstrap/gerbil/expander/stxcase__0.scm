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
    (lambda _$args14544_
      (apply make-struct-instance gx#syntax-pattern::t _$args14544_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self14541_ _stx14542_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx14542_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx14145_)
      (letrec ((_generate14147_
                (lambda (_e14374_)
                  (letrec ((_BUG14376_
                            (lambda (_q14539_)
                              (error '"BUG: syntax; generate"
                                     _stx14145_
                                     _e14374_
                                     _q14539_)))
                           (_local-pattern-e14377_
                            (lambda (_pat14537_)
                              (gx#syntax-local-rewrap
                               (##structure-ref
                                _pat14537_
                                '2
                                gx#syntax-pattern::t
                                '#f))))
                           (_getvar14378_
                            (lambda (_q14534_ _vars14535_)
                              (assgetq _q14534_ _vars14535_ _BUG14376_)))
                           (_getarg14379_
                            (lambda (_arg14500_ _vars14501_)
                              (let* ((_arg1450214509_ _arg14500_)
                                     (_E1450414513_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _arg1450214509_)))
                                     (_K1450514522_
                                      (lambda (_e14516_ _tag14517_)
                                        (let ((_$e14519_ _tag14517_))
                                          (if (eq? _$e14519_ 'ref)
                                              (_getvar14378_
                                               _e14516_
                                               _vars14501_)
                                              (if (eq? _$e14519_ 'pattern)
                                                  (_local-pattern-e14377_
                                                   _e14516_)
                                                  (_BUG14376_ _arg14500_)))))))
                                (if (##pair? _arg1450214509_)
                                    (let ((_hd1450614525_
                                           (##car _arg1450214509_))
                                          (_tl1450714527_
                                           (##cdr _arg1450214509_)))
                                      (let* ((_tag14530_ _hd1450614525_)
                                             (_e14532_ _tl1450714527_))
                                        (_K1450514522_ _e14532_ _tag14530_)))
                                    (_E1450414513_))))))
                    (let _recur14381_ ((_e14383_ _e14374_) (_vars14384_ '()))
                      (let* ((_e1438514392_ _e14383_)
                             (_E1438714396_
                              (lambda ()
                                (error '"No clause matching" _e1438514392_)))
                             (_K1438814488_
                              (lambda (_body14399_ _tag14400_)
                                (let ((_$e14402_ _tag14400_))
                                  (if (eq? _$e14402_ 'datum)
                                      (gx#core-list 'quote _body14399_)
                                      (if (eq? _$e14402_ 'term)
                                          (let* ((_id14405_
                                                  (gx#syntax-local-unwrap
                                                   _body14399_))
                                                 (_marks14407_
                                                  (##direct-structure-ref
                                                   _id14405_
                                                   '3
                                                   gx#identifier-wrap::t
                                                   '#f)))
                                            (if (null? _marks14407_)
                                                (gx#core-list
                                                 'datum->syntax
                                                 '#f
                                                 (gx#core-list
                                                  'quote
                                                  _body14399_))
                                                (gx#core-list
                                                 'datum->syntax
                                                 (gx#core-list
                                                  'quote-syntax
                                                  _body14399_)
                                                 (gx#core-list
                                                  'quote
                                                  _body14399_)
                                                 '#f
                                                 '#f)))
                                          (if (eq? _$e14402_ 'pattern)
                                              (_local-pattern-e14377_
                                               _body14399_)
                                              (if (eq? _$e14402_ 'ref)
                                                  (_getvar14378_
                                                   _body14399_
                                                   _vars14384_)
                                                  (if (eq? _$e14402_ 'cons)
                                                      (gx#core-list
                                                       'cons
                                                       (_recur14381_
                                                        (car _body14399_)
                                                        _vars14384_)
                                                       (_recur14381_
                                                        (cdr _body14399_)
                                                        _vars14384_))
                                                      (if (eq? _$e14402_
                                                               'vector)
                                                          (gx#core-list
                                                           'list->vector
                                                           (_recur14381_
                                                            _body14399_
                                                            _vars14384_))
                                                          (if (eq? _$e14402_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'box)
                      (gx#core-list
                       'box
                       (_recur14381_ _body14399_ _vars14384_))
                      (if (eq? _$e14402_ 'splice)
                          (let* ((_body1440914420_ _body14399_)
                                 (_E1441114424_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _body1440914420_)))
                                 (_K1441214462_
                                  (lambda (_args14427_
                                           _iv14428_
                                           _hd14429_
                                           _depth14430_)
                                    (let* ((_targets14436_
                                            (map (lambda (_g1443114433_)
                                                   (_getarg14379_
                                                    _g1443114433_
                                                    _vars14384_))
                                                 _args14427_))
                                           (_fold-in14438_
                                            (gx#gentemps _args14427_))
                                           (_fold-out14440_ (gx#genident__0))
                                           (_lambda-args14442_
                                            (foldr1 cons
                                                    (cons _fold-out14440_ '())
                                                    _fold-in14438_))
                                           (_lambda-body14459_
                                            (if (fx> _depth14430_ '1)
                                                (let ((_r-args14450_
                                                       (map (lambda (_arg14444_)
                                                              (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cdr _arg14444_)))
                    _args14427_))
              (_r-vars14451_
               (foldr (lambda (_arg14446_ _var14447_ _r14448_)
                        (cons (cons (cdr _arg14446_) _var14447_) _r14448_))
                      _vars14384_
                      _args14427_
                      _fold-in14438_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur14381_
                                                   (cons* 'splice
                                                          (fx- _depth14430_ '1)
                                                          _hd14429_
                                                          (cons 'var
                                                                _fold-out14440_)
                                                          _r-args14450_)
                                                   _r-vars14451_))
                                                (let ((_hd-vars14457_
                                                       (foldr (lambda (_arg14453_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _var14454_
                               _r14455_)
                        (cons (cons (cdr _arg14453_) _var14454_) _r14455_))
                      _vars14384_
                      _args14427_
                      _fold-in14438_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#core-list
                                                   'cons
                                                   (_recur14381_
                                                    _hd14429_
                                                    _hd-vars14457_)
                                                   _fold-out14440_)))))
                                      (gx#core-list
                                       'begin
                                       (if (fx> (length _targets14436_) '1)
                                           (gx#core-cons*
                                            'syntax-check-splice-targets
                                            _targets14436_)
                                           '#!void)
                                       (gx#core-cons*
                                        'foldr
                                        (gx#core-list
                                         'lambda%
                                         _lambda-args14442_
                                         _lambda-body14459_)
                                        (_recur14381_ _iv14428_ _vars14384_)
                                        _targets14436_))))))
                            (if (##pair? _body1440914420_)
                                (let ((_hd1441314465_ (##car _body1440914420_))
                                      (_tl1441414467_
                                       (##cdr _body1440914420_)))
                                  (let ((_depth14470_ _hd1441314465_))
                                    (if (##pair? _tl1441414467_)
                                        (let ((_hd1441514472_
                                               (##car _tl1441414467_))
                                              (_tl1441614474_
                                               (##cdr _tl1441414467_)))
                                          (let ((_hd14477_ _hd1441514472_))
                                            (if (##pair? _tl1441614474_)
                                                (let ((_hd1441714479_
                                                       (##car _tl1441614474_))
                                                      (_tl1441814481_
                                                       (##cdr _tl1441614474_)))
                                                  (let* ((_iv14484_
                                                          _hd1441714479_)
                                                         (_args14486_
                                                          _tl1441814481_))
                                                    (_K1441214462_
                                                     _args14486_
                                                     _iv14484_
                                                     _hd14477_
                                                     _depth14470_)))
                                                (_E1441114424_))))
                                        (_E1441114424_))))
                                (_E1441114424_)))
                          (if (eq? _$e14402_ 'var)
                              _body14399_
                              (_BUG14376_ _e14383_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (if (##pair? _e1438514392_)
                            (let ((_hd1438914491_ (##car _e1438514392_))
                                  (_tl1439014493_ (##cdr _e1438514392_)))
                              (let* ((_tag14496_ _hd1438914491_)
                                     (_body14498_ _tl1439014493_))
                                (_K1438814488_ _body14498_ _tag14496_)))
                            (_E1438714396_)))))))
               (_parse14148_
                (lambda (_e14189_)
                  (letrec ((_make-cons14191_
                            (lambda (_hd14366_ _tl14367_)
                              (let ((_g14546_ _hd14366_) (_g14548_ _tl14367_))
                                (begin
                                  (let ((_g14547_ (values-count _g14546_)))
                                    (if (not (fx= _g14547_ 2))
                                        (error "Context expects 2 values"
                                               _g14547_)))
                                  (let ((_g14549_ (values-count _g14548_)))
                                    (if (not (fx= _g14549_ 2))
                                        (error "Context expects 2 values"
                                               _g14549_)))
                                  (let ((_hd-e14369_ (values-ref _g14546_ 0))
                                        (_hd-vars14370_
                                         (values-ref _g14546_ 1)))
                                    (let ((_tl-e14371_ (values-ref _g14548_ 0))
                                          (_tl-vars14372_
                                           (values-ref _g14548_ 1)))
                                      (values (cons* 'cons
                                                     _hd-e14369_
                                                     _tl-e14371_)
                                              (append _hd-vars14370_
                                                      _tl-vars14372_))))))))
                           (_make-splice14192_
                            (lambda (_where14305_
                                     _depth14306_
                                     _hd14307_
                                     _tl14308_)
                              (let ((_g14550_ _hd14307_) (_g14552_ _tl14308_))
                                (begin
                                  (let ((_g14551_ (values-count _g14550_)))
                                    (if (not (fx= _g14551_ 2))
                                        (error "Context expects 2 values"
                                               _g14551_)))
                                  (let ((_g14553_ (values-count _g14552_)))
                                    (if (not (fx= _g14553_ 2))
                                        (error "Context expects 2 values"
                                               _g14553_)))
                                  (let ((_hd-e14310_ (values-ref _g14550_ 0))
                                        (_hd-vars14311_
                                         (values-ref _g14550_ 1)))
                                    (let ((_tl-e14312_ (values-ref _g14552_ 0))
                                          (_tl-vars14313_
                                           (values-ref _g14552_ 1)))
                                      (let _lp14315_ ((_rest14317_
                                                       _hd-vars14311_)
                                                      (_targets14318_ '())
                                                      (_vars14319_
                                                       _tl-vars14313_))
                                        (let* ((_rest1432014330_ _rest14317_)
                                               (_E1432314334_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _rest1432014330_)))
                                               (_else1432214338_
                                                (lambda ()
                                                  (if (null? _targets14318_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Misplaced ellipsis"
                                                       _stx14145_
                                                       _where14305_)
                                                      (values (cons* 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _depth14306_
                             _hd-e14310_
                             _tl-e14312_
                             _targets14318_)
                      _vars14319_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_K1432414347_
                                                (lambda (_rest14341_
                                                         _hd-pat14342_
                                                         _hd-depth*14343_)
                                                  (let ((_hd-depth14345_
                                                         (fx- _hd-depth*14343_
                                                              _depth14306_)))
                                                    (if (fxpositive?
                                                         _hd-depth14345_)
                                                        (_lp14315_
                                                         _rest14341_
                                                         (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd-pat14342_)
                       _targets14318_)
                 (cons (cons _hd-depth14345_ _hd-pat14342_) _vars14319_))
                (if (fxzero? _hd-depth14345_)
                    (_lp14315_
                     _rest14341_
                     (cons (cons 'pattern _hd-pat14342_) _targets14318_)
                     _vars14319_)
                    (gx#raise-syntax-error
                     '#f
                     '"Too many ellipses"
                     _stx14145_
                     _where14305_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1432014330_)
                                              (let ((_hd1432514350_
                                                     (##car _rest1432014330_))
                                                    (_tl1432614352_
                                                     (##cdr _rest1432014330_)))
                                                (if (##pair? _hd1432514350_)
                                                    (let ((_hd1432714355_
                                                           (##car _hd1432514350_))
                                                          (_tl1432814357_
                                                           (##cdr _hd1432514350_)))
                                                      (let* ((_hd-depth*14360_
                                                              _hd1432714355_)
                                                             (_hd-pat14362_
                                                              _tl1432814357_)
                                                             (_rest14364_
                                                              _tl1432614352_))
                                                        (_K1432414347_
                                                         _rest14364_
                                                         _hd-pat14362_
                                                         _hd-depth*14360_)))
                                                    (_else1432214338_)))
                                              (_else1432214338_))))))))))
                           (_recur14193_
                            (lambda (_e14198_ _is-e?14199_)
                              (if (_is-e?14199_ _e14198_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Mislpaced ellipsis"
                                   _stx14145_)
                                  (if (gx#syntax-local-pattern? _e14198_)
                                      (let* ((_pat14201_
                                              (gx#syntax-local-e__0 _e14198_))
                                             (_depth14203_
                                              (##structure-ref
                                               _pat14201_
                                               '3
                                               gx#syntax-pattern::t
                                               '#f)))
                                        (if (fxpositive? _depth14203_)
                                            (values (cons 'ref _pat14201_)
                                                    (cons (cons _depth14203_
                                                                _pat14201_)
                                                          '()))
                                            (values (cons 'pattern _pat14201_)
                                                    '())))
                                      (if (gx#identifier? _e14198_)
                                          (values (cons 'term _e14198_) '())
                                          (if (gx#stx-pair? _e14198_)
                                              (let* ((_e1420514212_ _e14198_)
                                                     (_E1420714216_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _e1420514212_)))
                                                     (_E1420614295_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e1420514212_)
                                                            (let ((_e1420814220_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e1420514212_)))
                      (let ((_hd1420914223_ (##car _e1420814220_))
                            (_tl1421014225_ (##cdr _e1420814220_)))
                        (let* ((_hd14228_ _hd1420914223_)
                               (_rest14230_ _tl1421014225_))
                          (if '#t
                              (if (_is-e?14199_ _hd14228_)
                                  (let* ((_e1423114238_ _rest14230_)
                                         (_E1423314242_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _stx14145_
                                             _e14198_)))
                                         (_E1423214256_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1423114238_)
                                                (let ((_e1423414246_
                                                       (gx#syntax-e
                                                        _e1423114238_)))
                                                  (let ((_hd1423514249_
                                                         (##car _e1423414246_))
                                                        (_tl1423614251_
                                                         (##cdr _e1423414246_)))
                                                    (let ((_rest14254_
                                                           _hd1423514249_))
                                                      (if (gx#stx-null?
                                                           _tl1423614251_)
                                                          (if '#t
                                                              (_recur14193_
                                                               _rest14254_
                                                               false)
                                                              (_E1423314242_))
                                                          (_E1423314242_)))))
                                                (_E1423314242_)))))
                                    (_E1423214256_))
                                  (let _lp14260_ ((_rest14262_ _rest14230_)
                                                  (_depth14263_ '0))
                                    (let* ((_e1426414271_ _rest14262_)
                                           (_E1426614275_
                                            (lambda ()
                                              (if (fxpositive? _depth14263_)
                                                  (_make-splice14192_
                                                   _e14198_
                                                   _depth14263_
                                                   (_recur14193_
                                                    _hd14228_
                                                    _is-e?14199_)
                                                   (_recur14193_
                                                    _rest14262_
                                                    _is-e?14199_))
                                                  (_make-cons14191_
                                                   (_recur14193_
                                                    _hd14228_
                                                    _is-e?14199_)
                                                   (_recur14193_
                                                    _rest14262_
                                                    _is-e?14199_)))))
                                           (_E1426514291_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1426414271_)
                                                  (let ((_e1426714279_
                                                         (gx#syntax-e
                                                          _e1426414271_)))
                                                    (let ((_hd1426814282_
                                                           (##car _e1426714279_))
                                                          (_tl1426914284_
                                                           (##cdr _e1426714279_)))
                                                      (let* ((_rest-hd14287_
                                                              _hd1426814282_)
                                                             (_rest-tl14289_
                                                              _tl1426914284_))
                                                        (if '#t
                                                            (if (_is-e?14199_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rest-hd14287_)
                        (_lp14260_ _rest-tl14289_ (fx+ _depth14263_ '1))
                        (if (fxpositive? _depth14263_)
                            (_make-splice14192_
                             _e14198_
                             _depth14263_
                             (_recur14193_ _hd14228_ _is-e?14199_)
                             (_recur14193_ _rest14262_ _is-e?14199_))
                            (_make-cons14191_
                             (_recur14193_ _hd14228_ _is-e?14199_)
                             (_recur14193_ _rest14262_ _is-e?14199_))))
                    (_E1426614275_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1426614275_)))))
                                      (_E1426514291_))))
                              (_E1420714216_)))))
                    (_E1420714216_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1420614295_))
                                              (if (gx#stx-vector? _e14198_)
                                                  (let ((_g14554_
                                                         (_recur14193_
                                                          (vector->list
                                                           (gx#stx-unwrap__0
                                                            _e14198_))
                                                          _is-e?14199_)))
                                                    (begin
                                                      (let ((_g14555_
                                                             (values-count
                                                              _g14554_)))
                                                        (if (not (fx= _g14555_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g14555_)))
              (let ((_e14299_ (values-ref _g14554_ 0))
                    (_vars14300_ (values-ref _g14554_ 1)))
                (values (cons 'vector _e14299_) _vars14300_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e14198_)
                                                      (let ((_g14556_
                                                             (_recur14193_
                                                              (unbox (gx#stx-unwrap__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e14198_))
                      _is-e?14199_)))
                (begin
                  (let ((_g14557_ (values-count _g14556_)))
                    (if (not (fx= _g14557_ 2))
                        (error "Context expects 2 values" _g14557_)))
                  (let ((_e14302_ (values-ref _g14556_ 0))
                        (_vars14303_ (values-ref _g14556_ 1)))
                    (values (cons 'box _e14302_) _vars14303_))))
              (values (cons 'datum _e14198_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    (let ((_g14558_ (_recur14193_ _e14189_ gx#ellipsis?)))
                      (begin
                        (let ((_g14559_ (values-count _g14558_)))
                          (if (not (fx= _g14559_ 2))
                              (error "Context expects 2 values" _g14559_)))
                        (let ((_tree14195_ (values-ref _g14558_ 0))
                              (_vars14196_ (values-ref _g14558_ 1)))
                          (if (null? _vars14196_)
                              _tree14195_
                              (gx#raise-syntax-error
                               '#f
                               '"Missing ellipsis"
                               _stx14145_
                               _vars14196_)))))))))
        (let* ((_e1414914159_ _stx14145_)
               (_E1415114163_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _stx14145_)))
               (_E1415014185_
                (lambda ()
                  (if (gx#stx-pair? _e1414914159_)
                      (let ((_e1415214167_ (gx#syntax-e _e1414914159_)))
                        (let ((_hd1415314170_ (##car _e1415214167_))
                              (_tl1415414172_ (##cdr _e1415214167_)))
                          (if (gx#stx-pair? _tl1415414172_)
                              (let ((_e1415514175_
                                     (gx#syntax-e _tl1415414172_)))
                                (let ((_hd1415614178_ (##car _e1415514175_))
                                      (_tl1415714180_ (##cdr _e1415514175_)))
                                  (let ((_form14183_ _hd1415614178_))
                                    (if (gx#stx-null? _tl1415714180_)
                                        (if '#t
                                            (gx#stx-wrap-source
                                             (_generate14147_
                                              (_parse14148_ _form14183_))
                                             (gx#stx-source _stx14145_))
                                            (_E1415114163_))
                                        (_E1415114163_)))))
                              (_E1415114163_))))
                      (_E1415114163_)))))
          (_E1415014185_)))))
  (begin
    (define gx#macro-expand-syntax-case__opt-lambda13415
      (lambda (_stx13417_ _identifier=?13418_ _unwrap-e13419_ _wrap-e13420_)
        (letrec ((_generate-bindings13422_
                  (lambda (_target14007_
                           _ids14008_
                           _clauses14009_
                           _clause-ids14010_
                           _E14011_)
                    (letrec ((_generate114013_
                              (lambda (_clause14112_ _clause-id14113_ _E14114_)
                                (cons (cons _clause-id14113_ '())
                                      (cons (gx#core-list
                                             'lambda%
                                             (cons _target14007_ '())
                                             (_generate-clause13424_
                                              _target14007_
                                              _ids14008_
                                              _clause14112_
                                              _E14114_))
                                            '())))))
                      (let _lp14015_ ((_rest14017_ _clauses14009_)
                                      (_rest-ids14018_ _clause-ids14010_)
                                      (_bindings14019_ '()))
                        (let* ((_rest1402014028_ _rest14017_)
                               (_E1402314032_
                                (lambda ()
                                  (error '"No clause matching"
                                         _rest1402014028_)))
                               (_else1402214036_ (lambda () _bindings14019_))
                               (_K1402414100_
                                (lambda (_rest14039_ _clause14040_)
                                  (let* ((_rest-ids1404114048_ _rest-ids14018_)
                                         (_E1404314052_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids1404114048_)))
                                         (_K1404414088_
                                          (lambda (_rest-ids14055_
                                                   _clause-id14056_)
                                            (let* ((_rest-ids1405714065_
                                                    _rest-ids14055_)
                                                   (_E1406014069_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _rest-ids1405714065_)))
                                                   (_else1405914073_
                                                    (lambda ()
                                                      (cons (_generate114013_
                                                             _clause14040_
                                                             _clause-id14056_
                                                             _E14011_)
                                                            _bindings14019_)))
                                                   (_K1406114078_
                                                    (lambda (_next-clause-id14076_)
                                                      (_lp14015_
                                                       _rest14039_
                                                       _rest-ids14055_
                                                       (cons (_generate114013_
                                                              _clause14040_
                                                              _clause-id14056_
                                                              _next-clause-id14076_)
                                                             _bindings14019_)))))
                                              (if (##pair? _rest-ids1405714065_)
                                                  (let ((_hd1406214081_
                                                         (##car _rest-ids1405714065_))
                                                        (_tl1406314083_
                                                         (##cdr _rest-ids1405714065_)))
                                                    (let ((_next-clause-id14086_
                                                           _hd1406214081_))
                                                      (_K1406114078_
                                                       _next-clause-id14086_)))
                                                  (_else1405914073_))))))
                                    (if (##pair? _rest-ids1404114048_)
                                        (let ((_hd1404514091_
                                               (##car _rest-ids1404114048_))
                                              (_tl1404614093_
                                               (##cdr _rest-ids1404114048_)))
                                          (let* ((_clause-id14096_
                                                  _hd1404514091_)
                                                 (_rest-ids14098_
                                                  _tl1404614093_))
                                            (_K1404414088_
                                             _rest-ids14098_
                                             _clause-id14096_)))
                                        (_E1404314052_))))))
                          (if (##pair? _rest1402014028_)
                              (let ((_hd1402514103_ (##car _rest1402014028_))
                                    (_tl1402614105_ (##cdr _rest1402014028_)))
                                (let* ((_clause14108_ _hd1402514103_)
                                       (_rest14110_ _tl1402614105_))
                                  (_K1402414100_ _rest14110_ _clause14108_)))
                              (_else1402214036_)))))))
                 (_generate-body13423_
                  (lambda (_bindings13967_ _body13968_)
                    (let _recur13970_ ((_rest13972_ _bindings13967_))
                      (let* ((_rest1397313981_ _rest13972_)
                             (_E1397613985_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1397313981_)))
                             (_else1397513989_ (lambda () _body13968_))
                             (_K1397713995_
                              (lambda (_rest13992_ _hd13993_)
                                (gx#core-list
                                 'let-values
                                 (cons _hd13993_ '())
                                 (_recur13970_ _rest13992_)))))
                        (if (##pair? _rest1397313981_)
                            (let ((_hd1397813998_ (##car _rest1397313981_))
                                  (_tl1397914000_ (##cdr _rest1397313981_)))
                              (let* ((_hd14003_ _hd1397813998_)
                                     (_rest14005_ _tl1397914000_))
                                (_K1397713995_ _rest14005_ _hd14003_)))
                            (_else1397513989_))))))
                 (_generate-clause13424_
                  (lambda (_target13830_ _ids13831_ _clause13832_ _E13833_)
                    (letrec ((_generate113835_
                              (lambda (_hd13922_ _fender13923_ _body13924_)
                                (let ((_g14560_
                                       (_parse-clause13426_
                                        _hd13922_
                                        _ids13831_)))
                                  (begin
                                    (let ((_g14561_ (values-count _g14560_)))
                                      (if (not (fx= _g14561_ 2))
                                          (error "Context expects 2 values"
                                                 _g14561_)))
                                    (let ((_e13926_ (values-ref _g14560_ 0))
                                          (_mvars13927_
                                           (values-ref _g14560_ 1)))
                                      (let* ((_pvars13929_
                                              (map gx#syntax-local-rewrap
                                                   (gx#gentemps _mvars13927_)))
                                             (_E13931_
                                              (cons _E13833_
                                                    (cons _target13830_ '())))
                                             (_K13964_
                                              (gx#core-list
                                               'lambda%
                                               _pvars13929_
                                               (gx#core-list
                                                'let-syntax
                                                (map (lambda (_mvar13933_
                                                              _pvar13934_)
                                                       (let* ((_mvar1393513942_
                                                               _mvar13933_)
                                                              (_E1393713946_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (error '"No clause matching" _mvar1393513942_)))
                      (_K1393813952_
                       (lambda (_depth13949_ _id13950_)
                         (cons _id13950_
                               (cons (gx#core-list
                                      'make-syntax-pattern
                                      (gx#core-list 'quote _id13950_)
                                      (gx#core-list 'quote _pvar13934_)
                                      _depth13949_)
                                     '())))))
                 (if (##pair? _mvar1393513942_)
                     (let ((_hd1393913955_ (##car _mvar1393513942_))
                           (_tl1394013957_ (##cdr _mvar1393513942_)))
                       (let* ((_id13960_ _hd1393913955_)
                              (_depth13962_ _tl1394013957_))
                         (_K1393813952_ _depth13962_ _id13960_)))
                     (_E1393713946_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _mvars13927_
                                                     _pvars13929_)
                                                (if (eq? _fender13923_ '#t)
                                                    _body13924_
                                                    (gx#core-list
                                                     'if
                                                     _fender13923_
                                                     _body13924_
                                                     _E13931_))))))
                                        (_generate-match13425_
                                         _hd13922_
                                         _target13830_
                                         _e13926_
                                         _mvars13927_
                                         _K13964_
                                         _E13931_))))))))
                      (let* ((_e1383613856_ _clause13832_)
                             (_E1384513860_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _e1383613856_)))
                             (_E1383813894_
                              (lambda ()
                                (if (gx#stx-pair? _e1383613856_)
                                    (let ((_e1384613864_
                                           (gx#syntax-e _e1383613856_)))
                                      (let ((_hd1384713867_
                                             (##car _e1384613864_))
                                            (_tl1384813869_
                                             (##cdr _e1384613864_)))
                                        (let ((_hd13872_ _hd1384713867_))
                                          (if (gx#stx-pair? _tl1384813869_)
                                              (let ((_e1384913874_
                                                     (gx#syntax-e
                                                      _tl1384813869_)))
                                                (let ((_hd1385013877_
                                                       (##car _e1384913874_))
                                                      (_tl1385113879_
                                                       (##cdr _e1384913874_)))
                                                  (let ((_fender13882_
                                                         _hd1385013877_))
                                                    (if (gx#stx-pair?
                                                         _tl1385113879_)
                                                        (let ((_e1385213884_
                                                               (gx#syntax-e
                                                                _tl1385113879_)))
                                                          (let ((_hd1385313887_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1385213884_))
                        (_tl1385413889_ (##cdr _e1385213884_)))
                    (let ((_body13892_ _hd1385313887_))
                      (if (gx#stx-null? _tl1385413889_)
                          (if '#t
                              (_generate113835_
                               _hd13872_
                               _fender13882_
                               _body13892_)
                              (_E1384513860_))
                          (_E1384513860_)))))
                (_E1384513860_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1384513860_)))))
                                    (_E1384513860_))))
                             (_E1383713918_
                              (lambda ()
                                (if (gx#stx-pair? _e1383613856_)
                                    (let ((_e1383913898_
                                           (gx#syntax-e _e1383613856_)))
                                      (let ((_hd1384013901_
                                             (##car _e1383913898_))
                                            (_tl1384113903_
                                             (##cdr _e1383913898_)))
                                        (let ((_hd13906_ _hd1384013901_))
                                          (if (gx#stx-pair? _tl1384113903_)
                                              (let ((_e1384213908_
                                                     (gx#syntax-e
                                                      _tl1384113903_)))
                                                (let ((_hd1384313911_
                                                       (##car _e1384213908_))
                                                      (_tl1384413913_
                                                       (##cdr _e1384213908_)))
                                                  (let ((_body13916_
                                                         _hd1384313911_))
                                                    (if (gx#stx-null?
                                                         _tl1384413913_)
                                                        (if '#t
                                                            (_generate113835_
                                                             _hd13906_
                                                             '#t
                                                             _body13916_)
                                                            (_E1383813894_))
                                                        (_E1383813894_)))))
                                              (_E1383813894_)))))
                                    (_E1383813894_)))))
                        (_E1383713918_)))))
                 (_generate-match13425_
                  (lambda (_where13589_
                           _target13590_
                           _hd13591_
                           _mvars13592_
                           _K13593_
                           _E13594_)
                    (letrec ((_BUG13596_
                              (lambda (_q13828_)
                                (error '"BUG: syntax-case; generate"
                                       _stx13417_
                                       _hd13591_
                                       _q13828_)))
                             (_recur13597_
                              (lambda (_e13682_
                                       _vars13683_
                                       _target13684_
                                       _E13685_
                                       _k13686_)
                                (let* ((_e1368713694_ _e13682_)
                                       (_E1368913698_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e1368713694_)))
                                       (_K1369013816_
                                        (lambda (_body13701_ _tag13702_)
                                          (let ((_$e13704_ _tag13702_))
                                            (if (eq? _$e13704_ 'any)
                                                (_k13686_ _vars13683_)
                                                (if (eq? _$e13704_ 'id)
                                                    (gx#core-list
                                                     'if
                                                     (gx#core-list
                                                      'identifier?
                                                      _target13684_)
                                                     (gx#core-list
                                                      'if
                                                      (gx#core-list
                                                       _identifier=?13418_
                                                       (gx#core-list
                                                        _wrap-e13420_
                                                        _body13701_)
                                                       _target13684_)
                                                      (_k13686_ _vars13683_)
                                                      _E13685_)
                                                     _E13685_)
                                                    (if (eq? _$e13704_ 'var)
                                                        (_k13686_
                                                         (cons (cons _body13701_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _target13684_)
                       _vars13683_))
                (if (eq? _$e13704_ 'cons)
                    (let ((_$e13707_ (gx#genident__1 'e))
                          (_$hd13708_ (gx#genident__1 'hd))
                          (_$tl13709_ (gx#genident__1 'tl)))
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _target13684_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$e13707_ '())
                                    (cons (gx#core-list
                                           _unwrap-e13419_
                                           _target13684_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$hd13708_ '())
                                     (cons (gx#core-list '##car _$e13707_)
                                           '()))
                               (cons (cons (cons _$tl13709_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$e13707_)
                                                 '()))
                                     '()))
                         (let* ((_body1371013717_ _body13701_)
                                (_E1371213721_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _body1371013717_)))
                                (_K1371313729_
                                 (lambda (_tl13724_ _hd13725_)
                                   (_recur13597_
                                    _hd13725_
                                    _vars13683_
                                    _$hd13708_
                                    _E13685_
                                    (lambda (_vars13727_)
                                      (_recur13597_
                                       _tl13724_
                                       _vars13727_
                                       _$tl13709_
                                       _E13685_
                                       _k13686_))))))
                           (if (##pair? _body1371013717_)
                               (let ((_hd1371413732_ (##car _body1371013717_))
                                     (_tl1371513734_ (##cdr _body1371013717_)))
                                 (let* ((_hd13737_ _hd1371413732_)
                                        (_tl13739_ _tl1371513734_))
                                   (_K1371313729_ _tl13739_ _hd13737_)))
                               (_E1371213721_)))))
                       _E13685_))
                    (if (eq? _$e13704_ 'splice)
                        (let* ((_body1374013747_ _body13701_)
                               (_E1374213751_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body1374013747_)))
                               (_K1374313800_
                                (lambda (_tl13754_ _hd13755_)
                                  (let* ((_rlen13757_
                                          (_splice-rlen13598_ _tl13754_))
                                         (_$target13759_
                                          (gx#genident__1 'target))
                                         (_$hd13761_ (gx#genident__1 'hd))
                                         (_$tl13763_ (gx#genident__1 'tl))
                                         (_$lp13765_ (gx#genident__1 'loop))
                                         (_$lp-e13767_ (gx#genident__1 'e))
                                         (_$lp-hd13769_
                                          (gx#genident__1 'lp-hd))
                                         (_$lp-tl13771_
                                          (gx#genident__1 'lp-tl))
                                         (_svars13773_
                                          (_splice-vars13599_ _hd13755_))
                                         (_lvars13775_
                                          (gx#gentemps _svars13773_))
                                         (_tlvars13777_
                                          (gx#gentemps _svars13773_))
                                         (_linit13781_
                                          (map (lambda (_var13779_)
                                                 (gx#core-list 'quote '()))
                                               _lvars13775_)))
                                    (letrec ((_make-loop13784_
                                              (lambda (_vars13786_)
                                                (gx#core-list
                                                 'letrec-values
                                                 (cons (cons (cons _$lp13765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _$hd13761_ _lvars13775_)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-pair? _$hd13761_)
                             (gx#core-list
                              'let-values
                              (cons (cons (cons _$lp-e13767_ '())
                                          (cons (gx#core-list
                                                 _unwrap-e13419_
                                                 _$hd13761_)
                                                '()))
                                    '())
                              (gx#core-list
                               'let-values
                               (cons (cons (cons _$lp-hd13769_ '())
                                           (cons (gx#core-list
                                                  '##car
                                                  _$lp-e13767_)
                                                 '()))
                                     (cons (cons (cons _$lp-tl13771_ '())
                                                 (cons (gx#core-list
                                                        '##cdr
                                                        _$lp-e13767_)
                                                       '()))
                                           '()))
                               (_recur13597_
                                _hd13755_
                                '()
                                _$lp-hd13769_
                                _E13685_
                                (lambda (_hdvars13788_)
                                  (cons* _$lp13765_
                                         _$lp-tl13771_
                                         (map (lambda (_svar13790_ _lvar13791_)
                                                (gx#core-list
                                                 'cons
                                                 (assgetq _svar13790_
                                                          _hdvars13788_
                                                          _BUG13596_)
                                                 _lvar13791_))
                                              _svars13773_
                                              _lvars13775_))))))
                             (gx#core-list
                              'let-values
                              (map (lambda (_lvar13793_ _tlvar13794_)
                                     (cons (cons _tlvar13794_ '())
                                           (cons (gx#core-list
                                                  'reverse
                                                  _lvar13793_)
                                                 '())))
                                   _lvars13775_
                                   _tlvars13777_)
                              (_k13686_
                               (foldl (lambda (_svar13796_
                                               _tlvar13797_
                                               _r13798_)
                                        (cons (cons _svar13796_ _tlvar13797_)
                                              _r13798_))
                                      _vars13786_
                                      _svars13773_
                                      _tlvars13777_)))))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons* _$lp13765_
                                                        _$target13759_
                                                        _linit13781_)))))
                                      (gx#core-list
                                       'if
                                       (gx#core-list
                                        'stx-pair/null?
                                        _target13684_)
                                       (gx#core-list
                                        'if
                                        (gx#core-list
                                         'fx>=
                                         (gx#core-list
                                          'stx-length
                                          _target13684_)
                                         _rlen13757_)
                                        (gx#core-list
                                         'let-values
                                         (cons (cons (cons _$target13759_
                                                           (cons _$tl13763_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (gx#core-list
                                                            'syntax-split-splice
                                                            _target13684_
                                                            _rlen13757_)
                                                           '()))
                                               '())
                                         (_recur13597_
                                          _tl13754_
                                          _vars13683_
                                          _$tl13763_
                                          _E13685_
                                          _make-loop13784_))
                                        _E13685_)
                                       _E13685_))))))
                          (if (##pair? _body1374013747_)
                              (let ((_hd1374413803_ (##car _body1374013747_))
                                    (_tl1374513805_ (##cdr _body1374013747_)))
                                (let* ((_hd13808_ _hd1374413803_)
                                       (_tl13810_ _tl1374513805_))
                                  (_K1374313800_ _tl13810_ _hd13808_)))
                              (_E1374213751_)))
                        (if (eq? _$e13704_ 'null)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-null? _target13684_)
                             (_k13686_ _vars13683_)
                             _E13685_)
                            (if (eq? _$e13704_ 'vector)
                                (let ((_$e13812_ (gx#genident__1 'e)))
                                  (gx#core-list
                                   'if
                                   (gx#core-list 'stx-vector? _target13684_)
                                   (gx#core-list
                                    'let-values
                                    (cons (cons (cons _$e13812_ '())
                                                (cons (gx#core-list
                                                       'vector->list
                                                       (gx#core-list
                                                        _unwrap-e13419_
                                                        _target13684_))
                                                      '()))
                                          '())
                                    (_recur13597_
                                     _body13701_
                                     _vars13683_
                                     _$e13812_
                                     _E13685_
                                     _k13686_))
                                   _E13685_))
                                (if (eq? _$e13704_ 'box)
                                    (let ((_$e13814_ (gx#genident__1 'e)))
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-box? _target13684_)
                                       (gx#core-list
                                        'let-values
                                        (cons (cons (cons _$e13814_ '())
                                                    (cons (gx#core-list
                                                           'unbox
                                                           (gx#core-list
                                                            _unwrap-e13419_
                                                            _target13684_))
                                                          '()))
                                              '())
                                        (_recur13597_
                                         _body13701_
                                         _vars13683_
                                         _$e13814_
                                         _E13685_
                                         _k13686_))
                                       _E13685_))
                                    (if (eq? _$e13704_ 'datum)
                                        (gx#core-list
                                         'if
                                         (gx#core-list
                                          'stx-datum?
                                          _target13684_)
                                         (gx#core-list
                                          'if
                                          (gx#core-list
                                           'equal?
                                           (gx#core-list 'stx-e _target13684_)
                                           _body13701_)
                                          (_k13686_ _vars13683_)
                                          _E13685_)
                                         _E13685_)
                                        (_BUG13596_ _e13682_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (##pair? _e1368713694_)
                                      (let ((_hd1369113819_
                                             (##car _e1368713694_))
                                            (_tl1369213821_
                                             (##cdr _e1368713694_)))
                                        (let* ((_tag13824_ _hd1369113819_)
                                               (_body13826_ _tl1369213821_))
                                          (_K1369013816_
                                           _body13826_
                                           _tag13824_)))
                                      (_E1368913698_)))))
                             (_splice-rlen13598_
                              (lambda (_e13644_)
                                (let _lp13646_ ((_e13648_ _e13644_)
                                                (_n13649_ '0))
                                  (let* ((_e1365013657_ _e13648_)
                                         (_E1365213661_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1365013657_)))
                                         (_K1365313670_
                                          (lambda (_body13664_ _tag13665_)
                                            (let ((_$e13667_ _tag13665_))
                                              (if (eq? _$e13667_ 'splice)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Ambiguous pattern"
                                                   _stx13417_
                                                   _where13589_)
                                                  (if (eq? _$e13667_ 'cons)
                                                      (_lp13646_
                                                       (cdr _body13664_)
                                                       (fx+ _n13649_ '1))
                                                      _n13649_))))))
                                    (if (##pair? _e1365013657_)
                                        (let ((_hd1365413673_
                                               (##car _e1365013657_))
                                              (_tl1365513675_
                                               (##cdr _e1365013657_)))
                                          (let* ((_tag13678_ _hd1365413673_)
                                                 (_body13680_ _tl1365513675_))
                                            (_K1365313670_
                                             _body13680_
                                             _tag13678_)))
                                        (_E1365213661_))))))
                             (_splice-vars13599_
                              (lambda (_e13606_)
                                (let _recur13608_ ((_e13610_ _e13606_)
                                                   (_vars13611_ '()))
                                  (let* ((_e1361213619_ _e13610_)
                                         (_E1361413623_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1361213619_)))
                                         (_K1361513632_
                                          (lambda (_body13626_ _tag13627_)
                                            (let ((_$e13629_ _tag13627_))
                                              (if (eq? _$e13629_ 'var)
                                                  (cons _body13626_
                                                        _vars13611_)
                                                  (if (memq _$e13629_
                                                            '(cons splice))
                                                      (_recur13608_
                                                       (cdr _body13626_)
                                                       (_recur13608_
                                                        (car _body13626_)
                                                        _vars13611_))
                                                      (if (memq _$e13629_
                                                                '(vector box))
                                                          (_recur13608_
                                                           _body13626_
                                                           _vars13611_)
                                                          _vars13611_)))))))
                                    (if (##pair? _e1361213619_)
                                        (let ((_hd1361613635_
                                               (##car _e1361213619_))
                                              (_tl1361713637_
                                               (##cdr _e1361213619_)))
                                          (let* ((_tag13640_ _hd1361613635_)
                                                 (_body13642_ _tl1361713637_))
                                            (_K1361513632_
                                             _body13642_
                                             _tag13640_)))
                                        (_E1361413623_))))))
                             (_make-body13600_
                              (lambda (_vars13602_)
                                (cons _K13593_
                                      (map (lambda (_mvar13604_)
                                             (assgetq (car _mvar13604_)
                                                      _vars13602_
                                                      _BUG13596_))
                                           _mvars13592_)))))
                      (_recur13597_
                       _hd13591_
                       '()
                       _target13590_
                       _E13594_
                       _make-body13600_))))
                 (_parse-clause13426_
                  (lambda (_hd13495_ _ids13496_)
                    (let _recur13498_ ((_e13500_ _hd13495_)
                                       (_vars13501_ '())
                                       (_depth13502_ '0))
                      (if (gx#identifier? _e13500_)
                          (if (gx#underscore? _e13500_)
                              (values '(any) _vars13501_)
                              (if (gx#ellipsis? _e13500_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Misplaced ellipsis"
                                   _stx13417_
                                   _hd13495_)
                                  (if (find (lambda (_id13504_)
                                              (gx#bound-identifier=?
                                               _e13500_
                                               _id13504_))
                                            _ids13496_)
                                      (values (cons 'id _e13500_) _vars13501_)
                                      (if (find (lambda (_var13506_)
                                                  (gx#bound-identifier=?
                                                   _e13500_
                                                   (car _var13506_)))
                                                _vars13501_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Duplicate pattern variable"
                                           _stx13417_
                                           _e13500_)
                                          (values (cons 'var _e13500_)
                                                  (cons (cons _e13500_
                                                              _depth13502_)
                                                        _vars13501_))))))
                          (if (gx#stx-pair? _e13500_)
                              (let* ((_e1350713514_ _e13500_)
                                     (_E1350913518_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _e1350713514_)))
                                     (_E1350813579_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1350713514_)
                                            (let ((_e1351013522_
                                                   (gx#syntax-e
                                                    _e1350713514_)))
                                              (let ((_hd1351113525_
                                                     (##car _e1351013522_))
                                                    (_tl1351213527_
                                                     (##cdr _e1351013522_)))
                                                (let* ((_hd13530_
                                                        _hd1351113525_)
                                                       (_rest13532_
                                                        _tl1351213527_))
                                                  (if '#t
                                                      (let* ((_make-pair13547_
                                                              (lambda (_tag13534_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd13535_
                               _tl13536_)
                        (let* ((_hd-depth13538_
                                (if (eq? _tag13534_ 'splice)
                                    (fx+ _depth13502_ '1)
                                    _depth13502_))
                               (_g14562_
                                (_recur13498_
                                 _hd13535_
                                 _vars13501_
                                 _hd-depth13538_)))
                          (begin
                            (let ((_g14563_ (values-count _g14562_)))
                              (if (not (fx= _g14563_ 2))
                                  (error "Context expects 2 values" _g14563_)))
                            (let ((_hd13540_ (values-ref _g14562_ 0))
                                  (_vars13541_ (values-ref _g14562_ 1)))
                              (let ((_g14564_
                                     (_recur13498_
                                      _tl13536_
                                      _vars13541_
                                      _depth13502_)))
                                (begin
                                  (let ((_g14565_ (values-count _g14564_)))
                                    (if (not (fx= _g14565_ 2))
                                        (error "Context expects 2 values"
                                               _g14565_)))
                                  (let ((_tl13543_ (values-ref _g14564_ 0))
                                        (_vars13544_ (values-ref _g14564_ 1)))
                                    (let ()
                                      (values (cons* _tag13534_
                                                     _hd13540_
                                                     _tl13543_)
                                              _vars13544_))))))))))
                     (_e1354813555_ _rest13532_)
                     (_E1355013559_
                      (lambda ()
                        (_make-pair13547_ 'cons _hd13530_ _rest13532_)))
                     (_E1354913575_
                      (lambda ()
                        (if (gx#stx-pair? _e1354813555_)
                            (let ((_e1355113563_ (gx#syntax-e _e1354813555_)))
                              (let ((_hd1355213566_ (##car _e1355113563_))
                                    (_tl1355313568_ (##cdr _e1355113563_)))
                                (let* ((_rest-hd13571_ _hd1355213566_)
                                       (_rest-tl13573_ _tl1355313568_))
                                  (if '#t
                                      (if (gx#ellipsis? _rest-hd13571_)
                                          (_make-pair13547_
                                           'splice
                                           _hd13530_
                                           _rest-tl13573_)
                                          (_make-pair13547_
                                           'cons
                                           _hd13530_
                                           _rest13532_))
                                      (_E1355013559_)))))
                            (_E1355013559_)))))
                (_E1354913575_))
              (_E1350913518_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1350913518_)))))
                                (_E1350813579_))
                              (if (gx#stx-null? _e13500_)
                                  (values '(null) _vars13501_)
                                  (if (gx#stx-vector? _e13500_)
                                      (let ((_g14566_
                                             (_recur13498_
                                              (vector->list
                                               (gx#syntax-e _e13500_))
                                              _vars13501_
                                              _depth13502_)))
                                        (begin
                                          (let ((_g14567_
                                                 (values-count _g14566_)))
                                            (if (not (fx= _g14567_ 2))
                                                (error "Context expects 2 values"
                                                       _g14567_)))
                                          (let ((_e13583_
                                                 (values-ref _g14566_ 0))
                                                (_vars13584_
                                                 (values-ref _g14566_ 1)))
                                            (values (cons 'vector _e13583_)
                                                    _vars13584_))))
                                      (if (gx#stx-box? _e13500_)
                                          (let ((_g14568_
                                                 (_recur13498_
                                                  (unbox (gx#syntax-e
                                                          _e13500_))
                                                  _vars13501_
                                                  _depth13502_)))
                                            (begin
                                              (let ((_g14569_
                                                     (values-count _g14568_)))
                                                (if (not (fx= _g14569_ 2))
                                                    (error "Context expects 2 values"
                                                           _g14569_)))
                                              (let ((_e13586_
                                                     (values-ref _g14568_ 0))
                                                    (_vars13587_
                                                     (values-ref _g14568_ 1)))
                                                (values (cons 'box _e13586_)
                                                        _vars13587_))))
                                          (if (gx#stx-datum? _e13500_)
                                              (values (cons 'datum
                                                            (gx#stx-e
                                                             _e13500_))
                                                      _vars13501_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad pattern"
                                               _stx13417_
                                               _e13500_)))))))))))
          (let* ((_e1342713440_ _stx13417_)
                 (_E1342913444_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1342713440_)))
                 (_E1342813491_
                  (lambda ()
                    (if (gx#stx-pair? _e1342713440_)
                        (let ((_e1343013448_ (gx#syntax-e _e1342713440_)))
                          (let ((_hd1343113451_ (##car _e1343013448_))
                                (_tl1343213453_ (##cdr _e1343013448_)))
                            (if (gx#stx-pair? _tl1343213453_)
                                (let ((_e1343313456_
                                       (gx#syntax-e _tl1343213453_)))
                                  (let ((_hd1343413459_ (##car _e1343313456_))
                                        (_tl1343513461_ (##cdr _e1343313456_)))
                                    (let ((_expr13464_ _hd1343413459_))
                                      (if (gx#stx-pair? _tl1343513461_)
                                          (let ((_e1343613466_
                                                 (gx#syntax-e _tl1343513461_)))
                                            (let ((_hd1343713469_
                                                   (##car _e1343613466_))
                                                  (_tl1343813471_
                                                   (##cdr _e1343613466_)))
                                              (let* ((_ids13474_
                                                      _hd1343713469_)
                                                     (_clauses13476_
                                                      _tl1343813471_))
                                                (if '#t
                                                    (if (not (gx#identifier-list?
                                                              _ids13474_))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad template identifier list"
                                                         _stx13417_
                                                         _ids13474_)
                                                        (if (not (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _clauses13476_))
                    (gx#raise-syntax-error '#f '"Bad syntax" _stx13417_)
                    (let* ((_ids13478_ (gx#syntax->list _ids13474_))
                           (_clauses13480_ (gx#syntax->list _clauses13476_))
                           (_clause-ids13482_ (gx#gentemps _clauses13480_))
                           (_E13484_ (gx#genident__0))
                           (_target13486_ (gx#genident__0))
                           (_first13488_
                            (if (null? _clauses13480_)
                                _E13484_
                                (car _clause-ids13482_))))
                      (gx#stx-wrap-source
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _E13484_ '())
                                    (cons (gx#core-list
                                           'lambda%
                                           (cons _target13486_ '())
                                           (gx#core-list
                                            'raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _target13486_))
                                          '()))
                              '())
                        (_generate-body13423_
                         (_generate-bindings13422_
                          _target13486_
                          _ids13478_
                          _clauses13480_
                          _clause-ids13482_
                          _E13484_)
                         (cons _first13488_ (cons _expr13464_ '()))))
                       (gx#stx-source _stx13417_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1342913444_)))))
                                          (_E1342913444_)))))
                                (_E1342913444_))))
                        (_E1342913444_)))))
            (_E1342813491_)))))
    (begin
      (define gx#macro-expand-syntax-case__0
        (lambda (_stx14119_)
          (let* ((_identifier=?14121_ 'free-identifier=?)
                 (_unwrap-e14123_ 'syntax-e)
                 (_wrap-e14125_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda13415
             _stx14119_
             _identifier=?14121_
             _unwrap-e14123_
             _wrap-e14125_))))
      (define gx#macro-expand-syntax-case__1
        (lambda (_stx14127_ _identifier=?14128_)
          (let* ((_unwrap-e14130_ 'syntax-e) (_wrap-e14132_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda13415
             _stx14127_
             _identifier=?14128_
             _unwrap-e14130_
             _wrap-e14132_))))
      (define gx#macro-expand-syntax-case__2
        (lambda (_stx14134_ _identifier=?14135_ _unwrap-e14136_)
          (let ((_wrap-e14138_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda13415
             _stx14134_
             _identifier=?14135_
             _unwrap-e14136_
             _wrap-e14138_))))
      (define gx#macro-expand-syntax-case
        (lambda _g14571_
          (let ((_g14570_ (length _g14571_)))
            (cond ((fx= _g14570_ 1)
                   (apply gx#macro-expand-syntax-case__0 _g14571_))
                  ((fx= _g14570_ 2)
                   (apply gx#macro-expand-syntax-case__1 _g14571_))
                  ((fx= _g14570_ 3)
                   (apply gx#macro-expand-syntax-case__2 _g14571_))
                  ((fx= _g14570_ 4)
                   (apply gx#macro-expand-syntax-case__opt-lambda13415
                          _g14571_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-syntax-case
                    _g14571_))))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx13414_)
      (if (gx#identifier? _stx13414_)
          (##structure-instance-of?
           (gx#syntax-local-e__opt-lambda4087 _stx13414_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd13372_ . _rest13373_)
      (let ((_len13375_ (length _hd13372_)))
        (let _lp13377_ ((_rest13379_ _rest13373_))
          (let* ((_rest1338013388_ _rest13379_)
                 (_E1338313392_
                  (lambda () (error '"No clause matching" _rest1338013388_)))
                 (_else1338213396_ (lambda () '#!void))
                 (_K1338413402_
                  (lambda (_rest13399_ _hd13400_)
                    (if (fx= _len13375_ (length _hd13400_))
                        (_lp13377_ _rest13399_)
                        (gx#raise-syntax-error
                         '#f
                         '"Splice length mismatch"
                         _hd13400_)))))
            (if (##pair? _rest1338013388_)
                (let ((_hd1338513405_ (##car _rest1338013388_))
                      (_tl1338613407_ (##cdr _rest1338013388_)))
                  (let* ((_hd13410_ _hd1338513405_)
                         (_rest13412_ _tl1338613407_))
                    (_K1338413402_ _rest13412_ _hd13410_)))
                (_else1338213396_)))))))
  (define gx#syntax-split-splice
    (lambda (_stx13330_ _n13331_)
      (let _lp13333_ ((_rest13335_ _stx13330_) (_r13336_ '()))
        (if (gx#stx-pair? _rest13335_)
            (let* ((_g1333713344_ (gx#syntax-e _rest13335_))
                   (_E1333913348_
                    (lambda () (error '"No clause matching" _g1333713344_)))
                   (_K1334013354_
                    (lambda (_rest13351_ _hd13352_)
                      (_lp13333_ _rest13351_ (cons _hd13352_ _r13336_)))))
              (if (##pair? _g1333713344_)
                  (let ((_hd1334113357_ (##car _g1333713344_))
                        (_tl1334213359_ (##cdr _g1333713344_)))
                    (let* ((_hd13362_ _hd1334113357_)
                           (_rest13364_ _tl1334213359_))
                      (_K1334013354_ _rest13364_ _hd13362_)))
                  (_E1333913348_)))
            (let _lp13366_ ((_n13368_ _n13331_)
                            (_l13369_ _r13336_)
                            (_r13370_ _rest13335_))
              (if (null? _l13369_)
                  (values _l13369_ _r13370_)
                  (if (fxpositive? _n13368_)
                      (_lp13366_
                       (fx- _n13368_ '1)
                       (cdr _l13369_)
                       (cons (car _l13369_) _r13370_))
                      (values (reverse _l13369_) _r13370_)))))))))
