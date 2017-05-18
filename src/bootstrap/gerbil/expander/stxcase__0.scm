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
    (lambda _$args13823_
      (apply make-struct-instance gx#syntax-pattern::t _$args13823_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self13820_ _stx13821_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx13821_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx13429_)
      (let ((_generate13431_
             (lambda (_e13658_)
               (let ((_BUG13660_
                      (lambda (_q13818_)
                        (error '"BUG: syntax; generate"
                               _stx13429_
                               _e13658_
                               _q13818_))))
                 (let ((_local-pattern-e13661_
                        (lambda (_pat13816_)
                          (gx#syntax-local-rewrap
                           (##structure-ref
                            _pat13816_
                            '2
                            gx#syntax-pattern::t
                            '#f)))))
                   (let ((_getvar13662_
                          (lambda (_q13813_ _vars13814_)
                            (assgetq _q13813_ _vars13814_ _BUG13660_))))
                     (let ((_getarg13663_
                            (lambda (_arg13779_ _vars13780_)
                              (let ((_arg1378113788_ _arg13779_))
                                (let ((_E1378313792_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _arg1378113788_))))
                                  (let ((_K1378413801_
                                         (lambda (_e13795_ _tag13796_)
                                           (let ((_$e13798_ _tag13796_))
                                             (if (eq? _$e13798_ 'ref)
                                                 (_getvar13662_
                                                  _e13795_
                                                  _vars13780_)
                                                 (if (eq? _$e13798_ 'pattern)
                                                     (_local-pattern-e13661_
                                                      _e13795_)
                                                     (_BUG13660_
                                                      _arg13779_)))))))
                                    (if (##pair? _arg1378113788_)
                                        (let ((_hd1378513804_
                                               (##car _arg1378113788_))
                                              (_tl1378613806_
                                               (##cdr _arg1378113788_)))
                                          (let ((_tag13809_ _hd1378513804_))
                                            (let ((_e13811_ _tl1378613806_))
                                              (_K1378413801_
                                               _e13811_
                                               _tag13809_))))
                                        (_E1378313792_))))))))
                       ((letrec ((_recur13665_
                                  (lambda (_e13667_ _vars13668_)
                                    (let ((_e1366913676_ _e13667_))
                                      (let ((_E1367113680_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _e1366913676_))))
                                        (let ((_K1367213767_
                                               (lambda (_body13683_ _tag13684_)
                                                 (let ((_$e13686_ _tag13684_))
                                                   (if (eq? _$e13686_ 'datum)
                                                       (gx#core-list
                                                        'quote
                                                        _body13683_)
                                                       (if (eq? _$e13686_
                                                                'term)
                                                           (gx#core-list
                                                            'datum->syntax
                                                            '#f
                                                            (gx#core-list
                                                             'quote
                                                             _body13683_))
                                                           (if (eq? _$e13686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'pattern)
                       (_local-pattern-e13661_ _body13683_)
                       (if (eq? _$e13686_ 'ref)
                           (_getvar13662_ _body13683_ _vars13668_)
                           (if (eq? _$e13686_ 'cons)
                               (gx#core-list
                                'cons
                                (_recur13665_ (car _body13683_) _vars13668_)
                                (_recur13665_ (cdr _body13683_) _vars13668_))
                               (if (eq? _$e13686_ 'vector)
                                   (gx#core-list
                                    'list->vector
                                    (_recur13665_ _body13683_ _vars13668_))
                                   (if (eq? _$e13686_ 'box)
                                       (gx#core-list
                                        'box
                                        (_recur13665_ _body13683_ _vars13668_))
                                       (if (eq? _$e13686_ 'splice)
                                           (let ((_body1368813699_
                                                  _body13683_))
                                             (let ((_E1369013703_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _body1368813699_))))
                                               (let ((_K1369113741_
                                                      (lambda (_args13706_
                                                               _iv13707_
                                                               _hd13708_
                                                               _depth13709_)
                                                        (let ((_targets13715_
                                                               (map (lambda (_g1371013712_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_getarg13663_ _g1371013712_ _vars13668_))
                            _args13706_)))
                  (let ((_fold-in13717_ (gx#gentemps _args13706_)))
                    (let ((_fold-out13719_ (gx#genident__0)))
                      (let ((_lambda-args13721_
                             (foldr1 cons
                                     (cons _fold-out13719_ '())
                                     _fold-in13717_)))
                        (let ((_lambda-body13738_
                               (if (fx> _depth13709_ '1)
                                   (let ((_r-args13729_
                                          (map (lambda (_arg13723_)
                                                 (cons 'ref (cdr _arg13723_)))
                                               _args13706_))
                                         (_r-vars13730_
                                          (foldr (lambda (_arg13725_
                                                          _var13726_
                                                          _r13727_)
                                                   (cons (cons (cdr _arg13725_)
                                                               _var13726_)
                                                         _r13727_))
                                                 _vars13668_
                                                 _args13706_
                                                 _fold-in13717_)))
                                     (_recur13665_
                                      (cons* 'splice
                                             (fx- _depth13709_ '1)
                                             _hd13708_
                                             (cons 'var _fold-out13719_)
                                             _r-args13729_)
                                      _r-vars13730_))
                                   (let ((_hd-vars13736_
                                          (foldr (lambda (_arg13732_
                                                          _var13733_
                                                          _r13734_)
                                                   (cons (cons (cdr _arg13732_)
                                                               _var13733_)
                                                         _r13734_))
                                                 _vars13668_
                                                 _args13706_
                                                 _fold-in13717_)))
                                     (gx#core-list
                                      'cons
                                      (_recur13665_ _hd13708_ _hd-vars13736_)
                                      _fold-out13719_)))))
                          (let ()
                            (gx#core-list
                             'begin
                             (if (fx> (length _targets13715_) '1)
                                 (gx#core-cons*
                                  'syntax-check-splice-targets
                                  _targets13715_)
                                 '#!void)
                             (gx#core-cons*
                              'foldr
                              (gx#core-list
                               'lambda%
                               _lambda-args13721_
                               _lambda-body13738_)
                              (_recur13665_ _iv13707_ _vars13668_)
                              _targets13715_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _body1368813699_)
                                                     (let ((_hd1369213744_
                                                            (##car _body1368813699_))
                                                           (_tl1369313746_
                                                            (##cdr _body1368813699_)))
                                                       (let ((_depth13749_
                                                              _hd1369213744_))
                                                         (if (##pair? _tl1369313746_)
                                                             (let ((_hd1369413751_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##car _tl1369313746_))
                           (_tl1369513753_ (##cdr _tl1369313746_)))
                       (let ((_hd13756_ _hd1369413751_))
                         (if (##pair? _tl1369513753_)
                             (let ((_hd1369613758_ (##car _tl1369513753_))
                                   (_tl1369713760_ (##cdr _tl1369513753_)))
                               (let ((_iv13763_ _hd1369613758_))
                                 (let ((_args13765_ _tl1369713760_))
                                   (_K1369113741_
                                    _args13765_
                                    _iv13763_
                                    _hd13756_
                                    _depth13749_))))
                             (_E1369013703_))))
                     (_E1369013703_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1369013703_)))))
                                           (if (eq? _$e13686_ 'var)
                                               _body13683_
                                               (_BUG13660_
                                                _e13667_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _e1366913676_)
                                              (let ((_hd1367313770_
                                                     (##car _e1366913676_))
                                                    (_tl1367413772_
                                                     (##cdr _e1366913676_)))
                                                (let ((_tag13775_
                                                       _hd1367313770_))
                                                  (let ((_body13777_
                                                         _tl1367413772_))
                                                    (_K1367213767_
                                                     _body13777_
                                                     _tag13775_))))
                                              (_E1367113680_))))))))
                          _recur13665_)
                        _e13658_
                        '()))))))))
        (let ((_parse13432_
               (lambda (_e13473_)
                 (let ((_make-cons13475_
                        (lambda (_hd13650_ _tl13651_)
                          (let ((_g13835_ _hd13650_) (_g13837_ _tl13651_))
                            (begin
                              (let ((_g13836_ (values-count _g13835_)))
                                (if (not (fx= _g13836_ 2))
                                    (error "Context expects 2 values"
                                           _g13836_)))
                              (let ((_g13838_ (values-count _g13837_)))
                                (if (not (fx= _g13838_ 2))
                                    (error "Context expects 2 values"
                                           _g13838_)))
                              (let ((_hd-e13653_ (values-ref _g13835_ 0))
                                    (_hd-vars13654_ (values-ref _g13835_ 1)))
                                (let ((_tl-e13655_ (values-ref _g13837_ 0))
                                      (_tl-vars13656_ (values-ref _g13837_ 1)))
                                  (values (cons* 'cons _hd-e13653_ _tl-e13655_)
                                          (append _hd-vars13654_
                                                  _tl-vars13656_)))))))))
                   (let ((_make-splice13476_
                          (lambda (_where13589_
                                   _depth13590_
                                   _hd13591_
                                   _tl13592_)
                            (let ((_g13831_ _hd13591_) (_g13833_ _tl13592_))
                              (begin
                                (let ((_g13832_ (values-count _g13831_)))
                                  (if (not (fx= _g13832_ 2))
                                      (error "Context expects 2 values"
                                             _g13832_)))
                                (let ((_g13834_ (values-count _g13833_)))
                                  (if (not (fx= _g13834_ 2))
                                      (error "Context expects 2 values"
                                             _g13834_)))
                                (let ((_hd-e13594_ (values-ref _g13831_ 0))
                                      (_hd-vars13595_ (values-ref _g13831_ 1)))
                                  (let ((_tl-e13596_ (values-ref _g13833_ 0))
                                        (_tl-vars13597_
                                         (values-ref _g13833_ 1)))
                                    ((letrec ((_lp13599_
                                               (lambda (_rest13601_
                                                        _targets13602_
                                                        _vars13603_)
                                                 (let ((_rest1360413614_
                                                        _rest13601_))
                                                   (let ((_E1360713618_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest1360413614_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_else1360613622_
                                                            (lambda ()
                                                              (if (null? _targets13602_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Misplaced ellipsis"
                           _stx13429_
                           _where13589_)
                          (values (cons* 'splice
                                         _depth13590_
                                         _hd-e13594_
                                         _tl-e13596_
                                         _targets13602_)
                                  _vars13603_)))))
               (let ((_K1360813631_
                      (lambda (_rest13625_ _hd-pat13626_ _hd-depth*13627_)
                        (let ((_hd-depth13629_
                               (fx- _hd-depth*13627_ _depth13590_)))
                          (if (fxpositive? _hd-depth13629_)
                              (_lp13599_
                               _rest13625_
                               (cons (cons 'ref _hd-pat13626_) _targets13602_)
                               (cons (cons _hd-depth13629_ _hd-pat13626_)
                                     _vars13603_))
                              (if (fxzero? _hd-depth13629_)
                                  (_lp13599_
                                   _rest13625_
                                   (cons (cons 'pattern _hd-pat13626_)
                                         _targets13602_)
                                   _vars13603_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Too many ellipses"
                                   _stx13429_
                                   _where13589_)))))))
                 (if (##pair? _rest1360413614_)
                     (let ((_hd1360913634_ (##car _rest1360413614_))
                           (_tl1361013636_ (##cdr _rest1360413614_)))
                       (if (##pair? _hd1360913634_)
                           (let ((_hd1361113639_ (##car _hd1360913634_))
                                 (_tl1361213641_ (##cdr _hd1360913634_)))
                             (let ((_hd-depth*13644_ _hd1361113639_))
                               (let ((_hd-pat13646_ _tl1361213641_))
                                 (let ((_rest13648_ _tl1361013636_))
                                   (_K1360813631_
                                    _rest13648_
                                    _hd-pat13646_
                                    _hd-depth*13644_)))))
                           (_else1360613622_)))
                     (_else1360613622_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _lp13599_)
                                     _hd-vars13595_
                                     '()
                                     _tl-vars13597_))))))))
                     (letrec ((_recur13477_
                               (lambda (_e13482_ _is-e?13483_)
                                 (if (_is-e?13483_ _e13482_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Mislpaced ellipsis"
                                      _stx13429_)
                                     (if (gx#syntax-local-pattern? _e13482_)
                                         (let ((_pat13485_
                                                (gx#syntax-local-e__0
                                                 _e13482_)))
                                           (let ((_depth13487_
                                                  (##structure-ref
                                                   _pat13485_
                                                   '3
                                                   gx#syntax-pattern::t
                                                   '#f)))
                                             (let ()
                                               (if (fxpositive? _depth13487_)
                                                   (values (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat13485_)
                   (cons (cons _depth13487_ _pat13485_) '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (values (cons 'pattern
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat13485_)
                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (if (gx#identifier? _e13482_)
                                             (values (cons 'term _e13482_) '())
                                             (if (gx#stx-pair? _e13482_)
                                                 (let ((_e1348913496_
                                                        _e13482_))
                                                   (let ((_E1349113500_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _e1348913496_))))
                                                     (let ((_E1349013579_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e1348913496_)
                          (let ((_e1349213504_ (gx#syntax-e _e1348913496_)))
                            (let ((_hd1349313507_ (##car _e1349213504_))
                                  (_tl1349413509_ (##cdr _e1349213504_)))
                              (let ((_hd13512_ _hd1349313507_))
                                (let ((_rest13514_ _tl1349413509_))
                                  (if '#t
                                      (if (_is-e?13483_ _hd13512_)
                                          (let ((_e1351513522_ _rest13514_))
                                            (let ((_E1351713526_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad ellipsis syntax"
                                                      _stx13429_
                                                      _e13482_))))
                                              (let ((_E1351613540_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e1351513522_)
                                                           (let ((_e1351813530_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e1351513522_)))
                     (let ((_hd1351913533_ (##car _e1351813530_))
                           (_tl1352013535_ (##cdr _e1351813530_)))
                       (let ((_rest13538_ _hd1351913533_))
                         (if (gx#stx-null? _tl1352013535_)
                             (if '#t
                                 (_recur13477_ _rest13538_ false)
                                 (_E1351713526_))
                             (_E1351713526_)))))
                   (_E1351713526_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E1351613540_)))))
                                          ((letrec ((_lp13544_
                                                     (lambda (_rest13546_
                                                              _depth13547_)
                                                       (let ((_e1354813555_
                                                              _rest13546_))
                                                         (let ((_E1355013559_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (fxpositive? _depth13547_)
                              (_make-splice13476_
                               _e13482_
                               _depth13547_
                               (_recur13477_ _hd13512_ _is-e?13483_)
                               (_recur13477_ _rest13546_ _is-e?13483_))
                              (_make-cons13475_
                               (_recur13477_ _hd13512_ _is-e?13483_)
                               (_recur13477_ _rest13546_ _is-e?13483_))))))
                   (let ((_E1354913575_
                          (lambda ()
                            (if (gx#stx-pair? _e1354813555_)
                                (let ((_e1355113563_
                                       (gx#syntax-e _e1354813555_)))
                                  (let ((_hd1355213566_ (##car _e1355113563_))
                                        (_tl1355313568_ (##cdr _e1355113563_)))
                                    (let ((_rest-hd13571_ _hd1355213566_))
                                      (let ((_rest-tl13573_ _tl1355313568_))
                                        (if '#t
                                            (if (_is-e?13483_ _rest-hd13571_)
                                                (_lp13544_
                                                 _rest-tl13573_
                                                 (fx+ _depth13547_ '1))
                                                (if (fxpositive? _depth13547_)
                                                    (_make-splice13476_
                                                     _e13482_
                                                     _depth13547_
                                                     (_recur13477_
                                                      _hd13512_
                                                      _is-e?13483_)
                                                     (_recur13477_
                                                      _rest13546_
                                                      _is-e?13483_))
                                                    (_make-cons13475_
                                                     (_recur13477_
                                                      _hd13512_
                                                      _is-e?13483_)
                                                     (_recur13477_
                                                      _rest13546_
                                                      _is-e?13483_))))
                                            (_E1355013559_))))))
                                (_E1355013559_)))))
                     (let () (_E1354913575_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _lp13544_)
                                           _rest13514_
                                           '0))
                                      (_E1349113500_))))))
                          (_E1349113500_)))))
               (let () (_E1349013579_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-vector? _e13482_)
                                                     (let ((_g13825_
                                                            (_recur13477_
                                                             (vector->list
                                                              (gx#stx-unwrap__0
                                                               _e13482_))
                                                             _is-e?13483_)))
                                                       (begin
                                                         (let ((_g13826_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g13825_)))
                   (if (not (fx= _g13826_ 2))
                       (error "Context expects 2 values" _g13826_)))
                 (let ((_e13583_ (values-ref _g13825_ 0))
                       (_vars13584_ (values-ref _g13825_ 1)))
                   (values (cons 'vector _e13583_) _vars13584_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-box? _e13482_)
                                                         (let ((_g13827_
                                                                (_recur13477_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (unbox (gx#stx-unwrap__0 _e13482_))
                         _is-e?13483_)))
                   (begin
                     (let ((_g13828_ (values-count _g13827_)))
                       (if (not (fx= _g13828_ 2))
                           (error "Context expects 2 values" _g13828_)))
                     (let ((_e13586_ (values-ref _g13827_ 0))
                           (_vars13587_ (values-ref _g13827_ 1)))
                       (values (cons 'box _e13586_) _vars13587_))))
                 (values (cons 'datum _e13482_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       (let ((_g13829_ (_recur13477_ _e13473_ gx#ellipsis?)))
                         (begin
                           (let ((_g13830_ (values-count _g13829_)))
                             (if (not (fx= _g13830_ 2))
                                 (error "Context expects 2 values" _g13830_)))
                           (let ((_tree13479_ (values-ref _g13829_ 0))
                                 (_vars13480_ (values-ref _g13829_ 1)))
                             (if (null? _vars13480_)
                                 _tree13479_
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Missing ellipsis"
                                  _stx13429_
                                  _vars13480_)))))))))))
          (let ((_e1343313443_ _stx13429_))
            (let ((_E1343513447_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _stx13429_))))
              (let ((_E1343413469_
                     (lambda ()
                       (if (gx#stx-pair? _e1343313443_)
                           (let ((_e1343613451_ (gx#syntax-e _e1343313443_)))
                             (let ((_hd1343713454_ (##car _e1343613451_))
                                   (_tl1343813456_ (##cdr _e1343613451_)))
                               (if (gx#stx-pair? _tl1343813456_)
                                   (let ((_e1343913459_
                                          (gx#syntax-e _tl1343813456_)))
                                     (let ((_hd1344013462_
                                            (##car _e1343913459_))
                                           (_tl1344113464_
                                            (##cdr _e1343913459_)))
                                       (let ((_form13467_ _hd1344013462_))
                                         (if (gx#stx-null? _tl1344113464_)
                                             (if '#t
                                                 (gx#stx-wrap-source
                                                  (_generate13431_
                                                   (_parse13432_ _form13467_))
                                                  (gx#stx-source _stx13429_))
                                                 (_E1343513447_))
                                             (_E1343513447_)))))
                                   (_E1343513447_))))
                           (_E1343513447_)))))
                (let () (_E1343413469_)))))))))
  (begin
    (define gx#macro-expand-syntax-case__opt-lambda12699
      (lambda (_stx12701_ _identifier=?12702_ _unwrap-e12703_ _wrap-e12704_)
        (let ((_generate-body12707_
               (lambda (_bindings13251_ _body13252_)
                 ((letrec ((_recur13254_
                            (lambda (_rest13256_)
                              (let ((_rest1325713265_ _rest13256_))
                                (let ((_E1326013269_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest1325713265_))))
                                  (let ((_else1325913273_
                                         (lambda () _body13252_)))
                                    (let ((_K1326113279_
                                           (lambda (_rest13276_ _hd13277_)
                                             (gx#core-list
                                              'let-values
                                              (cons _hd13277_ '())
                                              (_recur13254_ _rest13276_)))))
                                      (if (##pair? _rest1325713265_)
                                          (let ((_hd1326213282_
                                                 (##car _rest1325713265_))
                                                (_tl1326313284_
                                                 (##cdr _rest1325713265_)))
                                            (let ((_hd13287_ _hd1326213282_))
                                              (let ((_rest13289_
                                                     _tl1326313284_))
                                                (_K1326113279_
                                                 _rest13289_
                                                 _hd13287_))))
                                          (_else1325913273_)))))))))
                    _recur13254_)
                  _bindings13251_))))
          (let ((_generate-match12709_
                 (lambda (_where12873_
                          _target12874_
                          _hd12875_
                          _mvars12876_
                          _K12877_
                          _E12878_)
                   (let ((_BUG12880_
                          (lambda (_q13112_)
                            (error '"BUG: syntax-case; generate"
                                   _stx12701_
                                   _hd12875_
                                   _q13112_))))
                     (let ((_splice-rlen12882_
                            (lambda (_e12928_)
                              ((letrec ((_lp12930_
                                         (lambda (_e12932_ _n12933_)
                                           (let ((_e1293412941_ _e12932_))
                                             (let ((_E1293612945_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _e1293412941_))))
                                               (let ((_K1293712954_
                                                      (lambda (_body12948_
                                                               _tag12949_)
                                                        (let ((_$e12951_
                                                               _tag12949_))
                                                          (if (eq? _$e12951_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'splice)
                      (gx#raise-syntax-error
                       '#f
                       '"Ambiguous pattern"
                       _stx12701_
                       _where12873_)
                      (if (eq? _$e12951_ 'cons)
                          (_lp12930_ (cdr _body12948_) (fx+ _n12933_ '1))
                          _n12933_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _e1293412941_)
                                                     (let ((_hd1293812957_
                                                            (##car _e1293412941_))
                                                           (_tl1293912959_
                                                            (##cdr _e1293412941_)))
                                                       (let ((_tag12962_
                                                              _hd1293812957_))
                                                         (let ((_body12964_
                                                                _tl1293912959_))
                                                           (_K1293712954_
                                                            _body12964_
                                                            _tag12962_))))
                                                     (_E1293612945_))))))))
                                 _lp12930_)
                               _e12928_
                               '0))))
                       (let ((_splice-vars12883_
                              (lambda (_e12890_)
                                ((letrec ((_recur12892_
                                           (lambda (_e12894_ _vars12895_)
                                             (let ((_e1289612903_ _e12894_))
                                               (let ((_E1289812907_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _e1289612903_))))
                                                 (let ((_K1289912916_
                                                        (lambda (_body12910_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tag12911_)
                  (let ((_$e12913_ _tag12911_))
                    (if (eq? _$e12913_ 'var)
                        (cons _body12910_ _vars12895_)
                        (if (memq _$e12913_ '(cons splice))
                            (_recur12892_
                             (cdr _body12910_)
                             (_recur12892_ (car _body12910_) _vars12895_))
                            (if (memq _$e12913_ '(vector box))
                                (_recur12892_ _body12910_ _vars12895_)
                                _vars12895_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##pair? _e1289612903_)
                                                       (let ((_hd1290012919_
                                                              (##car _e1289612903_))
                                                             (_tl1290112921_
                                                              (##cdr _e1289612903_)))
                                                         (let ((_tag12924_
                                                                _hd1290012919_))
                                                           (let ((_body12926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1290112921_))
                     (_K1289912916_ _body12926_ _tag12924_))))
               (_E1289812907_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _recur12892_)
                                 _e12890_
                                 '()))))
                         (let ((_make-body12884_
                                (lambda (_vars12886_)
                                  (cons _K12877_
                                        (map (lambda (_mvar12888_)
                                               (assgetq (car _mvar12888_)
                                                        _vars12886_
                                                        _BUG12880_))
                                             _mvars12876_)))))
                           (letrec ((_recur12881_
                                     (lambda (_e12966_
                                              _vars12967_
                                              _target12968_
                                              _E12969_
                                              _k12970_)
                                       (let ((_e1297112978_ _e12966_))
                                         (let ((_E1297312982_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _e1297112978_))))
                                           (let ((_K1297413100_
                                                  (lambda (_body12985_
                                                           _tag12986_)
                                                    (let ((_$e12988_
                                                           _tag12986_))
                                                      (if (eq? _$e12988_ 'any)
                                                          (_k12970_
                                                           _vars12967_)
                                                          (if (eq? _$e12988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'id)
                      (gx#core-list
                       'if
                       (gx#core-list 'identifier? _target12968_)
                       (gx#core-list
                        'if
                        (gx#core-list
                         _identifier=?12702_
                         (gx#core-list _wrap-e12704_ _body12985_)
                         _target12968_)
                        (_k12970_ _vars12967_)
                        _E12969_)
                       _E12969_)
                      (if (eq? _$e12988_ 'var)
                          (_k12970_
                           (cons (cons _body12985_ _target12968_) _vars12967_))
                          (if (eq? _$e12988_ 'cons)
                              (let ((_$e12991_ (gx#genident__1 'e))
                                    (_$hd12992_ (gx#genident__1 'hd))
                                    (_$tl12993_ (gx#genident__1 'tl)))
                                (gx#core-list
                                 'if
                                 (gx#core-list 'stx-pair? _target12968_)
                                 (gx#core-list
                                  'let-values
                                  (cons (cons (cons _$e12991_ '())
                                              (cons (gx#core-list
                                                     _unwrap-e12703_
                                                     _target12968_)
                                                    '()))
                                        '())
                                  (gx#core-list
                                   'let-values
                                   (cons (cons (cons _$hd12992_ '())
                                               (cons (gx#core-list
                                                      '##car
                                                      _$e12991_)
                                                     '()))
                                         (cons (cons (cons _$tl12993_ '())
                                                     (cons (gx#core-list
                                                            '##cdr
                                                            _$e12991_)
                                                           '()))
                                               '()))
                                   (let ((_body1299413001_ _body12985_))
                                     (let ((_E1299613005_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _body1299413001_))))
                                       (let ((_K1299713013_
                                              (lambda (_tl13008_ _hd13009_)
                                                (_recur12881_
                                                 _hd13009_
                                                 _vars12967_
                                                 _$hd12992_
                                                 _E12969_
                                                 (lambda (_vars13011_)
                                                   (_recur12881_
                                                    _tl13008_
                                                    _vars13011_
                                                    _$tl12993_
                                                    _E12969_
                                                    _k12970_))))))
                                         (if (##pair? _body1299413001_)
                                             (let ((_hd1299813016_
                                                    (##car _body1299413001_))
                                                   (_tl1299913018_
                                                    (##cdr _body1299413001_)))
                                               (let ((_hd13021_
                                                      _hd1299813016_))
                                                 (let ((_tl13023_
                                                        _tl1299913018_))
                                                   (_K1299713013_
                                                    _tl13023_
                                                    _hd13021_))))
                                             (_E1299613005_)))))))
                                 _E12969_))
                              (if (eq? _$e12988_ 'splice)
                                  (let ((_body1302413031_ _body12985_))
                                    (let ((_E1302613035_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _body1302413031_))))
                                      (let ((_K1302713084_
                                             (lambda (_tl13038_ _hd13039_)
                                               (let ((_rlen13041_
                                                      (_splice-rlen12882_
                                                       _tl13038_)))
                                                 (let ((_$target13043_
                                                        (gx#genident__1
                                                         'target)))
                                                   (let ((_$hd13045_
                                                          (gx#genident__1
                                                           'hd)))
                                                     (let ((_$tl13047_
                                                            (gx#genident__1
                                                             'tl)))
                                                       (let ((_$lp13049_
                                                              (gx#genident__1
                                                               'loop)))
                                                         (let ((_$lp-e13051_
                                                                (gx#genident__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'e)))
                   (let ((_$lp-hd13053_ (gx#genident__1 'lp-hd)))
                     (let ((_$lp-tl13055_ (gx#genident__1 'lp-tl)))
                       (let ((_svars13057_ (_splice-vars12883_ _hd13039_)))
                         (let ((_lvars13059_ (gx#gentemps _svars13057_)))
                           (let ((_tlvars13061_ (gx#gentemps _svars13057_)))
                             (let ((_linit13065_
                                    (map (lambda (_var13063_)
                                           (gx#core-list 'quote '()))
                                         _lvars13059_)))
                               (let ()
                                 (let ((_make-loop13068_
                                        (lambda (_vars13070_)
                                          (gx#core-list
                                           'letrec-values
                                           (cons (cons (cons _$lp13049_ '())
                                                       (cons (gx#core-list
                                                              'lambda%
                                                              (cons _$hd13045_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _lvars13059_)
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _$hd13045_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$lp-e13051_ '())
                                    (cons (gx#core-list
                                           _unwrap-e12703_
                                           _$hd13045_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$lp-hd13053_ '())
                                     (cons (gx#core-list '##car _$lp-e13051_)
                                           '()))
                               (cons (cons (cons _$lp-tl13055_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$lp-e13051_)
                                                 '()))
                                     '()))
                         (_recur12881_
                          _hd13039_
                          '()
                          _$lp-hd13053_
                          _E12969_
                          (lambda (_hdvars13072_)
                            (cons* _$lp13049_
                                   _$lp-tl13055_
                                   (map (lambda (_svar13074_ _lvar13075_)
                                          (gx#core-list
                                           'cons
                                           (assgetq _svar13074_
                                                    _hdvars13072_
                                                    _BUG12880_)
                                           _lvar13075_))
                                        _svars13057_
                                        _lvars13059_))))))
                       (gx#core-list
                        'let-values
                        (map (lambda (_lvar13077_ _tlvar13078_)
                               (cons (cons _tlvar13078_ '())
                                     (cons (gx#core-list 'reverse _lvar13077_)
                                           '())))
                             _lvars13059_
                             _tlvars13061_)
                        (_k12970_
                         (foldl (lambda (_svar13080_ _tlvar13081_ _r13082_)
                                  (cons (cons _svar13080_ _tlvar13081_)
                                        _r13082_))
                                _vars13070_
                                _svars13057_
                                _tlvars13061_)))))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons* _$lp13049_
                                                  _$target13043_
                                                  _linit13065_)))))
                                   (gx#core-list
                                    'if
                                    (gx#core-list
                                     'stx-pair/null?
                                     _target12968_)
                                    (gx#core-list
                                     'if
                                     (gx#core-list
                                      'fx>=
                                      (gx#core-list 'stx-length _target12968_)
                                      _rlen13041_)
                                     (gx#core-list
                                      'let-values
                                      (cons (cons (cons _$target13043_
                                                        (cons _$tl13047_ '()))
                                                  (cons (gx#core-list
                                                         'syntax-split-splice
                                                         _target12968_
                                                         _rlen13041_)
                                                        '()))
                                            '())
                                      (_recur12881_
                                       _tl13038_
                                       _vars12967_
                                       _$tl13047_
                                       _E12969_
                                       _make-loop13068_))
                                     _E12969_)
                                    _E12969_))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _body1302413031_)
                                            (let ((_hd1302813087_
                                                   (##car _body1302413031_))
                                                  (_tl1302913089_
                                                   (##cdr _body1302413031_)))
                                              (let ((_hd13092_ _hd1302813087_))
                                                (let ((_tl13094_
                                                       _tl1302913089_))
                                                  (_K1302713084_
                                                   _tl13094_
                                                   _hd13092_))))
                                            (_E1302613035_)))))
                                  (if (eq? _$e12988_ 'null)
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-null? _target12968_)
                                       (_k12970_ _vars12967_)
                                       _E12969_)
                                      (if (eq? _$e12988_ 'vector)
                                          (let ((_$e13096_
                                                 (gx#genident__1 'e)))
                                            (gx#core-list
                                             'if
                                             (gx#core-list
                                              'stx-vector?
                                              _target12968_)
                                             (gx#core-list
                                              'let-values
                                              (cons (cons (cons _$e13096_ '())
                                                          (cons (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'vector->list
                         (gx#core-list _unwrap-e12703_ _target12968_))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (_recur12881_
                                               _body12985_
                                               _vars12967_
                                               _$e13096_
                                               _E12969_
                                               _k12970_))
                                             _E12969_))
                                          (if (eq? _$e12988_ 'box)
                                              (let ((_$e13098_
                                                     (gx#genident__1 'e)))
                                                (gx#core-list
                                                 'if
                                                 (gx#core-list
                                                  'stx-box?
                                                  _target12968_)
                                                 (gx#core-list
                                                  'let-values
                                                  (cons (cons (cons _$e13098_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (gx#core-list
                             'unbox
                             (gx#core-list _unwrap-e12703_ _target12968_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur12881_
                                                   _body12985_
                                                   _vars12967_
                                                   _$e13098_
                                                   _E12969_
                                                   _k12970_))
                                                 _E12969_))
                                              (if (eq? _$e12988_ 'datum)
                                                  (gx#core-list
                                                   'if
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target12968_)
                                                   (gx#core-list
                                                    'if
                                                    (gx#core-list
                                                     'equal?
                                                     (gx#core-list
                                                      'stx-e
                                                      _target12968_)
                                                     _body12985_)
                                                    (_k12970_ _vars12967_)
                                                    _E12969_)
                                                   _E12969_)
                                                  (_BUG12880_
                                                   _e12966_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _e1297112978_)
                                                 (let ((_hd1297513103_
                                                        (##car _e1297112978_))
                                                       (_tl1297613105_
                                                        (##cdr _e1297112978_)))
                                                   (let ((_tag13108_
                                                          _hd1297513103_))
                                                     (let ((_body13110_
                                                            _tl1297613105_))
                                                       (_K1297413100_
                                                        _body13110_
                                                        _tag13108_))))
                                                 (_E1297312982_))))))))
                             (_recur12881_
                              _hd12875_
                              '()
                              _target12874_
                              _E12878_
                              _make-body12884_)))))))))
            (let ((_parse-clause12710_
                   (lambda (_hd12779_ _ids12780_)
                     ((letrec ((_recur12782_
                                (lambda (_e12784_ _vars12785_ _depth12786_)
                                  (if (gx#identifier? _e12784_)
                                      (if (gx#underscore? _e12784_)
                                          (values '(any) _vars12785_)
                                          (if (gx#ellipsis? _e12784_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Misplaced ellipsis"
                                               _stx12701_
                                               _hd12779_)
                                              (if (find (lambda (_id12788_)
                                                          (gx#bound-identifier=?
                                                           _e12784_
                                                           _id12788_))
                                                        _ids12780_)
                                                  (values (cons 'id _e12784_)
                                                          _vars12785_)
                                                  (if (find (lambda (_var12790_)
                                                              (gx#bound-identifier=?
                                                               _e12784_
                                                               (car _var12790_)))
                                                            _vars12785_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Duplicate pattern variable"
                                                       _stx12701_
                                                       _e12784_)
                                                      (values (cons 'var
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _e12784_)
                      (cons (cons _e12784_ _depth12786_) _vars12785_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _e12784_)
                                          (let ((_e1279112798_ _e12784_))
                                            (let ((_E1279312802_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _e1279112798_))))
                                              (let ((_E1279212863_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e1279112798_)
                                                           (let ((_e1279412806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e1279112798_)))
                     (let ((_hd1279512809_ (##car _e1279412806_))
                           (_tl1279612811_ (##cdr _e1279412806_)))
                       (let ((_hd12814_ _hd1279512809_))
                         (let ((_rest12816_ _tl1279612811_))
                           (if '#t
                               (let ((_make-pair12831_
                                      (lambda (_tag12818_ _hd12819_ _tl12820_)
                                        (let ((_hd-depth12822_
                                               (if (eq? _tag12818_ 'splice)
                                                   (fx+ _depth12786_ '1)
                                                   _depth12786_)))
                                          (let ((_g13841_
                                                 (_recur12782_
                                                  _hd12819_
                                                  _vars12785_
                                                  _hd-depth12822_)))
                                            (begin
                                              (let ((_g13842_
                                                     (values-count _g13841_)))
                                                (if (not (fx= _g13842_ 2))
                                                    (error "Context expects 2 values"
                                                           _g13842_)))
                                              (let ((_hd12824_
                                                     (values-ref _g13841_ 0))
                                                    (_vars12825_
                                                     (values-ref _g13841_ 1)))
                                                (let ((_g13843_
                                                       (_recur12782_
                                                        _tl12820_
                                                        _vars12825_
                                                        _depth12786_)))
                                                  (begin
                                                    (let ((_g13844_
                                                           (values-count
                                                            _g13843_)))
                                                      (if (not (fx= _g13844_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g13844_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_tl12827_
                                                           (values-ref
                                                            _g13843_
                                                            0))
                                                          (_vars12828_
                                                           (values-ref
                                                            _g13843_
                                                            1)))
                                                      (let ()
                                                        (values (cons* _tag12818_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd12824_
                               _tl12827_)
                        _vars12828_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (let ((_e1283212839_ _rest12816_))
                                   (let ((_E1283412843_
                                          (lambda ()
                                            (_make-pair12831_
                                             'cons
                                             _hd12814_
                                             _rest12816_))))
                                     (let ((_E1283312859_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1283212839_)
                                                  (let ((_e1283512847_
                                                         (gx#syntax-e
                                                          _e1283212839_)))
                                                    (let ((_hd1283612850_
                                                           (##car _e1283512847_))
                                                          (_tl1283712852_
                                                           (##cdr _e1283512847_)))
                                                      (let ((_rest-hd12855_
                                                             _hd1283612850_))
                                                        (let ((_rest-tl12857_
                                                               _tl1283712852_))
                                                          (if '#t
                                                              (if (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest-hd12855_)
                          (_make-pair12831_ 'splice _hd12814_ _rest-tl12857_)
                          (_make-pair12831_ 'cons _hd12814_ _rest12816_))
                      (_E1283412843_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1283412843_)))))
                                       (let () (_E1283312859_))))))
                               (_E1279312802_))))))
                   (_E1279312802_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E1279212863_)))))
                                          (if (gx#stx-null? _e12784_)
                                              (values '(null) _vars12785_)
                                              (if (gx#stx-vector? _e12784_)
                                                  (let ((_g13845_
                                                         (_recur12782_
                                                          (vector->list
                                                           (gx#syntax-e
                                                            _e12784_))
                                                          _vars12785_
                                                          _depth12786_)))
                                                    (begin
                                                      (let ((_g13846_
                                                             (values-count
                                                              _g13845_)))
                                                        (if (not (fx= _g13846_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g13846_)))
              (let ((_e12867_ (values-ref _g13845_ 0))
                    (_vars12868_ (values-ref _g13845_ 1)))
                (values (cons 'vector _e12867_) _vars12868_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e12784_)
                                                      (let ((_g13847_
                                                             (_recur12782_
                                                              (unbox (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e12784_))
                      _vars12785_
                      _depth12786_)))
                (begin
                  (let ((_g13848_ (values-count _g13847_)))
                    (if (not (fx= _g13848_ 2))
                        (error "Context expects 2 values" _g13848_)))
                  (let ((_e12870_ (values-ref _g13847_ 0))
                        (_vars12871_ (values-ref _g13847_ 1)))
                    (values (cons 'box _e12870_) _vars12871_))))
              (if (gx#stx-datum? _e12784_)
                  (values (cons 'datum (gx#stx-e _e12784_)) _vars12785_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad pattern"
                   _stx12701_
                   _e12784_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        _recur12782_)
                      _hd12779_
                      '()
                      '0))))
              (let ((_generate-clause12708_
                     (lambda (_target13114_ _ids13115_ _clause13116_ _E13117_)
                       (let ((_generate113119_
                              (lambda (_hd13206_ _fender13207_ _body13208_)
                                (let ((_g13839_
                                       (_parse-clause12710_
                                        _hd13206_
                                        _ids13115_)))
                                  (begin
                                    (let ((_g13840_ (values-count _g13839_)))
                                      (if (not (fx= _g13840_ 2))
                                          (error "Context expects 2 values"
                                                 _g13840_)))
                                    (let ((_e13210_ (values-ref _g13839_ 0))
                                          (_mvars13211_
                                           (values-ref _g13839_ 1)))
                                      (let ((_pvars13213_
                                             (map gx#syntax-local-rewrap
                                                  (gx#gentemps _mvars13211_))))
                                        (let ((_E13215_
                                               (cons _E13117_
                                                     (cons _target13114_
                                                           '()))))
                                          (let ((_K13248_
                                                 (gx#core-list
                                                  'lambda%
                                                  _pvars13213_
                                                  (gx#core-list
                                                   'let-syntax
                                                   (map (lambda (_mvar13217_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pvar13218_)
                  (let ((_mvar1321913226_ _mvar13217_))
                    (let ((_E1322113230_
                           (lambda ()
                             (error '"No clause matching" _mvar1321913226_))))
                      (let ((_K1322213236_
                             (lambda (_depth13233_ _id13234_)
                               (cons _id13234_
                                     (cons (gx#core-list
                                            'make-syntax-pattern
                                            (gx#core-list 'quote _id13234_)
                                            (gx#core-list 'quote _pvar13218_)
                                            _depth13233_)
                                           '())))))
                        (if (##pair? _mvar1321913226_)
                            (let ((_hd1322313239_ (##car _mvar1321913226_))
                                  (_tl1322413241_ (##cdr _mvar1321913226_)))
                              (let ((_id13244_ _hd1322313239_))
                                (let ((_depth13246_ _tl1322413241_))
                                  (_K1322213236_ _depth13246_ _id13244_))))
                            (_E1322113230_))))))
                _mvars13211_
                _pvars13213_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (eq? _fender13207_ '#t)
                                                       _body13208_
                                                       (gx#core-list
                                                        'if
                                                        _fender13207_
                                                        _body13208_
                                                        _E13215_))))))
                                            (let ()
                                              (_generate-match12709_
                                               _hd13206_
                                               _target13114_
                                               _e13210_
                                               _mvars13211_
                                               _K13248_
                                               _E13215_)))))))))))
                         (let ((_e1312013140_ _clause13116_))
                           (let ((_E1312913144_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _e1312013140_))))
                             (let ((_E1312213178_
                                    (lambda ()
                                      (if (gx#stx-pair? _e1312013140_)
                                          (let ((_e1313013148_
                                                 (gx#syntax-e _e1312013140_)))
                                            (let ((_hd1313113151_
                                                   (##car _e1313013148_))
                                                  (_tl1313213153_
                                                   (##cdr _e1313013148_)))
                                              (let ((_hd13156_ _hd1313113151_))
                                                (if (gx#stx-pair?
                                                     _tl1313213153_)
                                                    (let ((_e1313313158_
                                                           (gx#syntax-e
                                                            _tl1313213153_)))
                                                      (let ((_hd1313413161_
                                                             (##car _e1313313158_))
                                                            (_tl1313513163_
                                                             (##cdr _e1313313158_)))
                                                        (let ((_fender13166_
                                                               _hd1313413161_))
                                                          (if (gx#stx-pair?
                                                               _tl1313513163_)
                                                              (let ((_e1313613168_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1313513163_)))
                        (let ((_hd1313713171_ (##car _e1313613168_))
                              (_tl1313813173_ (##cdr _e1313613168_)))
                          (let ((_body13176_ _hd1313713171_))
                            (if (gx#stx-null? _tl1313813173_)
                                (if '#t
                                    (_generate113119_
                                     _hd13156_
                                     _fender13166_
                                     _body13176_)
                                    (_E1312913144_))
                                (_E1312913144_)))))
                      (_E1312913144_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1312913144_)))))
                                          (_E1312913144_)))))
                               (let ((_E1312113202_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1312013140_)
                                            (let ((_e1312313182_
                                                   (gx#syntax-e
                                                    _e1312013140_)))
                                              (let ((_hd1312413185_
                                                     (##car _e1312313182_))
                                                    (_tl1312513187_
                                                     (##cdr _e1312313182_)))
                                                (let ((_hd13190_
                                                       _hd1312413185_))
                                                  (if (gx#stx-pair?
                                                       _tl1312513187_)
                                                      (let ((_e1312613192_
                                                             (gx#syntax-e
                                                              _tl1312513187_)))
                                                        (let ((_hd1312713195_
                                                               (##car _e1312613192_))
                                                              (_tl1312813197_
                                                               (##cdr _e1312613192_)))
                                                          (let ((_body13200_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1312713195_))
                    (if (gx#stx-null? _tl1312813197_)
                        (if '#t
                            (_generate113119_ _hd13190_ '#t _body13200_)
                            (_E1312213178_))
                        (_E1312213178_)))))
              (_E1312213178_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1312213178_)))))
                                 (let () (_E1312113202_))))))))))
                (let ((_generate-bindings12706_
                       (lambda (_target13291_
                                _ids13292_
                                _clauses13293_
                                _clause-ids13294_
                                _E13295_)
                         (let ((_generate113297_
                                (lambda (_clause13396_
                                         _clause-id13397_
                                         _E13398_)
                                  (cons (cons _clause-id13397_ '())
                                        (cons (gx#core-list
                                               'lambda%
                                               (cons _target13291_ '())
                                               (_generate-clause12708_
                                                _target13291_
                                                _ids13292_
                                                _clause13396_
                                                _E13398_))
                                              '())))))
                           ((letrec ((_lp13299_
                                      (lambda (_rest13301_
                                               _rest-ids13302_
                                               _bindings13303_)
                                        (let ((_rest1330413312_ _rest13301_))
                                          (let ((_E1330713316_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _rest1330413312_))))
                                            (let ((_else1330613320_
                                                   (lambda ()
                                                     _bindings13303_)))
                                              (let ((_K1330813384_
                                                     (lambda (_rest13323_
                                                              _clause13324_)
                                                       (let ((_rest-ids1332513332_
                                                              _rest-ids13302_))
                                                         (let ((_E1332713336_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (error '"No clause matching" _rest-ids1332513332_))))
                   (let ((_K1332813372_
                          (lambda (_rest-ids13339_ _clause-id13340_)
                            (let ((_rest-ids1334113349_ _rest-ids13339_))
                              (let ((_E1334413353_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _rest-ids1334113349_))))
                                (let ((_else1334313357_
                                       (lambda ()
                                         (cons (_generate113297_
                                                _clause13324_
                                                _clause-id13340_
                                                _E13295_)
                                               _bindings13303_))))
                                  (let ((_K1334513362_
                                         (lambda (_next-clause-id13360_)
                                           (_lp13299_
                                            _rest13323_
                                            _rest-ids13339_
                                            (cons (_generate113297_
                                                   _clause13324_
                                                   _clause-id13340_
                                                   _next-clause-id13360_)
                                                  _bindings13303_)))))
                                    (if (##pair? _rest-ids1334113349_)
                                        (let ((_hd1334613365_
                                               (##car _rest-ids1334113349_))
                                              (_tl1334713367_
                                               (##cdr _rest-ids1334113349_)))
                                          (let ((_next-clause-id13370_
                                                 _hd1334613365_))
                                            (_K1334513362_
                                             _next-clause-id13370_)))
                                        (_else1334313357_)))))))))
                     (if (##pair? _rest-ids1332513332_)
                         (let ((_hd1332913375_ (##car _rest-ids1332513332_))
                               (_tl1333013377_ (##cdr _rest-ids1332513332_)))
                           (let ((_clause-id13380_ _hd1332913375_))
                             (let ((_rest-ids13382_ _tl1333013377_))
                               (_K1332813372_
                                _rest-ids13382_
                                _clause-id13380_))))
                         (_E1332713336_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (##pair? _rest1330413312_)
                                                    (let ((_hd1330913387_
                                                           (##car _rest1330413312_))
                                                          (_tl1331013389_
                                                           (##cdr _rest1330413312_)))
                                                      (let ((_clause13392_
                                                             _hd1330913387_))
                                                        (let ((_rest13394_
                                                               _tl1331013389_))
                                                          (_K1330813384_
                                                           _rest13394_
                                                           _clause13392_))))
                                                    (_else1330613320_)))))))))
                              _lp13299_)
                            _clauses13293_
                            _clause-ids13294_
                            '())))))
                  (let ((_e1271112724_ _stx12701_))
                    (let ((_E1271312728_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e1271112724_))))
                      (let ((_E1271212775_
                             (lambda ()
                               (if (gx#stx-pair? _e1271112724_)
                                   (let ((_e1271412732_
                                          (gx#syntax-e _e1271112724_)))
                                     (let ((_hd1271512735_
                                            (##car _e1271412732_))
                                           (_tl1271612737_
                                            (##cdr _e1271412732_)))
                                       (if (gx#stx-pair? _tl1271612737_)
                                           (let ((_e1271712740_
                                                  (gx#syntax-e
                                                   _tl1271612737_)))
                                             (let ((_hd1271812743_
                                                    (##car _e1271712740_))
                                                   (_tl1271912745_
                                                    (##cdr _e1271712740_)))
                                               (let ((_expr12748_
                                                      _hd1271812743_))
                                                 (if (gx#stx-pair?
                                                      _tl1271912745_)
                                                     (let ((_e1272012750_
                                                            (gx#syntax-e
                                                             _tl1271912745_)))
                                                       (let ((_hd1272112753_
                                                              (##car _e1272012750_))
                                                             (_tl1272212755_
                                                              (##cdr _e1272012750_)))
                                                         (let ((_ids12758_
                                                                _hd1272112753_))
                                                           (let ((_clauses12760_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1272212755_))
                     (if '#t
                         (if (not (gx#identifier-list? _ids12758_))
                             (gx#raise-syntax-error
                              '#f
                              '"Bad template identifier list"
                              _stx12701_
                              _ids12758_)
                             (if (not (gx#stx-list? _clauses12760_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _stx12701_)
                                 (let ((_ids12762_
                                        (gx#syntax->list _ids12758_)))
                                   (let ((_clauses12764_
                                          (gx#syntax->list _clauses12760_)))
                                     (let ((_clause-ids12766_
                                            (gx#gentemps _clauses12764_)))
                                       (let ((_E12768_ (gx#genident__0)))
                                         (let ((_target12770_
                                                (gx#genident__0)))
                                           (let ((_first12772_
                                                  (if (null? _clauses12764_)
                                                      _E12768_
                                                      (car _clause-ids12766_))))
                                             (let ()
                                               (gx#stx-wrap-source
                                                (gx#core-list
                                                 'let-values
                                                 (cons (cons (cons _E12768_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _target12770_ '())
                            (gx#core-list
                             'raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _target12770_))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_generate-body12707_
                                                  (_generate-bindings12706_
                                                   _target12770_
                                                   _ids12762_
                                                   _clauses12764_
                                                   _clause-ids12766_
                                                   _E12768_)
                                                  (cons _first12772_
                                                        (cons _expr12748_
                                                              '()))))
                                                (gx#stx-source
                                                 _stx12701_)))))))))))
                         (_E1271312728_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1271312728_)))))
                                           (_E1271312728_))))
                                   (_E1271312728_)))))
                        (let () (_E1271212775_))))))))))))
    (begin
      (define gx#macro-expand-syntax-case__0
        (lambda (_stx13403_)
          (let ((_identifier=?13405_ 'free-identifier=?))
            (let ((_unwrap-e13407_ 'syntax-e))
              (let ((_wrap-e13409_ 'quote-syntax))
                (gx#macro-expand-syntax-case__opt-lambda12699
                 _stx13403_
                 _identifier=?13405_
                 _unwrap-e13407_
                 _wrap-e13409_))))))
      (define gx#macro-expand-syntax-case__1
        (lambda (_stx13411_ _identifier=?13412_)
          (let ((_unwrap-e13414_ 'syntax-e))
            (let ((_wrap-e13416_ 'quote-syntax))
              (gx#macro-expand-syntax-case__opt-lambda12699
               _stx13411_
               _identifier=?13412_
               _unwrap-e13414_
               _wrap-e13416_)))))
      (define gx#macro-expand-syntax-case__2
        (lambda (_stx13418_ _identifier=?13419_ _unwrap-e13420_)
          (let ((_wrap-e13422_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda12699
             _stx13418_
             _identifier=?13419_
             _unwrap-e13420_
             _wrap-e13422_))))
      (define gx#macro-expand-syntax-case
        (lambda _g13850_
          (let ((_g13849_ (length _g13850_)))
            (cond ((fx= _g13849_ 1)
                   (apply gx#macro-expand-syntax-case__0 _g13850_))
                  ((fx= _g13849_ 2)
                   (apply gx#macro-expand-syntax-case__1 _g13850_))
                  ((fx= _g13849_ 3)
                   (apply gx#macro-expand-syntax-case__2 _g13850_))
                  ((fx= _g13849_ 4)
                   (apply gx#macro-expand-syntax-case__opt-lambda12699
                          _g13850_))
                  (else (error "No clause matching arguments" _g13850_))))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx12698_)
      (if (gx#identifier? _stx12698_)
          (##structure-instance-of?
           (gx#syntax-local-e__opt-lambda3895 _stx12698_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd12656_ . _rest12657_)
      (let ((_len12659_ (length _hd12656_)))
        ((letrec ((_lp12661_
                   (lambda (_rest12663_)
                     (let ((_rest1266412672_ _rest12663_))
                       (let ((_E1266712676_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1266412672_))))
                         (let ((_else1266612680_ (lambda () '#!void)))
                           (let ((_K1266812686_
                                  (lambda (_rest12683_ _hd12684_)
                                    (if (fx= _len12659_ (length _hd12684_))
                                        (_lp12661_ _rest12683_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Splice length mismatch"
                                         _hd12684_)))))
                             (if (##pair? _rest1266412672_)
                                 (let ((_hd1266912689_
                                        (##car _rest1266412672_))
                                       (_tl1267012691_
                                        (##cdr _rest1266412672_)))
                                   (let ((_hd12694_ _hd1266912689_))
                                     (let ((_rest12696_ _tl1267012691_))
                                       (_K1266812686_ _rest12696_ _hd12694_))))
                                 (_else1266612680_)))))))))
           _lp12661_)
         _rest12657_))))
  (define gx#syntax-split-splice
    (lambda (_stx12614_ _n12615_)
      ((letrec ((_lp12617_
                 (lambda (_rest12619_ _r12620_)
                   (if (gx#stx-pair? _rest12619_)
                       (let ((_g1262112628_ (gx#syntax-e _rest12619_)))
                         (let ((_E1262312632_
                                (lambda ()
                                  (error '"No clause matching"
                                         _g1262112628_))))
                           (let ((_K1262412638_
                                  (lambda (_rest12635_ _hd12636_)
                                    (_lp12617_
                                     _rest12635_
                                     (cons _hd12636_ _r12620_)))))
                             (if (##pair? _g1262112628_)
                                 (let ((_hd1262512641_ (##car _g1262112628_))
                                       (_tl1262612643_ (##cdr _g1262112628_)))
                                   (let ((_hd12646_ _hd1262512641_))
                                     (let ((_rest12648_ _tl1262612643_))
                                       (_K1262412638_ _rest12648_ _hd12646_))))
                                 (_E1262312632_)))))
                       ((letrec ((_lp12650_
                                  (lambda (_n12652_ _l12653_ _r12654_)
                                    (if (null? _l12653_)
                                        (values _l12653_ _r12654_)
                                        (if (fxpositive? _n12652_)
                                            (_lp12650_
                                             (fx- _n12652_ '1)
                                             (cdr _l12653_)
                                             (cons (car _l12653_) _r12654_))
                                            (values (reverse _l12653_)
                                                    _r12654_))))))
                          _lp12650_)
                        _n12615_
                        _r12620_
                        _rest12619_)))))
         _lp12617_)
       _stx12614_
       '()))))
