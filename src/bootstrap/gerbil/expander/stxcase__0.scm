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
    (lambda _$args17711_
      (apply make-struct-instance gx#syntax-pattern::t _$args17711_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self17708_ _stx17709_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx17709_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx17190_)
      (letrec ((_generate17192_
                (lambda (_e17419_)
                  (letrec ((_BUG17421_
                            (lambda (_q17583_)
                              (error '"BUG: syntax; generate"
                                     _stx17190_
                                     _e17419_
                                     _q17583_)))
                           (_local-pattern-e17422_
                            (lambda (_pat17581_)
                              (gx#syntax-local-rewrap
                               (##structure-ref
                                _pat17581_
                                '2
                                gx#syntax-pattern::t
                                '#f))))
                           (_getvar17423_
                            (lambda (_q17578_ _vars17579_)
                              (assgetq _q17578_ _vars17579_ _BUG17421_)))
                           (_getarg17424_
                            (lambda (_arg17544_ _vars17545_)
                              (let* ((_arg1754617553_ _arg17544_)
                                     (_E1754817557_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _arg1754617553_)))
                                     (_K1754917566_
                                      (lambda (_e17560_ _tag17561_)
                                        (let ((_$e17563_ _tag17561_))
                                          (if (eq? _$e17563_ 'ref)
                                              (_getvar17423_
                                               _e17560_
                                               _vars17545_)
                                              (if (eq? _$e17563_ 'pattern)
                                                  (_local-pattern-e17422_
                                                   _e17560_)
                                                  (_BUG17421_ _arg17544_)))))))
                                (if (##pair? _arg1754617553_)
                                    (let ((_hd1755017569_
                                           (##car _arg1754617553_))
                                          (_tl1755117571_
                                           (##cdr _arg1754617553_)))
                                      (let* ((_tag17574_ _hd1755017569_)
                                             (_e17576_ _tl1755117571_))
                                        (_K1754917566_ _e17576_ _tag17574_)))
                                    (_E1754817557_))))))
                    (let _recur17426_ ((_e17428_ _e17419_) (_vars17429_ '()))
                      (let* ((_e1743017437_ _e17428_)
                             (_E1743217441_
                              (lambda ()
                                (error '"No clause matching" _e1743017437_)))
                             (_K1743317532_
                              (lambda (_body17444_ _tag17445_)
                                (let ((_$e17447_ _tag17445_))
                                  (if (eq? _$e17447_ 'datum)
                                      (gx#core-list 'quote _body17444_)
                                      (if (eq? _$e17447_ 'term)
                                          (let ((_id17450_
                                                 (gx#syntax-local-unwrap
                                                  _body17444_)))
                                            (if (##structure-direct-instance-of?
                                                 _id17450_
                                                 'gx#identifier-wrap::t)
                                                (let ((_marks17452_
                                                       (##direct-structure-ref
                                                        _id17450_
                                                        '3
                                                        gx#identifier-wrap::t
                                                        '#f)))
                                                  (if (null? _marks17452_)
                                                      (gx#core-list
                                                       'datum->syntax
                                                       '#f
                                                       (gx#core-list
                                                        'quote
                                                        _body17444_))
                                                      (gx#core-list
                                                       'datum->syntax
                                                       (gx#core-list
                                                        'quote-syntax
                                                        _body17444_)
                                                       (gx#core-list
                                                        'quote
                                                        _body17444_)
                                                       '#f
                                                       '#f)))
                                                (if (##structure-direct-instance-of?
                                                     _id17450_
                                                     'gx#syntax-quote::t)
                                                    (gx#core-list
                                                     'quote-syntax
                                                     _body17444_)
                                                    (_BUG17421_ _e17428_))))
                                          (if (eq? _$e17447_ 'pattern)
                                              (_local-pattern-e17422_
                                               _body17444_)
                                              (if (eq? _$e17447_ 'ref)
                                                  (_getvar17423_
                                                   _body17444_
                                                   _vars17429_)
                                                  (if (eq? _$e17447_ 'cons)
                                                      (gx#core-list
                                                       'cons
                                                       (_recur17426_
                                                        (car _body17444_)
                                                        _vars17429_)
                                                       (_recur17426_
                                                        (cdr _body17444_)
                                                        _vars17429_))
                                                      (if (eq? _$e17447_
                                                               'vector)
                                                          (gx#core-list
                                                           'list->vector
                                                           (_recur17426_
                                                            _body17444_
                                                            _vars17429_))
                                                          (if (eq? _$e17447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'box)
                      (gx#core-list
                       'box
                       (_recur17426_ _body17444_ _vars17429_))
                      (if (eq? _$e17447_ 'splice)
                          (let* ((_body1745317464_ _body17444_)
                                 (_E1745517468_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _body1745317464_)))
                                 (_K1745617506_
                                  (lambda (_args17471_
                                           _iv17472_
                                           _hd17473_
                                           _depth17474_)
                                    (let* ((_targets17480_
                                            (map (lambda (_g1747517477_)
                                                   (_getarg17424_
                                                    _g1747517477_
                                                    _vars17429_))
                                                 _args17471_))
                                           (_fold-in17482_
                                            (gx#gentemps _args17471_))
                                           (_fold-out17484_ (gx#genident__0))
                                           (_lambda-args17486_
                                            (foldr1 cons
                                                    (cons _fold-out17484_ '())
                                                    _fold-in17482_))
                                           (_lambda-body17503_
                                            (if (fx> _depth17474_ '1)
                                                (let ((_r-args17494_
                                                       (map (lambda (_arg17488_)
                                                              (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cdr _arg17488_)))
                    _args17471_))
              (_r-vars17495_
               (foldr (lambda (_arg17490_ _var17491_ _r17492_)
                        (cons (cons (cdr _arg17490_) _var17491_) _r17492_))
                      _vars17429_
                      _args17471_
                      _fold-in17482_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur17426_
                                                   (cons* 'splice
                                                          (fx- _depth17474_ '1)
                                                          _hd17473_
                                                          (cons 'var
                                                                _fold-out17484_)
                                                          _r-args17494_)
                                                   _r-vars17495_))
                                                (let ((_hd-vars17501_
                                                       (foldr (lambda (_arg17497_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _var17498_
                               _r17499_)
                        (cons (cons (cdr _arg17497_) _var17498_) _r17499_))
                      _vars17429_
                      _args17471_
                      _fold-in17482_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#core-list
                                                   'cons
                                                   (_recur17426_
                                                    _hd17473_
                                                    _hd-vars17501_)
                                                   _fold-out17484_)))))
                                      (gx#core-list
                                       'begin
                                       (if (fx> (length _targets17480_) '1)
                                           (gx#core-cons*
                                            'syntax-check-splice-targets
                                            _targets17480_)
                                           '#!void)
                                       (gx#core-cons*
                                        'foldr
                                        (gx#core-list
                                         'lambda%
                                         _lambda-args17486_
                                         _lambda-body17503_)
                                        (_recur17426_ _iv17472_ _vars17429_)
                                        _targets17480_))))))
                            (if (##pair? _body1745317464_)
                                (let ((_hd1745717509_ (##car _body1745317464_))
                                      (_tl1745817511_
                                       (##cdr _body1745317464_)))
                                  (let ((_depth17514_ _hd1745717509_))
                                    (if (##pair? _tl1745817511_)
                                        (let ((_hd1745917516_
                                               (##car _tl1745817511_))
                                              (_tl1746017518_
                                               (##cdr _tl1745817511_)))
                                          (let ((_hd17521_ _hd1745917516_))
                                            (if (##pair? _tl1746017518_)
                                                (let ((_hd1746117523_
                                                       (##car _tl1746017518_))
                                                      (_tl1746217525_
                                                       (##cdr _tl1746017518_)))
                                                  (let* ((_iv17528_
                                                          _hd1746117523_)
                                                         (_args17530_
                                                          _tl1746217525_))
                                                    (_K1745617506_
                                                     _args17530_
                                                     _iv17528_
                                                     _hd17521_
                                                     _depth17514_)))
                                                (_E1745517468_))))
                                        (_E1745517468_))))
                                (_E1745517468_)))
                          (if (eq? _$e17447_ 'var)
                              _body17444_
                              (_BUG17421_ _e17428_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (if (##pair? _e1743017437_)
                            (let ((_hd1743417535_ (##car _e1743017437_))
                                  (_tl1743517537_ (##cdr _e1743017437_)))
                              (let* ((_tag17540_ _hd1743417535_)
                                     (_body17542_ _tl1743517537_))
                                (_K1743317532_ _body17542_ _tag17540_)))
                            (_E1743217441_)))))))
               (_parse17193_
                (lambda (_e17234_)
                  (letrec ((_make-cons17236_
                            (lambda (_hd17411_ _tl17412_)
                              (let ((_g17713_ _hd17411_) (_g17715_ _tl17412_))
                                (begin
                                  (let ((_g17714_ (values-count _g17713_)))
                                    (if (not (fx= _g17714_ 2))
                                        (error "Context expects 2 values"
                                               _g17714_)))
                                  (let ((_g17716_ (values-count _g17715_)))
                                    (if (not (fx= _g17716_ 2))
                                        (error "Context expects 2 values"
                                               _g17716_)))
                                  (let ((_hd-e17414_ (values-ref _g17713_ 0))
                                        (_hd-vars17415_
                                         (values-ref _g17713_ 1)))
                                    (let ((_tl-e17416_ (values-ref _g17715_ 0))
                                          (_tl-vars17417_
                                           (values-ref _g17715_ 1)))
                                      (values (cons* 'cons
                                                     _hd-e17414_
                                                     _tl-e17416_)
                                              (append _hd-vars17415_
                                                      _tl-vars17417_))))))))
                           (_make-splice17237_
                            (lambda (_where17350_
                                     _depth17351_
                                     _hd17352_
                                     _tl17353_)
                              (let ((_g17717_ _hd17352_) (_g17719_ _tl17353_))
                                (begin
                                  (let ((_g17718_ (values-count _g17717_)))
                                    (if (not (fx= _g17718_ 2))
                                        (error "Context expects 2 values"
                                               _g17718_)))
                                  (let ((_g17720_ (values-count _g17719_)))
                                    (if (not (fx= _g17720_ 2))
                                        (error "Context expects 2 values"
                                               _g17720_)))
                                  (let ((_hd-e17355_ (values-ref _g17717_ 0))
                                        (_hd-vars17356_
                                         (values-ref _g17717_ 1)))
                                    (let ((_tl-e17357_ (values-ref _g17719_ 0))
                                          (_tl-vars17358_
                                           (values-ref _g17719_ 1)))
                                      (let _lp17360_ ((_rest17362_
                                                       _hd-vars17356_)
                                                      (_targets17363_ '())
                                                      (_vars17364_
                                                       _tl-vars17358_))
                                        (let* ((_rest1736517375_ _rest17362_)
                                               (_E1736817379_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _rest1736517375_)))
                                               (_else1736717383_
                                                (lambda ()
                                                  (if (null? _targets17363_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Misplaced ellipsis"
                                                       _stx17190_
                                                       _where17350_)
                                                      (values (cons* 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _depth17351_
                             _hd-e17355_
                             _tl-e17357_
                             _targets17363_)
                      _vars17364_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_K1736917392_
                                                (lambda (_rest17386_
                                                         _hd-pat17387_
                                                         _hd-depth*17388_)
                                                  (let ((_hd-depth17390_
                                                         (fx- _hd-depth*17388_
                                                              _depth17351_)))
                                                    (if (fxpositive?
                                                         _hd-depth17390_)
                                                        (_lp17360_
                                                         _rest17386_
                                                         (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd-pat17387_)
                       _targets17363_)
                 (cons (cons _hd-depth17390_ _hd-pat17387_) _vars17364_))
                (if (fxzero? _hd-depth17390_)
                    (_lp17360_
                     _rest17386_
                     (cons (cons 'pattern _hd-pat17387_) _targets17363_)
                     _vars17364_)
                    (gx#raise-syntax-error
                     '#f
                     '"Too many ellipses"
                     _stx17190_
                     _where17350_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1736517375_)
                                              (let ((_hd1737017395_
                                                     (##car _rest1736517375_))
                                                    (_tl1737117397_
                                                     (##cdr _rest1736517375_)))
                                                (if (##pair? _hd1737017395_)
                                                    (let ((_hd1737217400_
                                                           (##car _hd1737017395_))
                                                          (_tl1737317402_
                                                           (##cdr _hd1737017395_)))
                                                      (let* ((_hd-depth*17405_
                                                              _hd1737217400_)
                                                             (_hd-pat17407_
                                                              _tl1737317402_)
                                                             (_rest17409_
                                                              _tl1737117397_))
                                                        (_K1736917392_
                                                         _rest17409_
                                                         _hd-pat17407_
                                                         _hd-depth*17405_)))
                                                    (_else1736717383_)))
                                              (_else1736717383_))))))))))
                           (_recur17238_
                            (lambda (_e17243_ _is-e?17244_)
                              (if (_is-e?17244_ _e17243_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Mislpaced ellipsis"
                                   _stx17190_)
                                  (if (gx#syntax-local-pattern? _e17243_)
                                      (let* ((_pat17246_
                                              (gx#syntax-local-e__0 _e17243_))
                                             (_depth17248_
                                              (##structure-ref
                                               _pat17246_
                                               '3
                                               gx#syntax-pattern::t
                                               '#f)))
                                        (if (fxpositive? _depth17248_)
                                            (values (cons 'ref _pat17246_)
                                                    (cons (cons _depth17248_
                                                                _pat17246_)
                                                          '()))
                                            (values (cons 'pattern _pat17246_)
                                                    '())))
                                      (if (gx#identifier? _e17243_)
                                          (values (cons 'term _e17243_) '())
                                          (if (gx#stx-pair? _e17243_)
                                              (let* ((_e1725017257_ _e17243_)
                                                     (_E1725217261_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _e1725017257_)))
                                                     (_E1725117340_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e1725017257_)
                                                            (let ((_e1725317265_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e1725017257_)))
                      (let ((_hd1725417268_ (##car _e1725317265_))
                            (_tl1725517270_ (##cdr _e1725317265_)))
                        (let* ((_hd17273_ _hd1725417268_)
                               (_rest17275_ _tl1725517270_))
                          (if '#t
                              (if (_is-e?17244_ _hd17273_)
                                  (let* ((_e1727617283_ _rest17275_)
                                         (_E1727817287_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _stx17190_
                                             _e17243_)))
                                         (_E1727717301_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1727617283_)
                                                (let ((_e1727917291_
                                                       (gx#syntax-e
                                                        _e1727617283_)))
                                                  (let ((_hd1728017294_
                                                         (##car _e1727917291_))
                                                        (_tl1728117296_
                                                         (##cdr _e1727917291_)))
                                                    (let ((_rest17299_
                                                           _hd1728017294_))
                                                      (if (gx#stx-null?
                                                           _tl1728117296_)
                                                          (if '#t
                                                              (_recur17238_
                                                               _rest17299_
                                                               false)
                                                              (_E1727817287_))
                                                          (_E1727817287_)))))
                                                (_E1727817287_)))))
                                    (_E1727717301_))
                                  (let _lp17305_ ((_rest17307_ _rest17275_)
                                                  (_depth17308_ '0))
                                    (let* ((_e1730917316_ _rest17307_)
                                           (_E1731117320_
                                            (lambda ()
                                              (if (fxpositive? _depth17308_)
                                                  (_make-splice17237_
                                                   _e17243_
                                                   _depth17308_
                                                   (_recur17238_
                                                    _hd17273_
                                                    _is-e?17244_)
                                                   (_recur17238_
                                                    _rest17307_
                                                    _is-e?17244_))
                                                  (_make-cons17236_
                                                   (_recur17238_
                                                    _hd17273_
                                                    _is-e?17244_)
                                                   (_recur17238_
                                                    _rest17307_
                                                    _is-e?17244_)))))
                                           (_E1731017336_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1730917316_)
                                                  (let ((_e1731217324_
                                                         (gx#syntax-e
                                                          _e1730917316_)))
                                                    (let ((_hd1731317327_
                                                           (##car _e1731217324_))
                                                          (_tl1731417329_
                                                           (##cdr _e1731217324_)))
                                                      (let* ((_rest-hd17332_
                                                              _hd1731317327_)
                                                             (_rest-tl17334_
                                                              _tl1731417329_))
                                                        (if '#t
                                                            (if (_is-e?17244_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rest-hd17332_)
                        (_lp17305_ _rest-tl17334_ (fx+ _depth17308_ '1))
                        (if (fxpositive? _depth17308_)
                            (_make-splice17237_
                             _e17243_
                             _depth17308_
                             (_recur17238_ _hd17273_ _is-e?17244_)
                             (_recur17238_ _rest17307_ _is-e?17244_))
                            (_make-cons17236_
                             (_recur17238_ _hd17273_ _is-e?17244_)
                             (_recur17238_ _rest17307_ _is-e?17244_))))
                    (_E1731117320_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1731117320_)))))
                                      (_E1731017336_))))
                              (_E1725217261_)))))
                    (_E1725217261_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1725117340_))
                                              (if (gx#stx-vector? _e17243_)
                                                  (let ((_g17721_
                                                         (_recur17238_
                                                          (vector->list
                                                           (gx#stx-unwrap__0
                                                            _e17243_))
                                                          _is-e?17244_)))
                                                    (begin
                                                      (let ((_g17722_
                                                             (values-count
                                                              _g17721_)))
                                                        (if (not (fx= _g17722_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g17722_)))
              (let ((_e17344_ (values-ref _g17721_ 0))
                    (_vars17345_ (values-ref _g17721_ 1)))
                (values (cons 'vector _e17344_) _vars17345_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e17243_)
                                                      (let ((_g17723_
                                                             (_recur17238_
                                                              (unbox (gx#stx-unwrap__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e17243_))
                      _is-e?17244_)))
                (begin
                  (let ((_g17724_ (values-count _g17723_)))
                    (if (not (fx= _g17724_ 2))
                        (error "Context expects 2 values" _g17724_)))
                  (let ((_e17347_ (values-ref _g17723_ 0))
                        (_vars17348_ (values-ref _g17723_ 1)))
                    (values (cons 'box _e17347_) _vars17348_))))
              (values (cons 'datum _e17243_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    (let ((_g17725_ (_recur17238_ _e17234_ gx#ellipsis?)))
                      (begin
                        (let ((_g17726_ (values-count _g17725_)))
                          (if (not (fx= _g17726_ 2))
                              (error "Context expects 2 values" _g17726_)))
                        (let ((_tree17240_ (values-ref _g17725_ 0))
                              (_vars17241_ (values-ref _g17725_ 1)))
                          (if (null? _vars17241_)
                              _tree17240_
                              (gx#raise-syntax-error
                               '#f
                               '"Missing ellipsis"
                               _stx17190_
                               _vars17241_)))))))))
        (let* ((_e1719417204_ _stx17190_)
               (_E1719617208_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _stx17190_)))
               (_E1719517230_
                (lambda ()
                  (if (gx#stx-pair? _e1719417204_)
                      (let ((_e1719717212_ (gx#syntax-e _e1719417204_)))
                        (let ((_hd1719817215_ (##car _e1719717212_))
                              (_tl1719917217_ (##cdr _e1719717212_)))
                          (if (gx#stx-pair? _tl1719917217_)
                              (let ((_e1720017220_
                                     (gx#syntax-e _tl1719917217_)))
                                (let ((_hd1720117223_ (##car _e1720017220_))
                                      (_tl1720217225_ (##cdr _e1720017220_)))
                                  (let ((_form17228_ _hd1720117223_))
                                    (if (gx#stx-null? _tl1720217225_)
                                        (if '#t
                                            (gx#stx-wrap-source
                                             (_generate17192_
                                              (_parse17193_ _form17228_))
                                             (gx#stx-source _stx17190_))
                                            (_E1719617208_))
                                        (_E1719617208_)))))
                              (_E1719617208_))))
                      (_E1719617208_)))))
          (_E1719517230_)))))
  (begin
    (define gx#macro-expand-syntax-case__opt-lambda16460
      (lambda (_stx16462_ _identifier=?16463_ _unwrap-e16464_ _wrap-e16465_)
        (letrec ((_generate-bindings16467_
                  (lambda (_target17052_
                           _ids17053_
                           _clauses17054_
                           _clause-ids17055_
                           _E17056_)
                    (letrec ((_generate117058_
                              (lambda (_clause17157_ _clause-id17158_ _E17159_)
                                (cons (cons _clause-id17158_ '())
                                      (cons (gx#core-list
                                             'lambda%
                                             (cons _target17052_ '())
                                             (_generate-clause16469_
                                              _target17052_
                                              _ids17053_
                                              _clause17157_
                                              _E17159_))
                                            '())))))
                      (let _lp17060_ ((_rest17062_ _clauses17054_)
                                      (_rest-ids17063_ _clause-ids17055_)
                                      (_bindings17064_ '()))
                        (let* ((_rest1706517073_ _rest17062_)
                               (_E1706817077_
                                (lambda ()
                                  (error '"No clause matching"
                                         _rest1706517073_)))
                               (_else1706717081_ (lambda () _bindings17064_))
                               (_K1706917145_
                                (lambda (_rest17084_ _clause17085_)
                                  (let* ((_rest-ids1708617093_ _rest-ids17063_)
                                         (_E1708817097_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids1708617093_)))
                                         (_K1708917133_
                                          (lambda (_rest-ids17100_
                                                   _clause-id17101_)
                                            (let* ((_rest-ids1710217110_
                                                    _rest-ids17100_)
                                                   (_E1710517114_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _rest-ids1710217110_)))
                                                   (_else1710417118_
                                                    (lambda ()
                                                      (cons (_generate117058_
                                                             _clause17085_
                                                             _clause-id17101_
                                                             _E17056_)
                                                            _bindings17064_)))
                                                   (_K1710617123_
                                                    (lambda (_next-clause-id17121_)
                                                      (_lp17060_
                                                       _rest17084_
                                                       _rest-ids17100_
                                                       (cons (_generate117058_
                                                              _clause17085_
                                                              _clause-id17101_
                                                              _next-clause-id17121_)
                                                             _bindings17064_)))))
                                              (if (##pair? _rest-ids1710217110_)
                                                  (let ((_hd1710717126_
                                                         (##car _rest-ids1710217110_))
                                                        (_tl1710817128_
                                                         (##cdr _rest-ids1710217110_)))
                                                    (let ((_next-clause-id17131_
                                                           _hd1710717126_))
                                                      (_K1710617123_
                                                       _next-clause-id17131_)))
                                                  (_else1710417118_))))))
                                    (if (##pair? _rest-ids1708617093_)
                                        (let ((_hd1709017136_
                                               (##car _rest-ids1708617093_))
                                              (_tl1709117138_
                                               (##cdr _rest-ids1708617093_)))
                                          (let* ((_clause-id17141_
                                                  _hd1709017136_)
                                                 (_rest-ids17143_
                                                  _tl1709117138_))
                                            (_K1708917133_
                                             _rest-ids17143_
                                             _clause-id17141_)))
                                        (_E1708817097_))))))
                          (if (##pair? _rest1706517073_)
                              (let ((_hd1707017148_ (##car _rest1706517073_))
                                    (_tl1707117150_ (##cdr _rest1706517073_)))
                                (let* ((_clause17153_ _hd1707017148_)
                                       (_rest17155_ _tl1707117150_))
                                  (_K1706917145_ _rest17155_ _clause17153_)))
                              (_else1706717081_)))))))
                 (_generate-body16468_
                  (lambda (_bindings17012_ _body17013_)
                    (let _recur17015_ ((_rest17017_ _bindings17012_))
                      (let* ((_rest1701817026_ _rest17017_)
                             (_E1702117030_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1701817026_)))
                             (_else1702017034_ (lambda () _body17013_))
                             (_K1702217040_
                              (lambda (_rest17037_ _hd17038_)
                                (gx#core-list
                                 'let-values
                                 (cons _hd17038_ '())
                                 (_recur17015_ _rest17037_)))))
                        (if (##pair? _rest1701817026_)
                            (let ((_hd1702317043_ (##car _rest1701817026_))
                                  (_tl1702417045_ (##cdr _rest1701817026_)))
                              (let* ((_hd17048_ _hd1702317043_)
                                     (_rest17050_ _tl1702417045_))
                                (_K1702217040_ _rest17050_ _hd17048_)))
                            (_else1702017034_))))))
                 (_generate-clause16469_
                  (lambda (_target16875_ _ids16876_ _clause16877_ _E16878_)
                    (letrec ((_generate116880_
                              (lambda (_hd16967_ _fender16968_ _body16969_)
                                (let ((_g17727_
                                       (_parse-clause16471_
                                        _hd16967_
                                        _ids16876_)))
                                  (begin
                                    (let ((_g17728_ (values-count _g17727_)))
                                      (if (not (fx= _g17728_ 2))
                                          (error "Context expects 2 values"
                                                 _g17728_)))
                                    (let ((_e16971_ (values-ref _g17727_ 0))
                                          (_mvars16972_
                                           (values-ref _g17727_ 1)))
                                      (let* ((_pvars16974_
                                              (map gx#syntax-local-rewrap
                                                   (gx#gentemps _mvars16972_)))
                                             (_E16976_
                                              (cons _E16878_
                                                    (cons _target16875_ '())))
                                             (_K17009_
                                              (gx#core-list
                                               'lambda%
                                               _pvars16974_
                                               (gx#core-list
                                                'let-syntax
                                                (map (lambda (_mvar16978_
                                                              _pvar16979_)
                                                       (let* ((_mvar1698016987_
                                                               _mvar16978_)
                                                              (_E1698216991_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (error '"No clause matching" _mvar1698016987_)))
                      (_K1698316997_
                       (lambda (_depth16994_ _id16995_)
                         (cons _id16995_
                               (cons (gx#core-list
                                      'make-syntax-pattern
                                      (gx#core-list 'quote _id16995_)
                                      (gx#core-list 'quote _pvar16979_)
                                      _depth16994_)
                                     '())))))
                 (if (##pair? _mvar1698016987_)
                     (let ((_hd1698417000_ (##car _mvar1698016987_))
                           (_tl1698517002_ (##cdr _mvar1698016987_)))
                       (let* ((_id17005_ _hd1698417000_)
                              (_depth17007_ _tl1698517002_))
                         (_K1698316997_ _depth17007_ _id17005_)))
                     (_E1698216991_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _mvars16972_
                                                     _pvars16974_)
                                                (if (eq? _fender16968_ '#t)
                                                    _body16969_
                                                    (gx#core-list
                                                     'if
                                                     _fender16968_
                                                     _body16969_
                                                     _E16976_))))))
                                        (_generate-match16470_
                                         _hd16967_
                                         _target16875_
                                         _e16971_
                                         _mvars16972_
                                         _K17009_
                                         _E16976_))))))))
                      (let* ((_e1688116901_ _clause16877_)
                             (_E1689016905_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _e1688116901_)))
                             (_E1688316939_
                              (lambda ()
                                (if (gx#stx-pair? _e1688116901_)
                                    (let ((_e1689116909_
                                           (gx#syntax-e _e1688116901_)))
                                      (let ((_hd1689216912_
                                             (##car _e1689116909_))
                                            (_tl1689316914_
                                             (##cdr _e1689116909_)))
                                        (let ((_hd16917_ _hd1689216912_))
                                          (if (gx#stx-pair? _tl1689316914_)
                                              (let ((_e1689416919_
                                                     (gx#syntax-e
                                                      _tl1689316914_)))
                                                (let ((_hd1689516922_
                                                       (##car _e1689416919_))
                                                      (_tl1689616924_
                                                       (##cdr _e1689416919_)))
                                                  (let ((_fender16927_
                                                         _hd1689516922_))
                                                    (if (gx#stx-pair?
                                                         _tl1689616924_)
                                                        (let ((_e1689716929_
                                                               (gx#syntax-e
                                                                _tl1689616924_)))
                                                          (let ((_hd1689816932_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1689716929_))
                        (_tl1689916934_ (##cdr _e1689716929_)))
                    (let ((_body16937_ _hd1689816932_))
                      (if (gx#stx-null? _tl1689916934_)
                          (if '#t
                              (_generate116880_
                               _hd16917_
                               _fender16927_
                               _body16937_)
                              (_E1689016905_))
                          (_E1689016905_)))))
                (_E1689016905_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1689016905_)))))
                                    (_E1689016905_))))
                             (_E1688216963_
                              (lambda ()
                                (if (gx#stx-pair? _e1688116901_)
                                    (let ((_e1688416943_
                                           (gx#syntax-e _e1688116901_)))
                                      (let ((_hd1688516946_
                                             (##car _e1688416943_))
                                            (_tl1688616948_
                                             (##cdr _e1688416943_)))
                                        (let ((_hd16951_ _hd1688516946_))
                                          (if (gx#stx-pair? _tl1688616948_)
                                              (let ((_e1688716953_
                                                     (gx#syntax-e
                                                      _tl1688616948_)))
                                                (let ((_hd1688816956_
                                                       (##car _e1688716953_))
                                                      (_tl1688916958_
                                                       (##cdr _e1688716953_)))
                                                  (let ((_body16961_
                                                         _hd1688816956_))
                                                    (if (gx#stx-null?
                                                         _tl1688916958_)
                                                        (if '#t
                                                            (_generate116880_
                                                             _hd16951_
                                                             '#t
                                                             _body16961_)
                                                            (_E1688316939_))
                                                        (_E1688316939_)))))
                                              (_E1688316939_)))))
                                    (_E1688316939_)))))
                        (_E1688216963_)))))
                 (_generate-match16470_
                  (lambda (_where16634_
                           _target16635_
                           _hd16636_
                           _mvars16637_
                           _K16638_
                           _E16639_)
                    (letrec ((_BUG16641_
                              (lambda (_q16873_)
                                (error '"BUG: syntax-case; generate"
                                       _stx16462_
                                       _hd16636_
                                       _q16873_)))
                             (_recur16642_
                              (lambda (_e16727_
                                       _vars16728_
                                       _target16729_
                                       _E16730_
                                       _k16731_)
                                (let* ((_e1673216739_ _e16727_)
                                       (_E1673416743_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e1673216739_)))
                                       (_K1673516861_
                                        (lambda (_body16746_ _tag16747_)
                                          (let ((_$e16749_ _tag16747_))
                                            (if (eq? _$e16749_ 'any)
                                                (_k16731_ _vars16728_)
                                                (if (eq? _$e16749_ 'id)
                                                    (gx#core-list
                                                     'if
                                                     (gx#core-list
                                                      'identifier?
                                                      _target16729_)
                                                     (gx#core-list
                                                      'if
                                                      (gx#core-list
                                                       _identifier=?16463_
                                                       (gx#core-list
                                                        _wrap-e16465_
                                                        _body16746_)
                                                       _target16729_)
                                                      (_k16731_ _vars16728_)
                                                      _E16730_)
                                                     _E16730_)
                                                    (if (eq? _$e16749_ 'var)
                                                        (_k16731_
                                                         (cons (cons _body16746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _target16729_)
                       _vars16728_))
                (if (eq? _$e16749_ 'cons)
                    (let ((_$e16752_ (gx#genident__1 'e))
                          (_$hd16753_ (gx#genident__1 'hd))
                          (_$tl16754_ (gx#genident__1 'tl)))
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _target16729_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$e16752_ '())
                                    (cons (gx#core-list
                                           _unwrap-e16464_
                                           _target16729_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$hd16753_ '())
                                     (cons (gx#core-list '##car _$e16752_)
                                           '()))
                               (cons (cons (cons _$tl16754_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$e16752_)
                                                 '()))
                                     '()))
                         (let* ((_body1675516762_ _body16746_)
                                (_E1675716766_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _body1675516762_)))
                                (_K1675816774_
                                 (lambda (_tl16769_ _hd16770_)
                                   (_recur16642_
                                    _hd16770_
                                    _vars16728_
                                    _$hd16753_
                                    _E16730_
                                    (lambda (_vars16772_)
                                      (_recur16642_
                                       _tl16769_
                                       _vars16772_
                                       _$tl16754_
                                       _E16730_
                                       _k16731_))))))
                           (if (##pair? _body1675516762_)
                               (let ((_hd1675916777_ (##car _body1675516762_))
                                     (_tl1676016779_ (##cdr _body1675516762_)))
                                 (let* ((_hd16782_ _hd1675916777_)
                                        (_tl16784_ _tl1676016779_))
                                   (_K1675816774_ _tl16784_ _hd16782_)))
                               (_E1675716766_)))))
                       _E16730_))
                    (if (eq? _$e16749_ 'splice)
                        (let* ((_body1678516792_ _body16746_)
                               (_E1678716796_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body1678516792_)))
                               (_K1678816845_
                                (lambda (_tl16799_ _hd16800_)
                                  (let* ((_rlen16802_
                                          (_splice-rlen16643_ _tl16799_))
                                         (_$target16804_
                                          (gx#genident__1 'target))
                                         (_$hd16806_ (gx#genident__1 'hd))
                                         (_$tl16808_ (gx#genident__1 'tl))
                                         (_$lp16810_ (gx#genident__1 'loop))
                                         (_$lp-e16812_ (gx#genident__1 'e))
                                         (_$lp-hd16814_
                                          (gx#genident__1 'lp-hd))
                                         (_$lp-tl16816_
                                          (gx#genident__1 'lp-tl))
                                         (_svars16818_
                                          (_splice-vars16644_ _hd16800_))
                                         (_lvars16820_
                                          (gx#gentemps _svars16818_))
                                         (_tlvars16822_
                                          (gx#gentemps _svars16818_))
                                         (_linit16826_
                                          (map (lambda (_var16824_)
                                                 (gx#core-list 'quote '()))
                                               _lvars16820_)))
                                    (letrec ((_make-loop16829_
                                              (lambda (_vars16831_)
                                                (gx#core-list
                                                 'letrec-values
                                                 (cons (cons (cons _$lp16810_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _$hd16806_ _lvars16820_)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-pair? _$hd16806_)
                             (gx#core-list
                              'let-values
                              (cons (cons (cons _$lp-e16812_ '())
                                          (cons (gx#core-list
                                                 _unwrap-e16464_
                                                 _$hd16806_)
                                                '()))
                                    '())
                              (gx#core-list
                               'let-values
                               (cons (cons (cons _$lp-hd16814_ '())
                                           (cons (gx#core-list
                                                  '##car
                                                  _$lp-e16812_)
                                                 '()))
                                     (cons (cons (cons _$lp-tl16816_ '())
                                                 (cons (gx#core-list
                                                        '##cdr
                                                        _$lp-e16812_)
                                                       '()))
                                           '()))
                               (_recur16642_
                                _hd16800_
                                '()
                                _$lp-hd16814_
                                _E16730_
                                (lambda (_hdvars16833_)
                                  (cons* _$lp16810_
                                         _$lp-tl16816_
                                         (map (lambda (_svar16835_ _lvar16836_)
                                                (gx#core-list
                                                 'cons
                                                 (assgetq _svar16835_
                                                          _hdvars16833_
                                                          _BUG16641_)
                                                 _lvar16836_))
                                              _svars16818_
                                              _lvars16820_))))))
                             (gx#core-list
                              'let-values
                              (map (lambda (_lvar16838_ _tlvar16839_)
                                     (cons (cons _tlvar16839_ '())
                                           (cons (gx#core-list
                                                  'reverse
                                                  _lvar16838_)
                                                 '())))
                                   _lvars16820_
                                   _tlvars16822_)
                              (_k16731_
                               (foldl (lambda (_svar16841_
                                               _tlvar16842_
                                               _r16843_)
                                        (cons (cons _svar16841_ _tlvar16842_)
                                              _r16843_))
                                      _vars16831_
                                      _svars16818_
                                      _tlvars16822_)))))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons* _$lp16810_
                                                        _$target16804_
                                                        _linit16826_)))))
                                      (gx#core-list
                                       'if
                                       (gx#core-list
                                        'stx-pair/null?
                                        _target16729_)
                                       (gx#core-list
                                        'if
                                        (gx#core-list
                                         'fx>=
                                         (gx#core-list
                                          'stx-length
                                          _target16729_)
                                         _rlen16802_)
                                        (gx#core-list
                                         'let-values
                                         (cons (cons (cons _$target16804_
                                                           (cons _$tl16808_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (gx#core-list
                                                            'syntax-split-splice
                                                            _target16729_
                                                            _rlen16802_)
                                                           '()))
                                               '())
                                         (_recur16642_
                                          _tl16799_
                                          _vars16728_
                                          _$tl16808_
                                          _E16730_
                                          _make-loop16829_))
                                        _E16730_)
                                       _E16730_))))))
                          (if (##pair? _body1678516792_)
                              (let ((_hd1678916848_ (##car _body1678516792_))
                                    (_tl1679016850_ (##cdr _body1678516792_)))
                                (let* ((_hd16853_ _hd1678916848_)
                                       (_tl16855_ _tl1679016850_))
                                  (_K1678816845_ _tl16855_ _hd16853_)))
                              (_E1678716796_)))
                        (if (eq? _$e16749_ 'null)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-null? _target16729_)
                             (_k16731_ _vars16728_)
                             _E16730_)
                            (if (eq? _$e16749_ 'vector)
                                (let ((_$e16857_ (gx#genident__1 'e)))
                                  (gx#core-list
                                   'if
                                   (gx#core-list 'stx-vector? _target16729_)
                                   (gx#core-list
                                    'let-values
                                    (cons (cons (cons _$e16857_ '())
                                                (cons (gx#core-list
                                                       'vector->list
                                                       (gx#core-list
                                                        _unwrap-e16464_
                                                        _target16729_))
                                                      '()))
                                          '())
                                    (_recur16642_
                                     _body16746_
                                     _vars16728_
                                     _$e16857_
                                     _E16730_
                                     _k16731_))
                                   _E16730_))
                                (if (eq? _$e16749_ 'box)
                                    (let ((_$e16859_ (gx#genident__1 'e)))
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-box? _target16729_)
                                       (gx#core-list
                                        'let-values
                                        (cons (cons (cons _$e16859_ '())
                                                    (cons (gx#core-list
                                                           'unbox
                                                           (gx#core-list
                                                            _unwrap-e16464_
                                                            _target16729_))
                                                          '()))
                                              '())
                                        (_recur16642_
                                         _body16746_
                                         _vars16728_
                                         _$e16859_
                                         _E16730_
                                         _k16731_))
                                       _E16730_))
                                    (if (eq? _$e16749_ 'datum)
                                        (gx#core-list
                                         'if
                                         (gx#core-list
                                          'stx-datum?
                                          _target16729_)
                                         (gx#core-list
                                          'if
                                          (gx#core-list
                                           'equal?
                                           (gx#core-list 'stx-e _target16729_)
                                           _body16746_)
                                          (_k16731_ _vars16728_)
                                          _E16730_)
                                         _E16730_)
                                        (_BUG16641_ _e16727_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (##pair? _e1673216739_)
                                      (let ((_hd1673616864_
                                             (##car _e1673216739_))
                                            (_tl1673716866_
                                             (##cdr _e1673216739_)))
                                        (let* ((_tag16869_ _hd1673616864_)
                                               (_body16871_ _tl1673716866_))
                                          (_K1673516861_
                                           _body16871_
                                           _tag16869_)))
                                      (_E1673416743_)))))
                             (_splice-rlen16643_
                              (lambda (_e16689_)
                                (let _lp16691_ ((_e16693_ _e16689_)
                                                (_n16694_ '0))
                                  (let* ((_e1669516702_ _e16693_)
                                         (_E1669716706_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1669516702_)))
                                         (_K1669816715_
                                          (lambda (_body16709_ _tag16710_)
                                            (let ((_$e16712_ _tag16710_))
                                              (if (eq? _$e16712_ 'splice)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Ambiguous pattern"
                                                   _stx16462_
                                                   _where16634_)
                                                  (if (eq? _$e16712_ 'cons)
                                                      (_lp16691_
                                                       (cdr _body16709_)
                                                       (fx+ _n16694_ '1))
                                                      _n16694_))))))
                                    (if (##pair? _e1669516702_)
                                        (let ((_hd1669916718_
                                               (##car _e1669516702_))
                                              (_tl1670016720_
                                               (##cdr _e1669516702_)))
                                          (let* ((_tag16723_ _hd1669916718_)
                                                 (_body16725_ _tl1670016720_))
                                            (_K1669816715_
                                             _body16725_
                                             _tag16723_)))
                                        (_E1669716706_))))))
                             (_splice-vars16644_
                              (lambda (_e16651_)
                                (let _recur16653_ ((_e16655_ _e16651_)
                                                   (_vars16656_ '()))
                                  (let* ((_e1665716664_ _e16655_)
                                         (_E1665916668_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1665716664_)))
                                         (_K1666016677_
                                          (lambda (_body16671_ _tag16672_)
                                            (let ((_$e16674_ _tag16672_))
                                              (if (eq? _$e16674_ 'var)
                                                  (cons _body16671_
                                                        _vars16656_)
                                                  (if (memq _$e16674_
                                                            '(cons splice))
                                                      (_recur16653_
                                                       (cdr _body16671_)
                                                       (_recur16653_
                                                        (car _body16671_)
                                                        _vars16656_))
                                                      (if (memq _$e16674_
                                                                '(vector box))
                                                          (_recur16653_
                                                           _body16671_
                                                           _vars16656_)
                                                          _vars16656_)))))))
                                    (if (##pair? _e1665716664_)
                                        (let ((_hd1666116680_
                                               (##car _e1665716664_))
                                              (_tl1666216682_
                                               (##cdr _e1665716664_)))
                                          (let* ((_tag16685_ _hd1666116680_)
                                                 (_body16687_ _tl1666216682_))
                                            (_K1666016677_
                                             _body16687_
                                             _tag16685_)))
                                        (_E1665916668_))))))
                             (_make-body16645_
                              (lambda (_vars16647_)
                                (cons _K16638_
                                      (map (lambda (_mvar16649_)
                                             (assgetq (car _mvar16649_)
                                                      _vars16647_
                                                      _BUG16641_))
                                           _mvars16637_)))))
                      (_recur16642_
                       _hd16636_
                       '()
                       _target16635_
                       _E16639_
                       _make-body16645_))))
                 (_parse-clause16471_
                  (lambda (_hd16540_ _ids16541_)
                    (let _recur16543_ ((_e16545_ _hd16540_)
                                       (_vars16546_ '())
                                       (_depth16547_ '0))
                      (if (gx#identifier? _e16545_)
                          (if (gx#underscore? _e16545_)
                              (values '(any) _vars16546_)
                              (if (gx#ellipsis? _e16545_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Misplaced ellipsis"
                                   _stx16462_
                                   _hd16540_)
                                  (if (find (lambda (_id16549_)
                                              (gx#bound-identifier=?
                                               _e16545_
                                               _id16549_))
                                            _ids16541_)
                                      (values (cons 'id _e16545_) _vars16546_)
                                      (if (find (lambda (_var16551_)
                                                  (gx#bound-identifier=?
                                                   _e16545_
                                                   (car _var16551_)))
                                                _vars16546_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Duplicate pattern variable"
                                           _stx16462_
                                           _e16545_)
                                          (values (cons 'var _e16545_)
                                                  (cons (cons _e16545_
                                                              _depth16547_)
                                                        _vars16546_))))))
                          (if (gx#stx-pair? _e16545_)
                              (let* ((_e1655216559_ _e16545_)
                                     (_E1655416563_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _e1655216559_)))
                                     (_E1655316624_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1655216559_)
                                            (let ((_e1655516567_
                                                   (gx#syntax-e
                                                    _e1655216559_)))
                                              (let ((_hd1655616570_
                                                     (##car _e1655516567_))
                                                    (_tl1655716572_
                                                     (##cdr _e1655516567_)))
                                                (let* ((_hd16575_
                                                        _hd1655616570_)
                                                       (_rest16577_
                                                        _tl1655716572_))
                                                  (if '#t
                                                      (let* ((_make-pair16592_
                                                              (lambda (_tag16579_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd16580_
                               _tl16581_)
                        (let* ((_hd-depth16583_
                                (if (eq? _tag16579_ 'splice)
                                    (fx+ _depth16547_ '1)
                                    _depth16547_))
                               (_g17729_
                                (_recur16543_
                                 _hd16580_
                                 _vars16546_
                                 _hd-depth16583_)))
                          (begin
                            (let ((_g17730_ (values-count _g17729_)))
                              (if (not (fx= _g17730_ 2))
                                  (error "Context expects 2 values" _g17730_)))
                            (let ((_hd16585_ (values-ref _g17729_ 0))
                                  (_vars16586_ (values-ref _g17729_ 1)))
                              (let ((_g17731_
                                     (_recur16543_
                                      _tl16581_
                                      _vars16586_
                                      _depth16547_)))
                                (begin
                                  (let ((_g17732_ (values-count _g17731_)))
                                    (if (not (fx= _g17732_ 2))
                                        (error "Context expects 2 values"
                                               _g17732_)))
                                  (let ((_tl16588_ (values-ref _g17731_ 0))
                                        (_vars16589_ (values-ref _g17731_ 1)))
                                    (let ()
                                      (values (cons* _tag16579_
                                                     _hd16585_
                                                     _tl16588_)
                                              _vars16589_))))))))))
                     (_e1659316600_ _rest16577_)
                     (_E1659516604_
                      (lambda ()
                        (_make-pair16592_ 'cons _hd16575_ _rest16577_)))
                     (_E1659416620_
                      (lambda ()
                        (if (gx#stx-pair? _e1659316600_)
                            (let ((_e1659616608_ (gx#syntax-e _e1659316600_)))
                              (let ((_hd1659716611_ (##car _e1659616608_))
                                    (_tl1659816613_ (##cdr _e1659616608_)))
                                (let* ((_rest-hd16616_ _hd1659716611_)
                                       (_rest-tl16618_ _tl1659816613_))
                                  (if '#t
                                      (if (gx#ellipsis? _rest-hd16616_)
                                          (_make-pair16592_
                                           'splice
                                           _hd16575_
                                           _rest-tl16618_)
                                          (_make-pair16592_
                                           'cons
                                           _hd16575_
                                           _rest16577_))
                                      (_E1659516604_)))))
                            (_E1659516604_)))))
                (_E1659416620_))
              (_E1655416563_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1655416563_)))))
                                (_E1655316624_))
                              (if (gx#stx-null? _e16545_)
                                  (values '(null) _vars16546_)
                                  (if (gx#stx-vector? _e16545_)
                                      (let ((_g17733_
                                             (_recur16543_
                                              (vector->list
                                               (gx#syntax-e _e16545_))
                                              _vars16546_
                                              _depth16547_)))
                                        (begin
                                          (let ((_g17734_
                                                 (values-count _g17733_)))
                                            (if (not (fx= _g17734_ 2))
                                                (error "Context expects 2 values"
                                                       _g17734_)))
                                          (let ((_e16628_
                                                 (values-ref _g17733_ 0))
                                                (_vars16629_
                                                 (values-ref _g17733_ 1)))
                                            (values (cons 'vector _e16628_)
                                                    _vars16629_))))
                                      (if (gx#stx-box? _e16545_)
                                          (let ((_g17735_
                                                 (_recur16543_
                                                  (unbox (gx#syntax-e
                                                          _e16545_))
                                                  _vars16546_
                                                  _depth16547_)))
                                            (begin
                                              (let ((_g17736_
                                                     (values-count _g17735_)))
                                                (if (not (fx= _g17736_ 2))
                                                    (error "Context expects 2 values"
                                                           _g17736_)))
                                              (let ((_e16631_
                                                     (values-ref _g17735_ 0))
                                                    (_vars16632_
                                                     (values-ref _g17735_ 1)))
                                                (values (cons 'box _e16631_)
                                                        _vars16632_))))
                                          (if (gx#stx-datum? _e16545_)
                                              (values (cons 'datum
                                                            (gx#stx-e
                                                             _e16545_))
                                                      _vars16546_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad pattern"
                                               _stx16462_
                                               _e16545_)))))))))))
          (let* ((_e1647216485_ _stx16462_)
                 (_E1647416489_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1647216485_)))
                 (_E1647316536_
                  (lambda ()
                    (if (gx#stx-pair? _e1647216485_)
                        (let ((_e1647516493_ (gx#syntax-e _e1647216485_)))
                          (let ((_hd1647616496_ (##car _e1647516493_))
                                (_tl1647716498_ (##cdr _e1647516493_)))
                            (if (gx#stx-pair? _tl1647716498_)
                                (let ((_e1647816501_
                                       (gx#syntax-e _tl1647716498_)))
                                  (let ((_hd1647916504_ (##car _e1647816501_))
                                        (_tl1648016506_ (##cdr _e1647816501_)))
                                    (let ((_expr16509_ _hd1647916504_))
                                      (if (gx#stx-pair? _tl1648016506_)
                                          (let ((_e1648116511_
                                                 (gx#syntax-e _tl1648016506_)))
                                            (let ((_hd1648216514_
                                                   (##car _e1648116511_))
                                                  (_tl1648316516_
                                                   (##cdr _e1648116511_)))
                                              (let* ((_ids16519_
                                                      _hd1648216514_)
                                                     (_clauses16521_
                                                      _tl1648316516_))
                                                (if '#t
                                                    (if (not (gx#identifier-list?
                                                              _ids16519_))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad template identifier list"
                                                         _stx16462_
                                                         _ids16519_)
                                                        (if (not (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _clauses16521_))
                    (gx#raise-syntax-error '#f '"Bad syntax" _stx16462_)
                    (let* ((_ids16523_ (gx#syntax->list _ids16519_))
                           (_clauses16525_ (gx#syntax->list _clauses16521_))
                           (_clause-ids16527_ (gx#gentemps _clauses16525_))
                           (_E16529_ (gx#genident__0))
                           (_target16531_ (gx#genident__0))
                           (_first16533_
                            (if (null? _clauses16525_)
                                _E16529_
                                (car _clause-ids16527_))))
                      (gx#stx-wrap-source
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _E16529_ '())
                                    (cons (gx#core-list
                                           'lambda%
                                           (cons _target16531_ '())
                                           (gx#core-list
                                            'raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _target16531_))
                                          '()))
                              '())
                        (_generate-body16468_
                         (_generate-bindings16467_
                          _target16531_
                          _ids16523_
                          _clauses16525_
                          _clause-ids16527_
                          _E16529_)
                         (cons _first16533_ (cons _expr16509_ '()))))
                       (gx#stx-source _stx16462_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1647416489_)))))
                                          (_E1647416489_)))))
                                (_E1647416489_))))
                        (_E1647416489_)))))
            (_E1647316536_)))))
    (begin
      (define gx#macro-expand-syntax-case__0
        (lambda (_stx17164_)
          (let* ((_identifier=?17166_ 'free-identifier=?)
                 (_unwrap-e17168_ 'syntax-e)
                 (_wrap-e17170_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda16460
             _stx17164_
             _identifier=?17166_
             _unwrap-e17168_
             _wrap-e17170_))))
      (define gx#macro-expand-syntax-case__1
        (lambda (_stx17172_ _identifier=?17173_)
          (let* ((_unwrap-e17175_ 'syntax-e) (_wrap-e17177_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda16460
             _stx17172_
             _identifier=?17173_
             _unwrap-e17175_
             _wrap-e17177_))))
      (define gx#macro-expand-syntax-case__2
        (lambda (_stx17179_ _identifier=?17180_ _unwrap-e17181_)
          (let ((_wrap-e17183_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda16460
             _stx17179_
             _identifier=?17180_
             _unwrap-e17181_
             _wrap-e17183_))))
      (define gx#macro-expand-syntax-case
        (lambda _g17738_
          (let ((_g17737_ (length _g17738_)))
            (cond ((fx= _g17737_ 1)
                   (apply gx#macro-expand-syntax-case__0 _g17738_))
                  ((fx= _g17737_ 2)
                   (apply gx#macro-expand-syntax-case__1 _g17738_))
                  ((fx= _g17737_ 3)
                   (apply gx#macro-expand-syntax-case__2 _g17738_))
                  ((fx= _g17737_ 4)
                   (apply gx#macro-expand-syntax-case__opt-lambda16460
                          _g17738_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-syntax-case
                    _g17738_))))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx16459_)
      (if (gx#identifier? _stx16459_)
          (##structure-instance-of?
           (gx#syntax-local-e__opt-lambda4507 _stx16459_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd16417_ . _rest16418_)
      (let ((_len16420_ (length _hd16417_)))
        (let _lp16422_ ((_rest16424_ _rest16418_))
          (let* ((_rest1642516433_ _rest16424_)
                 (_E1642816437_
                  (lambda () (error '"No clause matching" _rest1642516433_)))
                 (_else1642716441_ (lambda () '#!void))
                 (_K1642916447_
                  (lambda (_rest16444_ _hd16445_)
                    (if (fx= _len16420_ (length _hd16445_))
                        (_lp16422_ _rest16444_)
                        (gx#raise-syntax-error
                         '#f
                         '"Splice length mismatch"
                         _hd16445_)))))
            (if (##pair? _rest1642516433_)
                (let ((_hd1643016450_ (##car _rest1642516433_))
                      (_tl1643116452_ (##cdr _rest1642516433_)))
                  (let* ((_hd16455_ _hd1643016450_)
                         (_rest16457_ _tl1643116452_))
                    (_K1642916447_ _rest16457_ _hd16455_)))
                (_else1642716441_)))))))
  (define gx#syntax-split-splice
    (lambda (_stx16375_ _n16376_)
      (let _lp16378_ ((_rest16380_ _stx16375_) (_r16381_ '()))
        (if (gx#stx-pair? _rest16380_)
            (let* ((_g1638216389_ (gx#syntax-e _rest16380_))
                   (_E1638416393_
                    (lambda () (error '"No clause matching" _g1638216389_)))
                   (_K1638516399_
                    (lambda (_rest16396_ _hd16397_)
                      (_lp16378_ _rest16396_ (cons _hd16397_ _r16381_)))))
              (if (##pair? _g1638216389_)
                  (let ((_hd1638616402_ (##car _g1638216389_))
                        (_tl1638716404_ (##cdr _g1638216389_)))
                    (let* ((_hd16407_ _hd1638616402_)
                           (_rest16409_ _tl1638716404_))
                      (_K1638516399_ _rest16409_ _hd16407_)))
                  (_E1638416393_)))
            (let _lp16411_ ((_n16413_ _n16376_)
                            (_l16414_ _r16381_)
                            (_r16415_ _rest16380_))
              (if (null? _l16414_)
                  (values _l16414_ _r16415_)
                  (if (fxpositive? _n16413_)
                      (_lp16411_
                       (fx- _n16413_ '1)
                       (cdr _l16414_)
                       (cons (car _l16414_) _r16415_))
                      (values (reverse _l16414_) _r16415_)))))))))
