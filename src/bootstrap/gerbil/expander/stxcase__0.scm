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
    (lambda _$args12525_
      (apply make-struct-instance gx#syntax-pattern::t _$args12525_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self12522_ _stx12523_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx12523_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx12131_)
      (let ((_generate12133_
             (lambda (_e12360_)
               (let ((_BUG12362_
                      (lambda (_q12520_)
                        (error '"BUG: syntax; generate"
                               _stx12131_
                               _e12360_
                               _q12520_))))
                 (let ((_local-pattern-e12363_
                        (lambda (_pat12518_)
                          (gx#syntax-local-rewrap
                           (##structure-ref
                            _pat12518_
                            '2
                            gx#syntax-pattern::t
                            '#f)))))
                   (let ((_getvar12364_
                          (lambda (_q12515_ _vars12516_)
                            (assgetq _q12515_ _vars12516_ _BUG12362_))))
                     (let ((_getarg12365_
                            (lambda (_arg12481_ _vars12482_)
                              (let ((_arg1248312490_ _arg12481_))
                                (let ((_E1248512494_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _arg1248312490_))))
                                  (let ((_K1248612503_
                                         (lambda (_e12497_ _tag12498_)
                                           (let ((_$e12500_ _tag12498_))
                                             (if (eq? _$e12500_ 'ref)
                                                 (_getvar12364_
                                                  _e12497_
                                                  _vars12482_)
                                                 (if (eq? _$e12500_ 'pattern)
                                                     (_local-pattern-e12363_
                                                      _e12497_)
                                                     (_BUG12362_
                                                      _arg12481_)))))))
                                    (if (##pair? _arg1248312490_)
                                        (let ((_hd1248712506_
                                               (##car _arg1248312490_))
                                              (_tl1248812508_
                                               (##cdr _arg1248312490_)))
                                          (let ((_tag12511_ _hd1248712506_))
                                            (let ((_e12513_ _tl1248812508_))
                                              (_K1248612503_
                                               _e12513_
                                               _tag12511_))))
                                        (_E1248512494_))))))))
                       ((letrec ((_recur12367_
                                  (lambda (_e12369_ _vars12370_)
                                    (let ((_e1237112378_ _e12369_))
                                      (let ((_E1237312382_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _e1237112378_))))
                                        (let ((_K1237412469_
                                               (lambda (_body12385_ _tag12386_)
                                                 (let ((_$e12388_ _tag12386_))
                                                   (if (eq? _$e12388_ 'datum)
                                                       (gx#core-list
                                                        'quote
                                                        _body12385_)
                                                       (if (eq? _$e12388_
                                                                'term)
                                                           (gx#core-list
                                                            'datum->syntax
                                                            '#f
                                                            (gx#core-list
                                                             'quote
                                                             _body12385_))
                                                           (if (eq? _$e12388_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'pattern)
                       (_local-pattern-e12363_ _body12385_)
                       (if (eq? _$e12388_ 'ref)
                           (_getvar12364_ _body12385_ _vars12370_)
                           (if (eq? _$e12388_ 'cons)
                               (gx#core-list
                                'cons
                                (_recur12367_ (car _body12385_) _vars12370_)
                                (_recur12367_ (cdr _body12385_) _vars12370_))
                               (if (eq? _$e12388_ 'vector)
                                   (gx#core-list
                                    'list->vector
                                    (_recur12367_ _body12385_ _vars12370_))
                                   (if (eq? _$e12388_ 'box)
                                       (gx#core-list
                                        'box
                                        (_recur12367_ _body12385_ _vars12370_))
                                       (if (eq? _$e12388_ 'splice)
                                           (let ((_body1239012401_
                                                  _body12385_))
                                             (let ((_E1239212405_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _body1239012401_))))
                                               (let ((_K1239312443_
                                                      (lambda (_args12408_
                                                               _iv12409_
                                                               _hd12410_
                                                               _depth12411_)
                                                        (let ((_targets12417_
                                                               (map (lambda (_g1241212414_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_getarg12365_ _g1241212414_ _vars12370_))
                            _args12408_)))
                  (let ((_fold-in12419_ (gx#gentemps _args12408_)))
                    (let ((_fold-out12421_ (gx#genident)))
                      (let ((_lambda-args12423_
                             (foldr cons
                                    (cons _fold-out12421_ '())
                                    _fold-in12419_)))
                        (let ((_lambda-body12440_
                               (if (fx> _depth12411_ '1)
                                   (let ((_r-args12431_
                                          (map (lambda (_arg12425_)
                                                 (cons 'ref (cdr _arg12425_)))
                                               _args12408_))
                                         (_r-vars12432_
                                          (foldr (lambda (_arg12427_
                                                          _var12428_
                                                          _r12429_)
                                                   (cons (cons (cdr _arg12427_)
                                                               _var12428_)
                                                         _r12429_))
                                                 _vars12370_
                                                 _args12408_
                                                 _fold-in12419_)))
                                     (_recur12367_
                                      (cons* 'splice
                                             (fx1- _depth12411_)
                                             _hd12410_
                                             (cons 'var _fold-out12421_)
                                             _r-args12431_)
                                      _r-vars12432_))
                                   (let ((_hd-vars12438_
                                          (foldr (lambda (_arg12434_
                                                          _var12435_
                                                          _r12436_)
                                                   (cons (cons (cdr _arg12434_)
                                                               _var12435_)
                                                         _r12436_))
                                                 _vars12370_
                                                 _args12408_
                                                 _fold-in12419_)))
                                     (gx#core-list
                                      'cons
                                      (_recur12367_ _hd12410_ _hd-vars12438_)
                                      _fold-out12421_)))))
                          (let ()
                            (gx#core-list
                             'begin
                             (if (fx> (length _targets12417_) '1)
                                 (gx#core-cons*
                                  'syntax-check-splice-targets
                                  _targets12417_)
                                 '#!void)
                             (gx#core-cons*
                              'foldr
                              (gx#core-list
                               'lambda%
                               _lambda-args12423_
                               _lambda-body12440_)
                              (_recur12367_ _iv12409_ _vars12370_)
                              _targets12417_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _body1239012401_)
                                                     (let ((_hd1239412446_
                                                            (##car _body1239012401_))
                                                           (_tl1239512448_
                                                            (##cdr _body1239012401_)))
                                                       (let ((_depth12451_
                                                              _hd1239412446_))
                                                         (if (##pair? _tl1239512448_)
                                                             (let ((_hd1239612453_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##car _tl1239512448_))
                           (_tl1239712455_ (##cdr _tl1239512448_)))
                       (let ((_hd12458_ _hd1239612453_))
                         (if (##pair? _tl1239712455_)
                             (let ((_hd1239812460_ (##car _tl1239712455_))
                                   (_tl1239912462_ (##cdr _tl1239712455_)))
                               (let ((_iv12465_ _hd1239812460_))
                                 (let ((_args12467_ _tl1239912462_))
                                   (_K1239312443_
                                    _args12467_
                                    _iv12465_
                                    _hd12458_
                                    _depth12451_))))
                             (_E1239212405_))))
                     (_E1239212405_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1239212405_)))))
                                           (if (eq? _$e12388_ 'var)
                                               _body12385_
                                               (_BUG12362_
                                                _e12369_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _e1237112378_)
                                              (let ((_hd1237512472_
                                                     (##car _e1237112378_))
                                                    (_tl1237612474_
                                                     (##cdr _e1237112378_)))
                                                (let ((_tag12477_
                                                       _hd1237512472_))
                                                  (let ((_body12479_
                                                         _tl1237612474_))
                                                    (_K1237412469_
                                                     _body12479_
                                                     _tag12477_))))
                                              (_E1237312382_))))))))
                          _recur12367_)
                        _e12360_
                        '()))))))))
        (let ((_parse12134_
               (lambda (_e12175_)
                 (let ((_make-cons12177_
                        (lambda (_hd12352_ _tl12353_)
                          (let ((_g12537_ _hd12352_) (_g12539_ _tl12353_))
                            (begin
                              (let ((_g12538_ (values-count _g12537_)))
                                (if (not (fx= _g12538_ 2))
                                    (error "Context expects 2 values"
                                           _g12538_)))
                              (let ((_g12540_ (values-count _g12539_)))
                                (if (not (fx= _g12540_ 2))
                                    (error "Context expects 2 values"
                                           _g12540_)))
                              (let ((_hd-e12355_ (values-ref _g12537_ 0))
                                    (_hd-vars12356_ (values-ref _g12537_ 1)))
                                (let ((_tl-e12357_ (values-ref _g12539_ 0))
                                      (_tl-vars12358_ (values-ref _g12539_ 1)))
                                  (values (cons* 'cons _hd-e12355_ _tl-e12357_)
                                          (append _hd-vars12356_
                                                  _tl-vars12358_)))))))))
                   (let ((_make-splice12178_
                          (lambda (_where12291_
                                   _depth12292_
                                   _hd12293_
                                   _tl12294_)
                            (let ((_g12533_ _hd12293_) (_g12535_ _tl12294_))
                              (begin
                                (let ((_g12534_ (values-count _g12533_)))
                                  (if (not (fx= _g12534_ 2))
                                      (error "Context expects 2 values"
                                             _g12534_)))
                                (let ((_g12536_ (values-count _g12535_)))
                                  (if (not (fx= _g12536_ 2))
                                      (error "Context expects 2 values"
                                             _g12536_)))
                                (let ((_hd-e12296_ (values-ref _g12533_ 0))
                                      (_hd-vars12297_ (values-ref _g12533_ 1)))
                                  (let ((_tl-e12298_ (values-ref _g12535_ 0))
                                        (_tl-vars12299_
                                         (values-ref _g12535_ 1)))
                                    ((letrec ((_lp12301_
                                               (lambda (_rest12303_
                                                        _targets12304_
                                                        _vars12305_)
                                                 (let ((_rest1230612316_
                                                        _rest12303_))
                                                   (let ((_E1230912320_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest1230612316_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_else1230812324_
                                                            (lambda ()
                                                              (if (null? _targets12304_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Misplaced ellipsis"
                           _stx12131_
                           _where12291_)
                          (values (cons* 'splice
                                         _depth12292_
                                         _hd-e12296_
                                         _tl-e12298_
                                         _targets12304_)
                                  _vars12305_)))))
               (let ((_K1231012333_
                      (lambda (_rest12327_ _hd-pat12328_ _hd-depth*12329_)
                        (let ((_hd-depth12331_
                               (fx- _hd-depth*12329_ _depth12292_)))
                          (if (fxpositive? _hd-depth12331_)
                              (_lp12301_
                               _rest12327_
                               (cons (cons 'ref _hd-pat12328_) _targets12304_)
                               (cons (cons _hd-depth12331_ _hd-pat12328_)
                                     _vars12305_))
                              (if (fxzero? _hd-depth12331_)
                                  (_lp12301_
                                   _rest12327_
                                   (cons (cons 'pattern _hd-pat12328_)
                                         _targets12304_)
                                   _vars12305_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Too many ellipses"
                                   _stx12131_
                                   _where12291_)))))))
                 (if (##pair? _rest1230612316_)
                     (let ((_hd1231112336_ (##car _rest1230612316_))
                           (_tl1231212338_ (##cdr _rest1230612316_)))
                       (if (##pair? _hd1231112336_)
                           (let ((_hd1231312341_ (##car _hd1231112336_))
                                 (_tl1231412343_ (##cdr _hd1231112336_)))
                             (let ((_hd-depth*12346_ _hd1231312341_))
                               (let ((_hd-pat12348_ _tl1231412343_))
                                 (let ((_rest12350_ _tl1231212338_))
                                   (_K1231012333_
                                    _rest12350_
                                    _hd-pat12348_
                                    _hd-depth*12346_)))))
                           (_else1230812324_)))
                     (_else1230812324_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _lp12301_)
                                     _hd-vars12297_
                                     '()
                                     _tl-vars12299_))))))))
                     (letrec ((_recur12179_
                               (lambda (_e12184_ _is-e?12185_)
                                 (if (_is-e?12185_ _e12184_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Mislpaced ellipsis"
                                      _stx12131_)
                                     (if (gx#syntax-local-pattern? _e12184_)
                                         (let ((_pat12187_
                                                (gx#syntax-local-e _e12184_)))
                                           (let ((_depth12189_
                                                  (##structure-ref
                                                   _pat12187_
                                                   '3
                                                   gx#syntax-pattern::t
                                                   '#f)))
                                             (let ()
                                               (if (fxpositive? _depth12189_)
                                                   (values (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat12187_)
                   (cons (cons _depth12189_ _pat12187_) '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (values (cons 'pattern
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat12187_)
                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (if (gx#identifier? _e12184_)
                                             (values (cons 'term _e12184_) '())
                                             (if (gx#stx-pair? _e12184_)
                                                 (let ((_e1219112198_
                                                        _e12184_))
                                                   (let ((_E1219312202_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _e1219112198_))))
                                                     (let ((_E1219212281_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e1219112198_)
                          (let ((_e1219412206_ (gx#syntax-e _e1219112198_)))
                            (let ((_hd1219512209_ (##car _e1219412206_))
                                  (_tl1219612211_ (##cdr _e1219412206_)))
                              (let ((_hd12214_ _hd1219512209_))
                                (let ((_rest12216_ _tl1219612211_))
                                  (if '#t
                                      (if (_is-e?12185_ _hd12214_)
                                          (let ((_e1221712224_ _rest12216_))
                                            (let ((_E1221912228_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad ellipsis syntax"
                                                      _stx12131_
                                                      _e12184_))))
                                              (let ((_E1221812242_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e1221712224_)
                                                           (let ((_e1222012232_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e1221712224_)))
                     (let ((_hd1222112235_ (##car _e1222012232_))
                           (_tl1222212237_ (##cdr _e1222012232_)))
                       (let ((_rest12240_ _hd1222112235_))
                         (if (gx#stx-null? _tl1222212237_)
                             (if '#t
                                 (_recur12179_ _rest12240_ false)
                                 (_E1221912228_))
                             (_E1221912228_)))))
                   (_E1221912228_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E1221812242_)))))
                                          ((letrec ((_lp12246_
                                                     (lambda (_rest12248_
                                                              _depth12249_)
                                                       (let ((_e1225012257_
                                                              _rest12248_))
                                                         (let ((_E1225212261_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (fxpositive? _depth12249_)
                              (_make-splice12178_
                               _e12184_
                               _depth12249_
                               (_recur12179_ _hd12214_ _is-e?12185_)
                               (_recur12179_ _rest12248_ _is-e?12185_))
                              (_make-cons12177_
                               (_recur12179_ _hd12214_ _is-e?12185_)
                               (_recur12179_ _rest12248_ _is-e?12185_))))))
                   (let ((_E1225112277_
                          (lambda ()
                            (if (gx#stx-pair? _e1225012257_)
                                (let ((_e1225312265_
                                       (gx#syntax-e _e1225012257_)))
                                  (let ((_hd1225412268_ (##car _e1225312265_))
                                        (_tl1225512270_ (##cdr _e1225312265_)))
                                    (let ((_rest-hd12273_ _hd1225412268_))
                                      (let ((_rest-tl12275_ _tl1225512270_))
                                        (if '#t
                                            (if (_is-e?12185_ _rest-hd12273_)
                                                (_lp12246_
                                                 _rest-tl12275_
                                                 (fx1+ _depth12249_))
                                                (if (fxpositive? _depth12249_)
                                                    (_make-splice12178_
                                                     _e12184_
                                                     _depth12249_
                                                     (_recur12179_
                                                      _hd12214_
                                                      _is-e?12185_)
                                                     (_recur12179_
                                                      _rest12248_
                                                      _is-e?12185_))
                                                    (_make-cons12177_
                                                     (_recur12179_
                                                      _hd12214_
                                                      _is-e?12185_)
                                                     (_recur12179_
                                                      _rest12248_
                                                      _is-e?12185_))))
                                            (_E1225212261_))))))
                                (_E1225212261_)))))
                     (let () (_E1225112277_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _lp12246_)
                                           _rest12216_
                                           '0))
                                      (_E1219312202_))))))
                          (_E1219312202_)))))
               (let () (_E1219212281_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-vector? _e12184_)
                                                     (let ((_g12527_
                                                            (_recur12179_
                                                             (vector->list
                                                              (gx#stx-unwrap
                                                               _e12184_))
                                                             _is-e?12185_)))
                                                       (begin
                                                         (let ((_g12528_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g12527_)))
                   (if (not (fx= _g12528_ 2))
                       (error "Context expects 2 values" _g12528_)))
                 (let ((_e12285_ (values-ref _g12527_ 0))
                       (_vars12286_ (values-ref _g12527_ 1)))
                   (values (cons 'vector _e12285_) _vars12286_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-box? _e12184_)
                                                         (let ((_g12529_
                                                                (_recur12179_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (unbox (gx#stx-unwrap _e12184_))
                         _is-e?12185_)))
                   (begin
                     (let ((_g12530_ (values-count _g12529_)))
                       (if (not (fx= _g12530_ 2))
                           (error "Context expects 2 values" _g12530_)))
                     (let ((_e12288_ (values-ref _g12529_ 0))
                           (_vars12289_ (values-ref _g12529_ 1)))
                       (values (cons 'box _e12288_) _vars12289_))))
                 (values (cons 'datum _e12184_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       (let ((_g12531_ (_recur12179_ _e12175_ gx#ellipsis?)))
                         (begin
                           (let ((_g12532_ (values-count _g12531_)))
                             (if (not (fx= _g12532_ 2))
                                 (error "Context expects 2 values" _g12532_)))
                           (let ((_tree12181_ (values-ref _g12531_ 0))
                                 (_vars12182_ (values-ref _g12531_ 1)))
                             (if (null? _vars12182_)
                                 _tree12181_
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Missing ellipsis"
                                  _stx12131_
                                  _vars12182_)))))))))))
          (let ((_e1213512145_ _stx12131_))
            (let ((_E1213712149_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _stx12131_))))
              (let ((_E1213612171_
                     (lambda ()
                       (if (gx#stx-pair? _e1213512145_)
                           (let ((_e1213812153_ (gx#syntax-e _e1213512145_)))
                             (let ((_hd1213912156_ (##car _e1213812153_))
                                   (_tl1214012158_ (##cdr _e1213812153_)))
                               (if (gx#stx-pair? _tl1214012158_)
                                   (let ((_e1214112161_
                                          (gx#syntax-e _tl1214012158_)))
                                     (let ((_hd1214212164_
                                            (##car _e1214112161_))
                                           (_tl1214312166_
                                            (##cdr _e1214112161_)))
                                       (let ((_form12169_ _hd1214212164_))
                                         (if (gx#stx-null? _tl1214312166_)
                                             (if '#t
                                                 (gx#stx-wrap-source
                                                  (_generate12133_
                                                   (_parse12134_ _form12169_))
                                                  (gx#stx-source _stx12131_))
                                                 (_E1213712149_))
                                             (_E1213712149_)))))
                                   (_E1213712149_))))
                           (_E1213712149_)))))
                (let () (_E1213612171_)))))))))
  (define gx#macro-expand-syntax-case
    (let ((_opt-lambda1140112102_
           (lambda (_stx11403_
                    _identifier=?11404_
                    _unwrap-e11405_
                    _wrap-e11406_)
             (let ((_generate-body11409_
                    (lambda (_bindings11953_ _body11954_)
                      ((letrec ((_recur11956_
                                 (lambda (_rest11958_)
                                   (let ((_rest1195911967_ _rest11958_))
                                     (let ((_E1196211971_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _rest1195911967_))))
                                       (let ((_else1196111975_
                                              (lambda () _body11954_)))
                                         (let ((_K1196311981_
                                                (lambda (_rest11978_ _hd11979_)
                                                  (gx#core-list
                                                   'let-values
                                                   (cons _hd11979_ '())
                                                   (_recur11956_
                                                    _rest11978_)))))
                                           (if (##pair? _rest1195911967_)
                                               (let ((_hd1196411984_
                                                      (##car _rest1195911967_))
                                                     (_tl1196511986_
                                                      (##cdr _rest1195911967_)))
                                                 (let ((_hd11989_
                                                        _hd1196411984_))
                                                   (let ((_rest11991_
                                                          _tl1196511986_))
                                                     (_K1196311981_
                                                      _rest11991_
                                                      _hd11989_))))
                                               (_else1196111975_)))))))))
                         _recur11956_)
                       _bindings11953_))))
               (let ((_generate-match11411_
                      (lambda (_where11575_
                               _target11576_
                               _hd11577_
                               _mvars11578_
                               _K11579_
                               _E11580_)
                        (let ((_BUG11582_
                               (lambda (_q11814_)
                                 (error '"BUG: syntax-case; generate"
                                        _stx11403_
                                        _hd11577_
                                        _q11814_))))
                          (let ((_splice-rlen11584_
                                 (lambda (_e11630_)
                                   ((letrec ((_lp11632_
                                              (lambda (_e11634_ _n11635_)
                                                (let ((_e1163611643_ _e11634_))
                                                  (let ((_E1163811647_
                                                         (lambda ()
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e1163611643_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K1163911656_
                                                           (lambda (_body11650_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tag11651_)
                     (let ((_$e11653_ _tag11651_))
                       (if (eq? _$e11653_ 'splice)
                           (gx#raise-syntax-error
                            '#f
                            '"Ambiguous pattern"
                            _stx11403_
                            _where11575_)
                           (if (eq? _$e11653_ 'cons)
                               (_lp11632_ (cdr _body11650_) (fx1+ _n11635_))
                               _n11635_))))))
              (if (##pair? _e1163611643_)
                  (let ((_hd1164011659_ (##car _e1163611643_))
                        (_tl1164111661_ (##cdr _e1163611643_)))
                    (let ((_tag11664_ _hd1164011659_))
                      (let ((_body11666_ _tl1164111661_))
                        (_K1163911656_ _body11666_ _tag11664_))))
                  (_E1163811647_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _lp11632_)
                                    _e11630_
                                    '0))))
                            (let ((_splice-vars11585_
                                   (lambda (_e11592_)
                                     ((letrec ((_recur11594_
                                                (lambda (_e11596_ _vars11597_)
                                                  (let ((_e1159811605_
                                                         _e11596_))
                                                    (let ((_E1160011609_
                                                           (lambda ()
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _e1159811605_))))
              (let ((_K1160111618_
                     (lambda (_body11612_ _tag11613_)
                       (let ((_$e11615_ _tag11613_))
                         (if (eq? _$e11615_ 'var)
                             (cons _body11612_ _vars11597_)
                             (if (memq _$e11615_ '(cons splice))
                                 (_recur11594_
                                  (cdr _body11612_)
                                  (_recur11594_ (car _body11612_) _vars11597_))
                                 (if (memq _$e11615_ '(vector box))
                                     (_recur11594_ _body11612_ _vars11597_)
                                     _vars11597_)))))))
                (if (##pair? _e1159811605_)
                    (let ((_hd1160211621_ (##car _e1159811605_))
                          (_tl1160311623_ (##cdr _e1159811605_)))
                      (let ((_tag11626_ _hd1160211621_))
                        (let ((_body11628_ _tl1160311623_))
                          (_K1160111618_ _body11628_ _tag11626_))))
                    (_E1160011609_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _recur11594_)
                                      _e11592_
                                      '()))))
                              (let ((_make-body11586_
                                     (lambda (_vars11588_)
                                       (cons _K11579_
                                             (map (lambda (_mvar11590_)
                                                    (assgetq (car _mvar11590_)
                                                             _vars11588_
                                                             _BUG11582_))
                                                  _mvars11578_)))))
                                (letrec ((_recur11583_
                                          (lambda (_e11668_
                                                   _vars11669_
                                                   _target11670_
                                                   _E11671_
                                                   _k11672_)
                                            (let ((_e1167311680_ _e11668_))
                                              (let ((_E1167511684_
                                                     (lambda ()
                                                       (error '"No clause matching"
                                                              _e1167311680_))))
                                                (let ((_K1167611802_
                                                       (lambda (_body11687_
                                                                _tag11688_)
                                                         (let ((_$e11690_
                                                                _tag11688_))
                                                           (if (eq? _$e11690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'any)
                       (_k11672_ _vars11669_)
                       (if (eq? _$e11690_ 'id)
                           (gx#core-list
                            'if
                            (gx#core-list 'identifier? _target11670_)
                            (gx#core-list
                             'if
                             (gx#core-list
                              _identifier=?11404_
                              (gx#core-list _wrap-e11406_ _body11687_)
                              _target11670_)
                             (_k11672_ _vars11669_)
                             _E11671_)
                            _E11671_)
                           (if (eq? _$e11690_ 'var)
                               (_k11672_
                                (cons (cons _body11687_ _target11670_)
                                      _vars11669_))
                               (if (eq? _$e11690_ 'cons)
                                   (let ((_$e11693_ (gx#genident 'e))
                                         (_$hd11694_ (gx#genident 'hd))
                                         (_$tl11695_ (gx#genident 'tl)))
                                     (gx#core-list
                                      'if
                                      (gx#core-list 'stx-pair? _target11670_)
                                      (gx#core-list
                                       'let-values
                                       (cons (cons (cons _$e11693_ '())
                                                   (cons (gx#core-list
                                                          _unwrap-e11405_
                                                          _target11670_)
                                                         '()))
                                             '())
                                       (gx#core-list
                                        'let-values
                                        (cons (cons (cons _$hd11694_ '())
                                                    (cons (gx#core-list
                                                           '##car
                                                           _$e11693_)
                                                          '()))
                                              (cons (cons (cons _$tl11695_ '())
                                                          (cons (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '##cdr
                         _$e11693_)
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        (let ((_body1169611703_ _body11687_))
                                          (let ((_E1169811707_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _body1169611703_))))
                                            (let ((_K1169911715_
                                                   (lambda (_tl11710_
                                                            _hd11711_)
                                                     (_recur11583_
                                                      _hd11711_
                                                      _vars11669_
                                                      _$hd11694_
                                                      _E11671_
                                                      (lambda (_vars11713_)
                                                        (_recur11583_
                                                         _tl11710_
                                                         _vars11713_
                                                         _$tl11695_
                                                         _E11671_
                                                         _k11672_))))))
                                              (if (##pair? _body1169611703_)
                                                  (let ((_hd1170011718_
                                                         (##car _body1169611703_))
                                                        (_tl1170111720_
                                                         (##cdr _body1169611703_)))
                                                    (let ((_hd11723_
                                                           _hd1170011718_))
                                                      (let ((_tl11725_
                                                             _tl1170111720_))
                                                        (_K1169911715_
                                                         _tl11725_
                                                         _hd11723_))))
                                                  (_E1169811707_)))))))
                                      _E11671_))
                                   (if (eq? _$e11690_ 'splice)
                                       (let ((_body1172611733_ _body11687_))
                                         (let ((_E1172811737_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _body1172611733_))))
                                           (let ((_K1172911786_
                                                  (lambda (_tl11740_ _hd11741_)
                                                    (let ((_rlen11743_
                                                           (_splice-rlen11584_
                                                            _tl11740_)))
                                                      (let ((_$target11745_
                                                             (gx#genident
                                                              'target)))
                                                        (let ((_$hd11747_
                                                               (gx#genident
                                                                'hd)))
                                                          (let ((_$tl11749_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#genident 'tl)))
                    (let ((_$lp11751_ (gx#genident 'loop)))
                      (let ((_$lp-e11753_ (gx#genident 'e)))
                        (let ((_$lp-hd11755_ (gx#genident 'lp-hd)))
                          (let ((_$lp-tl11757_ (gx#genident 'lp-tl)))
                            (let ((_svars11759_
                                   (_splice-vars11585_ _hd11741_)))
                              (let ((_lvars11761_ (gx#gentemps _svars11759_)))
                                (let ((_tlvars11763_
                                       (gx#gentemps _svars11759_)))
                                  (let ((_linit11767_
                                         (map (lambda (_var11765_)
                                                (gx#core-list 'quote '()))
                                              _lvars11761_)))
                                    (let ()
                                      (let ((_make-loop11770_
                                             (lambda (_vars11772_)
                                               (gx#core-list
                                                'letrec-values
                                                (cons (cons (cons _$lp11751_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (gx#core-list
                           'lambda%
                           (cons _$hd11747_ _lvars11761_)
                           (gx#core-list
                            'if
                            (gx#core-list 'stx-pair? _$hd11747_)
                            (gx#core-list
                             'let-values
                             (cons (cons (cons _$lp-e11753_ '())
                                         (cons (gx#core-list
                                                _unwrap-e11405_
                                                _$hd11747_)
                                               '()))
                                   '())
                             (gx#core-list
                              'let-values
                              (cons (cons (cons _$lp-hd11755_ '())
                                          (cons (gx#core-list
                                                 '##car
                                                 _$lp-e11753_)
                                                '()))
                                    (cons (cons (cons _$lp-tl11757_ '())
                                                (cons (gx#core-list
                                                       '##cdr
                                                       _$lp-e11753_)
                                                      '()))
                                          '()))
                              (_recur11583_
                               _hd11741_
                               '()
                               _$lp-hd11755_
                               _E11671_
                               (lambda (_hdvars11774_)
                                 (cons* _$lp11751_
                                        _$lp-tl11757_
                                        (map (lambda (_svar11776_ _lvar11777_)
                                               (gx#core-list
                                                'cons
                                                (assgetq _svar11776_
                                                         _hdvars11774_
                                                         _BUG11582_)
                                                _lvar11777_))
                                             _svars11759_
                                             _lvars11761_))))))
                            (gx#core-list
                             'let-values
                             (map (lambda (_lvar11779_ _tlvar11780_)
                                    (cons (cons _tlvar11780_ '())
                                          (cons (gx#core-list
                                                 'reverse
                                                 _lvar11779_)
                                                '())))
                                  _lvars11761_
                                  _tlvars11763_)
                             (_k11672_
                              (foldl (lambda (_svar11782_
                                              _tlvar11783_
                                              _r11784_)
                                       (cons (cons _svar11782_ _tlvar11783_)
                                             _r11784_))
                                     _vars11772_
                                     _svars11759_
                                     _tlvars11763_)))))
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons* _$lp11751_
                                                       _$target11745_
                                                       _linit11767_)))))
                                        (gx#core-list
                                         'if
                                         (gx#core-list
                                          'stx-pair/null?
                                          _target11670_)
                                         (gx#core-list
                                          'if
                                          (gx#core-list
                                           'fx>=
                                           (gx#core-list
                                            'stx-length
                                            _target11670_)
                                           _rlen11743_)
                                          (gx#core-list
                                           'let-values
                                           (cons (cons (cons _$target11745_
                                                             (cons _$tl11749_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (gx#core-list
                      'syntax-split-splice
                      _target11670_
                      _rlen11743_)
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (_recur11583_
                                            _tl11740_
                                            _vars11669_
                                            _$tl11749_
                                            _E11671_
                                            _make-loop11770_))
                                          _E11671_)
                                         _E11671_))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _body1172611733_)
                                                 (let ((_hd1173011789_
                                                        (##car _body1172611733_))
                                                       (_tl1173111791_
                                                        (##cdr _body1172611733_)))
                                                   (let ((_hd11794_
                                                          _hd1173011789_))
                                                     (let ((_tl11796_
                                                            _tl1173111791_))
                                                       (_K1172911786_
                                                        _tl11796_
                                                        _hd11794_))))
                                                 (_E1172811737_)))))
                                       (if (eq? _$e11690_ 'null)
                                           (gx#core-list
                                            'if
                                            (gx#core-list
                                             'stx-null?
                                             _target11670_)
                                            (_k11672_ _vars11669_)
                                            _E11671_)
                                           (if (eq? _$e11690_ 'vector)
                                               (let ((_$e11798_
                                                      (gx#genident 'e)))
                                                 (gx#core-list
                                                  'if
                                                  (gx#core-list
                                                   'stx-vector?
                                                   _target11670_)
                                                  (gx#core-list
                                                   'let-values
                                                   (cons (cons (cons _$e11798_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (gx#core-list
                              'vector->list
                              (gx#core-list _unwrap-e11405_ _target11670_))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_recur11583_
                                                    _body11687_
                                                    _vars11669_
                                                    _$e11798_
                                                    _E11671_
                                                    _k11672_))
                                                  _E11671_))
                                               (if (eq? _$e11690_ 'box)
                                                   (let ((_$e11800_
                                                          (gx#genident 'e)))
                                                     (gx#core-list
                                                      'if
                                                      (gx#core-list
                                                       'stx-box?
                                                       _target11670_)
                                                      (gx#core-list
                                                       'let-values
                                                       (cons (cons (cons _$e11800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (gx#core-list
                                  'unbox
                                  (gx#core-list _unwrap-e11405_ _target11670_))
                                 '()))
                     '())
               (_recur11583_
                _body11687_
                _vars11669_
                _$e11800_
                _E11671_
                _k11672_))
              _E11671_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (eq? _$e11690_ 'datum)
                                                       (gx#core-list
                                                        'if
                                                        (gx#core-list
                                                         'stx-datum?
                                                         _target11670_)
                                                        (gx#core-list
                                                         'if
                                                         (gx#core-list
                                                          'equal?
                                                          (gx#core-list
                                                           'stx-e
                                                           _target11670_)
                                                          _body11687_)
                                                         (_k11672_ _vars11669_)
                                                         _E11671_)
                                                        _E11671_)
                                                       (_BUG11582_
                                                        _e11668_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (##pair? _e1167311680_)
                                                      (let ((_hd1167711805_
                                                             (##car _e1167311680_))
                                                            (_tl1167811807_
                                                             (##cdr _e1167311680_)))
                                                        (let ((_tag11810_
                                                               _hd1167711805_))
                                                          (let ((_body11812_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1167811807_))
                    (_K1167611802_ _body11812_ _tag11810_))))
              (_E1167511684_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_recur11583_
                                   _hd11577_
                                   '()
                                   _target11576_
                                   _E11580_
                                   _make-body11586_)))))))))
                 (let ((_parse-clause11412_
                        (lambda (_hd11481_ _ids11482_)
                          ((letrec ((_recur11484_
                                     (lambda (_e11486_
                                              _vars11487_
                                              _depth11488_)
                                       (if (gx#identifier? _e11486_)
                                           (if (gx#underscore? _e11486_)
                                               (values '(any) _vars11487_)
                                               (if (gx#ellipsis? _e11486_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Misplaced ellipsis"
                                                    _stx11403_
                                                    _hd11481_)
                                                   (if (find (lambda (_id11490_)
                                                               (gx#bound-identifier=?
                                                                _e11486_
                                                                _id11490_))
                                                             _ids11482_)
                                                       (values (cons 'id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _e11486_)
                       _vars11487_)
               (if (find (lambda (_var11492_)
                           (gx#bound-identifier=? _e11486_ (car _var11492_)))
                         _vars11487_)
                   (gx#raise-syntax-error
                    '#f
                    '"Duplicate pattern variable"
                    _stx11403_
                    _e11486_)
                   (values (cons 'var _e11486_)
                           (cons (cons _e11486_ _depth11488_) _vars11487_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-pair? _e11486_)
                                               (let ((_e1149311500_ _e11486_))
                                                 (let ((_E1149511504_
                                                        (lambda ()
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _e1149311500_))))
                                                   (let ((_E1149411565_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e1149311500_)
                        (let ((_e1149611508_ (gx#syntax-e _e1149311500_)))
                          (let ((_hd1149711511_ (##car _e1149611508_))
                                (_tl1149811513_ (##cdr _e1149611508_)))
                            (let ((_hd11516_ _hd1149711511_))
                              (let ((_rest11518_ _tl1149811513_))
                                (if '#t
                                    (let ((_make-pair11533_
                                           (lambda (_tag11520_
                                                    _hd11521_
                                                    _tl11522_)
                                             (let ((_hd-depth11524_
                                                    (if (eq? _tag11520_
                                                             'splice)
                                                        (fx1+ _depth11488_)
                                                        _depth11488_)))
                                               (let ((_g12543_
                                                      (_recur11484_
                                                       _hd11521_
                                                       _vars11487_
                                                       _hd-depth11524_)))
                                                 (begin
                                                   (let ((_g12544_
                                                          (values-count
                                                           _g12543_)))
                                                     (if (not (fx= _g12544_ 2))
                                                         (error "Context expects 2 values"
                                                                _g12544_)))
                                                   (let ((_hd11526_
                                                          (values-ref
                                                           _g12543_
                                                           0))
                                                         (_vars11527_
                                                          (values-ref
                                                           _g12543_
                                                           1)))
                                                     (let ((_g12545_
                                                            (_recur11484_
                                                             _tl11522_
                                                             _vars11527_
                                                             _depth11488_)))
                                                       (begin
                                                         (let ((_g12546_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g12545_)))
                   (if (not (fx= _g12546_ 2))
                       (error "Context expects 2 values" _g12546_)))
                 (let ((_tl11529_ (values-ref _g12545_ 0))
                       (_vars11530_ (values-ref _g12545_ 1)))
                   (let ()
                     (values (cons* _tag11520_ _hd11526_ _tl11529_)
                             _vars11530_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ((_e1153411541_ _rest11518_))
                                        (let ((_E1153611545_
                                               (lambda ()
                                                 (_make-pair11533_
                                                  'cons
                                                  _hd11516_
                                                  _rest11518_))))
                                          (let ((_E1153511561_
                                                 (lambda ()
                                                   (if (gx#stx-pair?
                                                        _e1153411541_)
                                                       (let ((_e1153711549_
                                                              (gx#syntax-e
                                                               _e1153411541_)))
                                                         (let ((_hd1153811552_
                                                                (##car _e1153711549_))
                                                               (_tl1153911554_
                                                                (##cdr _e1153711549_)))
                                                           (let ((_rest-hd11557_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd1153811552_))
                     (let ((_rest-tl11559_ _tl1153911554_))
                       (if '#t
                           (if (gx#ellipsis? _rest-hd11557_)
                               (_make-pair11533_
                                'splice
                                _hd11516_
                                _rest-tl11559_)
                               (_make-pair11533_ 'cons _hd11516_ _rest11518_))
                           (_E1153611545_))))))
               (_E1153611545_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let () (_E1153511561_))))))
                                    (_E1149511504_))))))
                        (_E1149511504_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (_E1149411565_)))))
                                               (if (gx#stx-null? _e11486_)
                                                   (values '(null) _vars11487_)
                                                   (if (gx#stx-vector?
                                                        _e11486_)
                                                       (let ((_g12547_
                                                              (_recur11484_
                                                               (vector->list
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e11486_))
                       _vars11487_
                       _depth11488_)))
                 (begin
                   (let ((_g12548_ (values-count _g12547_)))
                     (if (not (fx= _g12548_ 2))
                         (error "Context expects 2 values" _g12548_)))
                   (let ((_e11569_ (values-ref _g12547_ 0))
                         (_vars11570_ (values-ref _g12547_ 1)))
                     (values (cons 'vector _e11569_) _vars11570_))))
               (if (gx#stx-box? _e11486_)
                   (let ((_g12549_
                          (_recur11484_
                           (unbox (gx#syntax-e _e11486_))
                           _vars11487_
                           _depth11488_)))
                     (begin
                       (let ((_g12550_ (values-count _g12549_)))
                         (if (not (fx= _g12550_ 2))
                             (error "Context expects 2 values" _g12550_)))
                       (let ((_e11572_ (values-ref _g12549_ 0))
                             (_vars11573_ (values-ref _g12549_ 1)))
                         (values (cons 'box _e11572_) _vars11573_))))
                   (if (gx#stx-datum? _e11486_)
                       (values (cons 'datum (gx#stx-e _e11486_)) _vars11487_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad pattern"
                        _stx11403_
                        _e11486_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             _recur11484_)
                           _hd11481_
                           '()
                           '0))))
                   (let ((_generate-clause11410_
                          (lambda (_target11816_
                                   _ids11817_
                                   _clause11818_
                                   _E11819_)
                            (let ((_generate111821_
                                   (lambda (_hd11908_
                                            _fender11909_
                                            _body11910_)
                                     (let ((_g12541_
                                            (_parse-clause11412_
                                             _hd11908_
                                             _ids11817_)))
                                       (begin
                                         (let ((_g12542_
                                                (values-count _g12541_)))
                                           (if (not (fx= _g12542_ 2))
                                               (error "Context expects 2 values"
                                                      _g12542_)))
                                         (let ((_e11912_
                                                (values-ref _g12541_ 0))
                                               (_mvars11913_
                                                (values-ref _g12541_ 1)))
                                           (let ((_pvars11915_
                                                  (map gx#syntax-local-rewrap
                                                       (gx#gentemps
                                                        _mvars11913_))))
                                             (let ((_E11917_
                                                    (cons _E11819_
                                                          (cons _target11816_
                                                                '()))))
                                               (let ((_K11950_
                                                      (gx#core-list
                                                       'lambda%
                                                       _pvars11915_
                                                       (gx#core-list
                                                        'let-syntax
                                                        (map (lambda (_mvar11919_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _pvar11920_)
                       (let ((_mvar1192111928_ _mvar11919_))
                         (let ((_E1192311932_
                                (lambda ()
                                  (error '"No clause matching"
                                         _mvar1192111928_))))
                           (let ((_K1192411938_
                                  (lambda (_depth11935_ _id11936_)
                                    (cons _id11936_
                                          (cons (gx#core-list
                                                 'make-syntax-pattern
                                                 (gx#core-list
                                                  'quote
                                                  _id11936_)
                                                 (gx#core-list
                                                  'quote
                                                  _pvar11920_)
                                                 _depth11935_)
                                                '())))))
                             (if (##pair? _mvar1192111928_)
                                 (let ((_hd1192511941_
                                        (##car _mvar1192111928_))
                                       (_tl1192611943_
                                        (##cdr _mvar1192111928_)))
                                   (let ((_id11946_ _hd1192511941_))
                                     (let ((_depth11948_ _tl1192611943_))
                                       (_K1192411938_
                                        _depth11948_
                                        _id11946_))))
                                 (_E1192311932_))))))
                     _mvars11913_
                     _pvars11915_)
                (if (true? _fender11909_)
                    _body11910_
                    (gx#core-list 'if _fender11909_ _body11910_ _E11917_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (_generate-match11411_
                                                    _hd11908_
                                                    _target11816_
                                                    _e11912_
                                                    _mvars11913_
                                                    _K11950_
                                                    _E11917_)))))))))))
                              (let ((_e1182211842_ _clause11818_))
                                (let ((_E1183111846_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _e1182211842_))))
                                  (let ((_E1182411880_
                                         (lambda ()
                                           (if (gx#stx-pair? _e1182211842_)
                                               (let ((_e1183211850_
                                                      (gx#syntax-e
                                                       _e1182211842_)))
                                                 (let ((_hd1183311853_
                                                        (##car _e1183211850_))
                                                       (_tl1183411855_
                                                        (##cdr _e1183211850_)))
                                                   (let ((_hd11858_
                                                          _hd1183311853_))
                                                     (if (gx#stx-pair?
                                                          _tl1183411855_)
                                                         (let ((_e1183511860_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1183411855_)))
                   (let ((_hd1183611863_ (##car _e1183511860_))
                         (_tl1183711865_ (##cdr _e1183511860_)))
                     (let ((_fender11868_ _hd1183611863_))
                       (if (gx#stx-pair? _tl1183711865_)
                           (let ((_e1183811870_ (gx#syntax-e _tl1183711865_)))
                             (let ((_hd1183911873_ (##car _e1183811870_))
                                   (_tl1184011875_ (##cdr _e1183811870_)))
                               (let ((_body11878_ _hd1183911873_))
                                 (if (gx#stx-null? _tl1184011875_)
                                     (if '#t
                                         (_generate111821_
                                          _hd11858_
                                          _fender11868_
                                          _body11878_)
                                         (_E1183111846_))
                                     (_E1183111846_)))))
                           (_E1183111846_)))))
                 (_E1183111846_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E1183111846_)))))
                                    (let ((_E1182311904_
                                           (lambda ()
                                             (if (gx#stx-pair? _e1182211842_)
                                                 (let ((_e1182511884_
                                                        (gx#syntax-e
                                                         _e1182211842_)))
                                                   (let ((_hd1182611887_
                                                          (##car _e1182511884_))
                                                         (_tl1182711889_
                                                          (##cdr _e1182511884_)))
                                                     (let ((_hd11892_
                                                            _hd1182611887_))
                                                       (if (gx#stx-pair?
                                                            _tl1182711889_)
                                                           (let ((_e1182811894_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1182711889_)))
                     (let ((_hd1182911897_ (##car _e1182811894_))
                           (_tl1183011899_ (##cdr _e1182811894_)))
                       (let ((_body11902_ _hd1182911897_))
                         (if (gx#stx-null? _tl1183011899_)
                             (if '#t
                                 (_generate111821_ _hd11892_ '#t _body11902_)
                                 (_E1182411880_))
                             (_E1182411880_)))))
                   (_E1182411880_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E1182411880_)))))
                                      (let () (_E1182311904_))))))))))
                     (let ((_generate-bindings11408_
                            (lambda (_target11993_
                                     _ids11994_
                                     _clauses11995_
                                     _clause-ids11996_
                                     _E11997_)
                              (let ((_generate111999_
                                     (lambda (_clause12098_
                                              _clause-id12099_
                                              _E12100_)
                                       (cons (cons _clause-id12099_ '())
                                             (cons (gx#core-list
                                                    'lambda%
                                                    (cons _target11993_ '())
                                                    (_generate-clause11410_
                                                     _target11993_
                                                     _ids11994_
                                                     _clause12098_
                                                     _E12100_))
                                                   '())))))
                                ((letrec ((_lp12001_
                                           (lambda (_rest12003_
                                                    _rest-ids12004_
                                                    _bindings12005_)
                                             (let ((_rest1200612014_
                                                    _rest12003_))
                                               (let ((_E1200912018_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest1200612014_))))
                                                 (let ((_else1200812022_
                                                        (lambda ()
                                                          _bindings12005_)))
                                                   (let ((_K1201012086_
                                                          (lambda (_rest12025_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause12026_)
                    (let ((_rest-ids1202712034_ _rest-ids12004_))
                      (let ((_E1202912038_
                             (lambda ()
                               (error '"No clause matching"
                                      _rest-ids1202712034_))))
                        (let ((_K1203012074_
                               (lambda (_rest-ids12041_ _clause-id12042_)
                                 (let ((_rest-ids1204312051_ _rest-ids12041_))
                                   (let ((_E1204612055_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids1204312051_))))
                                     (let ((_else1204512059_
                                            (lambda ()
                                              (cons (_generate111999_
                                                     _clause12026_
                                                     _clause-id12042_
                                                     _E11997_)
                                                    _bindings12005_))))
                                       (let ((_K1204712064_
                                              (lambda (_next-clause-id12062_)
                                                (_lp12001_
                                                 _rest12025_
                                                 _rest-ids12041_
                                                 (cons (_generate111999_
                                                        _clause12026_
                                                        _clause-id12042_
                                                        _next-clause-id12062_)
                                                       _bindings12005_)))))
                                         (if (##pair? _rest-ids1204312051_)
                                             (let ((_hd1204812067_
                                                    (##car _rest-ids1204312051_))
                                                   (_tl1204912069_
                                                    (##cdr _rest-ids1204312051_)))
                                               (let ((_next-clause-id12072_
                                                      _hd1204812067_))
                                                 (_K1204712064_
                                                  _next-clause-id12072_)))
                                             (_else1204512059_)))))))))
                          (if (##pair? _rest-ids1202712034_)
                              (let ((_hd1203112077_
                                     (##car _rest-ids1202712034_))
                                    (_tl1203212079_
                                     (##cdr _rest-ids1202712034_)))
                                (let ((_clause-id12082_ _hd1203112077_))
                                  (let ((_rest-ids12084_ _tl1203212079_))
                                    (_K1203012074_
                                     _rest-ids12084_
                                     _clause-id12082_))))
                              (_E1202912038_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest1200612014_)
                                                         (let ((_hd1201112089_
                                                                (##car _rest1200612014_))
                                                               (_tl1201212091_
                                                                (##cdr _rest1200612014_)))
                                                           (let ((_clause12094_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd1201112089_))
                     (let ((_rest12096_ _tl1201212091_))
                       (_K1201012086_ _rest12096_ _clause12094_))))
                 (_else1200812022_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _lp12001_)
                                 _clauses11995_
                                 _clause-ids11996_
                                 '())))))
                       (let ((_e1141311426_ _stx11403_))
                         (let ((_E1141511430_
                                (lambda ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _e1141311426_))))
                           (let ((_E1141411477_
                                  (lambda ()
                                    (if (gx#stx-pair? _e1141311426_)
                                        (let ((_e1141611434_
                                               (gx#syntax-e _e1141311426_)))
                                          (let ((_hd1141711437_
                                                 (##car _e1141611434_))
                                                (_tl1141811439_
                                                 (##cdr _e1141611434_)))
                                            (if (gx#stx-pair? _tl1141811439_)
                                                (let ((_e1141911442_
                                                       (gx#syntax-e
                                                        _tl1141811439_)))
                                                  (let ((_hd1142011445_
                                                         (##car _e1141911442_))
                                                        (_tl1142111447_
                                                         (##cdr _e1141911442_)))
                                                    (let ((_expr11450_
                                                           _hd1142011445_))
                                                      (if (gx#stx-pair?
                                                           _tl1142111447_)
                                                          (let ((_e1142211452_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1142111447_)))
                    (let ((_hd1142311455_ (##car _e1142211452_))
                          (_tl1142411457_ (##cdr _e1142211452_)))
                      (let ((_ids11460_ _hd1142311455_))
                        (let ((_clauses11462_ _tl1142411457_))
                          (if '#t
                              (if (not (gx#identifier-list? _ids11460_))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad template identifier list"
                                   _stx11403_
                                   _ids11460_)
                                  (if (not (gx#stx-list? _clauses11462_))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _stx11403_)
                                      (let ((_ids11464_
                                             (gx#syntax->list _ids11460_)))
                                        (let ((_clauses11466_
                                               (gx#syntax->list
                                                _clauses11462_)))
                                          (let ((_clause-ids11468_
                                                 (gx#gentemps _clauses11466_)))
                                            (let ((_E11470_ (gx#genident)))
                                              (let ((_target11472_
                                                     (gx#genident)))
                                                (let ((_first11474_
                                                       (if (null? _clauses11466_)
                                                           _E11470_
                                                           (car _clause-ids11468_))))
                                                  (let ()
                                                    (gx#stx-wrap-source
                                                     (gx#core-list
                                                      'let-values
                                                      (cons (cons (cons _E11470_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (gx#core-list
                                 'lambda%
                                 (cons _target11472_ '())
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _target11472_))
                                '()))
                    '())
              (_generate-body11409_
               (_generate-bindings11408_
                _target11472_
                _ids11464_
                _clauses11466_
                _clause-ids11468_
                _E11470_)
               (cons _first11474_ (cons _expr11450_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#stx-source
                                                      _stx11403_)))))))))))
                              (_E1141511430_))))))
                  (_E1141511430_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1141511430_))))
                                        (_E1141511430_)))))
                             (let () (_E1141411477_)))))))))))))
      (lambda _g12552_
        (let ((_g12551_ (length _g12552_)))
          (cond ((fx= _g12551_ 1)
                 (apply (lambda (_stx12105_)
                          (let ((_identifier=?12107_ 'free-identifier=?))
                            (let ((_unwrap-e12109_ 'syntax-e))
                              (let ((_wrap-e12111_ 'quote-syntax))
                                (_opt-lambda1140112102_
                                 _stx12105_
                                 _identifier=?12107_
                                 _unwrap-e12109_
                                 _wrap-e12111_)))))
                        _g12552_))
                ((fx= _g12551_ 2)
                 (apply (lambda (_stx12113_ _identifier=?12114_)
                          (let ((_unwrap-e12116_ 'syntax-e))
                            (let ((_wrap-e12118_ 'quote-syntax))
                              (_opt-lambda1140112102_
                               _stx12113_
                               _identifier=?12114_
                               _unwrap-e12116_
                               _wrap-e12118_))))
                        _g12552_))
                ((fx= _g12551_ 3)
                 (apply (lambda (_stx12120_
                                 _identifier=?12121_
                                 _unwrap-e12122_)
                          (let ((_wrap-e12124_ 'quote-syntax))
                            (_opt-lambda1140112102_
                             _stx12120_
                             _identifier=?12121_
                             _unwrap-e12122_
                             _wrap-e12124_)))
                        _g12552_))
                ((fx= _g12551_ 4)
                 (apply (lambda (_stx12126_
                                 _identifier=?12127_
                                 _unwrap-e12128_
                                 _wrap-e12129_)
                          (_opt-lambda1140112102_
                           _stx12126_
                           _identifier=?12127_
                           _unwrap-e12128_
                           _wrap-e12129_))
                        _g12552_))
                (else (error "No clause matching arguments" _g12552_)))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx11400_)
      (if (gx#identifier? _stx11400_)
          (##structure-instance-of?
           (gx#syntax-local-e _stx11400_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd11358_ . _rest11359_)
      (let ((_len11361_ (length _hd11358_)))
        ((letrec ((_lp11363_
                   (lambda (_rest11365_)
                     (let ((_rest1136611374_ _rest11365_))
                       (let ((_E1136911378_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1136611374_))))
                         (let ((_else1136811382_ (lambda () (void))))
                           (let ((_K1137011388_
                                  (lambda (_rest11385_ _hd11386_)
                                    (if (fx= _len11361_ (length _hd11386_))
                                        (_lp11363_ _rest11385_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Splice length mismatch"
                                         _hd11386_)))))
                             (if (##pair? _rest1136611374_)
                                 (let ((_hd1137111391_
                                        (##car _rest1136611374_))
                                       (_tl1137211393_
                                        (##cdr _rest1136611374_)))
                                   (let ((_hd11396_ _hd1137111391_))
                                     (let ((_rest11398_ _tl1137211393_))
                                       (_K1137011388_ _rest11398_ _hd11396_))))
                                 (_else1136811382_)))))))))
           _lp11363_)
         _rest11359_))))
  (define gx#syntax-split-splice
    (lambda (_stx11316_ _n11317_)
      ((letrec ((_lp11319_
                 (lambda (_rest11321_ _r11322_)
                   (if (gx#stx-pair? _rest11321_)
                       (let ((_g1132311330_ (gx#syntax-e _rest11321_)))
                         (let ((_E1132511334_
                                (lambda ()
                                  (error '"No clause matching"
                                         _g1132311330_))))
                           (let ((_K1132611340_
                                  (lambda (_rest11337_ _hd11338_)
                                    (_lp11319_
                                     _rest11337_
                                     (cons _hd11338_ _r11322_)))))
                             (if (##pair? _g1132311330_)
                                 (let ((_hd1132711343_ (##car _g1132311330_))
                                       (_tl1132811345_ (##cdr _g1132311330_)))
                                   (let ((_hd11348_ _hd1132711343_))
                                     (let ((_rest11350_ _tl1132811345_))
                                       (_K1132611340_ _rest11350_ _hd11348_))))
                                 (_E1132511334_)))))
                       ((letrec ((_lp11352_
                                  (lambda (_n11354_ _l11355_ _r11356_)
                                    (if (null? _l11355_)
                                        (values _l11355_ _r11356_)
                                        (if (fxpositive? _n11354_)
                                            (_lp11352_
                                             (fx1- _n11354_)
                                             (cdr _l11355_)
                                             (cons (car _l11355_) _r11356_))
                                            (values (reverse _l11355_)
                                                    _r11356_))))))
                          _lp11352_)
                        _n11317_
                        _r11322_
                        _rest11321_)))))
         _lp11319_)
       _stx11316_
       '()))))
