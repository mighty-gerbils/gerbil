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
    (lambda _$args12596_
      (apply make-struct-instance gx#syntax-pattern::t _$args12596_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self12593_ _stx12594_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx12594_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx12202_)
      (let ((_generate12204_
             (lambda (_e12431_)
               (let ((_BUG12433_
                      (lambda (_q12591_)
                        (error '"BUG: syntax; generate"
                               _stx12202_
                               _e12431_
                               _q12591_))))
                 (let ((_local-pattern-e12434_
                        (lambda (_pat12589_)
                          (gx#syntax-local-rewrap
                           (##structure-ref
                            _pat12589_
                            '2
                            gx#syntax-pattern::t
                            '#f)))))
                   (let ((_getvar12435_
                          (lambda (_q12586_ _vars12587_)
                            (assgetq _q12586_ _vars12587_ _BUG12433_))))
                     (let ((_getarg12436_
                            (lambda (_arg12552_ _vars12553_)
                              (let ((_arg1255412561_ _arg12552_))
                                (let ((_E1255612565_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _arg1255412561_))))
                                  (let ((_K1255712574_
                                         (lambda (_e12568_ _tag12569_)
                                           (let ((_$e12571_ _tag12569_))
                                             (if (eq? _$e12571_ 'ref)
                                                 (_getvar12435_
                                                  _e12568_
                                                  _vars12553_)
                                                 (if (eq? _$e12571_ 'pattern)
                                                     (_local-pattern-e12434_
                                                      _e12568_)
                                                     (_BUG12433_
                                                      _arg12552_)))))))
                                    (if (##pair? _arg1255412561_)
                                        (let ((_hd1255812577_
                                               (##car _arg1255412561_))
                                              (_tl1255912579_
                                               (##cdr _arg1255412561_)))
                                          (let ((_tag12582_ _hd1255812577_))
                                            (let ((_e12584_ _tl1255912579_))
                                              (_K1255712574_
                                               _e12584_
                                               _tag12582_))))
                                        (_E1255612565_))))))))
                       ((letrec ((_recur12438_
                                  (lambda (_e12440_ _vars12441_)
                                    (let ((_e1244212449_ _e12440_))
                                      (let ((_E1244412453_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _e1244212449_))))
                                        (let ((_K1244512540_
                                               (lambda (_body12456_ _tag12457_)
                                                 (let ((_$e12459_ _tag12457_))
                                                   (if (eq? _$e12459_ 'datum)
                                                       (gx#core-list
                                                        'quote
                                                        _body12456_)
                                                       (if (eq? _$e12459_
                                                                'term)
                                                           (gx#core-list
                                                            'datum->syntax
                                                            '#f
                                                            (gx#core-list
                                                             'quote
                                                             _body12456_))
                                                           (if (eq? _$e12459_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'pattern)
                       (_local-pattern-e12434_ _body12456_)
                       (if (eq? _$e12459_ 'ref)
                           (_getvar12435_ _body12456_ _vars12441_)
                           (if (eq? _$e12459_ 'cons)
                               (gx#core-list
                                'cons
                                (_recur12438_ (car _body12456_) _vars12441_)
                                (_recur12438_ (cdr _body12456_) _vars12441_))
                               (if (eq? _$e12459_ 'vector)
                                   (gx#core-list
                                    'list->vector
                                    (_recur12438_ _body12456_ _vars12441_))
                                   (if (eq? _$e12459_ 'box)
                                       (gx#core-list
                                        'box
                                        (_recur12438_ _body12456_ _vars12441_))
                                       (if (eq? _$e12459_ 'splice)
                                           (let ((_body1246112472_
                                                  _body12456_))
                                             (let ((_E1246312476_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _body1246112472_))))
                                               (let ((_K1246412514_
                                                      (lambda (_args12479_
                                                               _iv12480_
                                                               _hd12481_
                                                               _depth12482_)
                                                        (let ((_targets12488_
                                                               (map (lambda (_g1248312485_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_getarg12436_ _g1248312485_ _vars12441_))
                            _args12479_)))
                  (let ((_fold-in12490_ (gx#gentemps _args12479_)))
                    (let ((_fold-out12492_ (gx#genident__0)))
                      (let ((_lambda-args12494_
                             (foldr cons
                                    (cons _fold-out12492_ '())
                                    _fold-in12490_)))
                        (let ((_lambda-body12511_
                               (if (fx> _depth12482_ '1)
                                   (let ((_r-args12502_
                                          (map (lambda (_arg12496_)
                                                 (cons 'ref (cdr _arg12496_)))
                                               _args12479_))
                                         (_r-vars12503_
                                          (foldr (lambda (_arg12498_
                                                          _var12499_
                                                          _r12500_)
                                                   (cons (cons (cdr _arg12498_)
                                                               _var12499_)
                                                         _r12500_))
                                                 _vars12441_
                                                 _args12479_
                                                 _fold-in12490_)))
                                     (_recur12438_
                                      (cons* 'splice
                                             (fx1- _depth12482_)
                                             _hd12481_
                                             (cons 'var _fold-out12492_)
                                             _r-args12502_)
                                      _r-vars12503_))
                                   (let ((_hd-vars12509_
                                          (foldr (lambda (_arg12505_
                                                          _var12506_
                                                          _r12507_)
                                                   (cons (cons (cdr _arg12505_)
                                                               _var12506_)
                                                         _r12507_))
                                                 _vars12441_
                                                 _args12479_
                                                 _fold-in12490_)))
                                     (gx#core-list
                                      'cons
                                      (_recur12438_ _hd12481_ _hd-vars12509_)
                                      _fold-out12492_)))))
                          (let ()
                            (gx#core-list
                             'begin
                             (if (fx> (length _targets12488_) '1)
                                 (gx#core-cons*
                                  'syntax-check-splice-targets
                                  _targets12488_)
                                 '#!void)
                             (gx#core-cons*
                              'foldr
                              (gx#core-list
                               'lambda%
                               _lambda-args12494_
                               _lambda-body12511_)
                              (_recur12438_ _iv12480_ _vars12441_)
                              _targets12488_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _body1246112472_)
                                                     (let ((_hd1246512517_
                                                            (##car _body1246112472_))
                                                           (_tl1246612519_
                                                            (##cdr _body1246112472_)))
                                                       (let ((_depth12522_
                                                              _hd1246512517_))
                                                         (if (##pair? _tl1246612519_)
                                                             (let ((_hd1246712524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##car _tl1246612519_))
                           (_tl1246812526_ (##cdr _tl1246612519_)))
                       (let ((_hd12529_ _hd1246712524_))
                         (if (##pair? _tl1246812526_)
                             (let ((_hd1246912531_ (##car _tl1246812526_))
                                   (_tl1247012533_ (##cdr _tl1246812526_)))
                               (let ((_iv12536_ _hd1246912531_))
                                 (let ((_args12538_ _tl1247012533_))
                                   (_K1246412514_
                                    _args12538_
                                    _iv12536_
                                    _hd12529_
                                    _depth12522_))))
                             (_E1246312476_))))
                     (_E1246312476_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1246312476_)))))
                                           (if (eq? _$e12459_ 'var)
                                               _body12456_
                                               (_BUG12433_
                                                _e12440_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _e1244212449_)
                                              (let ((_hd1244612543_
                                                     (##car _e1244212449_))
                                                    (_tl1244712545_
                                                     (##cdr _e1244212449_)))
                                                (let ((_tag12548_
                                                       _hd1244612543_))
                                                  (let ((_body12550_
                                                         _tl1244712545_))
                                                    (_K1244512540_
                                                     _body12550_
                                                     _tag12548_))))
                                              (_E1244412453_))))))))
                          _recur12438_)
                        _e12431_
                        '()))))))))
        (let ((_parse12205_
               (lambda (_e12246_)
                 (let ((_make-cons12248_
                        (lambda (_hd12423_ _tl12424_)
                          (let ((_g12608_ _hd12423_) (_g12610_ _tl12424_))
                            (begin
                              (let ((_g12609_ (values-count _g12608_)))
                                (if (not (fx= _g12609_ 2))
                                    (error "Context expects 2 values"
                                           _g12609_)))
                              (let ((_g12611_ (values-count _g12610_)))
                                (if (not (fx= _g12611_ 2))
                                    (error "Context expects 2 values"
                                           _g12611_)))
                              (let ((_hd-e12426_ (values-ref _g12608_ 0))
                                    (_hd-vars12427_ (values-ref _g12608_ 1)))
                                (let ((_tl-e12428_ (values-ref _g12610_ 0))
                                      (_tl-vars12429_ (values-ref _g12610_ 1)))
                                  (values (cons* 'cons _hd-e12426_ _tl-e12428_)
                                          (append _hd-vars12427_
                                                  _tl-vars12429_)))))))))
                   (let ((_make-splice12249_
                          (lambda (_where12362_
                                   _depth12363_
                                   _hd12364_
                                   _tl12365_)
                            (let ((_g12604_ _hd12364_) (_g12606_ _tl12365_))
                              (begin
                                (let ((_g12605_ (values-count _g12604_)))
                                  (if (not (fx= _g12605_ 2))
                                      (error "Context expects 2 values"
                                             _g12605_)))
                                (let ((_g12607_ (values-count _g12606_)))
                                  (if (not (fx= _g12607_ 2))
                                      (error "Context expects 2 values"
                                             _g12607_)))
                                (let ((_hd-e12367_ (values-ref _g12604_ 0))
                                      (_hd-vars12368_ (values-ref _g12604_ 1)))
                                  (let ((_tl-e12369_ (values-ref _g12606_ 0))
                                        (_tl-vars12370_
                                         (values-ref _g12606_ 1)))
                                    ((letrec ((_lp12372_
                                               (lambda (_rest12374_
                                                        _targets12375_
                                                        _vars12376_)
                                                 (let ((_rest1237712387_
                                                        _rest12374_))
                                                   (let ((_E1238012391_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest1237712387_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_else1237912395_
                                                            (lambda ()
                                                              (if (null? _targets12375_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Misplaced ellipsis"
                           _stx12202_
                           _where12362_)
                          (values (cons* 'splice
                                         _depth12363_
                                         _hd-e12367_
                                         _tl-e12369_
                                         _targets12375_)
                                  _vars12376_)))))
               (let ((_K1238112404_
                      (lambda (_rest12398_ _hd-pat12399_ _hd-depth*12400_)
                        (let ((_hd-depth12402_
                               (fx- _hd-depth*12400_ _depth12363_)))
                          (if (fxpositive? _hd-depth12402_)
                              (_lp12372_
                               _rest12398_
                               (cons (cons 'ref _hd-pat12399_) _targets12375_)
                               (cons (cons _hd-depth12402_ _hd-pat12399_)
                                     _vars12376_))
                              (if (fxzero? _hd-depth12402_)
                                  (_lp12372_
                                   _rest12398_
                                   (cons (cons 'pattern _hd-pat12399_)
                                         _targets12375_)
                                   _vars12376_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Too many ellipses"
                                   _stx12202_
                                   _where12362_)))))))
                 (if (##pair? _rest1237712387_)
                     (let ((_hd1238212407_ (##car _rest1237712387_))
                           (_tl1238312409_ (##cdr _rest1237712387_)))
                       (if (##pair? _hd1238212407_)
                           (let ((_hd1238412412_ (##car _hd1238212407_))
                                 (_tl1238512414_ (##cdr _hd1238212407_)))
                             (let ((_hd-depth*12417_ _hd1238412412_))
                               (let ((_hd-pat12419_ _tl1238512414_))
                                 (let ((_rest12421_ _tl1238312409_))
                                   (_K1238112404_
                                    _rest12421_
                                    _hd-pat12419_
                                    _hd-depth*12417_)))))
                           (_else1237912395_)))
                     (_else1237912395_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _lp12372_)
                                     _hd-vars12368_
                                     '()
                                     _tl-vars12370_))))))))
                     (letrec ((_recur12250_
                               (lambda (_e12255_ _is-e?12256_)
                                 (if (_is-e?12256_ _e12255_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Mislpaced ellipsis"
                                      _stx12202_)
                                     (if (gx#syntax-local-pattern? _e12255_)
                                         (let ((_pat12258_
                                                (gx#syntax-local-e__0
                                                 _e12255_)))
                                           (let ((_depth12260_
                                                  (##structure-ref
                                                   _pat12258_
                                                   '3
                                                   gx#syntax-pattern::t
                                                   '#f)))
                                             (let ()
                                               (if (fxpositive? _depth12260_)
                                                   (values (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat12258_)
                   (cons (cons _depth12260_ _pat12258_) '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (values (cons 'pattern
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat12258_)
                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (if (gx#identifier? _e12255_)
                                             (values (cons 'term _e12255_) '())
                                             (if (gx#stx-pair? _e12255_)
                                                 (let ((_e1226212269_
                                                        _e12255_))
                                                   (let ((_E1226412273_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _e1226212269_))))
                                                     (let ((_E1226312352_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e1226212269_)
                          (let ((_e1226512277_ (gx#syntax-e _e1226212269_)))
                            (let ((_hd1226612280_ (##car _e1226512277_))
                                  (_tl1226712282_ (##cdr _e1226512277_)))
                              (let ((_hd12285_ _hd1226612280_))
                                (let ((_rest12287_ _tl1226712282_))
                                  (if '#t
                                      (if (_is-e?12256_ _hd12285_)
                                          (let ((_e1228812295_ _rest12287_))
                                            (let ((_E1229012299_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad ellipsis syntax"
                                                      _stx12202_
                                                      _e12255_))))
                                              (let ((_E1228912313_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e1228812295_)
                                                           (let ((_e1229112303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e1228812295_)))
                     (let ((_hd1229212306_ (##car _e1229112303_))
                           (_tl1229312308_ (##cdr _e1229112303_)))
                       (let ((_rest12311_ _hd1229212306_))
                         (if (gx#stx-null? _tl1229312308_)
                             (if '#t
                                 (_recur12250_ _rest12311_ false)
                                 (_E1229012299_))
                             (_E1229012299_)))))
                   (_E1229012299_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E1228912313_)))))
                                          ((letrec ((_lp12317_
                                                     (lambda (_rest12319_
                                                              _depth12320_)
                                                       (let ((_e1232112328_
                                                              _rest12319_))
                                                         (let ((_E1232312332_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (fxpositive? _depth12320_)
                              (_make-splice12249_
                               _e12255_
                               _depth12320_
                               (_recur12250_ _hd12285_ _is-e?12256_)
                               (_recur12250_ _rest12319_ _is-e?12256_))
                              (_make-cons12248_
                               (_recur12250_ _hd12285_ _is-e?12256_)
                               (_recur12250_ _rest12319_ _is-e?12256_))))))
                   (let ((_E1232212348_
                          (lambda ()
                            (if (gx#stx-pair? _e1232112328_)
                                (let ((_e1232412336_
                                       (gx#syntax-e _e1232112328_)))
                                  (let ((_hd1232512339_ (##car _e1232412336_))
                                        (_tl1232612341_ (##cdr _e1232412336_)))
                                    (let ((_rest-hd12344_ _hd1232512339_))
                                      (let ((_rest-tl12346_ _tl1232612341_))
                                        (if '#t
                                            (if (_is-e?12256_ _rest-hd12344_)
                                                (_lp12317_
                                                 _rest-tl12346_
                                                 (fx1+ _depth12320_))
                                                (if (fxpositive? _depth12320_)
                                                    (_make-splice12249_
                                                     _e12255_
                                                     _depth12320_
                                                     (_recur12250_
                                                      _hd12285_
                                                      _is-e?12256_)
                                                     (_recur12250_
                                                      _rest12319_
                                                      _is-e?12256_))
                                                    (_make-cons12248_
                                                     (_recur12250_
                                                      _hd12285_
                                                      _is-e?12256_)
                                                     (_recur12250_
                                                      _rest12319_
                                                      _is-e?12256_))))
                                            (_E1232312332_))))))
                                (_E1232312332_)))))
                     (let () (_E1232212348_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _lp12317_)
                                           _rest12287_
                                           '0))
                                      (_E1226412273_))))))
                          (_E1226412273_)))))
               (let () (_E1226312352_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-vector? _e12255_)
                                                     (let ((_g12598_
                                                            (_recur12250_
                                                             (vector->list
                                                              (gx#stx-unwrap__0
                                                               _e12255_))
                                                             _is-e?12256_)))
                                                       (begin
                                                         (let ((_g12599_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g12598_)))
                   (if (not (fx= _g12599_ 2))
                       (error "Context expects 2 values" _g12599_)))
                 (let ((_e12356_ (values-ref _g12598_ 0))
                       (_vars12357_ (values-ref _g12598_ 1)))
                   (values (cons 'vector _e12356_) _vars12357_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-box? _e12255_)
                                                         (let ((_g12600_
                                                                (_recur12250_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (unbox (gx#stx-unwrap__0 _e12255_))
                         _is-e?12256_)))
                   (begin
                     (let ((_g12601_ (values-count _g12600_)))
                       (if (not (fx= _g12601_ 2))
                           (error "Context expects 2 values" _g12601_)))
                     (let ((_e12359_ (values-ref _g12600_ 0))
                           (_vars12360_ (values-ref _g12600_ 1)))
                       (values (cons 'box _e12359_) _vars12360_))))
                 (values (cons 'datum _e12255_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       (let ((_g12602_ (_recur12250_ _e12246_ gx#ellipsis?)))
                         (begin
                           (let ((_g12603_ (values-count _g12602_)))
                             (if (not (fx= _g12603_ 2))
                                 (error "Context expects 2 values" _g12603_)))
                           (let ((_tree12252_ (values-ref _g12602_ 0))
                                 (_vars12253_ (values-ref _g12602_ 1)))
                             (if (null? _vars12253_)
                                 _tree12252_
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Missing ellipsis"
                                  _stx12202_
                                  _vars12253_)))))))))))
          (let ((_e1220612216_ _stx12202_))
            (let ((_E1220812220_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _stx12202_))))
              (let ((_E1220712242_
                     (lambda ()
                       (if (gx#stx-pair? _e1220612216_)
                           (let ((_e1220912224_ (gx#syntax-e _e1220612216_)))
                             (let ((_hd1221012227_ (##car _e1220912224_))
                                   (_tl1221112229_ (##cdr _e1220912224_)))
                               (if (gx#stx-pair? _tl1221112229_)
                                   (let ((_e1221212232_
                                          (gx#syntax-e _tl1221112229_)))
                                     (let ((_hd1221312235_
                                            (##car _e1221212232_))
                                           (_tl1221412237_
                                            (##cdr _e1221212232_)))
                                       (let ((_form12240_ _hd1221312235_))
                                         (if (gx#stx-null? _tl1221412237_)
                                             (if '#t
                                                 (gx#stx-wrap-source
                                                  (_generate12204_
                                                   (_parse12205_ _form12240_))
                                                  (gx#stx-source _stx12202_))
                                                 (_E1220812220_))
                                             (_E1220812220_)))))
                                   (_E1220812220_))))
                           (_E1220812220_)))))
                (let () (_E1220712242_)))))))))
  (begin
    (define gx#macro-expand-syntax-case__opt-lambda11472
      (lambda (_stx11474_ _identifier=?11475_ _unwrap-e11476_ _wrap-e11477_)
        (let ((_generate-body11480_
               (lambda (_bindings12024_ _body12025_)
                 ((letrec ((_recur12027_
                            (lambda (_rest12029_)
                              (let ((_rest1203012038_ _rest12029_))
                                (let ((_E1203312042_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest1203012038_))))
                                  (let ((_else1203212046_
                                         (lambda () _body12025_)))
                                    (let ((_K1203412052_
                                           (lambda (_rest12049_ _hd12050_)
                                             (gx#core-list
                                              'let-values
                                              (cons _hd12050_ '())
                                              (_recur12027_ _rest12049_)))))
                                      (if (##pair? _rest1203012038_)
                                          (let ((_hd1203512055_
                                                 (##car _rest1203012038_))
                                                (_tl1203612057_
                                                 (##cdr _rest1203012038_)))
                                            (let ((_hd12060_ _hd1203512055_))
                                              (let ((_rest12062_
                                                     _tl1203612057_))
                                                (_K1203412052_
                                                 _rest12062_
                                                 _hd12060_))))
                                          (_else1203212046_)))))))))
                    _recur12027_)
                  _bindings12024_))))
          (let ((_generate-match11482_
                 (lambda (_where11646_
                          _target11647_
                          _hd11648_
                          _mvars11649_
                          _K11650_
                          _E11651_)
                   (let ((_BUG11653_
                          (lambda (_q11885_)
                            (error '"BUG: syntax-case; generate"
                                   _stx11474_
                                   _hd11648_
                                   _q11885_))))
                     (let ((_splice-rlen11655_
                            (lambda (_e11701_)
                              ((letrec ((_lp11703_
                                         (lambda (_e11705_ _n11706_)
                                           (let ((_e1170711714_ _e11705_))
                                             (let ((_E1170911718_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _e1170711714_))))
                                               (let ((_K1171011727_
                                                      (lambda (_body11721_
                                                               _tag11722_)
                                                        (let ((_$e11724_
                                                               _tag11722_))
                                                          (if (eq? _$e11724_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'splice)
                      (gx#raise-syntax-error
                       '#f
                       '"Ambiguous pattern"
                       _stx11474_
                       _where11646_)
                      (if (eq? _$e11724_ 'cons)
                          (_lp11703_ (cdr _body11721_) (fx1+ _n11706_))
                          _n11706_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _e1170711714_)
                                                     (let ((_hd1171111730_
                                                            (##car _e1170711714_))
                                                           (_tl1171211732_
                                                            (##cdr _e1170711714_)))
                                                       (let ((_tag11735_
                                                              _hd1171111730_))
                                                         (let ((_body11737_
                                                                _tl1171211732_))
                                                           (_K1171011727_
                                                            _body11737_
                                                            _tag11735_))))
                                                     (_E1170911718_))))))))
                                 _lp11703_)
                               _e11701_
                               '0))))
                       (let ((_splice-vars11656_
                              (lambda (_e11663_)
                                ((letrec ((_recur11665_
                                           (lambda (_e11667_ _vars11668_)
                                             (let ((_e1166911676_ _e11667_))
                                               (let ((_E1167111680_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _e1166911676_))))
                                                 (let ((_K1167211689_
                                                        (lambda (_body11683_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tag11684_)
                  (let ((_$e11686_ _tag11684_))
                    (if (eq? _$e11686_ 'var)
                        (cons _body11683_ _vars11668_)
                        (if (memq _$e11686_ '(cons splice))
                            (_recur11665_
                             (cdr _body11683_)
                             (_recur11665_ (car _body11683_) _vars11668_))
                            (if (memq _$e11686_ '(vector box))
                                (_recur11665_ _body11683_ _vars11668_)
                                _vars11668_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##pair? _e1166911676_)
                                                       (let ((_hd1167311692_
                                                              (##car _e1166911676_))
                                                             (_tl1167411694_
                                                              (##cdr _e1166911676_)))
                                                         (let ((_tag11697_
                                                                _hd1167311692_))
                                                           (let ((_body11699_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1167411694_))
                     (_K1167211689_ _body11699_ _tag11697_))))
               (_E1167111680_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _recur11665_)
                                 _e11663_
                                 '()))))
                         (let ((_make-body11657_
                                (lambda (_vars11659_)
                                  (cons _K11650_
                                        (map (lambda (_mvar11661_)
                                               (assgetq (car _mvar11661_)
                                                        _vars11659_
                                                        _BUG11653_))
                                             _mvars11649_)))))
                           (letrec ((_recur11654_
                                     (lambda (_e11739_
                                              _vars11740_
                                              _target11741_
                                              _E11742_
                                              _k11743_)
                                       (let ((_e1174411751_ _e11739_))
                                         (let ((_E1174611755_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _e1174411751_))))
                                           (let ((_K1174711873_
                                                  (lambda (_body11758_
                                                           _tag11759_)
                                                    (let ((_$e11761_
                                                           _tag11759_))
                                                      (if (eq? _$e11761_ 'any)
                                                          (_k11743_
                                                           _vars11740_)
                                                          (if (eq? _$e11761_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'id)
                      (gx#core-list
                       'if
                       (gx#core-list 'identifier? _target11741_)
                       (gx#core-list
                        'if
                        (gx#core-list
                         _identifier=?11475_
                         (gx#core-list _wrap-e11477_ _body11758_)
                         _target11741_)
                        (_k11743_ _vars11740_)
                        _E11742_)
                       _E11742_)
                      (if (eq? _$e11761_ 'var)
                          (_k11743_
                           (cons (cons _body11758_ _target11741_) _vars11740_))
                          (if (eq? _$e11761_ 'cons)
                              (let ((_$e11764_ (gx#genident__1 'e))
                                    (_$hd11765_ (gx#genident__1 'hd))
                                    (_$tl11766_ (gx#genident__1 'tl)))
                                (gx#core-list
                                 'if
                                 (gx#core-list 'stx-pair? _target11741_)
                                 (gx#core-list
                                  'let-values
                                  (cons (cons (cons _$e11764_ '())
                                              (cons (gx#core-list
                                                     _unwrap-e11476_
                                                     _target11741_)
                                                    '()))
                                        '())
                                  (gx#core-list
                                   'let-values
                                   (cons (cons (cons _$hd11765_ '())
                                               (cons (gx#core-list
                                                      '##car
                                                      _$e11764_)
                                                     '()))
                                         (cons (cons (cons _$tl11766_ '())
                                                     (cons (gx#core-list
                                                            '##cdr
                                                            _$e11764_)
                                                           '()))
                                               '()))
                                   (let ((_body1176711774_ _body11758_))
                                     (let ((_E1176911778_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _body1176711774_))))
                                       (let ((_K1177011786_
                                              (lambda (_tl11781_ _hd11782_)
                                                (_recur11654_
                                                 _hd11782_
                                                 _vars11740_
                                                 _$hd11765_
                                                 _E11742_
                                                 (lambda (_vars11784_)
                                                   (_recur11654_
                                                    _tl11781_
                                                    _vars11784_
                                                    _$tl11766_
                                                    _E11742_
                                                    _k11743_))))))
                                         (if (##pair? _body1176711774_)
                                             (let ((_hd1177111789_
                                                    (##car _body1176711774_))
                                                   (_tl1177211791_
                                                    (##cdr _body1176711774_)))
                                               (let ((_hd11794_
                                                      _hd1177111789_))
                                                 (let ((_tl11796_
                                                        _tl1177211791_))
                                                   (_K1177011786_
                                                    _tl11796_
                                                    _hd11794_))))
                                             (_E1176911778_)))))))
                                 _E11742_))
                              (if (eq? _$e11761_ 'splice)
                                  (let ((_body1179711804_ _body11758_))
                                    (let ((_E1179911808_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _body1179711804_))))
                                      (let ((_K1180011857_
                                             (lambda (_tl11811_ _hd11812_)
                                               (let ((_rlen11814_
                                                      (_splice-rlen11655_
                                                       _tl11811_)))
                                                 (let ((_$target11816_
                                                        (gx#genident__1
                                                         'target)))
                                                   (let ((_$hd11818_
                                                          (gx#genident__1
                                                           'hd)))
                                                     (let ((_$tl11820_
                                                            (gx#genident__1
                                                             'tl)))
                                                       (let ((_$lp11822_
                                                              (gx#genident__1
                                                               'loop)))
                                                         (let ((_$lp-e11824_
                                                                (gx#genident__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'e)))
                   (let ((_$lp-hd11826_ (gx#genident__1 'lp-hd)))
                     (let ((_$lp-tl11828_ (gx#genident__1 'lp-tl)))
                       (let ((_svars11830_ (_splice-vars11656_ _hd11812_)))
                         (let ((_lvars11832_ (gx#gentemps _svars11830_)))
                           (let ((_tlvars11834_ (gx#gentemps _svars11830_)))
                             (let ((_linit11838_
                                    (map (lambda (_var11836_)
                                           (gx#core-list 'quote '()))
                                         _lvars11832_)))
                               (let ()
                                 (let ((_make-loop11841_
                                        (lambda (_vars11843_)
                                          (gx#core-list
                                           'letrec-values
                                           (cons (cons (cons _$lp11822_ '())
                                                       (cons (gx#core-list
                                                              'lambda%
                                                              (cons _$hd11818_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _lvars11832_)
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _$hd11818_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$lp-e11824_ '())
                                    (cons (gx#core-list
                                           _unwrap-e11476_
                                           _$hd11818_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$lp-hd11826_ '())
                                     (cons (gx#core-list '##car _$lp-e11824_)
                                           '()))
                               (cons (cons (cons _$lp-tl11828_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$lp-e11824_)
                                                 '()))
                                     '()))
                         (_recur11654_
                          _hd11812_
                          '()
                          _$lp-hd11826_
                          _E11742_
                          (lambda (_hdvars11845_)
                            (cons* _$lp11822_
                                   _$lp-tl11828_
                                   (map (lambda (_svar11847_ _lvar11848_)
                                          (gx#core-list
                                           'cons
                                           (assgetq _svar11847_
                                                    _hdvars11845_
                                                    _BUG11653_)
                                           _lvar11848_))
                                        _svars11830_
                                        _lvars11832_))))))
                       (gx#core-list
                        'let-values
                        (map (lambda (_lvar11850_ _tlvar11851_)
                               (cons (cons _tlvar11851_ '())
                                     (cons (gx#core-list 'reverse _lvar11850_)
                                           '())))
                             _lvars11832_
                             _tlvars11834_)
                        (_k11743_
                         (foldl (lambda (_svar11853_ _tlvar11854_ _r11855_)
                                  (cons (cons _svar11853_ _tlvar11854_)
                                        _r11855_))
                                _vars11843_
                                _svars11830_
                                _tlvars11834_)))))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons* _$lp11822_
                                                  _$target11816_
                                                  _linit11838_)))))
                                   (gx#core-list
                                    'if
                                    (gx#core-list
                                     'stx-pair/null?
                                     _target11741_)
                                    (gx#core-list
                                     'if
                                     (gx#core-list
                                      'fx>=
                                      (gx#core-list 'stx-length _target11741_)
                                      _rlen11814_)
                                     (gx#core-list
                                      'let-values
                                      (cons (cons (cons _$target11816_
                                                        (cons _$tl11820_ '()))
                                                  (cons (gx#core-list
                                                         'syntax-split-splice
                                                         _target11741_
                                                         _rlen11814_)
                                                        '()))
                                            '())
                                      (_recur11654_
                                       _tl11811_
                                       _vars11740_
                                       _$tl11820_
                                       _E11742_
                                       _make-loop11841_))
                                     _E11742_)
                                    _E11742_))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _body1179711804_)
                                            (let ((_hd1180111860_
                                                   (##car _body1179711804_))
                                                  (_tl1180211862_
                                                   (##cdr _body1179711804_)))
                                              (let ((_hd11865_ _hd1180111860_))
                                                (let ((_tl11867_
                                                       _tl1180211862_))
                                                  (_K1180011857_
                                                   _tl11867_
                                                   _hd11865_))))
                                            (_E1179911808_)))))
                                  (if (eq? _$e11761_ 'null)
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-null? _target11741_)
                                       (_k11743_ _vars11740_)
                                       _E11742_)
                                      (if (eq? _$e11761_ 'vector)
                                          (let ((_$e11869_
                                                 (gx#genident__1 'e)))
                                            (gx#core-list
                                             'if
                                             (gx#core-list
                                              'stx-vector?
                                              _target11741_)
                                             (gx#core-list
                                              'let-values
                                              (cons (cons (cons _$e11869_ '())
                                                          (cons (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'vector->list
                         (gx#core-list _unwrap-e11476_ _target11741_))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (_recur11654_
                                               _body11758_
                                               _vars11740_
                                               _$e11869_
                                               _E11742_
                                               _k11743_))
                                             _E11742_))
                                          (if (eq? _$e11761_ 'box)
                                              (let ((_$e11871_
                                                     (gx#genident__1 'e)))
                                                (gx#core-list
                                                 'if
                                                 (gx#core-list
                                                  'stx-box?
                                                  _target11741_)
                                                 (gx#core-list
                                                  'let-values
                                                  (cons (cons (cons _$e11871_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (gx#core-list
                             'unbox
                             (gx#core-list _unwrap-e11476_ _target11741_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur11654_
                                                   _body11758_
                                                   _vars11740_
                                                   _$e11871_
                                                   _E11742_
                                                   _k11743_))
                                                 _E11742_))
                                              (if (eq? _$e11761_ 'datum)
                                                  (gx#core-list
                                                   'if
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target11741_)
                                                   (gx#core-list
                                                    'if
                                                    (gx#core-list
                                                     'equal?
                                                     (gx#core-list
                                                      'stx-e
                                                      _target11741_)
                                                     _body11758_)
                                                    (_k11743_ _vars11740_)
                                                    _E11742_)
                                                   _E11742_)
                                                  (_BUG11653_
                                                   _e11739_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _e1174411751_)
                                                 (let ((_hd1174811876_
                                                        (##car _e1174411751_))
                                                       (_tl1174911878_
                                                        (##cdr _e1174411751_)))
                                                   (let ((_tag11881_
                                                          _hd1174811876_))
                                                     (let ((_body11883_
                                                            _tl1174911878_))
                                                       (_K1174711873_
                                                        _body11883_
                                                        _tag11881_))))
                                                 (_E1174611755_))))))))
                             (_recur11654_
                              _hd11648_
                              '()
                              _target11647_
                              _E11651_
                              _make-body11657_)))))))))
            (let ((_parse-clause11483_
                   (lambda (_hd11552_ _ids11553_)
                     ((letrec ((_recur11555_
                                (lambda (_e11557_ _vars11558_ _depth11559_)
                                  (if (gx#identifier? _e11557_)
                                      (if (gx#underscore? _e11557_)
                                          (values '(any) _vars11558_)
                                          (if (gx#ellipsis? _e11557_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Misplaced ellipsis"
                                               _stx11474_
                                               _hd11552_)
                                              (if (find (lambda (_id11561_)
                                                          (gx#bound-identifier=?
                                                           _e11557_
                                                           _id11561_))
                                                        _ids11553_)
                                                  (values (cons 'id _e11557_)
                                                          _vars11558_)
                                                  (if (find (lambda (_var11563_)
                                                              (gx#bound-identifier=?
                                                               _e11557_
                                                               (car _var11563_)))
                                                            _vars11558_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Duplicate pattern variable"
                                                       _stx11474_
                                                       _e11557_)
                                                      (values (cons 'var
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _e11557_)
                      (cons (cons _e11557_ _depth11559_) _vars11558_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _e11557_)
                                          (let ((_e1156411571_ _e11557_))
                                            (let ((_E1156611575_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _e1156411571_))))
                                              (let ((_E1156511636_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e1156411571_)
                                                           (let ((_e1156711579_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e1156411571_)))
                     (let ((_hd1156811582_ (##car _e1156711579_))
                           (_tl1156911584_ (##cdr _e1156711579_)))
                       (let ((_hd11587_ _hd1156811582_))
                         (let ((_rest11589_ _tl1156911584_))
                           (if '#t
                               (let ((_make-pair11604_
                                      (lambda (_tag11591_ _hd11592_ _tl11593_)
                                        (let ((_hd-depth11595_
                                               (if (eq? _tag11591_ 'splice)
                                                   (fx1+ _depth11559_)
                                                   _depth11559_)))
                                          (let ((_g12614_
                                                 (_recur11555_
                                                  _hd11592_
                                                  _vars11558_
                                                  _hd-depth11595_)))
                                            (begin
                                              (let ((_g12615_
                                                     (values-count _g12614_)))
                                                (if (not (fx= _g12615_ 2))
                                                    (error "Context expects 2 values"
                                                           _g12615_)))
                                              (let ((_hd11597_
                                                     (values-ref _g12614_ 0))
                                                    (_vars11598_
                                                     (values-ref _g12614_ 1)))
                                                (let ((_g12616_
                                                       (_recur11555_
                                                        _tl11593_
                                                        _vars11598_
                                                        _depth11559_)))
                                                  (begin
                                                    (let ((_g12617_
                                                           (values-count
                                                            _g12616_)))
                                                      (if (not (fx= _g12617_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g12617_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_tl11600_
                                                           (values-ref
                                                            _g12616_
                                                            0))
                                                          (_vars11601_
                                                           (values-ref
                                                            _g12616_
                                                            1)))
                                                      (let ()
                                                        (values (cons* _tag11591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd11597_
                               _tl11600_)
                        _vars11601_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (let ((_e1160511612_ _rest11589_))
                                   (let ((_E1160711616_
                                          (lambda ()
                                            (_make-pair11604_
                                             'cons
                                             _hd11587_
                                             _rest11589_))))
                                     (let ((_E1160611632_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1160511612_)
                                                  (let ((_e1160811620_
                                                         (gx#syntax-e
                                                          _e1160511612_)))
                                                    (let ((_hd1160911623_
                                                           (##car _e1160811620_))
                                                          (_tl1161011625_
                                                           (##cdr _e1160811620_)))
                                                      (let ((_rest-hd11628_
                                                             _hd1160911623_))
                                                        (let ((_rest-tl11630_
                                                               _tl1161011625_))
                                                          (if '#t
                                                              (if (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest-hd11628_)
                          (_make-pair11604_ 'splice _hd11587_ _rest-tl11630_)
                          (_make-pair11604_ 'cons _hd11587_ _rest11589_))
                      (_E1160711616_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1160711616_)))))
                                       (let () (_E1160611632_))))))
                               (_E1156611575_))))))
                   (_E1156611575_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E1156511636_)))))
                                          (if (gx#stx-null? _e11557_)
                                              (values '(null) _vars11558_)
                                              (if (gx#stx-vector? _e11557_)
                                                  (let ((_g12618_
                                                         (_recur11555_
                                                          (vector->list
                                                           (gx#syntax-e
                                                            _e11557_))
                                                          _vars11558_
                                                          _depth11559_)))
                                                    (begin
                                                      (let ((_g12619_
                                                             (values-count
                                                              _g12618_)))
                                                        (if (not (fx= _g12619_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g12619_)))
              (let ((_e11640_ (values-ref _g12618_ 0))
                    (_vars11641_ (values-ref _g12618_ 1)))
                (values (cons 'vector _e11640_) _vars11641_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e11557_)
                                                      (let ((_g12620_
                                                             (_recur11555_
                                                              (unbox (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e11557_))
                      _vars11558_
                      _depth11559_)))
                (begin
                  (let ((_g12621_ (values-count _g12620_)))
                    (if (not (fx= _g12621_ 2))
                        (error "Context expects 2 values" _g12621_)))
                  (let ((_e11643_ (values-ref _g12620_ 0))
                        (_vars11644_ (values-ref _g12620_ 1)))
                    (values (cons 'box _e11643_) _vars11644_))))
              (if (gx#stx-datum? _e11557_)
                  (values (cons 'datum (gx#stx-e _e11557_)) _vars11558_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad pattern"
                   _stx11474_
                   _e11557_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        _recur11555_)
                      _hd11552_
                      '()
                      '0))))
              (let ((_generate-clause11481_
                     (lambda (_target11887_ _ids11888_ _clause11889_ _E11890_)
                       (let ((_generate111892_
                              (lambda (_hd11979_ _fender11980_ _body11981_)
                                (let ((_g12612_
                                       (_parse-clause11483_
                                        _hd11979_
                                        _ids11888_)))
                                  (begin
                                    (let ((_g12613_ (values-count _g12612_)))
                                      (if (not (fx= _g12613_ 2))
                                          (error "Context expects 2 values"
                                                 _g12613_)))
                                    (let ((_e11983_ (values-ref _g12612_ 0))
                                          (_mvars11984_
                                           (values-ref _g12612_ 1)))
                                      (let ((_pvars11986_
                                             (map gx#syntax-local-rewrap
                                                  (gx#gentemps _mvars11984_))))
                                        (let ((_E11988_
                                               (cons _E11890_
                                                     (cons _target11887_
                                                           '()))))
                                          (let ((_K12021_
                                                 (gx#core-list
                                                  'lambda%
                                                  _pvars11986_
                                                  (gx#core-list
                                                   'let-syntax
                                                   (map (lambda (_mvar11990_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pvar11991_)
                  (let ((_mvar1199211999_ _mvar11990_))
                    (let ((_E1199412003_
                           (lambda ()
                             (error '"No clause matching" _mvar1199211999_))))
                      (let ((_K1199512009_
                             (lambda (_depth12006_ _id12007_)
                               (cons _id12007_
                                     (cons (gx#core-list
                                            'make-syntax-pattern
                                            (gx#core-list 'quote _id12007_)
                                            (gx#core-list 'quote _pvar11991_)
                                            _depth12006_)
                                           '())))))
                        (if (##pair? _mvar1199211999_)
                            (let ((_hd1199612012_ (##car _mvar1199211999_))
                                  (_tl1199712014_ (##cdr _mvar1199211999_)))
                              (let ((_id12017_ _hd1199612012_))
                                (let ((_depth12019_ _tl1199712014_))
                                  (_K1199512009_ _depth12019_ _id12017_))))
                            (_E1199412003_))))))
                _mvars11984_
                _pvars11986_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (true? _fender11980_)
                                                       _body11981_
                                                       (gx#core-list
                                                        'if
                                                        _fender11980_
                                                        _body11981_
                                                        _E11988_))))))
                                            (let ()
                                              (_generate-match11482_
                                               _hd11979_
                                               _target11887_
                                               _e11983_
                                               _mvars11984_
                                               _K12021_
                                               _E11988_)))))))))))
                         (let ((_e1189311913_ _clause11889_))
                           (let ((_E1190211917_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _e1189311913_))))
                             (let ((_E1189511951_
                                    (lambda ()
                                      (if (gx#stx-pair? _e1189311913_)
                                          (let ((_e1190311921_
                                                 (gx#syntax-e _e1189311913_)))
                                            (let ((_hd1190411924_
                                                   (##car _e1190311921_))
                                                  (_tl1190511926_
                                                   (##cdr _e1190311921_)))
                                              (let ((_hd11929_ _hd1190411924_))
                                                (if (gx#stx-pair?
                                                     _tl1190511926_)
                                                    (let ((_e1190611931_
                                                           (gx#syntax-e
                                                            _tl1190511926_)))
                                                      (let ((_hd1190711934_
                                                             (##car _e1190611931_))
                                                            (_tl1190811936_
                                                             (##cdr _e1190611931_)))
                                                        (let ((_fender11939_
                                                               _hd1190711934_))
                                                          (if (gx#stx-pair?
                                                               _tl1190811936_)
                                                              (let ((_e1190911941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1190811936_)))
                        (let ((_hd1191011944_ (##car _e1190911941_))
                              (_tl1191111946_ (##cdr _e1190911941_)))
                          (let ((_body11949_ _hd1191011944_))
                            (if (gx#stx-null? _tl1191111946_)
                                (if '#t
                                    (_generate111892_
                                     _hd11929_
                                     _fender11939_
                                     _body11949_)
                                    (_E1190211917_))
                                (_E1190211917_)))))
                      (_E1190211917_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1190211917_)))))
                                          (_E1190211917_)))))
                               (let ((_E1189411975_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1189311913_)
                                            (let ((_e1189611955_
                                                   (gx#syntax-e
                                                    _e1189311913_)))
                                              (let ((_hd1189711958_
                                                     (##car _e1189611955_))
                                                    (_tl1189811960_
                                                     (##cdr _e1189611955_)))
                                                (let ((_hd11963_
                                                       _hd1189711958_))
                                                  (if (gx#stx-pair?
                                                       _tl1189811960_)
                                                      (let ((_e1189911965_
                                                             (gx#syntax-e
                                                              _tl1189811960_)))
                                                        (let ((_hd1190011968_
                                                               (##car _e1189911965_))
                                                              (_tl1190111970_
                                                               (##cdr _e1189911965_)))
                                                          (let ((_body11973_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1190011968_))
                    (if (gx#stx-null? _tl1190111970_)
                        (if '#t
                            (_generate111892_ _hd11963_ '#t _body11973_)
                            (_E1189511951_))
                        (_E1189511951_)))))
              (_E1189511951_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1189511951_)))))
                                 (let () (_E1189411975_))))))))))
                (let ((_generate-bindings11479_
                       (lambda (_target12064_
                                _ids12065_
                                _clauses12066_
                                _clause-ids12067_
                                _E12068_)
                         (let ((_generate112070_
                                (lambda (_clause12169_
                                         _clause-id12170_
                                         _E12171_)
                                  (cons (cons _clause-id12170_ '())
                                        (cons (gx#core-list
                                               'lambda%
                                               (cons _target12064_ '())
                                               (_generate-clause11481_
                                                _target12064_
                                                _ids12065_
                                                _clause12169_
                                                _E12171_))
                                              '())))))
                           ((letrec ((_lp12072_
                                      (lambda (_rest12074_
                                               _rest-ids12075_
                                               _bindings12076_)
                                        (let ((_rest1207712085_ _rest12074_))
                                          (let ((_E1208012089_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _rest1207712085_))))
                                            (let ((_else1207912093_
                                                   (lambda ()
                                                     _bindings12076_)))
                                              (let ((_K1208112157_
                                                     (lambda (_rest12096_
                                                              _clause12097_)
                                                       (let ((_rest-ids1209812105_
                                                              _rest-ids12075_))
                                                         (let ((_E1210012109_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (error '"No clause matching" _rest-ids1209812105_))))
                   (let ((_K1210112145_
                          (lambda (_rest-ids12112_ _clause-id12113_)
                            (let ((_rest-ids1211412122_ _rest-ids12112_))
                              (let ((_E1211712126_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _rest-ids1211412122_))))
                                (let ((_else1211612130_
                                       (lambda ()
                                         (cons (_generate112070_
                                                _clause12097_
                                                _clause-id12113_
                                                _E12068_)
                                               _bindings12076_))))
                                  (let ((_K1211812135_
                                         (lambda (_next-clause-id12133_)
                                           (_lp12072_
                                            _rest12096_
                                            _rest-ids12112_
                                            (cons (_generate112070_
                                                   _clause12097_
                                                   _clause-id12113_
                                                   _next-clause-id12133_)
                                                  _bindings12076_)))))
                                    (if (##pair? _rest-ids1211412122_)
                                        (let ((_hd1211912138_
                                               (##car _rest-ids1211412122_))
                                              (_tl1212012140_
                                               (##cdr _rest-ids1211412122_)))
                                          (let ((_next-clause-id12143_
                                                 _hd1211912138_))
                                            (_K1211812135_
                                             _next-clause-id12143_)))
                                        (_else1211612130_)))))))))
                     (if (##pair? _rest-ids1209812105_)
                         (let ((_hd1210212148_ (##car _rest-ids1209812105_))
                               (_tl1210312150_ (##cdr _rest-ids1209812105_)))
                           (let ((_clause-id12153_ _hd1210212148_))
                             (let ((_rest-ids12155_ _tl1210312150_))
                               (_K1210112145_
                                _rest-ids12155_
                                _clause-id12153_))))
                         (_E1210012109_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (##pair? _rest1207712085_)
                                                    (let ((_hd1208212160_
                                                           (##car _rest1207712085_))
                                                          (_tl1208312162_
                                                           (##cdr _rest1207712085_)))
                                                      (let ((_clause12165_
                                                             _hd1208212160_))
                                                        (let ((_rest12167_
                                                               _tl1208312162_))
                                                          (_K1208112157_
                                                           _rest12167_
                                                           _clause12165_))))
                                                    (_else1207912093_)))))))))
                              _lp12072_)
                            _clauses12066_
                            _clause-ids12067_
                            '())))))
                  (let ((_e1148411497_ _stx11474_))
                    (let ((_E1148611501_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e1148411497_))))
                      (let ((_E1148511548_
                             (lambda ()
                               (if (gx#stx-pair? _e1148411497_)
                                   (let ((_e1148711505_
                                          (gx#syntax-e _e1148411497_)))
                                     (let ((_hd1148811508_
                                            (##car _e1148711505_))
                                           (_tl1148911510_
                                            (##cdr _e1148711505_)))
                                       (if (gx#stx-pair? _tl1148911510_)
                                           (let ((_e1149011513_
                                                  (gx#syntax-e
                                                   _tl1148911510_)))
                                             (let ((_hd1149111516_
                                                    (##car _e1149011513_))
                                                   (_tl1149211518_
                                                    (##cdr _e1149011513_)))
                                               (let ((_expr11521_
                                                      _hd1149111516_))
                                                 (if (gx#stx-pair?
                                                      _tl1149211518_)
                                                     (let ((_e1149311523_
                                                            (gx#syntax-e
                                                             _tl1149211518_)))
                                                       (let ((_hd1149411526_
                                                              (##car _e1149311523_))
                                                             (_tl1149511528_
                                                              (##cdr _e1149311523_)))
                                                         (let ((_ids11531_
                                                                _hd1149411526_))
                                                           (let ((_clauses11533_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1149511528_))
                     (if '#t
                         (if (not (gx#identifier-list? _ids11531_))
                             (gx#raise-syntax-error
                              '#f
                              '"Bad template identifier list"
                              _stx11474_
                              _ids11531_)
                             (if (not (gx#stx-list? _clauses11533_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _stx11474_)
                                 (let ((_ids11535_
                                        (gx#syntax->list _ids11531_)))
                                   (let ((_clauses11537_
                                          (gx#syntax->list _clauses11533_)))
                                     (let ((_clause-ids11539_
                                            (gx#gentemps _clauses11537_)))
                                       (let ((_E11541_ (gx#genident__0)))
                                         (let ((_target11543_
                                                (gx#genident__0)))
                                           (let ((_first11545_
                                                  (if (null? _clauses11537_)
                                                      _E11541_
                                                      (car _clause-ids11539_))))
                                             (let ()
                                               (gx#stx-wrap-source
                                                (gx#core-list
                                                 'let-values
                                                 (cons (cons (cons _E11541_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _target11543_ '())
                            (gx#core-list
                             'raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _target11543_))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_generate-body11480_
                                                  (_generate-bindings11479_
                                                   _target11543_
                                                   _ids11535_
                                                   _clauses11537_
                                                   _clause-ids11539_
                                                   _E11541_)
                                                  (cons _first11545_
                                                        (cons _expr11521_
                                                              '()))))
                                                (gx#stx-source
                                                 _stx11474_)))))))))))
                         (_E1148611501_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1148611501_)))))
                                           (_E1148611501_))))
                                   (_E1148611501_)))))
                        (let () (_E1148511548_))))))))))))
    (begin
      (define gx#macro-expand-syntax-case__0
        (lambda (_stx12176_)
          (let ((_identifier=?12178_ 'free-identifier=?))
            (let ((_unwrap-e12180_ 'syntax-e))
              (let ((_wrap-e12182_ 'quote-syntax))
                (gx#macro-expand-syntax-case__opt-lambda11472
                 _stx12176_
                 _identifier=?12178_
                 _unwrap-e12180_
                 _wrap-e12182_))))))
      (define gx#macro-expand-syntax-case__1
        (lambda (_stx12184_ _identifier=?12185_)
          (let ((_unwrap-e12187_ 'syntax-e))
            (let ((_wrap-e12189_ 'quote-syntax))
              (gx#macro-expand-syntax-case__opt-lambda11472
               _stx12184_
               _identifier=?12185_
               _unwrap-e12187_
               _wrap-e12189_)))))
      (define gx#macro-expand-syntax-case__2
        (lambda (_stx12191_ _identifier=?12192_ _unwrap-e12193_)
          (let ((_wrap-e12195_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda11472
             _stx12191_
             _identifier=?12192_
             _unwrap-e12193_
             _wrap-e12195_))))
      (define gx#macro-expand-syntax-case
        (lambda _g12623_
          (let ((_g12622_ (length _g12623_)))
            (cond ((fx= _g12622_ 1)
                   (apply (lambda (_stx12176_)
                            (gx#macro-expand-syntax-case__0 _stx12176_))
                          _g12623_))
                  ((fx= _g12622_ 2)
                   (apply (lambda (_stx12184_ _identifier=?12185_)
                            (gx#macro-expand-syntax-case__1
                             _stx12184_
                             _identifier=?12185_))
                          _g12623_))
                  ((fx= _g12622_ 3)
                   (apply (lambda (_stx12191_
                                   _identifier=?12192_
                                   _unwrap-e12193_)
                            (gx#macro-expand-syntax-case__2
                             _stx12191_
                             _identifier=?12192_
                             _unwrap-e12193_))
                          _g12623_))
                  ((fx= _g12622_ 4)
                   (apply (lambda (_stx12197_
                                   _identifier=?12198_
                                   _unwrap-e12199_
                                   _wrap-e12200_)
                            (gx#macro-expand-syntax-case__opt-lambda11472
                             _stx12197_
                             _identifier=?12198_
                             _unwrap-e12199_
                             _wrap-e12200_))
                          _g12623_))
                  (else (error "No clause matching arguments" _g12623_))))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx11471_)
      (if (gx#identifier? _stx11471_)
          (##structure-instance-of?
           (gx#syntax-local-e__opt-lambda2671 _stx11471_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd11429_ . _rest11430_)
      (let ((_len11432_ (length _hd11429_)))
        ((letrec ((_lp11434_
                   (lambda (_rest11436_)
                     (let ((_rest1143711445_ _rest11436_))
                       (let ((_E1144011449_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1143711445_))))
                         (let ((_else1143911453_ (lambda () (void))))
                           (let ((_K1144111459_
                                  (lambda (_rest11456_ _hd11457_)
                                    (if (fx= _len11432_ (length _hd11457_))
                                        (_lp11434_ _rest11456_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Splice length mismatch"
                                         _hd11457_)))))
                             (if (##pair? _rest1143711445_)
                                 (let ((_hd1144211462_
                                        (##car _rest1143711445_))
                                       (_tl1144311464_
                                        (##cdr _rest1143711445_)))
                                   (let ((_hd11467_ _hd1144211462_))
                                     (let ((_rest11469_ _tl1144311464_))
                                       (_K1144111459_ _rest11469_ _hd11467_))))
                                 (_else1143911453_)))))))))
           _lp11434_)
         _rest11430_))))
  (define gx#syntax-split-splice
    (lambda (_stx11387_ _n11388_)
      ((letrec ((_lp11390_
                 (lambda (_rest11392_ _r11393_)
                   (if (gx#stx-pair? _rest11392_)
                       (let ((_g1139411401_ (gx#syntax-e _rest11392_)))
                         (let ((_E1139611405_
                                (lambda ()
                                  (error '"No clause matching"
                                         _g1139411401_))))
                           (let ((_K1139711411_
                                  (lambda (_rest11408_ _hd11409_)
                                    (_lp11390_
                                     _rest11408_
                                     (cons _hd11409_ _r11393_)))))
                             (if (##pair? _g1139411401_)
                                 (let ((_hd1139811414_ (##car _g1139411401_))
                                       (_tl1139911416_ (##cdr _g1139411401_)))
                                   (let ((_hd11419_ _hd1139811414_))
                                     (let ((_rest11421_ _tl1139911416_))
                                       (_K1139711411_ _rest11421_ _hd11419_))))
                                 (_E1139611405_)))))
                       ((letrec ((_lp11423_
                                  (lambda (_n11425_ _l11426_ _r11427_)
                                    (if (null? _l11426_)
                                        (values _l11426_ _r11427_)
                                        (if (fxpositive? _n11425_)
                                            (_lp11423_
                                             (fx1- _n11425_)
                                             (cdr _l11426_)
                                             (cons (car _l11426_) _r11427_))
                                            (values (reverse _l11426_)
                                                    _r11427_))))))
                          _lp11423_)
                        _n11388_
                        _r11393_
                        _rest11392_)))))
         _lp11390_)
       _stx11387_
       '()))))
