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
    (lambda _$args17917_
      (apply make-struct-instance gx#syntax-pattern::t _$args17917_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self17914_ _stx17915_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx17915_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx17396_)
      (letrec ((_generate17398_
                (lambda (_e17625_)
                  (letrec ((_BUG17627_
                            (lambda (_q17789_)
                              (error '"BUG: syntax; generate"
                                     _stx17396_
                                     _e17625_
                                     _q17789_)))
                           (_local-pattern-e17628_
                            (lambda (_pat17787_)
                              (gx#syntax-local-rewrap
                               (##structure-ref
                                _pat17787_
                                '2
                                gx#syntax-pattern::t
                                '#f))))
                           (_getvar17629_
                            (lambda (_q17784_ _vars17785_)
                              (assgetq _q17784_ _vars17785_ _BUG17627_)))
                           (_getarg17630_
                            (lambda (_arg17750_ _vars17751_)
                              (let* ((_arg1775217759_ _arg17750_)
                                     (_E1775417763_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _arg1775217759_)))
                                     (_K1775517772_
                                      (lambda (_e17766_ _tag17767_)
                                        (let ((_$e17769_ _tag17767_))
                                          (if (eq? _$e17769_ 'ref)
                                              (_getvar17629_
                                               _e17766_
                                               _vars17751_)
                                              (if (eq? _$e17769_ 'pattern)
                                                  (_local-pattern-e17628_
                                                   _e17766_)
                                                  (_BUG17627_ _arg17750_)))))))
                                (if (##pair? _arg1775217759_)
                                    (let ((_hd1775617775_
                                           (##car _arg1775217759_))
                                          (_tl1775717777_
                                           (##cdr _arg1775217759_)))
                                      (let* ((_tag17780_ _hd1775617775_)
                                             (_e17782_ _tl1775717777_))
                                        (_K1775517772_ _e17782_ _tag17780_)))
                                    (_E1775417763_))))))
                    (let _recur17632_ ((_e17634_ _e17625_) (_vars17635_ '()))
                      (let* ((_e1763617643_ _e17634_)
                             (_E1763817647_
                              (lambda ()
                                (error '"No clause matching" _e1763617643_)))
                             (_K1763917738_
                              (lambda (_body17650_ _tag17651_)
                                (let ((_$e17653_ _tag17651_))
                                  (if (eq? _$e17653_ 'datum)
                                      (gx#core-list 'quote _body17650_)
                                      (if (eq? _$e17653_ 'term)
                                          (let ((_id17656_
                                                 (gx#syntax-local-unwrap
                                                  _body17650_)))
                                            (if (##structure-direct-instance-of?
                                                 _id17656_
                                                 'gx#identifier-wrap::t)
                                                (let ((_marks17658_
                                                       (##direct-structure-ref
                                                        _id17656_
                                                        '3
                                                        gx#identifier-wrap::t
                                                        '#f)))
                                                  (if (null? _marks17658_)
                                                      (gx#core-list
                                                       'datum->syntax
                                                       '#f
                                                       (gx#core-list
                                                        'quote
                                                        _body17650_))
                                                      (gx#core-list
                                                       'datum->syntax
                                                       (gx#core-list
                                                        'quote-syntax
                                                        _body17650_)
                                                       (gx#core-list
                                                        'quote
                                                        _body17650_)
                                                       '#f
                                                       '#f)))
                                                (if (##structure-direct-instance-of?
                                                     _id17656_
                                                     'gx#syntax-quote::t)
                                                    (gx#core-list
                                                     'quote-syntax
                                                     _body17650_)
                                                    (_BUG17627_ _e17634_))))
                                          (if (eq? _$e17653_ 'pattern)
                                              (_local-pattern-e17628_
                                               _body17650_)
                                              (if (eq? _$e17653_ 'ref)
                                                  (_getvar17629_
                                                   _body17650_
                                                   _vars17635_)
                                                  (if (eq? _$e17653_ 'cons)
                                                      (gx#core-list
                                                       'cons
                                                       (_recur17632_
                                                        (car _body17650_)
                                                        _vars17635_)
                                                       (_recur17632_
                                                        (cdr _body17650_)
                                                        _vars17635_))
                                                      (if (eq? _$e17653_
                                                               'vector)
                                                          (gx#core-list
                                                           'list->vector
                                                           (_recur17632_
                                                            _body17650_
                                                            _vars17635_))
                                                          (if (eq? _$e17653_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'box)
                      (gx#core-list
                       'box
                       (_recur17632_ _body17650_ _vars17635_))
                      (if (eq? _$e17653_ 'splice)
                          (let* ((_body1765917670_ _body17650_)
                                 (_E1766117674_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _body1765917670_)))
                                 (_K1766217712_
                                  (lambda (_args17677_
                                           _iv17678_
                                           _hd17679_
                                           _depth17680_)
                                    (let* ((_targets17686_
                                            (map (lambda (_g1768117683_)
                                                   (_getarg17630_
                                                    _g1768117683_
                                                    _vars17635_))
                                                 _args17677_))
                                           (_fold-in17688_
                                            (gx#gentemps _args17677_))
                                           (_fold-out17690_ (gx#genident__0))
                                           (_lambda-args17692_
                                            (foldr1 cons
                                                    (cons _fold-out17690_ '())
                                                    _fold-in17688_))
                                           (_lambda-body17709_
                                            (if (fx> _depth17680_ '1)
                                                (let ((_r-args17700_
                                                       (map (lambda (_arg17694_)
                                                              (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cdr _arg17694_)))
                    _args17677_))
              (_r-vars17701_
               (foldr (lambda (_arg17696_ _var17697_ _r17698_)
                        (cons (cons (cdr _arg17696_) _var17697_) _r17698_))
                      _vars17635_
                      _args17677_
                      _fold-in17688_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur17632_
                                                   (cons* 'splice
                                                          (fx- _depth17680_ '1)
                                                          _hd17679_
                                                          (cons 'var
                                                                _fold-out17690_)
                                                          _r-args17700_)
                                                   _r-vars17701_))
                                                (let ((_hd-vars17707_
                                                       (foldr (lambda (_arg17703_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _var17704_
                               _r17705_)
                        (cons (cons (cdr _arg17703_) _var17704_) _r17705_))
                      _vars17635_
                      _args17677_
                      _fold-in17688_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#core-list
                                                   'cons
                                                   (_recur17632_
                                                    _hd17679_
                                                    _hd-vars17707_)
                                                   _fold-out17690_)))))
                                      (gx#core-list
                                       'begin
                                       (if (fx> (length _targets17686_) '1)
                                           (gx#core-cons*
                                            'syntax-check-splice-targets
                                            _targets17686_)
                                           '#!void)
                                       (gx#core-cons*
                                        'foldr
                                        (gx#core-list
                                         'lambda%
                                         _lambda-args17692_
                                         _lambda-body17709_)
                                        (_recur17632_ _iv17678_ _vars17635_)
                                        _targets17686_))))))
                            (if (##pair? _body1765917670_)
                                (let ((_hd1766317715_ (##car _body1765917670_))
                                      (_tl1766417717_
                                       (##cdr _body1765917670_)))
                                  (let ((_depth17720_ _hd1766317715_))
                                    (if (##pair? _tl1766417717_)
                                        (let ((_hd1766517722_
                                               (##car _tl1766417717_))
                                              (_tl1766617724_
                                               (##cdr _tl1766417717_)))
                                          (let ((_hd17727_ _hd1766517722_))
                                            (if (##pair? _tl1766617724_)
                                                (let ((_hd1766717729_
                                                       (##car _tl1766617724_))
                                                      (_tl1766817731_
                                                       (##cdr _tl1766617724_)))
                                                  (let* ((_iv17734_
                                                          _hd1766717729_)
                                                         (_args17736_
                                                          _tl1766817731_))
                                                    (_K1766217712_
                                                     _args17736_
                                                     _iv17734_
                                                     _hd17727_
                                                     _depth17720_)))
                                                (_E1766117674_))))
                                        (_E1766117674_))))
                                (_E1766117674_)))
                          (if (eq? _$e17653_ 'var)
                              _body17650_
                              (_BUG17627_ _e17634_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (if (##pair? _e1763617643_)
                            (let ((_hd1764017741_ (##car _e1763617643_))
                                  (_tl1764117743_ (##cdr _e1763617643_)))
                              (let* ((_tag17746_ _hd1764017741_)
                                     (_body17748_ _tl1764117743_))
                                (_K1763917738_ _body17748_ _tag17746_)))
                            (_E1763817647_)))))))
               (_parse17399_
                (lambda (_e17440_)
                  (letrec ((_make-cons17442_
                            (lambda (_hd17617_ _tl17618_)
                              (let ((_g17919_ _hd17617_) (_g17921_ _tl17618_))
                                (begin
                                  (let ((_g17920_ (values-count _g17919_)))
                                    (if (not (fx= _g17920_ 2))
                                        (error "Context expects 2 values"
                                               _g17920_)))
                                  (let ((_g17922_ (values-count _g17921_)))
                                    (if (not (fx= _g17922_ 2))
                                        (error "Context expects 2 values"
                                               _g17922_)))
                                  (let ((_hd-e17620_ (values-ref _g17919_ 0))
                                        (_hd-vars17621_
                                         (values-ref _g17919_ 1)))
                                    (let ((_tl-e17622_ (values-ref _g17921_ 0))
                                          (_tl-vars17623_
                                           (values-ref _g17921_ 1)))
                                      (values (cons* 'cons
                                                     _hd-e17620_
                                                     _tl-e17622_)
                                              (append _hd-vars17621_
                                                      _tl-vars17623_))))))))
                           (_make-splice17443_
                            (lambda (_where17556_
                                     _depth17557_
                                     _hd17558_
                                     _tl17559_)
                              (let ((_g17923_ _hd17558_) (_g17925_ _tl17559_))
                                (begin
                                  (let ((_g17924_ (values-count _g17923_)))
                                    (if (not (fx= _g17924_ 2))
                                        (error "Context expects 2 values"
                                               _g17924_)))
                                  (let ((_g17926_ (values-count _g17925_)))
                                    (if (not (fx= _g17926_ 2))
                                        (error "Context expects 2 values"
                                               _g17926_)))
                                  (let ((_hd-e17561_ (values-ref _g17923_ 0))
                                        (_hd-vars17562_
                                         (values-ref _g17923_ 1)))
                                    (let ((_tl-e17563_ (values-ref _g17925_ 0))
                                          (_tl-vars17564_
                                           (values-ref _g17925_ 1)))
                                      (let _lp17566_ ((_rest17568_
                                                       _hd-vars17562_)
                                                      (_targets17569_ '())
                                                      (_vars17570_
                                                       _tl-vars17564_))
                                        (let* ((_rest1757117581_ _rest17568_)
                                               (_E1757417585_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _rest1757117581_)))
                                               (_else1757317589_
                                                (lambda ()
                                                  (if (null? _targets17569_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Misplaced ellipsis"
                                                       _stx17396_
                                                       _where17556_)
                                                      (values (cons* 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _depth17557_
                             _hd-e17561_
                             _tl-e17563_
                             _targets17569_)
                      _vars17570_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_K1757517598_
                                                (lambda (_rest17592_
                                                         _hd-pat17593_
                                                         _hd-depth*17594_)
                                                  (let ((_hd-depth17596_
                                                         (fx- _hd-depth*17594_
                                                              _depth17557_)))
                                                    (if (fxpositive?
                                                         _hd-depth17596_)
                                                        (_lp17566_
                                                         _rest17592_
                                                         (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd-pat17593_)
                       _targets17569_)
                 (cons (cons _hd-depth17596_ _hd-pat17593_) _vars17570_))
                (if (fxzero? _hd-depth17596_)
                    (_lp17566_
                     _rest17592_
                     (cons (cons 'pattern _hd-pat17593_) _targets17569_)
                     _vars17570_)
                    (gx#raise-syntax-error
                     '#f
                     '"Too many ellipses"
                     _stx17396_
                     _where17556_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1757117581_)
                                              (let ((_hd1757617601_
                                                     (##car _rest1757117581_))
                                                    (_tl1757717603_
                                                     (##cdr _rest1757117581_)))
                                                (if (##pair? _hd1757617601_)
                                                    (let ((_hd1757817606_
                                                           (##car _hd1757617601_))
                                                          (_tl1757917608_
                                                           (##cdr _hd1757617601_)))
                                                      (let* ((_hd-depth*17611_
                                                              _hd1757817606_)
                                                             (_hd-pat17613_
                                                              _tl1757917608_)
                                                             (_rest17615_
                                                              _tl1757717603_))
                                                        (_K1757517598_
                                                         _rest17615_
                                                         _hd-pat17613_
                                                         _hd-depth*17611_)))
                                                    (_else1757317589_)))
                                              (_else1757317589_))))))))))
                           (_recur17444_
                            (lambda (_e17449_ _is-e?17450_)
                              (if (_is-e?17450_ _e17449_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Mislpaced ellipsis"
                                   _stx17396_)
                                  (if (gx#syntax-local-pattern? _e17449_)
                                      (let* ((_pat17452_
                                              (gx#syntax-local-e__0 _e17449_))
                                             (_depth17454_
                                              (##structure-ref
                                               _pat17452_
                                               '3
                                               gx#syntax-pattern::t
                                               '#f)))
                                        (if (fxpositive? _depth17454_)
                                            (values (cons 'ref _pat17452_)
                                                    (cons (cons _depth17454_
                                                                _pat17452_)
                                                          '()))
                                            (values (cons 'pattern _pat17452_)
                                                    '())))
                                      (if (gx#identifier? _e17449_)
                                          (values (cons 'term _e17449_) '())
                                          (if (gx#stx-pair? _e17449_)
                                              (let* ((_e1745617463_ _e17449_)
                                                     (_E1745817467_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _e1745617463_)))
                                                     (_E1745717546_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e1745617463_)
                                                            (let ((_e1745917471_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e1745617463_)))
                      (let ((_hd1746017474_ (##car _e1745917471_))
                            (_tl1746117476_ (##cdr _e1745917471_)))
                        (let* ((_hd17479_ _hd1746017474_)
                               (_rest17481_ _tl1746117476_))
                          (if '#t
                              (if (_is-e?17450_ _hd17479_)
                                  (let* ((_e1748217489_ _rest17481_)
                                         (_E1748417493_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _stx17396_
                                             _e17449_)))
                                         (_E1748317507_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1748217489_)
                                                (let ((_e1748517497_
                                                       (gx#syntax-e
                                                        _e1748217489_)))
                                                  (let ((_hd1748617500_
                                                         (##car _e1748517497_))
                                                        (_tl1748717502_
                                                         (##cdr _e1748517497_)))
                                                    (let ((_rest17505_
                                                           _hd1748617500_))
                                                      (if (gx#stx-null?
                                                           _tl1748717502_)
                                                          (if '#t
                                                              (_recur17444_
                                                               _rest17505_
                                                               false)
                                                              (_E1748417493_))
                                                          (_E1748417493_)))))
                                                (_E1748417493_)))))
                                    (_E1748317507_))
                                  (let _lp17511_ ((_rest17513_ _rest17481_)
                                                  (_depth17514_ '0))
                                    (let* ((_e1751517522_ _rest17513_)
                                           (_E1751717526_
                                            (lambda ()
                                              (if (fxpositive? _depth17514_)
                                                  (_make-splice17443_
                                                   _e17449_
                                                   _depth17514_
                                                   (_recur17444_
                                                    _hd17479_
                                                    _is-e?17450_)
                                                   (_recur17444_
                                                    _rest17513_
                                                    _is-e?17450_))
                                                  (_make-cons17442_
                                                   (_recur17444_
                                                    _hd17479_
                                                    _is-e?17450_)
                                                   (_recur17444_
                                                    _rest17513_
                                                    _is-e?17450_)))))
                                           (_E1751617542_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1751517522_)
                                                  (let ((_e1751817530_
                                                         (gx#syntax-e
                                                          _e1751517522_)))
                                                    (let ((_hd1751917533_
                                                           (##car _e1751817530_))
                                                          (_tl1752017535_
                                                           (##cdr _e1751817530_)))
                                                      (let* ((_rest-hd17538_
                                                              _hd1751917533_)
                                                             (_rest-tl17540_
                                                              _tl1752017535_))
                                                        (if '#t
                                                            (if (_is-e?17450_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rest-hd17538_)
                        (_lp17511_ _rest-tl17540_ (fx+ _depth17514_ '1))
                        (if (fxpositive? _depth17514_)
                            (_make-splice17443_
                             _e17449_
                             _depth17514_
                             (_recur17444_ _hd17479_ _is-e?17450_)
                             (_recur17444_ _rest17513_ _is-e?17450_))
                            (_make-cons17442_
                             (_recur17444_ _hd17479_ _is-e?17450_)
                             (_recur17444_ _rest17513_ _is-e?17450_))))
                    (_E1751717526_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1751717526_)))))
                                      (_E1751617542_))))
                              (_E1745817467_)))))
                    (_E1745817467_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1745717546_))
                                              (if (gx#stx-vector? _e17449_)
                                                  (let ((_g17927_
                                                         (_recur17444_
                                                          (vector->list
                                                           (gx#stx-unwrap__0
                                                            _e17449_))
                                                          _is-e?17450_)))
                                                    (begin
                                                      (let ((_g17928_
                                                             (values-count
                                                              _g17927_)))
                                                        (if (not (fx= _g17928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g17928_)))
              (let ((_e17550_ (values-ref _g17927_ 0))
                    (_vars17551_ (values-ref _g17927_ 1)))
                (values (cons 'vector _e17550_) _vars17551_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e17449_)
                                                      (let ((_g17929_
                                                             (_recur17444_
                                                              (unbox (gx#stx-unwrap__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e17449_))
                      _is-e?17450_)))
                (begin
                  (let ((_g17930_ (values-count _g17929_)))
                    (if (not (fx= _g17930_ 2))
                        (error "Context expects 2 values" _g17930_)))
                  (let ((_e17553_ (values-ref _g17929_ 0))
                        (_vars17554_ (values-ref _g17929_ 1)))
                    (values (cons 'box _e17553_) _vars17554_))))
              (values (cons 'datum _e17449_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    (let ((_g17931_ (_recur17444_ _e17440_ gx#ellipsis?)))
                      (begin
                        (let ((_g17932_ (values-count _g17931_)))
                          (if (not (fx= _g17932_ 2))
                              (error "Context expects 2 values" _g17932_)))
                        (let ((_tree17446_ (values-ref _g17931_ 0))
                              (_vars17447_ (values-ref _g17931_ 1)))
                          (if (null? _vars17447_)
                              _tree17446_
                              (gx#raise-syntax-error
                               '#f
                               '"Missing ellipsis"
                               _stx17396_
                               _vars17447_)))))))))
        (let* ((_e1740017410_ _stx17396_)
               (_E1740217414_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _stx17396_)))
               (_E1740117436_
                (lambda ()
                  (if (gx#stx-pair? _e1740017410_)
                      (let ((_e1740317418_ (gx#syntax-e _e1740017410_)))
                        (let ((_hd1740417421_ (##car _e1740317418_))
                              (_tl1740517423_ (##cdr _e1740317418_)))
                          (if (gx#stx-pair? _tl1740517423_)
                              (let ((_e1740617426_
                                     (gx#syntax-e _tl1740517423_)))
                                (let ((_hd1740717429_ (##car _e1740617426_))
                                      (_tl1740817431_ (##cdr _e1740617426_)))
                                  (let ((_form17434_ _hd1740717429_))
                                    (if (gx#stx-null? _tl1740817431_)
                                        (if '#t
                                            (gx#stx-wrap-source
                                             (_generate17398_
                                              (_parse17399_ _form17434_))
                                             (gx#stx-source _stx17396_))
                                            (_E1740217414_))
                                        (_E1740217414_)))))
                              (_E1740217414_))))
                      (_E1740217414_)))))
          (_E1740117436_)))))
  (begin
    (define gx#macro-expand-syntax-case__opt-lambda16666
      (lambda (_stx16668_ _identifier=?16669_ _unwrap-e16670_ _wrap-e16671_)
        (letrec ((_generate-bindings16673_
                  (lambda (_target17258_
                           _ids17259_
                           _clauses17260_
                           _clause-ids17261_
                           _E17262_)
                    (letrec ((_generate117264_
                              (lambda (_clause17363_ _clause-id17364_ _E17365_)
                                (cons (cons _clause-id17364_ '())
                                      (cons (gx#core-list
                                             'lambda%
                                             (cons _target17258_ '())
                                             (_generate-clause16675_
                                              _target17258_
                                              _ids17259_
                                              _clause17363_
                                              _E17365_))
                                            '())))))
                      (let _lp17266_ ((_rest17268_ _clauses17260_)
                                      (_rest-ids17269_ _clause-ids17261_)
                                      (_bindings17270_ '()))
                        (let* ((_rest1727117279_ _rest17268_)
                               (_E1727417283_
                                (lambda ()
                                  (error '"No clause matching"
                                         _rest1727117279_)))
                               (_else1727317287_ (lambda () _bindings17270_))
                               (_K1727517351_
                                (lambda (_rest17290_ _clause17291_)
                                  (let* ((_rest-ids1729217299_ _rest-ids17269_)
                                         (_E1729417303_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids1729217299_)))
                                         (_K1729517339_
                                          (lambda (_rest-ids17306_
                                                   _clause-id17307_)
                                            (let* ((_rest-ids1730817316_
                                                    _rest-ids17306_)
                                                   (_E1731117320_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _rest-ids1730817316_)))
                                                   (_else1731017324_
                                                    (lambda ()
                                                      (cons (_generate117264_
                                                             _clause17291_
                                                             _clause-id17307_
                                                             _E17262_)
                                                            _bindings17270_)))
                                                   (_K1731217329_
                                                    (lambda (_next-clause-id17327_)
                                                      (_lp17266_
                                                       _rest17290_
                                                       _rest-ids17306_
                                                       (cons (_generate117264_
                                                              _clause17291_
                                                              _clause-id17307_
                                                              _next-clause-id17327_)
                                                             _bindings17270_)))))
                                              (if (##pair? _rest-ids1730817316_)
                                                  (let ((_hd1731317332_
                                                         (##car _rest-ids1730817316_))
                                                        (_tl1731417334_
                                                         (##cdr _rest-ids1730817316_)))
                                                    (let ((_next-clause-id17337_
                                                           _hd1731317332_))
                                                      (_K1731217329_
                                                       _next-clause-id17337_)))
                                                  (_else1731017324_))))))
                                    (if (##pair? _rest-ids1729217299_)
                                        (let ((_hd1729617342_
                                               (##car _rest-ids1729217299_))
                                              (_tl1729717344_
                                               (##cdr _rest-ids1729217299_)))
                                          (let* ((_clause-id17347_
                                                  _hd1729617342_)
                                                 (_rest-ids17349_
                                                  _tl1729717344_))
                                            (_K1729517339_
                                             _rest-ids17349_
                                             _clause-id17347_)))
                                        (_E1729417303_))))))
                          (if (##pair? _rest1727117279_)
                              (let ((_hd1727617354_ (##car _rest1727117279_))
                                    (_tl1727717356_ (##cdr _rest1727117279_)))
                                (let* ((_clause17359_ _hd1727617354_)
                                       (_rest17361_ _tl1727717356_))
                                  (_K1727517351_ _rest17361_ _clause17359_)))
                              (_else1727317287_)))))))
                 (_generate-body16674_
                  (lambda (_bindings17218_ _body17219_)
                    (let _recur17221_ ((_rest17223_ _bindings17218_))
                      (let* ((_rest1722417232_ _rest17223_)
                             (_E1722717236_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1722417232_)))
                             (_else1722617240_ (lambda () _body17219_))
                             (_K1722817246_
                              (lambda (_rest17243_ _hd17244_)
                                (gx#core-list
                                 'let-values
                                 (cons _hd17244_ '())
                                 (_recur17221_ _rest17243_)))))
                        (if (##pair? _rest1722417232_)
                            (let ((_hd1722917249_ (##car _rest1722417232_))
                                  (_tl1723017251_ (##cdr _rest1722417232_)))
                              (let* ((_hd17254_ _hd1722917249_)
                                     (_rest17256_ _tl1723017251_))
                                (_K1722817246_ _rest17256_ _hd17254_)))
                            (_else1722617240_))))))
                 (_generate-clause16675_
                  (lambda (_target17081_ _ids17082_ _clause17083_ _E17084_)
                    (letrec ((_generate117086_
                              (lambda (_hd17173_ _fender17174_ _body17175_)
                                (let ((_g17933_
                                       (_parse-clause16677_
                                        _hd17173_
                                        _ids17082_)))
                                  (begin
                                    (let ((_g17934_ (values-count _g17933_)))
                                      (if (not (fx= _g17934_ 2))
                                          (error "Context expects 2 values"
                                                 _g17934_)))
                                    (let ((_e17177_ (values-ref _g17933_ 0))
                                          (_mvars17178_
                                           (values-ref _g17933_ 1)))
                                      (let* ((_pvars17180_
                                              (map gx#syntax-local-rewrap
                                                   (gx#gentemps _mvars17178_)))
                                             (_E17182_
                                              (cons _E17084_
                                                    (cons _target17081_ '())))
                                             (_K17215_
                                              (gx#core-list
                                               'lambda%
                                               _pvars17180_
                                               (gx#core-list
                                                'let-syntax
                                                (map (lambda (_mvar17184_
                                                              _pvar17185_)
                                                       (let* ((_mvar1718617193_
                                                               _mvar17184_)
                                                              (_E1718817197_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (error '"No clause matching" _mvar1718617193_)))
                      (_K1718917203_
                       (lambda (_depth17200_ _id17201_)
                         (cons _id17201_
                               (cons (gx#core-list
                                      'make-syntax-pattern
                                      (gx#core-list 'quote _id17201_)
                                      (gx#core-list 'quote _pvar17185_)
                                      _depth17200_)
                                     '())))))
                 (if (##pair? _mvar1718617193_)
                     (let ((_hd1719017206_ (##car _mvar1718617193_))
                           (_tl1719117208_ (##cdr _mvar1718617193_)))
                       (let* ((_id17211_ _hd1719017206_)
                              (_depth17213_ _tl1719117208_))
                         (_K1718917203_ _depth17213_ _id17211_)))
                     (_E1718817197_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _mvars17178_
                                                     _pvars17180_)
                                                (if (eq? _fender17174_ '#t)
                                                    _body17175_
                                                    (gx#core-list
                                                     'if
                                                     _fender17174_
                                                     _body17175_
                                                     _E17182_))))))
                                        (_generate-match16676_
                                         _hd17173_
                                         _target17081_
                                         _e17177_
                                         _mvars17178_
                                         _K17215_
                                         _E17182_))))))))
                      (let* ((_e1708717107_ _clause17083_)
                             (_E1709617111_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _e1708717107_)))
                             (_E1708917145_
                              (lambda ()
                                (if (gx#stx-pair? _e1708717107_)
                                    (let ((_e1709717115_
                                           (gx#syntax-e _e1708717107_)))
                                      (let ((_hd1709817118_
                                             (##car _e1709717115_))
                                            (_tl1709917120_
                                             (##cdr _e1709717115_)))
                                        (let ((_hd17123_ _hd1709817118_))
                                          (if (gx#stx-pair? _tl1709917120_)
                                              (let ((_e1710017125_
                                                     (gx#syntax-e
                                                      _tl1709917120_)))
                                                (let ((_hd1710117128_
                                                       (##car _e1710017125_))
                                                      (_tl1710217130_
                                                       (##cdr _e1710017125_)))
                                                  (let ((_fender17133_
                                                         _hd1710117128_))
                                                    (if (gx#stx-pair?
                                                         _tl1710217130_)
                                                        (let ((_e1710317135_
                                                               (gx#syntax-e
                                                                _tl1710217130_)))
                                                          (let ((_hd1710417138_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1710317135_))
                        (_tl1710517140_ (##cdr _e1710317135_)))
                    (let ((_body17143_ _hd1710417138_))
                      (if (gx#stx-null? _tl1710517140_)
                          (if '#t
                              (_generate117086_
                               _hd17123_
                               _fender17133_
                               _body17143_)
                              (_E1709617111_))
                          (_E1709617111_)))))
                (_E1709617111_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1709617111_)))))
                                    (_E1709617111_))))
                             (_E1708817169_
                              (lambda ()
                                (if (gx#stx-pair? _e1708717107_)
                                    (let ((_e1709017149_
                                           (gx#syntax-e _e1708717107_)))
                                      (let ((_hd1709117152_
                                             (##car _e1709017149_))
                                            (_tl1709217154_
                                             (##cdr _e1709017149_)))
                                        (let ((_hd17157_ _hd1709117152_))
                                          (if (gx#stx-pair? _tl1709217154_)
                                              (let ((_e1709317159_
                                                     (gx#syntax-e
                                                      _tl1709217154_)))
                                                (let ((_hd1709417162_
                                                       (##car _e1709317159_))
                                                      (_tl1709517164_
                                                       (##cdr _e1709317159_)))
                                                  (let ((_body17167_
                                                         _hd1709417162_))
                                                    (if (gx#stx-null?
                                                         _tl1709517164_)
                                                        (if '#t
                                                            (_generate117086_
                                                             _hd17157_
                                                             '#t
                                                             _body17167_)
                                                            (_E1708917145_))
                                                        (_E1708917145_)))))
                                              (_E1708917145_)))))
                                    (_E1708917145_)))))
                        (_E1708817169_)))))
                 (_generate-match16676_
                  (lambda (_where16840_
                           _target16841_
                           _hd16842_
                           _mvars16843_
                           _K16844_
                           _E16845_)
                    (letrec ((_BUG16847_
                              (lambda (_q17079_)
                                (error '"BUG: syntax-case; generate"
                                       _stx16668_
                                       _hd16842_
                                       _q17079_)))
                             (_recur16848_
                              (lambda (_e16933_
                                       _vars16934_
                                       _target16935_
                                       _E16936_
                                       _k16937_)
                                (let* ((_e1693816945_ _e16933_)
                                       (_E1694016949_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e1693816945_)))
                                       (_K1694117067_
                                        (lambda (_body16952_ _tag16953_)
                                          (let ((_$e16955_ _tag16953_))
                                            (if (eq? _$e16955_ 'any)
                                                (_k16937_ _vars16934_)
                                                (if (eq? _$e16955_ 'id)
                                                    (gx#core-list
                                                     'if
                                                     (gx#core-list
                                                      'identifier?
                                                      _target16935_)
                                                     (gx#core-list
                                                      'if
                                                      (gx#core-list
                                                       _identifier=?16669_
                                                       (gx#core-list
                                                        _wrap-e16671_
                                                        _body16952_)
                                                       _target16935_)
                                                      (_k16937_ _vars16934_)
                                                      _E16936_)
                                                     _E16936_)
                                                    (if (eq? _$e16955_ 'var)
                                                        (_k16937_
                                                         (cons (cons _body16952_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _target16935_)
                       _vars16934_))
                (if (eq? _$e16955_ 'cons)
                    (let ((_$e16958_ (gx#genident__1 'e))
                          (_$hd16959_ (gx#genident__1 'hd))
                          (_$tl16960_ (gx#genident__1 'tl)))
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _target16935_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$e16958_ '())
                                    (cons (gx#core-list
                                           _unwrap-e16670_
                                           _target16935_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$hd16959_ '())
                                     (cons (gx#core-list '##car _$e16958_)
                                           '()))
                               (cons (cons (cons _$tl16960_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$e16958_)
                                                 '()))
                                     '()))
                         (let* ((_body1696116968_ _body16952_)
                                (_E1696316972_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _body1696116968_)))
                                (_K1696416980_
                                 (lambda (_tl16975_ _hd16976_)
                                   (_recur16848_
                                    _hd16976_
                                    _vars16934_
                                    _$hd16959_
                                    _E16936_
                                    (lambda (_vars16978_)
                                      (_recur16848_
                                       _tl16975_
                                       _vars16978_
                                       _$tl16960_
                                       _E16936_
                                       _k16937_))))))
                           (if (##pair? _body1696116968_)
                               (let ((_hd1696516983_ (##car _body1696116968_))
                                     (_tl1696616985_ (##cdr _body1696116968_)))
                                 (let* ((_hd16988_ _hd1696516983_)
                                        (_tl16990_ _tl1696616985_))
                                   (_K1696416980_ _tl16990_ _hd16988_)))
                               (_E1696316972_)))))
                       _E16936_))
                    (if (eq? _$e16955_ 'splice)
                        (let* ((_body1699116998_ _body16952_)
                               (_E1699317002_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body1699116998_)))
                               (_K1699417051_
                                (lambda (_tl17005_ _hd17006_)
                                  (let* ((_rlen17008_
                                          (_splice-rlen16849_ _tl17005_))
                                         (_$target17010_
                                          (gx#genident__1 'target))
                                         (_$hd17012_ (gx#genident__1 'hd))
                                         (_$tl17014_ (gx#genident__1 'tl))
                                         (_$lp17016_ (gx#genident__1 'loop))
                                         (_$lp-e17018_ (gx#genident__1 'e))
                                         (_$lp-hd17020_
                                          (gx#genident__1 'lp-hd))
                                         (_$lp-tl17022_
                                          (gx#genident__1 'lp-tl))
                                         (_svars17024_
                                          (_splice-vars16850_ _hd17006_))
                                         (_lvars17026_
                                          (gx#gentemps _svars17024_))
                                         (_tlvars17028_
                                          (gx#gentemps _svars17024_))
                                         (_linit17032_
                                          (map (lambda (_var17030_)
                                                 (gx#core-list 'quote '()))
                                               _lvars17026_)))
                                    (letrec ((_make-loop17035_
                                              (lambda (_vars17037_)
                                                (gx#core-list
                                                 'letrec-values
                                                 (cons (cons (cons _$lp17016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _$hd17012_ _lvars17026_)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-pair? _$hd17012_)
                             (gx#core-list
                              'let-values
                              (cons (cons (cons _$lp-e17018_ '())
                                          (cons (gx#core-list
                                                 _unwrap-e16670_
                                                 _$hd17012_)
                                                '()))
                                    '())
                              (gx#core-list
                               'let-values
                               (cons (cons (cons _$lp-hd17020_ '())
                                           (cons (gx#core-list
                                                  '##car
                                                  _$lp-e17018_)
                                                 '()))
                                     (cons (cons (cons _$lp-tl17022_ '())
                                                 (cons (gx#core-list
                                                        '##cdr
                                                        _$lp-e17018_)
                                                       '()))
                                           '()))
                               (_recur16848_
                                _hd17006_
                                '()
                                _$lp-hd17020_
                                _E16936_
                                (lambda (_hdvars17039_)
                                  (cons* _$lp17016_
                                         _$lp-tl17022_
                                         (map (lambda (_svar17041_ _lvar17042_)
                                                (gx#core-list
                                                 'cons
                                                 (assgetq _svar17041_
                                                          _hdvars17039_
                                                          _BUG16847_)
                                                 _lvar17042_))
                                              _svars17024_
                                              _lvars17026_))))))
                             (gx#core-list
                              'let-values
                              (map (lambda (_lvar17044_ _tlvar17045_)
                                     (cons (cons _tlvar17045_ '())
                                           (cons (gx#core-list
                                                  'reverse
                                                  _lvar17044_)
                                                 '())))
                                   _lvars17026_
                                   _tlvars17028_)
                              (_k16937_
                               (foldl (lambda (_svar17047_
                                               _tlvar17048_
                                               _r17049_)
                                        (cons (cons _svar17047_ _tlvar17048_)
                                              _r17049_))
                                      _vars17037_
                                      _svars17024_
                                      _tlvars17028_)))))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons* _$lp17016_
                                                        _$target17010_
                                                        _linit17032_)))))
                                      (gx#core-list
                                       'if
                                       (gx#core-list
                                        'stx-pair/null?
                                        _target16935_)
                                       (gx#core-list
                                        'if
                                        (gx#core-list
                                         'fx>=
                                         (gx#core-list
                                          'stx-length
                                          _target16935_)
                                         _rlen17008_)
                                        (gx#core-list
                                         'let-values
                                         (cons (cons (cons _$target17010_
                                                           (cons _$tl17014_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (gx#core-list
                                                            'syntax-split-splice
                                                            _target16935_
                                                            _rlen17008_)
                                                           '()))
                                               '())
                                         (_recur16848_
                                          _tl17005_
                                          _vars16934_
                                          _$tl17014_
                                          _E16936_
                                          _make-loop17035_))
                                        _E16936_)
                                       _E16936_))))))
                          (if (##pair? _body1699116998_)
                              (let ((_hd1699517054_ (##car _body1699116998_))
                                    (_tl1699617056_ (##cdr _body1699116998_)))
                                (let* ((_hd17059_ _hd1699517054_)
                                       (_tl17061_ _tl1699617056_))
                                  (_K1699417051_ _tl17061_ _hd17059_)))
                              (_E1699317002_)))
                        (if (eq? _$e16955_ 'null)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-null? _target16935_)
                             (_k16937_ _vars16934_)
                             _E16936_)
                            (if (eq? _$e16955_ 'vector)
                                (let ((_$e17063_ (gx#genident__1 'e)))
                                  (gx#core-list
                                   'if
                                   (gx#core-list 'stx-vector? _target16935_)
                                   (gx#core-list
                                    'let-values
                                    (cons (cons (cons _$e17063_ '())
                                                (cons (gx#core-list
                                                       'vector->list
                                                       (gx#core-list
                                                        _unwrap-e16670_
                                                        _target16935_))
                                                      '()))
                                          '())
                                    (_recur16848_
                                     _body16952_
                                     _vars16934_
                                     _$e17063_
                                     _E16936_
                                     _k16937_))
                                   _E16936_))
                                (if (eq? _$e16955_ 'box)
                                    (let ((_$e17065_ (gx#genident__1 'e)))
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-box? _target16935_)
                                       (gx#core-list
                                        'let-values
                                        (cons (cons (cons _$e17065_ '())
                                                    (cons (gx#core-list
                                                           'unbox
                                                           (gx#core-list
                                                            _unwrap-e16670_
                                                            _target16935_))
                                                          '()))
                                              '())
                                        (_recur16848_
                                         _body16952_
                                         _vars16934_
                                         _$e17065_
                                         _E16936_
                                         _k16937_))
                                       _E16936_))
                                    (if (eq? _$e16955_ 'datum)
                                        (gx#core-list
                                         'if
                                         (gx#core-list
                                          'stx-datum?
                                          _target16935_)
                                         (gx#core-list
                                          'if
                                          (gx#core-list
                                           'equal?
                                           (gx#core-list 'stx-e _target16935_)
                                           _body16952_)
                                          (_k16937_ _vars16934_)
                                          _E16936_)
                                         _E16936_)
                                        (_BUG16847_ _e16933_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (##pair? _e1693816945_)
                                      (let ((_hd1694217070_
                                             (##car _e1693816945_))
                                            (_tl1694317072_
                                             (##cdr _e1693816945_)))
                                        (let* ((_tag17075_ _hd1694217070_)
                                               (_body17077_ _tl1694317072_))
                                          (_K1694117067_
                                           _body17077_
                                           _tag17075_)))
                                      (_E1694016949_)))))
                             (_splice-rlen16849_
                              (lambda (_e16895_)
                                (let _lp16897_ ((_e16899_ _e16895_)
                                                (_n16900_ '0))
                                  (let* ((_e1690116908_ _e16899_)
                                         (_E1690316912_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1690116908_)))
                                         (_K1690416921_
                                          (lambda (_body16915_ _tag16916_)
                                            (let ((_$e16918_ _tag16916_))
                                              (if (eq? _$e16918_ 'splice)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Ambiguous pattern"
                                                   _stx16668_
                                                   _where16840_)
                                                  (if (eq? _$e16918_ 'cons)
                                                      (_lp16897_
                                                       (cdr _body16915_)
                                                       (fx+ _n16900_ '1))
                                                      _n16900_))))))
                                    (if (##pair? _e1690116908_)
                                        (let ((_hd1690516924_
                                               (##car _e1690116908_))
                                              (_tl1690616926_
                                               (##cdr _e1690116908_)))
                                          (let* ((_tag16929_ _hd1690516924_)
                                                 (_body16931_ _tl1690616926_))
                                            (_K1690416921_
                                             _body16931_
                                             _tag16929_)))
                                        (_E1690316912_))))))
                             (_splice-vars16850_
                              (lambda (_e16857_)
                                (let _recur16859_ ((_e16861_ _e16857_)
                                                   (_vars16862_ '()))
                                  (let* ((_e1686316870_ _e16861_)
                                         (_E1686516874_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1686316870_)))
                                         (_K1686616883_
                                          (lambda (_body16877_ _tag16878_)
                                            (let ((_$e16880_ _tag16878_))
                                              (if (eq? _$e16880_ 'var)
                                                  (cons _body16877_
                                                        _vars16862_)
                                                  (if (memq _$e16880_
                                                            '(cons splice))
                                                      (_recur16859_
                                                       (cdr _body16877_)
                                                       (_recur16859_
                                                        (car _body16877_)
                                                        _vars16862_))
                                                      (if (memq _$e16880_
                                                                '(vector box))
                                                          (_recur16859_
                                                           _body16877_
                                                           _vars16862_)
                                                          _vars16862_)))))))
                                    (if (##pair? _e1686316870_)
                                        (let ((_hd1686716886_
                                               (##car _e1686316870_))
                                              (_tl1686816888_
                                               (##cdr _e1686316870_)))
                                          (let* ((_tag16891_ _hd1686716886_)
                                                 (_body16893_ _tl1686816888_))
                                            (_K1686616883_
                                             _body16893_
                                             _tag16891_)))
                                        (_E1686516874_))))))
                             (_make-body16851_
                              (lambda (_vars16853_)
                                (cons _K16844_
                                      (map (lambda (_mvar16855_)
                                             (assgetq (car _mvar16855_)
                                                      _vars16853_
                                                      _BUG16847_))
                                           _mvars16843_)))))
                      (_recur16848_
                       _hd16842_
                       '()
                       _target16841_
                       _E16845_
                       _make-body16851_))))
                 (_parse-clause16677_
                  (lambda (_hd16746_ _ids16747_)
                    (let _recur16749_ ((_e16751_ _hd16746_)
                                       (_vars16752_ '())
                                       (_depth16753_ '0))
                      (if (gx#identifier? _e16751_)
                          (if (gx#underscore? _e16751_)
                              (values '(any) _vars16752_)
                              (if (gx#ellipsis? _e16751_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Misplaced ellipsis"
                                   _stx16668_
                                   _hd16746_)
                                  (if (find (lambda (_id16755_)
                                              (gx#bound-identifier=?
                                               _e16751_
                                               _id16755_))
                                            _ids16747_)
                                      (values (cons 'id _e16751_) _vars16752_)
                                      (if (find (lambda (_var16757_)
                                                  (gx#bound-identifier=?
                                                   _e16751_
                                                   (car _var16757_)))
                                                _vars16752_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Duplicate pattern variable"
                                           _stx16668_
                                           _e16751_)
                                          (values (cons 'var _e16751_)
                                                  (cons (cons _e16751_
                                                              _depth16753_)
                                                        _vars16752_))))))
                          (if (gx#stx-pair? _e16751_)
                              (let* ((_e1675816765_ _e16751_)
                                     (_E1676016769_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _e1675816765_)))
                                     (_E1675916830_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1675816765_)
                                            (let ((_e1676116773_
                                                   (gx#syntax-e
                                                    _e1675816765_)))
                                              (let ((_hd1676216776_
                                                     (##car _e1676116773_))
                                                    (_tl1676316778_
                                                     (##cdr _e1676116773_)))
                                                (let* ((_hd16781_
                                                        _hd1676216776_)
                                                       (_rest16783_
                                                        _tl1676316778_))
                                                  (if '#t
                                                      (let* ((_make-pair16798_
                                                              (lambda (_tag16785_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd16786_
                               _tl16787_)
                        (let* ((_hd-depth16789_
                                (if (eq? _tag16785_ 'splice)
                                    (fx+ _depth16753_ '1)
                                    _depth16753_))
                               (_g17935_
                                (_recur16749_
                                 _hd16786_
                                 _vars16752_
                                 _hd-depth16789_)))
                          (begin
                            (let ((_g17936_ (values-count _g17935_)))
                              (if (not (fx= _g17936_ 2))
                                  (error "Context expects 2 values" _g17936_)))
                            (let ((_hd16791_ (values-ref _g17935_ 0))
                                  (_vars16792_ (values-ref _g17935_ 1)))
                              (let ((_g17937_
                                     (_recur16749_
                                      _tl16787_
                                      _vars16792_
                                      _depth16753_)))
                                (begin
                                  (let ((_g17938_ (values-count _g17937_)))
                                    (if (not (fx= _g17938_ 2))
                                        (error "Context expects 2 values"
                                               _g17938_)))
                                  (let ((_tl16794_ (values-ref _g17937_ 0))
                                        (_vars16795_ (values-ref _g17937_ 1)))
                                    (let ()
                                      (values (cons* _tag16785_
                                                     _hd16791_
                                                     _tl16794_)
                                              _vars16795_))))))))))
                     (_e1679916806_ _rest16783_)
                     (_E1680116810_
                      (lambda ()
                        (_make-pair16798_ 'cons _hd16781_ _rest16783_)))
                     (_E1680016826_
                      (lambda ()
                        (if (gx#stx-pair? _e1679916806_)
                            (let ((_e1680216814_ (gx#syntax-e _e1679916806_)))
                              (let ((_hd1680316817_ (##car _e1680216814_))
                                    (_tl1680416819_ (##cdr _e1680216814_)))
                                (let* ((_rest-hd16822_ _hd1680316817_)
                                       (_rest-tl16824_ _tl1680416819_))
                                  (if '#t
                                      (if (gx#ellipsis? _rest-hd16822_)
                                          (_make-pair16798_
                                           'splice
                                           _hd16781_
                                           _rest-tl16824_)
                                          (_make-pair16798_
                                           'cons
                                           _hd16781_
                                           _rest16783_))
                                      (_E1680116810_)))))
                            (_E1680116810_)))))
                (_E1680016826_))
              (_E1676016769_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1676016769_)))))
                                (_E1675916830_))
                              (if (gx#stx-null? _e16751_)
                                  (values '(null) _vars16752_)
                                  (if (gx#stx-vector? _e16751_)
                                      (let ((_g17939_
                                             (_recur16749_
                                              (vector->list
                                               (gx#syntax-e _e16751_))
                                              _vars16752_
                                              _depth16753_)))
                                        (begin
                                          (let ((_g17940_
                                                 (values-count _g17939_)))
                                            (if (not (fx= _g17940_ 2))
                                                (error "Context expects 2 values"
                                                       _g17940_)))
                                          (let ((_e16834_
                                                 (values-ref _g17939_ 0))
                                                (_vars16835_
                                                 (values-ref _g17939_ 1)))
                                            (values (cons 'vector _e16834_)
                                                    _vars16835_))))
                                      (if (gx#stx-box? _e16751_)
                                          (let ((_g17941_
                                                 (_recur16749_
                                                  (unbox (gx#syntax-e
                                                          _e16751_))
                                                  _vars16752_
                                                  _depth16753_)))
                                            (begin
                                              (let ((_g17942_
                                                     (values-count _g17941_)))
                                                (if (not (fx= _g17942_ 2))
                                                    (error "Context expects 2 values"
                                                           _g17942_)))
                                              (let ((_e16837_
                                                     (values-ref _g17941_ 0))
                                                    (_vars16838_
                                                     (values-ref _g17941_ 1)))
                                                (values (cons 'box _e16837_)
                                                        _vars16838_))))
                                          (if (gx#stx-datum? _e16751_)
                                              (values (cons 'datum
                                                            (gx#stx-e
                                                             _e16751_))
                                                      _vars16752_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad pattern"
                                               _stx16668_
                                               _e16751_)))))))))))
          (let* ((_e1667816691_ _stx16668_)
                 (_E1668016695_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1667816691_)))
                 (_E1667916742_
                  (lambda ()
                    (if (gx#stx-pair? _e1667816691_)
                        (let ((_e1668116699_ (gx#syntax-e _e1667816691_)))
                          (let ((_hd1668216702_ (##car _e1668116699_))
                                (_tl1668316704_ (##cdr _e1668116699_)))
                            (if (gx#stx-pair? _tl1668316704_)
                                (let ((_e1668416707_
                                       (gx#syntax-e _tl1668316704_)))
                                  (let ((_hd1668516710_ (##car _e1668416707_))
                                        (_tl1668616712_ (##cdr _e1668416707_)))
                                    (let ((_expr16715_ _hd1668516710_))
                                      (if (gx#stx-pair? _tl1668616712_)
                                          (let ((_e1668716717_
                                                 (gx#syntax-e _tl1668616712_)))
                                            (let ((_hd1668816720_
                                                   (##car _e1668716717_))
                                                  (_tl1668916722_
                                                   (##cdr _e1668716717_)))
                                              (let* ((_ids16725_
                                                      _hd1668816720_)
                                                     (_clauses16727_
                                                      _tl1668916722_))
                                                (if '#t
                                                    (if (not (gx#identifier-list?
                                                              _ids16725_))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad template identifier list"
                                                         _stx16668_
                                                         _ids16725_)
                                                        (if (not (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _clauses16727_))
                    (gx#raise-syntax-error '#f '"Bad syntax" _stx16668_)
                    (let* ((_ids16729_ (gx#syntax->list _ids16725_))
                           (_clauses16731_ (gx#syntax->list _clauses16727_))
                           (_clause-ids16733_ (gx#gentemps _clauses16731_))
                           (_E16735_ (gx#genident__0))
                           (_target16737_ (gx#genident__0))
                           (_first16739_
                            (if (null? _clauses16731_)
                                _E16735_
                                (car _clause-ids16733_))))
                      (gx#stx-wrap-source
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _E16735_ '())
                                    (cons (gx#core-list
                                           'lambda%
                                           (cons _target16737_ '())
                                           (gx#core-list
                                            'raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _target16737_))
                                          '()))
                              '())
                        (_generate-body16674_
                         (_generate-bindings16673_
                          _target16737_
                          _ids16729_
                          _clauses16731_
                          _clause-ids16733_
                          _E16735_)
                         (cons _first16739_ (cons _expr16715_ '()))))
                       (gx#stx-source _stx16668_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1668016695_)))))
                                          (_E1668016695_)))))
                                (_E1668016695_))))
                        (_E1668016695_)))))
            (_E1667916742_)))))
    (begin
      (define gx#macro-expand-syntax-case__0
        (lambda (_stx17370_)
          (let* ((_identifier=?17372_ 'free-identifier=?)
                 (_unwrap-e17374_ 'syntax-e)
                 (_wrap-e17376_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda16666
             _stx17370_
             _identifier=?17372_
             _unwrap-e17374_
             _wrap-e17376_))))
      (define gx#macro-expand-syntax-case__1
        (lambda (_stx17378_ _identifier=?17379_)
          (let* ((_unwrap-e17381_ 'syntax-e) (_wrap-e17383_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda16666
             _stx17378_
             _identifier=?17379_
             _unwrap-e17381_
             _wrap-e17383_))))
      (define gx#macro-expand-syntax-case__2
        (lambda (_stx17385_ _identifier=?17386_ _unwrap-e17387_)
          (let ((_wrap-e17389_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda16666
             _stx17385_
             _identifier=?17386_
             _unwrap-e17387_
             _wrap-e17389_))))
      (define gx#macro-expand-syntax-case
        (lambda _g17944_
          (let ((_g17943_ (length _g17944_)))
            (cond ((fx= _g17943_ 1)
                   (apply gx#macro-expand-syntax-case__0 _g17944_))
                  ((fx= _g17943_ 2)
                   (apply gx#macro-expand-syntax-case__1 _g17944_))
                  ((fx= _g17943_ 3)
                   (apply gx#macro-expand-syntax-case__2 _g17944_))
                  ((fx= _g17943_ 4)
                   (apply gx#macro-expand-syntax-case__opt-lambda16666
                          _g17944_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-syntax-case
                    _g17944_))))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx16665_)
      (if (gx#identifier? _stx16665_)
          (##structure-instance-of?
           (gx#syntax-local-e__opt-lambda4511 _stx16665_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd16623_ . _rest16624_)
      (let ((_len16626_ (length _hd16623_)))
        (let _lp16628_ ((_rest16630_ _rest16624_))
          (let* ((_rest1663116639_ _rest16630_)
                 (_E1663416643_
                  (lambda () (error '"No clause matching" _rest1663116639_)))
                 (_else1663316647_ (lambda () '#!void))
                 (_K1663516653_
                  (lambda (_rest16650_ _hd16651_)
                    (if (fx= _len16626_ (length _hd16651_))
                        (_lp16628_ _rest16650_)
                        (gx#raise-syntax-error
                         '#f
                         '"Splice length mismatch"
                         _hd16651_)))))
            (if (##pair? _rest1663116639_)
                (let ((_hd1663616656_ (##car _rest1663116639_))
                      (_tl1663716658_ (##cdr _rest1663116639_)))
                  (let* ((_hd16661_ _hd1663616656_)
                         (_rest16663_ _tl1663716658_))
                    (_K1663516653_ _rest16663_ _hd16661_)))
                (_else1663316647_)))))))
  (define gx#syntax-split-splice
    (lambda (_stx16581_ _n16582_)
      (let _lp16584_ ((_rest16586_ _stx16581_) (_r16587_ '()))
        (if (gx#stx-pair? _rest16586_)
            (let* ((_g1658816595_ (gx#syntax-e _rest16586_))
                   (_E1659016599_
                    (lambda () (error '"No clause matching" _g1658816595_)))
                   (_K1659116605_
                    (lambda (_rest16602_ _hd16603_)
                      (_lp16584_ _rest16602_ (cons _hd16603_ _r16587_)))))
              (if (##pair? _g1658816595_)
                  (let ((_hd1659216608_ (##car _g1658816595_))
                        (_tl1659316610_ (##cdr _g1658816595_)))
                    (let* ((_hd16613_ _hd1659216608_)
                           (_rest16615_ _tl1659316610_))
                      (_K1659116605_ _rest16615_ _hd16613_)))
                  (_E1659016599_)))
            (let _lp16617_ ((_n16619_ _n16582_)
                            (_l16620_ _r16587_)
                            (_r16621_ _rest16586_))
              (if (null? _l16620_)
                  (values _l16620_ _r16621_)
                  (if (fxpositive? _n16619_)
                      (_lp16617_
                       (fx- _n16619_ '1)
                       (cdr _l16620_)
                       (cons (car _l16620_) _r16621_))
                      (values (reverse _l16620_) _r16621_)))))))))
