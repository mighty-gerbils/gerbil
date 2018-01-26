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
    (lambda _$args17787_
      (apply make-struct-instance gx#syntax-pattern::t _$args17787_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self17784_ _stx17785_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx17785_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx17266_)
      (letrec ((_generate17268_
                (lambda (_e17495_)
                  (letrec ((_BUG17497_
                            (lambda (_q17659_)
                              (error '"BUG: syntax; generate"
                                     _stx17266_
                                     _e17495_
                                     _q17659_)))
                           (_local-pattern-e17498_
                            (lambda (_pat17657_)
                              (gx#syntax-local-rewrap
                               (##structure-ref
                                _pat17657_
                                '2
                                gx#syntax-pattern::t
                                '#f))))
                           (_getvar17499_
                            (lambda (_q17654_ _vars17655_)
                              (assgetq _q17654_ _vars17655_ _BUG17497_)))
                           (_getarg17500_
                            (lambda (_arg17620_ _vars17621_)
                              (let* ((_arg1762217629_ _arg17620_)
                                     (_E1762417633_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _arg1762217629_)))
                                     (_K1762517642_
                                      (lambda (_e17636_ _tag17637_)
                                        (let ((_$e17639_ _tag17637_))
                                          (if (eq? _$e17639_ 'ref)
                                              (_getvar17499_
                                               _e17636_
                                               _vars17621_)
                                              (if (eq? _$e17639_ 'pattern)
                                                  (_local-pattern-e17498_
                                                   _e17636_)
                                                  (_BUG17497_ _arg17620_)))))))
                                (if (##pair? _arg1762217629_)
                                    (let ((_hd1762617645_
                                           (##car _arg1762217629_))
                                          (_tl1762717647_
                                           (##cdr _arg1762217629_)))
                                      (let* ((_tag17650_ _hd1762617645_)
                                             (_e17652_ _tl1762717647_))
                                        (_K1762517642_ _e17652_ _tag17650_)))
                                    (_E1762417633_))))))
                    (let _recur17502_ ((_e17504_ _e17495_) (_vars17505_ '()))
                      (let* ((_e1750617513_ _e17504_)
                             (_E1750817517_
                              (lambda ()
                                (error '"No clause matching" _e1750617513_)))
                             (_K1750917608_
                              (lambda (_body17520_ _tag17521_)
                                (let ((_$e17523_ _tag17521_))
                                  (if (eq? _$e17523_ 'datum)
                                      (gx#core-list 'quote _body17520_)
                                      (if (eq? _$e17523_ 'term)
                                          (let ((_id17526_
                                                 (gx#syntax-local-unwrap
                                                  _body17520_)))
                                            (if (##structure-direct-instance-of?
                                                 _id17526_
                                                 'gx#identifier-wrap::t)
                                                (let ((_marks17528_
                                                       (##direct-structure-ref
                                                        _id17526_
                                                        '3
                                                        gx#identifier-wrap::t
                                                        '#f)))
                                                  (if (null? _marks17528_)
                                                      (gx#core-list
                                                       'datum->syntax
                                                       '#f
                                                       (gx#core-list
                                                        'quote
                                                        _body17520_))
                                                      (gx#core-list
                                                       'datum->syntax
                                                       (gx#core-list
                                                        'quote-syntax
                                                        _body17520_)
                                                       (gx#core-list
                                                        'quote
                                                        _body17520_)
                                                       '#f
                                                       '#f)))
                                                (if (##structure-direct-instance-of?
                                                     _id17526_
                                                     'gx#syntax-quote::t)
                                                    (gx#core-list
                                                     'quote-syntax
                                                     _body17520_)
                                                    (_BUG17497_ _e17504_))))
                                          (if (eq? _$e17523_ 'pattern)
                                              (_local-pattern-e17498_
                                               _body17520_)
                                              (if (eq? _$e17523_ 'ref)
                                                  (_getvar17499_
                                                   _body17520_
                                                   _vars17505_)
                                                  (if (eq? _$e17523_ 'cons)
                                                      (gx#core-list
                                                       'cons
                                                       (_recur17502_
                                                        (car _body17520_)
                                                        _vars17505_)
                                                       (_recur17502_
                                                        (cdr _body17520_)
                                                        _vars17505_))
                                                      (if (eq? _$e17523_
                                                               'vector)
                                                          (gx#core-list
                                                           'list->vector
                                                           (_recur17502_
                                                            _body17520_
                                                            _vars17505_))
                                                          (if (eq? _$e17523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'box)
                      (gx#core-list
                       'box
                       (_recur17502_ _body17520_ _vars17505_))
                      (if (eq? _$e17523_ 'splice)
                          (let* ((_body1752917540_ _body17520_)
                                 (_E1753117544_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _body1752917540_)))
                                 (_K1753217582_
                                  (lambda (_args17547_
                                           _iv17548_
                                           _hd17549_
                                           _depth17550_)
                                    (let* ((_targets17556_
                                            (map (lambda (_g1755117553_)
                                                   (_getarg17500_
                                                    _g1755117553_
                                                    _vars17505_))
                                                 _args17547_))
                                           (_fold-in17558_
                                            (gx#gentemps _args17547_))
                                           (_fold-out17560_ (gx#genident__0))
                                           (_lambda-args17562_
                                            (foldr1 cons
                                                    (cons _fold-out17560_ '())
                                                    _fold-in17558_))
                                           (_lambda-body17579_
                                            (if (fx> _depth17550_ '1)
                                                (let ((_r-args17570_
                                                       (map (lambda (_arg17564_)
                                                              (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cdr _arg17564_)))
                    _args17547_))
              (_r-vars17571_
               (foldr (lambda (_arg17566_ _var17567_ _r17568_)
                        (cons (cons (cdr _arg17566_) _var17567_) _r17568_))
                      _vars17505_
                      _args17547_
                      _fold-in17558_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur17502_
                                                   (cons* 'splice
                                                          (fx- _depth17550_ '1)
                                                          _hd17549_
                                                          (cons 'var
                                                                _fold-out17560_)
                                                          _r-args17570_)
                                                   _r-vars17571_))
                                                (let ((_hd-vars17577_
                                                       (foldr (lambda (_arg17573_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _var17574_
                               _r17575_)
                        (cons (cons (cdr _arg17573_) _var17574_) _r17575_))
                      _vars17505_
                      _args17547_
                      _fold-in17558_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#core-list
                                                   'cons
                                                   (_recur17502_
                                                    _hd17549_
                                                    _hd-vars17577_)
                                                   _fold-out17560_)))))
                                      (gx#core-list
                                       'begin
                                       (if (fx> (length _targets17556_) '1)
                                           (gx#core-cons*
                                            'syntax-check-splice-targets
                                            _targets17556_)
                                           '#!void)
                                       (gx#core-cons*
                                        'foldr
                                        (gx#core-list
                                         'lambda%
                                         _lambda-args17562_
                                         _lambda-body17579_)
                                        (_recur17502_ _iv17548_ _vars17505_)
                                        _targets17556_))))))
                            (if (##pair? _body1752917540_)
                                (let ((_hd1753317585_ (##car _body1752917540_))
                                      (_tl1753417587_
                                       (##cdr _body1752917540_)))
                                  (let ((_depth17590_ _hd1753317585_))
                                    (if (##pair? _tl1753417587_)
                                        (let ((_hd1753517592_
                                               (##car _tl1753417587_))
                                              (_tl1753617594_
                                               (##cdr _tl1753417587_)))
                                          (let ((_hd17597_ _hd1753517592_))
                                            (if (##pair? _tl1753617594_)
                                                (let ((_hd1753717599_
                                                       (##car _tl1753617594_))
                                                      (_tl1753817601_
                                                       (##cdr _tl1753617594_)))
                                                  (let* ((_iv17604_
                                                          _hd1753717599_)
                                                         (_args17606_
                                                          _tl1753817601_))
                                                    (_K1753217582_
                                                     _args17606_
                                                     _iv17604_
                                                     _hd17597_
                                                     _depth17590_)))
                                                (_E1753117544_))))
                                        (_E1753117544_))))
                                (_E1753117544_)))
                          (if (eq? _$e17523_ 'var)
                              _body17520_
                              (_BUG17497_ _e17504_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (if (##pair? _e1750617513_)
                            (let ((_hd1751017611_ (##car _e1750617513_))
                                  (_tl1751117613_ (##cdr _e1750617513_)))
                              (let* ((_tag17616_ _hd1751017611_)
                                     (_body17618_ _tl1751117613_))
                                (_K1750917608_ _body17618_ _tag17616_)))
                            (_E1750817517_)))))))
               (_parse17269_
                (lambda (_e17310_)
                  (letrec ((_make-cons17312_
                            (lambda (_hd17487_ _tl17488_)
                              (let ((_g17789_ _hd17487_) (_g17791_ _tl17488_))
                                (begin
                                  (let ((_g17790_ (values-count _g17789_)))
                                    (if (not (fx= _g17790_ 2))
                                        (error "Context expects 2 values"
                                               _g17790_)))
                                  (let ((_g17792_ (values-count _g17791_)))
                                    (if (not (fx= _g17792_ 2))
                                        (error "Context expects 2 values"
                                               _g17792_)))
                                  (let ((_hd-e17490_ (values-ref _g17789_ 0))
                                        (_hd-vars17491_
                                         (values-ref _g17789_ 1)))
                                    (let ((_tl-e17492_ (values-ref _g17791_ 0))
                                          (_tl-vars17493_
                                           (values-ref _g17791_ 1)))
                                      (values (cons* 'cons
                                                     _hd-e17490_
                                                     _tl-e17492_)
                                              (append _hd-vars17491_
                                                      _tl-vars17493_))))))))
                           (_make-splice17313_
                            (lambda (_where17426_
                                     _depth17427_
                                     _hd17428_
                                     _tl17429_)
                              (let ((_g17793_ _hd17428_) (_g17795_ _tl17429_))
                                (begin
                                  (let ((_g17794_ (values-count _g17793_)))
                                    (if (not (fx= _g17794_ 2))
                                        (error "Context expects 2 values"
                                               _g17794_)))
                                  (let ((_g17796_ (values-count _g17795_)))
                                    (if (not (fx= _g17796_ 2))
                                        (error "Context expects 2 values"
                                               _g17796_)))
                                  (let ((_hd-e17431_ (values-ref _g17793_ 0))
                                        (_hd-vars17432_
                                         (values-ref _g17793_ 1)))
                                    (let ((_tl-e17433_ (values-ref _g17795_ 0))
                                          (_tl-vars17434_
                                           (values-ref _g17795_ 1)))
                                      (let _lp17436_ ((_rest17438_
                                                       _hd-vars17432_)
                                                      (_targets17439_ '())
                                                      (_vars17440_
                                                       _tl-vars17434_))
                                        (let* ((_rest1744117451_ _rest17438_)
                                               (_E1744417455_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _rest1744117451_)))
                                               (_else1744317459_
                                                (lambda ()
                                                  (if (null? _targets17439_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Misplaced ellipsis"
                                                       _stx17266_
                                                       _where17426_)
                                                      (values (cons* 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _depth17427_
                             _hd-e17431_
                             _tl-e17433_
                             _targets17439_)
                      _vars17440_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_K1744517468_
                                                (lambda (_rest17462_
                                                         _hd-pat17463_
                                                         _hd-depth*17464_)
                                                  (let ((_hd-depth17466_
                                                         (fx- _hd-depth*17464_
                                                              _depth17427_)))
                                                    (if (fxpositive?
                                                         _hd-depth17466_)
                                                        (_lp17436_
                                                         _rest17462_
                                                         (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd-pat17463_)
                       _targets17439_)
                 (cons (cons _hd-depth17466_ _hd-pat17463_) _vars17440_))
                (if (fxzero? _hd-depth17466_)
                    (_lp17436_
                     _rest17462_
                     (cons (cons 'pattern _hd-pat17463_) _targets17439_)
                     _vars17440_)
                    (gx#raise-syntax-error
                     '#f
                     '"Too many ellipses"
                     _stx17266_
                     _where17426_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1744117451_)
                                              (let ((_hd1744617471_
                                                     (##car _rest1744117451_))
                                                    (_tl1744717473_
                                                     (##cdr _rest1744117451_)))
                                                (if (##pair? _hd1744617471_)
                                                    (let ((_hd1744817476_
                                                           (##car _hd1744617471_))
                                                          (_tl1744917478_
                                                           (##cdr _hd1744617471_)))
                                                      (let* ((_hd-depth*17481_
                                                              _hd1744817476_)
                                                             (_hd-pat17483_
                                                              _tl1744917478_)
                                                             (_rest17485_
                                                              _tl1744717473_))
                                                        (_K1744517468_
                                                         _rest17485_
                                                         _hd-pat17483_
                                                         _hd-depth*17481_)))
                                                    (_else1744317459_)))
                                              (_else1744317459_))))))))))
                           (_recur17314_
                            (lambda (_e17319_ _is-e?17320_)
                              (if (_is-e?17320_ _e17319_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Mislpaced ellipsis"
                                   _stx17266_)
                                  (if (gx#syntax-local-pattern? _e17319_)
                                      (let* ((_pat17322_
                                              (gx#syntax-local-e__0 _e17319_))
                                             (_depth17324_
                                              (##structure-ref
                                               _pat17322_
                                               '3
                                               gx#syntax-pattern::t
                                               '#f)))
                                        (if (fxpositive? _depth17324_)
                                            (values (cons 'ref _pat17322_)
                                                    (cons (cons _depth17324_
                                                                _pat17322_)
                                                          '()))
                                            (values (cons 'pattern _pat17322_)
                                                    '())))
                                      (if (gx#identifier? _e17319_)
                                          (values (cons 'term _e17319_) '())
                                          (if (gx#stx-pair? _e17319_)
                                              (let* ((_e1732617333_ _e17319_)
                                                     (_E1732817337_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _e1732617333_)))
                                                     (_E1732717416_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e1732617333_)
                                                            (let ((_e1732917341_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e1732617333_)))
                      (let ((_hd1733017344_ (##car _e1732917341_))
                            (_tl1733117346_ (##cdr _e1732917341_)))
                        (let* ((_hd17349_ _hd1733017344_)
                               (_rest17351_ _tl1733117346_))
                          (if '#t
                              (if (_is-e?17320_ _hd17349_)
                                  (let* ((_e1735217359_ _rest17351_)
                                         (_E1735417363_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _stx17266_
                                             _e17319_)))
                                         (_E1735317377_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1735217359_)
                                                (let ((_e1735517367_
                                                       (gx#syntax-e
                                                        _e1735217359_)))
                                                  (let ((_hd1735617370_
                                                         (##car _e1735517367_))
                                                        (_tl1735717372_
                                                         (##cdr _e1735517367_)))
                                                    (let ((_rest17375_
                                                           _hd1735617370_))
                                                      (if (gx#stx-null?
                                                           _tl1735717372_)
                                                          (if '#t
                                                              (_recur17314_
                                                               _rest17375_
                                                               false)
                                                              (_E1735417363_))
                                                          (_E1735417363_)))))
                                                (_E1735417363_)))))
                                    (_E1735317377_))
                                  (let _lp17381_ ((_rest17383_ _rest17351_)
                                                  (_depth17384_ '0))
                                    (let* ((_e1738517392_ _rest17383_)
                                           (_E1738717396_
                                            (lambda ()
                                              (if (fxpositive? _depth17384_)
                                                  (_make-splice17313_
                                                   _e17319_
                                                   _depth17384_
                                                   (_recur17314_
                                                    _hd17349_
                                                    _is-e?17320_)
                                                   (_recur17314_
                                                    _rest17383_
                                                    _is-e?17320_))
                                                  (_make-cons17312_
                                                   (_recur17314_
                                                    _hd17349_
                                                    _is-e?17320_)
                                                   (_recur17314_
                                                    _rest17383_
                                                    _is-e?17320_)))))
                                           (_E1738617412_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1738517392_)
                                                  (let ((_e1738817400_
                                                         (gx#syntax-e
                                                          _e1738517392_)))
                                                    (let ((_hd1738917403_
                                                           (##car _e1738817400_))
                                                          (_tl1739017405_
                                                           (##cdr _e1738817400_)))
                                                      (let* ((_rest-hd17408_
                                                              _hd1738917403_)
                                                             (_rest-tl17410_
                                                              _tl1739017405_))
                                                        (if '#t
                                                            (if (_is-e?17320_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rest-hd17408_)
                        (_lp17381_ _rest-tl17410_ (fx+ _depth17384_ '1))
                        (if (fxpositive? _depth17384_)
                            (_make-splice17313_
                             _e17319_
                             _depth17384_
                             (_recur17314_ _hd17349_ _is-e?17320_)
                             (_recur17314_ _rest17383_ _is-e?17320_))
                            (_make-cons17312_
                             (_recur17314_ _hd17349_ _is-e?17320_)
                             (_recur17314_ _rest17383_ _is-e?17320_))))
                    (_E1738717396_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1738717396_)))))
                                      (_E1738617412_))))
                              (_E1732817337_)))))
                    (_E1732817337_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1732717416_))
                                              (if (gx#stx-vector? _e17319_)
                                                  (let ((_g17797_
                                                         (_recur17314_
                                                          (vector->list
                                                           (gx#stx-unwrap__0
                                                            _e17319_))
                                                          _is-e?17320_)))
                                                    (begin
                                                      (let ((_g17798_
                                                             (values-count
                                                              _g17797_)))
                                                        (if (not (fx= _g17798_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g17798_)))
              (let ((_e17420_ (values-ref _g17797_ 0))
                    (_vars17421_ (values-ref _g17797_ 1)))
                (values (cons 'vector _e17420_) _vars17421_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e17319_)
                                                      (let ((_g17799_
                                                             (_recur17314_
                                                              (unbox (gx#stx-unwrap__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e17319_))
                      _is-e?17320_)))
                (begin
                  (let ((_g17800_ (values-count _g17799_)))
                    (if (not (fx= _g17800_ 2))
                        (error "Context expects 2 values" _g17800_)))
                  (let ((_e17423_ (values-ref _g17799_ 0))
                        (_vars17424_ (values-ref _g17799_ 1)))
                    (values (cons 'box _e17423_) _vars17424_))))
              (values (cons 'datum _e17319_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    (let ((_g17801_ (_recur17314_ _e17310_ gx#ellipsis?)))
                      (begin
                        (let ((_g17802_ (values-count _g17801_)))
                          (if (not (fx= _g17802_ 2))
                              (error "Context expects 2 values" _g17802_)))
                        (let ((_tree17316_ (values-ref _g17801_ 0))
                              (_vars17317_ (values-ref _g17801_ 1)))
                          (if (null? _vars17317_)
                              _tree17316_
                              (gx#raise-syntax-error
                               '#f
                               '"Missing ellipsis"
                               _stx17266_
                               _vars17317_)))))))))
        (let* ((_e1727017280_ _stx17266_)
               (_E1727217284_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _stx17266_)))
               (_E1727117306_
                (lambda ()
                  (if (gx#stx-pair? _e1727017280_)
                      (let ((_e1727317288_ (gx#syntax-e _e1727017280_)))
                        (let ((_hd1727417291_ (##car _e1727317288_))
                              (_tl1727517293_ (##cdr _e1727317288_)))
                          (if (gx#stx-pair? _tl1727517293_)
                              (let ((_e1727617296_
                                     (gx#syntax-e _tl1727517293_)))
                                (let ((_hd1727717299_ (##car _e1727617296_))
                                      (_tl1727817301_ (##cdr _e1727617296_)))
                                  (let ((_form17304_ _hd1727717299_))
                                    (if (gx#stx-null? _tl1727817301_)
                                        (if '#t
                                            (gx#stx-wrap-source
                                             (_generate17268_
                                              (_parse17269_ _form17304_))
                                             (gx#stx-source _stx17266_))
                                            (_E1727217284_))
                                        (_E1727217284_)))))
                              (_E1727217284_))))
                      (_E1727217284_)))))
          (_E1727117306_)))))
  (begin
    (define gx#macro-expand-syntax-case__opt-lambda16536
      (lambda (_stx16538_ _identifier=?16539_ _unwrap-e16540_ _wrap-e16541_)
        (letrec ((_generate-bindings16543_
                  (lambda (_target17128_
                           _ids17129_
                           _clauses17130_
                           _clause-ids17131_
                           _E17132_)
                    (letrec ((_generate117134_
                              (lambda (_clause17233_ _clause-id17234_ _E17235_)
                                (cons (cons _clause-id17234_ '())
                                      (cons (gx#core-list
                                             'lambda%
                                             (cons _target17128_ '())
                                             (_generate-clause16545_
                                              _target17128_
                                              _ids17129_
                                              _clause17233_
                                              _E17235_))
                                            '())))))
                      (let _lp17136_ ((_rest17138_ _clauses17130_)
                                      (_rest-ids17139_ _clause-ids17131_)
                                      (_bindings17140_ '()))
                        (let* ((_rest1714117149_ _rest17138_)
                               (_E1714417153_
                                (lambda ()
                                  (error '"No clause matching"
                                         _rest1714117149_)))
                               (_else1714317157_ (lambda () _bindings17140_))
                               (_K1714517221_
                                (lambda (_rest17160_ _clause17161_)
                                  (let* ((_rest-ids1716217169_ _rest-ids17139_)
                                         (_E1716417173_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids1716217169_)))
                                         (_K1716517209_
                                          (lambda (_rest-ids17176_
                                                   _clause-id17177_)
                                            (let* ((_rest-ids1717817186_
                                                    _rest-ids17176_)
                                                   (_E1718117190_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _rest-ids1717817186_)))
                                                   (_else1718017194_
                                                    (lambda ()
                                                      (cons (_generate117134_
                                                             _clause17161_
                                                             _clause-id17177_
                                                             _E17132_)
                                                            _bindings17140_)))
                                                   (_K1718217199_
                                                    (lambda (_next-clause-id17197_)
                                                      (_lp17136_
                                                       _rest17160_
                                                       _rest-ids17176_
                                                       (cons (_generate117134_
                                                              _clause17161_
                                                              _clause-id17177_
                                                              _next-clause-id17197_)
                                                             _bindings17140_)))))
                                              (if (##pair? _rest-ids1717817186_)
                                                  (let ((_hd1718317202_
                                                         (##car _rest-ids1717817186_))
                                                        (_tl1718417204_
                                                         (##cdr _rest-ids1717817186_)))
                                                    (let ((_next-clause-id17207_
                                                           _hd1718317202_))
                                                      (_K1718217199_
                                                       _next-clause-id17207_)))
                                                  (_else1718017194_))))))
                                    (if (##pair? _rest-ids1716217169_)
                                        (let ((_hd1716617212_
                                               (##car _rest-ids1716217169_))
                                              (_tl1716717214_
                                               (##cdr _rest-ids1716217169_)))
                                          (let* ((_clause-id17217_
                                                  _hd1716617212_)
                                                 (_rest-ids17219_
                                                  _tl1716717214_))
                                            (_K1716517209_
                                             _rest-ids17219_
                                             _clause-id17217_)))
                                        (_E1716417173_))))))
                          (if (##pair? _rest1714117149_)
                              (let ((_hd1714617224_ (##car _rest1714117149_))
                                    (_tl1714717226_ (##cdr _rest1714117149_)))
                                (let* ((_clause17229_ _hd1714617224_)
                                       (_rest17231_ _tl1714717226_))
                                  (_K1714517221_ _rest17231_ _clause17229_)))
                              (_else1714317157_)))))))
                 (_generate-body16544_
                  (lambda (_bindings17088_ _body17089_)
                    (let _recur17091_ ((_rest17093_ _bindings17088_))
                      (let* ((_rest1709417102_ _rest17093_)
                             (_E1709717106_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1709417102_)))
                             (_else1709617110_ (lambda () _body17089_))
                             (_K1709817116_
                              (lambda (_rest17113_ _hd17114_)
                                (gx#core-list
                                 'let-values
                                 (cons _hd17114_ '())
                                 (_recur17091_ _rest17113_)))))
                        (if (##pair? _rest1709417102_)
                            (let ((_hd1709917119_ (##car _rest1709417102_))
                                  (_tl1710017121_ (##cdr _rest1709417102_)))
                              (let* ((_hd17124_ _hd1709917119_)
                                     (_rest17126_ _tl1710017121_))
                                (_K1709817116_ _rest17126_ _hd17124_)))
                            (_else1709617110_))))))
                 (_generate-clause16545_
                  (lambda (_target16951_ _ids16952_ _clause16953_ _E16954_)
                    (letrec ((_generate116956_
                              (lambda (_hd17043_ _fender17044_ _body17045_)
                                (let ((_g17803_
                                       (_parse-clause16547_
                                        _hd17043_
                                        _ids16952_)))
                                  (begin
                                    (let ((_g17804_ (values-count _g17803_)))
                                      (if (not (fx= _g17804_ 2))
                                          (error "Context expects 2 values"
                                                 _g17804_)))
                                    (let ((_e17047_ (values-ref _g17803_ 0))
                                          (_mvars17048_
                                           (values-ref _g17803_ 1)))
                                      (let* ((_pvars17050_
                                              (map gx#syntax-local-rewrap
                                                   (gx#gentemps _mvars17048_)))
                                             (_E17052_
                                              (cons _E16954_
                                                    (cons _target16951_ '())))
                                             (_K17085_
                                              (gx#core-list
                                               'lambda%
                                               _pvars17050_
                                               (gx#core-list
                                                'let-syntax
                                                (map (lambda (_mvar17054_
                                                              _pvar17055_)
                                                       (let* ((_mvar1705617063_
                                                               _mvar17054_)
                                                              (_E1705817067_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (error '"No clause matching" _mvar1705617063_)))
                      (_K1705917073_
                       (lambda (_depth17070_ _id17071_)
                         (cons _id17071_
                               (cons (gx#core-list
                                      'make-syntax-pattern
                                      (gx#core-list 'quote _id17071_)
                                      (gx#core-list 'quote _pvar17055_)
                                      _depth17070_)
                                     '())))))
                 (if (##pair? _mvar1705617063_)
                     (let ((_hd1706017076_ (##car _mvar1705617063_))
                           (_tl1706117078_ (##cdr _mvar1705617063_)))
                       (let* ((_id17081_ _hd1706017076_)
                              (_depth17083_ _tl1706117078_))
                         (_K1705917073_ _depth17083_ _id17081_)))
                     (_E1705817067_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _mvars17048_
                                                     _pvars17050_)
                                                (if (eq? _fender17044_ '#t)
                                                    _body17045_
                                                    (gx#core-list
                                                     'if
                                                     _fender17044_
                                                     _body17045_
                                                     _E17052_))))))
                                        (_generate-match16546_
                                         _hd17043_
                                         _target16951_
                                         _e17047_
                                         _mvars17048_
                                         _K17085_
                                         _E17052_))))))))
                      (let* ((_e1695716977_ _clause16953_)
                             (_E1696616981_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _e1695716977_)))
                             (_E1695917015_
                              (lambda ()
                                (if (gx#stx-pair? _e1695716977_)
                                    (let ((_e1696716985_
                                           (gx#syntax-e _e1695716977_)))
                                      (let ((_hd1696816988_
                                             (##car _e1696716985_))
                                            (_tl1696916990_
                                             (##cdr _e1696716985_)))
                                        (let ((_hd16993_ _hd1696816988_))
                                          (if (gx#stx-pair? _tl1696916990_)
                                              (let ((_e1697016995_
                                                     (gx#syntax-e
                                                      _tl1696916990_)))
                                                (let ((_hd1697116998_
                                                       (##car _e1697016995_))
                                                      (_tl1697217000_
                                                       (##cdr _e1697016995_)))
                                                  (let ((_fender17003_
                                                         _hd1697116998_))
                                                    (if (gx#stx-pair?
                                                         _tl1697217000_)
                                                        (let ((_e1697317005_
                                                               (gx#syntax-e
                                                                _tl1697217000_)))
                                                          (let ((_hd1697417008_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1697317005_))
                        (_tl1697517010_ (##cdr _e1697317005_)))
                    (let ((_body17013_ _hd1697417008_))
                      (if (gx#stx-null? _tl1697517010_)
                          (if '#t
                              (_generate116956_
                               _hd16993_
                               _fender17003_
                               _body17013_)
                              (_E1696616981_))
                          (_E1696616981_)))))
                (_E1696616981_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1696616981_)))))
                                    (_E1696616981_))))
                             (_E1695817039_
                              (lambda ()
                                (if (gx#stx-pair? _e1695716977_)
                                    (let ((_e1696017019_
                                           (gx#syntax-e _e1695716977_)))
                                      (let ((_hd1696117022_
                                             (##car _e1696017019_))
                                            (_tl1696217024_
                                             (##cdr _e1696017019_)))
                                        (let ((_hd17027_ _hd1696117022_))
                                          (if (gx#stx-pair? _tl1696217024_)
                                              (let ((_e1696317029_
                                                     (gx#syntax-e
                                                      _tl1696217024_)))
                                                (let ((_hd1696417032_
                                                       (##car _e1696317029_))
                                                      (_tl1696517034_
                                                       (##cdr _e1696317029_)))
                                                  (let ((_body17037_
                                                         _hd1696417032_))
                                                    (if (gx#stx-null?
                                                         _tl1696517034_)
                                                        (if '#t
                                                            (_generate116956_
                                                             _hd17027_
                                                             '#t
                                                             _body17037_)
                                                            (_E1695917015_))
                                                        (_E1695917015_)))))
                                              (_E1695917015_)))))
                                    (_E1695917015_)))))
                        (_E1695817039_)))))
                 (_generate-match16546_
                  (lambda (_where16710_
                           _target16711_
                           _hd16712_
                           _mvars16713_
                           _K16714_
                           _E16715_)
                    (letrec ((_BUG16717_
                              (lambda (_q16949_)
                                (error '"BUG: syntax-case; generate"
                                       _stx16538_
                                       _hd16712_
                                       _q16949_)))
                             (_recur16718_
                              (lambda (_e16803_
                                       _vars16804_
                                       _target16805_
                                       _E16806_
                                       _k16807_)
                                (let* ((_e1680816815_ _e16803_)
                                       (_E1681016819_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e1680816815_)))
                                       (_K1681116937_
                                        (lambda (_body16822_ _tag16823_)
                                          (let ((_$e16825_ _tag16823_))
                                            (if (eq? _$e16825_ 'any)
                                                (_k16807_ _vars16804_)
                                                (if (eq? _$e16825_ 'id)
                                                    (gx#core-list
                                                     'if
                                                     (gx#core-list
                                                      'identifier?
                                                      _target16805_)
                                                     (gx#core-list
                                                      'if
                                                      (gx#core-list
                                                       _identifier=?16539_
                                                       (gx#core-list
                                                        _wrap-e16541_
                                                        _body16822_)
                                                       _target16805_)
                                                      (_k16807_ _vars16804_)
                                                      _E16806_)
                                                     _E16806_)
                                                    (if (eq? _$e16825_ 'var)
                                                        (_k16807_
                                                         (cons (cons _body16822_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _target16805_)
                       _vars16804_))
                (if (eq? _$e16825_ 'cons)
                    (let ((_$e16828_ (gx#genident__1 'e))
                          (_$hd16829_ (gx#genident__1 'hd))
                          (_$tl16830_ (gx#genident__1 'tl)))
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _target16805_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$e16828_ '())
                                    (cons (gx#core-list
                                           _unwrap-e16540_
                                           _target16805_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$hd16829_ '())
                                     (cons (gx#core-list '##car _$e16828_)
                                           '()))
                               (cons (cons (cons _$tl16830_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$e16828_)
                                                 '()))
                                     '()))
                         (let* ((_body1683116838_ _body16822_)
                                (_E1683316842_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _body1683116838_)))
                                (_K1683416850_
                                 (lambda (_tl16845_ _hd16846_)
                                   (_recur16718_
                                    _hd16846_
                                    _vars16804_
                                    _$hd16829_
                                    _E16806_
                                    (lambda (_vars16848_)
                                      (_recur16718_
                                       _tl16845_
                                       _vars16848_
                                       _$tl16830_
                                       _E16806_
                                       _k16807_))))))
                           (if (##pair? _body1683116838_)
                               (let ((_hd1683516853_ (##car _body1683116838_))
                                     (_tl1683616855_ (##cdr _body1683116838_)))
                                 (let* ((_hd16858_ _hd1683516853_)
                                        (_tl16860_ _tl1683616855_))
                                   (_K1683416850_ _tl16860_ _hd16858_)))
                               (_E1683316842_)))))
                       _E16806_))
                    (if (eq? _$e16825_ 'splice)
                        (let* ((_body1686116868_ _body16822_)
                               (_E1686316872_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body1686116868_)))
                               (_K1686416921_
                                (lambda (_tl16875_ _hd16876_)
                                  (let* ((_rlen16878_
                                          (_splice-rlen16719_ _tl16875_))
                                         (_$target16880_
                                          (gx#genident__1 'target))
                                         (_$hd16882_ (gx#genident__1 'hd))
                                         (_$tl16884_ (gx#genident__1 'tl))
                                         (_$lp16886_ (gx#genident__1 'loop))
                                         (_$lp-e16888_ (gx#genident__1 'e))
                                         (_$lp-hd16890_
                                          (gx#genident__1 'lp-hd))
                                         (_$lp-tl16892_
                                          (gx#genident__1 'lp-tl))
                                         (_svars16894_
                                          (_splice-vars16720_ _hd16876_))
                                         (_lvars16896_
                                          (gx#gentemps _svars16894_))
                                         (_tlvars16898_
                                          (gx#gentemps _svars16894_))
                                         (_linit16902_
                                          (map (lambda (_var16900_)
                                                 (gx#core-list 'quote '()))
                                               _lvars16896_)))
                                    (letrec ((_make-loop16905_
                                              (lambda (_vars16907_)
                                                (gx#core-list
                                                 'letrec-values
                                                 (cons (cons (cons _$lp16886_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _$hd16882_ _lvars16896_)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-pair? _$hd16882_)
                             (gx#core-list
                              'let-values
                              (cons (cons (cons _$lp-e16888_ '())
                                          (cons (gx#core-list
                                                 _unwrap-e16540_
                                                 _$hd16882_)
                                                '()))
                                    '())
                              (gx#core-list
                               'let-values
                               (cons (cons (cons _$lp-hd16890_ '())
                                           (cons (gx#core-list
                                                  '##car
                                                  _$lp-e16888_)
                                                 '()))
                                     (cons (cons (cons _$lp-tl16892_ '())
                                                 (cons (gx#core-list
                                                        '##cdr
                                                        _$lp-e16888_)
                                                       '()))
                                           '()))
                               (_recur16718_
                                _hd16876_
                                '()
                                _$lp-hd16890_
                                _E16806_
                                (lambda (_hdvars16909_)
                                  (cons* _$lp16886_
                                         _$lp-tl16892_
                                         (map (lambda (_svar16911_ _lvar16912_)
                                                (gx#core-list
                                                 'cons
                                                 (assgetq _svar16911_
                                                          _hdvars16909_
                                                          _BUG16717_)
                                                 _lvar16912_))
                                              _svars16894_
                                              _lvars16896_))))))
                             (gx#core-list
                              'let-values
                              (map (lambda (_lvar16914_ _tlvar16915_)
                                     (cons (cons _tlvar16915_ '())
                                           (cons (gx#core-list
                                                  'reverse
                                                  _lvar16914_)
                                                 '())))
                                   _lvars16896_
                                   _tlvars16898_)
                              (_k16807_
                               (foldl (lambda (_svar16917_
                                               _tlvar16918_
                                               _r16919_)
                                        (cons (cons _svar16917_ _tlvar16918_)
                                              _r16919_))
                                      _vars16907_
                                      _svars16894_
                                      _tlvars16898_)))))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons* _$lp16886_
                                                        _$target16880_
                                                        _linit16902_)))))
                                      (gx#core-list
                                       'if
                                       (gx#core-list
                                        'stx-pair/null?
                                        _target16805_)
                                       (gx#core-list
                                        'if
                                        (gx#core-list
                                         'fx>=
                                         (gx#core-list
                                          'stx-length
                                          _target16805_)
                                         _rlen16878_)
                                        (gx#core-list
                                         'let-values
                                         (cons (cons (cons _$target16880_
                                                           (cons _$tl16884_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (gx#core-list
                                                            'syntax-split-splice
                                                            _target16805_
                                                            _rlen16878_)
                                                           '()))
                                               '())
                                         (_recur16718_
                                          _tl16875_
                                          _vars16804_
                                          _$tl16884_
                                          _E16806_
                                          _make-loop16905_))
                                        _E16806_)
                                       _E16806_))))))
                          (if (##pair? _body1686116868_)
                              (let ((_hd1686516924_ (##car _body1686116868_))
                                    (_tl1686616926_ (##cdr _body1686116868_)))
                                (let* ((_hd16929_ _hd1686516924_)
                                       (_tl16931_ _tl1686616926_))
                                  (_K1686416921_ _tl16931_ _hd16929_)))
                              (_E1686316872_)))
                        (if (eq? _$e16825_ 'null)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-null? _target16805_)
                             (_k16807_ _vars16804_)
                             _E16806_)
                            (if (eq? _$e16825_ 'vector)
                                (let ((_$e16933_ (gx#genident__1 'e)))
                                  (gx#core-list
                                   'if
                                   (gx#core-list 'stx-vector? _target16805_)
                                   (gx#core-list
                                    'let-values
                                    (cons (cons (cons _$e16933_ '())
                                                (cons (gx#core-list
                                                       'vector->list
                                                       (gx#core-list
                                                        _unwrap-e16540_
                                                        _target16805_))
                                                      '()))
                                          '())
                                    (_recur16718_
                                     _body16822_
                                     _vars16804_
                                     _$e16933_
                                     _E16806_
                                     _k16807_))
                                   _E16806_))
                                (if (eq? _$e16825_ 'box)
                                    (let ((_$e16935_ (gx#genident__1 'e)))
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-box? _target16805_)
                                       (gx#core-list
                                        'let-values
                                        (cons (cons (cons _$e16935_ '())
                                                    (cons (gx#core-list
                                                           'unbox
                                                           (gx#core-list
                                                            _unwrap-e16540_
                                                            _target16805_))
                                                          '()))
                                              '())
                                        (_recur16718_
                                         _body16822_
                                         _vars16804_
                                         _$e16935_
                                         _E16806_
                                         _k16807_))
                                       _E16806_))
                                    (if (eq? _$e16825_ 'datum)
                                        (gx#core-list
                                         'if
                                         (gx#core-list
                                          'stx-datum?
                                          _target16805_)
                                         (gx#core-list
                                          'if
                                          (gx#core-list
                                           'equal?
                                           (gx#core-list 'stx-e _target16805_)
                                           _body16822_)
                                          (_k16807_ _vars16804_)
                                          _E16806_)
                                         _E16806_)
                                        (_BUG16717_ _e16803_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (##pair? _e1680816815_)
                                      (let ((_hd1681216940_
                                             (##car _e1680816815_))
                                            (_tl1681316942_
                                             (##cdr _e1680816815_)))
                                        (let* ((_tag16945_ _hd1681216940_)
                                               (_body16947_ _tl1681316942_))
                                          (_K1681116937_
                                           _body16947_
                                           _tag16945_)))
                                      (_E1681016819_)))))
                             (_splice-rlen16719_
                              (lambda (_e16765_)
                                (let _lp16767_ ((_e16769_ _e16765_)
                                                (_n16770_ '0))
                                  (let* ((_e1677116778_ _e16769_)
                                         (_E1677316782_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1677116778_)))
                                         (_K1677416791_
                                          (lambda (_body16785_ _tag16786_)
                                            (let ((_$e16788_ _tag16786_))
                                              (if (eq? _$e16788_ 'splice)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Ambiguous pattern"
                                                   _stx16538_
                                                   _where16710_)
                                                  (if (eq? _$e16788_ 'cons)
                                                      (_lp16767_
                                                       (cdr _body16785_)
                                                       (fx+ _n16770_ '1))
                                                      _n16770_))))))
                                    (if (##pair? _e1677116778_)
                                        (let ((_hd1677516794_
                                               (##car _e1677116778_))
                                              (_tl1677616796_
                                               (##cdr _e1677116778_)))
                                          (let* ((_tag16799_ _hd1677516794_)
                                                 (_body16801_ _tl1677616796_))
                                            (_K1677416791_
                                             _body16801_
                                             _tag16799_)))
                                        (_E1677316782_))))))
                             (_splice-vars16720_
                              (lambda (_e16727_)
                                (let _recur16729_ ((_e16731_ _e16727_)
                                                   (_vars16732_ '()))
                                  (let* ((_e1673316740_ _e16731_)
                                         (_E1673516744_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1673316740_)))
                                         (_K1673616753_
                                          (lambda (_body16747_ _tag16748_)
                                            (let ((_$e16750_ _tag16748_))
                                              (if (eq? _$e16750_ 'var)
                                                  (cons _body16747_
                                                        _vars16732_)
                                                  (if (memq _$e16750_
                                                            '(cons splice))
                                                      (_recur16729_
                                                       (cdr _body16747_)
                                                       (_recur16729_
                                                        (car _body16747_)
                                                        _vars16732_))
                                                      (if (memq _$e16750_
                                                                '(vector box))
                                                          (_recur16729_
                                                           _body16747_
                                                           _vars16732_)
                                                          _vars16732_)))))))
                                    (if (##pair? _e1673316740_)
                                        (let ((_hd1673716756_
                                               (##car _e1673316740_))
                                              (_tl1673816758_
                                               (##cdr _e1673316740_)))
                                          (let* ((_tag16761_ _hd1673716756_)
                                                 (_body16763_ _tl1673816758_))
                                            (_K1673616753_
                                             _body16763_
                                             _tag16761_)))
                                        (_E1673516744_))))))
                             (_make-body16721_
                              (lambda (_vars16723_)
                                (cons _K16714_
                                      (map (lambda (_mvar16725_)
                                             (assgetq (car _mvar16725_)
                                                      _vars16723_
                                                      _BUG16717_))
                                           _mvars16713_)))))
                      (_recur16718_
                       _hd16712_
                       '()
                       _target16711_
                       _E16715_
                       _make-body16721_))))
                 (_parse-clause16547_
                  (lambda (_hd16616_ _ids16617_)
                    (let _recur16619_ ((_e16621_ _hd16616_)
                                       (_vars16622_ '())
                                       (_depth16623_ '0))
                      (if (gx#identifier? _e16621_)
                          (if (gx#underscore? _e16621_)
                              (values '(any) _vars16622_)
                              (if (gx#ellipsis? _e16621_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Misplaced ellipsis"
                                   _stx16538_
                                   _hd16616_)
                                  (if (find (lambda (_id16625_)
                                              (gx#bound-identifier=?
                                               _e16621_
                                               _id16625_))
                                            _ids16617_)
                                      (values (cons 'id _e16621_) _vars16622_)
                                      (if (find (lambda (_var16627_)
                                                  (gx#bound-identifier=?
                                                   _e16621_
                                                   (car _var16627_)))
                                                _vars16622_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Duplicate pattern variable"
                                           _stx16538_
                                           _e16621_)
                                          (values (cons 'var _e16621_)
                                                  (cons (cons _e16621_
                                                              _depth16623_)
                                                        _vars16622_))))))
                          (if (gx#stx-pair? _e16621_)
                              (let* ((_e1662816635_ _e16621_)
                                     (_E1663016639_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _e1662816635_)))
                                     (_E1662916700_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1662816635_)
                                            (let ((_e1663116643_
                                                   (gx#syntax-e
                                                    _e1662816635_)))
                                              (let ((_hd1663216646_
                                                     (##car _e1663116643_))
                                                    (_tl1663316648_
                                                     (##cdr _e1663116643_)))
                                                (let* ((_hd16651_
                                                        _hd1663216646_)
                                                       (_rest16653_
                                                        _tl1663316648_))
                                                  (if '#t
                                                      (let* ((_make-pair16668_
                                                              (lambda (_tag16655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd16656_
                               _tl16657_)
                        (let* ((_hd-depth16659_
                                (if (eq? _tag16655_ 'splice)
                                    (fx+ _depth16623_ '1)
                                    _depth16623_))
                               (_g17805_
                                (_recur16619_
                                 _hd16656_
                                 _vars16622_
                                 _hd-depth16659_)))
                          (begin
                            (let ((_g17806_ (values-count _g17805_)))
                              (if (not (fx= _g17806_ 2))
                                  (error "Context expects 2 values" _g17806_)))
                            (let ((_hd16661_ (values-ref _g17805_ 0))
                                  (_vars16662_ (values-ref _g17805_ 1)))
                              (let ((_g17807_
                                     (_recur16619_
                                      _tl16657_
                                      _vars16662_
                                      _depth16623_)))
                                (begin
                                  (let ((_g17808_ (values-count _g17807_)))
                                    (if (not (fx= _g17808_ 2))
                                        (error "Context expects 2 values"
                                               _g17808_)))
                                  (let ((_tl16664_ (values-ref _g17807_ 0))
                                        (_vars16665_ (values-ref _g17807_ 1)))
                                    (let ()
                                      (values (cons* _tag16655_
                                                     _hd16661_
                                                     _tl16664_)
                                              _vars16665_))))))))))
                     (_e1666916676_ _rest16653_)
                     (_E1667116680_
                      (lambda ()
                        (_make-pair16668_ 'cons _hd16651_ _rest16653_)))
                     (_E1667016696_
                      (lambda ()
                        (if (gx#stx-pair? _e1666916676_)
                            (let ((_e1667216684_ (gx#syntax-e _e1666916676_)))
                              (let ((_hd1667316687_ (##car _e1667216684_))
                                    (_tl1667416689_ (##cdr _e1667216684_)))
                                (let* ((_rest-hd16692_ _hd1667316687_)
                                       (_rest-tl16694_ _tl1667416689_))
                                  (if '#t
                                      (if (gx#ellipsis? _rest-hd16692_)
                                          (_make-pair16668_
                                           'splice
                                           _hd16651_
                                           _rest-tl16694_)
                                          (_make-pair16668_
                                           'cons
                                           _hd16651_
                                           _rest16653_))
                                      (_E1667116680_)))))
                            (_E1667116680_)))))
                (_E1667016696_))
              (_E1663016639_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1663016639_)))))
                                (_E1662916700_))
                              (if (gx#stx-null? _e16621_)
                                  (values '(null) _vars16622_)
                                  (if (gx#stx-vector? _e16621_)
                                      (let ((_g17809_
                                             (_recur16619_
                                              (vector->list
                                               (gx#syntax-e _e16621_))
                                              _vars16622_
                                              _depth16623_)))
                                        (begin
                                          (let ((_g17810_
                                                 (values-count _g17809_)))
                                            (if (not (fx= _g17810_ 2))
                                                (error "Context expects 2 values"
                                                       _g17810_)))
                                          (let ((_e16704_
                                                 (values-ref _g17809_ 0))
                                                (_vars16705_
                                                 (values-ref _g17809_ 1)))
                                            (values (cons 'vector _e16704_)
                                                    _vars16705_))))
                                      (if (gx#stx-box? _e16621_)
                                          (let ((_g17811_
                                                 (_recur16619_
                                                  (unbox (gx#syntax-e
                                                          _e16621_))
                                                  _vars16622_
                                                  _depth16623_)))
                                            (begin
                                              (let ((_g17812_
                                                     (values-count _g17811_)))
                                                (if (not (fx= _g17812_ 2))
                                                    (error "Context expects 2 values"
                                                           _g17812_)))
                                              (let ((_e16707_
                                                     (values-ref _g17811_ 0))
                                                    (_vars16708_
                                                     (values-ref _g17811_ 1)))
                                                (values (cons 'box _e16707_)
                                                        _vars16708_))))
                                          (if (gx#stx-datum? _e16621_)
                                              (values (cons 'datum
                                                            (gx#stx-e
                                                             _e16621_))
                                                      _vars16622_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad pattern"
                                               _stx16538_
                                               _e16621_)))))))))))
          (let* ((_e1654816561_ _stx16538_)
                 (_E1655016565_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1654816561_)))
                 (_E1654916612_
                  (lambda ()
                    (if (gx#stx-pair? _e1654816561_)
                        (let ((_e1655116569_ (gx#syntax-e _e1654816561_)))
                          (let ((_hd1655216572_ (##car _e1655116569_))
                                (_tl1655316574_ (##cdr _e1655116569_)))
                            (if (gx#stx-pair? _tl1655316574_)
                                (let ((_e1655416577_
                                       (gx#syntax-e _tl1655316574_)))
                                  (let ((_hd1655516580_ (##car _e1655416577_))
                                        (_tl1655616582_ (##cdr _e1655416577_)))
                                    (let ((_expr16585_ _hd1655516580_))
                                      (if (gx#stx-pair? _tl1655616582_)
                                          (let ((_e1655716587_
                                                 (gx#syntax-e _tl1655616582_)))
                                            (let ((_hd1655816590_
                                                   (##car _e1655716587_))
                                                  (_tl1655916592_
                                                   (##cdr _e1655716587_)))
                                              (let* ((_ids16595_
                                                      _hd1655816590_)
                                                     (_clauses16597_
                                                      _tl1655916592_))
                                                (if '#t
                                                    (if (not (gx#identifier-list?
                                                              _ids16595_))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad template identifier list"
                                                         _stx16538_
                                                         _ids16595_)
                                                        (if (not (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _clauses16597_))
                    (gx#raise-syntax-error '#f '"Bad syntax" _stx16538_)
                    (let* ((_ids16599_ (gx#syntax->list _ids16595_))
                           (_clauses16601_ (gx#syntax->list _clauses16597_))
                           (_clause-ids16603_ (gx#gentemps _clauses16601_))
                           (_E16605_ (gx#genident__0))
                           (_target16607_ (gx#genident__0))
                           (_first16609_
                            (if (null? _clauses16601_)
                                _E16605_
                                (car _clause-ids16603_))))
                      (gx#stx-wrap-source
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _E16605_ '())
                                    (cons (gx#core-list
                                           'lambda%
                                           (cons _target16607_ '())
                                           (gx#core-list
                                            'raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _target16607_))
                                          '()))
                              '())
                        (_generate-body16544_
                         (_generate-bindings16543_
                          _target16607_
                          _ids16599_
                          _clauses16601_
                          _clause-ids16603_
                          _E16605_)
                         (cons _first16609_ (cons _expr16585_ '()))))
                       (gx#stx-source _stx16538_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1655016565_)))))
                                          (_E1655016565_)))))
                                (_E1655016565_))))
                        (_E1655016565_)))))
            (_E1654916612_)))))
    (begin
      (define gx#macro-expand-syntax-case__0
        (lambda (_stx17240_)
          (let* ((_identifier=?17242_ 'free-identifier=?)
                 (_unwrap-e17244_ 'syntax-e)
                 (_wrap-e17246_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda16536
             _stx17240_
             _identifier=?17242_
             _unwrap-e17244_
             _wrap-e17246_))))
      (define gx#macro-expand-syntax-case__1
        (lambda (_stx17248_ _identifier=?17249_)
          (let* ((_unwrap-e17251_ 'syntax-e) (_wrap-e17253_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda16536
             _stx17248_
             _identifier=?17249_
             _unwrap-e17251_
             _wrap-e17253_))))
      (define gx#macro-expand-syntax-case__2
        (lambda (_stx17255_ _identifier=?17256_ _unwrap-e17257_)
          (let ((_wrap-e17259_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda16536
             _stx17255_
             _identifier=?17256_
             _unwrap-e17257_
             _wrap-e17259_))))
      (define gx#macro-expand-syntax-case
        (lambda _g17814_
          (let ((_g17813_ (length _g17814_)))
            (cond ((fx= _g17813_ 1)
                   (apply gx#macro-expand-syntax-case__0 _g17814_))
                  ((fx= _g17813_ 2)
                   (apply gx#macro-expand-syntax-case__1 _g17814_))
                  ((fx= _g17813_ 3)
                   (apply gx#macro-expand-syntax-case__2 _g17814_))
                  ((fx= _g17813_ 4)
                   (apply gx#macro-expand-syntax-case__opt-lambda16536
                          _g17814_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-syntax-case
                    _g17814_))))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx16535_)
      (if (gx#identifier? _stx16535_)
          (##structure-instance-of?
           (gx#syntax-local-e__opt-lambda4511 _stx16535_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd16493_ . _rest16494_)
      (let ((_len16496_ (length _hd16493_)))
        (let _lp16498_ ((_rest16500_ _rest16494_))
          (let* ((_rest1650116509_ _rest16500_)
                 (_E1650416513_
                  (lambda () (error '"No clause matching" _rest1650116509_)))
                 (_else1650316517_ (lambda () '#!void))
                 (_K1650516523_
                  (lambda (_rest16520_ _hd16521_)
                    (if (fx= _len16496_ (length _hd16521_))
                        (_lp16498_ _rest16520_)
                        (gx#raise-syntax-error
                         '#f
                         '"Splice length mismatch"
                         _hd16521_)))))
            (if (##pair? _rest1650116509_)
                (let ((_hd1650616526_ (##car _rest1650116509_))
                      (_tl1650716528_ (##cdr _rest1650116509_)))
                  (let* ((_hd16531_ _hd1650616526_)
                         (_rest16533_ _tl1650716528_))
                    (_K1650516523_ _rest16533_ _hd16531_)))
                (_else1650316517_)))))))
  (define gx#syntax-split-splice
    (lambda (_stx16451_ _n16452_)
      (let _lp16454_ ((_rest16456_ _stx16451_) (_r16457_ '()))
        (if (gx#stx-pair? _rest16456_)
            (let* ((_g1645816465_ (gx#syntax-e _rest16456_))
                   (_E1646016469_
                    (lambda () (error '"No clause matching" _g1645816465_)))
                   (_K1646116475_
                    (lambda (_rest16472_ _hd16473_)
                      (_lp16454_ _rest16472_ (cons _hd16473_ _r16457_)))))
              (if (##pair? _g1645816465_)
                  (let ((_hd1646216478_ (##car _g1645816465_))
                        (_tl1646316480_ (##cdr _g1645816465_)))
                    (let* ((_hd16483_ _hd1646216478_)
                           (_rest16485_ _tl1646316480_))
                      (_K1646116475_ _rest16485_ _hd16483_)))
                  (_E1646016469_)))
            (let _lp16487_ ((_n16489_ _n16452_)
                            (_l16490_ _r16457_)
                            (_r16491_ _rest16456_))
              (if (null? _l16490_)
                  (values _l16490_ _r16491_)
                  (if (fxpositive? _n16489_)
                      (_lp16487_
                       (fx- _n16489_ '1)
                       (cdr _l16490_)
                       (cons (car _l16490_) _r16491_))
                      (values (reverse _l16490_) _r16491_)))))))))
