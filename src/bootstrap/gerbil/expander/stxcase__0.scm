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
    (lambda _$args12598_
      (apply make-struct-instance gx#syntax-pattern::t _$args12598_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self12595_ _stx12596_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx12596_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx12204_)
      (let ((_generate12206_
             (lambda (_e12433_)
               (let ((_BUG12435_
                      (lambda (_q12593_)
                        (error '"BUG: syntax; generate"
                               _stx12204_
                               _e12433_
                               _q12593_))))
                 (let ((_local-pattern-e12436_
                        (lambda (_pat12591_)
                          (gx#syntax-local-rewrap
                           (##structure-ref
                            _pat12591_
                            '2
                            gx#syntax-pattern::t
                            '#f)))))
                   (let ((_getvar12437_
                          (lambda (_q12588_ _vars12589_)
                            (assgetq _q12588_ _vars12589_ _BUG12435_))))
                     (let ((_getarg12438_
                            (lambda (_arg12554_ _vars12555_)
                              (let ((_arg1255612563_ _arg12554_))
                                (let ((_E1255812567_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _arg1255612563_))))
                                  (let ((_K1255912576_
                                         (lambda (_e12570_ _tag12571_)
                                           (let ((_$e12573_ _tag12571_))
                                             (if (eq? _$e12573_ 'ref)
                                                 (_getvar12437_
                                                  _e12570_
                                                  _vars12555_)
                                                 (if (eq? _$e12573_ 'pattern)
                                                     (_local-pattern-e12436_
                                                      _e12570_)
                                                     (_BUG12435_
                                                      _arg12554_)))))))
                                    (if (##pair? _arg1255612563_)
                                        (let ((_hd1256012579_
                                               (##car _arg1255612563_))
                                              (_tl1256112581_
                                               (##cdr _arg1255612563_)))
                                          (let ((_tag12584_ _hd1256012579_))
                                            (let ((_e12586_ _tl1256112581_))
                                              (_K1255912576_
                                               _e12586_
                                               _tag12584_))))
                                        (_E1255812567_))))))))
                       ((letrec ((_recur12440_
                                  (lambda (_e12442_ _vars12443_)
                                    (let ((_e1244412451_ _e12442_))
                                      (let ((_E1244612455_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _e1244412451_))))
                                        (let ((_K1244712542_
                                               (lambda (_body12458_ _tag12459_)
                                                 (let ((_$e12461_ _tag12459_))
                                                   (if (eq? _$e12461_ 'datum)
                                                       (gx#core-list
                                                        'quote
                                                        _body12458_)
                                                       (if (eq? _$e12461_
                                                                'term)
                                                           (gx#core-list
                                                            'datum->syntax
                                                            '#f
                                                            (gx#core-list
                                                             'quote
                                                             _body12458_))
                                                           (if (eq? _$e12461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'pattern)
                       (_local-pattern-e12436_ _body12458_)
                       (if (eq? _$e12461_ 'ref)
                           (_getvar12437_ _body12458_ _vars12443_)
                           (if (eq? _$e12461_ 'cons)
                               (gx#core-list
                                'cons
                                (_recur12440_ (car _body12458_) _vars12443_)
                                (_recur12440_ (cdr _body12458_) _vars12443_))
                               (if (eq? _$e12461_ 'vector)
                                   (gx#core-list
                                    'list->vector
                                    (_recur12440_ _body12458_ _vars12443_))
                                   (if (eq? _$e12461_ 'box)
                                       (gx#core-list
                                        'box
                                        (_recur12440_ _body12458_ _vars12443_))
                                       (if (eq? _$e12461_ 'splice)
                                           (let ((_body1246312474_
                                                  _body12458_))
                                             (let ((_E1246512478_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _body1246312474_))))
                                               (let ((_K1246612516_
                                                      (lambda (_args12481_
                                                               _iv12482_
                                                               _hd12483_
                                                               _depth12484_)
                                                        (let ((_targets12490_
                                                               (map (lambda (_g1248512487_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_getarg12438_ _g1248512487_ _vars12443_))
                            _args12481_)))
                  (let ((_fold-in12492_ (gx#gentemps _args12481_)))
                    (let ((_fold-out12494_ (gx#genident__0)))
                      (let ((_lambda-args12496_
                             (foldr cons
                                    (cons _fold-out12494_ '())
                                    _fold-in12492_)))
                        (let ((_lambda-body12513_
                               (if (fx> _depth12484_ '1)
                                   (let ((_r-args12504_
                                          (map (lambda (_arg12498_)
                                                 (cons 'ref (cdr _arg12498_)))
                                               _args12481_))
                                         (_r-vars12505_
                                          (foldr (lambda (_arg12500_
                                                          _var12501_
                                                          _r12502_)
                                                   (cons (cons (cdr _arg12500_)
                                                               _var12501_)
                                                         _r12502_))
                                                 _vars12443_
                                                 _args12481_
                                                 _fold-in12492_)))
                                     (_recur12440_
                                      (cons* 'splice
                                             (fx1- _depth12484_)
                                             _hd12483_
                                             (cons 'var _fold-out12494_)
                                             _r-args12504_)
                                      _r-vars12505_))
                                   (let ((_hd-vars12511_
                                          (foldr (lambda (_arg12507_
                                                          _var12508_
                                                          _r12509_)
                                                   (cons (cons (cdr _arg12507_)
                                                               _var12508_)
                                                         _r12509_))
                                                 _vars12443_
                                                 _args12481_
                                                 _fold-in12492_)))
                                     (gx#core-list
                                      'cons
                                      (_recur12440_ _hd12483_ _hd-vars12511_)
                                      _fold-out12494_)))))
                          (let ()
                            (gx#core-list
                             'begin
                             (if (fx> (length _targets12490_) '1)
                                 (gx#core-cons*
                                  'syntax-check-splice-targets
                                  _targets12490_)
                                 '#!void)
                             (gx#core-cons*
                              'foldr
                              (gx#core-list
                               'lambda%
                               _lambda-args12496_
                               _lambda-body12513_)
                              (_recur12440_ _iv12482_ _vars12443_)
                              _targets12490_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _body1246312474_)
                                                     (let ((_hd1246712519_
                                                            (##car _body1246312474_))
                                                           (_tl1246812521_
                                                            (##cdr _body1246312474_)))
                                                       (let ((_depth12524_
                                                              _hd1246712519_))
                                                         (if (##pair? _tl1246812521_)
                                                             (let ((_hd1246912526_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##car _tl1246812521_))
                           (_tl1247012528_ (##cdr _tl1246812521_)))
                       (let ((_hd12531_ _hd1246912526_))
                         (if (##pair? _tl1247012528_)
                             (let ((_hd1247112533_ (##car _tl1247012528_))
                                   (_tl1247212535_ (##cdr _tl1247012528_)))
                               (let ((_iv12538_ _hd1247112533_))
                                 (let ((_args12540_ _tl1247212535_))
                                   (_K1246612516_
                                    _args12540_
                                    _iv12538_
                                    _hd12531_
                                    _depth12524_))))
                             (_E1246512478_))))
                     (_E1246512478_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1246512478_)))))
                                           (if (eq? _$e12461_ 'var)
                                               _body12458_
                                               (_BUG12435_
                                                _e12442_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _e1244412451_)
                                              (let ((_hd1244812545_
                                                     (##car _e1244412451_))
                                                    (_tl1244912547_
                                                     (##cdr _e1244412451_)))
                                                (let ((_tag12550_
                                                       _hd1244812545_))
                                                  (let ((_body12552_
                                                         _tl1244912547_))
                                                    (_K1244712542_
                                                     _body12552_
                                                     _tag12550_))))
                                              (_E1244612455_))))))))
                          _recur12440_)
                        _e12433_
                        '()))))))))
        (let ((_parse12207_
               (lambda (_e12248_)
                 (let ((_make-cons12250_
                        (lambda (_hd12425_ _tl12426_)
                          (let ((_g12610_ _hd12425_) (_g12612_ _tl12426_))
                            (begin
                              (let ((_g12611_ (values-count _g12610_)))
                                (if (not (fx= _g12611_ 2))
                                    (error "Context expects 2 values"
                                           _g12611_)))
                              (let ((_g12613_ (values-count _g12612_)))
                                (if (not (fx= _g12613_ 2))
                                    (error "Context expects 2 values"
                                           _g12613_)))
                              (let ((_hd-e12428_ (values-ref _g12610_ 0))
                                    (_hd-vars12429_ (values-ref _g12610_ 1)))
                                (let ((_tl-e12430_ (values-ref _g12612_ 0))
                                      (_tl-vars12431_ (values-ref _g12612_ 1)))
                                  (values (cons* 'cons _hd-e12428_ _tl-e12430_)
                                          (append _hd-vars12429_
                                                  _tl-vars12431_)))))))))
                   (let ((_make-splice12251_
                          (lambda (_where12364_
                                   _depth12365_
                                   _hd12366_
                                   _tl12367_)
                            (let ((_g12606_ _hd12366_) (_g12608_ _tl12367_))
                              (begin
                                (let ((_g12607_ (values-count _g12606_)))
                                  (if (not (fx= _g12607_ 2))
                                      (error "Context expects 2 values"
                                             _g12607_)))
                                (let ((_g12609_ (values-count _g12608_)))
                                  (if (not (fx= _g12609_ 2))
                                      (error "Context expects 2 values"
                                             _g12609_)))
                                (let ((_hd-e12369_ (values-ref _g12606_ 0))
                                      (_hd-vars12370_ (values-ref _g12606_ 1)))
                                  (let ((_tl-e12371_ (values-ref _g12608_ 0))
                                        (_tl-vars12372_
                                         (values-ref _g12608_ 1)))
                                    ((letrec ((_lp12374_
                                               (lambda (_rest12376_
                                                        _targets12377_
                                                        _vars12378_)
                                                 (let ((_rest1237912389_
                                                        _rest12376_))
                                                   (let ((_E1238212393_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest1237912389_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_else1238112397_
                                                            (lambda ()
                                                              (if (null? _targets12377_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Misplaced ellipsis"
                           _stx12204_
                           _where12364_)
                          (values (cons* 'splice
                                         _depth12365_
                                         _hd-e12369_
                                         _tl-e12371_
                                         _targets12377_)
                                  _vars12378_)))))
               (let ((_K1238312406_
                      (lambda (_rest12400_ _hd-pat12401_ _hd-depth*12402_)
                        (let ((_hd-depth12404_
                               (fx- _hd-depth*12402_ _depth12365_)))
                          (if (fxpositive? _hd-depth12404_)
                              (_lp12374_
                               _rest12400_
                               (cons (cons 'ref _hd-pat12401_) _targets12377_)
                               (cons (cons _hd-depth12404_ _hd-pat12401_)
                                     _vars12378_))
                              (if (fxzero? _hd-depth12404_)
                                  (_lp12374_
                                   _rest12400_
                                   (cons (cons 'pattern _hd-pat12401_)
                                         _targets12377_)
                                   _vars12378_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Too many ellipses"
                                   _stx12204_
                                   _where12364_)))))))
                 (if (##pair? _rest1237912389_)
                     (let ((_hd1238412409_ (##car _rest1237912389_))
                           (_tl1238512411_ (##cdr _rest1237912389_)))
                       (if (##pair? _hd1238412409_)
                           (let ((_hd1238612414_ (##car _hd1238412409_))
                                 (_tl1238712416_ (##cdr _hd1238412409_)))
                             (let ((_hd-depth*12419_ _hd1238612414_))
                               (let ((_hd-pat12421_ _tl1238712416_))
                                 (let ((_rest12423_ _tl1238512411_))
                                   (_K1238312406_
                                    _rest12423_
                                    _hd-pat12421_
                                    _hd-depth*12419_)))))
                           (_else1238112397_)))
                     (_else1238112397_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _lp12374_)
                                     _hd-vars12370_
                                     '()
                                     _tl-vars12372_))))))))
                     (letrec ((_recur12252_
                               (lambda (_e12257_ _is-e?12258_)
                                 (if (_is-e?12258_ _e12257_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Mislpaced ellipsis"
                                      _stx12204_)
                                     (if (gx#syntax-local-pattern? _e12257_)
                                         (let ((_pat12260_
                                                (gx#syntax-local-e__0
                                                 _e12257_)))
                                           (let ((_depth12262_
                                                  (##structure-ref
                                                   _pat12260_
                                                   '3
                                                   gx#syntax-pattern::t
                                                   '#f)))
                                             (let ()
                                               (if (fxpositive? _depth12262_)
                                                   (values (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat12260_)
                   (cons (cons _depth12262_ _pat12260_) '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (values (cons 'pattern
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat12260_)
                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (if (gx#identifier? _e12257_)
                                             (values (cons 'term _e12257_) '())
                                             (if (gx#stx-pair? _e12257_)
                                                 (let ((_e1226412271_
                                                        _e12257_))
                                                   (let ((_E1226612275_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _e1226412271_))))
                                                     (let ((_E1226512354_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e1226412271_)
                          (let ((_e1226712279_ (gx#syntax-e _e1226412271_)))
                            (let ((_hd1226812282_ (##car _e1226712279_))
                                  (_tl1226912284_ (##cdr _e1226712279_)))
                              (let ((_hd12287_ _hd1226812282_))
                                (let ((_rest12289_ _tl1226912284_))
                                  (if '#t
                                      (if (_is-e?12258_ _hd12287_)
                                          (let ((_e1229012297_ _rest12289_))
                                            (let ((_E1229212301_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad ellipsis syntax"
                                                      _stx12204_
                                                      _e12257_))))
                                              (let ((_E1229112315_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e1229012297_)
                                                           (let ((_e1229312305_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e1229012297_)))
                     (let ((_hd1229412308_ (##car _e1229312305_))
                           (_tl1229512310_ (##cdr _e1229312305_)))
                       (let ((_rest12313_ _hd1229412308_))
                         (if (gx#stx-null? _tl1229512310_)
                             (if '#t
                                 (_recur12252_ _rest12313_ false)
                                 (_E1229212301_))
                             (_E1229212301_)))))
                   (_E1229212301_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E1229112315_)))))
                                          ((letrec ((_lp12319_
                                                     (lambda (_rest12321_
                                                              _depth12322_)
                                                       (let ((_e1232312330_
                                                              _rest12321_))
                                                         (let ((_E1232512334_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (fxpositive? _depth12322_)
                              (_make-splice12251_
                               _e12257_
                               _depth12322_
                               (_recur12252_ _hd12287_ _is-e?12258_)
                               (_recur12252_ _rest12321_ _is-e?12258_))
                              (_make-cons12250_
                               (_recur12252_ _hd12287_ _is-e?12258_)
                               (_recur12252_ _rest12321_ _is-e?12258_))))))
                   (let ((_E1232412350_
                          (lambda ()
                            (if (gx#stx-pair? _e1232312330_)
                                (let ((_e1232612338_
                                       (gx#syntax-e _e1232312330_)))
                                  (let ((_hd1232712341_ (##car _e1232612338_))
                                        (_tl1232812343_ (##cdr _e1232612338_)))
                                    (let ((_rest-hd12346_ _hd1232712341_))
                                      (let ((_rest-tl12348_ _tl1232812343_))
                                        (if '#t
                                            (if (_is-e?12258_ _rest-hd12346_)
                                                (_lp12319_
                                                 _rest-tl12348_
                                                 (fx1+ _depth12322_))
                                                (if (fxpositive? _depth12322_)
                                                    (_make-splice12251_
                                                     _e12257_
                                                     _depth12322_
                                                     (_recur12252_
                                                      _hd12287_
                                                      _is-e?12258_)
                                                     (_recur12252_
                                                      _rest12321_
                                                      _is-e?12258_))
                                                    (_make-cons12250_
                                                     (_recur12252_
                                                      _hd12287_
                                                      _is-e?12258_)
                                                     (_recur12252_
                                                      _rest12321_
                                                      _is-e?12258_))))
                                            (_E1232512334_))))))
                                (_E1232512334_)))))
                     (let () (_E1232412350_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _lp12319_)
                                           _rest12289_
                                           '0))
                                      (_E1226612275_))))))
                          (_E1226612275_)))))
               (let () (_E1226512354_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-vector? _e12257_)
                                                     (let ((_g12600_
                                                            (_recur12252_
                                                             (vector->list
                                                              (gx#stx-unwrap__0
                                                               _e12257_))
                                                             _is-e?12258_)))
                                                       (begin
                                                         (let ((_g12601_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g12600_)))
                   (if (not (fx= _g12601_ 2))
                       (error "Context expects 2 values" _g12601_)))
                 (let ((_e12358_ (values-ref _g12600_ 0))
                       (_vars12359_ (values-ref _g12600_ 1)))
                   (values (cons 'vector _e12358_) _vars12359_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-box? _e12257_)
                                                         (let ((_g12602_
                                                                (_recur12252_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (unbox (gx#stx-unwrap__0 _e12257_))
                         _is-e?12258_)))
                   (begin
                     (let ((_g12603_ (values-count _g12602_)))
                       (if (not (fx= _g12603_ 2))
                           (error "Context expects 2 values" _g12603_)))
                     (let ((_e12361_ (values-ref _g12602_ 0))
                           (_vars12362_ (values-ref _g12602_ 1)))
                       (values (cons 'box _e12361_) _vars12362_))))
                 (values (cons 'datum _e12257_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       (let ((_g12604_ (_recur12252_ _e12248_ gx#ellipsis?)))
                         (begin
                           (let ((_g12605_ (values-count _g12604_)))
                             (if (not (fx= _g12605_ 2))
                                 (error "Context expects 2 values" _g12605_)))
                           (let ((_tree12254_ (values-ref _g12604_ 0))
                                 (_vars12255_ (values-ref _g12604_ 1)))
                             (if (null? _vars12255_)
                                 _tree12254_
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Missing ellipsis"
                                  _stx12204_
                                  _vars12255_)))))))))))
          (let ((_e1220812218_ _stx12204_))
            (let ((_E1221012222_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _stx12204_))))
              (let ((_E1220912244_
                     (lambda ()
                       (if (gx#stx-pair? _e1220812218_)
                           (let ((_e1221112226_ (gx#syntax-e _e1220812218_)))
                             (let ((_hd1221212229_ (##car _e1221112226_))
                                   (_tl1221312231_ (##cdr _e1221112226_)))
                               (if (gx#stx-pair? _tl1221312231_)
                                   (let ((_e1221412234_
                                          (gx#syntax-e _tl1221312231_)))
                                     (let ((_hd1221512237_
                                            (##car _e1221412234_))
                                           (_tl1221612239_
                                            (##cdr _e1221412234_)))
                                       (let ((_form12242_ _hd1221512237_))
                                         (if (gx#stx-null? _tl1221612239_)
                                             (if '#t
                                                 (gx#stx-wrap-source
                                                  (_generate12206_
                                                   (_parse12207_ _form12242_))
                                                  (gx#stx-source _stx12204_))
                                                 (_E1221012222_))
                                             (_E1221012222_)))))
                                   (_E1221012222_))))
                           (_E1221012222_)))))
                (let () (_E1220912244_)))))))))
  (begin
    (define gx#macro-expand-syntax-case__opt-lambda11474
      (lambda (_stx11476_ _identifier=?11477_ _unwrap-e11478_ _wrap-e11479_)
        (let ((_generate-body11482_
               (lambda (_bindings12026_ _body12027_)
                 ((letrec ((_recur12029_
                            (lambda (_rest12031_)
                              (let ((_rest1203212040_ _rest12031_))
                                (let ((_E1203512044_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest1203212040_))))
                                  (let ((_else1203412048_
                                         (lambda () _body12027_)))
                                    (let ((_K1203612054_
                                           (lambda (_rest12051_ _hd12052_)
                                             (gx#core-list
                                              'let-values
                                              (cons _hd12052_ '())
                                              (_recur12029_ _rest12051_)))))
                                      (if (##pair? _rest1203212040_)
                                          (let ((_hd1203712057_
                                                 (##car _rest1203212040_))
                                                (_tl1203812059_
                                                 (##cdr _rest1203212040_)))
                                            (let ((_hd12062_ _hd1203712057_))
                                              (let ((_rest12064_
                                                     _tl1203812059_))
                                                (_K1203612054_
                                                 _rest12064_
                                                 _hd12062_))))
                                          (_else1203412048_)))))))))
                    _recur12029_)
                  _bindings12026_))))
          (let ((_generate-match11484_
                 (lambda (_where11648_
                          _target11649_
                          _hd11650_
                          _mvars11651_
                          _K11652_
                          _E11653_)
                   (let ((_BUG11655_
                          (lambda (_q11887_)
                            (error '"BUG: syntax-case; generate"
                                   _stx11476_
                                   _hd11650_
                                   _q11887_))))
                     (let ((_splice-rlen11657_
                            (lambda (_e11703_)
                              ((letrec ((_lp11705_
                                         (lambda (_e11707_ _n11708_)
                                           (let ((_e1170911716_ _e11707_))
                                             (let ((_E1171111720_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _e1170911716_))))
                                               (let ((_K1171211729_
                                                      (lambda (_body11723_
                                                               _tag11724_)
                                                        (let ((_$e11726_
                                                               _tag11724_))
                                                          (if (eq? _$e11726_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'splice)
                      (gx#raise-syntax-error
                       '#f
                       '"Ambiguous pattern"
                       _stx11476_
                       _where11648_)
                      (if (eq? _$e11726_ 'cons)
                          (_lp11705_ (cdr _body11723_) (fx1+ _n11708_))
                          _n11708_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _e1170911716_)
                                                     (let ((_hd1171311732_
                                                            (##car _e1170911716_))
                                                           (_tl1171411734_
                                                            (##cdr _e1170911716_)))
                                                       (let ((_tag11737_
                                                              _hd1171311732_))
                                                         (let ((_body11739_
                                                                _tl1171411734_))
                                                           (_K1171211729_
                                                            _body11739_
                                                            _tag11737_))))
                                                     (_E1171111720_))))))))
                                 _lp11705_)
                               _e11703_
                               '0))))
                       (let ((_splice-vars11658_
                              (lambda (_e11665_)
                                ((letrec ((_recur11667_
                                           (lambda (_e11669_ _vars11670_)
                                             (let ((_e1167111678_ _e11669_))
                                               (let ((_E1167311682_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _e1167111678_))))
                                                 (let ((_K1167411691_
                                                        (lambda (_body11685_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tag11686_)
                  (let ((_$e11688_ _tag11686_))
                    (if (eq? _$e11688_ 'var)
                        (cons _body11685_ _vars11670_)
                        (if (memq _$e11688_ '(cons splice))
                            (_recur11667_
                             (cdr _body11685_)
                             (_recur11667_ (car _body11685_) _vars11670_))
                            (if (memq _$e11688_ '(vector box))
                                (_recur11667_ _body11685_ _vars11670_)
                                _vars11670_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##pair? _e1167111678_)
                                                       (let ((_hd1167511694_
                                                              (##car _e1167111678_))
                                                             (_tl1167611696_
                                                              (##cdr _e1167111678_)))
                                                         (let ((_tag11699_
                                                                _hd1167511694_))
                                                           (let ((_body11701_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1167611696_))
                     (_K1167411691_ _body11701_ _tag11699_))))
               (_E1167311682_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _recur11667_)
                                 _e11665_
                                 '()))))
                         (let ((_make-body11659_
                                (lambda (_vars11661_)
                                  (cons _K11652_
                                        (map (lambda (_mvar11663_)
                                               (assgetq (car _mvar11663_)
                                                        _vars11661_
                                                        _BUG11655_))
                                             _mvars11651_)))))
                           (letrec ((_recur11656_
                                     (lambda (_e11741_
                                              _vars11742_
                                              _target11743_
                                              _E11744_
                                              _k11745_)
                                       (let ((_e1174611753_ _e11741_))
                                         (let ((_E1174811757_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _e1174611753_))))
                                           (let ((_K1174911875_
                                                  (lambda (_body11760_
                                                           _tag11761_)
                                                    (let ((_$e11763_
                                                           _tag11761_))
                                                      (if (eq? _$e11763_ 'any)
                                                          (_k11745_
                                                           _vars11742_)
                                                          (if (eq? _$e11763_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'id)
                      (gx#core-list
                       'if
                       (gx#core-list 'identifier? _target11743_)
                       (gx#core-list
                        'if
                        (gx#core-list
                         _identifier=?11477_
                         (gx#core-list _wrap-e11479_ _body11760_)
                         _target11743_)
                        (_k11745_ _vars11742_)
                        _E11744_)
                       _E11744_)
                      (if (eq? _$e11763_ 'var)
                          (_k11745_
                           (cons (cons _body11760_ _target11743_) _vars11742_))
                          (if (eq? _$e11763_ 'cons)
                              (let ((_$e11766_ (gx#genident__1 'e))
                                    (_$hd11767_ (gx#genident__1 'hd))
                                    (_$tl11768_ (gx#genident__1 'tl)))
                                (gx#core-list
                                 'if
                                 (gx#core-list 'stx-pair? _target11743_)
                                 (gx#core-list
                                  'let-values
                                  (cons (cons (cons _$e11766_ '())
                                              (cons (gx#core-list
                                                     _unwrap-e11478_
                                                     _target11743_)
                                                    '()))
                                        '())
                                  (gx#core-list
                                   'let-values
                                   (cons (cons (cons _$hd11767_ '())
                                               (cons (gx#core-list
                                                      '##car
                                                      _$e11766_)
                                                     '()))
                                         (cons (cons (cons _$tl11768_ '())
                                                     (cons (gx#core-list
                                                            '##cdr
                                                            _$e11766_)
                                                           '()))
                                               '()))
                                   (let ((_body1176911776_ _body11760_))
                                     (let ((_E1177111780_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _body1176911776_))))
                                       (let ((_K1177211788_
                                              (lambda (_tl11783_ _hd11784_)
                                                (_recur11656_
                                                 _hd11784_
                                                 _vars11742_
                                                 _$hd11767_
                                                 _E11744_
                                                 (lambda (_vars11786_)
                                                   (_recur11656_
                                                    _tl11783_
                                                    _vars11786_
                                                    _$tl11768_
                                                    _E11744_
                                                    _k11745_))))))
                                         (if (##pair? _body1176911776_)
                                             (let ((_hd1177311791_
                                                    (##car _body1176911776_))
                                                   (_tl1177411793_
                                                    (##cdr _body1176911776_)))
                                               (let ((_hd11796_
                                                      _hd1177311791_))
                                                 (let ((_tl11798_
                                                        _tl1177411793_))
                                                   (_K1177211788_
                                                    _tl11798_
                                                    _hd11796_))))
                                             (_E1177111780_)))))))
                                 _E11744_))
                              (if (eq? _$e11763_ 'splice)
                                  (let ((_body1179911806_ _body11760_))
                                    (let ((_E1180111810_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _body1179911806_))))
                                      (let ((_K1180211859_
                                             (lambda (_tl11813_ _hd11814_)
                                               (let ((_rlen11816_
                                                      (_splice-rlen11657_
                                                       _tl11813_)))
                                                 (let ((_$target11818_
                                                        (gx#genident__1
                                                         'target)))
                                                   (let ((_$hd11820_
                                                          (gx#genident__1
                                                           'hd)))
                                                     (let ((_$tl11822_
                                                            (gx#genident__1
                                                             'tl)))
                                                       (let ((_$lp11824_
                                                              (gx#genident__1
                                                               'loop)))
                                                         (let ((_$lp-e11826_
                                                                (gx#genident__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'e)))
                   (let ((_$lp-hd11828_ (gx#genident__1 'lp-hd)))
                     (let ((_$lp-tl11830_ (gx#genident__1 'lp-tl)))
                       (let ((_svars11832_ (_splice-vars11658_ _hd11814_)))
                         (let ((_lvars11834_ (gx#gentemps _svars11832_)))
                           (let ((_tlvars11836_ (gx#gentemps _svars11832_)))
                             (let ((_linit11840_
                                    (map (lambda (_var11838_)
                                           (gx#core-list 'quote '()))
                                         _lvars11834_)))
                               (let ()
                                 (let ((_make-loop11843_
                                        (lambda (_vars11845_)
                                          (gx#core-list
                                           'letrec-values
                                           (cons (cons (cons _$lp11824_ '())
                                                       (cons (gx#core-list
                                                              'lambda%
                                                              (cons _$hd11820_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _lvars11834_)
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _$hd11820_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$lp-e11826_ '())
                                    (cons (gx#core-list
                                           _unwrap-e11478_
                                           _$hd11820_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$lp-hd11828_ '())
                                     (cons (gx#core-list '##car _$lp-e11826_)
                                           '()))
                               (cons (cons (cons _$lp-tl11830_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$lp-e11826_)
                                                 '()))
                                     '()))
                         (_recur11656_
                          _hd11814_
                          '()
                          _$lp-hd11828_
                          _E11744_
                          (lambda (_hdvars11847_)
                            (cons* _$lp11824_
                                   _$lp-tl11830_
                                   (map (lambda (_svar11849_ _lvar11850_)
                                          (gx#core-list
                                           'cons
                                           (assgetq _svar11849_
                                                    _hdvars11847_
                                                    _BUG11655_)
                                           _lvar11850_))
                                        _svars11832_
                                        _lvars11834_))))))
                       (gx#core-list
                        'let-values
                        (map (lambda (_lvar11852_ _tlvar11853_)
                               (cons (cons _tlvar11853_ '())
                                     (cons (gx#core-list 'reverse _lvar11852_)
                                           '())))
                             _lvars11834_
                             _tlvars11836_)
                        (_k11745_
                         (foldl (lambda (_svar11855_ _tlvar11856_ _r11857_)
                                  (cons (cons _svar11855_ _tlvar11856_)
                                        _r11857_))
                                _vars11845_
                                _svars11832_
                                _tlvars11836_)))))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons* _$lp11824_
                                                  _$target11818_
                                                  _linit11840_)))))
                                   (gx#core-list
                                    'if
                                    (gx#core-list
                                     'stx-pair/null?
                                     _target11743_)
                                    (gx#core-list
                                     'if
                                     (gx#core-list
                                      'fx>=
                                      (gx#core-list 'stx-length _target11743_)
                                      _rlen11816_)
                                     (gx#core-list
                                      'let-values
                                      (cons (cons (cons _$target11818_
                                                        (cons _$tl11822_ '()))
                                                  (cons (gx#core-list
                                                         'syntax-split-splice
                                                         _target11743_
                                                         _rlen11816_)
                                                        '()))
                                            '())
                                      (_recur11656_
                                       _tl11813_
                                       _vars11742_
                                       _$tl11822_
                                       _E11744_
                                       _make-loop11843_))
                                     _E11744_)
                                    _E11744_))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _body1179911806_)
                                            (let ((_hd1180311862_
                                                   (##car _body1179911806_))
                                                  (_tl1180411864_
                                                   (##cdr _body1179911806_)))
                                              (let ((_hd11867_ _hd1180311862_))
                                                (let ((_tl11869_
                                                       _tl1180411864_))
                                                  (_K1180211859_
                                                   _tl11869_
                                                   _hd11867_))))
                                            (_E1180111810_)))))
                                  (if (eq? _$e11763_ 'null)
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-null? _target11743_)
                                       (_k11745_ _vars11742_)
                                       _E11744_)
                                      (if (eq? _$e11763_ 'vector)
                                          (let ((_$e11871_
                                                 (gx#genident__1 'e)))
                                            (gx#core-list
                                             'if
                                             (gx#core-list
                                              'stx-vector?
                                              _target11743_)
                                             (gx#core-list
                                              'let-values
                                              (cons (cons (cons _$e11871_ '())
                                                          (cons (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'vector->list
                         (gx#core-list _unwrap-e11478_ _target11743_))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (_recur11656_
                                               _body11760_
                                               _vars11742_
                                               _$e11871_
                                               _E11744_
                                               _k11745_))
                                             _E11744_))
                                          (if (eq? _$e11763_ 'box)
                                              (let ((_$e11873_
                                                     (gx#genident__1 'e)))
                                                (gx#core-list
                                                 'if
                                                 (gx#core-list
                                                  'stx-box?
                                                  _target11743_)
                                                 (gx#core-list
                                                  'let-values
                                                  (cons (cons (cons _$e11873_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (gx#core-list
                             'unbox
                             (gx#core-list _unwrap-e11478_ _target11743_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur11656_
                                                   _body11760_
                                                   _vars11742_
                                                   _$e11873_
                                                   _E11744_
                                                   _k11745_))
                                                 _E11744_))
                                              (if (eq? _$e11763_ 'datum)
                                                  (gx#core-list
                                                   'if
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target11743_)
                                                   (gx#core-list
                                                    'if
                                                    (gx#core-list
                                                     'equal?
                                                     (gx#core-list
                                                      'stx-e
                                                      _target11743_)
                                                     _body11760_)
                                                    (_k11745_ _vars11742_)
                                                    _E11744_)
                                                   _E11744_)
                                                  (_BUG11655_
                                                   _e11741_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _e1174611753_)
                                                 (let ((_hd1175011878_
                                                        (##car _e1174611753_))
                                                       (_tl1175111880_
                                                        (##cdr _e1174611753_)))
                                                   (let ((_tag11883_
                                                          _hd1175011878_))
                                                     (let ((_body11885_
                                                            _tl1175111880_))
                                                       (_K1174911875_
                                                        _body11885_
                                                        _tag11883_))))
                                                 (_E1174811757_))))))))
                             (_recur11656_
                              _hd11650_
                              '()
                              _target11649_
                              _E11653_
                              _make-body11659_)))))))))
            (let ((_parse-clause11485_
                   (lambda (_hd11554_ _ids11555_)
                     ((letrec ((_recur11557_
                                (lambda (_e11559_ _vars11560_ _depth11561_)
                                  (if (gx#identifier? _e11559_)
                                      (if (gx#underscore? _e11559_)
                                          (values '(any) _vars11560_)
                                          (if (gx#ellipsis? _e11559_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Misplaced ellipsis"
                                               _stx11476_
                                               _hd11554_)
                                              (if (find (lambda (_id11563_)
                                                          (gx#bound-identifier=?
                                                           _e11559_
                                                           _id11563_))
                                                        _ids11555_)
                                                  (values (cons 'id _e11559_)
                                                          _vars11560_)
                                                  (if (find (lambda (_var11565_)
                                                              (gx#bound-identifier=?
                                                               _e11559_
                                                               (car _var11565_)))
                                                            _vars11560_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Duplicate pattern variable"
                                                       _stx11476_
                                                       _e11559_)
                                                      (values (cons 'var
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _e11559_)
                      (cons (cons _e11559_ _depth11561_) _vars11560_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _e11559_)
                                          (let ((_e1156611573_ _e11559_))
                                            (let ((_E1156811577_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _e1156611573_))))
                                              (let ((_E1156711638_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e1156611573_)
                                                           (let ((_e1156911581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e1156611573_)))
                     (let ((_hd1157011584_ (##car _e1156911581_))
                           (_tl1157111586_ (##cdr _e1156911581_)))
                       (let ((_hd11589_ _hd1157011584_))
                         (let ((_rest11591_ _tl1157111586_))
                           (if '#t
                               (let ((_make-pair11606_
                                      (lambda (_tag11593_ _hd11594_ _tl11595_)
                                        (let ((_hd-depth11597_
                                               (if (eq? _tag11593_ 'splice)
                                                   (fx1+ _depth11561_)
                                                   _depth11561_)))
                                          (let ((_g12616_
                                                 (_recur11557_
                                                  _hd11594_
                                                  _vars11560_
                                                  _hd-depth11597_)))
                                            (begin
                                              (let ((_g12617_
                                                     (values-count _g12616_)))
                                                (if (not (fx= _g12617_ 2))
                                                    (error "Context expects 2 values"
                                                           _g12617_)))
                                              (let ((_hd11599_
                                                     (values-ref _g12616_ 0))
                                                    (_vars11600_
                                                     (values-ref _g12616_ 1)))
                                                (let ((_g12618_
                                                       (_recur11557_
                                                        _tl11595_
                                                        _vars11600_
                                                        _depth11561_)))
                                                  (begin
                                                    (let ((_g12619_
                                                           (values-count
                                                            _g12618_)))
                                                      (if (not (fx= _g12619_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g12619_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_tl11602_
                                                           (values-ref
                                                            _g12618_
                                                            0))
                                                          (_vars11603_
                                                           (values-ref
                                                            _g12618_
                                                            1)))
                                                      (let ()
                                                        (values (cons* _tag11593_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd11599_
                               _tl11602_)
                        _vars11603_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (let ((_e1160711614_ _rest11591_))
                                   (let ((_E1160911618_
                                          (lambda ()
                                            (_make-pair11606_
                                             'cons
                                             _hd11589_
                                             _rest11591_))))
                                     (let ((_E1160811634_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1160711614_)
                                                  (let ((_e1161011622_
                                                         (gx#syntax-e
                                                          _e1160711614_)))
                                                    (let ((_hd1161111625_
                                                           (##car _e1161011622_))
                                                          (_tl1161211627_
                                                           (##cdr _e1161011622_)))
                                                      (let ((_rest-hd11630_
                                                             _hd1161111625_))
                                                        (let ((_rest-tl11632_
                                                               _tl1161211627_))
                                                          (if '#t
                                                              (if (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest-hd11630_)
                          (_make-pair11606_ 'splice _hd11589_ _rest-tl11632_)
                          (_make-pair11606_ 'cons _hd11589_ _rest11591_))
                      (_E1160911618_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1160911618_)))))
                                       (let () (_E1160811634_))))))
                               (_E1156811577_))))))
                   (_E1156811577_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E1156711638_)))))
                                          (if (gx#stx-null? _e11559_)
                                              (values '(null) _vars11560_)
                                              (if (gx#stx-vector? _e11559_)
                                                  (let ((_g12620_
                                                         (_recur11557_
                                                          (vector->list
                                                           (gx#syntax-e
                                                            _e11559_))
                                                          _vars11560_
                                                          _depth11561_)))
                                                    (begin
                                                      (let ((_g12621_
                                                             (values-count
                                                              _g12620_)))
                                                        (if (not (fx= _g12621_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g12621_)))
              (let ((_e11642_ (values-ref _g12620_ 0))
                    (_vars11643_ (values-ref _g12620_ 1)))
                (values (cons 'vector _e11642_) _vars11643_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e11559_)
                                                      (let ((_g12622_
                                                             (_recur11557_
                                                              (unbox (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e11559_))
                      _vars11560_
                      _depth11561_)))
                (begin
                  (let ((_g12623_ (values-count _g12622_)))
                    (if (not (fx= _g12623_ 2))
                        (error "Context expects 2 values" _g12623_)))
                  (let ((_e11645_ (values-ref _g12622_ 0))
                        (_vars11646_ (values-ref _g12622_ 1)))
                    (values (cons 'box _e11645_) _vars11646_))))
              (if (gx#stx-datum? _e11559_)
                  (values (cons 'datum (gx#stx-e _e11559_)) _vars11560_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad pattern"
                   _stx11476_
                   _e11559_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        _recur11557_)
                      _hd11554_
                      '()
                      '0))))
              (let ((_generate-clause11483_
                     (lambda (_target11889_ _ids11890_ _clause11891_ _E11892_)
                       (let ((_generate111894_
                              (lambda (_hd11981_ _fender11982_ _body11983_)
                                (let ((_g12614_
                                       (_parse-clause11485_
                                        _hd11981_
                                        _ids11890_)))
                                  (begin
                                    (let ((_g12615_ (values-count _g12614_)))
                                      (if (not (fx= _g12615_ 2))
                                          (error "Context expects 2 values"
                                                 _g12615_)))
                                    (let ((_e11985_ (values-ref _g12614_ 0))
                                          (_mvars11986_
                                           (values-ref _g12614_ 1)))
                                      (let ((_pvars11988_
                                             (map gx#syntax-local-rewrap
                                                  (gx#gentemps _mvars11986_))))
                                        (let ((_E11990_
                                               (cons _E11892_
                                                     (cons _target11889_
                                                           '()))))
                                          (let ((_K12023_
                                                 (gx#core-list
                                                  'lambda%
                                                  _pvars11988_
                                                  (gx#core-list
                                                   'let-syntax
                                                   (map (lambda (_mvar11992_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pvar11993_)
                  (let ((_mvar1199412001_ _mvar11992_))
                    (let ((_E1199612005_
                           (lambda ()
                             (error '"No clause matching" _mvar1199412001_))))
                      (let ((_K1199712011_
                             (lambda (_depth12008_ _id12009_)
                               (cons _id12009_
                                     (cons (gx#core-list
                                            'make-syntax-pattern
                                            (gx#core-list 'quote _id12009_)
                                            (gx#core-list 'quote _pvar11993_)
                                            _depth12008_)
                                           '())))))
                        (if (##pair? _mvar1199412001_)
                            (let ((_hd1199812014_ (##car _mvar1199412001_))
                                  (_tl1199912016_ (##cdr _mvar1199412001_)))
                              (let ((_id12019_ _hd1199812014_))
                                (let ((_depth12021_ _tl1199912016_))
                                  (_K1199712011_ _depth12021_ _id12019_))))
                            (_E1199612005_))))))
                _mvars11986_
                _pvars11988_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (true? _fender11982_)
                                                       _body11983_
                                                       (gx#core-list
                                                        'if
                                                        _fender11982_
                                                        _body11983_
                                                        _E11990_))))))
                                            (let ()
                                              (_generate-match11484_
                                               _hd11981_
                                               _target11889_
                                               _e11985_
                                               _mvars11986_
                                               _K12023_
                                               _E11990_)))))))))))
                         (let ((_e1189511915_ _clause11891_))
                           (let ((_E1190411919_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _e1189511915_))))
                             (let ((_E1189711953_
                                    (lambda ()
                                      (if (gx#stx-pair? _e1189511915_)
                                          (let ((_e1190511923_
                                                 (gx#syntax-e _e1189511915_)))
                                            (let ((_hd1190611926_
                                                   (##car _e1190511923_))
                                                  (_tl1190711928_
                                                   (##cdr _e1190511923_)))
                                              (let ((_hd11931_ _hd1190611926_))
                                                (if (gx#stx-pair?
                                                     _tl1190711928_)
                                                    (let ((_e1190811933_
                                                           (gx#syntax-e
                                                            _tl1190711928_)))
                                                      (let ((_hd1190911936_
                                                             (##car _e1190811933_))
                                                            (_tl1191011938_
                                                             (##cdr _e1190811933_)))
                                                        (let ((_fender11941_
                                                               _hd1190911936_))
                                                          (if (gx#stx-pair?
                                                               _tl1191011938_)
                                                              (let ((_e1191111943_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1191011938_)))
                        (let ((_hd1191211946_ (##car _e1191111943_))
                              (_tl1191311948_ (##cdr _e1191111943_)))
                          (let ((_body11951_ _hd1191211946_))
                            (if (gx#stx-null? _tl1191311948_)
                                (if '#t
                                    (_generate111894_
                                     _hd11931_
                                     _fender11941_
                                     _body11951_)
                                    (_E1190411919_))
                                (_E1190411919_)))))
                      (_E1190411919_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1190411919_)))))
                                          (_E1190411919_)))))
                               (let ((_E1189611977_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1189511915_)
                                            (let ((_e1189811957_
                                                   (gx#syntax-e
                                                    _e1189511915_)))
                                              (let ((_hd1189911960_
                                                     (##car _e1189811957_))
                                                    (_tl1190011962_
                                                     (##cdr _e1189811957_)))
                                                (let ((_hd11965_
                                                       _hd1189911960_))
                                                  (if (gx#stx-pair?
                                                       _tl1190011962_)
                                                      (let ((_e1190111967_
                                                             (gx#syntax-e
                                                              _tl1190011962_)))
                                                        (let ((_hd1190211970_
                                                               (##car _e1190111967_))
                                                              (_tl1190311972_
                                                               (##cdr _e1190111967_)))
                                                          (let ((_body11975_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1190211970_))
                    (if (gx#stx-null? _tl1190311972_)
                        (if '#t
                            (_generate111894_ _hd11965_ '#t _body11975_)
                            (_E1189711953_))
                        (_E1189711953_)))))
              (_E1189711953_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1189711953_)))))
                                 (let () (_E1189611977_))))))))))
                (let ((_generate-bindings11481_
                       (lambda (_target12066_
                                _ids12067_
                                _clauses12068_
                                _clause-ids12069_
                                _E12070_)
                         (let ((_generate112072_
                                (lambda (_clause12171_
                                         _clause-id12172_
                                         _E12173_)
                                  (cons (cons _clause-id12172_ '())
                                        (cons (gx#core-list
                                               'lambda%
                                               (cons _target12066_ '())
                                               (_generate-clause11483_
                                                _target12066_
                                                _ids12067_
                                                _clause12171_
                                                _E12173_))
                                              '())))))
                           ((letrec ((_lp12074_
                                      (lambda (_rest12076_
                                               _rest-ids12077_
                                               _bindings12078_)
                                        (let ((_rest1207912087_ _rest12076_))
                                          (let ((_E1208212091_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _rest1207912087_))))
                                            (let ((_else1208112095_
                                                   (lambda ()
                                                     _bindings12078_)))
                                              (let ((_K1208312159_
                                                     (lambda (_rest12098_
                                                              _clause12099_)
                                                       (let ((_rest-ids1210012107_
                                                              _rest-ids12077_))
                                                         (let ((_E1210212111_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (error '"No clause matching" _rest-ids1210012107_))))
                   (let ((_K1210312147_
                          (lambda (_rest-ids12114_ _clause-id12115_)
                            (let ((_rest-ids1211612124_ _rest-ids12114_))
                              (let ((_E1211912128_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _rest-ids1211612124_))))
                                (let ((_else1211812132_
                                       (lambda ()
                                         (cons (_generate112072_
                                                _clause12099_
                                                _clause-id12115_
                                                _E12070_)
                                               _bindings12078_))))
                                  (let ((_K1212012137_
                                         (lambda (_next-clause-id12135_)
                                           (_lp12074_
                                            _rest12098_
                                            _rest-ids12114_
                                            (cons (_generate112072_
                                                   _clause12099_
                                                   _clause-id12115_
                                                   _next-clause-id12135_)
                                                  _bindings12078_)))))
                                    (if (##pair? _rest-ids1211612124_)
                                        (let ((_hd1212112140_
                                               (##car _rest-ids1211612124_))
                                              (_tl1212212142_
                                               (##cdr _rest-ids1211612124_)))
                                          (let ((_next-clause-id12145_
                                                 _hd1212112140_))
                                            (_K1212012137_
                                             _next-clause-id12145_)))
                                        (_else1211812132_)))))))))
                     (if (##pair? _rest-ids1210012107_)
                         (let ((_hd1210412150_ (##car _rest-ids1210012107_))
                               (_tl1210512152_ (##cdr _rest-ids1210012107_)))
                           (let ((_clause-id12155_ _hd1210412150_))
                             (let ((_rest-ids12157_ _tl1210512152_))
                               (_K1210312147_
                                _rest-ids12157_
                                _clause-id12155_))))
                         (_E1210212111_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (##pair? _rest1207912087_)
                                                    (let ((_hd1208412162_
                                                           (##car _rest1207912087_))
                                                          (_tl1208512164_
                                                           (##cdr _rest1207912087_)))
                                                      (let ((_clause12167_
                                                             _hd1208412162_))
                                                        (let ((_rest12169_
                                                               _tl1208512164_))
                                                          (_K1208312159_
                                                           _rest12169_
                                                           _clause12167_))))
                                                    (_else1208112095_)))))))))
                              _lp12074_)
                            _clauses12068_
                            _clause-ids12069_
                            '())))))
                  (let ((_e1148611499_ _stx11476_))
                    (let ((_E1148811503_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e1148611499_))))
                      (let ((_E1148711550_
                             (lambda ()
                               (if (gx#stx-pair? _e1148611499_)
                                   (let ((_e1148911507_
                                          (gx#syntax-e _e1148611499_)))
                                     (let ((_hd1149011510_
                                            (##car _e1148911507_))
                                           (_tl1149111512_
                                            (##cdr _e1148911507_)))
                                       (if (gx#stx-pair? _tl1149111512_)
                                           (let ((_e1149211515_
                                                  (gx#syntax-e
                                                   _tl1149111512_)))
                                             (let ((_hd1149311518_
                                                    (##car _e1149211515_))
                                                   (_tl1149411520_
                                                    (##cdr _e1149211515_)))
                                               (let ((_expr11523_
                                                      _hd1149311518_))
                                                 (if (gx#stx-pair?
                                                      _tl1149411520_)
                                                     (let ((_e1149511525_
                                                            (gx#syntax-e
                                                             _tl1149411520_)))
                                                       (let ((_hd1149611528_
                                                              (##car _e1149511525_))
                                                             (_tl1149711530_
                                                              (##cdr _e1149511525_)))
                                                         (let ((_ids11533_
                                                                _hd1149611528_))
                                                           (let ((_clauses11535_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1149711530_))
                     (if '#t
                         (if (not (gx#identifier-list? _ids11533_))
                             (gx#raise-syntax-error
                              '#f
                              '"Bad template identifier list"
                              _stx11476_
                              _ids11533_)
                             (if (not (gx#stx-list? _clauses11535_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _stx11476_)
                                 (let ((_ids11537_
                                        (gx#syntax->list _ids11533_)))
                                   (let ((_clauses11539_
                                          (gx#syntax->list _clauses11535_)))
                                     (let ((_clause-ids11541_
                                            (gx#gentemps _clauses11539_)))
                                       (let ((_E11543_ (gx#genident__0)))
                                         (let ((_target11545_
                                                (gx#genident__0)))
                                           (let ((_first11547_
                                                  (if (null? _clauses11539_)
                                                      _E11543_
                                                      (car _clause-ids11541_))))
                                             (let ()
                                               (gx#stx-wrap-source
                                                (gx#core-list
                                                 'let-values
                                                 (cons (cons (cons _E11543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _target11545_ '())
                            (gx#core-list
                             'raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _target11545_))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_generate-body11482_
                                                  (_generate-bindings11481_
                                                   _target11545_
                                                   _ids11537_
                                                   _clauses11539_
                                                   _clause-ids11541_
                                                   _E11543_)
                                                  (cons _first11547_
                                                        (cons _expr11523_
                                                              '()))))
                                                (gx#stx-source
                                                 _stx11476_)))))))))))
                         (_E1148811503_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1148811503_)))))
                                           (_E1148811503_))))
                                   (_E1148811503_)))))
                        (let () (_E1148711550_))))))))))))
    (begin
      (define gx#macro-expand-syntax-case__0
        (lambda (_stx12178_)
          (let ((_identifier=?12180_ 'free-identifier=?))
            (let ((_unwrap-e12182_ 'syntax-e))
              (let ((_wrap-e12184_ 'quote-syntax))
                (gx#macro-expand-syntax-case__opt-lambda11474
                 _stx12178_
                 _identifier=?12180_
                 _unwrap-e12182_
                 _wrap-e12184_))))))
      (define gx#macro-expand-syntax-case__1
        (lambda (_stx12186_ _identifier=?12187_)
          (let ((_unwrap-e12189_ 'syntax-e))
            (let ((_wrap-e12191_ 'quote-syntax))
              (gx#macro-expand-syntax-case__opt-lambda11474
               _stx12186_
               _identifier=?12187_
               _unwrap-e12189_
               _wrap-e12191_)))))
      (define gx#macro-expand-syntax-case__2
        (lambda (_stx12193_ _identifier=?12194_ _unwrap-e12195_)
          (let ((_wrap-e12197_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda11474
             _stx12193_
             _identifier=?12194_
             _unwrap-e12195_
             _wrap-e12197_))))
      (define gx#macro-expand-syntax-case
        (lambda _g12625_
          (let ((_g12624_ (length _g12625_)))
            (cond ((fx= _g12624_ 1)
                   (apply gx#macro-expand-syntax-case__0 _g12625_))
                  ((fx= _g12624_ 2)
                   (apply gx#macro-expand-syntax-case__1 _g12625_))
                  ((fx= _g12624_ 3)
                   (apply gx#macro-expand-syntax-case__2 _g12625_))
                  ((fx= _g12624_ 4)
                   (apply gx#macro-expand-syntax-case__opt-lambda11474
                          _g12625_))
                  (else (error "No clause matching arguments" _g12625_))))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx11473_)
      (if (gx#identifier? _stx11473_)
          (##structure-instance-of?
           (gx#syntax-local-e__opt-lambda2673 _stx11473_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd11431_ . _rest11432_)
      (let ((_len11434_ (length _hd11431_)))
        ((letrec ((_lp11436_
                   (lambda (_rest11438_)
                     (let ((_rest1143911447_ _rest11438_))
                       (let ((_E1144211451_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1143911447_))))
                         (let ((_else1144111455_ (lambda () (void))))
                           (let ((_K1144311461_
                                  (lambda (_rest11458_ _hd11459_)
                                    (if (fx= _len11434_ (length _hd11459_))
                                        (_lp11436_ _rest11458_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Splice length mismatch"
                                         _hd11459_)))))
                             (if (##pair? _rest1143911447_)
                                 (let ((_hd1144411464_
                                        (##car _rest1143911447_))
                                       (_tl1144511466_
                                        (##cdr _rest1143911447_)))
                                   (let ((_hd11469_ _hd1144411464_))
                                     (let ((_rest11471_ _tl1144511466_))
                                       (_K1144311461_ _rest11471_ _hd11469_))))
                                 (_else1144111455_)))))))))
           _lp11436_)
         _rest11432_))))
  (define gx#syntax-split-splice
    (lambda (_stx11389_ _n11390_)
      ((letrec ((_lp11392_
                 (lambda (_rest11394_ _r11395_)
                   (if (gx#stx-pair? _rest11394_)
                       (let ((_g1139611403_ (gx#syntax-e _rest11394_)))
                         (let ((_E1139811407_
                                (lambda ()
                                  (error '"No clause matching"
                                         _g1139611403_))))
                           (let ((_K1139911413_
                                  (lambda (_rest11410_ _hd11411_)
                                    (_lp11392_
                                     _rest11410_
                                     (cons _hd11411_ _r11395_)))))
                             (if (##pair? _g1139611403_)
                                 (let ((_hd1140011416_ (##car _g1139611403_))
                                       (_tl1140111418_ (##cdr _g1139611403_)))
                                   (let ((_hd11421_ _hd1140011416_))
                                     (let ((_rest11423_ _tl1140111418_))
                                       (_K1139911413_ _rest11423_ _hd11421_))))
                                 (_E1139811407_)))))
                       ((letrec ((_lp11425_
                                  (lambda (_n11427_ _l11428_ _r11429_)
                                    (if (null? _l11428_)
                                        (values _l11428_ _r11429_)
                                        (if (fxpositive? _n11427_)
                                            (_lp11425_
                                             (fx1- _n11427_)
                                             (cdr _l11428_)
                                             (cons (car _l11428_) _r11429_))
                                            (values (reverse _l11428_)
                                                    _r11429_))))))
                          _lp11425_)
                        _n11390_
                        _r11395_
                        _rest11394_)))))
         _lp11392_)
       _stx11389_
       '()))))
