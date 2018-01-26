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
    (lambda _$args17784_
      (apply make-struct-instance gx#syntax-pattern::t _$args17784_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self17781_ _stx17782_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx17782_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx17263_)
      (letrec ((_generate17265_
                (lambda (_e17492_)
                  (letrec ((_BUG17494_
                            (lambda (_q17656_)
                              (error '"BUG: syntax; generate"
                                     _stx17263_
                                     _e17492_
                                     _q17656_)))
                           (_local-pattern-e17495_
                            (lambda (_pat17654_)
                              (gx#syntax-local-rewrap
                               (##structure-ref
                                _pat17654_
                                '2
                                gx#syntax-pattern::t
                                '#f))))
                           (_getvar17496_
                            (lambda (_q17651_ _vars17652_)
                              (assgetq _q17651_ _vars17652_ _BUG17494_)))
                           (_getarg17497_
                            (lambda (_arg17617_ _vars17618_)
                              (let* ((_arg1761917626_ _arg17617_)
                                     (_E1762117630_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _arg1761917626_)))
                                     (_K1762217639_
                                      (lambda (_e17633_ _tag17634_)
                                        (let ((_$e17636_ _tag17634_))
                                          (if (eq? _$e17636_ 'ref)
                                              (_getvar17496_
                                               _e17633_
                                               _vars17618_)
                                              (if (eq? _$e17636_ 'pattern)
                                                  (_local-pattern-e17495_
                                                   _e17633_)
                                                  (_BUG17494_ _arg17617_)))))))
                                (if (##pair? _arg1761917626_)
                                    (let ((_hd1762317642_
                                           (##car _arg1761917626_))
                                          (_tl1762417644_
                                           (##cdr _arg1761917626_)))
                                      (let* ((_tag17647_ _hd1762317642_)
                                             (_e17649_ _tl1762417644_))
                                        (_K1762217639_ _e17649_ _tag17647_)))
                                    (_E1762117630_))))))
                    (let _recur17499_ ((_e17501_ _e17492_) (_vars17502_ '()))
                      (let* ((_e1750317510_ _e17501_)
                             (_E1750517514_
                              (lambda ()
                                (error '"No clause matching" _e1750317510_)))
                             (_K1750617605_
                              (lambda (_body17517_ _tag17518_)
                                (let ((_$e17520_ _tag17518_))
                                  (if (eq? _$e17520_ 'datum)
                                      (gx#core-list 'quote _body17517_)
                                      (if (eq? _$e17520_ 'term)
                                          (let ((_id17523_
                                                 (gx#syntax-local-unwrap
                                                  _body17517_)))
                                            (if (##structure-direct-instance-of?
                                                 _id17523_
                                                 'gx#identifier-wrap::t)
                                                (let ((_marks17525_
                                                       (##direct-structure-ref
                                                        _id17523_
                                                        '3
                                                        gx#identifier-wrap::t
                                                        '#f)))
                                                  (if (null? _marks17525_)
                                                      (gx#core-list
                                                       'datum->syntax
                                                       '#f
                                                       (gx#core-list
                                                        'quote
                                                        _body17517_))
                                                      (gx#core-list
                                                       'datum->syntax
                                                       (gx#core-list
                                                        'quote-syntax
                                                        _body17517_)
                                                       (gx#core-list
                                                        'quote
                                                        _body17517_)
                                                       '#f
                                                       '#f)))
                                                (if (##structure-direct-instance-of?
                                                     _id17523_
                                                     'gx#syntax-quote::t)
                                                    (gx#core-list
                                                     'quote-syntax
                                                     _body17517_)
                                                    (_BUG17494_ _e17501_))))
                                          (if (eq? _$e17520_ 'pattern)
                                              (_local-pattern-e17495_
                                               _body17517_)
                                              (if (eq? _$e17520_ 'ref)
                                                  (_getvar17496_
                                                   _body17517_
                                                   _vars17502_)
                                                  (if (eq? _$e17520_ 'cons)
                                                      (gx#core-list
                                                       'cons
                                                       (_recur17499_
                                                        (car _body17517_)
                                                        _vars17502_)
                                                       (_recur17499_
                                                        (cdr _body17517_)
                                                        _vars17502_))
                                                      (if (eq? _$e17520_
                                                               'vector)
                                                          (gx#core-list
                                                           'list->vector
                                                           (_recur17499_
                                                            _body17517_
                                                            _vars17502_))
                                                          (if (eq? _$e17520_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'box)
                      (gx#core-list
                       'box
                       (_recur17499_ _body17517_ _vars17502_))
                      (if (eq? _$e17520_ 'splice)
                          (let* ((_body1752617537_ _body17517_)
                                 (_E1752817541_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _body1752617537_)))
                                 (_K1752917579_
                                  (lambda (_args17544_
                                           _iv17545_
                                           _hd17546_
                                           _depth17547_)
                                    (let* ((_targets17553_
                                            (map (lambda (_g1754817550_)
                                                   (_getarg17497_
                                                    _g1754817550_
                                                    _vars17502_))
                                                 _args17544_))
                                           (_fold-in17555_
                                            (gx#gentemps _args17544_))
                                           (_fold-out17557_ (gx#genident__0))
                                           (_lambda-args17559_
                                            (foldr1 cons
                                                    (cons _fold-out17557_ '())
                                                    _fold-in17555_))
                                           (_lambda-body17576_
                                            (if (fx> _depth17547_ '1)
                                                (let ((_r-args17567_
                                                       (map (lambda (_arg17561_)
                                                              (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cdr _arg17561_)))
                    _args17544_))
              (_r-vars17568_
               (foldr (lambda (_arg17563_ _var17564_ _r17565_)
                        (cons (cons (cdr _arg17563_) _var17564_) _r17565_))
                      _vars17502_
                      _args17544_
                      _fold-in17555_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur17499_
                                                   (cons* 'splice
                                                          (fx- _depth17547_ '1)
                                                          _hd17546_
                                                          (cons 'var
                                                                _fold-out17557_)
                                                          _r-args17567_)
                                                   _r-vars17568_))
                                                (let ((_hd-vars17574_
                                                       (foldr (lambda (_arg17570_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _var17571_
                               _r17572_)
                        (cons (cons (cdr _arg17570_) _var17571_) _r17572_))
                      _vars17502_
                      _args17544_
                      _fold-in17555_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#core-list
                                                   'cons
                                                   (_recur17499_
                                                    _hd17546_
                                                    _hd-vars17574_)
                                                   _fold-out17557_)))))
                                      (gx#core-list
                                       'begin
                                       (if (fx> (length _targets17553_) '1)
                                           (gx#core-cons*
                                            'syntax-check-splice-targets
                                            _targets17553_)
                                           '#!void)
                                       (gx#core-cons*
                                        'foldr
                                        (gx#core-list
                                         'lambda%
                                         _lambda-args17559_
                                         _lambda-body17576_)
                                        (_recur17499_ _iv17545_ _vars17502_)
                                        _targets17553_))))))
                            (if (##pair? _body1752617537_)
                                (let ((_hd1753017582_ (##car _body1752617537_))
                                      (_tl1753117584_
                                       (##cdr _body1752617537_)))
                                  (let ((_depth17587_ _hd1753017582_))
                                    (if (##pair? _tl1753117584_)
                                        (let ((_hd1753217589_
                                               (##car _tl1753117584_))
                                              (_tl1753317591_
                                               (##cdr _tl1753117584_)))
                                          (let ((_hd17594_ _hd1753217589_))
                                            (if (##pair? _tl1753317591_)
                                                (let ((_hd1753417596_
                                                       (##car _tl1753317591_))
                                                      (_tl1753517598_
                                                       (##cdr _tl1753317591_)))
                                                  (let* ((_iv17601_
                                                          _hd1753417596_)
                                                         (_args17603_
                                                          _tl1753517598_))
                                                    (_K1752917579_
                                                     _args17603_
                                                     _iv17601_
                                                     _hd17594_
                                                     _depth17587_)))
                                                (_E1752817541_))))
                                        (_E1752817541_))))
                                (_E1752817541_)))
                          (if (eq? _$e17520_ 'var)
                              _body17517_
                              (_BUG17494_ _e17501_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (if (##pair? _e1750317510_)
                            (let ((_hd1750717608_ (##car _e1750317510_))
                                  (_tl1750817610_ (##cdr _e1750317510_)))
                              (let* ((_tag17613_ _hd1750717608_)
                                     (_body17615_ _tl1750817610_))
                                (_K1750617605_ _body17615_ _tag17613_)))
                            (_E1750517514_)))))))
               (_parse17266_
                (lambda (_e17307_)
                  (letrec ((_make-cons17309_
                            (lambda (_hd17484_ _tl17485_)
                              (let ((_g17786_ _hd17484_) (_g17788_ _tl17485_))
                                (begin
                                  (let ((_g17787_ (values-count _g17786_)))
                                    (if (not (fx= _g17787_ 2))
                                        (error "Context expects 2 values"
                                               _g17787_)))
                                  (let ((_g17789_ (values-count _g17788_)))
                                    (if (not (fx= _g17789_ 2))
                                        (error "Context expects 2 values"
                                               _g17789_)))
                                  (let ((_hd-e17487_ (values-ref _g17786_ 0))
                                        (_hd-vars17488_
                                         (values-ref _g17786_ 1)))
                                    (let ((_tl-e17489_ (values-ref _g17788_ 0))
                                          (_tl-vars17490_
                                           (values-ref _g17788_ 1)))
                                      (values (cons* 'cons
                                                     _hd-e17487_
                                                     _tl-e17489_)
                                              (append _hd-vars17488_
                                                      _tl-vars17490_))))))))
                           (_make-splice17310_
                            (lambda (_where17423_
                                     _depth17424_
                                     _hd17425_
                                     _tl17426_)
                              (let ((_g17790_ _hd17425_) (_g17792_ _tl17426_))
                                (begin
                                  (let ((_g17791_ (values-count _g17790_)))
                                    (if (not (fx= _g17791_ 2))
                                        (error "Context expects 2 values"
                                               _g17791_)))
                                  (let ((_g17793_ (values-count _g17792_)))
                                    (if (not (fx= _g17793_ 2))
                                        (error "Context expects 2 values"
                                               _g17793_)))
                                  (let ((_hd-e17428_ (values-ref _g17790_ 0))
                                        (_hd-vars17429_
                                         (values-ref _g17790_ 1)))
                                    (let ((_tl-e17430_ (values-ref _g17792_ 0))
                                          (_tl-vars17431_
                                           (values-ref _g17792_ 1)))
                                      (let _lp17433_ ((_rest17435_
                                                       _hd-vars17429_)
                                                      (_targets17436_ '())
                                                      (_vars17437_
                                                       _tl-vars17431_))
                                        (let* ((_rest1743817448_ _rest17435_)
                                               (_E1744117452_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _rest1743817448_)))
                                               (_else1744017456_
                                                (lambda ()
                                                  (if (null? _targets17436_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Misplaced ellipsis"
                                                       _stx17263_
                                                       _where17423_)
                                                      (values (cons* 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _depth17424_
                             _hd-e17428_
                             _tl-e17430_
                             _targets17436_)
                      _vars17437_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_K1744217465_
                                                (lambda (_rest17459_
                                                         _hd-pat17460_
                                                         _hd-depth*17461_)
                                                  (let ((_hd-depth17463_
                                                         (fx- _hd-depth*17461_
                                                              _depth17424_)))
                                                    (if (fxpositive?
                                                         _hd-depth17463_)
                                                        (_lp17433_
                                                         _rest17459_
                                                         (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd-pat17460_)
                       _targets17436_)
                 (cons (cons _hd-depth17463_ _hd-pat17460_) _vars17437_))
                (if (fxzero? _hd-depth17463_)
                    (_lp17433_
                     _rest17459_
                     (cons (cons 'pattern _hd-pat17460_) _targets17436_)
                     _vars17437_)
                    (gx#raise-syntax-error
                     '#f
                     '"Too many ellipses"
                     _stx17263_
                     _where17423_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1743817448_)
                                              (let ((_hd1744317468_
                                                     (##car _rest1743817448_))
                                                    (_tl1744417470_
                                                     (##cdr _rest1743817448_)))
                                                (if (##pair? _hd1744317468_)
                                                    (let ((_hd1744517473_
                                                           (##car _hd1744317468_))
                                                          (_tl1744617475_
                                                           (##cdr _hd1744317468_)))
                                                      (let* ((_hd-depth*17478_
                                                              _hd1744517473_)
                                                             (_hd-pat17480_
                                                              _tl1744617475_)
                                                             (_rest17482_
                                                              _tl1744417470_))
                                                        (_K1744217465_
                                                         _rest17482_
                                                         _hd-pat17480_
                                                         _hd-depth*17478_)))
                                                    (_else1744017456_)))
                                              (_else1744017456_))))))))))
                           (_recur17311_
                            (lambda (_e17316_ _is-e?17317_)
                              (if (_is-e?17317_ _e17316_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Mislpaced ellipsis"
                                   _stx17263_)
                                  (if (gx#syntax-local-pattern? _e17316_)
                                      (let* ((_pat17319_
                                              (gx#syntax-local-e__0 _e17316_))
                                             (_depth17321_
                                              (##structure-ref
                                               _pat17319_
                                               '3
                                               gx#syntax-pattern::t
                                               '#f)))
                                        (if (fxpositive? _depth17321_)
                                            (values (cons 'ref _pat17319_)
                                                    (cons (cons _depth17321_
                                                                _pat17319_)
                                                          '()))
                                            (values (cons 'pattern _pat17319_)
                                                    '())))
                                      (if (gx#identifier? _e17316_)
                                          (values (cons 'term _e17316_) '())
                                          (if (gx#stx-pair? _e17316_)
                                              (let* ((_e1732317330_ _e17316_)
                                                     (_E1732517334_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _e1732317330_)))
                                                     (_E1732417413_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e1732317330_)
                                                            (let ((_e1732617338_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e1732317330_)))
                      (let ((_hd1732717341_ (##car _e1732617338_))
                            (_tl1732817343_ (##cdr _e1732617338_)))
                        (let* ((_hd17346_ _hd1732717341_)
                               (_rest17348_ _tl1732817343_))
                          (if '#t
                              (if (_is-e?17317_ _hd17346_)
                                  (let* ((_e1734917356_ _rest17348_)
                                         (_E1735117360_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _stx17263_
                                             _e17316_)))
                                         (_E1735017374_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1734917356_)
                                                (let ((_e1735217364_
                                                       (gx#syntax-e
                                                        _e1734917356_)))
                                                  (let ((_hd1735317367_
                                                         (##car _e1735217364_))
                                                        (_tl1735417369_
                                                         (##cdr _e1735217364_)))
                                                    (let ((_rest17372_
                                                           _hd1735317367_))
                                                      (if (gx#stx-null?
                                                           _tl1735417369_)
                                                          (if '#t
                                                              (_recur17311_
                                                               _rest17372_
                                                               false)
                                                              (_E1735117360_))
                                                          (_E1735117360_)))))
                                                (_E1735117360_)))))
                                    (_E1735017374_))
                                  (let _lp17378_ ((_rest17380_ _rest17348_)
                                                  (_depth17381_ '0))
                                    (let* ((_e1738217389_ _rest17380_)
                                           (_E1738417393_
                                            (lambda ()
                                              (if (fxpositive? _depth17381_)
                                                  (_make-splice17310_
                                                   _e17316_
                                                   _depth17381_
                                                   (_recur17311_
                                                    _hd17346_
                                                    _is-e?17317_)
                                                   (_recur17311_
                                                    _rest17380_
                                                    _is-e?17317_))
                                                  (_make-cons17309_
                                                   (_recur17311_
                                                    _hd17346_
                                                    _is-e?17317_)
                                                   (_recur17311_
                                                    _rest17380_
                                                    _is-e?17317_)))))
                                           (_E1738317409_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1738217389_)
                                                  (let ((_e1738517397_
                                                         (gx#syntax-e
                                                          _e1738217389_)))
                                                    (let ((_hd1738617400_
                                                           (##car _e1738517397_))
                                                          (_tl1738717402_
                                                           (##cdr _e1738517397_)))
                                                      (let* ((_rest-hd17405_
                                                              _hd1738617400_)
                                                             (_rest-tl17407_
                                                              _tl1738717402_))
                                                        (if '#t
                                                            (if (_is-e?17317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rest-hd17405_)
                        (_lp17378_ _rest-tl17407_ (fx+ _depth17381_ '1))
                        (if (fxpositive? _depth17381_)
                            (_make-splice17310_
                             _e17316_
                             _depth17381_
                             (_recur17311_ _hd17346_ _is-e?17317_)
                             (_recur17311_ _rest17380_ _is-e?17317_))
                            (_make-cons17309_
                             (_recur17311_ _hd17346_ _is-e?17317_)
                             (_recur17311_ _rest17380_ _is-e?17317_))))
                    (_E1738417393_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1738417393_)))))
                                      (_E1738317409_))))
                              (_E1732517334_)))))
                    (_E1732517334_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1732417413_))
                                              (if (gx#stx-vector? _e17316_)
                                                  (let ((_g17794_
                                                         (_recur17311_
                                                          (vector->list
                                                           (gx#stx-unwrap__0
                                                            _e17316_))
                                                          _is-e?17317_)))
                                                    (begin
                                                      (let ((_g17795_
                                                             (values-count
                                                              _g17794_)))
                                                        (if (not (fx= _g17795_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g17795_)))
              (let ((_e17417_ (values-ref _g17794_ 0))
                    (_vars17418_ (values-ref _g17794_ 1)))
                (values (cons 'vector _e17417_) _vars17418_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e17316_)
                                                      (let ((_g17796_
                                                             (_recur17311_
                                                              (unbox (gx#stx-unwrap__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e17316_))
                      _is-e?17317_)))
                (begin
                  (let ((_g17797_ (values-count _g17796_)))
                    (if (not (fx= _g17797_ 2))
                        (error "Context expects 2 values" _g17797_)))
                  (let ((_e17420_ (values-ref _g17796_ 0))
                        (_vars17421_ (values-ref _g17796_ 1)))
                    (values (cons 'box _e17420_) _vars17421_))))
              (values (cons 'datum _e17316_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    (let ((_g17798_ (_recur17311_ _e17307_ gx#ellipsis?)))
                      (begin
                        (let ((_g17799_ (values-count _g17798_)))
                          (if (not (fx= _g17799_ 2))
                              (error "Context expects 2 values" _g17799_)))
                        (let ((_tree17313_ (values-ref _g17798_ 0))
                              (_vars17314_ (values-ref _g17798_ 1)))
                          (if (null? _vars17314_)
                              _tree17313_
                              (gx#raise-syntax-error
                               '#f
                               '"Missing ellipsis"
                               _stx17263_
                               _vars17314_)))))))))
        (let* ((_e1726717277_ _stx17263_)
               (_E1726917281_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _stx17263_)))
               (_E1726817303_
                (lambda ()
                  (if (gx#stx-pair? _e1726717277_)
                      (let ((_e1727017285_ (gx#syntax-e _e1726717277_)))
                        (let ((_hd1727117288_ (##car _e1727017285_))
                              (_tl1727217290_ (##cdr _e1727017285_)))
                          (if (gx#stx-pair? _tl1727217290_)
                              (let ((_e1727317293_
                                     (gx#syntax-e _tl1727217290_)))
                                (let ((_hd1727417296_ (##car _e1727317293_))
                                      (_tl1727517298_ (##cdr _e1727317293_)))
                                  (let ((_form17301_ _hd1727417296_))
                                    (if (gx#stx-null? _tl1727517298_)
                                        (if '#t
                                            (gx#stx-wrap-source
                                             (_generate17265_
                                              (_parse17266_ _form17301_))
                                             (gx#stx-source _stx17263_))
                                            (_E1726917281_))
                                        (_E1726917281_)))))
                              (_E1726917281_))))
                      (_E1726917281_)))))
          (_E1726817303_)))))
  (begin
    (define gx#macro-expand-syntax-case__opt-lambda16533
      (lambda (_stx16535_ _identifier=?16536_ _unwrap-e16537_ _wrap-e16538_)
        (letrec ((_generate-bindings16540_
                  (lambda (_target17125_
                           _ids17126_
                           _clauses17127_
                           _clause-ids17128_
                           _E17129_)
                    (letrec ((_generate117131_
                              (lambda (_clause17230_ _clause-id17231_ _E17232_)
                                (cons (cons _clause-id17231_ '())
                                      (cons (gx#core-list
                                             'lambda%
                                             (cons _target17125_ '())
                                             (_generate-clause16542_
                                              _target17125_
                                              _ids17126_
                                              _clause17230_
                                              _E17232_))
                                            '())))))
                      (let _lp17133_ ((_rest17135_ _clauses17127_)
                                      (_rest-ids17136_ _clause-ids17128_)
                                      (_bindings17137_ '()))
                        (let* ((_rest1713817146_ _rest17135_)
                               (_E1714117150_
                                (lambda ()
                                  (error '"No clause matching"
                                         _rest1713817146_)))
                               (_else1714017154_ (lambda () _bindings17137_))
                               (_K1714217218_
                                (lambda (_rest17157_ _clause17158_)
                                  (let* ((_rest-ids1715917166_ _rest-ids17136_)
                                         (_E1716117170_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids1715917166_)))
                                         (_K1716217206_
                                          (lambda (_rest-ids17173_
                                                   _clause-id17174_)
                                            (let* ((_rest-ids1717517183_
                                                    _rest-ids17173_)
                                                   (_E1717817187_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _rest-ids1717517183_)))
                                                   (_else1717717191_
                                                    (lambda ()
                                                      (cons (_generate117131_
                                                             _clause17158_
                                                             _clause-id17174_
                                                             _E17129_)
                                                            _bindings17137_)))
                                                   (_K1717917196_
                                                    (lambda (_next-clause-id17194_)
                                                      (_lp17133_
                                                       _rest17157_
                                                       _rest-ids17173_
                                                       (cons (_generate117131_
                                                              _clause17158_
                                                              _clause-id17174_
                                                              _next-clause-id17194_)
                                                             _bindings17137_)))))
                                              (if (##pair? _rest-ids1717517183_)
                                                  (let ((_hd1718017199_
                                                         (##car _rest-ids1717517183_))
                                                        (_tl1718117201_
                                                         (##cdr _rest-ids1717517183_)))
                                                    (let ((_next-clause-id17204_
                                                           _hd1718017199_))
                                                      (_K1717917196_
                                                       _next-clause-id17204_)))
                                                  (_else1717717191_))))))
                                    (if (##pair? _rest-ids1715917166_)
                                        (let ((_hd1716317209_
                                               (##car _rest-ids1715917166_))
                                              (_tl1716417211_
                                               (##cdr _rest-ids1715917166_)))
                                          (let* ((_clause-id17214_
                                                  _hd1716317209_)
                                                 (_rest-ids17216_
                                                  _tl1716417211_))
                                            (_K1716217206_
                                             _rest-ids17216_
                                             _clause-id17214_)))
                                        (_E1716117170_))))))
                          (if (##pair? _rest1713817146_)
                              (let ((_hd1714317221_ (##car _rest1713817146_))
                                    (_tl1714417223_ (##cdr _rest1713817146_)))
                                (let* ((_clause17226_ _hd1714317221_)
                                       (_rest17228_ _tl1714417223_))
                                  (_K1714217218_ _rest17228_ _clause17226_)))
                              (_else1714017154_)))))))
                 (_generate-body16541_
                  (lambda (_bindings17085_ _body17086_)
                    (let _recur17088_ ((_rest17090_ _bindings17085_))
                      (let* ((_rest1709117099_ _rest17090_)
                             (_E1709417103_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1709117099_)))
                             (_else1709317107_ (lambda () _body17086_))
                             (_K1709517113_
                              (lambda (_rest17110_ _hd17111_)
                                (gx#core-list
                                 'let-values
                                 (cons _hd17111_ '())
                                 (_recur17088_ _rest17110_)))))
                        (if (##pair? _rest1709117099_)
                            (let ((_hd1709617116_ (##car _rest1709117099_))
                                  (_tl1709717118_ (##cdr _rest1709117099_)))
                              (let* ((_hd17121_ _hd1709617116_)
                                     (_rest17123_ _tl1709717118_))
                                (_K1709517113_ _rest17123_ _hd17121_)))
                            (_else1709317107_))))))
                 (_generate-clause16542_
                  (lambda (_target16948_ _ids16949_ _clause16950_ _E16951_)
                    (letrec ((_generate116953_
                              (lambda (_hd17040_ _fender17041_ _body17042_)
                                (let ((_g17800_
                                       (_parse-clause16544_
                                        _hd17040_
                                        _ids16949_)))
                                  (begin
                                    (let ((_g17801_ (values-count _g17800_)))
                                      (if (not (fx= _g17801_ 2))
                                          (error "Context expects 2 values"
                                                 _g17801_)))
                                    (let ((_e17044_ (values-ref _g17800_ 0))
                                          (_mvars17045_
                                           (values-ref _g17800_ 1)))
                                      (let* ((_pvars17047_
                                              (map gx#syntax-local-rewrap
                                                   (gx#gentemps _mvars17045_)))
                                             (_E17049_
                                              (cons _E16951_
                                                    (cons _target16948_ '())))
                                             (_K17082_
                                              (gx#core-list
                                               'lambda%
                                               _pvars17047_
                                               (gx#core-list
                                                'let-syntax
                                                (map (lambda (_mvar17051_
                                                              _pvar17052_)
                                                       (let* ((_mvar1705317060_
                                                               _mvar17051_)
                                                              (_E1705517064_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (error '"No clause matching" _mvar1705317060_)))
                      (_K1705617070_
                       (lambda (_depth17067_ _id17068_)
                         (cons _id17068_
                               (cons (gx#core-list
                                      'make-syntax-pattern
                                      (gx#core-list 'quote _id17068_)
                                      (gx#core-list 'quote _pvar17052_)
                                      _depth17067_)
                                     '())))))
                 (if (##pair? _mvar1705317060_)
                     (let ((_hd1705717073_ (##car _mvar1705317060_))
                           (_tl1705817075_ (##cdr _mvar1705317060_)))
                       (let* ((_id17078_ _hd1705717073_)
                              (_depth17080_ _tl1705817075_))
                         (_K1705617070_ _depth17080_ _id17078_)))
                     (_E1705517064_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _mvars17045_
                                                     _pvars17047_)
                                                (if (eq? _fender17041_ '#t)
                                                    _body17042_
                                                    (gx#core-list
                                                     'if
                                                     _fender17041_
                                                     _body17042_
                                                     _E17049_))))))
                                        (_generate-match16543_
                                         _hd17040_
                                         _target16948_
                                         _e17044_
                                         _mvars17045_
                                         _K17082_
                                         _E17049_))))))))
                      (let* ((_e1695416974_ _clause16950_)
                             (_E1696316978_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _e1695416974_)))
                             (_E1695617012_
                              (lambda ()
                                (if (gx#stx-pair? _e1695416974_)
                                    (let ((_e1696416982_
                                           (gx#syntax-e _e1695416974_)))
                                      (let ((_hd1696516985_
                                             (##car _e1696416982_))
                                            (_tl1696616987_
                                             (##cdr _e1696416982_)))
                                        (let ((_hd16990_ _hd1696516985_))
                                          (if (gx#stx-pair? _tl1696616987_)
                                              (let ((_e1696716992_
                                                     (gx#syntax-e
                                                      _tl1696616987_)))
                                                (let ((_hd1696816995_
                                                       (##car _e1696716992_))
                                                      (_tl1696916997_
                                                       (##cdr _e1696716992_)))
                                                  (let ((_fender17000_
                                                         _hd1696816995_))
                                                    (if (gx#stx-pair?
                                                         _tl1696916997_)
                                                        (let ((_e1697017002_
                                                               (gx#syntax-e
                                                                _tl1696916997_)))
                                                          (let ((_hd1697117005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1697017002_))
                        (_tl1697217007_ (##cdr _e1697017002_)))
                    (let ((_body17010_ _hd1697117005_))
                      (if (gx#stx-null? _tl1697217007_)
                          (if '#t
                              (_generate116953_
                               _hd16990_
                               _fender17000_
                               _body17010_)
                              (_E1696316978_))
                          (_E1696316978_)))))
                (_E1696316978_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1696316978_)))))
                                    (_E1696316978_))))
                             (_E1695517036_
                              (lambda ()
                                (if (gx#stx-pair? _e1695416974_)
                                    (let ((_e1695717016_
                                           (gx#syntax-e _e1695416974_)))
                                      (let ((_hd1695817019_
                                             (##car _e1695717016_))
                                            (_tl1695917021_
                                             (##cdr _e1695717016_)))
                                        (let ((_hd17024_ _hd1695817019_))
                                          (if (gx#stx-pair? _tl1695917021_)
                                              (let ((_e1696017026_
                                                     (gx#syntax-e
                                                      _tl1695917021_)))
                                                (let ((_hd1696117029_
                                                       (##car _e1696017026_))
                                                      (_tl1696217031_
                                                       (##cdr _e1696017026_)))
                                                  (let ((_body17034_
                                                         _hd1696117029_))
                                                    (if (gx#stx-null?
                                                         _tl1696217031_)
                                                        (if '#t
                                                            (_generate116953_
                                                             _hd17024_
                                                             '#t
                                                             _body17034_)
                                                            (_E1695617012_))
                                                        (_E1695617012_)))))
                                              (_E1695617012_)))))
                                    (_E1695617012_)))))
                        (_E1695517036_)))))
                 (_generate-match16543_
                  (lambda (_where16707_
                           _target16708_
                           _hd16709_
                           _mvars16710_
                           _K16711_
                           _E16712_)
                    (letrec ((_BUG16714_
                              (lambda (_q16946_)
                                (error '"BUG: syntax-case; generate"
                                       _stx16535_
                                       _hd16709_
                                       _q16946_)))
                             (_recur16715_
                              (lambda (_e16800_
                                       _vars16801_
                                       _target16802_
                                       _E16803_
                                       _k16804_)
                                (let* ((_e1680516812_ _e16800_)
                                       (_E1680716816_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e1680516812_)))
                                       (_K1680816934_
                                        (lambda (_body16819_ _tag16820_)
                                          (let ((_$e16822_ _tag16820_))
                                            (if (eq? _$e16822_ 'any)
                                                (_k16804_ _vars16801_)
                                                (if (eq? _$e16822_ 'id)
                                                    (gx#core-list
                                                     'if
                                                     (gx#core-list
                                                      'identifier?
                                                      _target16802_)
                                                     (gx#core-list
                                                      'if
                                                      (gx#core-list
                                                       _identifier=?16536_
                                                       (gx#core-list
                                                        _wrap-e16538_
                                                        _body16819_)
                                                       _target16802_)
                                                      (_k16804_ _vars16801_)
                                                      _E16803_)
                                                     _E16803_)
                                                    (if (eq? _$e16822_ 'var)
                                                        (_k16804_
                                                         (cons (cons _body16819_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _target16802_)
                       _vars16801_))
                (if (eq? _$e16822_ 'cons)
                    (let ((_$e16825_ (gx#genident__1 'e))
                          (_$hd16826_ (gx#genident__1 'hd))
                          (_$tl16827_ (gx#genident__1 'tl)))
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _target16802_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$e16825_ '())
                                    (cons (gx#core-list
                                           _unwrap-e16537_
                                           _target16802_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$hd16826_ '())
                                     (cons (gx#core-list '##car _$e16825_)
                                           '()))
                               (cons (cons (cons _$tl16827_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$e16825_)
                                                 '()))
                                     '()))
                         (let* ((_body1682816835_ _body16819_)
                                (_E1683016839_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _body1682816835_)))
                                (_K1683116847_
                                 (lambda (_tl16842_ _hd16843_)
                                   (_recur16715_
                                    _hd16843_
                                    _vars16801_
                                    _$hd16826_
                                    _E16803_
                                    (lambda (_vars16845_)
                                      (_recur16715_
                                       _tl16842_
                                       _vars16845_
                                       _$tl16827_
                                       _E16803_
                                       _k16804_))))))
                           (if (##pair? _body1682816835_)
                               (let ((_hd1683216850_ (##car _body1682816835_))
                                     (_tl1683316852_ (##cdr _body1682816835_)))
                                 (let* ((_hd16855_ _hd1683216850_)
                                        (_tl16857_ _tl1683316852_))
                                   (_K1683116847_ _tl16857_ _hd16855_)))
                               (_E1683016839_)))))
                       _E16803_))
                    (if (eq? _$e16822_ 'splice)
                        (let* ((_body1685816865_ _body16819_)
                               (_E1686016869_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body1685816865_)))
                               (_K1686116918_
                                (lambda (_tl16872_ _hd16873_)
                                  (let* ((_rlen16875_
                                          (_splice-rlen16716_ _tl16872_))
                                         (_$target16877_
                                          (gx#genident__1 'target))
                                         (_$hd16879_ (gx#genident__1 'hd))
                                         (_$tl16881_ (gx#genident__1 'tl))
                                         (_$lp16883_ (gx#genident__1 'loop))
                                         (_$lp-e16885_ (gx#genident__1 'e))
                                         (_$lp-hd16887_
                                          (gx#genident__1 'lp-hd))
                                         (_$lp-tl16889_
                                          (gx#genident__1 'lp-tl))
                                         (_svars16891_
                                          (_splice-vars16717_ _hd16873_))
                                         (_lvars16893_
                                          (gx#gentemps _svars16891_))
                                         (_tlvars16895_
                                          (gx#gentemps _svars16891_))
                                         (_linit16899_
                                          (map (lambda (_var16897_)
                                                 (gx#core-list 'quote '()))
                                               _lvars16893_)))
                                    (letrec ((_make-loop16902_
                                              (lambda (_vars16904_)
                                                (gx#core-list
                                                 'letrec-values
                                                 (cons (cons (cons _$lp16883_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _$hd16879_ _lvars16893_)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-pair? _$hd16879_)
                             (gx#core-list
                              'let-values
                              (cons (cons (cons _$lp-e16885_ '())
                                          (cons (gx#core-list
                                                 _unwrap-e16537_
                                                 _$hd16879_)
                                                '()))
                                    '())
                              (gx#core-list
                               'let-values
                               (cons (cons (cons _$lp-hd16887_ '())
                                           (cons (gx#core-list
                                                  '##car
                                                  _$lp-e16885_)
                                                 '()))
                                     (cons (cons (cons _$lp-tl16889_ '())
                                                 (cons (gx#core-list
                                                        '##cdr
                                                        _$lp-e16885_)
                                                       '()))
                                           '()))
                               (_recur16715_
                                _hd16873_
                                '()
                                _$lp-hd16887_
                                _E16803_
                                (lambda (_hdvars16906_)
                                  (cons* _$lp16883_
                                         _$lp-tl16889_
                                         (map (lambda (_svar16908_ _lvar16909_)
                                                (gx#core-list
                                                 'cons
                                                 (assgetq _svar16908_
                                                          _hdvars16906_
                                                          _BUG16714_)
                                                 _lvar16909_))
                                              _svars16891_
                                              _lvars16893_))))))
                             (gx#core-list
                              'let-values
                              (map (lambda (_lvar16911_ _tlvar16912_)
                                     (cons (cons _tlvar16912_ '())
                                           (cons (gx#core-list
                                                  'reverse
                                                  _lvar16911_)
                                                 '())))
                                   _lvars16893_
                                   _tlvars16895_)
                              (_k16804_
                               (foldl (lambda (_svar16914_
                                               _tlvar16915_
                                               _r16916_)
                                        (cons (cons _svar16914_ _tlvar16915_)
                                              _r16916_))
                                      _vars16904_
                                      _svars16891_
                                      _tlvars16895_)))))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons* _$lp16883_
                                                        _$target16877_
                                                        _linit16899_)))))
                                      (gx#core-list
                                       'if
                                       (gx#core-list
                                        'stx-pair/null?
                                        _target16802_)
                                       (gx#core-list
                                        'if
                                        (gx#core-list
                                         'fx>=
                                         (gx#core-list
                                          'stx-length
                                          _target16802_)
                                         _rlen16875_)
                                        (gx#core-list
                                         'let-values
                                         (cons (cons (cons _$target16877_
                                                           (cons _$tl16881_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (gx#core-list
                                                            'syntax-split-splice
                                                            _target16802_
                                                            _rlen16875_)
                                                           '()))
                                               '())
                                         (_recur16715_
                                          _tl16872_
                                          _vars16801_
                                          _$tl16881_
                                          _E16803_
                                          _make-loop16902_))
                                        _E16803_)
                                       _E16803_))))))
                          (if (##pair? _body1685816865_)
                              (let ((_hd1686216921_ (##car _body1685816865_))
                                    (_tl1686316923_ (##cdr _body1685816865_)))
                                (let* ((_hd16926_ _hd1686216921_)
                                       (_tl16928_ _tl1686316923_))
                                  (_K1686116918_ _tl16928_ _hd16926_)))
                              (_E1686016869_)))
                        (if (eq? _$e16822_ 'null)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-null? _target16802_)
                             (_k16804_ _vars16801_)
                             _E16803_)
                            (if (eq? _$e16822_ 'vector)
                                (let ((_$e16930_ (gx#genident__1 'e)))
                                  (gx#core-list
                                   'if
                                   (gx#core-list 'stx-vector? _target16802_)
                                   (gx#core-list
                                    'let-values
                                    (cons (cons (cons _$e16930_ '())
                                                (cons (gx#core-list
                                                       'vector->list
                                                       (gx#core-list
                                                        _unwrap-e16537_
                                                        _target16802_))
                                                      '()))
                                          '())
                                    (_recur16715_
                                     _body16819_
                                     _vars16801_
                                     _$e16930_
                                     _E16803_
                                     _k16804_))
                                   _E16803_))
                                (if (eq? _$e16822_ 'box)
                                    (let ((_$e16932_ (gx#genident__1 'e)))
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-box? _target16802_)
                                       (gx#core-list
                                        'let-values
                                        (cons (cons (cons _$e16932_ '())
                                                    (cons (gx#core-list
                                                           'unbox
                                                           (gx#core-list
                                                            _unwrap-e16537_
                                                            _target16802_))
                                                          '()))
                                              '())
                                        (_recur16715_
                                         _body16819_
                                         _vars16801_
                                         _$e16932_
                                         _E16803_
                                         _k16804_))
                                       _E16803_))
                                    (if (eq? _$e16822_ 'datum)
                                        (gx#core-list
                                         'if
                                         (gx#core-list
                                          'stx-datum?
                                          _target16802_)
                                         (gx#core-list
                                          'if
                                          (gx#core-list
                                           'equal?
                                           (gx#core-list 'stx-e _target16802_)
                                           _body16819_)
                                          (_k16804_ _vars16801_)
                                          _E16803_)
                                         _E16803_)
                                        (_BUG16714_ _e16800_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (##pair? _e1680516812_)
                                      (let ((_hd1680916937_
                                             (##car _e1680516812_))
                                            (_tl1681016939_
                                             (##cdr _e1680516812_)))
                                        (let* ((_tag16942_ _hd1680916937_)
                                               (_body16944_ _tl1681016939_))
                                          (_K1680816934_
                                           _body16944_
                                           _tag16942_)))
                                      (_E1680716816_)))))
                             (_splice-rlen16716_
                              (lambda (_e16762_)
                                (let _lp16764_ ((_e16766_ _e16762_)
                                                (_n16767_ '0))
                                  (let* ((_e1676816775_ _e16766_)
                                         (_E1677016779_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1676816775_)))
                                         (_K1677116788_
                                          (lambda (_body16782_ _tag16783_)
                                            (let ((_$e16785_ _tag16783_))
                                              (if (eq? _$e16785_ 'splice)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Ambiguous pattern"
                                                   _stx16535_
                                                   _where16707_)
                                                  (if (eq? _$e16785_ 'cons)
                                                      (_lp16764_
                                                       (cdr _body16782_)
                                                       (fx+ _n16767_ '1))
                                                      _n16767_))))))
                                    (if (##pair? _e1676816775_)
                                        (let ((_hd1677216791_
                                               (##car _e1676816775_))
                                              (_tl1677316793_
                                               (##cdr _e1676816775_)))
                                          (let* ((_tag16796_ _hd1677216791_)
                                                 (_body16798_ _tl1677316793_))
                                            (_K1677116788_
                                             _body16798_
                                             _tag16796_)))
                                        (_E1677016779_))))))
                             (_splice-vars16717_
                              (lambda (_e16724_)
                                (let _recur16726_ ((_e16728_ _e16724_)
                                                   (_vars16729_ '()))
                                  (let* ((_e1673016737_ _e16728_)
                                         (_E1673216741_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1673016737_)))
                                         (_K1673316750_
                                          (lambda (_body16744_ _tag16745_)
                                            (let ((_$e16747_ _tag16745_))
                                              (if (eq? _$e16747_ 'var)
                                                  (cons _body16744_
                                                        _vars16729_)
                                                  (if (memq _$e16747_
                                                            '(cons splice))
                                                      (_recur16726_
                                                       (cdr _body16744_)
                                                       (_recur16726_
                                                        (car _body16744_)
                                                        _vars16729_))
                                                      (if (memq _$e16747_
                                                                '(vector box))
                                                          (_recur16726_
                                                           _body16744_
                                                           _vars16729_)
                                                          _vars16729_)))))))
                                    (if (##pair? _e1673016737_)
                                        (let ((_hd1673416753_
                                               (##car _e1673016737_))
                                              (_tl1673516755_
                                               (##cdr _e1673016737_)))
                                          (let* ((_tag16758_ _hd1673416753_)
                                                 (_body16760_ _tl1673516755_))
                                            (_K1673316750_
                                             _body16760_
                                             _tag16758_)))
                                        (_E1673216741_))))))
                             (_make-body16718_
                              (lambda (_vars16720_)
                                (cons _K16711_
                                      (map (lambda (_mvar16722_)
                                             (assgetq (car _mvar16722_)
                                                      _vars16720_
                                                      _BUG16714_))
                                           _mvars16710_)))))
                      (_recur16715_
                       _hd16709_
                       '()
                       _target16708_
                       _E16712_
                       _make-body16718_))))
                 (_parse-clause16544_
                  (lambda (_hd16613_ _ids16614_)
                    (let _recur16616_ ((_e16618_ _hd16613_)
                                       (_vars16619_ '())
                                       (_depth16620_ '0))
                      (if (gx#identifier? _e16618_)
                          (if (gx#underscore? _e16618_)
                              (values '(any) _vars16619_)
                              (if (gx#ellipsis? _e16618_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Misplaced ellipsis"
                                   _stx16535_
                                   _hd16613_)
                                  (if (find (lambda (_id16622_)
                                              (gx#bound-identifier=?
                                               _e16618_
                                               _id16622_))
                                            _ids16614_)
                                      (values (cons 'id _e16618_) _vars16619_)
                                      (if (find (lambda (_var16624_)
                                                  (gx#bound-identifier=?
                                                   _e16618_
                                                   (car _var16624_)))
                                                _vars16619_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Duplicate pattern variable"
                                           _stx16535_
                                           _e16618_)
                                          (values (cons 'var _e16618_)
                                                  (cons (cons _e16618_
                                                              _depth16620_)
                                                        _vars16619_))))))
                          (if (gx#stx-pair? _e16618_)
                              (let* ((_e1662516632_ _e16618_)
                                     (_E1662716636_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _e1662516632_)))
                                     (_E1662616697_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1662516632_)
                                            (let ((_e1662816640_
                                                   (gx#syntax-e
                                                    _e1662516632_)))
                                              (let ((_hd1662916643_
                                                     (##car _e1662816640_))
                                                    (_tl1663016645_
                                                     (##cdr _e1662816640_)))
                                                (let* ((_hd16648_
                                                        _hd1662916643_)
                                                       (_rest16650_
                                                        _tl1663016645_))
                                                  (if '#t
                                                      (let* ((_make-pair16665_
                                                              (lambda (_tag16652_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd16653_
                               _tl16654_)
                        (let* ((_hd-depth16656_
                                (if (eq? _tag16652_ 'splice)
                                    (fx+ _depth16620_ '1)
                                    _depth16620_))
                               (_g17802_
                                (_recur16616_
                                 _hd16653_
                                 _vars16619_
                                 _hd-depth16656_)))
                          (begin
                            (let ((_g17803_ (values-count _g17802_)))
                              (if (not (fx= _g17803_ 2))
                                  (error "Context expects 2 values" _g17803_)))
                            (let ((_hd16658_ (values-ref _g17802_ 0))
                                  (_vars16659_ (values-ref _g17802_ 1)))
                              (let ((_g17804_
                                     (_recur16616_
                                      _tl16654_
                                      _vars16659_
                                      _depth16620_)))
                                (begin
                                  (let ((_g17805_ (values-count _g17804_)))
                                    (if (not (fx= _g17805_ 2))
                                        (error "Context expects 2 values"
                                               _g17805_)))
                                  (let ((_tl16661_ (values-ref _g17804_ 0))
                                        (_vars16662_ (values-ref _g17804_ 1)))
                                    (let ()
                                      (values (cons* _tag16652_
                                                     _hd16658_
                                                     _tl16661_)
                                              _vars16662_))))))))))
                     (_e1666616673_ _rest16650_)
                     (_E1666816677_
                      (lambda ()
                        (_make-pair16665_ 'cons _hd16648_ _rest16650_)))
                     (_E1666716693_
                      (lambda ()
                        (if (gx#stx-pair? _e1666616673_)
                            (let ((_e1666916681_ (gx#syntax-e _e1666616673_)))
                              (let ((_hd1667016684_ (##car _e1666916681_))
                                    (_tl1667116686_ (##cdr _e1666916681_)))
                                (let* ((_rest-hd16689_ _hd1667016684_)
                                       (_rest-tl16691_ _tl1667116686_))
                                  (if '#t
                                      (if (gx#ellipsis? _rest-hd16689_)
                                          (_make-pair16665_
                                           'splice
                                           _hd16648_
                                           _rest-tl16691_)
                                          (_make-pair16665_
                                           'cons
                                           _hd16648_
                                           _rest16650_))
                                      (_E1666816677_)))))
                            (_E1666816677_)))))
                (_E1666716693_))
              (_E1662716636_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1662716636_)))))
                                (_E1662616697_))
                              (if (gx#stx-null? _e16618_)
                                  (values '(null) _vars16619_)
                                  (if (gx#stx-vector? _e16618_)
                                      (let ((_g17806_
                                             (_recur16616_
                                              (vector->list
                                               (gx#syntax-e _e16618_))
                                              _vars16619_
                                              _depth16620_)))
                                        (begin
                                          (let ((_g17807_
                                                 (values-count _g17806_)))
                                            (if (not (fx= _g17807_ 2))
                                                (error "Context expects 2 values"
                                                       _g17807_)))
                                          (let ((_e16701_
                                                 (values-ref _g17806_ 0))
                                                (_vars16702_
                                                 (values-ref _g17806_ 1)))
                                            (values (cons 'vector _e16701_)
                                                    _vars16702_))))
                                      (if (gx#stx-box? _e16618_)
                                          (let ((_g17808_
                                                 (_recur16616_
                                                  (unbox (gx#syntax-e
                                                          _e16618_))
                                                  _vars16619_
                                                  _depth16620_)))
                                            (begin
                                              (let ((_g17809_
                                                     (values-count _g17808_)))
                                                (if (not (fx= _g17809_ 2))
                                                    (error "Context expects 2 values"
                                                           _g17809_)))
                                              (let ((_e16704_
                                                     (values-ref _g17808_ 0))
                                                    (_vars16705_
                                                     (values-ref _g17808_ 1)))
                                                (values (cons 'box _e16704_)
                                                        _vars16705_))))
                                          (if (gx#stx-datum? _e16618_)
                                              (values (cons 'datum
                                                            (gx#stx-e
                                                             _e16618_))
                                                      _vars16619_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad pattern"
                                               _stx16535_
                                               _e16618_)))))))))))
          (let* ((_e1654516558_ _stx16535_)
                 (_E1654716562_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1654516558_)))
                 (_E1654616609_
                  (lambda ()
                    (if (gx#stx-pair? _e1654516558_)
                        (let ((_e1654816566_ (gx#syntax-e _e1654516558_)))
                          (let ((_hd1654916569_ (##car _e1654816566_))
                                (_tl1655016571_ (##cdr _e1654816566_)))
                            (if (gx#stx-pair? _tl1655016571_)
                                (let ((_e1655116574_
                                       (gx#syntax-e _tl1655016571_)))
                                  (let ((_hd1655216577_ (##car _e1655116574_))
                                        (_tl1655316579_ (##cdr _e1655116574_)))
                                    (let ((_expr16582_ _hd1655216577_))
                                      (if (gx#stx-pair? _tl1655316579_)
                                          (let ((_e1655416584_
                                                 (gx#syntax-e _tl1655316579_)))
                                            (let ((_hd1655516587_
                                                   (##car _e1655416584_))
                                                  (_tl1655616589_
                                                   (##cdr _e1655416584_)))
                                              (let* ((_ids16592_
                                                      _hd1655516587_)
                                                     (_clauses16594_
                                                      _tl1655616589_))
                                                (if '#t
                                                    (if (not (gx#identifier-list?
                                                              _ids16592_))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad template identifier list"
                                                         _stx16535_
                                                         _ids16592_)
                                                        (if (not (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _clauses16594_))
                    (gx#raise-syntax-error '#f '"Bad syntax" _stx16535_)
                    (let* ((_ids16596_ (gx#syntax->list _ids16592_))
                           (_clauses16598_ (gx#syntax->list _clauses16594_))
                           (_clause-ids16600_ (gx#gentemps _clauses16598_))
                           (_E16602_ (gx#genident__0))
                           (_target16604_ (gx#genident__0))
                           (_first16606_
                            (if (null? _clauses16598_)
                                _E16602_
                                (car _clause-ids16600_))))
                      (gx#stx-wrap-source
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _E16602_ '())
                                    (cons (gx#core-list
                                           'lambda%
                                           (cons _target16604_ '())
                                           (gx#core-list
                                            'raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _target16604_))
                                          '()))
                              '())
                        (_generate-body16541_
                         (_generate-bindings16540_
                          _target16604_
                          _ids16596_
                          _clauses16598_
                          _clause-ids16600_
                          _E16602_)
                         (cons _first16606_ (cons _expr16582_ '()))))
                       (gx#stx-source _stx16535_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1654716562_)))))
                                          (_E1654716562_)))))
                                (_E1654716562_))))
                        (_E1654716562_)))))
            (_E1654616609_)))))
    (begin
      (define gx#macro-expand-syntax-case__0
        (lambda (_stx17237_)
          (let* ((_identifier=?17239_ 'free-identifier=?)
                 (_unwrap-e17241_ 'syntax-e)
                 (_wrap-e17243_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda16533
             _stx17237_
             _identifier=?17239_
             _unwrap-e17241_
             _wrap-e17243_))))
      (define gx#macro-expand-syntax-case__1
        (lambda (_stx17245_ _identifier=?17246_)
          (let* ((_unwrap-e17248_ 'syntax-e) (_wrap-e17250_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda16533
             _stx17245_
             _identifier=?17246_
             _unwrap-e17248_
             _wrap-e17250_))))
      (define gx#macro-expand-syntax-case__2
        (lambda (_stx17252_ _identifier=?17253_ _unwrap-e17254_)
          (let ((_wrap-e17256_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda16533
             _stx17252_
             _identifier=?17253_
             _unwrap-e17254_
             _wrap-e17256_))))
      (define gx#macro-expand-syntax-case
        (lambda _g17811_
          (let ((_g17810_ (length _g17811_)))
            (cond ((fx= _g17810_ 1)
                   (apply gx#macro-expand-syntax-case__0 _g17811_))
                  ((fx= _g17810_ 2)
                   (apply gx#macro-expand-syntax-case__1 _g17811_))
                  ((fx= _g17810_ 3)
                   (apply gx#macro-expand-syntax-case__2 _g17811_))
                  ((fx= _g17810_ 4)
                   (apply gx#macro-expand-syntax-case__opt-lambda16533
                          _g17811_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-syntax-case
                    _g17811_))))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx16532_)
      (if (gx#identifier? _stx16532_)
          (##structure-instance-of?
           (gx#syntax-local-e__opt-lambda4511 _stx16532_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd16490_ . _rest16491_)
      (let ((_len16493_ (length _hd16490_)))
        (let _lp16495_ ((_rest16497_ _rest16491_))
          (let* ((_rest1649816506_ _rest16497_)
                 (_E1650116510_
                  (lambda () (error '"No clause matching" _rest1649816506_)))
                 (_else1650016514_ (lambda () '#!void))
                 (_K1650216520_
                  (lambda (_rest16517_ _hd16518_)
                    (if (fx= _len16493_ (length _hd16518_))
                        (_lp16495_ _rest16517_)
                        (gx#raise-syntax-error
                         '#f
                         '"Splice length mismatch"
                         _hd16518_)))))
            (if (##pair? _rest1649816506_)
                (let ((_hd1650316523_ (##car _rest1649816506_))
                      (_tl1650416525_ (##cdr _rest1649816506_)))
                  (let* ((_hd16528_ _hd1650316523_)
                         (_rest16530_ _tl1650416525_))
                    (_K1650216520_ _rest16530_ _hd16528_)))
                (_else1650016514_)))))))
  (define gx#syntax-split-splice
    (lambda (_stx16448_ _n16449_)
      (let _lp16451_ ((_rest16453_ _stx16448_) (_r16454_ '()))
        (if (gx#stx-pair? _rest16453_)
            (let* ((_g1645516462_ (gx#syntax-e _rest16453_))
                   (_E1645716466_
                    (lambda () (error '"No clause matching" _g1645516462_)))
                   (_K1645816472_
                    (lambda (_rest16469_ _hd16470_)
                      (_lp16451_ _rest16469_ (cons _hd16470_ _r16454_)))))
              (if (##pair? _g1645516462_)
                  (let ((_hd1645916475_ (##car _g1645516462_))
                        (_tl1646016477_ (##cdr _g1645516462_)))
                    (let* ((_hd16480_ _hd1645916475_)
                           (_rest16482_ _tl1646016477_))
                      (_K1645816472_ _rest16482_ _hd16480_)))
                  (_E1645716466_)))
            (let _lp16484_ ((_n16486_ _n16449_)
                            (_l16487_ _r16454_)
                            (_r16488_ _rest16453_))
              (if (null? _l16487_)
                  (values _l16487_ _r16488_)
                  (if (fxpositive? _n16486_)
                      (_lp16484_
                       (fx- _n16486_ '1)
                       (cdr _l16487_)
                       (cons (car _l16487_) _r16488_))
                      (values (reverse _l16487_) _r16488_)))))))))
