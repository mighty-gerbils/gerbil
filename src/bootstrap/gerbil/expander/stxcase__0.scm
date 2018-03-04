(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#syntax-pattern::t
    (make-struct-type
     'gx#syntax-pattern::t
     gx#expander::t
     '2
     'syntax-pattern
     '()
     '#f
     '(id depth)))
  (define gx#syntax-pattern? (make-struct-predicate gx#syntax-pattern::t))
  (define gx#make-syntax-pattern
    (lambda _$args17926_
      (apply make-struct-instance gx#syntax-pattern::t _$args17926_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self17923_ _stx17924_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx17924_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx17405_)
      (letrec ((_generate17407_
                (lambda (_e17634_)
                  (letrec ((_BUG17636_
                            (lambda (_q17798_)
                              (error '"BUG: syntax; generate"
                                     _stx17405_
                                     _e17634_
                                     _q17798_)))
                           (_local-pattern-e17637_
                            (lambda (_pat17796_)
                              (gx#syntax-local-rewrap
                               (##structure-ref
                                _pat17796_
                                '2
                                gx#syntax-pattern::t
                                '#f))))
                           (_getvar17638_
                            (lambda (_q17793_ _vars17794_)
                              (assgetq _q17793_ _vars17794_ _BUG17636_)))
                           (_getarg17639_
                            (lambda (_arg17759_ _vars17760_)
                              (let* ((_arg1776117768_ _arg17759_)
                                     (_E1776317772_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _arg1776117768_)))
                                     (_K1776417781_
                                      (lambda (_e17775_ _tag17776_)
                                        (let ((_$e17778_ _tag17776_))
                                          (if (eq? _$e17778_ 'ref)
                                              (_getvar17638_
                                               _e17775_
                                               _vars17760_)
                                              (if (eq? _$e17778_ 'pattern)
                                                  (_local-pattern-e17637_
                                                   _e17775_)
                                                  (_BUG17636_ _arg17759_)))))))
                                (if (##pair? _arg1776117768_)
                                    (let ((_hd1776517784_
                                           (##car _arg1776117768_))
                                          (_tl1776617786_
                                           (##cdr _arg1776117768_)))
                                      (let* ((_tag17789_ _hd1776517784_)
                                             (_e17791_ _tl1776617786_))
                                        (_K1776417781_ _e17791_ _tag17789_)))
                                    (_E1776317772_))))))
                    (let _recur17641_ ((_e17643_ _e17634_) (_vars17644_ '()))
                      (let* ((_e1764517652_ _e17643_)
                             (_E1764717656_
                              (lambda ()
                                (error '"No clause matching" _e1764517652_)))
                             (_K1764817747_
                              (lambda (_body17659_ _tag17660_)
                                (let ((_$e17662_ _tag17660_))
                                  (if (eq? _$e17662_ 'datum)
                                      (gx#core-list 'quote _body17659_)
                                      (if (eq? _$e17662_ 'term)
                                          (let ((_id17665_
                                                 (gx#syntax-local-unwrap
                                                  _body17659_)))
                                            (if (##structure-direct-instance-of?
                                                 _id17665_
                                                 'gx#identifier-wrap::t)
                                                (let ((_marks17667_
                                                       (##direct-structure-ref
                                                        _id17665_
                                                        '3
                                                        gx#identifier-wrap::t
                                                        '#f)))
                                                  (if (null? _marks17667_)
                                                      (gx#core-list
                                                       'datum->syntax
                                                       '#f
                                                       (gx#core-list
                                                        'quote
                                                        _body17659_))
                                                      (gx#core-list
                                                       'datum->syntax
                                                       (gx#core-list
                                                        'quote-syntax
                                                        _body17659_)
                                                       (gx#core-list
                                                        'quote
                                                        _body17659_)
                                                       '#f
                                                       '#f)))
                                                (if (##structure-direct-instance-of?
                                                     _id17665_
                                                     'gx#syntax-quote::t)
                                                    (gx#core-list
                                                     'quote-syntax
                                                     _body17659_)
                                                    (_BUG17636_ _e17643_))))
                                          (if (eq? _$e17662_ 'pattern)
                                              (_local-pattern-e17637_
                                               _body17659_)
                                              (if (eq? _$e17662_ 'ref)
                                                  (_getvar17638_
                                                   _body17659_
                                                   _vars17644_)
                                                  (if (eq? _$e17662_ 'cons)
                                                      (gx#core-list
                                                       'cons
                                                       (_recur17641_
                                                        (car _body17659_)
                                                        _vars17644_)
                                                       (_recur17641_
                                                        (cdr _body17659_)
                                                        _vars17644_))
                                                      (if (eq? _$e17662_
                                                               'vector)
                                                          (gx#core-list
                                                           'list->vector
                                                           (_recur17641_
                                                            _body17659_
                                                            _vars17644_))
                                                          (if (eq? _$e17662_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'box)
                      (gx#core-list
                       'box
                       (_recur17641_ _body17659_ _vars17644_))
                      (if (eq? _$e17662_ 'splice)
                          (let* ((_body1766817679_ _body17659_)
                                 (_E1767017683_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _body1766817679_)))
                                 (_K1767117721_
                                  (lambda (_args17686_
                                           _iv17687_
                                           _hd17688_
                                           _depth17689_)
                                    (let* ((_targets17695_
                                            (map (lambda (_g1769017692_)
                                                   (_getarg17639_
                                                    _g1769017692_
                                                    _vars17644_))
                                                 _args17686_))
                                           (_fold-in17697_
                                            (gx#gentemps _args17686_))
                                           (_fold-out17699_ (gx#genident__0))
                                           (_lambda-args17701_
                                            (foldr1 cons
                                                    (cons _fold-out17699_ '())
                                                    _fold-in17697_))
                                           (_lambda-body17718_
                                            (if (fx> _depth17689_ '1)
                                                (let ((_r-args17709_
                                                       (map (lambda (_arg17703_)
                                                              (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cdr _arg17703_)))
                    _args17686_))
              (_r-vars17710_
               (foldr (lambda (_arg17705_ _var17706_ _r17707_)
                        (cons (cons (cdr _arg17705_) _var17706_) _r17707_))
                      _vars17644_
                      _args17686_
                      _fold-in17697_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur17641_
                                                   (cons* 'splice
                                                          (fx- _depth17689_ '1)
                                                          _hd17688_
                                                          (cons 'var
                                                                _fold-out17699_)
                                                          _r-args17709_)
                                                   _r-vars17710_))
                                                (let ((_hd-vars17716_
                                                       (foldr (lambda (_arg17712_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _var17713_
                               _r17714_)
                        (cons (cons (cdr _arg17712_) _var17713_) _r17714_))
                      _vars17644_
                      _args17686_
                      _fold-in17697_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#core-list
                                                   'cons
                                                   (_recur17641_
                                                    _hd17688_
                                                    _hd-vars17716_)
                                                   _fold-out17699_)))))
                                      (gx#core-list
                                       'begin
                                       (if (fx> (length _targets17695_) '1)
                                           (gx#core-cons*
                                            'syntax-check-splice-targets
                                            _targets17695_)
                                           '#!void)
                                       (gx#core-cons*
                                        'foldr
                                        (gx#core-list
                                         'lambda%
                                         _lambda-args17701_
                                         _lambda-body17718_)
                                        (_recur17641_ _iv17687_ _vars17644_)
                                        _targets17695_))))))
                            (if (##pair? _body1766817679_)
                                (let ((_hd1767217724_ (##car _body1766817679_))
                                      (_tl1767317726_
                                       (##cdr _body1766817679_)))
                                  (let ((_depth17729_ _hd1767217724_))
                                    (if (##pair? _tl1767317726_)
                                        (let ((_hd1767417731_
                                               (##car _tl1767317726_))
                                              (_tl1767517733_
                                               (##cdr _tl1767317726_)))
                                          (let ((_hd17736_ _hd1767417731_))
                                            (if (##pair? _tl1767517733_)
                                                (let ((_hd1767617738_
                                                       (##car _tl1767517733_))
                                                      (_tl1767717740_
                                                       (##cdr _tl1767517733_)))
                                                  (let* ((_iv17743_
                                                          _hd1767617738_)
                                                         (_args17745_
                                                          _tl1767717740_))
                                                    (_K1767117721_
                                                     _args17745_
                                                     _iv17743_
                                                     _hd17736_
                                                     _depth17729_)))
                                                (_E1767017683_))))
                                        (_E1767017683_))))
                                (_E1767017683_)))
                          (if (eq? _$e17662_ 'var)
                              _body17659_
                              (_BUG17636_ _e17643_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (if (##pair? _e1764517652_)
                            (let ((_hd1764917750_ (##car _e1764517652_))
                                  (_tl1765017752_ (##cdr _e1764517652_)))
                              (let* ((_tag17755_ _hd1764917750_)
                                     (_body17757_ _tl1765017752_))
                                (_K1764817747_ _body17757_ _tag17755_)))
                            (_E1764717656_)))))))
               (_parse17408_
                (lambda (_e17449_)
                  (letrec ((_make-cons17451_
                            (lambda (_hd17626_ _tl17627_)
                              (let ((_g17928_ _hd17626_) (_g17930_ _tl17627_))
                                (begin
                                  (let ((_g17929_ (values-count _g17928_)))
                                    (if (not (fx= _g17929_ 2))
                                        (error "Context expects 2 values"
                                               _g17929_)))
                                  (let ((_g17931_ (values-count _g17930_)))
                                    (if (not (fx= _g17931_ 2))
                                        (error "Context expects 2 values"
                                               _g17931_)))
                                  (let ((_hd-e17629_ (values-ref _g17928_ 0))
                                        (_hd-vars17630_
                                         (values-ref _g17928_ 1)))
                                    (let ((_tl-e17631_ (values-ref _g17930_ 0))
                                          (_tl-vars17632_
                                           (values-ref _g17930_ 1)))
                                      (values (cons* 'cons
                                                     _hd-e17629_
                                                     _tl-e17631_)
                                              (append _hd-vars17630_
                                                      _tl-vars17632_))))))))
                           (_make-splice17452_
                            (lambda (_where17565_
                                     _depth17566_
                                     _hd17567_
                                     _tl17568_)
                              (let ((_g17932_ _hd17567_) (_g17934_ _tl17568_))
                                (begin
                                  (let ((_g17933_ (values-count _g17932_)))
                                    (if (not (fx= _g17933_ 2))
                                        (error "Context expects 2 values"
                                               _g17933_)))
                                  (let ((_g17935_ (values-count _g17934_)))
                                    (if (not (fx= _g17935_ 2))
                                        (error "Context expects 2 values"
                                               _g17935_)))
                                  (let ((_hd-e17570_ (values-ref _g17932_ 0))
                                        (_hd-vars17571_
                                         (values-ref _g17932_ 1)))
                                    (let ((_tl-e17572_ (values-ref _g17934_ 0))
                                          (_tl-vars17573_
                                           (values-ref _g17934_ 1)))
                                      (let _lp17575_ ((_rest17577_
                                                       _hd-vars17571_)
                                                      (_targets17578_ '())
                                                      (_vars17579_
                                                       _tl-vars17573_))
                                        (let* ((_rest1758017590_ _rest17577_)
                                               (_E1758317594_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _rest1758017590_)))
                                               (_else1758217598_
                                                (lambda ()
                                                  (if (null? _targets17578_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Misplaced ellipsis"
                                                       _stx17405_
                                                       _where17565_)
                                                      (values (cons* 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _depth17566_
                             _hd-e17570_
                             _tl-e17572_
                             _targets17578_)
                      _vars17579_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_K1758417607_
                                                (lambda (_rest17601_
                                                         _hd-pat17602_
                                                         _hd-depth*17603_)
                                                  (let ((_hd-depth17605_
                                                         (fx- _hd-depth*17603_
                                                              _depth17566_)))
                                                    (if (fxpositive?
                                                         _hd-depth17605_)
                                                        (_lp17575_
                                                         _rest17601_
                                                         (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd-pat17602_)
                       _targets17578_)
                 (cons (cons _hd-depth17605_ _hd-pat17602_) _vars17579_))
                (if (fxzero? _hd-depth17605_)
                    (_lp17575_
                     _rest17601_
                     (cons (cons 'pattern _hd-pat17602_) _targets17578_)
                     _vars17579_)
                    (gx#raise-syntax-error
                     '#f
                     '"Too many ellipses"
                     _stx17405_
                     _where17565_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1758017590_)
                                              (let ((_hd1758517610_
                                                     (##car _rest1758017590_))
                                                    (_tl1758617612_
                                                     (##cdr _rest1758017590_)))
                                                (if (##pair? _hd1758517610_)
                                                    (let ((_hd1758717615_
                                                           (##car _hd1758517610_))
                                                          (_tl1758817617_
                                                           (##cdr _hd1758517610_)))
                                                      (let* ((_hd-depth*17620_
                                                              _hd1758717615_)
                                                             (_hd-pat17622_
                                                              _tl1758817617_)
                                                             (_rest17624_
                                                              _tl1758617612_))
                                                        (_K1758417607_
                                                         _rest17624_
                                                         _hd-pat17622_
                                                         _hd-depth*17620_)))
                                                    (_else1758217598_)))
                                              (_else1758217598_))))))))))
                           (_recur17453_
                            (lambda (_e17458_ _is-e?17459_)
                              (if (_is-e?17459_ _e17458_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Mislpaced ellipsis"
                                   _stx17405_)
                                  (if (gx#syntax-local-pattern? _e17458_)
                                      (let* ((_pat17461_
                                              (gx#syntax-local-e__0 _e17458_))
                                             (_depth17463_
                                              (##structure-ref
                                               _pat17461_
                                               '3
                                               gx#syntax-pattern::t
                                               '#f)))
                                        (if (fxpositive? _depth17463_)
                                            (values (cons 'ref _pat17461_)
                                                    (cons (cons _depth17463_
                                                                _pat17461_)
                                                          '()))
                                            (values (cons 'pattern _pat17461_)
                                                    '())))
                                      (if (gx#identifier? _e17458_)
                                          (values (cons 'term _e17458_) '())
                                          (if (gx#stx-pair? _e17458_)
                                              (let* ((_e1746517472_ _e17458_)
                                                     (_E1746717476_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _e1746517472_)))
                                                     (_E1746617555_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e1746517472_)
                                                            (let ((_e1746817480_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e1746517472_)))
                      (let ((_hd1746917483_ (##car _e1746817480_))
                            (_tl1747017485_ (##cdr _e1746817480_)))
                        (let* ((_hd17488_ _hd1746917483_)
                               (_rest17490_ _tl1747017485_))
                          (if '#t
                              (if (_is-e?17459_ _hd17488_)
                                  (let* ((_e1749117498_ _rest17490_)
                                         (_E1749317502_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _stx17405_
                                             _e17458_)))
                                         (_E1749217516_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1749117498_)
                                                (let ((_e1749417506_
                                                       (gx#syntax-e
                                                        _e1749117498_)))
                                                  (let ((_hd1749517509_
                                                         (##car _e1749417506_))
                                                        (_tl1749617511_
                                                         (##cdr _e1749417506_)))
                                                    (let ((_rest17514_
                                                           _hd1749517509_))
                                                      (if (gx#stx-null?
                                                           _tl1749617511_)
                                                          (if '#t
                                                              (_recur17453_
                                                               _rest17514_
                                                               false)
                                                              (_E1749317502_))
                                                          (_E1749317502_)))))
                                                (_E1749317502_)))))
                                    (_E1749217516_))
                                  (let _lp17520_ ((_rest17522_ _rest17490_)
                                                  (_depth17523_ '0))
                                    (let* ((_e1752417531_ _rest17522_)
                                           (_E1752617535_
                                            (lambda ()
                                              (if (fxpositive? _depth17523_)
                                                  (_make-splice17452_
                                                   _e17458_
                                                   _depth17523_
                                                   (_recur17453_
                                                    _hd17488_
                                                    _is-e?17459_)
                                                   (_recur17453_
                                                    _rest17522_
                                                    _is-e?17459_))
                                                  (_make-cons17451_
                                                   (_recur17453_
                                                    _hd17488_
                                                    _is-e?17459_)
                                                   (_recur17453_
                                                    _rest17522_
                                                    _is-e?17459_)))))
                                           (_E1752517551_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1752417531_)
                                                  (let ((_e1752717539_
                                                         (gx#syntax-e
                                                          _e1752417531_)))
                                                    (let ((_hd1752817542_
                                                           (##car _e1752717539_))
                                                          (_tl1752917544_
                                                           (##cdr _e1752717539_)))
                                                      (let* ((_rest-hd17547_
                                                              _hd1752817542_)
                                                             (_rest-tl17549_
                                                              _tl1752917544_))
                                                        (if '#t
                                                            (if (_is-e?17459_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rest-hd17547_)
                        (_lp17520_ _rest-tl17549_ (fx+ _depth17523_ '1))
                        (if (fxpositive? _depth17523_)
                            (_make-splice17452_
                             _e17458_
                             _depth17523_
                             (_recur17453_ _hd17488_ _is-e?17459_)
                             (_recur17453_ _rest17522_ _is-e?17459_))
                            (_make-cons17451_
                             (_recur17453_ _hd17488_ _is-e?17459_)
                             (_recur17453_ _rest17522_ _is-e?17459_))))
                    (_E1752617535_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1752617535_)))))
                                      (_E1752517551_))))
                              (_E1746717476_)))))
                    (_E1746717476_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1746617555_))
                                              (if (gx#stx-vector? _e17458_)
                                                  (let ((_g17936_
                                                         (_recur17453_
                                                          (vector->list
                                                           (gx#stx-unwrap__0
                                                            _e17458_))
                                                          _is-e?17459_)))
                                                    (begin
                                                      (let ((_g17937_
                                                             (values-count
                                                              _g17936_)))
                                                        (if (not (fx= _g17937_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g17937_)))
              (let ((_e17559_ (values-ref _g17936_ 0))
                    (_vars17560_ (values-ref _g17936_ 1)))
                (values (cons 'vector _e17559_) _vars17560_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e17458_)
                                                      (let ((_g17938_
                                                             (_recur17453_
                                                              (unbox (gx#stx-unwrap__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e17458_))
                      _is-e?17459_)))
                (begin
                  (let ((_g17939_ (values-count _g17938_)))
                    (if (not (fx= _g17939_ 2))
                        (error "Context expects 2 values" _g17939_)))
                  (let ((_e17562_ (values-ref _g17938_ 0))
                        (_vars17563_ (values-ref _g17938_ 1)))
                    (values (cons 'box _e17562_) _vars17563_))))
              (values (cons 'datum _e17458_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    (let ((_g17940_ (_recur17453_ _e17449_ gx#ellipsis?)))
                      (begin
                        (let ((_g17941_ (values-count _g17940_)))
                          (if (not (fx= _g17941_ 2))
                              (error "Context expects 2 values" _g17941_)))
                        (let ((_tree17455_ (values-ref _g17940_ 0))
                              (_vars17456_ (values-ref _g17940_ 1)))
                          (if (null? _vars17456_)
                              _tree17455_
                              (gx#raise-syntax-error
                               '#f
                               '"Missing ellipsis"
                               _stx17405_
                               _vars17456_)))))))))
        (let* ((_e1740917419_ _stx17405_)
               (_E1741117423_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _stx17405_)))
               (_E1741017445_
                (lambda ()
                  (if (gx#stx-pair? _e1740917419_)
                      (let ((_e1741217427_ (gx#syntax-e _e1740917419_)))
                        (let ((_hd1741317430_ (##car _e1741217427_))
                              (_tl1741417432_ (##cdr _e1741217427_)))
                          (if (gx#stx-pair? _tl1741417432_)
                              (let ((_e1741517435_
                                     (gx#syntax-e _tl1741417432_)))
                                (let ((_hd1741617438_ (##car _e1741517435_))
                                      (_tl1741717440_ (##cdr _e1741517435_)))
                                  (let ((_form17443_ _hd1741617438_))
                                    (if (gx#stx-null? _tl1741717440_)
                                        (if '#t
                                            (gx#stx-wrap-source
                                             (_generate17407_
                                              (_parse17408_ _form17443_))
                                             (gx#stx-source _stx17405_))
                                            (_E1741117423_))
                                        (_E1741117423_)))))
                              (_E1741117423_))))
                      (_E1741117423_)))))
          (_E1741017445_)))))
  (begin
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx16677_ _identifier=?16678_ _unwrap-e16679_ _wrap-e16680_)
        (letrec ((_generate-bindings16682_
                  (lambda (_target17267_
                           _ids17268_
                           _clauses17269_
                           _clause-ids17270_
                           _E17271_)
                    (letrec ((_generate117273_
                              (lambda (_clause17372_ _clause-id17373_ _E17374_)
                                (cons (cons _clause-id17373_ '())
                                      (cons (gx#core-list
                                             'lambda%
                                             (cons _target17267_ '())
                                             (_generate-clause16684_
                                              _target17267_
                                              _ids17268_
                                              _clause17372_
                                              _E17374_))
                                            '())))))
                      (let _lp17275_ ((_rest17277_ _clauses17269_)
                                      (_rest-ids17278_ _clause-ids17270_)
                                      (_bindings17279_ '()))
                        (let* ((_rest1728017288_ _rest17277_)
                               (_E1728317292_
                                (lambda ()
                                  (error '"No clause matching"
                                         _rest1728017288_)))
                               (_else1728217296_ (lambda () _bindings17279_))
                               (_K1728417360_
                                (lambda (_rest17299_ _clause17300_)
                                  (let* ((_rest-ids1730117308_ _rest-ids17278_)
                                         (_E1730317312_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids1730117308_)))
                                         (_K1730417348_
                                          (lambda (_rest-ids17315_
                                                   _clause-id17316_)
                                            (let* ((_rest-ids1731717325_
                                                    _rest-ids17315_)
                                                   (_E1732017329_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _rest-ids1731717325_)))
                                                   (_else1731917333_
                                                    (lambda ()
                                                      (cons (_generate117273_
                                                             _clause17300_
                                                             _clause-id17316_
                                                             _E17271_)
                                                            _bindings17279_)))
                                                   (_K1732117338_
                                                    (lambda (_next-clause-id17336_)
                                                      (_lp17275_
                                                       _rest17299_
                                                       _rest-ids17315_
                                                       (cons (_generate117273_
                                                              _clause17300_
                                                              _clause-id17316_
                                                              _next-clause-id17336_)
                                                             _bindings17279_)))))
                                              (if (##pair? _rest-ids1731717325_)
                                                  (let ((_hd1732217341_
                                                         (##car _rest-ids1731717325_))
                                                        (_tl1732317343_
                                                         (##cdr _rest-ids1731717325_)))
                                                    (let ((_next-clause-id17346_
                                                           _hd1732217341_))
                                                      (_K1732117338_
                                                       _next-clause-id17346_)))
                                                  (_else1731917333_))))))
                                    (if (##pair? _rest-ids1730117308_)
                                        (let ((_hd1730517351_
                                               (##car _rest-ids1730117308_))
                                              (_tl1730617353_
                                               (##cdr _rest-ids1730117308_)))
                                          (let* ((_clause-id17356_
                                                  _hd1730517351_)
                                                 (_rest-ids17358_
                                                  _tl1730617353_))
                                            (_K1730417348_
                                             _rest-ids17358_
                                             _clause-id17356_)))
                                        (_E1730317312_))))))
                          (if (##pair? _rest1728017288_)
                              (let ((_hd1728517363_ (##car _rest1728017288_))
                                    (_tl1728617365_ (##cdr _rest1728017288_)))
                                (let* ((_clause17368_ _hd1728517363_)
                                       (_rest17370_ _tl1728617365_))
                                  (_K1728417360_ _rest17370_ _clause17368_)))
                              (_else1728217296_)))))))
                 (_generate-body16683_
                  (lambda (_bindings17227_ _body17228_)
                    (let _recur17230_ ((_rest17232_ _bindings17227_))
                      (let* ((_rest1723317241_ _rest17232_)
                             (_E1723617245_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1723317241_)))
                             (_else1723517249_ (lambda () _body17228_))
                             (_K1723717255_
                              (lambda (_rest17252_ _hd17253_)
                                (gx#core-list
                                 'let-values
                                 (cons _hd17253_ '())
                                 (_recur17230_ _rest17252_)))))
                        (if (##pair? _rest1723317241_)
                            (let ((_hd1723817258_ (##car _rest1723317241_))
                                  (_tl1723917260_ (##cdr _rest1723317241_)))
                              (let* ((_hd17263_ _hd1723817258_)
                                     (_rest17265_ _tl1723917260_))
                                (_K1723717255_ _rest17265_ _hd17263_)))
                            (_else1723517249_))))))
                 (_generate-clause16684_
                  (lambda (_target17090_ _ids17091_ _clause17092_ _E17093_)
                    (letrec ((_generate117095_
                              (lambda (_hd17182_ _fender17183_ _body17184_)
                                (let ((_g17942_
                                       (_parse-clause16686_
                                        _hd17182_
                                        _ids17091_)))
                                  (begin
                                    (let ((_g17943_ (values-count _g17942_)))
                                      (if (not (fx= _g17943_ 2))
                                          (error "Context expects 2 values"
                                                 _g17943_)))
                                    (let ((_e17186_ (values-ref _g17942_ 0))
                                          (_mvars17187_
                                           (values-ref _g17942_ 1)))
                                      (let* ((_pvars17189_
                                              (map gx#syntax-local-rewrap
                                                   (gx#gentemps _mvars17187_)))
                                             (_E17191_
                                              (cons _E17093_
                                                    (cons _target17090_ '())))
                                             (_K17224_
                                              (gx#core-list
                                               'lambda%
                                               _pvars17189_
                                               (gx#core-list
                                                'let-syntax
                                                (map (lambda (_mvar17193_
                                                              _pvar17194_)
                                                       (let* ((_mvar1719517202_
                                                               _mvar17193_)
                                                              (_E1719717206_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (error '"No clause matching" _mvar1719517202_)))
                      (_K1719817212_
                       (lambda (_depth17209_ _id17210_)
                         (cons _id17210_
                               (cons (gx#core-list
                                      'make-syntax-pattern
                                      (gx#core-list 'quote _id17210_)
                                      (gx#core-list 'quote _pvar17194_)
                                      _depth17209_)
                                     '())))))
                 (if (##pair? _mvar1719517202_)
                     (let ((_hd1719917215_ (##car _mvar1719517202_))
                           (_tl1720017217_ (##cdr _mvar1719517202_)))
                       (let* ((_id17220_ _hd1719917215_)
                              (_depth17222_ _tl1720017217_))
                         (_K1719817212_ _depth17222_ _id17220_)))
                     (_E1719717206_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _mvars17187_
                                                     _pvars17189_)
                                                (if (eq? _fender17183_ '#t)
                                                    _body17184_
                                                    (gx#core-list
                                                     'if
                                                     _fender17183_
                                                     _body17184_
                                                     _E17191_))))))
                                        (_generate-match16685_
                                         _hd17182_
                                         _target17090_
                                         _e17186_
                                         _mvars17187_
                                         _K17224_
                                         _E17191_))))))))
                      (let* ((_e1709617116_ _clause17092_)
                             (_E1710517120_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _e1709617116_)))
                             (_E1709817154_
                              (lambda ()
                                (if (gx#stx-pair? _e1709617116_)
                                    (let ((_e1710617124_
                                           (gx#syntax-e _e1709617116_)))
                                      (let ((_hd1710717127_
                                             (##car _e1710617124_))
                                            (_tl1710817129_
                                             (##cdr _e1710617124_)))
                                        (let ((_hd17132_ _hd1710717127_))
                                          (if (gx#stx-pair? _tl1710817129_)
                                              (let ((_e1710917134_
                                                     (gx#syntax-e
                                                      _tl1710817129_)))
                                                (let ((_hd1711017137_
                                                       (##car _e1710917134_))
                                                      (_tl1711117139_
                                                       (##cdr _e1710917134_)))
                                                  (let ((_fender17142_
                                                         _hd1711017137_))
                                                    (if (gx#stx-pair?
                                                         _tl1711117139_)
                                                        (let ((_e1711217144_
                                                               (gx#syntax-e
                                                                _tl1711117139_)))
                                                          (let ((_hd1711317147_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1711217144_))
                        (_tl1711417149_ (##cdr _e1711217144_)))
                    (let ((_body17152_ _hd1711317147_))
                      (if (gx#stx-null? _tl1711417149_)
                          (if '#t
                              (_generate117095_
                               _hd17132_
                               _fender17142_
                               _body17152_)
                              (_E1710517120_))
                          (_E1710517120_)))))
                (_E1710517120_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1710517120_)))))
                                    (_E1710517120_))))
                             (_E1709717178_
                              (lambda ()
                                (if (gx#stx-pair? _e1709617116_)
                                    (let ((_e1709917158_
                                           (gx#syntax-e _e1709617116_)))
                                      (let ((_hd1710017161_
                                             (##car _e1709917158_))
                                            (_tl1710117163_
                                             (##cdr _e1709917158_)))
                                        (let ((_hd17166_ _hd1710017161_))
                                          (if (gx#stx-pair? _tl1710117163_)
                                              (let ((_e1710217168_
                                                     (gx#syntax-e
                                                      _tl1710117163_)))
                                                (let ((_hd1710317171_
                                                       (##car _e1710217168_))
                                                      (_tl1710417173_
                                                       (##cdr _e1710217168_)))
                                                  (let ((_body17176_
                                                         _hd1710317171_))
                                                    (if (gx#stx-null?
                                                         _tl1710417173_)
                                                        (if '#t
                                                            (_generate117095_
                                                             _hd17166_
                                                             '#t
                                                             _body17176_)
                                                            (_E1709817154_))
                                                        (_E1709817154_)))))
                                              (_E1709817154_)))))
                                    (_E1709817154_)))))
                        (_E1709717178_)))))
                 (_generate-match16685_
                  (lambda (_where16849_
                           _target16850_
                           _hd16851_
                           _mvars16852_
                           _K16853_
                           _E16854_)
                    (letrec ((_BUG16856_
                              (lambda (_q17088_)
                                (error '"BUG: syntax-case; generate"
                                       _stx16677_
                                       _hd16851_
                                       _q17088_)))
                             (_recur16857_
                              (lambda (_e16942_
                                       _vars16943_
                                       _target16944_
                                       _E16945_
                                       _k16946_)
                                (let* ((_e1694716954_ _e16942_)
                                       (_E1694916958_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e1694716954_)))
                                       (_K1695017076_
                                        (lambda (_body16961_ _tag16962_)
                                          (let ((_$e16964_ _tag16962_))
                                            (if (eq? _$e16964_ 'any)
                                                (_k16946_ _vars16943_)
                                                (if (eq? _$e16964_ 'id)
                                                    (gx#core-list
                                                     'if
                                                     (gx#core-list
                                                      'identifier?
                                                      _target16944_)
                                                     (gx#core-list
                                                      'if
                                                      (gx#core-list
                                                       _identifier=?16678_
                                                       (gx#core-list
                                                        _wrap-e16680_
                                                        _body16961_)
                                                       _target16944_)
                                                      (_k16946_ _vars16943_)
                                                      _E16945_)
                                                     _E16945_)
                                                    (if (eq? _$e16964_ 'var)
                                                        (_k16946_
                                                         (cons (cons _body16961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _target16944_)
                       _vars16943_))
                (if (eq? _$e16964_ 'cons)
                    (let ((_$e16967_ (gx#genident__1 'e))
                          (_$hd16968_ (gx#genident__1 'hd))
                          (_$tl16969_ (gx#genident__1 'tl)))
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _target16944_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$e16967_ '())
                                    (cons (gx#core-list
                                           _unwrap-e16679_
                                           _target16944_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$hd16968_ '())
                                     (cons (gx#core-list '##car _$e16967_)
                                           '()))
                               (cons (cons (cons _$tl16969_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$e16967_)
                                                 '()))
                                     '()))
                         (let* ((_body1697016977_ _body16961_)
                                (_E1697216981_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _body1697016977_)))
                                (_K1697316989_
                                 (lambda (_tl16984_ _hd16985_)
                                   (_recur16857_
                                    _hd16985_
                                    _vars16943_
                                    _$hd16968_
                                    _E16945_
                                    (lambda (_vars16987_)
                                      (_recur16857_
                                       _tl16984_
                                       _vars16987_
                                       _$tl16969_
                                       _E16945_
                                       _k16946_))))))
                           (if (##pair? _body1697016977_)
                               (let ((_hd1697416992_ (##car _body1697016977_))
                                     (_tl1697516994_ (##cdr _body1697016977_)))
                                 (let* ((_hd16997_ _hd1697416992_)
                                        (_tl16999_ _tl1697516994_))
                                   (_K1697316989_ _tl16999_ _hd16997_)))
                               (_E1697216981_)))))
                       _E16945_))
                    (if (eq? _$e16964_ 'splice)
                        (let* ((_body1700017007_ _body16961_)
                               (_E1700217011_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body1700017007_)))
                               (_K1700317060_
                                (lambda (_tl17014_ _hd17015_)
                                  (let* ((_rlen17017_
                                          (_splice-rlen16858_ _tl17014_))
                                         (_$target17019_
                                          (gx#genident__1 'target))
                                         (_$hd17021_ (gx#genident__1 'hd))
                                         (_$tl17023_ (gx#genident__1 'tl))
                                         (_$lp17025_ (gx#genident__1 'loop))
                                         (_$lp-e17027_ (gx#genident__1 'e))
                                         (_$lp-hd17029_
                                          (gx#genident__1 'lp-hd))
                                         (_$lp-tl17031_
                                          (gx#genident__1 'lp-tl))
                                         (_svars17033_
                                          (_splice-vars16859_ _hd17015_))
                                         (_lvars17035_
                                          (gx#gentemps _svars17033_))
                                         (_tlvars17037_
                                          (gx#gentemps _svars17033_))
                                         (_linit17041_
                                          (map (lambda (_var17039_)
                                                 (gx#core-list 'quote '()))
                                               _lvars17035_)))
                                    (letrec ((_make-loop17044_
                                              (lambda (_vars17046_)
                                                (gx#core-list
                                                 'letrec-values
                                                 (cons (cons (cons _$lp17025_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _$hd17021_ _lvars17035_)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-pair? _$hd17021_)
                             (gx#core-list
                              'let-values
                              (cons (cons (cons _$lp-e17027_ '())
                                          (cons (gx#core-list
                                                 _unwrap-e16679_
                                                 _$hd17021_)
                                                '()))
                                    '())
                              (gx#core-list
                               'let-values
                               (cons (cons (cons _$lp-hd17029_ '())
                                           (cons (gx#core-list
                                                  '##car
                                                  _$lp-e17027_)
                                                 '()))
                                     (cons (cons (cons _$lp-tl17031_ '())
                                                 (cons (gx#core-list
                                                        '##cdr
                                                        _$lp-e17027_)
                                                       '()))
                                           '()))
                               (_recur16857_
                                _hd17015_
                                '()
                                _$lp-hd17029_
                                _E16945_
                                (lambda (_hdvars17048_)
                                  (cons* _$lp17025_
                                         _$lp-tl17031_
                                         (map (lambda (_svar17050_ _lvar17051_)
                                                (gx#core-list
                                                 'cons
                                                 (assgetq _svar17050_
                                                          _hdvars17048_
                                                          _BUG16856_)
                                                 _lvar17051_))
                                              _svars17033_
                                              _lvars17035_))))))
                             (gx#core-list
                              'let-values
                              (map (lambda (_lvar17053_ _tlvar17054_)
                                     (cons (cons _tlvar17054_ '())
                                           (cons (gx#core-list
                                                  'reverse
                                                  _lvar17053_)
                                                 '())))
                                   _lvars17035_
                                   _tlvars17037_)
                              (_k16946_
                               (foldl (lambda (_svar17056_
                                               _tlvar17057_
                                               _r17058_)
                                        (cons (cons _svar17056_ _tlvar17057_)
                                              _r17058_))
                                      _vars17046_
                                      _svars17033_
                                      _tlvars17037_)))))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons* _$lp17025_
                                                        _$target17019_
                                                        _linit17041_)))))
                                      (gx#core-list
                                       'if
                                       (gx#core-list
                                        'stx-pair/null?
                                        _target16944_)
                                       (gx#core-list
                                        'if
                                        (gx#core-list
                                         'fx>=
                                         (gx#core-list
                                          'stx-length
                                          _target16944_)
                                         _rlen17017_)
                                        (gx#core-list
                                         'let-values
                                         (cons (cons (cons _$target17019_
                                                           (cons _$tl17023_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (gx#core-list
                                                            'syntax-split-splice
                                                            _target16944_
                                                            _rlen17017_)
                                                           '()))
                                               '())
                                         (_recur16857_
                                          _tl17014_
                                          _vars16943_
                                          _$tl17023_
                                          _E16945_
                                          _make-loop17044_))
                                        _E16945_)
                                       _E16945_))))))
                          (if (##pair? _body1700017007_)
                              (let ((_hd1700417063_ (##car _body1700017007_))
                                    (_tl1700517065_ (##cdr _body1700017007_)))
                                (let* ((_hd17068_ _hd1700417063_)
                                       (_tl17070_ _tl1700517065_))
                                  (_K1700317060_ _tl17070_ _hd17068_)))
                              (_E1700217011_)))
                        (if (eq? _$e16964_ 'null)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-null? _target16944_)
                             (_k16946_ _vars16943_)
                             _E16945_)
                            (if (eq? _$e16964_ 'vector)
                                (let ((_$e17072_ (gx#genident__1 'e)))
                                  (gx#core-list
                                   'if
                                   (gx#core-list 'stx-vector? _target16944_)
                                   (gx#core-list
                                    'let-values
                                    (cons (cons (cons _$e17072_ '())
                                                (cons (gx#core-list
                                                       'vector->list
                                                       (gx#core-list
                                                        _unwrap-e16679_
                                                        _target16944_))
                                                      '()))
                                          '())
                                    (_recur16857_
                                     _body16961_
                                     _vars16943_
                                     _$e17072_
                                     _E16945_
                                     _k16946_))
                                   _E16945_))
                                (if (eq? _$e16964_ 'box)
                                    (let ((_$e17074_ (gx#genident__1 'e)))
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-box? _target16944_)
                                       (gx#core-list
                                        'let-values
                                        (cons (cons (cons _$e17074_ '())
                                                    (cons (gx#core-list
                                                           'unbox
                                                           (gx#core-list
                                                            _unwrap-e16679_
                                                            _target16944_))
                                                          '()))
                                              '())
                                        (_recur16857_
                                         _body16961_
                                         _vars16943_
                                         _$e17074_
                                         _E16945_
                                         _k16946_))
                                       _E16945_))
                                    (if (eq? _$e16964_ 'datum)
                                        (gx#core-list
                                         'if
                                         (gx#core-list
                                          'stx-datum?
                                          _target16944_)
                                         (gx#core-list
                                          'if
                                          (gx#core-list
                                           'equal?
                                           (gx#core-list 'stx-e _target16944_)
                                           _body16961_)
                                          (_k16946_ _vars16943_)
                                          _E16945_)
                                         _E16945_)
                                        (_BUG16856_ _e16942_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (##pair? _e1694716954_)
                                      (let ((_hd1695117079_
                                             (##car _e1694716954_))
                                            (_tl1695217081_
                                             (##cdr _e1694716954_)))
                                        (let* ((_tag17084_ _hd1695117079_)
                                               (_body17086_ _tl1695217081_))
                                          (_K1695017076_
                                           _body17086_
                                           _tag17084_)))
                                      (_E1694916958_)))))
                             (_splice-rlen16858_
                              (lambda (_e16904_)
                                (let _lp16906_ ((_e16908_ _e16904_)
                                                (_n16909_ '0))
                                  (let* ((_e1691016917_ _e16908_)
                                         (_E1691216921_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1691016917_)))
                                         (_K1691316930_
                                          (lambda (_body16924_ _tag16925_)
                                            (let ((_$e16927_ _tag16925_))
                                              (if (eq? _$e16927_ 'splice)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Ambiguous pattern"
                                                   _stx16677_
                                                   _where16849_)
                                                  (if (eq? _$e16927_ 'cons)
                                                      (_lp16906_
                                                       (cdr _body16924_)
                                                       (fx+ _n16909_ '1))
                                                      _n16909_))))))
                                    (if (##pair? _e1691016917_)
                                        (let ((_hd1691416933_
                                               (##car _e1691016917_))
                                              (_tl1691516935_
                                               (##cdr _e1691016917_)))
                                          (let* ((_tag16938_ _hd1691416933_)
                                                 (_body16940_ _tl1691516935_))
                                            (_K1691316930_
                                             _body16940_
                                             _tag16938_)))
                                        (_E1691216921_))))))
                             (_splice-vars16859_
                              (lambda (_e16866_)
                                (let _recur16868_ ((_e16870_ _e16866_)
                                                   (_vars16871_ '()))
                                  (let* ((_e1687216879_ _e16870_)
                                         (_E1687416883_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1687216879_)))
                                         (_K1687516892_
                                          (lambda (_body16886_ _tag16887_)
                                            (let ((_$e16889_ _tag16887_))
                                              (if (eq? _$e16889_ 'var)
                                                  (cons _body16886_
                                                        _vars16871_)
                                                  (if (memq _$e16889_
                                                            '(cons splice))
                                                      (_recur16868_
                                                       (cdr _body16886_)
                                                       (_recur16868_
                                                        (car _body16886_)
                                                        _vars16871_))
                                                      (if (memq _$e16889_
                                                                '(vector box))
                                                          (_recur16868_
                                                           _body16886_
                                                           _vars16871_)
                                                          _vars16871_)))))))
                                    (if (##pair? _e1687216879_)
                                        (let ((_hd1687616895_
                                               (##car _e1687216879_))
                                              (_tl1687716897_
                                               (##cdr _e1687216879_)))
                                          (let* ((_tag16900_ _hd1687616895_)
                                                 (_body16902_ _tl1687716897_))
                                            (_K1687516892_
                                             _body16902_
                                             _tag16900_)))
                                        (_E1687416883_))))))
                             (_make-body16860_
                              (lambda (_vars16862_)
                                (cons _K16853_
                                      (map (lambda (_mvar16864_)
                                             (assgetq (car _mvar16864_)
                                                      _vars16862_
                                                      _BUG16856_))
                                           _mvars16852_)))))
                      (_recur16857_
                       _hd16851_
                       '()
                       _target16850_
                       _E16854_
                       _make-body16860_))))
                 (_parse-clause16686_
                  (lambda (_hd16755_ _ids16756_)
                    (let _recur16758_ ((_e16760_ _hd16755_)
                                       (_vars16761_ '())
                                       (_depth16762_ '0))
                      (if (gx#identifier? _e16760_)
                          (if (gx#underscore? _e16760_)
                              (values '(any) _vars16761_)
                              (if (gx#ellipsis? _e16760_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Misplaced ellipsis"
                                   _stx16677_
                                   _hd16755_)
                                  (if (find (lambda (_id16764_)
                                              (gx#bound-identifier=?
                                               _e16760_
                                               _id16764_))
                                            _ids16756_)
                                      (values (cons 'id _e16760_) _vars16761_)
                                      (if (find (lambda (_var16766_)
                                                  (gx#bound-identifier=?
                                                   _e16760_
                                                   (car _var16766_)))
                                                _vars16761_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Duplicate pattern variable"
                                           _stx16677_
                                           _e16760_)
                                          (values (cons 'var _e16760_)
                                                  (cons (cons _e16760_
                                                              _depth16762_)
                                                        _vars16761_))))))
                          (if (gx#stx-pair? _e16760_)
                              (let* ((_e1676716774_ _e16760_)
                                     (_E1676916778_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _e1676716774_)))
                                     (_E1676816839_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1676716774_)
                                            (let ((_e1677016782_
                                                   (gx#syntax-e
                                                    _e1676716774_)))
                                              (let ((_hd1677116785_
                                                     (##car _e1677016782_))
                                                    (_tl1677216787_
                                                     (##cdr _e1677016782_)))
                                                (let* ((_hd16790_
                                                        _hd1677116785_)
                                                       (_rest16792_
                                                        _tl1677216787_))
                                                  (if '#t
                                                      (let* ((_make-pair16807_
                                                              (lambda (_tag16794_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd16795_
                               _tl16796_)
                        (let* ((_hd-depth16798_
                                (if (eq? _tag16794_ 'splice)
                                    (fx+ _depth16762_ '1)
                                    _depth16762_))
                               (_g17944_
                                (_recur16758_
                                 _hd16795_
                                 _vars16761_
                                 _hd-depth16798_)))
                          (begin
                            (let ((_g17945_ (values-count _g17944_)))
                              (if (not (fx= _g17945_ 2))
                                  (error "Context expects 2 values" _g17945_)))
                            (let ((_hd16800_ (values-ref _g17944_ 0))
                                  (_vars16801_ (values-ref _g17944_ 1)))
                              (let ((_g17946_
                                     (_recur16758_
                                      _tl16796_
                                      _vars16801_
                                      _depth16762_)))
                                (begin
                                  (let ((_g17947_ (values-count _g17946_)))
                                    (if (not (fx= _g17947_ 2))
                                        (error "Context expects 2 values"
                                               _g17947_)))
                                  (let ((_tl16803_ (values-ref _g17946_ 0))
                                        (_vars16804_ (values-ref _g17946_ 1)))
                                    (let ()
                                      (values (cons* _tag16794_
                                                     _hd16800_
                                                     _tl16803_)
                                              _vars16804_))))))))))
                     (_e1680816815_ _rest16792_)
                     (_E1681016819_
                      (lambda ()
                        (_make-pair16807_ 'cons _hd16790_ _rest16792_)))
                     (_E1680916835_
                      (lambda ()
                        (if (gx#stx-pair? _e1680816815_)
                            (let ((_e1681116823_ (gx#syntax-e _e1680816815_)))
                              (let ((_hd1681216826_ (##car _e1681116823_))
                                    (_tl1681316828_ (##cdr _e1681116823_)))
                                (let* ((_rest-hd16831_ _hd1681216826_)
                                       (_rest-tl16833_ _tl1681316828_))
                                  (if '#t
                                      (if (gx#ellipsis? _rest-hd16831_)
                                          (_make-pair16807_
                                           'splice
                                           _hd16790_
                                           _rest-tl16833_)
                                          (_make-pair16807_
                                           'cons
                                           _hd16790_
                                           _rest16792_))
                                      (_E1681016819_)))))
                            (_E1681016819_)))))
                (_E1680916835_))
              (_E1676916778_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1676916778_)))))
                                (_E1676816839_))
                              (if (gx#stx-null? _e16760_)
                                  (values '(null) _vars16761_)
                                  (if (gx#stx-vector? _e16760_)
                                      (let ((_g17948_
                                             (_recur16758_
                                              (vector->list
                                               (gx#syntax-e _e16760_))
                                              _vars16761_
                                              _depth16762_)))
                                        (begin
                                          (let ((_g17949_
                                                 (values-count _g17948_)))
                                            (if (not (fx= _g17949_ 2))
                                                (error "Context expects 2 values"
                                                       _g17949_)))
                                          (let ((_e16843_
                                                 (values-ref _g17948_ 0))
                                                (_vars16844_
                                                 (values-ref _g17948_ 1)))
                                            (values (cons 'vector _e16843_)
                                                    _vars16844_))))
                                      (if (gx#stx-box? _e16760_)
                                          (let ((_g17950_
                                                 (_recur16758_
                                                  (unbox (gx#syntax-e
                                                          _e16760_))
                                                  _vars16761_
                                                  _depth16762_)))
                                            (begin
                                              (let ((_g17951_
                                                     (values-count _g17950_)))
                                                (if (not (fx= _g17951_ 2))
                                                    (error "Context expects 2 values"
                                                           _g17951_)))
                                              (let ((_e16846_
                                                     (values-ref _g17950_ 0))
                                                    (_vars16847_
                                                     (values-ref _g17950_ 1)))
                                                (values (cons 'box _e16846_)
                                                        _vars16847_))))
                                          (if (gx#stx-datum? _e16760_)
                                              (values (cons 'datum
                                                            (gx#stx-e
                                                             _e16760_))
                                                      _vars16761_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad pattern"
                                               _stx16677_
                                               _e16760_)))))))))))
          (let* ((_e1668716700_ _stx16677_)
                 (_E1668916704_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1668716700_)))
                 (_E1668816751_
                  (lambda ()
                    (if (gx#stx-pair? _e1668716700_)
                        (let ((_e1669016708_ (gx#syntax-e _e1668716700_)))
                          (let ((_hd1669116711_ (##car _e1669016708_))
                                (_tl1669216713_ (##cdr _e1669016708_)))
                            (if (gx#stx-pair? _tl1669216713_)
                                (let ((_e1669316716_
                                       (gx#syntax-e _tl1669216713_)))
                                  (let ((_hd1669416719_ (##car _e1669316716_))
                                        (_tl1669516721_ (##cdr _e1669316716_)))
                                    (let ((_expr16724_ _hd1669416719_))
                                      (if (gx#stx-pair? _tl1669516721_)
                                          (let ((_e1669616726_
                                                 (gx#syntax-e _tl1669516721_)))
                                            (let ((_hd1669716729_
                                                   (##car _e1669616726_))
                                                  (_tl1669816731_
                                                   (##cdr _e1669616726_)))
                                              (let* ((_ids16734_
                                                      _hd1669716729_)
                                                     (_clauses16736_
                                                      _tl1669816731_))
                                                (if '#t
                                                    (if (not (gx#identifier-list?
                                                              _ids16734_))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad template identifier list"
                                                         _stx16677_
                                                         _ids16734_)
                                                        (if (not (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _clauses16736_))
                    (gx#raise-syntax-error '#f '"Bad syntax" _stx16677_)
                    (let* ((_ids16738_ (gx#syntax->list _ids16734_))
                           (_clauses16740_ (gx#syntax->list _clauses16736_))
                           (_clause-ids16742_ (gx#gentemps _clauses16740_))
                           (_E16744_ (gx#genident__0))
                           (_target16746_ (gx#genident__0))
                           (_first16748_
                            (if (null? _clauses16740_)
                                _E16744_
                                (car _clause-ids16742_))))
                      (gx#stx-wrap-source
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _E16744_ '())
                                    (cons (gx#core-list
                                           'lambda%
                                           (cons _target16746_ '())
                                           (gx#core-list
                                            'raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _target16746_))
                                          '()))
                              '())
                        (_generate-body16683_
                         (_generate-bindings16682_
                          _target16746_
                          _ids16738_
                          _clauses16740_
                          _clause-ids16742_
                          _E16744_)
                         (cons _first16748_ (cons _expr16724_ '()))))
                       (gx#stx-source _stx16677_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1668916704_)))))
                                          (_E1668916704_)))))
                                (_E1668916704_))))
                        (_E1668916704_)))))
            (_E1668816751_)))))
    (begin
      (define gx#macro-expand-syntax-case__0
        (lambda (_stx17379_)
          (let* ((_identifier=?17381_ 'free-identifier=?)
                 (_unwrap-e17383_ 'syntax-e)
                 (_wrap-e17385_ 'quote-syntax))
            (gx#macro-expand-syntax-case__%
             _stx17379_
             _identifier=?17381_
             _unwrap-e17383_
             _wrap-e17385_))))
      (define gx#macro-expand-syntax-case__1
        (lambda (_stx17387_ _identifier=?17388_)
          (let* ((_unwrap-e17390_ 'syntax-e) (_wrap-e17392_ 'quote-syntax))
            (gx#macro-expand-syntax-case__%
             _stx17387_
             _identifier=?17388_
             _unwrap-e17390_
             _wrap-e17392_))))
      (define gx#macro-expand-syntax-case__2
        (lambda (_stx17394_ _identifier=?17395_ _unwrap-e17396_)
          (let ((_wrap-e17398_ 'quote-syntax))
            (gx#macro-expand-syntax-case__%
             _stx17394_
             _identifier=?17395_
             _unwrap-e17396_
             _wrap-e17398_))))
      (define gx#macro-expand-syntax-case
        (lambda _g17953_
          (let ((_g17952_ (length _g17953_)))
            (cond ((fx= _g17952_ 1)
                   (apply gx#macro-expand-syntax-case__0 _g17953_))
                  ((fx= _g17952_ 2)
                   (apply gx#macro-expand-syntax-case__1 _g17953_))
                  ((fx= _g17952_ 3)
                   (apply gx#macro-expand-syntax-case__2 _g17953_))
                  ((fx= _g17952_ 4)
                   (apply gx#macro-expand-syntax-case__% _g17953_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-syntax-case
                    _g17953_))))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx16674_)
      (if (gx#identifier? _stx16674_)
          (##structure-instance-of?
           (gx#syntax-local-e__% _stx16674_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd16632_ . _rest16633_)
      (let ((_len16635_ (length _hd16632_)))
        (let _lp16637_ ((_rest16639_ _rest16633_))
          (let* ((_rest1664016648_ _rest16639_)
                 (_E1664316652_
                  (lambda () (error '"No clause matching" _rest1664016648_)))
                 (_else1664216656_ (lambda () '#!void))
                 (_K1664416662_
                  (lambda (_rest16659_ _hd16660_)
                    (if (fx= _len16635_ (length _hd16660_))
                        (_lp16637_ _rest16659_)
                        (gx#raise-syntax-error
                         '#f
                         '"Splice length mismatch"
                         _hd16660_)))))
            (if (##pair? _rest1664016648_)
                (let ((_hd1664516665_ (##car _rest1664016648_))
                      (_tl1664616667_ (##cdr _rest1664016648_)))
                  (let* ((_hd16670_ _hd1664516665_)
                         (_rest16672_ _tl1664616667_))
                    (_K1664416662_ _rest16672_ _hd16670_)))
                (_else1664216656_)))))))
  (define gx#syntax-split-splice
    (lambda (_stx16590_ _n16591_)
      (let _lp16593_ ((_rest16595_ _stx16590_) (_r16596_ '()))
        (if (gx#stx-pair? _rest16595_)
            (let* ((_g1659716604_ (gx#syntax-e _rest16595_))
                   (_E1659916608_
                    (lambda () (error '"No clause matching" _g1659716604_)))
                   (_K1660016614_
                    (lambda (_rest16611_ _hd16612_)
                      (_lp16593_ _rest16611_ (cons _hd16612_ _r16596_)))))
              (if (##pair? _g1659716604_)
                  (let ((_hd1660116617_ (##car _g1659716604_))
                        (_tl1660216619_ (##cdr _g1659716604_)))
                    (let* ((_hd16622_ _hd1660116617_)
                           (_rest16624_ _tl1660216619_))
                      (_K1660016614_ _rest16624_ _hd16622_)))
                  (_E1659916608_)))
            (let _lp16626_ ((_n16628_ _n16591_)
                            (_l16629_ _r16596_)
                            (_r16630_ _rest16595_))
              (if (null? _l16629_)
                  (values _l16629_ _r16630_)
                  (if (fxpositive? _n16628_)
                      (_lp16626_
                       (fx- _n16628_ '1)
                       (cdr _l16629_)
                       (cons (car _l16629_) _r16630_))
                      (values (reverse _l16629_) _r16630_)))))))))
