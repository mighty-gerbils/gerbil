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
    (lambda _$args14490_
      (apply make-struct-instance gx#syntax-pattern::t _$args14490_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self14487_ _stx14488_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx14488_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx14091_)
      (letrec ((_generate14093_
                (lambda (_e14320_)
                  (letrec ((_BUG14322_
                            (lambda (_q14485_)
                              (error '"BUG: syntax; generate"
                                     _stx14091_
                                     _e14320_
                                     _q14485_)))
                           (_local-pattern-e14323_
                            (lambda (_pat14483_)
                              (gx#syntax-local-rewrap
                               (##structure-ref
                                _pat14483_
                                '2
                                gx#syntax-pattern::t
                                '#f))))
                           (_getvar14324_
                            (lambda (_q14480_ _vars14481_)
                              (assgetq _q14480_ _vars14481_ _BUG14322_)))
                           (_getarg14325_
                            (lambda (_arg14446_ _vars14447_)
                              (let* ((_arg1444814455_ _arg14446_)
                                     (_E1445014459_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _arg1444814455_)))
                                     (_K1445114468_
                                      (lambda (_e14462_ _tag14463_)
                                        (let ((_$e14465_ _tag14463_))
                                          (if (eq? _$e14465_ 'ref)
                                              (_getvar14324_
                                               _e14462_
                                               _vars14447_)
                                              (if (eq? _$e14465_ 'pattern)
                                                  (_local-pattern-e14323_
                                                   _e14462_)
                                                  (_BUG14322_ _arg14446_)))))))
                                (if (##pair? _arg1444814455_)
                                    (let ((_hd1445214471_
                                           (##car _arg1444814455_))
                                          (_tl1445314473_
                                           (##cdr _arg1444814455_)))
                                      (let* ((_tag14476_ _hd1445214471_)
                                             (_e14478_ _tl1445314473_))
                                        (_K1445114468_ _e14478_ _tag14476_)))
                                    (_E1445014459_))))))
                    (let _recur14327_ ((_e14329_ _e14320_) (_vars14330_ '()))
                      (let* ((_e1433114338_ _e14329_)
                             (_E1433314342_
                              (lambda ()
                                (error '"No clause matching" _e1433114338_)))
                             (_K1433414434_
                              (lambda (_body14345_ _tag14346_)
                                (let ((_$e14348_ _tag14346_))
                                  (if (eq? _$e14348_ 'datum)
                                      (gx#core-list 'quote _body14345_)
                                      (if (eq? _$e14348_ 'term)
                                          (let* ((_id14351_
                                                  (gx#syntax-local-unwrap
                                                   _body14345_))
                                                 (_marks14353_
                                                  (##direct-structure-ref
                                                   _id14351_
                                                   '3
                                                   gx#identifier-wrap::t
                                                   '#f)))
                                            (if (null? _marks14353_)
                                                (gx#core-list
                                                 'datum->syntax
                                                 '#f
                                                 (gx#core-list
                                                  'quote
                                                  _body14345_))
                                                (gx#core-list
                                                 'datum->syntax
                                                 (gx#core-list
                                                  'quote-syntax
                                                  _body14345_)
                                                 (gx#core-list
                                                  'quote
                                                  _body14345_)
                                                 '#f
                                                 '#f)))
                                          (if (eq? _$e14348_ 'pattern)
                                              (_local-pattern-e14323_
                                               _body14345_)
                                              (if (eq? _$e14348_ 'ref)
                                                  (_getvar14324_
                                                   _body14345_
                                                   _vars14330_)
                                                  (if (eq? _$e14348_ 'cons)
                                                      (gx#core-list
                                                       'cons
                                                       (_recur14327_
                                                        (car _body14345_)
                                                        _vars14330_)
                                                       (_recur14327_
                                                        (cdr _body14345_)
                                                        _vars14330_))
                                                      (if (eq? _$e14348_
                                                               'vector)
                                                          (gx#core-list
                                                           'list->vector
                                                           (_recur14327_
                                                            _body14345_
                                                            _vars14330_))
                                                          (if (eq? _$e14348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'box)
                      (gx#core-list
                       'box
                       (_recur14327_ _body14345_ _vars14330_))
                      (if (eq? _$e14348_ 'splice)
                          (let* ((_body1435514366_ _body14345_)
                                 (_E1435714370_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _body1435514366_)))
                                 (_K1435814408_
                                  (lambda (_args14373_
                                           _iv14374_
                                           _hd14375_
                                           _depth14376_)
                                    (let* ((_targets14382_
                                            (map (lambda (_g1437714379_)
                                                   (_getarg14325_
                                                    _g1437714379_
                                                    _vars14330_))
                                                 _args14373_))
                                           (_fold-in14384_
                                            (gx#gentemps _args14373_))
                                           (_fold-out14386_ (gx#genident__0))
                                           (_lambda-args14388_
                                            (foldr1 cons
                                                    (cons _fold-out14386_ '())
                                                    _fold-in14384_))
                                           (_lambda-body14405_
                                            (if (fx> _depth14376_ '1)
                                                (let ((_r-args14396_
                                                       (map (lambda (_arg14390_)
                                                              (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cdr _arg14390_)))
                    _args14373_))
              (_r-vars14397_
               (foldr (lambda (_arg14392_ _var14393_ _r14394_)
                        (cons (cons (cdr _arg14392_) _var14393_) _r14394_))
                      _vars14330_
                      _args14373_
                      _fold-in14384_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur14327_
                                                   (cons* 'splice
                                                          (fx- _depth14376_ '1)
                                                          _hd14375_
                                                          (cons 'var
                                                                _fold-out14386_)
                                                          _r-args14396_)
                                                   _r-vars14397_))
                                                (let ((_hd-vars14403_
                                                       (foldr (lambda (_arg14399_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _var14400_
                               _r14401_)
                        (cons (cons (cdr _arg14399_) _var14400_) _r14401_))
                      _vars14330_
                      _args14373_
                      _fold-in14384_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#core-list
                                                   'cons
                                                   (_recur14327_
                                                    _hd14375_
                                                    _hd-vars14403_)
                                                   _fold-out14386_)))))
                                      (gx#core-list
                                       'begin
                                       (if (fx> (length _targets14382_) '1)
                                           (gx#core-cons*
                                            'syntax-check-splice-targets
                                            _targets14382_)
                                           '#!void)
                                       (gx#core-cons*
                                        'foldr
                                        (gx#core-list
                                         'lambda%
                                         _lambda-args14388_
                                         _lambda-body14405_)
                                        (_recur14327_ _iv14374_ _vars14330_)
                                        _targets14382_))))))
                            (if (##pair? _body1435514366_)
                                (let ((_hd1435914411_ (##car _body1435514366_))
                                      (_tl1436014413_
                                       (##cdr _body1435514366_)))
                                  (let ((_depth14416_ _hd1435914411_))
                                    (if (##pair? _tl1436014413_)
                                        (let ((_hd1436114418_
                                               (##car _tl1436014413_))
                                              (_tl1436214420_
                                               (##cdr _tl1436014413_)))
                                          (let ((_hd14423_ _hd1436114418_))
                                            (if (##pair? _tl1436214420_)
                                                (let ((_hd1436314425_
                                                       (##car _tl1436214420_))
                                                      (_tl1436414427_
                                                       (##cdr _tl1436214420_)))
                                                  (let* ((_iv14430_
                                                          _hd1436314425_)
                                                         (_args14432_
                                                          _tl1436414427_))
                                                    (_K1435814408_
                                                     _args14432_
                                                     _iv14430_
                                                     _hd14423_
                                                     _depth14416_)))
                                                (_E1435714370_))))
                                        (_E1435714370_))))
                                (_E1435714370_)))
                          (if (eq? _$e14348_ 'var)
                              _body14345_
                              (_BUG14322_ _e14329_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (if (##pair? _e1433114338_)
                            (let ((_hd1433514437_ (##car _e1433114338_))
                                  (_tl1433614439_ (##cdr _e1433114338_)))
                              (let* ((_tag14442_ _hd1433514437_)
                                     (_body14444_ _tl1433614439_))
                                (_K1433414434_ _body14444_ _tag14442_)))
                            (_E1433314342_)))))))
               (_parse14094_
                (lambda (_e14135_)
                  (letrec ((_make-cons14137_
                            (lambda (_hd14312_ _tl14313_)
                              (let ((_g14492_ _hd14312_) (_g14494_ _tl14313_))
                                (begin
                                  (let ((_g14493_ (values-count _g14492_)))
                                    (if (not (fx= _g14493_ 2))
                                        (error "Context expects 2 values"
                                               _g14493_)))
                                  (let ((_g14495_ (values-count _g14494_)))
                                    (if (not (fx= _g14495_ 2))
                                        (error "Context expects 2 values"
                                               _g14495_)))
                                  (let ((_hd-e14315_ (values-ref _g14492_ 0))
                                        (_hd-vars14316_
                                         (values-ref _g14492_ 1)))
                                    (let ((_tl-e14317_ (values-ref _g14494_ 0))
                                          (_tl-vars14318_
                                           (values-ref _g14494_ 1)))
                                      (values (cons* 'cons
                                                     _hd-e14315_
                                                     _tl-e14317_)
                                              (append _hd-vars14316_
                                                      _tl-vars14318_))))))))
                           (_make-splice14138_
                            (lambda (_where14251_
                                     _depth14252_
                                     _hd14253_
                                     _tl14254_)
                              (let ((_g14496_ _hd14253_) (_g14498_ _tl14254_))
                                (begin
                                  (let ((_g14497_ (values-count _g14496_)))
                                    (if (not (fx= _g14497_ 2))
                                        (error "Context expects 2 values"
                                               _g14497_)))
                                  (let ((_g14499_ (values-count _g14498_)))
                                    (if (not (fx= _g14499_ 2))
                                        (error "Context expects 2 values"
                                               _g14499_)))
                                  (let ((_hd-e14256_ (values-ref _g14496_ 0))
                                        (_hd-vars14257_
                                         (values-ref _g14496_ 1)))
                                    (let ((_tl-e14258_ (values-ref _g14498_ 0))
                                          (_tl-vars14259_
                                           (values-ref _g14498_ 1)))
                                      (let _lp14261_ ((_rest14263_
                                                       _hd-vars14257_)
                                                      (_targets14264_ '())
                                                      (_vars14265_
                                                       _tl-vars14259_))
                                        (let* ((_rest1426614276_ _rest14263_)
                                               (_E1426914280_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _rest1426614276_)))
                                               (_else1426814284_
                                                (lambda ()
                                                  (if (null? _targets14264_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Misplaced ellipsis"
                                                       _stx14091_
                                                       _where14251_)
                                                      (values (cons* 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _depth14252_
                             _hd-e14256_
                             _tl-e14258_
                             _targets14264_)
                      _vars14265_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_K1427014293_
                                                (lambda (_rest14287_
                                                         _hd-pat14288_
                                                         _hd-depth*14289_)
                                                  (let ((_hd-depth14291_
                                                         (fx- _hd-depth*14289_
                                                              _depth14252_)))
                                                    (if (fxpositive?
                                                         _hd-depth14291_)
                                                        (_lp14261_
                                                         _rest14287_
                                                         (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd-pat14288_)
                       _targets14264_)
                 (cons (cons _hd-depth14291_ _hd-pat14288_) _vars14265_))
                (if (fxzero? _hd-depth14291_)
                    (_lp14261_
                     _rest14287_
                     (cons (cons 'pattern _hd-pat14288_) _targets14264_)
                     _vars14265_)
                    (gx#raise-syntax-error
                     '#f
                     '"Too many ellipses"
                     _stx14091_
                     _where14251_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1426614276_)
                                              (let ((_hd1427114296_
                                                     (##car _rest1426614276_))
                                                    (_tl1427214298_
                                                     (##cdr _rest1426614276_)))
                                                (if (##pair? _hd1427114296_)
                                                    (let ((_hd1427314301_
                                                           (##car _hd1427114296_))
                                                          (_tl1427414303_
                                                           (##cdr _hd1427114296_)))
                                                      (let* ((_hd-depth*14306_
                                                              _hd1427314301_)
                                                             (_hd-pat14308_
                                                              _tl1427414303_)
                                                             (_rest14310_
                                                              _tl1427214298_))
                                                        (_K1427014293_
                                                         _rest14310_
                                                         _hd-pat14308_
                                                         _hd-depth*14306_)))
                                                    (_else1426814284_)))
                                              (_else1426814284_))))))))))
                           (_recur14139_
                            (lambda (_e14144_ _is-e?14145_)
                              (if (_is-e?14145_ _e14144_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Mislpaced ellipsis"
                                   _stx14091_)
                                  (if (gx#syntax-local-pattern? _e14144_)
                                      (let* ((_pat14147_
                                              (gx#syntax-local-e__0 _e14144_))
                                             (_depth14149_
                                              (##structure-ref
                                               _pat14147_
                                               '3
                                               gx#syntax-pattern::t
                                               '#f)))
                                        (if (fxpositive? _depth14149_)
                                            (values (cons 'ref _pat14147_)
                                                    (cons (cons _depth14149_
                                                                _pat14147_)
                                                          '()))
                                            (values (cons 'pattern _pat14147_)
                                                    '())))
                                      (if (gx#identifier? _e14144_)
                                          (values (cons 'term _e14144_) '())
                                          (if (gx#stx-pair? _e14144_)
                                              (let* ((_e1415114158_ _e14144_)
                                                     (_E1415314162_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _e1415114158_)))
                                                     (_E1415214241_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e1415114158_)
                                                            (let ((_e1415414166_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e1415114158_)))
                      (let ((_hd1415514169_ (##car _e1415414166_))
                            (_tl1415614171_ (##cdr _e1415414166_)))
                        (let* ((_hd14174_ _hd1415514169_)
                               (_rest14176_ _tl1415614171_))
                          (if '#t
                              (if (_is-e?14145_ _hd14174_)
                                  (let* ((_e1417714184_ _rest14176_)
                                         (_E1417914188_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _stx14091_
                                             _e14144_)))
                                         (_E1417814202_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1417714184_)
                                                (let ((_e1418014192_
                                                       (gx#syntax-e
                                                        _e1417714184_)))
                                                  (let ((_hd1418114195_
                                                         (##car _e1418014192_))
                                                        (_tl1418214197_
                                                         (##cdr _e1418014192_)))
                                                    (let ((_rest14200_
                                                           _hd1418114195_))
                                                      (if (gx#stx-null?
                                                           _tl1418214197_)
                                                          (if '#t
                                                              (_recur14139_
                                                               _rest14200_
                                                               false)
                                                              (_E1417914188_))
                                                          (_E1417914188_)))))
                                                (_E1417914188_)))))
                                    (_E1417814202_))
                                  (let _lp14206_ ((_rest14208_ _rest14176_)
                                                  (_depth14209_ '0))
                                    (let* ((_e1421014217_ _rest14208_)
                                           (_E1421214221_
                                            (lambda ()
                                              (if (fxpositive? _depth14209_)
                                                  (_make-splice14138_
                                                   _e14144_
                                                   _depth14209_
                                                   (_recur14139_
                                                    _hd14174_
                                                    _is-e?14145_)
                                                   (_recur14139_
                                                    _rest14208_
                                                    _is-e?14145_))
                                                  (_make-cons14137_
                                                   (_recur14139_
                                                    _hd14174_
                                                    _is-e?14145_)
                                                   (_recur14139_
                                                    _rest14208_
                                                    _is-e?14145_)))))
                                           (_E1421114237_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1421014217_)
                                                  (let ((_e1421314225_
                                                         (gx#syntax-e
                                                          _e1421014217_)))
                                                    (let ((_hd1421414228_
                                                           (##car _e1421314225_))
                                                          (_tl1421514230_
                                                           (##cdr _e1421314225_)))
                                                      (let* ((_rest-hd14233_
                                                              _hd1421414228_)
                                                             (_rest-tl14235_
                                                              _tl1421514230_))
                                                        (if '#t
                                                            (if (_is-e?14145_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rest-hd14233_)
                        (_lp14206_ _rest-tl14235_ (fx+ _depth14209_ '1))
                        (if (fxpositive? _depth14209_)
                            (_make-splice14138_
                             _e14144_
                             _depth14209_
                             (_recur14139_ _hd14174_ _is-e?14145_)
                             (_recur14139_ _rest14208_ _is-e?14145_))
                            (_make-cons14137_
                             (_recur14139_ _hd14174_ _is-e?14145_)
                             (_recur14139_ _rest14208_ _is-e?14145_))))
                    (_E1421214221_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1421214221_)))))
                                      (_E1421114237_))))
                              (_E1415314162_)))))
                    (_E1415314162_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1415214241_))
                                              (if (gx#stx-vector? _e14144_)
                                                  (let ((_g14500_
                                                         (_recur14139_
                                                          (vector->list
                                                           (gx#stx-unwrap__0
                                                            _e14144_))
                                                          _is-e?14145_)))
                                                    (begin
                                                      (let ((_g14501_
                                                             (values-count
                                                              _g14500_)))
                                                        (if (not (fx= _g14501_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g14501_)))
              (let ((_e14245_ (values-ref _g14500_ 0))
                    (_vars14246_ (values-ref _g14500_ 1)))
                (values (cons 'vector _e14245_) _vars14246_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e14144_)
                                                      (let ((_g14502_
                                                             (_recur14139_
                                                              (unbox (gx#stx-unwrap__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e14144_))
                      _is-e?14145_)))
                (begin
                  (let ((_g14503_ (values-count _g14502_)))
                    (if (not (fx= _g14503_ 2))
                        (error "Context expects 2 values" _g14503_)))
                  (let ((_e14248_ (values-ref _g14502_ 0))
                        (_vars14249_ (values-ref _g14502_ 1)))
                    (values (cons 'box _e14248_) _vars14249_))))
              (values (cons 'datum _e14144_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    (let ((_g14504_ (_recur14139_ _e14135_ gx#ellipsis?)))
                      (begin
                        (let ((_g14505_ (values-count _g14504_)))
                          (if (not (fx= _g14505_ 2))
                              (error "Context expects 2 values" _g14505_)))
                        (let ((_tree14141_ (values-ref _g14504_ 0))
                              (_vars14142_ (values-ref _g14504_ 1)))
                          (if (null? _vars14142_)
                              _tree14141_
                              (gx#raise-syntax-error
                               '#f
                               '"Missing ellipsis"
                               _stx14091_
                               _vars14142_)))))))))
        (let* ((_e1409514105_ _stx14091_)
               (_E1409714109_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _stx14091_)))
               (_E1409614131_
                (lambda ()
                  (if (gx#stx-pair? _e1409514105_)
                      (let ((_e1409814113_ (gx#syntax-e _e1409514105_)))
                        (let ((_hd1409914116_ (##car _e1409814113_))
                              (_tl1410014118_ (##cdr _e1409814113_)))
                          (if (gx#stx-pair? _tl1410014118_)
                              (let ((_e1410114121_
                                     (gx#syntax-e _tl1410014118_)))
                                (let ((_hd1410214124_ (##car _e1410114121_))
                                      (_tl1410314126_ (##cdr _e1410114121_)))
                                  (let ((_form14129_ _hd1410214124_))
                                    (if (gx#stx-null? _tl1410314126_)
                                        (if '#t
                                            (gx#stx-wrap-source
                                             (_generate14093_
                                              (_parse14094_ _form14129_))
                                             (gx#stx-source _stx14091_))
                                            (_E1409714109_))
                                        (_E1409714109_)))))
                              (_E1409714109_))))
                      (_E1409714109_)))))
          (_E1409614131_)))))
  (begin
    (define gx#macro-expand-syntax-case__opt-lambda13361
      (lambda (_stx13363_ _identifier=?13364_ _unwrap-e13365_ _wrap-e13366_)
        (letrec ((_generate-bindings13368_
                  (lambda (_target13953_
                           _ids13954_
                           _clauses13955_
                           _clause-ids13956_
                           _E13957_)
                    (letrec ((_generate113959_
                              (lambda (_clause14058_ _clause-id14059_ _E14060_)
                                (cons (cons _clause-id14059_ '())
                                      (cons (gx#core-list
                                             'lambda%
                                             (cons _target13953_ '())
                                             (_generate-clause13370_
                                              _target13953_
                                              _ids13954_
                                              _clause14058_
                                              _E14060_))
                                            '())))))
                      (let _lp13961_ ((_rest13963_ _clauses13955_)
                                      (_rest-ids13964_ _clause-ids13956_)
                                      (_bindings13965_ '()))
                        (let* ((_rest1396613974_ _rest13963_)
                               (_E1396913978_
                                (lambda ()
                                  (error '"No clause matching"
                                         _rest1396613974_)))
                               (_else1396813982_ (lambda () _bindings13965_))
                               (_K1397014046_
                                (lambda (_rest13985_ _clause13986_)
                                  (let* ((_rest-ids1398713994_ _rest-ids13964_)
                                         (_E1398913998_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids1398713994_)))
                                         (_K1399014034_
                                          (lambda (_rest-ids14001_
                                                   _clause-id14002_)
                                            (let* ((_rest-ids1400314011_
                                                    _rest-ids14001_)
                                                   (_E1400614015_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _rest-ids1400314011_)))
                                                   (_else1400514019_
                                                    (lambda ()
                                                      (cons (_generate113959_
                                                             _clause13986_
                                                             _clause-id14002_
                                                             _E13957_)
                                                            _bindings13965_)))
                                                   (_K1400714024_
                                                    (lambda (_next-clause-id14022_)
                                                      (_lp13961_
                                                       _rest13985_
                                                       _rest-ids14001_
                                                       (cons (_generate113959_
                                                              _clause13986_
                                                              _clause-id14002_
                                                              _next-clause-id14022_)
                                                             _bindings13965_)))))
                                              (if (##pair? _rest-ids1400314011_)
                                                  (let ((_hd1400814027_
                                                         (##car _rest-ids1400314011_))
                                                        (_tl1400914029_
                                                         (##cdr _rest-ids1400314011_)))
                                                    (let ((_next-clause-id14032_
                                                           _hd1400814027_))
                                                      (_K1400714024_
                                                       _next-clause-id14032_)))
                                                  (_else1400514019_))))))
                                    (if (##pair? _rest-ids1398713994_)
                                        (let ((_hd1399114037_
                                               (##car _rest-ids1398713994_))
                                              (_tl1399214039_
                                               (##cdr _rest-ids1398713994_)))
                                          (let* ((_clause-id14042_
                                                  _hd1399114037_)
                                                 (_rest-ids14044_
                                                  _tl1399214039_))
                                            (_K1399014034_
                                             _rest-ids14044_
                                             _clause-id14042_)))
                                        (_E1398913998_))))))
                          (if (##pair? _rest1396613974_)
                              (let ((_hd1397114049_ (##car _rest1396613974_))
                                    (_tl1397214051_ (##cdr _rest1396613974_)))
                                (let* ((_clause14054_ _hd1397114049_)
                                       (_rest14056_ _tl1397214051_))
                                  (_K1397014046_ _rest14056_ _clause14054_)))
                              (_else1396813982_)))))))
                 (_generate-body13369_
                  (lambda (_bindings13913_ _body13914_)
                    (let _recur13916_ ((_rest13918_ _bindings13913_))
                      (let* ((_rest1391913927_ _rest13918_)
                             (_E1392213931_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1391913927_)))
                             (_else1392113935_ (lambda () _body13914_))
                             (_K1392313941_
                              (lambda (_rest13938_ _hd13939_)
                                (gx#core-list
                                 'let-values
                                 (cons _hd13939_ '())
                                 (_recur13916_ _rest13938_)))))
                        (if (##pair? _rest1391913927_)
                            (let ((_hd1392413944_ (##car _rest1391913927_))
                                  (_tl1392513946_ (##cdr _rest1391913927_)))
                              (let* ((_hd13949_ _hd1392413944_)
                                     (_rest13951_ _tl1392513946_))
                                (_K1392313941_ _rest13951_ _hd13949_)))
                            (_else1392113935_))))))
                 (_generate-clause13370_
                  (lambda (_target13776_ _ids13777_ _clause13778_ _E13779_)
                    (letrec ((_generate113781_
                              (lambda (_hd13868_ _fender13869_ _body13870_)
                                (let ((_g14506_
                                       (_parse-clause13372_
                                        _hd13868_
                                        _ids13777_)))
                                  (begin
                                    (let ((_g14507_ (values-count _g14506_)))
                                      (if (not (fx= _g14507_ 2))
                                          (error "Context expects 2 values"
                                                 _g14507_)))
                                    (let ((_e13872_ (values-ref _g14506_ 0))
                                          (_mvars13873_
                                           (values-ref _g14506_ 1)))
                                      (let* ((_pvars13875_
                                              (map gx#syntax-local-rewrap
                                                   (gx#gentemps _mvars13873_)))
                                             (_E13877_
                                              (cons _E13779_
                                                    (cons _target13776_ '())))
                                             (_K13910_
                                              (gx#core-list
                                               'lambda%
                                               _pvars13875_
                                               (gx#core-list
                                                'let-syntax
                                                (map (lambda (_mvar13879_
                                                              _pvar13880_)
                                                       (let* ((_mvar1388113888_
                                                               _mvar13879_)
                                                              (_E1388313892_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (error '"No clause matching" _mvar1388113888_)))
                      (_K1388413898_
                       (lambda (_depth13895_ _id13896_)
                         (cons _id13896_
                               (cons (gx#core-list
                                      'make-syntax-pattern
                                      (gx#core-list 'quote _id13896_)
                                      (gx#core-list 'quote _pvar13880_)
                                      _depth13895_)
                                     '())))))
                 (if (##pair? _mvar1388113888_)
                     (let ((_hd1388513901_ (##car _mvar1388113888_))
                           (_tl1388613903_ (##cdr _mvar1388113888_)))
                       (let* ((_id13906_ _hd1388513901_)
                              (_depth13908_ _tl1388613903_))
                         (_K1388413898_ _depth13908_ _id13906_)))
                     (_E1388313892_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _mvars13873_
                                                     _pvars13875_)
                                                (if (eq? _fender13869_ '#t)
                                                    _body13870_
                                                    (gx#core-list
                                                     'if
                                                     _fender13869_
                                                     _body13870_
                                                     _E13877_))))))
                                        (_generate-match13371_
                                         _hd13868_
                                         _target13776_
                                         _e13872_
                                         _mvars13873_
                                         _K13910_
                                         _E13877_))))))))
                      (let* ((_e1378213802_ _clause13778_)
                             (_E1379113806_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _e1378213802_)))
                             (_E1378413840_
                              (lambda ()
                                (if (gx#stx-pair? _e1378213802_)
                                    (let ((_e1379213810_
                                           (gx#syntax-e _e1378213802_)))
                                      (let ((_hd1379313813_
                                             (##car _e1379213810_))
                                            (_tl1379413815_
                                             (##cdr _e1379213810_)))
                                        (let ((_hd13818_ _hd1379313813_))
                                          (if (gx#stx-pair? _tl1379413815_)
                                              (let ((_e1379513820_
                                                     (gx#syntax-e
                                                      _tl1379413815_)))
                                                (let ((_hd1379613823_
                                                       (##car _e1379513820_))
                                                      (_tl1379713825_
                                                       (##cdr _e1379513820_)))
                                                  (let ((_fender13828_
                                                         _hd1379613823_))
                                                    (if (gx#stx-pair?
                                                         _tl1379713825_)
                                                        (let ((_e1379813830_
                                                               (gx#syntax-e
                                                                _tl1379713825_)))
                                                          (let ((_hd1379913833_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1379813830_))
                        (_tl1380013835_ (##cdr _e1379813830_)))
                    (let ((_body13838_ _hd1379913833_))
                      (if (gx#stx-null? _tl1380013835_)
                          (if '#t
                              (_generate113781_
                               _hd13818_
                               _fender13828_
                               _body13838_)
                              (_E1379113806_))
                          (_E1379113806_)))))
                (_E1379113806_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1379113806_)))))
                                    (_E1379113806_))))
                             (_E1378313864_
                              (lambda ()
                                (if (gx#stx-pair? _e1378213802_)
                                    (let ((_e1378513844_
                                           (gx#syntax-e _e1378213802_)))
                                      (let ((_hd1378613847_
                                             (##car _e1378513844_))
                                            (_tl1378713849_
                                             (##cdr _e1378513844_)))
                                        (let ((_hd13852_ _hd1378613847_))
                                          (if (gx#stx-pair? _tl1378713849_)
                                              (let ((_e1378813854_
                                                     (gx#syntax-e
                                                      _tl1378713849_)))
                                                (let ((_hd1378913857_
                                                       (##car _e1378813854_))
                                                      (_tl1379013859_
                                                       (##cdr _e1378813854_)))
                                                  (let ((_body13862_
                                                         _hd1378913857_))
                                                    (if (gx#stx-null?
                                                         _tl1379013859_)
                                                        (if '#t
                                                            (_generate113781_
                                                             _hd13852_
                                                             '#t
                                                             _body13862_)
                                                            (_E1378413840_))
                                                        (_E1378413840_)))))
                                              (_E1378413840_)))))
                                    (_E1378413840_)))))
                        (_E1378313864_)))))
                 (_generate-match13371_
                  (lambda (_where13535_
                           _target13536_
                           _hd13537_
                           _mvars13538_
                           _K13539_
                           _E13540_)
                    (letrec ((_BUG13542_
                              (lambda (_q13774_)
                                (error '"BUG: syntax-case; generate"
                                       _stx13363_
                                       _hd13537_
                                       _q13774_)))
                             (_recur13543_
                              (lambda (_e13628_
                                       _vars13629_
                                       _target13630_
                                       _E13631_
                                       _k13632_)
                                (let* ((_e1363313640_ _e13628_)
                                       (_E1363513644_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e1363313640_)))
                                       (_K1363613762_
                                        (lambda (_body13647_ _tag13648_)
                                          (let ((_$e13650_ _tag13648_))
                                            (if (eq? _$e13650_ 'any)
                                                (_k13632_ _vars13629_)
                                                (if (eq? _$e13650_ 'id)
                                                    (gx#core-list
                                                     'if
                                                     (gx#core-list
                                                      'identifier?
                                                      _target13630_)
                                                     (gx#core-list
                                                      'if
                                                      (gx#core-list
                                                       _identifier=?13364_
                                                       (gx#core-list
                                                        _wrap-e13366_
                                                        _body13647_)
                                                       _target13630_)
                                                      (_k13632_ _vars13629_)
                                                      _E13631_)
                                                     _E13631_)
                                                    (if (eq? _$e13650_ 'var)
                                                        (_k13632_
                                                         (cons (cons _body13647_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _target13630_)
                       _vars13629_))
                (if (eq? _$e13650_ 'cons)
                    (let ((_$e13653_ (gx#genident__1 'e))
                          (_$hd13654_ (gx#genident__1 'hd))
                          (_$tl13655_ (gx#genident__1 'tl)))
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _target13630_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$e13653_ '())
                                    (cons (gx#core-list
                                           _unwrap-e13365_
                                           _target13630_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$hd13654_ '())
                                     (cons (gx#core-list '##car _$e13653_)
                                           '()))
                               (cons (cons (cons _$tl13655_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$e13653_)
                                                 '()))
                                     '()))
                         (let* ((_body1365613663_ _body13647_)
                                (_E1365813667_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _body1365613663_)))
                                (_K1365913675_
                                 (lambda (_tl13670_ _hd13671_)
                                   (_recur13543_
                                    _hd13671_
                                    _vars13629_
                                    _$hd13654_
                                    _E13631_
                                    (lambda (_vars13673_)
                                      (_recur13543_
                                       _tl13670_
                                       _vars13673_
                                       _$tl13655_
                                       _E13631_
                                       _k13632_))))))
                           (if (##pair? _body1365613663_)
                               (let ((_hd1366013678_ (##car _body1365613663_))
                                     (_tl1366113680_ (##cdr _body1365613663_)))
                                 (let* ((_hd13683_ _hd1366013678_)
                                        (_tl13685_ _tl1366113680_))
                                   (_K1365913675_ _tl13685_ _hd13683_)))
                               (_E1365813667_)))))
                       _E13631_))
                    (if (eq? _$e13650_ 'splice)
                        (let* ((_body1368613693_ _body13647_)
                               (_E1368813697_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body1368613693_)))
                               (_K1368913746_
                                (lambda (_tl13700_ _hd13701_)
                                  (let* ((_rlen13703_
                                          (_splice-rlen13544_ _tl13700_))
                                         (_$target13705_
                                          (gx#genident__1 'target))
                                         (_$hd13707_ (gx#genident__1 'hd))
                                         (_$tl13709_ (gx#genident__1 'tl))
                                         (_$lp13711_ (gx#genident__1 'loop))
                                         (_$lp-e13713_ (gx#genident__1 'e))
                                         (_$lp-hd13715_
                                          (gx#genident__1 'lp-hd))
                                         (_$lp-tl13717_
                                          (gx#genident__1 'lp-tl))
                                         (_svars13719_
                                          (_splice-vars13545_ _hd13701_))
                                         (_lvars13721_
                                          (gx#gentemps _svars13719_))
                                         (_tlvars13723_
                                          (gx#gentemps _svars13719_))
                                         (_linit13727_
                                          (map (lambda (_var13725_)
                                                 (gx#core-list 'quote '()))
                                               _lvars13721_)))
                                    (letrec ((_make-loop13730_
                                              (lambda (_vars13732_)
                                                (gx#core-list
                                                 'letrec-values
                                                 (cons (cons (cons _$lp13711_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _$hd13707_ _lvars13721_)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-pair? _$hd13707_)
                             (gx#core-list
                              'let-values
                              (cons (cons (cons _$lp-e13713_ '())
                                          (cons (gx#core-list
                                                 _unwrap-e13365_
                                                 _$hd13707_)
                                                '()))
                                    '())
                              (gx#core-list
                               'let-values
                               (cons (cons (cons _$lp-hd13715_ '())
                                           (cons (gx#core-list
                                                  '##car
                                                  _$lp-e13713_)
                                                 '()))
                                     (cons (cons (cons _$lp-tl13717_ '())
                                                 (cons (gx#core-list
                                                        '##cdr
                                                        _$lp-e13713_)
                                                       '()))
                                           '()))
                               (_recur13543_
                                _hd13701_
                                '()
                                _$lp-hd13715_
                                _E13631_
                                (lambda (_hdvars13734_)
                                  (cons* _$lp13711_
                                         _$lp-tl13717_
                                         (map (lambda (_svar13736_ _lvar13737_)
                                                (gx#core-list
                                                 'cons
                                                 (assgetq _svar13736_
                                                          _hdvars13734_
                                                          _BUG13542_)
                                                 _lvar13737_))
                                              _svars13719_
                                              _lvars13721_))))))
                             (gx#core-list
                              'let-values
                              (map (lambda (_lvar13739_ _tlvar13740_)
                                     (cons (cons _tlvar13740_ '())
                                           (cons (gx#core-list
                                                  'reverse
                                                  _lvar13739_)
                                                 '())))
                                   _lvars13721_
                                   _tlvars13723_)
                              (_k13632_
                               (foldl (lambda (_svar13742_
                                               _tlvar13743_
                                               _r13744_)
                                        (cons (cons _svar13742_ _tlvar13743_)
                                              _r13744_))
                                      _vars13732_
                                      _svars13719_
                                      _tlvars13723_)))))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons* _$lp13711_
                                                        _$target13705_
                                                        _linit13727_)))))
                                      (gx#core-list
                                       'if
                                       (gx#core-list
                                        'stx-pair/null?
                                        _target13630_)
                                       (gx#core-list
                                        'if
                                        (gx#core-list
                                         'fx>=
                                         (gx#core-list
                                          'stx-length
                                          _target13630_)
                                         _rlen13703_)
                                        (gx#core-list
                                         'let-values
                                         (cons (cons (cons _$target13705_
                                                           (cons _$tl13709_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (gx#core-list
                                                            'syntax-split-splice
                                                            _target13630_
                                                            _rlen13703_)
                                                           '()))
                                               '())
                                         (_recur13543_
                                          _tl13700_
                                          _vars13629_
                                          _$tl13709_
                                          _E13631_
                                          _make-loop13730_))
                                        _E13631_)
                                       _E13631_))))))
                          (if (##pair? _body1368613693_)
                              (let ((_hd1369013749_ (##car _body1368613693_))
                                    (_tl1369113751_ (##cdr _body1368613693_)))
                                (let* ((_hd13754_ _hd1369013749_)
                                       (_tl13756_ _tl1369113751_))
                                  (_K1368913746_ _tl13756_ _hd13754_)))
                              (_E1368813697_)))
                        (if (eq? _$e13650_ 'null)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-null? _target13630_)
                             (_k13632_ _vars13629_)
                             _E13631_)
                            (if (eq? _$e13650_ 'vector)
                                (let ((_$e13758_ (gx#genident__1 'e)))
                                  (gx#core-list
                                   'if
                                   (gx#core-list 'stx-vector? _target13630_)
                                   (gx#core-list
                                    'let-values
                                    (cons (cons (cons _$e13758_ '())
                                                (cons (gx#core-list
                                                       'vector->list
                                                       (gx#core-list
                                                        _unwrap-e13365_
                                                        _target13630_))
                                                      '()))
                                          '())
                                    (_recur13543_
                                     _body13647_
                                     _vars13629_
                                     _$e13758_
                                     _E13631_
                                     _k13632_))
                                   _E13631_))
                                (if (eq? _$e13650_ 'box)
                                    (let ((_$e13760_ (gx#genident__1 'e)))
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-box? _target13630_)
                                       (gx#core-list
                                        'let-values
                                        (cons (cons (cons _$e13760_ '())
                                                    (cons (gx#core-list
                                                           'unbox
                                                           (gx#core-list
                                                            _unwrap-e13365_
                                                            _target13630_))
                                                          '()))
                                              '())
                                        (_recur13543_
                                         _body13647_
                                         _vars13629_
                                         _$e13760_
                                         _E13631_
                                         _k13632_))
                                       _E13631_))
                                    (if (eq? _$e13650_ 'datum)
                                        (gx#core-list
                                         'if
                                         (gx#core-list
                                          'stx-datum?
                                          _target13630_)
                                         (gx#core-list
                                          'if
                                          (gx#core-list
                                           'equal?
                                           (gx#core-list 'stx-e _target13630_)
                                           _body13647_)
                                          (_k13632_ _vars13629_)
                                          _E13631_)
                                         _E13631_)
                                        (_BUG13542_ _e13628_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (##pair? _e1363313640_)
                                      (let ((_hd1363713765_
                                             (##car _e1363313640_))
                                            (_tl1363813767_
                                             (##cdr _e1363313640_)))
                                        (let* ((_tag13770_ _hd1363713765_)
                                               (_body13772_ _tl1363813767_))
                                          (_K1363613762_
                                           _body13772_
                                           _tag13770_)))
                                      (_E1363513644_)))))
                             (_splice-rlen13544_
                              (lambda (_e13590_)
                                (let _lp13592_ ((_e13594_ _e13590_)
                                                (_n13595_ '0))
                                  (let* ((_e1359613603_ _e13594_)
                                         (_E1359813607_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1359613603_)))
                                         (_K1359913616_
                                          (lambda (_body13610_ _tag13611_)
                                            (let ((_$e13613_ _tag13611_))
                                              (if (eq? _$e13613_ 'splice)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Ambiguous pattern"
                                                   _stx13363_
                                                   _where13535_)
                                                  (if (eq? _$e13613_ 'cons)
                                                      (_lp13592_
                                                       (cdr _body13610_)
                                                       (fx+ _n13595_ '1))
                                                      _n13595_))))))
                                    (if (##pair? _e1359613603_)
                                        (let ((_hd1360013619_
                                               (##car _e1359613603_))
                                              (_tl1360113621_
                                               (##cdr _e1359613603_)))
                                          (let* ((_tag13624_ _hd1360013619_)
                                                 (_body13626_ _tl1360113621_))
                                            (_K1359913616_
                                             _body13626_
                                             _tag13624_)))
                                        (_E1359813607_))))))
                             (_splice-vars13545_
                              (lambda (_e13552_)
                                (let _recur13554_ ((_e13556_ _e13552_)
                                                   (_vars13557_ '()))
                                  (let* ((_e1355813565_ _e13556_)
                                         (_E1356013569_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1355813565_)))
                                         (_K1356113578_
                                          (lambda (_body13572_ _tag13573_)
                                            (let ((_$e13575_ _tag13573_))
                                              (if (eq? _$e13575_ 'var)
                                                  (cons _body13572_
                                                        _vars13557_)
                                                  (if (memq _$e13575_
                                                            '(cons splice))
                                                      (_recur13554_
                                                       (cdr _body13572_)
                                                       (_recur13554_
                                                        (car _body13572_)
                                                        _vars13557_))
                                                      (if (memq _$e13575_
                                                                '(vector box))
                                                          (_recur13554_
                                                           _body13572_
                                                           _vars13557_)
                                                          _vars13557_)))))))
                                    (if (##pair? _e1355813565_)
                                        (let ((_hd1356213581_
                                               (##car _e1355813565_))
                                              (_tl1356313583_
                                               (##cdr _e1355813565_)))
                                          (let* ((_tag13586_ _hd1356213581_)
                                                 (_body13588_ _tl1356313583_))
                                            (_K1356113578_
                                             _body13588_
                                             _tag13586_)))
                                        (_E1356013569_))))))
                             (_make-body13546_
                              (lambda (_vars13548_)
                                (cons _K13539_
                                      (map (lambda (_mvar13550_)
                                             (assgetq (car _mvar13550_)
                                                      _vars13548_
                                                      _BUG13542_))
                                           _mvars13538_)))))
                      (_recur13543_
                       _hd13537_
                       '()
                       _target13536_
                       _E13540_
                       _make-body13546_))))
                 (_parse-clause13372_
                  (lambda (_hd13441_ _ids13442_)
                    (let _recur13444_ ((_e13446_ _hd13441_)
                                       (_vars13447_ '())
                                       (_depth13448_ '0))
                      (if (gx#identifier? _e13446_)
                          (if (gx#underscore? _e13446_)
                              (values '(any) _vars13447_)
                              (if (gx#ellipsis? _e13446_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Misplaced ellipsis"
                                   _stx13363_
                                   _hd13441_)
                                  (if (find (lambda (_id13450_)
                                              (gx#bound-identifier=?
                                               _e13446_
                                               _id13450_))
                                            _ids13442_)
                                      (values (cons 'id _e13446_) _vars13447_)
                                      (if (find (lambda (_var13452_)
                                                  (gx#bound-identifier=?
                                                   _e13446_
                                                   (car _var13452_)))
                                                _vars13447_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Duplicate pattern variable"
                                           _stx13363_
                                           _e13446_)
                                          (values (cons 'var _e13446_)
                                                  (cons (cons _e13446_
                                                              _depth13448_)
                                                        _vars13447_))))))
                          (if (gx#stx-pair? _e13446_)
                              (let* ((_e1345313460_ _e13446_)
                                     (_E1345513464_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _e1345313460_)))
                                     (_E1345413525_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1345313460_)
                                            (let ((_e1345613468_
                                                   (gx#syntax-e
                                                    _e1345313460_)))
                                              (let ((_hd1345713471_
                                                     (##car _e1345613468_))
                                                    (_tl1345813473_
                                                     (##cdr _e1345613468_)))
                                                (let* ((_hd13476_
                                                        _hd1345713471_)
                                                       (_rest13478_
                                                        _tl1345813473_))
                                                  (if '#t
                                                      (let* ((_make-pair13493_
                                                              (lambda (_tag13480_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd13481_
                               _tl13482_)
                        (let* ((_hd-depth13484_
                                (if (eq? _tag13480_ 'splice)
                                    (fx+ _depth13448_ '1)
                                    _depth13448_))
                               (_g14508_
                                (_recur13444_
                                 _hd13481_
                                 _vars13447_
                                 _hd-depth13484_)))
                          (begin
                            (let ((_g14509_ (values-count _g14508_)))
                              (if (not (fx= _g14509_ 2))
                                  (error "Context expects 2 values" _g14509_)))
                            (let ((_hd13486_ (values-ref _g14508_ 0))
                                  (_vars13487_ (values-ref _g14508_ 1)))
                              (let ((_g14510_
                                     (_recur13444_
                                      _tl13482_
                                      _vars13487_
                                      _depth13448_)))
                                (begin
                                  (let ((_g14511_ (values-count _g14510_)))
                                    (if (not (fx= _g14511_ 2))
                                        (error "Context expects 2 values"
                                               _g14511_)))
                                  (let ((_tl13489_ (values-ref _g14510_ 0))
                                        (_vars13490_ (values-ref _g14510_ 1)))
                                    (let ()
                                      (values (cons* _tag13480_
                                                     _hd13486_
                                                     _tl13489_)
                                              _vars13490_))))))))))
                     (_e1349413501_ _rest13478_)
                     (_E1349613505_
                      (lambda ()
                        (_make-pair13493_ 'cons _hd13476_ _rest13478_)))
                     (_E1349513521_
                      (lambda ()
                        (if (gx#stx-pair? _e1349413501_)
                            (let ((_e1349713509_ (gx#syntax-e _e1349413501_)))
                              (let ((_hd1349813512_ (##car _e1349713509_))
                                    (_tl1349913514_ (##cdr _e1349713509_)))
                                (let* ((_rest-hd13517_ _hd1349813512_)
                                       (_rest-tl13519_ _tl1349913514_))
                                  (if '#t
                                      (if (gx#ellipsis? _rest-hd13517_)
                                          (_make-pair13493_
                                           'splice
                                           _hd13476_
                                           _rest-tl13519_)
                                          (_make-pair13493_
                                           'cons
                                           _hd13476_
                                           _rest13478_))
                                      (_E1349613505_)))))
                            (_E1349613505_)))))
                (_E1349513521_))
              (_E1345513464_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1345513464_)))))
                                (_E1345413525_))
                              (if (gx#stx-null? _e13446_)
                                  (values '(null) _vars13447_)
                                  (if (gx#stx-vector? _e13446_)
                                      (let ((_g14512_
                                             (_recur13444_
                                              (vector->list
                                               (gx#syntax-e _e13446_))
                                              _vars13447_
                                              _depth13448_)))
                                        (begin
                                          (let ((_g14513_
                                                 (values-count _g14512_)))
                                            (if (not (fx= _g14513_ 2))
                                                (error "Context expects 2 values"
                                                       _g14513_)))
                                          (let ((_e13529_
                                                 (values-ref _g14512_ 0))
                                                (_vars13530_
                                                 (values-ref _g14512_ 1)))
                                            (values (cons 'vector _e13529_)
                                                    _vars13530_))))
                                      (if (gx#stx-box? _e13446_)
                                          (let ((_g14514_
                                                 (_recur13444_
                                                  (unbox (gx#syntax-e
                                                          _e13446_))
                                                  _vars13447_
                                                  _depth13448_)))
                                            (begin
                                              (let ((_g14515_
                                                     (values-count _g14514_)))
                                                (if (not (fx= _g14515_ 2))
                                                    (error "Context expects 2 values"
                                                           _g14515_)))
                                              (let ((_e13532_
                                                     (values-ref _g14514_ 0))
                                                    (_vars13533_
                                                     (values-ref _g14514_ 1)))
                                                (values (cons 'box _e13532_)
                                                        _vars13533_))))
                                          (if (gx#stx-datum? _e13446_)
                                              (values (cons 'datum
                                                            (gx#stx-e
                                                             _e13446_))
                                                      _vars13447_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad pattern"
                                               _stx13363_
                                               _e13446_)))))))))))
          (let* ((_e1337313386_ _stx13363_)
                 (_E1337513390_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1337313386_)))
                 (_E1337413437_
                  (lambda ()
                    (if (gx#stx-pair? _e1337313386_)
                        (let ((_e1337613394_ (gx#syntax-e _e1337313386_)))
                          (let ((_hd1337713397_ (##car _e1337613394_))
                                (_tl1337813399_ (##cdr _e1337613394_)))
                            (if (gx#stx-pair? _tl1337813399_)
                                (let ((_e1337913402_
                                       (gx#syntax-e _tl1337813399_)))
                                  (let ((_hd1338013405_ (##car _e1337913402_))
                                        (_tl1338113407_ (##cdr _e1337913402_)))
                                    (let ((_expr13410_ _hd1338013405_))
                                      (if (gx#stx-pair? _tl1338113407_)
                                          (let ((_e1338213412_
                                                 (gx#syntax-e _tl1338113407_)))
                                            (let ((_hd1338313415_
                                                   (##car _e1338213412_))
                                                  (_tl1338413417_
                                                   (##cdr _e1338213412_)))
                                              (let* ((_ids13420_
                                                      _hd1338313415_)
                                                     (_clauses13422_
                                                      _tl1338413417_))
                                                (if '#t
                                                    (if (not (gx#identifier-list?
                                                              _ids13420_))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad template identifier list"
                                                         _stx13363_
                                                         _ids13420_)
                                                        (if (not (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _clauses13422_))
                    (gx#raise-syntax-error '#f '"Bad syntax" _stx13363_)
                    (let* ((_ids13424_ (gx#syntax->list _ids13420_))
                           (_clauses13426_ (gx#syntax->list _clauses13422_))
                           (_clause-ids13428_ (gx#gentemps _clauses13426_))
                           (_E13430_ (gx#genident__0))
                           (_target13432_ (gx#genident__0))
                           (_first13434_
                            (if (null? _clauses13426_)
                                _E13430_
                                (car _clause-ids13428_))))
                      (gx#stx-wrap-source
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _E13430_ '())
                                    (cons (gx#core-list
                                           'lambda%
                                           (cons _target13432_ '())
                                           (gx#core-list
                                            'raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _target13432_))
                                          '()))
                              '())
                        (_generate-body13369_
                         (_generate-bindings13368_
                          _target13432_
                          _ids13424_
                          _clauses13426_
                          _clause-ids13428_
                          _E13430_)
                         (cons _first13434_ (cons _expr13410_ '()))))
                       (gx#stx-source _stx13363_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1337513390_)))))
                                          (_E1337513390_)))))
                                (_E1337513390_))))
                        (_E1337513390_)))))
            (_E1337413437_)))))
    (begin
      (define gx#macro-expand-syntax-case__0
        (lambda (_stx14065_)
          (let* ((_identifier=?14067_ 'free-identifier=?)
                 (_unwrap-e14069_ 'syntax-e)
                 (_wrap-e14071_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda13361
             _stx14065_
             _identifier=?14067_
             _unwrap-e14069_
             _wrap-e14071_))))
      (define gx#macro-expand-syntax-case__1
        (lambda (_stx14073_ _identifier=?14074_)
          (let* ((_unwrap-e14076_ 'syntax-e) (_wrap-e14078_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda13361
             _stx14073_
             _identifier=?14074_
             _unwrap-e14076_
             _wrap-e14078_))))
      (define gx#macro-expand-syntax-case__2
        (lambda (_stx14080_ _identifier=?14081_ _unwrap-e14082_)
          (let ((_wrap-e14084_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda13361
             _stx14080_
             _identifier=?14081_
             _unwrap-e14082_
             _wrap-e14084_))))
      (define gx#macro-expand-syntax-case
        (lambda _g14517_
          (let ((_g14516_ (length _g14517_)))
            (cond ((fx= _g14516_ 1)
                   (apply gx#macro-expand-syntax-case__0 _g14517_))
                  ((fx= _g14516_ 2)
                   (apply gx#macro-expand-syntax-case__1 _g14517_))
                  ((fx= _g14516_ 3)
                   (apply gx#macro-expand-syntax-case__2 _g14517_))
                  ((fx= _g14516_ 4)
                   (apply gx#macro-expand-syntax-case__opt-lambda13361
                          _g14517_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-syntax-case
                    _g14517_))))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx13360_)
      (if (gx#identifier? _stx13360_)
          (##structure-instance-of?
           (gx#syntax-local-e__opt-lambda4087 _stx13360_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd13318_ . _rest13319_)
      (let ((_len13321_ (length _hd13318_)))
        (let _lp13323_ ((_rest13325_ _rest13319_))
          (let* ((_rest1332613334_ _rest13325_)
                 (_E1332913338_
                  (lambda () (error '"No clause matching" _rest1332613334_)))
                 (_else1332813342_ (lambda () '#!void))
                 (_K1333013348_
                  (lambda (_rest13345_ _hd13346_)
                    (if (fx= _len13321_ (length _hd13346_))
                        (_lp13323_ _rest13345_)
                        (gx#raise-syntax-error
                         '#f
                         '"Splice length mismatch"
                         _hd13346_)))))
            (if (##pair? _rest1332613334_)
                (let ((_hd1333113351_ (##car _rest1332613334_))
                      (_tl1333213353_ (##cdr _rest1332613334_)))
                  (let* ((_hd13356_ _hd1333113351_)
                         (_rest13358_ _tl1333213353_))
                    (_K1333013348_ _rest13358_ _hd13356_)))
                (_else1332813342_)))))))
  (define gx#syntax-split-splice
    (lambda (_stx13276_ _n13277_)
      (let _lp13279_ ((_rest13281_ _stx13276_) (_r13282_ '()))
        (if (gx#stx-pair? _rest13281_)
            (let* ((_g1328313290_ (gx#syntax-e _rest13281_))
                   (_E1328513294_
                    (lambda () (error '"No clause matching" _g1328313290_)))
                   (_K1328613300_
                    (lambda (_rest13297_ _hd13298_)
                      (_lp13279_ _rest13297_ (cons _hd13298_ _r13282_)))))
              (if (##pair? _g1328313290_)
                  (let ((_hd1328713303_ (##car _g1328313290_))
                        (_tl1328813305_ (##cdr _g1328313290_)))
                    (let* ((_hd13308_ _hd1328713303_)
                           (_rest13310_ _tl1328813305_))
                      (_K1328613300_ _rest13310_ _hd13308_)))
                  (_E1328513294_)))
            (let _lp13312_ ((_n13314_ _n13277_)
                            (_l13315_ _r13282_)
                            (_r13316_ _rest13281_))
              (if (null? _l13315_)
                  (values _l13315_ _r13316_)
                  (if (fxpositive? _n13314_)
                      (_lp13312_
                       (fx- _n13314_ '1)
                       (cdr _l13315_)
                       (cons (car _l13315_) _r13316_))
                      (values (reverse _l13315_) _r13316_)))))))))
