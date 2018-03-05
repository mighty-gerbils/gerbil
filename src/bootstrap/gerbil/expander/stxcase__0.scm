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
    (lambda _$args17995_
      (apply make-struct-instance gx#syntax-pattern::t _$args17995_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self17992_ _stx17993_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx17993_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx17453_)
      (letrec ((_generate17455_
                (lambda (_e17682_)
                  (letrec ((_BUG17684_
                            (lambda (_q17867_)
                              (error '"BUG: syntax; generate"
                                     _stx17453_
                                     _e17682_
                                     _q17867_)))
                           (_local-pattern-e17685_
                            (lambda (_pat17865_)
                              (gx#syntax-local-rewrap
                               (##structure-ref
                                _pat17865_
                                '2
                                gx#syntax-pattern::t
                                '#f))))
                           (_getvar17686_
                            (lambda (_q17862_ _vars17863_)
                              (assgetq _q17862_ _vars17863_ _BUG17684_)))
                           (_getarg17687_
                            (lambda (_arg17828_ _vars17829_)
                              (let* ((_arg1783017837_ _arg17828_)
                                     (_E1783217841_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _arg1783017837_)))
                                     (_K1783317850_
                                      (lambda (_e17844_ _tag17845_)
                                        (let ((_$e17847_ _tag17845_))
                                          (if (eq? 'ref _$e17847_)
                                              (_getvar17686_
                                               _e17844_
                                               _vars17829_)
                                              (if (eq? 'pattern _$e17847_)
                                                  (_local-pattern-e17685_
                                                   _e17844_)
                                                  (_BUG17684_ _arg17828_)))))))
                                (if (##pair? _arg1783017837_)
                                    (let ((_hd1783417853_
                                           (##car _arg1783017837_))
                                          (_tl1783517855_
                                           (##cdr _arg1783017837_)))
                                      (let* ((_tag17858_ _hd1783417853_)
                                             (_e17860_ _tl1783517855_))
                                        (_K1783317850_ _e17860_ _tag17858_)))
                                    (_E1783217841_))))))
                    (let _recur17689_ ((_e17691_ _e17682_) (_vars17692_ '()))
                      (let* ((_e1769317700_ _e17691_)
                             (_E1769517704_
                              (lambda ()
                                (error '"No clause matching" _e1769317700_)))
                             (_K1769617816_
                              (lambda (_body17707_ _tag17708_)
                                (let ((_$e17710_ _tag17708_))
                                  (let ((_default1771217716_
                                         (lambda () (_BUG17684_ _e17691_)))
                                        (_table1771317718_
                                         '#(#f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            (var . 8)
                                            #f
                                            #f
                                            #f
                                            (cons . 4)
                                            (vector . 5)
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            (ref . 3)
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            (pattern . 2)
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            (splice . 7)
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            (datum . 0)
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            (term . 1)
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            (box . 6)
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f
                                            #f)))
                                    (if (symbol? _$e17710_)
                                        (let* ((_h17721_
                                                (##symbol-hash _$e17710_))
                                               (_ix17724_
                                                (##fxmodulo _h17721_ '303))
                                               (_q17727_
                                                (##vector-ref
                                                 _table1771317718_
                                                 _ix17724_)))
                                          (if _q17727_
                                              (if (eq? (##car _q17727_)
                                                       _$e17710_)
                                                  (let ((_x17731_
                                                         (##cdr _q17727_)))
                                                    (if (##fx< _x17731_ '4)
                                                        (if (##fx< _x17731_ '2)
                                                            (if (##fx= _x17731_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '0)
                        (gx#core-list 'quote _body17707_)
                        (let ((_id17734_ (gx#syntax-local-unwrap _body17707_)))
                          (if (##structure-direct-instance-of?
                               _id17734_
                               'gx#identifier-wrap::t)
                              (let ((_marks17736_
                                     (##direct-structure-ref
                                      _id17734_
                                      '3
                                      gx#identifier-wrap::t
                                      '#f)))
                                (if (null? _marks17736_)
                                    (gx#core-list
                                     'datum->syntax
                                     '#f
                                     (gx#core-list 'quote _body17707_))
                                    (gx#core-list
                                     'datum->syntax
                                     (gx#core-list 'quote-syntax _body17707_)
                                     (gx#core-list 'quote _body17707_)
                                     '#f
                                     '#f)))
                              (if (##structure-direct-instance-of?
                                   _id17734_
                                   'gx#syntax-quote::t)
                                  (gx#core-list 'quote-syntax _body17707_)
                                  (_BUG17684_ _e17691_)))))
                    (if (##fx= _x17731_ '2)
                        (_local-pattern-e17685_ _body17707_)
                        (_getvar17686_ _body17707_ _vars17692_)))
                (if (##fx< _x17731_ '6)
                    (if (##fx= _x17731_ '4)
                        (gx#core-list
                         'cons
                         (_recur17689_ (car _body17707_) _vars17692_)
                         (_recur17689_ (cdr _body17707_) _vars17692_))
                        (gx#core-list
                         'list->vector
                         (_recur17689_ _body17707_ _vars17692_)))
                    (if (##fx= _x17731_ '6)
                        (gx#core-list
                         'box
                         (_recur17689_ _body17707_ _vars17692_))
                        (if (##fx= _x17731_ '7)
                            (let* ((_body1773717748_ _body17707_)
                                   (_E1773917752_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _body1773717748_)))
                                   (_K1774017790_
                                    (lambda (_args17755_
                                             _iv17756_
                                             _hd17757_
                                             _depth17758_)
                                      (let* ((_targets17764_
                                              (map (lambda (_g1775917761_)
                                                     (_getarg17687_
                                                      _g1775917761_
                                                      _vars17692_))
                                                   _args17755_))
                                             (_fold-in17766_
                                              (gx#gentemps _args17755_))
                                             (_fold-out17768_ (gx#genident__0))
                                             (_lambda-args17770_
                                              (foldr1 cons
                                                      (cons _fold-out17768_
                                                            '())
                                                      _fold-in17766_))
                                             (_lambda-body17787_
                                              (if (fx> _depth17758_ '1)
                                                  (let ((_r-args17778_
                                                         (map (lambda (_arg17772_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _arg17772_)))
                      _args17755_))
                (_r-vars17779_
                 (foldr (lambda (_arg17774_ _var17775_ _r17776_)
                          (cons (cons (cdr _arg17774_) _var17775_) _r17776_))
                        _vars17692_
                        _args17755_
                        _fold-in17766_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_recur17689_
                                                     (cons* 'splice
                                                            (fx- _depth17758_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '1)
                    _hd17757_
                    (cons 'var _fold-out17768_)
                    _r-args17778_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _r-vars17779_))
                                                  (let ((_hd-vars17785_
                                                         (foldr (lambda (_arg17781_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _var17782_
                                 _r17783_)
                          (cons (cons (cdr _arg17781_) _var17782_) _r17783_))
                        _vars17692_
                        _args17755_
                        _fold-in17766_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#core-list
                                                     'cons
                                                     (_recur17689_
                                                      _hd17757_
                                                      _hd-vars17785_)
                                                     _fold-out17768_)))))
                                        (gx#core-list
                                         'begin
                                         (if (fx> (length _targets17764_) '1)
                                             (gx#core-cons*
                                              'syntax-check-splice-targets
                                              _targets17764_)
                                             '#!void)
                                         (gx#core-cons*
                                          'foldr
                                          (gx#core-list
                                           'lambda%
                                           _lambda-args17770_
                                           _lambda-body17787_)
                                          (_recur17689_ _iv17756_ _vars17692_)
                                          _targets17764_))))))
                              (if (##pair? _body1773717748_)
                                  (let ((_hd1774117793_
                                         (##car _body1773717748_))
                                        (_tl1774217795_
                                         (##cdr _body1773717748_)))
                                    (let ((_depth17798_ _hd1774117793_))
                                      (if (##pair? _tl1774217795_)
                                          (let ((_hd1774317800_
                                                 (##car _tl1774217795_))
                                                (_tl1774417802_
                                                 (##cdr _tl1774217795_)))
                                            (let ((_hd17805_ _hd1774317800_))
                                              (if (##pair? _tl1774417802_)
                                                  (let ((_hd1774517807_
                                                         (##car _tl1774417802_))
                                                        (_tl1774617809_
                                                         (##cdr _tl1774417802_)))
                                                    (let* ((_iv17812_
                                                            _hd1774517807_)
                                                           (_args17814_
                                                            _tl1774617809_))
                                                      (_K1774017790_
                                                       _args17814_
                                                       _iv17812_
                                                       _hd17805_
                                                       _depth17798_)))
                                                  (_E1773917752_))))
                                          (_E1773917752_))))
                                  (_E1773917752_)))
                            _body17707_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_default1771217716_))
                                              (_default1771217716_)))
                                        (_default1771217716_)))))))
                        (if (##pair? _e1769317700_)
                            (let ((_hd1769717819_ (##car _e1769317700_))
                                  (_tl1769817821_ (##cdr _e1769317700_)))
                              (let* ((_tag17824_ _hd1769717819_)
                                     (_body17826_ _tl1769817821_))
                                (_K1769617816_ _body17826_ _tag17824_)))
                            (_E1769517704_)))))))
               (_parse17456_
                (lambda (_e17497_)
                  (letrec ((_make-cons17499_
                            (lambda (_hd17674_ _tl17675_)
                              (let ((_g17997_ _hd17674_) (_g17999_ _tl17675_))
                                (begin
                                  (let ((_g17998_ (values-count _g17997_)))
                                    (if (not (fx= _g17998_ 2))
                                        (error "Context expects 2 values"
                                               _g17998_)))
                                  (let ((_g18000_ (values-count _g17999_)))
                                    (if (not (fx= _g18000_ 2))
                                        (error "Context expects 2 values"
                                               _g18000_)))
                                  (let ((_hd-e17677_ (values-ref _g17997_ 0))
                                        (_hd-vars17678_
                                         (values-ref _g17997_ 1)))
                                    (let ((_tl-e17679_ (values-ref _g17999_ 0))
                                          (_tl-vars17680_
                                           (values-ref _g17999_ 1)))
                                      (values (cons* 'cons
                                                     _hd-e17677_
                                                     _tl-e17679_)
                                              (append _hd-vars17678_
                                                      _tl-vars17680_))))))))
                           (_make-splice17500_
                            (lambda (_where17613_
                                     _depth17614_
                                     _hd17615_
                                     _tl17616_)
                              (let ((_g18001_ _hd17615_) (_g18003_ _tl17616_))
                                (begin
                                  (let ((_g18002_ (values-count _g18001_)))
                                    (if (not (fx= _g18002_ 2))
                                        (error "Context expects 2 values"
                                               _g18002_)))
                                  (let ((_g18004_ (values-count _g18003_)))
                                    (if (not (fx= _g18004_ 2))
                                        (error "Context expects 2 values"
                                               _g18004_)))
                                  (let ((_hd-e17618_ (values-ref _g18001_ 0))
                                        (_hd-vars17619_
                                         (values-ref _g18001_ 1)))
                                    (let ((_tl-e17620_ (values-ref _g18003_ 0))
                                          (_tl-vars17621_
                                           (values-ref _g18003_ 1)))
                                      (let _lp17623_ ((_rest17625_
                                                       _hd-vars17619_)
                                                      (_targets17626_ '())
                                                      (_vars17627_
                                                       _tl-vars17621_))
                                        (let* ((_rest1762817638_ _rest17625_)
                                               (_E1763117642_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _rest1762817638_)))
                                               (_else1763017646_
                                                (lambda ()
                                                  (if (null? _targets17626_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Misplaced ellipsis"
                                                       _stx17453_
                                                       _where17613_)
                                                      (values (cons* 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _depth17614_
                             _hd-e17618_
                             _tl-e17620_
                             _targets17626_)
                      _vars17627_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_K1763217655_
                                                (lambda (_rest17649_
                                                         _hd-pat17650_
                                                         _hd-depth*17651_)
                                                  (let ((_hd-depth17653_
                                                         (fx- _hd-depth*17651_
                                                              _depth17614_)))
                                                    (if (fxpositive?
                                                         _hd-depth17653_)
                                                        (_lp17623_
                                                         _rest17649_
                                                         (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd-pat17650_)
                       _targets17626_)
                 (cons (cons _hd-depth17653_ _hd-pat17650_) _vars17627_))
                (if (fxzero? _hd-depth17653_)
                    (_lp17623_
                     _rest17649_
                     (cons (cons 'pattern _hd-pat17650_) _targets17626_)
                     _vars17627_)
                    (gx#raise-syntax-error
                     '#f
                     '"Too many ellipses"
                     _stx17453_
                     _where17613_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1762817638_)
                                              (let ((_hd1763317658_
                                                     (##car _rest1762817638_))
                                                    (_tl1763417660_
                                                     (##cdr _rest1762817638_)))
                                                (if (##pair? _hd1763317658_)
                                                    (let ((_hd1763517663_
                                                           (##car _hd1763317658_))
                                                          (_tl1763617665_
                                                           (##cdr _hd1763317658_)))
                                                      (let* ((_hd-depth*17668_
                                                              _hd1763517663_)
                                                             (_hd-pat17670_
                                                              _tl1763617665_)
                                                             (_rest17672_
                                                              _tl1763417660_))
                                                        (_K1763217655_
                                                         _rest17672_
                                                         _hd-pat17670_
                                                         _hd-depth*17668_)))
                                                    (_else1763017646_)))
                                              (_else1763017646_))))))))))
                           (_recur17501_
                            (lambda (_e17506_ _is-e?17507_)
                              (if (_is-e?17507_ _e17506_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Mislpaced ellipsis"
                                   _stx17453_)
                                  (if (gx#syntax-local-pattern? _e17506_)
                                      (let* ((_pat17509_
                                              (gx#syntax-local-e__0 _e17506_))
                                             (_depth17511_
                                              (##structure-ref
                                               _pat17509_
                                               '3
                                               gx#syntax-pattern::t
                                               '#f)))
                                        (if (fxpositive? _depth17511_)
                                            (values (cons 'ref _pat17509_)
                                                    (cons (cons _depth17511_
                                                                _pat17509_)
                                                          '()))
                                            (values (cons 'pattern _pat17509_)
                                                    '())))
                                      (if (gx#identifier? _e17506_)
                                          (values (cons 'term _e17506_) '())
                                          (if (gx#stx-pair? _e17506_)
                                              (let* ((_e1751317520_ _e17506_)
                                                     (_E1751517524_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _e1751317520_)))
                                                     (_E1751417603_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e1751317520_)
                                                            (let ((_e1751617528_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e1751317520_)))
                      (let ((_hd1751717531_ (##car _e1751617528_))
                            (_tl1751817533_ (##cdr _e1751617528_)))
                        (let* ((_hd17536_ _hd1751717531_)
                               (_rest17538_ _tl1751817533_))
                          (if '#t
                              (if (_is-e?17507_ _hd17536_)
                                  (let* ((_e1753917546_ _rest17538_)
                                         (_E1754117550_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _stx17453_
                                             _e17506_)))
                                         (_E1754017564_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1753917546_)
                                                (let ((_e1754217554_
                                                       (gx#syntax-e
                                                        _e1753917546_)))
                                                  (let ((_hd1754317557_
                                                         (##car _e1754217554_))
                                                        (_tl1754417559_
                                                         (##cdr _e1754217554_)))
                                                    (let ((_rest17562_
                                                           _hd1754317557_))
                                                      (if (gx#stx-null?
                                                           _tl1754417559_)
                                                          (if '#t
                                                              (_recur17501_
                                                               _rest17562_
                                                               false)
                                                              (_E1754117550_))
                                                          (_E1754117550_)))))
                                                (_E1754117550_)))))
                                    (_E1754017564_))
                                  (let _lp17568_ ((_rest17570_ _rest17538_)
                                                  (_depth17571_ '0))
                                    (let* ((_e1757217579_ _rest17570_)
                                           (_E1757417583_
                                            (lambda ()
                                              (if (fxpositive? _depth17571_)
                                                  (_make-splice17500_
                                                   _e17506_
                                                   _depth17571_
                                                   (_recur17501_
                                                    _hd17536_
                                                    _is-e?17507_)
                                                   (_recur17501_
                                                    _rest17570_
                                                    _is-e?17507_))
                                                  (_make-cons17499_
                                                   (_recur17501_
                                                    _hd17536_
                                                    _is-e?17507_)
                                                   (_recur17501_
                                                    _rest17570_
                                                    _is-e?17507_)))))
                                           (_E1757317599_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1757217579_)
                                                  (let ((_e1757517587_
                                                         (gx#syntax-e
                                                          _e1757217579_)))
                                                    (let ((_hd1757617590_
                                                           (##car _e1757517587_))
                                                          (_tl1757717592_
                                                           (##cdr _e1757517587_)))
                                                      (let* ((_rest-hd17595_
                                                              _hd1757617590_)
                                                             (_rest-tl17597_
                                                              _tl1757717592_))
                                                        (if '#t
                                                            (if (_is-e?17507_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rest-hd17595_)
                        (_lp17568_ _rest-tl17597_ (fx+ _depth17571_ '1))
                        (if (fxpositive? _depth17571_)
                            (_make-splice17500_
                             _e17506_
                             _depth17571_
                             (_recur17501_ _hd17536_ _is-e?17507_)
                             (_recur17501_ _rest17570_ _is-e?17507_))
                            (_make-cons17499_
                             (_recur17501_ _hd17536_ _is-e?17507_)
                             (_recur17501_ _rest17570_ _is-e?17507_))))
                    (_E1757417583_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1757417583_)))))
                                      (_E1757317599_))))
                              (_E1751517524_)))))
                    (_E1751517524_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1751417603_))
                                              (if (gx#stx-vector? _e17506_)
                                                  (let ((_g18005_
                                                         (_recur17501_
                                                          (vector->list
                                                           (gx#stx-unwrap__0
                                                            _e17506_))
                                                          _is-e?17507_)))
                                                    (begin
                                                      (let ((_g18006_
                                                             (values-count
                                                              _g18005_)))
                                                        (if (not (fx= _g18006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g18006_)))
              (let ((_e17607_ (values-ref _g18005_ 0))
                    (_vars17608_ (values-ref _g18005_ 1)))
                (values (cons 'vector _e17607_) _vars17608_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e17506_)
                                                      (let ((_g18007_
                                                             (_recur17501_
                                                              (unbox (gx#stx-unwrap__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e17506_))
                      _is-e?17507_)))
                (begin
                  (let ((_g18008_ (values-count _g18007_)))
                    (if (not (fx= _g18008_ 2))
                        (error "Context expects 2 values" _g18008_)))
                  (let ((_e17610_ (values-ref _g18007_ 0))
                        (_vars17611_ (values-ref _g18007_ 1)))
                    (values (cons 'box _e17610_) _vars17611_))))
              (values (cons 'datum _e17506_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    (let ((_g18009_ (_recur17501_ _e17497_ gx#ellipsis?)))
                      (begin
                        (let ((_g18010_ (values-count _g18009_)))
                          (if (not (fx= _g18010_ 2))
                              (error "Context expects 2 values" _g18010_)))
                        (let ((_tree17503_ (values-ref _g18009_ 0))
                              (_vars17504_ (values-ref _g18009_ 1)))
                          (if (null? _vars17504_)
                              _tree17503_
                              (gx#raise-syntax-error
                               '#f
                               '"Missing ellipsis"
                               _stx17453_
                               _vars17504_)))))))))
        (let* ((_e1745717467_ _stx17453_)
               (_E1745917471_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _stx17453_)))
               (_E1745817493_
                (lambda ()
                  (if (gx#stx-pair? _e1745717467_)
                      (let ((_e1746017475_ (gx#syntax-e _e1745717467_)))
                        (let ((_hd1746117478_ (##car _e1746017475_))
                              (_tl1746217480_ (##cdr _e1746017475_)))
                          (if (gx#stx-pair? _tl1746217480_)
                              (let ((_e1746317483_
                                     (gx#syntax-e _tl1746217480_)))
                                (let ((_hd1746417486_ (##car _e1746317483_))
                                      (_tl1746517488_ (##cdr _e1746317483_)))
                                  (let ((_form17491_ _hd1746417486_))
                                    (if (gx#stx-null? _tl1746517488_)
                                        (if '#t
                                            (gx#stx-wrap-source
                                             (_generate17455_
                                              (_parse17456_ _form17491_))
                                             (gx#stx-source _stx17453_))
                                            (_E1745917471_))
                                        (_E1745917471_)))))
                              (_E1745917471_))))
                      (_E1745917471_)))))
          (_E1745817493_)))))
  (begin
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx16698_ _identifier=?16699_ _unwrap-e16700_ _wrap-e16701_)
        (letrec ((_generate-bindings16703_
                  (lambda (_target17315_
                           _ids17316_
                           _clauses17317_
                           _clause-ids17318_
                           _E17319_)
                    (letrec ((_generate117321_
                              (lambda (_clause17420_ _clause-id17421_ _E17422_)
                                (cons (cons _clause-id17421_ '())
                                      (cons (gx#core-list
                                             'lambda%
                                             (cons _target17315_ '())
                                             (_generate-clause16705_
                                              _target17315_
                                              _ids17316_
                                              _clause17420_
                                              _E17422_))
                                            '())))))
                      (let _lp17323_ ((_rest17325_ _clauses17317_)
                                      (_rest-ids17326_ _clause-ids17318_)
                                      (_bindings17327_ '()))
                        (let* ((_rest1732817336_ _rest17325_)
                               (_E1733117340_
                                (lambda ()
                                  (error '"No clause matching"
                                         _rest1732817336_)))
                               (_else1733017344_ (lambda () _bindings17327_))
                               (_K1733217408_
                                (lambda (_rest17347_ _clause17348_)
                                  (let* ((_rest-ids1734917356_ _rest-ids17326_)
                                         (_E1735117360_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids1734917356_)))
                                         (_K1735217396_
                                          (lambda (_rest-ids17363_
                                                   _clause-id17364_)
                                            (let* ((_rest-ids1736517373_
                                                    _rest-ids17363_)
                                                   (_E1736817377_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _rest-ids1736517373_)))
                                                   (_else1736717381_
                                                    (lambda ()
                                                      (cons (_generate117321_
                                                             _clause17348_
                                                             _clause-id17364_
                                                             _E17319_)
                                                            _bindings17327_)))
                                                   (_K1736917386_
                                                    (lambda (_next-clause-id17384_)
                                                      (_lp17323_
                                                       _rest17347_
                                                       _rest-ids17363_
                                                       (cons (_generate117321_
                                                              _clause17348_
                                                              _clause-id17364_
                                                              _next-clause-id17384_)
                                                             _bindings17327_)))))
                                              (if (##pair? _rest-ids1736517373_)
                                                  (let ((_hd1737017389_
                                                         (##car _rest-ids1736517373_))
                                                        (_tl1737117391_
                                                         (##cdr _rest-ids1736517373_)))
                                                    (let ((_next-clause-id17394_
                                                           _hd1737017389_))
                                                      (_K1736917386_
                                                       _next-clause-id17394_)))
                                                  (_else1736717381_))))))
                                    (if (##pair? _rest-ids1734917356_)
                                        (let ((_hd1735317399_
                                               (##car _rest-ids1734917356_))
                                              (_tl1735417401_
                                               (##cdr _rest-ids1734917356_)))
                                          (let* ((_clause-id17404_
                                                  _hd1735317399_)
                                                 (_rest-ids17406_
                                                  _tl1735417401_))
                                            (_K1735217396_
                                             _rest-ids17406_
                                             _clause-id17404_)))
                                        (_E1735117360_))))))
                          (if (##pair? _rest1732817336_)
                              (let ((_hd1733317411_ (##car _rest1732817336_))
                                    (_tl1733417413_ (##cdr _rest1732817336_)))
                                (let* ((_clause17416_ _hd1733317411_)
                                       (_rest17418_ _tl1733417413_))
                                  (_K1733217408_ _rest17418_ _clause17416_)))
                              (_else1733017344_)))))))
                 (_generate-body16704_
                  (lambda (_bindings17275_ _body17276_)
                    (let _recur17278_ ((_rest17280_ _bindings17275_))
                      (let* ((_rest1728117289_ _rest17280_)
                             (_E1728417293_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1728117289_)))
                             (_else1728317297_ (lambda () _body17276_))
                             (_K1728517303_
                              (lambda (_rest17300_ _hd17301_)
                                (gx#core-list
                                 'let-values
                                 (cons _hd17301_ '())
                                 (_recur17278_ _rest17300_)))))
                        (if (##pair? _rest1728117289_)
                            (let ((_hd1728617306_ (##car _rest1728117289_))
                                  (_tl1728717308_ (##cdr _rest1728117289_)))
                              (let* ((_hd17311_ _hd1728617306_)
                                     (_rest17313_ _tl1728717308_))
                                (_K1728517303_ _rest17313_ _hd17311_)))
                            (_else1728317297_))))))
                 (_generate-clause16705_
                  (lambda (_target17138_ _ids17139_ _clause17140_ _E17141_)
                    (letrec ((_generate117143_
                              (lambda (_hd17230_ _fender17231_ _body17232_)
                                (let ((_g18011_
                                       (_parse-clause16707_
                                        _hd17230_
                                        _ids17139_)))
                                  (begin
                                    (let ((_g18012_ (values-count _g18011_)))
                                      (if (not (fx= _g18012_ 2))
                                          (error "Context expects 2 values"
                                                 _g18012_)))
                                    (let ((_e17234_ (values-ref _g18011_ 0))
                                          (_mvars17235_
                                           (values-ref _g18011_ 1)))
                                      (let* ((_pvars17237_
                                              (map gx#syntax-local-rewrap
                                                   (gx#gentemps _mvars17235_)))
                                             (_E17239_
                                              (cons _E17141_
                                                    (cons _target17138_ '())))
                                             (_K17272_
                                              (gx#core-list
                                               'lambda%
                                               _pvars17237_
                                               (gx#core-list
                                                'let-syntax
                                                (map (lambda (_mvar17241_
                                                              _pvar17242_)
                                                       (let* ((_mvar1724317250_
                                                               _mvar17241_)
                                                              (_E1724517254_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (error '"No clause matching" _mvar1724317250_)))
                      (_K1724617260_
                       (lambda (_depth17257_ _id17258_)
                         (cons _id17258_
                               (cons (gx#core-list
                                      'make-syntax-pattern
                                      (gx#core-list 'quote _id17258_)
                                      (gx#core-list 'quote _pvar17242_)
                                      _depth17257_)
                                     '())))))
                 (if (##pair? _mvar1724317250_)
                     (let ((_hd1724717263_ (##car _mvar1724317250_))
                           (_tl1724817265_ (##cdr _mvar1724317250_)))
                       (let* ((_id17268_ _hd1724717263_)
                              (_depth17270_ _tl1724817265_))
                         (_K1724617260_ _depth17270_ _id17268_)))
                     (_E1724517254_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _mvars17235_
                                                     _pvars17237_)
                                                (if (eq? _fender17231_ '#t)
                                                    _body17232_
                                                    (gx#core-list
                                                     'if
                                                     _fender17231_
                                                     _body17232_
                                                     _E17239_))))))
                                        (_generate-match16706_
                                         _hd17230_
                                         _target17138_
                                         _e17234_
                                         _mvars17235_
                                         _K17272_
                                         _E17239_))))))))
                      (let* ((_e1714417164_ _clause17140_)
                             (_E1715317168_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _e1714417164_)))
                             (_E1714617202_
                              (lambda ()
                                (if (gx#stx-pair? _e1714417164_)
                                    (let ((_e1715417172_
                                           (gx#syntax-e _e1714417164_)))
                                      (let ((_hd1715517175_
                                             (##car _e1715417172_))
                                            (_tl1715617177_
                                             (##cdr _e1715417172_)))
                                        (let ((_hd17180_ _hd1715517175_))
                                          (if (gx#stx-pair? _tl1715617177_)
                                              (let ((_e1715717182_
                                                     (gx#syntax-e
                                                      _tl1715617177_)))
                                                (let ((_hd1715817185_
                                                       (##car _e1715717182_))
                                                      (_tl1715917187_
                                                       (##cdr _e1715717182_)))
                                                  (let ((_fender17190_
                                                         _hd1715817185_))
                                                    (if (gx#stx-pair?
                                                         _tl1715917187_)
                                                        (let ((_e1716017192_
                                                               (gx#syntax-e
                                                                _tl1715917187_)))
                                                          (let ((_hd1716117195_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1716017192_))
                        (_tl1716217197_ (##cdr _e1716017192_)))
                    (let ((_body17200_ _hd1716117195_))
                      (if (gx#stx-null? _tl1716217197_)
                          (if '#t
                              (_generate117143_
                               _hd17180_
                               _fender17190_
                               _body17200_)
                              (_E1715317168_))
                          (_E1715317168_)))))
                (_E1715317168_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1715317168_)))))
                                    (_E1715317168_))))
                             (_E1714517226_
                              (lambda ()
                                (if (gx#stx-pair? _e1714417164_)
                                    (let ((_e1714717206_
                                           (gx#syntax-e _e1714417164_)))
                                      (let ((_hd1714817209_
                                             (##car _e1714717206_))
                                            (_tl1714917211_
                                             (##cdr _e1714717206_)))
                                        (let ((_hd17214_ _hd1714817209_))
                                          (if (gx#stx-pair? _tl1714917211_)
                                              (let ((_e1715017216_
                                                     (gx#syntax-e
                                                      _tl1714917211_)))
                                                (let ((_hd1715117219_
                                                       (##car _e1715017216_))
                                                      (_tl1715217221_
                                                       (##cdr _e1715017216_)))
                                                  (let ((_body17224_
                                                         _hd1715117219_))
                                                    (if (gx#stx-null?
                                                         _tl1715217221_)
                                                        (if '#t
                                                            (_generate117143_
                                                             _hd17214_
                                                             '#t
                                                             _body17224_)
                                                            (_E1714617202_))
                                                        (_E1714617202_)))))
                                              (_E1714617202_)))))
                                    (_E1714617202_)))))
                        (_E1714517226_)))))
                 (_generate-match16706_
                  (lambda (_where16870_
                           _target16871_
                           _hd16872_
                           _mvars16873_
                           _K16874_
                           _E16875_)
                    (letrec ((_BUG16877_
                              (lambda (_q17136_)
                                (error '"BUG: syntax-case; generate"
                                       _stx16698_
                                       _hd16872_
                                       _q17136_)))
                             (_recur16878_
                              (lambda (_e16969_
                                       _vars16970_
                                       _target16971_
                                       _E16972_
                                       _k16973_)
                                (let* ((_e1697416981_ _e16969_)
                                       (_E1697616985_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e1697416981_)))
                                       (_K1697717124_
                                        (lambda (_body16988_ _tag16989_)
                                          (let ((_$e16991_ _tag16989_))
                                            (let ((_default1699316997_
                                                   (lambda ()
                                                     (_BUG16877_ _e16969_)))
                                                  (_table1699416999_
                                                   '#((datum . 8)
                                                      #f
                                                      #f
                                                      #f
                                                      (id . 1)
                                                      (splice . 4)
                                                      #f
                                                      #f
                                                      #f
                                                      #f
                                                      #f
                                                      #f
                                                      #f
                                                      #f
                                                      #f
                                                      #f
                                                      #f
                                                      #f
                                                      (var . 2)
                                                      #f
                                                      #f
                                                      #f
                                                      #f
                                                      #f
                                                      #f
                                                      (any . 0)
                                                      (vector . 6)
                                                      #f
                                                      #f
                                                      #f
                                                      (box . 7)
                                                      #f
                                                      #f
                                                      #f
                                                      #f
                                                      #f
                                                      #f
                                                      #f
                                                      #f
                                                      #f
                                                      #f
                                                      #f
                                                      #f
                                                      #f
                                                      (null . 5)
                                                      #f
                                                      #f
                                                      #f
                                                      #f
                                                      #f
                                                      #f
                                                      #f
                                                      (cons . 3)
                                                      #f
                                                      #f
                                                      #f
                                                      #f
                                                      #f
                                                      #f
                                                      #f)))
                                              (if (symbol? _$e16991_)
                                                  (let* ((_h17002_
                                                          (##symbol-hash
                                                           _$e16991_))
                                                         (_ix17005_
                                                          (##fxmodulo
                                                           _h17002_
                                                           '60))
                                                         (_q17008_
                                                          (##vector-ref
                                                           _table1699416999_
                                                           _ix17005_)))
                                                    (if _q17008_
                                                        (if (eq? (##car _q17008_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e16991_)
                    (let ((_x17012_ (##cdr _q17008_)))
                      (if (##fx< _x17012_ '4)
                          (if (##fx< _x17012_ '2)
                              (if (##fx= _x17012_ '0)
                                  (_k16973_ _vars16970_)
                                  (gx#core-list
                                   'if
                                   (gx#core-list 'identifier? _target16971_)
                                   (gx#core-list
                                    'if
                                    (gx#core-list
                                     _identifier=?16699_
                                     (gx#core-list _wrap-e16701_ _body16988_)
                                     _target16971_)
                                    (_k16973_ _vars16970_)
                                    _E16972_)
                                   _E16972_))
                              (if (##fx= _x17012_ '2)
                                  (_k16973_
                                   (cons (cons _body16988_ _target16971_)
                                         _vars16970_))
                                  (let ((_$e17015_ (gx#genident__1 'e))
                                        (_$hd17016_ (gx#genident__1 'hd))
                                        (_$tl17017_ (gx#genident__1 'tl)))
                                    (gx#core-list
                                     'if
                                     (gx#core-list 'stx-pair? _target16971_)
                                     (gx#core-list
                                      'let-values
                                      (cons (cons (cons _$e17015_ '())
                                                  (cons (gx#core-list
                                                         _unwrap-e16700_
                                                         _target16971_)
                                                        '()))
                                            '())
                                      (gx#core-list
                                       'let-values
                                       (cons (cons (cons _$hd17016_ '())
                                                   (cons (gx#core-list
                                                          '##car
                                                          _$e17015_)
                                                         '()))
                                             (cons (cons (cons _$tl17017_ '())
                                                         (cons (gx#core-list
                                                                '##cdr
                                                                _$e17015_)
                                                               '()))
                                                   '()))
                                       (let* ((_body1701817025_ _body16988_)
                                              (_E1702017029_
                                               (lambda ()
                                                 (error '"No clause matching"
                                                        _body1701817025_)))
                                              (_K1702117037_
                                               (lambda (_tl17032_ _hd17033_)
                                                 (_recur16878_
                                                  _hd17033_
                                                  _vars16970_
                                                  _$hd17016_
                                                  _E16972_
                                                  (lambda (_vars17035_)
                                                    (_recur16878_
                                                     _tl17032_
                                                     _vars17035_
                                                     _$tl17017_
                                                     _E16972_
                                                     _k16973_))))))
                                         (if (##pair? _body1701817025_)
                                             (let ((_hd1702217040_
                                                    (##car _body1701817025_))
                                                   (_tl1702317042_
                                                    (##cdr _body1701817025_)))
                                               (let* ((_hd17045_
                                                       _hd1702217040_)
                                                      (_tl17047_
                                                       _tl1702317042_))
                                                 (_K1702117037_
                                                  _tl17047_
                                                  _hd17045_)))
                                             (_E1702017029_)))))
                                     _E16972_))))
                          (if (##fx< _x17012_ '6)
                              (if (##fx= _x17012_ '4)
                                  (let* ((_body1704817055_ _body16988_)
                                         (_E1705017059_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _body1704817055_)))
                                         (_K1705117108_
                                          (lambda (_tl17062_ _hd17063_)
                                            (let* ((_rlen17065_
                                                    (_splice-rlen16879_
                                                     _tl17062_))
                                                   (_$target17067_
                                                    (gx#genident__1 'target))
                                                   (_$hd17069_
                                                    (gx#genident__1 'hd))
                                                   (_$tl17071_
                                                    (gx#genident__1 'tl))
                                                   (_$lp17073_
                                                    (gx#genident__1 'loop))
                                                   (_$lp-e17075_
                                                    (gx#genident__1 'e))
                                                   (_$lp-hd17077_
                                                    (gx#genident__1 'lp-hd))
                                                   (_$lp-tl17079_
                                                    (gx#genident__1 'lp-tl))
                                                   (_svars17081_
                                                    (_splice-vars16880_
                                                     _hd17063_))
                                                   (_lvars17083_
                                                    (gx#gentemps _svars17081_))
                                                   (_tlvars17085_
                                                    (gx#gentemps _svars17081_))
                                                   (_linit17089_
                                                    (map (lambda (_var17087_)
                                                           (gx#core-list
                                                            'quote
                                                            '()))
                                                         _lvars17083_)))
                                              (letrec ((_make-loop17092_
                                                        (lambda (_vars17094_)
                                                          (gx#core-list
                                                           'letrec-values
                                                           (cons (cons (cons _$lp17073_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '())
                               (cons (gx#core-list
                                      'lambda%
                                      (cons _$hd17069_ _lvars17083_)
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-pair? _$hd17069_)
                                       (gx#core-list
                                        'let-values
                                        (cons (cons (cons _$lp-e17075_ '())
                                                    (cons (gx#core-list
                                                           _unwrap-e16700_
                                                           _$hd17069_)
                                                          '()))
                                              '())
                                        (gx#core-list
                                         'let-values
                                         (cons (cons (cons _$lp-hd17077_ '())
                                                     (cons (gx#core-list
                                                            '##car
                                                            _$lp-e17075_)
                                                           '()))
                                               (cons (cons (cons _$lp-tl17079_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   (cons (gx#core-list '##cdr _$lp-e17075_) '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (_recur16878_
                                          _hd17063_
                                          '()
                                          _$lp-hd17077_
                                          _E16972_
                                          (lambda (_hdvars17096_)
                                            (cons* _$lp17073_
                                                   _$lp-tl17079_
                                                   (map (lambda (_svar17098_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _lvar17099_)
                  (gx#core-list
                   'cons
                   (assgetq _svar17098_ _hdvars17096_ _BUG16877_)
                   _lvar17099_))
                _svars17081_
                _lvars17083_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (gx#core-list
                                        'let-values
                                        (map (lambda (_lvar17101_ _tlvar17102_)
                                               (cons (cons _tlvar17102_ '())
                                                     (cons (gx#core-list
                                                            'reverse
                                                            _lvar17101_)
                                                           '())))
                                             _lvars17083_
                                             _tlvars17085_)
                                        (_k16973_
                                         (foldl (lambda (_svar17104_
                                                         _tlvar17105_
                                                         _r17106_)
                                                  (cons (cons _svar17104_
                                                              _tlvar17105_)
                                                        _r17106_))
                                                _vars17094_
                                                _svars17081_
                                                _tlvars17085_)))))
                                     '()))
                         '())
                   (cons* _$lp17073_ _$target17067_ _linit17089_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#core-list
                                                 'if
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target16971_)
                                                 (gx#core-list
                                                  'if
                                                  (gx#core-list
                                                   'fx>=
                                                   (gx#core-list
                                                    'stx-length
                                                    _target16971_)
                                                   _rlen17065_)
                                                  (gx#core-list
                                                   'let-values
                                                   (cons (cons (cons _$target17067_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _$tl17071_ '()))
                       (cons (gx#core-list
                              'syntax-split-splice
                              _target16971_
                              _rlen17065_)
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_recur16878_
                                                    _tl17062_
                                                    _vars16970_
                                                    _$tl17071_
                                                    _E16972_
                                                    _make-loop17092_))
                                                  _E16972_)
                                                 _E16972_))))))
                                    (if (##pair? _body1704817055_)
                                        (let ((_hd1705217111_
                                               (##car _body1704817055_))
                                              (_tl1705317113_
                                               (##cdr _body1704817055_)))
                                          (let* ((_hd17116_ _hd1705217111_)
                                                 (_tl17118_ _tl1705317113_))
                                            (_K1705117108_
                                             _tl17118_
                                             _hd17116_)))
                                        (_E1705017059_)))
                                  (gx#core-list
                                   'if
                                   (gx#core-list 'stx-null? _target16971_)
                                   (_k16973_ _vars16970_)
                                   _E16972_))
                              (if (##fx= _x17012_ '6)
                                  (let ((_$e17120_ (gx#genident__1 'e)))
                                    (gx#core-list
                                     'if
                                     (gx#core-list 'stx-vector? _target16971_)
                                     (gx#core-list
                                      'let-values
                                      (cons (cons (cons _$e17120_ '())
                                                  (cons (gx#core-list
                                                         'vector->list
                                                         (gx#core-list
                                                          _unwrap-e16700_
                                                          _target16971_))
                                                        '()))
                                            '())
                                      (_recur16878_
                                       _body16988_
                                       _vars16970_
                                       _$e17120_
                                       _E16972_
                                       _k16973_))
                                     _E16972_))
                                  (if (##fx= _x17012_ '7)
                                      (let ((_$e17122_ (gx#genident__1 'e)))
                                        (gx#core-list
                                         'if
                                         (gx#core-list 'stx-box? _target16971_)
                                         (gx#core-list
                                          'let-values
                                          (cons (cons (cons _$e17122_ '())
                                                      (cons (gx#core-list
                                                             'unbox
                                                             (gx#core-list
                                                              _unwrap-e16700_
                                                              _target16971_))
                                                            '()))
                                                '())
                                          (_recur16878_
                                           _body16988_
                                           _vars16970_
                                           _$e17122_
                                           _E16972_
                                           _k16973_))
                                         _E16972_))
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-datum? _target16971_)
                                       (gx#core-list
                                        'if
                                        (gx#core-list
                                         'equal?
                                         (gx#core-list 'stx-e _target16971_)
                                         _body16988_)
                                        (_k16973_ _vars16970_)
                                        _E16972_)
                                       _E16972_))))))
                    (_default1699316997_))
                (_default1699316997_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_default1699316997_)))))))
                                  (if (##pair? _e1697416981_)
                                      (let ((_hd1697817127_
                                             (##car _e1697416981_))
                                            (_tl1697917129_
                                             (##cdr _e1697416981_)))
                                        (let* ((_tag17132_ _hd1697817127_)
                                               (_body17134_ _tl1697917129_))
                                          (_K1697717124_
                                           _body17134_
                                           _tag17132_)))
                                      (_E1697616985_)))))
                             (_splice-rlen16879_
                              (lambda (_e16931_)
                                (let _lp16933_ ((_e16935_ _e16931_)
                                                (_n16936_ '0))
                                  (let* ((_e1693716944_ _e16935_)
                                         (_E1693916948_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1693716944_)))
                                         (_K1694016957_
                                          (lambda (_body16951_ _tag16952_)
                                            (let ((_$e16954_ _tag16952_))
                                              (if (eq? 'splice _$e16954_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Ambiguous pattern"
                                                   _stx16698_
                                                   _where16870_)
                                                  (if (eq? 'cons _$e16954_)
                                                      (_lp16933_
                                                       (cdr _body16951_)
                                                       (fx+ _n16936_ '1))
                                                      _n16936_))))))
                                    (if (##pair? _e1693716944_)
                                        (let ((_hd1694116960_
                                               (##car _e1693716944_))
                                              (_tl1694216962_
                                               (##cdr _e1693716944_)))
                                          (let* ((_tag16965_ _hd1694116960_)
                                                 (_body16967_ _tl1694216962_))
                                            (_K1694016957_
                                             _body16967_
                                             _tag16965_)))
                                        (_E1693916948_))))))
                             (_splice-vars16880_
                              (lambda (_e16887_)
                                (let _recur16889_ ((_e16891_ _e16887_)
                                                   (_vars16892_ '()))
                                  (let* ((_e1689316900_ _e16891_)
                                         (_E1689516904_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1689316900_)))
                                         (_K1689616919_
                                          (lambda (_body16907_ _tag16908_)
                                            (let ((_$e16910_ _tag16908_))
                                              (if (eq? 'var _$e16910_)
                                                  (cons _body16907_
                                                        _vars16892_)
                                                  (if (let ((_$e16913_
                                                             (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _$e16910_)))
                (if _$e16913_ _$e16913_ (eq? 'splice _$e16910_)))
              (_recur16889_
               (cdr _body16907_)
               (_recur16889_ (car _body16907_) _vars16892_))
              (if (let ((_$e16916_ (eq? 'vector _$e16910_)))
                    (if _$e16916_ _$e16916_ (eq? 'box _$e16910_)))
                  (_recur16889_ _body16907_ _vars16892_)
                  _vars16892_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (##pair? _e1689316900_)
                                        (let ((_hd1689716922_
                                               (##car _e1689316900_))
                                              (_tl1689816924_
                                               (##cdr _e1689316900_)))
                                          (let* ((_tag16927_ _hd1689716922_)
                                                 (_body16929_ _tl1689816924_))
                                            (_K1689616919_
                                             _body16929_
                                             _tag16927_)))
                                        (_E1689516904_))))))
                             (_make-body16881_
                              (lambda (_vars16883_)
                                (cons _K16874_
                                      (map (lambda (_mvar16885_)
                                             (assgetq (car _mvar16885_)
                                                      _vars16883_
                                                      _BUG16877_))
                                           _mvars16873_)))))
                      (_recur16878_
                       _hd16872_
                       '()
                       _target16871_
                       _E16875_
                       _make-body16881_))))
                 (_parse-clause16707_
                  (lambda (_hd16776_ _ids16777_)
                    (let _recur16779_ ((_e16781_ _hd16776_)
                                       (_vars16782_ '())
                                       (_depth16783_ '0))
                      (if (gx#identifier? _e16781_)
                          (if (gx#underscore? _e16781_)
                              (values '(any) _vars16782_)
                              (if (gx#ellipsis? _e16781_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Misplaced ellipsis"
                                   _stx16698_
                                   _hd16776_)
                                  (if (find (lambda (_id16785_)
                                              (gx#bound-identifier=?
                                               _e16781_
                                               _id16785_))
                                            _ids16777_)
                                      (values (cons 'id _e16781_) _vars16782_)
                                      (if (find (lambda (_var16787_)
                                                  (gx#bound-identifier=?
                                                   _e16781_
                                                   (car _var16787_)))
                                                _vars16782_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Duplicate pattern variable"
                                           _stx16698_
                                           _e16781_)
                                          (values (cons 'var _e16781_)
                                                  (cons (cons _e16781_
                                                              _depth16783_)
                                                        _vars16782_))))))
                          (if (gx#stx-pair? _e16781_)
                              (let* ((_e1678816795_ _e16781_)
                                     (_E1679016799_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _e1678816795_)))
                                     (_E1678916860_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1678816795_)
                                            (let ((_e1679116803_
                                                   (gx#syntax-e
                                                    _e1678816795_)))
                                              (let ((_hd1679216806_
                                                     (##car _e1679116803_))
                                                    (_tl1679316808_
                                                     (##cdr _e1679116803_)))
                                                (let* ((_hd16811_
                                                        _hd1679216806_)
                                                       (_rest16813_
                                                        _tl1679316808_))
                                                  (if '#t
                                                      (let* ((_make-pair16828_
                                                              (lambda (_tag16815_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd16816_
                               _tl16817_)
                        (let* ((_hd-depth16819_
                                (if (eq? _tag16815_ 'splice)
                                    (fx+ _depth16783_ '1)
                                    _depth16783_))
                               (_g18013_
                                (_recur16779_
                                 _hd16816_
                                 _vars16782_
                                 _hd-depth16819_)))
                          (begin
                            (let ((_g18014_ (values-count _g18013_)))
                              (if (not (fx= _g18014_ 2))
                                  (error "Context expects 2 values" _g18014_)))
                            (let ((_hd16821_ (values-ref _g18013_ 0))
                                  (_vars16822_ (values-ref _g18013_ 1)))
                              (let ((_g18015_
                                     (_recur16779_
                                      _tl16817_
                                      _vars16822_
                                      _depth16783_)))
                                (begin
                                  (let ((_g18016_ (values-count _g18015_)))
                                    (if (not (fx= _g18016_ 2))
                                        (error "Context expects 2 values"
                                               _g18016_)))
                                  (let ((_tl16824_ (values-ref _g18015_ 0))
                                        (_vars16825_ (values-ref _g18015_ 1)))
                                    (let ()
                                      (values (cons* _tag16815_
                                                     _hd16821_
                                                     _tl16824_)
                                              _vars16825_))))))))))
                     (_e1682916836_ _rest16813_)
                     (_E1683116840_
                      (lambda ()
                        (_make-pair16828_ 'cons _hd16811_ _rest16813_)))
                     (_E1683016856_
                      (lambda ()
                        (if (gx#stx-pair? _e1682916836_)
                            (let ((_e1683216844_ (gx#syntax-e _e1682916836_)))
                              (let ((_hd1683316847_ (##car _e1683216844_))
                                    (_tl1683416849_ (##cdr _e1683216844_)))
                                (let* ((_rest-hd16852_ _hd1683316847_)
                                       (_rest-tl16854_ _tl1683416849_))
                                  (if '#t
                                      (if (gx#ellipsis? _rest-hd16852_)
                                          (_make-pair16828_
                                           'splice
                                           _hd16811_
                                           _rest-tl16854_)
                                          (_make-pair16828_
                                           'cons
                                           _hd16811_
                                           _rest16813_))
                                      (_E1683116840_)))))
                            (_E1683116840_)))))
                (_E1683016856_))
              (_E1679016799_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1679016799_)))))
                                (_E1678916860_))
                              (if (gx#stx-null? _e16781_)
                                  (values '(null) _vars16782_)
                                  (if (gx#stx-vector? _e16781_)
                                      (let ((_g18017_
                                             (_recur16779_
                                              (vector->list
                                               (gx#syntax-e _e16781_))
                                              _vars16782_
                                              _depth16783_)))
                                        (begin
                                          (let ((_g18018_
                                                 (values-count _g18017_)))
                                            (if (not (fx= _g18018_ 2))
                                                (error "Context expects 2 values"
                                                       _g18018_)))
                                          (let ((_e16864_
                                                 (values-ref _g18017_ 0))
                                                (_vars16865_
                                                 (values-ref _g18017_ 1)))
                                            (values (cons 'vector _e16864_)
                                                    _vars16865_))))
                                      (if (gx#stx-box? _e16781_)
                                          (let ((_g18019_
                                                 (_recur16779_
                                                  (unbox (gx#syntax-e
                                                          _e16781_))
                                                  _vars16782_
                                                  _depth16783_)))
                                            (begin
                                              (let ((_g18020_
                                                     (values-count _g18019_)))
                                                (if (not (fx= _g18020_ 2))
                                                    (error "Context expects 2 values"
                                                           _g18020_)))
                                              (let ((_e16867_
                                                     (values-ref _g18019_ 0))
                                                    (_vars16868_
                                                     (values-ref _g18019_ 1)))
                                                (values (cons 'box _e16867_)
                                                        _vars16868_))))
                                          (if (gx#stx-datum? _e16781_)
                                              (values (cons 'datum
                                                            (gx#stx-e
                                                             _e16781_))
                                                      _vars16782_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad pattern"
                                               _stx16698_
                                               _e16781_)))))))))))
          (let* ((_e1670816721_ _stx16698_)
                 (_E1671016725_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1670816721_)))
                 (_E1670916772_
                  (lambda ()
                    (if (gx#stx-pair? _e1670816721_)
                        (let ((_e1671116729_ (gx#syntax-e _e1670816721_)))
                          (let ((_hd1671216732_ (##car _e1671116729_))
                                (_tl1671316734_ (##cdr _e1671116729_)))
                            (if (gx#stx-pair? _tl1671316734_)
                                (let ((_e1671416737_
                                       (gx#syntax-e _tl1671316734_)))
                                  (let ((_hd1671516740_ (##car _e1671416737_))
                                        (_tl1671616742_ (##cdr _e1671416737_)))
                                    (let ((_expr16745_ _hd1671516740_))
                                      (if (gx#stx-pair? _tl1671616742_)
                                          (let ((_e1671716747_
                                                 (gx#syntax-e _tl1671616742_)))
                                            (let ((_hd1671816750_
                                                   (##car _e1671716747_))
                                                  (_tl1671916752_
                                                   (##cdr _e1671716747_)))
                                              (let* ((_ids16755_
                                                      _hd1671816750_)
                                                     (_clauses16757_
                                                      _tl1671916752_))
                                                (if '#t
                                                    (if (not (gx#identifier-list?
                                                              _ids16755_))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad template identifier list"
                                                         _stx16698_
                                                         _ids16755_)
                                                        (if (not (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _clauses16757_))
                    (gx#raise-syntax-error '#f '"Bad syntax" _stx16698_)
                    (let* ((_ids16759_ (gx#syntax->list _ids16755_))
                           (_clauses16761_ (gx#syntax->list _clauses16757_))
                           (_clause-ids16763_ (gx#gentemps _clauses16761_))
                           (_E16765_ (gx#genident__0))
                           (_target16767_ (gx#genident__0))
                           (_first16769_
                            (if (null? _clauses16761_)
                                _E16765_
                                (car _clause-ids16763_))))
                      (gx#stx-wrap-source
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _E16765_ '())
                                    (cons (gx#core-list
                                           'lambda%
                                           (cons _target16767_ '())
                                           (gx#core-list
                                            'raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _target16767_))
                                          '()))
                              '())
                        (_generate-body16704_
                         (_generate-bindings16703_
                          _target16767_
                          _ids16759_
                          _clauses16761_
                          _clause-ids16763_
                          _E16765_)
                         (cons _first16769_ (cons _expr16745_ '()))))
                       (gx#stx-source _stx16698_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1671016725_)))))
                                          (_E1671016725_)))))
                                (_E1671016725_))))
                        (_E1671016725_)))))
            (_E1670916772_)))))
    (begin
      (define gx#macro-expand-syntax-case__0
        (lambda (_stx17427_)
          (let* ((_identifier=?17429_ 'free-identifier=?)
                 (_unwrap-e17431_ 'syntax-e)
                 (_wrap-e17433_ 'quote-syntax))
            (gx#macro-expand-syntax-case__%
             _stx17427_
             _identifier=?17429_
             _unwrap-e17431_
             _wrap-e17433_))))
      (define gx#macro-expand-syntax-case__1
        (lambda (_stx17435_ _identifier=?17436_)
          (let* ((_unwrap-e17438_ 'syntax-e) (_wrap-e17440_ 'quote-syntax))
            (gx#macro-expand-syntax-case__%
             _stx17435_
             _identifier=?17436_
             _unwrap-e17438_
             _wrap-e17440_))))
      (define gx#macro-expand-syntax-case__2
        (lambda (_stx17442_ _identifier=?17443_ _unwrap-e17444_)
          (let ((_wrap-e17446_ 'quote-syntax))
            (gx#macro-expand-syntax-case__%
             _stx17442_
             _identifier=?17443_
             _unwrap-e17444_
             _wrap-e17446_))))
      (define gx#macro-expand-syntax-case
        (lambda _g18022_
          (let ((_g18021_ (length _g18022_)))
            (cond ((fx= _g18021_ 1)
                   (apply gx#macro-expand-syntax-case__0 _g18022_))
                  ((fx= _g18021_ 2)
                   (apply gx#macro-expand-syntax-case__1 _g18022_))
                  ((fx= _g18021_ 3)
                   (apply gx#macro-expand-syntax-case__2 _g18022_))
                  ((fx= _g18021_ 4)
                   (apply gx#macro-expand-syntax-case__% _g18022_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-syntax-case
                    _g18022_))))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx16695_)
      (if (gx#identifier? _stx16695_)
          (##structure-instance-of?
           (gx#syntax-local-e__% _stx16695_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd16653_ . _rest16654_)
      (let ((_len16656_ (length _hd16653_)))
        (let _lp16658_ ((_rest16660_ _rest16654_))
          (let* ((_rest1666116669_ _rest16660_)
                 (_E1666416673_
                  (lambda () (error '"No clause matching" _rest1666116669_)))
                 (_else1666316677_ (lambda () '#!void))
                 (_K1666516683_
                  (lambda (_rest16680_ _hd16681_)
                    (if (fx= _len16656_ (length _hd16681_))
                        (_lp16658_ _rest16680_)
                        (gx#raise-syntax-error
                         '#f
                         '"Splice length mismatch"
                         _hd16681_)))))
            (if (##pair? _rest1666116669_)
                (let ((_hd1666616686_ (##car _rest1666116669_))
                      (_tl1666716688_ (##cdr _rest1666116669_)))
                  (let* ((_hd16691_ _hd1666616686_)
                         (_rest16693_ _tl1666716688_))
                    (_K1666516683_ _rest16693_ _hd16691_)))
                (_else1666316677_)))))))
  (define gx#syntax-split-splice
    (lambda (_stx16611_ _n16612_)
      (let _lp16614_ ((_rest16616_ _stx16611_) (_r16617_ '()))
        (if (gx#stx-pair? _rest16616_)
            (let* ((_g1661816625_ (gx#syntax-e _rest16616_))
                   (_E1662016629_
                    (lambda () (error '"No clause matching" _g1661816625_)))
                   (_K1662116635_
                    (lambda (_rest16632_ _hd16633_)
                      (_lp16614_ _rest16632_ (cons _hd16633_ _r16617_)))))
              (if (##pair? _g1661816625_)
                  (let ((_hd1662216638_ (##car _g1661816625_))
                        (_tl1662316640_ (##cdr _g1661816625_)))
                    (let* ((_hd16643_ _hd1662216638_)
                           (_rest16645_ _tl1662316640_))
                      (_K1662116635_ _rest16645_ _hd16643_)))
                  (_E1662016629_)))
            (let _lp16647_ ((_n16649_ _n16612_)
                            (_l16650_ _r16617_)
                            (_r16651_ _rest16616_))
              (if (null? _l16650_)
                  (values _l16650_ _r16651_)
                  (if (fxpositive? _n16649_)
                      (_lp16647_
                       (fx- _n16649_ '1)
                       (cdr _l16650_)
                       (cons (car _l16650_) _r16651_))
                      (values (reverse _l16650_) _r16651_)))))))))
