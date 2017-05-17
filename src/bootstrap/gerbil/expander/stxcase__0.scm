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
    (lambda _$args13829_
      (apply make-struct-instance gx#syntax-pattern::t _$args13829_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self13826_ _stx13827_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx13827_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx13435_)
      (let ((_generate13437_
             (lambda (_e13664_)
               (let ((_BUG13666_
                      (lambda (_q13824_)
                        (error '"BUG: syntax; generate"
                               _stx13435_
                               _e13664_
                               _q13824_))))
                 (let ((_local-pattern-e13667_
                        (lambda (_pat13822_)
                          (gx#syntax-local-rewrap
                           (##structure-ref
                            _pat13822_
                            '2
                            gx#syntax-pattern::t
                            '#f)))))
                   (let ((_getvar13668_
                          (lambda (_q13819_ _vars13820_)
                            (assgetq _q13819_ _vars13820_ _BUG13666_))))
                     (let ((_getarg13669_
                            (lambda (_arg13785_ _vars13786_)
                              (let ((_arg1378713794_ _arg13785_))
                                (let ((_E1378913798_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _arg1378713794_))))
                                  (let ((_K1379013807_
                                         (lambda (_e13801_ _tag13802_)
                                           (let ((_$e13804_ _tag13802_))
                                             (if (eq? _$e13804_ 'ref)
                                                 (_getvar13668_
                                                  _e13801_
                                                  _vars13786_)
                                                 (if (eq? _$e13804_ 'pattern)
                                                     (_local-pattern-e13667_
                                                      _e13801_)
                                                     (_BUG13666_
                                                      _arg13785_)))))))
                                    (if (##pair? _arg1378713794_)
                                        (let ((_hd1379113810_
                                               (##car _arg1378713794_))
                                              (_tl1379213812_
                                               (##cdr _arg1378713794_)))
                                          (let ((_tag13815_ _hd1379113810_))
                                            (let ((_e13817_ _tl1379213812_))
                                              (_K1379013807_
                                               _e13817_
                                               _tag13815_))))
                                        (_E1378913798_))))))))
                       ((letrec ((_recur13671_
                                  (lambda (_e13673_ _vars13674_)
                                    (let ((_e1367513682_ _e13673_))
                                      (let ((_E1367713686_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _e1367513682_))))
                                        (let ((_K1367813773_
                                               (lambda (_body13689_ _tag13690_)
                                                 (let ((_$e13692_ _tag13690_))
                                                   (if (eq? _$e13692_ 'datum)
                                                       (gx#core-list
                                                        'quote
                                                        _body13689_)
                                                       (if (eq? _$e13692_
                                                                'term)
                                                           (gx#core-list
                                                            'datum->syntax
                                                            '#f
                                                            (gx#core-list
                                                             'quote
                                                             _body13689_))
                                                           (if (eq? _$e13692_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'pattern)
                       (_local-pattern-e13667_ _body13689_)
                       (if (eq? _$e13692_ 'ref)
                           (_getvar13668_ _body13689_ _vars13674_)
                           (if (eq? _$e13692_ 'cons)
                               (gx#core-list
                                'cons
                                (_recur13671_ (car _body13689_) _vars13674_)
                                (_recur13671_ (cdr _body13689_) _vars13674_))
                               (if (eq? _$e13692_ 'vector)
                                   (gx#core-list
                                    'list->vector
                                    (_recur13671_ _body13689_ _vars13674_))
                                   (if (eq? _$e13692_ 'box)
                                       (gx#core-list
                                        'box
                                        (_recur13671_ _body13689_ _vars13674_))
                                       (if (eq? _$e13692_ 'splice)
                                           (let ((_body1369413705_
                                                  _body13689_))
                                             (let ((_E1369613709_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _body1369413705_))))
                                               (let ((_K1369713747_
                                                      (lambda (_args13712_
                                                               _iv13713_
                                                               _hd13714_
                                                               _depth13715_)
                                                        (let ((_targets13721_
                                                               (map (lambda (_g1371613718_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_getarg13669_ _g1371613718_ _vars13674_))
                            _args13712_)))
                  (let ((_fold-in13723_ (gx#gentemps _args13712_)))
                    (let ((_fold-out13725_ (gx#genident__0)))
                      (let ((_lambda-args13727_
                             (foldr1 cons
                                     (cons _fold-out13725_ '())
                                     _fold-in13723_)))
                        (let ((_lambda-body13744_
                               (if (fx> _depth13715_ '1)
                                   (let ((_r-args13735_
                                          (map (lambda (_arg13729_)
                                                 (cons 'ref (cdr _arg13729_)))
                                               _args13712_))
                                         (_r-vars13736_
                                          (foldr (lambda (_arg13731_
                                                          _var13732_
                                                          _r13733_)
                                                   (cons (cons (cdr _arg13731_)
                                                               _var13732_)
                                                         _r13733_))
                                                 _vars13674_
                                                 _args13712_
                                                 _fold-in13723_)))
                                     (_recur13671_
                                      (cons* 'splice
                                             (fx- _depth13715_ '1)
                                             _hd13714_
                                             (cons 'var _fold-out13725_)
                                             _r-args13735_)
                                      _r-vars13736_))
                                   (let ((_hd-vars13742_
                                          (foldr (lambda (_arg13738_
                                                          _var13739_
                                                          _r13740_)
                                                   (cons (cons (cdr _arg13738_)
                                                               _var13739_)
                                                         _r13740_))
                                                 _vars13674_
                                                 _args13712_
                                                 _fold-in13723_)))
                                     (gx#core-list
                                      'cons
                                      (_recur13671_ _hd13714_ _hd-vars13742_)
                                      _fold-out13725_)))))
                          (let ()
                            (gx#core-list
                             'begin
                             (if (fx> (length _targets13721_) '1)
                                 (gx#core-cons*
                                  'syntax-check-splice-targets
                                  _targets13721_)
                                 '#!void)
                             (gx#core-cons*
                              'foldr
                              (gx#core-list
                               'lambda%
                               _lambda-args13727_
                               _lambda-body13744_)
                              (_recur13671_ _iv13713_ _vars13674_)
                              _targets13721_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _body1369413705_)
                                                     (let ((_hd1369813750_
                                                            (##car _body1369413705_))
                                                           (_tl1369913752_
                                                            (##cdr _body1369413705_)))
                                                       (let ((_depth13755_
                                                              _hd1369813750_))
                                                         (if (##pair? _tl1369913752_)
                                                             (let ((_hd1370013757_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##car _tl1369913752_))
                           (_tl1370113759_ (##cdr _tl1369913752_)))
                       (let ((_hd13762_ _hd1370013757_))
                         (if (##pair? _tl1370113759_)
                             (let ((_hd1370213764_ (##car _tl1370113759_))
                                   (_tl1370313766_ (##cdr _tl1370113759_)))
                               (let ((_iv13769_ _hd1370213764_))
                                 (let ((_args13771_ _tl1370313766_))
                                   (_K1369713747_
                                    _args13771_
                                    _iv13769_
                                    _hd13762_
                                    _depth13755_))))
                             (_E1369613709_))))
                     (_E1369613709_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1369613709_)))))
                                           (if (eq? _$e13692_ 'var)
                                               _body13689_
                                               (_BUG13666_
                                                _e13673_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _e1367513682_)
                                              (let ((_hd1367913776_
                                                     (##car _e1367513682_))
                                                    (_tl1368013778_
                                                     (##cdr _e1367513682_)))
                                                (let ((_tag13781_
                                                       _hd1367913776_))
                                                  (let ((_body13783_
                                                         _tl1368013778_))
                                                    (_K1367813773_
                                                     _body13783_
                                                     _tag13781_))))
                                              (_E1367713686_))))))))
                          _recur13671_)
                        _e13664_
                        '()))))))))
        (let ((_parse13438_
               (lambda (_e13479_)
                 (let ((_make-cons13481_
                        (lambda (_hd13656_ _tl13657_)
                          (let ((_g13841_ _hd13656_) (_g13843_ _tl13657_))
                            (begin
                              (let ((_g13842_ (values-count _g13841_)))
                                (if (not (fx= _g13842_ 2))
                                    (error "Context expects 2 values"
                                           _g13842_)))
                              (let ((_g13844_ (values-count _g13843_)))
                                (if (not (fx= _g13844_ 2))
                                    (error "Context expects 2 values"
                                           _g13844_)))
                              (let ((_hd-e13659_ (values-ref _g13841_ 0))
                                    (_hd-vars13660_ (values-ref _g13841_ 1)))
                                (let ((_tl-e13661_ (values-ref _g13843_ 0))
                                      (_tl-vars13662_ (values-ref _g13843_ 1)))
                                  (values (cons* 'cons _hd-e13659_ _tl-e13661_)
                                          (append _hd-vars13660_
                                                  _tl-vars13662_)))))))))
                   (let ((_make-splice13482_
                          (lambda (_where13595_
                                   _depth13596_
                                   _hd13597_
                                   _tl13598_)
                            (let ((_g13837_ _hd13597_) (_g13839_ _tl13598_))
                              (begin
                                (let ((_g13838_ (values-count _g13837_)))
                                  (if (not (fx= _g13838_ 2))
                                      (error "Context expects 2 values"
                                             _g13838_)))
                                (let ((_g13840_ (values-count _g13839_)))
                                  (if (not (fx= _g13840_ 2))
                                      (error "Context expects 2 values"
                                             _g13840_)))
                                (let ((_hd-e13600_ (values-ref _g13837_ 0))
                                      (_hd-vars13601_ (values-ref _g13837_ 1)))
                                  (let ((_tl-e13602_ (values-ref _g13839_ 0))
                                        (_tl-vars13603_
                                         (values-ref _g13839_ 1)))
                                    ((letrec ((_lp13605_
                                               (lambda (_rest13607_
                                                        _targets13608_
                                                        _vars13609_)
                                                 (let ((_rest1361013620_
                                                        _rest13607_))
                                                   (let ((_E1361313624_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest1361013620_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_else1361213628_
                                                            (lambda ()
                                                              (if (null? _targets13608_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Misplaced ellipsis"
                           _stx13435_
                           _where13595_)
                          (values (cons* 'splice
                                         _depth13596_
                                         _hd-e13600_
                                         _tl-e13602_
                                         _targets13608_)
                                  _vars13609_)))))
               (let ((_K1361413637_
                      (lambda (_rest13631_ _hd-pat13632_ _hd-depth*13633_)
                        (let ((_hd-depth13635_
                               (fx- _hd-depth*13633_ _depth13596_)))
                          (if (fxpositive? _hd-depth13635_)
                              (_lp13605_
                               _rest13631_
                               (cons (cons 'ref _hd-pat13632_) _targets13608_)
                               (cons (cons _hd-depth13635_ _hd-pat13632_)
                                     _vars13609_))
                              (if (fxzero? _hd-depth13635_)
                                  (_lp13605_
                                   _rest13631_
                                   (cons (cons 'pattern _hd-pat13632_)
                                         _targets13608_)
                                   _vars13609_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Too many ellipses"
                                   _stx13435_
                                   _where13595_)))))))
                 (if (##pair? _rest1361013620_)
                     (let ((_hd1361513640_ (##car _rest1361013620_))
                           (_tl1361613642_ (##cdr _rest1361013620_)))
                       (if (##pair? _hd1361513640_)
                           (let ((_hd1361713645_ (##car _hd1361513640_))
                                 (_tl1361813647_ (##cdr _hd1361513640_)))
                             (let ((_hd-depth*13650_ _hd1361713645_))
                               (let ((_hd-pat13652_ _tl1361813647_))
                                 (let ((_rest13654_ _tl1361613642_))
                                   (_K1361413637_
                                    _rest13654_
                                    _hd-pat13652_
                                    _hd-depth*13650_)))))
                           (_else1361213628_)))
                     (_else1361213628_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _lp13605_)
                                     _hd-vars13601_
                                     '()
                                     _tl-vars13603_))))))))
                     (letrec ((_recur13483_
                               (lambda (_e13488_ _is-e?13489_)
                                 (if (_is-e?13489_ _e13488_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Mislpaced ellipsis"
                                      _stx13435_)
                                     (if (gx#syntax-local-pattern? _e13488_)
                                         (let ((_pat13491_
                                                (gx#syntax-local-e__0
                                                 _e13488_)))
                                           (let ((_depth13493_
                                                  (##structure-ref
                                                   _pat13491_
                                                   '3
                                                   gx#syntax-pattern::t
                                                   '#f)))
                                             (let ()
                                               (if (fxpositive? _depth13493_)
                                                   (values (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat13491_)
                   (cons (cons _depth13493_ _pat13491_) '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (values (cons 'pattern
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat13491_)
                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (if (gx#identifier? _e13488_)
                                             (values (cons 'term _e13488_) '())
                                             (if (gx#stx-pair? _e13488_)
                                                 (let ((_e1349513502_
                                                        _e13488_))
                                                   (let ((_E1349713506_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _e1349513502_))))
                                                     (let ((_E1349613585_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e1349513502_)
                          (let ((_e1349813510_ (gx#syntax-e _e1349513502_)))
                            (let ((_hd1349913513_ (##car _e1349813510_))
                                  (_tl1350013515_ (##cdr _e1349813510_)))
                              (let ((_hd13518_ _hd1349913513_))
                                (let ((_rest13520_ _tl1350013515_))
                                  (if '#t
                                      (if (_is-e?13489_ _hd13518_)
                                          (let ((_e1352113528_ _rest13520_))
                                            (let ((_E1352313532_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad ellipsis syntax"
                                                      _stx13435_
                                                      _e13488_))))
                                              (let ((_E1352213546_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e1352113528_)
                                                           (let ((_e1352413536_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e1352113528_)))
                     (let ((_hd1352513539_ (##car _e1352413536_))
                           (_tl1352613541_ (##cdr _e1352413536_)))
                       (let ((_rest13544_ _hd1352513539_))
                         (if (gx#stx-null? _tl1352613541_)
                             (if '#t
                                 (_recur13483_ _rest13544_ false)
                                 (_E1352313532_))
                             (_E1352313532_)))))
                   (_E1352313532_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E1352213546_)))))
                                          ((letrec ((_lp13550_
                                                     (lambda (_rest13552_
                                                              _depth13553_)
                                                       (let ((_e1355413561_
                                                              _rest13552_))
                                                         (let ((_E1355613565_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (fxpositive? _depth13553_)
                              (_make-splice13482_
                               _e13488_
                               _depth13553_
                               (_recur13483_ _hd13518_ _is-e?13489_)
                               (_recur13483_ _rest13552_ _is-e?13489_))
                              (_make-cons13481_
                               (_recur13483_ _hd13518_ _is-e?13489_)
                               (_recur13483_ _rest13552_ _is-e?13489_))))))
                   (let ((_E1355513581_
                          (lambda ()
                            (if (gx#stx-pair? _e1355413561_)
                                (let ((_e1355713569_
                                       (gx#syntax-e _e1355413561_)))
                                  (let ((_hd1355813572_ (##car _e1355713569_))
                                        (_tl1355913574_ (##cdr _e1355713569_)))
                                    (let ((_rest-hd13577_ _hd1355813572_))
                                      (let ((_rest-tl13579_ _tl1355913574_))
                                        (if '#t
                                            (if (_is-e?13489_ _rest-hd13577_)
                                                (_lp13550_
                                                 _rest-tl13579_
                                                 (fx+ _depth13553_ '1))
                                                (if (fxpositive? _depth13553_)
                                                    (_make-splice13482_
                                                     _e13488_
                                                     _depth13553_
                                                     (_recur13483_
                                                      _hd13518_
                                                      _is-e?13489_)
                                                     (_recur13483_
                                                      _rest13552_
                                                      _is-e?13489_))
                                                    (_make-cons13481_
                                                     (_recur13483_
                                                      _hd13518_
                                                      _is-e?13489_)
                                                     (_recur13483_
                                                      _rest13552_
                                                      _is-e?13489_))))
                                            (_E1355613565_))))))
                                (_E1355613565_)))))
                     (let () (_E1355513581_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _lp13550_)
                                           _rest13520_
                                           '0))
                                      (_E1349713506_))))))
                          (_E1349713506_)))))
               (let () (_E1349613585_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-vector? _e13488_)
                                                     (let ((_g13831_
                                                            (_recur13483_
                                                             (vector->list
                                                              (gx#stx-unwrap__0
                                                               _e13488_))
                                                             _is-e?13489_)))
                                                       (begin
                                                         (let ((_g13832_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g13831_)))
                   (if (not (fx= _g13832_ 2))
                       (error "Context expects 2 values" _g13832_)))
                 (let ((_e13589_ (values-ref _g13831_ 0))
                       (_vars13590_ (values-ref _g13831_ 1)))
                   (values (cons 'vector _e13589_) _vars13590_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-box? _e13488_)
                                                         (let ((_g13833_
                                                                (_recur13483_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (unbox (gx#stx-unwrap__0 _e13488_))
                         _is-e?13489_)))
                   (begin
                     (let ((_g13834_ (values-count _g13833_)))
                       (if (not (fx= _g13834_ 2))
                           (error "Context expects 2 values" _g13834_)))
                     (let ((_e13592_ (values-ref _g13833_ 0))
                           (_vars13593_ (values-ref _g13833_ 1)))
                       (values (cons 'box _e13592_) _vars13593_))))
                 (values (cons 'datum _e13488_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       (let ((_g13835_ (_recur13483_ _e13479_ gx#ellipsis?)))
                         (begin
                           (let ((_g13836_ (values-count _g13835_)))
                             (if (not (fx= _g13836_ 2))
                                 (error "Context expects 2 values" _g13836_)))
                           (let ((_tree13485_ (values-ref _g13835_ 0))
                                 (_vars13486_ (values-ref _g13835_ 1)))
                             (if (null? _vars13486_)
                                 _tree13485_
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Missing ellipsis"
                                  _stx13435_
                                  _vars13486_)))))))))))
          (let ((_e1343913449_ _stx13435_))
            (let ((_E1344113453_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _stx13435_))))
              (let ((_E1344013475_
                     (lambda ()
                       (if (gx#stx-pair? _e1343913449_)
                           (let ((_e1344213457_ (gx#syntax-e _e1343913449_)))
                             (let ((_hd1344313460_ (##car _e1344213457_))
                                   (_tl1344413462_ (##cdr _e1344213457_)))
                               (if (gx#stx-pair? _tl1344413462_)
                                   (let ((_e1344513465_
                                          (gx#syntax-e _tl1344413462_)))
                                     (let ((_hd1344613468_
                                            (##car _e1344513465_))
                                           (_tl1344713470_
                                            (##cdr _e1344513465_)))
                                       (let ((_form13473_ _hd1344613468_))
                                         (if (gx#stx-null? _tl1344713470_)
                                             (if '#t
                                                 (gx#stx-wrap-source
                                                  (_generate13437_
                                                   (_parse13438_ _form13473_))
                                                  (gx#stx-source _stx13435_))
                                                 (_E1344113453_))
                                             (_E1344113453_)))))
                                   (_E1344113453_))))
                           (_E1344113453_)))))
                (let () (_E1344013475_)))))))))
  (begin
    (define gx#macro-expand-syntax-case__opt-lambda12705
      (lambda (_stx12707_ _identifier=?12708_ _unwrap-e12709_ _wrap-e12710_)
        (let ((_generate-body12713_
               (lambda (_bindings13257_ _body13258_)
                 ((letrec ((_recur13260_
                            (lambda (_rest13262_)
                              (let ((_rest1326313271_ _rest13262_))
                                (let ((_E1326613275_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest1326313271_))))
                                  (let ((_else1326513279_
                                         (lambda () _body13258_)))
                                    (let ((_K1326713285_
                                           (lambda (_rest13282_ _hd13283_)
                                             (gx#core-list
                                              'let-values
                                              (cons _hd13283_ '())
                                              (_recur13260_ _rest13282_)))))
                                      (if (##pair? _rest1326313271_)
                                          (let ((_hd1326813288_
                                                 (##car _rest1326313271_))
                                                (_tl1326913290_
                                                 (##cdr _rest1326313271_)))
                                            (let ((_hd13293_ _hd1326813288_))
                                              (let ((_rest13295_
                                                     _tl1326913290_))
                                                (_K1326713285_
                                                 _rest13295_
                                                 _hd13293_))))
                                          (_else1326513279_)))))))))
                    _recur13260_)
                  _bindings13257_))))
          (let ((_generate-match12715_
                 (lambda (_where12879_
                          _target12880_
                          _hd12881_
                          _mvars12882_
                          _K12883_
                          _E12884_)
                   (let ((_BUG12886_
                          (lambda (_q13118_)
                            (error '"BUG: syntax-case; generate"
                                   _stx12707_
                                   _hd12881_
                                   _q13118_))))
                     (let ((_splice-rlen12888_
                            (lambda (_e12934_)
                              ((letrec ((_lp12936_
                                         (lambda (_e12938_ _n12939_)
                                           (let ((_e1294012947_ _e12938_))
                                             (let ((_E1294212951_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _e1294012947_))))
                                               (let ((_K1294312960_
                                                      (lambda (_body12954_
                                                               _tag12955_)
                                                        (let ((_$e12957_
                                                               _tag12955_))
                                                          (if (eq? _$e12957_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'splice)
                      (gx#raise-syntax-error
                       '#f
                       '"Ambiguous pattern"
                       _stx12707_
                       _where12879_)
                      (if (eq? _$e12957_ 'cons)
                          (_lp12936_ (cdr _body12954_) (fx+ _n12939_ '1))
                          _n12939_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _e1294012947_)
                                                     (let ((_hd1294412963_
                                                            (##car _e1294012947_))
                                                           (_tl1294512965_
                                                            (##cdr _e1294012947_)))
                                                       (let ((_tag12968_
                                                              _hd1294412963_))
                                                         (let ((_body12970_
                                                                _tl1294512965_))
                                                           (_K1294312960_
                                                            _body12970_
                                                            _tag12968_))))
                                                     (_E1294212951_))))))))
                                 _lp12936_)
                               _e12934_
                               '0))))
                       (let ((_splice-vars12889_
                              (lambda (_e12896_)
                                ((letrec ((_recur12898_
                                           (lambda (_e12900_ _vars12901_)
                                             (let ((_e1290212909_ _e12900_))
                                               (let ((_E1290412913_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _e1290212909_))))
                                                 (let ((_K1290512922_
                                                        (lambda (_body12916_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tag12917_)
                  (let ((_$e12919_ _tag12917_))
                    (if (eq? _$e12919_ 'var)
                        (cons _body12916_ _vars12901_)
                        (if (memq _$e12919_ '(cons splice))
                            (_recur12898_
                             (cdr _body12916_)
                             (_recur12898_ (car _body12916_) _vars12901_))
                            (if (memq _$e12919_ '(vector box))
                                (_recur12898_ _body12916_ _vars12901_)
                                _vars12901_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##pair? _e1290212909_)
                                                       (let ((_hd1290612925_
                                                              (##car _e1290212909_))
                                                             (_tl1290712927_
                                                              (##cdr _e1290212909_)))
                                                         (let ((_tag12930_
                                                                _hd1290612925_))
                                                           (let ((_body12932_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1290712927_))
                     (_K1290512922_ _body12932_ _tag12930_))))
               (_E1290412913_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _recur12898_)
                                 _e12896_
                                 '()))))
                         (let ((_make-body12890_
                                (lambda (_vars12892_)
                                  (cons _K12883_
                                        (map (lambda (_mvar12894_)
                                               (assgetq (car _mvar12894_)
                                                        _vars12892_
                                                        _BUG12886_))
                                             _mvars12882_)))))
                           (letrec ((_recur12887_
                                     (lambda (_e12972_
                                              _vars12973_
                                              _target12974_
                                              _E12975_
                                              _k12976_)
                                       (let ((_e1297712984_ _e12972_))
                                         (let ((_E1297912988_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _e1297712984_))))
                                           (let ((_K1298013106_
                                                  (lambda (_body12991_
                                                           _tag12992_)
                                                    (let ((_$e12994_
                                                           _tag12992_))
                                                      (if (eq? _$e12994_ 'any)
                                                          (_k12976_
                                                           _vars12973_)
                                                          (if (eq? _$e12994_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'id)
                      (gx#core-list
                       'if
                       (gx#core-list 'identifier? _target12974_)
                       (gx#core-list
                        'if
                        (gx#core-list
                         _identifier=?12708_
                         (gx#core-list _wrap-e12710_ _body12991_)
                         _target12974_)
                        (_k12976_ _vars12973_)
                        _E12975_)
                       _E12975_)
                      (if (eq? _$e12994_ 'var)
                          (_k12976_
                           (cons (cons _body12991_ _target12974_) _vars12973_))
                          (if (eq? _$e12994_ 'cons)
                              (let ((_$e12997_ (gx#genident__1 'e))
                                    (_$hd12998_ (gx#genident__1 'hd))
                                    (_$tl12999_ (gx#genident__1 'tl)))
                                (gx#core-list
                                 'if
                                 (gx#core-list 'stx-pair? _target12974_)
                                 (gx#core-list
                                  'let-values
                                  (cons (cons (cons _$e12997_ '())
                                              (cons (gx#core-list
                                                     _unwrap-e12709_
                                                     _target12974_)
                                                    '()))
                                        '())
                                  (gx#core-list
                                   'let-values
                                   (cons (cons (cons _$hd12998_ '())
                                               (cons (gx#core-list
                                                      '##car
                                                      _$e12997_)
                                                     '()))
                                         (cons (cons (cons _$tl12999_ '())
                                                     (cons (gx#core-list
                                                            '##cdr
                                                            _$e12997_)
                                                           '()))
                                               '()))
                                   (let ((_body1300013007_ _body12991_))
                                     (let ((_E1300213011_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _body1300013007_))))
                                       (let ((_K1300313019_
                                              (lambda (_tl13014_ _hd13015_)
                                                (_recur12887_
                                                 _hd13015_
                                                 _vars12973_
                                                 _$hd12998_
                                                 _E12975_
                                                 (lambda (_vars13017_)
                                                   (_recur12887_
                                                    _tl13014_
                                                    _vars13017_
                                                    _$tl12999_
                                                    _E12975_
                                                    _k12976_))))))
                                         (if (##pair? _body1300013007_)
                                             (let ((_hd1300413022_
                                                    (##car _body1300013007_))
                                                   (_tl1300513024_
                                                    (##cdr _body1300013007_)))
                                               (let ((_hd13027_
                                                      _hd1300413022_))
                                                 (let ((_tl13029_
                                                        _tl1300513024_))
                                                   (_K1300313019_
                                                    _tl13029_
                                                    _hd13027_))))
                                             (_E1300213011_)))))))
                                 _E12975_))
                              (if (eq? _$e12994_ 'splice)
                                  (let ((_body1303013037_ _body12991_))
                                    (let ((_E1303213041_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _body1303013037_))))
                                      (let ((_K1303313090_
                                             (lambda (_tl13044_ _hd13045_)
                                               (let ((_rlen13047_
                                                      (_splice-rlen12888_
                                                       _tl13044_)))
                                                 (let ((_$target13049_
                                                        (gx#genident__1
                                                         'target)))
                                                   (let ((_$hd13051_
                                                          (gx#genident__1
                                                           'hd)))
                                                     (let ((_$tl13053_
                                                            (gx#genident__1
                                                             'tl)))
                                                       (let ((_$lp13055_
                                                              (gx#genident__1
                                                               'loop)))
                                                         (let ((_$lp-e13057_
                                                                (gx#genident__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'e)))
                   (let ((_$lp-hd13059_ (gx#genident__1 'lp-hd)))
                     (let ((_$lp-tl13061_ (gx#genident__1 'lp-tl)))
                       (let ((_svars13063_ (_splice-vars12889_ _hd13045_)))
                         (let ((_lvars13065_ (gx#gentemps _svars13063_)))
                           (let ((_tlvars13067_ (gx#gentemps _svars13063_)))
                             (let ((_linit13071_
                                    (map (lambda (_var13069_)
                                           (gx#core-list 'quote '()))
                                         _lvars13065_)))
                               (let ()
                                 (let ((_make-loop13074_
                                        (lambda (_vars13076_)
                                          (gx#core-list
                                           'letrec-values
                                           (cons (cons (cons _$lp13055_ '())
                                                       (cons (gx#core-list
                                                              'lambda%
                                                              (cons _$hd13051_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _lvars13065_)
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _$hd13051_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$lp-e13057_ '())
                                    (cons (gx#core-list
                                           _unwrap-e12709_
                                           _$hd13051_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$lp-hd13059_ '())
                                     (cons (gx#core-list '##car _$lp-e13057_)
                                           '()))
                               (cons (cons (cons _$lp-tl13061_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$lp-e13057_)
                                                 '()))
                                     '()))
                         (_recur12887_
                          _hd13045_
                          '()
                          _$lp-hd13059_
                          _E12975_
                          (lambda (_hdvars13078_)
                            (cons* _$lp13055_
                                   _$lp-tl13061_
                                   (map (lambda (_svar13080_ _lvar13081_)
                                          (gx#core-list
                                           'cons
                                           (assgetq _svar13080_
                                                    _hdvars13078_
                                                    _BUG12886_)
                                           _lvar13081_))
                                        _svars13063_
                                        _lvars13065_))))))
                       (gx#core-list
                        'let-values
                        (map (lambda (_lvar13083_ _tlvar13084_)
                               (cons (cons _tlvar13084_ '())
                                     (cons (gx#core-list 'reverse _lvar13083_)
                                           '())))
                             _lvars13065_
                             _tlvars13067_)
                        (_k12976_
                         (foldl (lambda (_svar13086_ _tlvar13087_ _r13088_)
                                  (cons (cons _svar13086_ _tlvar13087_)
                                        _r13088_))
                                _vars13076_
                                _svars13063_
                                _tlvars13067_)))))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons* _$lp13055_
                                                  _$target13049_
                                                  _linit13071_)))))
                                   (gx#core-list
                                    'if
                                    (gx#core-list
                                     'stx-pair/null?
                                     _target12974_)
                                    (gx#core-list
                                     'if
                                     (gx#core-list
                                      'fx>=
                                      (gx#core-list 'stx-length _target12974_)
                                      _rlen13047_)
                                     (gx#core-list
                                      'let-values
                                      (cons (cons (cons _$target13049_
                                                        (cons _$tl13053_ '()))
                                                  (cons (gx#core-list
                                                         'syntax-split-splice
                                                         _target12974_
                                                         _rlen13047_)
                                                        '()))
                                            '())
                                      (_recur12887_
                                       _tl13044_
                                       _vars12973_
                                       _$tl13053_
                                       _E12975_
                                       _make-loop13074_))
                                     _E12975_)
                                    _E12975_))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _body1303013037_)
                                            (let ((_hd1303413093_
                                                   (##car _body1303013037_))
                                                  (_tl1303513095_
                                                   (##cdr _body1303013037_)))
                                              (let ((_hd13098_ _hd1303413093_))
                                                (let ((_tl13100_
                                                       _tl1303513095_))
                                                  (_K1303313090_
                                                   _tl13100_
                                                   _hd13098_))))
                                            (_E1303213041_)))))
                                  (if (eq? _$e12994_ 'null)
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-null? _target12974_)
                                       (_k12976_ _vars12973_)
                                       _E12975_)
                                      (if (eq? _$e12994_ 'vector)
                                          (let ((_$e13102_
                                                 (gx#genident__1 'e)))
                                            (gx#core-list
                                             'if
                                             (gx#core-list
                                              'stx-vector?
                                              _target12974_)
                                             (gx#core-list
                                              'let-values
                                              (cons (cons (cons _$e13102_ '())
                                                          (cons (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'vector->list
                         (gx#core-list _unwrap-e12709_ _target12974_))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (_recur12887_
                                               _body12991_
                                               _vars12973_
                                               _$e13102_
                                               _E12975_
                                               _k12976_))
                                             _E12975_))
                                          (if (eq? _$e12994_ 'box)
                                              (let ((_$e13104_
                                                     (gx#genident__1 'e)))
                                                (gx#core-list
                                                 'if
                                                 (gx#core-list
                                                  'stx-box?
                                                  _target12974_)
                                                 (gx#core-list
                                                  'let-values
                                                  (cons (cons (cons _$e13104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (gx#core-list
                             'unbox
                             (gx#core-list _unwrap-e12709_ _target12974_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur12887_
                                                   _body12991_
                                                   _vars12973_
                                                   _$e13104_
                                                   _E12975_
                                                   _k12976_))
                                                 _E12975_))
                                              (if (eq? _$e12994_ 'datum)
                                                  (gx#core-list
                                                   'if
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target12974_)
                                                   (gx#core-list
                                                    'if
                                                    (gx#core-list
                                                     'equal?
                                                     (gx#core-list
                                                      'stx-e
                                                      _target12974_)
                                                     _body12991_)
                                                    (_k12976_ _vars12973_)
                                                    _E12975_)
                                                   _E12975_)
                                                  (_BUG12886_
                                                   _e12972_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _e1297712984_)
                                                 (let ((_hd1298113109_
                                                        (##car _e1297712984_))
                                                       (_tl1298213111_
                                                        (##cdr _e1297712984_)))
                                                   (let ((_tag13114_
                                                          _hd1298113109_))
                                                     (let ((_body13116_
                                                            _tl1298213111_))
                                                       (_K1298013106_
                                                        _body13116_
                                                        _tag13114_))))
                                                 (_E1297912988_))))))))
                             (_recur12887_
                              _hd12881_
                              '()
                              _target12880_
                              _E12884_
                              _make-body12890_)))))))))
            (let ((_parse-clause12716_
                   (lambda (_hd12785_ _ids12786_)
                     ((letrec ((_recur12788_
                                (lambda (_e12790_ _vars12791_ _depth12792_)
                                  (if (gx#identifier? _e12790_)
                                      (if (gx#underscore? _e12790_)
                                          (values '(any) _vars12791_)
                                          (if (gx#ellipsis? _e12790_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Misplaced ellipsis"
                                               _stx12707_
                                               _hd12785_)
                                              (if (find (lambda (_id12794_)
                                                          (gx#bound-identifier=?
                                                           _e12790_
                                                           _id12794_))
                                                        _ids12786_)
                                                  (values (cons 'id _e12790_)
                                                          _vars12791_)
                                                  (if (find (lambda (_var12796_)
                                                              (gx#bound-identifier=?
                                                               _e12790_
                                                               (car _var12796_)))
                                                            _vars12791_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Duplicate pattern variable"
                                                       _stx12707_
                                                       _e12790_)
                                                      (values (cons 'var
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _e12790_)
                      (cons (cons _e12790_ _depth12792_) _vars12791_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _e12790_)
                                          (let ((_e1279712804_ _e12790_))
                                            (let ((_E1279912808_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _e1279712804_))))
                                              (let ((_E1279812869_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e1279712804_)
                                                           (let ((_e1280012812_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e1279712804_)))
                     (let ((_hd1280112815_ (##car _e1280012812_))
                           (_tl1280212817_ (##cdr _e1280012812_)))
                       (let ((_hd12820_ _hd1280112815_))
                         (let ((_rest12822_ _tl1280212817_))
                           (if '#t
                               (let ((_make-pair12837_
                                      (lambda (_tag12824_ _hd12825_ _tl12826_)
                                        (let ((_hd-depth12828_
                                               (if (eq? _tag12824_ 'splice)
                                                   (fx+ _depth12792_ '1)
                                                   _depth12792_)))
                                          (let ((_g13847_
                                                 (_recur12788_
                                                  _hd12825_
                                                  _vars12791_
                                                  _hd-depth12828_)))
                                            (begin
                                              (let ((_g13848_
                                                     (values-count _g13847_)))
                                                (if (not (fx= _g13848_ 2))
                                                    (error "Context expects 2 values"
                                                           _g13848_)))
                                              (let ((_hd12830_
                                                     (values-ref _g13847_ 0))
                                                    (_vars12831_
                                                     (values-ref _g13847_ 1)))
                                                (let ((_g13849_
                                                       (_recur12788_
                                                        _tl12826_
                                                        _vars12831_
                                                        _depth12792_)))
                                                  (begin
                                                    (let ((_g13850_
                                                           (values-count
                                                            _g13849_)))
                                                      (if (not (fx= _g13850_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g13850_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_tl12833_
                                                           (values-ref
                                                            _g13849_
                                                            0))
                                                          (_vars12834_
                                                           (values-ref
                                                            _g13849_
                                                            1)))
                                                      (let ()
                                                        (values (cons* _tag12824_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd12830_
                               _tl12833_)
                        _vars12834_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (let ((_e1283812845_ _rest12822_))
                                   (let ((_E1284012849_
                                          (lambda ()
                                            (_make-pair12837_
                                             'cons
                                             _hd12820_
                                             _rest12822_))))
                                     (let ((_E1283912865_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1283812845_)
                                                  (let ((_e1284112853_
                                                         (gx#syntax-e
                                                          _e1283812845_)))
                                                    (let ((_hd1284212856_
                                                           (##car _e1284112853_))
                                                          (_tl1284312858_
                                                           (##cdr _e1284112853_)))
                                                      (let ((_rest-hd12861_
                                                             _hd1284212856_))
                                                        (let ((_rest-tl12863_
                                                               _tl1284312858_))
                                                          (if '#t
                                                              (if (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest-hd12861_)
                          (_make-pair12837_ 'splice _hd12820_ _rest-tl12863_)
                          (_make-pair12837_ 'cons _hd12820_ _rest12822_))
                      (_E1284012849_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1284012849_)))))
                                       (let () (_E1283912865_))))))
                               (_E1279912808_))))))
                   (_E1279912808_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E1279812869_)))))
                                          (if (gx#stx-null? _e12790_)
                                              (values '(null) _vars12791_)
                                              (if (gx#stx-vector? _e12790_)
                                                  (let ((_g13851_
                                                         (_recur12788_
                                                          (vector->list
                                                           (gx#syntax-e
                                                            _e12790_))
                                                          _vars12791_
                                                          _depth12792_)))
                                                    (begin
                                                      (let ((_g13852_
                                                             (values-count
                                                              _g13851_)))
                                                        (if (not (fx= _g13852_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g13852_)))
              (let ((_e12873_ (values-ref _g13851_ 0))
                    (_vars12874_ (values-ref _g13851_ 1)))
                (values (cons 'vector _e12873_) _vars12874_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e12790_)
                                                      (let ((_g13853_
                                                             (_recur12788_
                                                              (unbox (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e12790_))
                      _vars12791_
                      _depth12792_)))
                (begin
                  (let ((_g13854_ (values-count _g13853_)))
                    (if (not (fx= _g13854_ 2))
                        (error "Context expects 2 values" _g13854_)))
                  (let ((_e12876_ (values-ref _g13853_ 0))
                        (_vars12877_ (values-ref _g13853_ 1)))
                    (values (cons 'box _e12876_) _vars12877_))))
              (if (gx#stx-datum? _e12790_)
                  (values (cons 'datum (gx#stx-e _e12790_)) _vars12791_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad pattern"
                   _stx12707_
                   _e12790_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        _recur12788_)
                      _hd12785_
                      '()
                      '0))))
              (let ((_generate-clause12714_
                     (lambda (_target13120_ _ids13121_ _clause13122_ _E13123_)
                       (let ((_generate113125_
                              (lambda (_hd13212_ _fender13213_ _body13214_)
                                (let ((_g13845_
                                       (_parse-clause12716_
                                        _hd13212_
                                        _ids13121_)))
                                  (begin
                                    (let ((_g13846_ (values-count _g13845_)))
                                      (if (not (fx= _g13846_ 2))
                                          (error "Context expects 2 values"
                                                 _g13846_)))
                                    (let ((_e13216_ (values-ref _g13845_ 0))
                                          (_mvars13217_
                                           (values-ref _g13845_ 1)))
                                      (let ((_pvars13219_
                                             (map gx#syntax-local-rewrap
                                                  (gx#gentemps _mvars13217_))))
                                        (let ((_E13221_
                                               (cons _E13123_
                                                     (cons _target13120_
                                                           '()))))
                                          (let ((_K13254_
                                                 (gx#core-list
                                                  'lambda%
                                                  _pvars13219_
                                                  (gx#core-list
                                                   'let-syntax
                                                   (map (lambda (_mvar13223_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pvar13224_)
                  (let ((_mvar1322513232_ _mvar13223_))
                    (let ((_E1322713236_
                           (lambda ()
                             (error '"No clause matching" _mvar1322513232_))))
                      (let ((_K1322813242_
                             (lambda (_depth13239_ _id13240_)
                               (cons _id13240_
                                     (cons (gx#core-list
                                            'make-syntax-pattern
                                            (gx#core-list 'quote _id13240_)
                                            (gx#core-list 'quote _pvar13224_)
                                            _depth13239_)
                                           '())))))
                        (if (##pair? _mvar1322513232_)
                            (let ((_hd1322913245_ (##car _mvar1322513232_))
                                  (_tl1323013247_ (##cdr _mvar1322513232_)))
                              (let ((_id13250_ _hd1322913245_))
                                (let ((_depth13252_ _tl1323013247_))
                                  (_K1322813242_ _depth13252_ _id13250_))))
                            (_E1322713236_))))))
                _mvars13217_
                _pvars13219_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (eq? _fender13213_ '#t)
                                                       _body13214_
                                                       (gx#core-list
                                                        'if
                                                        _fender13213_
                                                        _body13214_
                                                        _E13221_))))))
                                            (let ()
                                              (_generate-match12715_
                                               _hd13212_
                                               _target13120_
                                               _e13216_
                                               _mvars13217_
                                               _K13254_
                                               _E13221_)))))))))))
                         (let ((_e1312613146_ _clause13122_))
                           (let ((_E1313513150_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _e1312613146_))))
                             (let ((_E1312813184_
                                    (lambda ()
                                      (if (gx#stx-pair? _e1312613146_)
                                          (let ((_e1313613154_
                                                 (gx#syntax-e _e1312613146_)))
                                            (let ((_hd1313713157_
                                                   (##car _e1313613154_))
                                                  (_tl1313813159_
                                                   (##cdr _e1313613154_)))
                                              (let ((_hd13162_ _hd1313713157_))
                                                (if (gx#stx-pair?
                                                     _tl1313813159_)
                                                    (let ((_e1313913164_
                                                           (gx#syntax-e
                                                            _tl1313813159_)))
                                                      (let ((_hd1314013167_
                                                             (##car _e1313913164_))
                                                            (_tl1314113169_
                                                             (##cdr _e1313913164_)))
                                                        (let ((_fender13172_
                                                               _hd1314013167_))
                                                          (if (gx#stx-pair?
                                                               _tl1314113169_)
                                                              (let ((_e1314213174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1314113169_)))
                        (let ((_hd1314313177_ (##car _e1314213174_))
                              (_tl1314413179_ (##cdr _e1314213174_)))
                          (let ((_body13182_ _hd1314313177_))
                            (if (gx#stx-null? _tl1314413179_)
                                (if '#t
                                    (_generate113125_
                                     _hd13162_
                                     _fender13172_
                                     _body13182_)
                                    (_E1313513150_))
                                (_E1313513150_)))))
                      (_E1313513150_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1313513150_)))))
                                          (_E1313513150_)))))
                               (let ((_E1312713208_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1312613146_)
                                            (let ((_e1312913188_
                                                   (gx#syntax-e
                                                    _e1312613146_)))
                                              (let ((_hd1313013191_
                                                     (##car _e1312913188_))
                                                    (_tl1313113193_
                                                     (##cdr _e1312913188_)))
                                                (let ((_hd13196_
                                                       _hd1313013191_))
                                                  (if (gx#stx-pair?
                                                       _tl1313113193_)
                                                      (let ((_e1313213198_
                                                             (gx#syntax-e
                                                              _tl1313113193_)))
                                                        (let ((_hd1313313201_
                                                               (##car _e1313213198_))
                                                              (_tl1313413203_
                                                               (##cdr _e1313213198_)))
                                                          (let ((_body13206_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1313313201_))
                    (if (gx#stx-null? _tl1313413203_)
                        (if '#t
                            (_generate113125_ _hd13196_ '#t _body13206_)
                            (_E1312813184_))
                        (_E1312813184_)))))
              (_E1312813184_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1312813184_)))))
                                 (let () (_E1312713208_))))))))))
                (let ((_generate-bindings12712_
                       (lambda (_target13297_
                                _ids13298_
                                _clauses13299_
                                _clause-ids13300_
                                _E13301_)
                         (let ((_generate113303_
                                (lambda (_clause13402_
                                         _clause-id13403_
                                         _E13404_)
                                  (cons (cons _clause-id13403_ '())
                                        (cons (gx#core-list
                                               'lambda%
                                               (cons _target13297_ '())
                                               (_generate-clause12714_
                                                _target13297_
                                                _ids13298_
                                                _clause13402_
                                                _E13404_))
                                              '())))))
                           ((letrec ((_lp13305_
                                      (lambda (_rest13307_
                                               _rest-ids13308_
                                               _bindings13309_)
                                        (let ((_rest1331013318_ _rest13307_))
                                          (let ((_E1331313322_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _rest1331013318_))))
                                            (let ((_else1331213326_
                                                   (lambda ()
                                                     _bindings13309_)))
                                              (let ((_K1331413390_
                                                     (lambda (_rest13329_
                                                              _clause13330_)
                                                       (let ((_rest-ids1333113338_
                                                              _rest-ids13308_))
                                                         (let ((_E1333313342_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (error '"No clause matching" _rest-ids1333113338_))))
                   (let ((_K1333413378_
                          (lambda (_rest-ids13345_ _clause-id13346_)
                            (let ((_rest-ids1334713355_ _rest-ids13345_))
                              (let ((_E1335013359_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _rest-ids1334713355_))))
                                (let ((_else1334913363_
                                       (lambda ()
                                         (cons (_generate113303_
                                                _clause13330_
                                                _clause-id13346_
                                                _E13301_)
                                               _bindings13309_))))
                                  (let ((_K1335113368_
                                         (lambda (_next-clause-id13366_)
                                           (_lp13305_
                                            _rest13329_
                                            _rest-ids13345_
                                            (cons (_generate113303_
                                                   _clause13330_
                                                   _clause-id13346_
                                                   _next-clause-id13366_)
                                                  _bindings13309_)))))
                                    (if (##pair? _rest-ids1334713355_)
                                        (let ((_hd1335213371_
                                               (##car _rest-ids1334713355_))
                                              (_tl1335313373_
                                               (##cdr _rest-ids1334713355_)))
                                          (let ((_next-clause-id13376_
                                                 _hd1335213371_))
                                            (_K1335113368_
                                             _next-clause-id13376_)))
                                        (_else1334913363_)))))))))
                     (if (##pair? _rest-ids1333113338_)
                         (let ((_hd1333513381_ (##car _rest-ids1333113338_))
                               (_tl1333613383_ (##cdr _rest-ids1333113338_)))
                           (let ((_clause-id13386_ _hd1333513381_))
                             (let ((_rest-ids13388_ _tl1333613383_))
                               (_K1333413378_
                                _rest-ids13388_
                                _clause-id13386_))))
                         (_E1333313342_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (##pair? _rest1331013318_)
                                                    (let ((_hd1331513393_
                                                           (##car _rest1331013318_))
                                                          (_tl1331613395_
                                                           (##cdr _rest1331013318_)))
                                                      (let ((_clause13398_
                                                             _hd1331513393_))
                                                        (let ((_rest13400_
                                                               _tl1331613395_))
                                                          (_K1331413390_
                                                           _rest13400_
                                                           _clause13398_))))
                                                    (_else1331213326_)))))))))
                              _lp13305_)
                            _clauses13299_
                            _clause-ids13300_
                            '())))))
                  (let ((_e1271712730_ _stx12707_))
                    (let ((_E1271912734_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e1271712730_))))
                      (let ((_E1271812781_
                             (lambda ()
                               (if (gx#stx-pair? _e1271712730_)
                                   (let ((_e1272012738_
                                          (gx#syntax-e _e1271712730_)))
                                     (let ((_hd1272112741_
                                            (##car _e1272012738_))
                                           (_tl1272212743_
                                            (##cdr _e1272012738_)))
                                       (if (gx#stx-pair? _tl1272212743_)
                                           (let ((_e1272312746_
                                                  (gx#syntax-e
                                                   _tl1272212743_)))
                                             (let ((_hd1272412749_
                                                    (##car _e1272312746_))
                                                   (_tl1272512751_
                                                    (##cdr _e1272312746_)))
                                               (let ((_expr12754_
                                                      _hd1272412749_))
                                                 (if (gx#stx-pair?
                                                      _tl1272512751_)
                                                     (let ((_e1272612756_
                                                            (gx#syntax-e
                                                             _tl1272512751_)))
                                                       (let ((_hd1272712759_
                                                              (##car _e1272612756_))
                                                             (_tl1272812761_
                                                              (##cdr _e1272612756_)))
                                                         (let ((_ids12764_
                                                                _hd1272712759_))
                                                           (let ((_clauses12766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1272812761_))
                     (if '#t
                         (if (not (gx#identifier-list? _ids12764_))
                             (gx#raise-syntax-error
                              '#f
                              '"Bad template identifier list"
                              _stx12707_
                              _ids12764_)
                             (if (not (gx#stx-list? _clauses12766_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _stx12707_)
                                 (let ((_ids12768_
                                        (gx#syntax->list _ids12764_)))
                                   (let ((_clauses12770_
                                          (gx#syntax->list _clauses12766_)))
                                     (let ((_clause-ids12772_
                                            (gx#gentemps _clauses12770_)))
                                       (let ((_E12774_ (gx#genident__0)))
                                         (let ((_target12776_
                                                (gx#genident__0)))
                                           (let ((_first12778_
                                                  (if (null? _clauses12770_)
                                                      _E12774_
                                                      (car _clause-ids12772_))))
                                             (let ()
                                               (gx#stx-wrap-source
                                                (gx#core-list
                                                 'let-values
                                                 (cons (cons (cons _E12774_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _target12776_ '())
                            (gx#core-list
                             'raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _target12776_))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_generate-body12713_
                                                  (_generate-bindings12712_
                                                   _target12776_
                                                   _ids12768_
                                                   _clauses12770_
                                                   _clause-ids12772_
                                                   _E12774_)
                                                  (cons _first12778_
                                                        (cons _expr12754_
                                                              '()))))
                                                (gx#stx-source
                                                 _stx12707_)))))))))))
                         (_E1271912734_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1271912734_)))))
                                           (_E1271912734_))))
                                   (_E1271912734_)))))
                        (let () (_E1271812781_))))))))))))
    (begin
      (define gx#macro-expand-syntax-case__0
        (lambda (_stx13409_)
          (let ((_identifier=?13411_ 'free-identifier=?))
            (let ((_unwrap-e13413_ 'syntax-e))
              (let ((_wrap-e13415_ 'quote-syntax))
                (gx#macro-expand-syntax-case__opt-lambda12705
                 _stx13409_
                 _identifier=?13411_
                 _unwrap-e13413_
                 _wrap-e13415_))))))
      (define gx#macro-expand-syntax-case__1
        (lambda (_stx13417_ _identifier=?13418_)
          (let ((_unwrap-e13420_ 'syntax-e))
            (let ((_wrap-e13422_ 'quote-syntax))
              (gx#macro-expand-syntax-case__opt-lambda12705
               _stx13417_
               _identifier=?13418_
               _unwrap-e13420_
               _wrap-e13422_)))))
      (define gx#macro-expand-syntax-case__2
        (lambda (_stx13424_ _identifier=?13425_ _unwrap-e13426_)
          (let ((_wrap-e13428_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda12705
             _stx13424_
             _identifier=?13425_
             _unwrap-e13426_
             _wrap-e13428_))))
      (define gx#macro-expand-syntax-case
        (lambda _g13856_
          (let ((_g13855_ (length _g13856_)))
            (cond ((fx= _g13855_ 1)
                   (apply gx#macro-expand-syntax-case__0 _g13856_))
                  ((fx= _g13855_ 2)
                   (apply gx#macro-expand-syntax-case__1 _g13856_))
                  ((fx= _g13855_ 3)
                   (apply gx#macro-expand-syntax-case__2 _g13856_))
                  ((fx= _g13855_ 4)
                   (apply gx#macro-expand-syntax-case__opt-lambda12705
                          _g13856_))
                  (else (error "No clause matching arguments" _g13856_))))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx12704_)
      (if (gx#identifier? _stx12704_)
          (##structure-instance-of?
           (gx#syntax-local-e__opt-lambda3895 _stx12704_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd12662_ . _rest12663_)
      (let ((_len12665_ (length _hd12662_)))
        ((letrec ((_lp12667_
                   (lambda (_rest12669_)
                     (let ((_rest1267012678_ _rest12669_))
                       (let ((_E1267312682_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1267012678_))))
                         (let ((_else1267212686_ (lambda () '#!void)))
                           (let ((_K1267412692_
                                  (lambda (_rest12689_ _hd12690_)
                                    (if (fx= _len12665_ (length _hd12690_))
                                        (_lp12667_ _rest12689_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Splice length mismatch"
                                         _hd12690_)))))
                             (if (##pair? _rest1267012678_)
                                 (let ((_hd1267512695_
                                        (##car _rest1267012678_))
                                       (_tl1267612697_
                                        (##cdr _rest1267012678_)))
                                   (let ((_hd12700_ _hd1267512695_))
                                     (let ((_rest12702_ _tl1267612697_))
                                       (_K1267412692_ _rest12702_ _hd12700_))))
                                 (_else1267212686_)))))))))
           _lp12667_)
         _rest12663_))))
  (define gx#syntax-split-splice
    (lambda (_stx12620_ _n12621_)
      ((letrec ((_lp12623_
                 (lambda (_rest12625_ _r12626_)
                   (if (gx#stx-pair? _rest12625_)
                       (let ((_g1262712634_ (gx#syntax-e _rest12625_)))
                         (let ((_E1262912638_
                                (lambda ()
                                  (error '"No clause matching"
                                         _g1262712634_))))
                           (let ((_K1263012644_
                                  (lambda (_rest12641_ _hd12642_)
                                    (_lp12623_
                                     _rest12641_
                                     (cons _hd12642_ _r12626_)))))
                             (if (##pair? _g1262712634_)
                                 (let ((_hd1263112647_ (##car _g1262712634_))
                                       (_tl1263212649_ (##cdr _g1262712634_)))
                                   (let ((_hd12652_ _hd1263112647_))
                                     (let ((_rest12654_ _tl1263212649_))
                                       (_K1263012644_ _rest12654_ _hd12652_))))
                                 (_E1262912638_)))))
                       ((letrec ((_lp12656_
                                  (lambda (_n12658_ _l12659_ _r12660_)
                                    (if (null? _l12659_)
                                        (values _l12659_ _r12660_)
                                        (if (fxpositive? _n12658_)
                                            (_lp12656_
                                             (fx- _n12658_ '1)
                                             (cdr _l12659_)
                                             (cons (car _l12659_) _r12660_))
                                            (values (reverse _l12659_)
                                                    _r12660_))))))
                          _lp12656_)
                        _n12621_
                        _r12626_
                        _rest12625_)))))
         _lp12623_)
       _stx12620_
       '()))))
