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
    (lambda _$args13753_
      (apply make-struct-instance gx#syntax-pattern::t _$args13753_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self13750_ _stx13751_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx13751_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx13359_)
      (let ((_generate13361_
             (lambda (_e13588_)
               (let ((_BUG13590_
                      (lambda (_q13748_)
                        (error '"BUG: syntax; generate"
                               _stx13359_
                               _e13588_
                               _q13748_))))
                 (let ((_local-pattern-e13591_
                        (lambda (_pat13746_)
                          (gx#syntax-local-rewrap
                           (##structure-ref
                            _pat13746_
                            '2
                            gx#syntax-pattern::t
                            '#f)))))
                   (let ((_getvar13592_
                          (lambda (_q13743_ _vars13744_)
                            (assgetq _q13743_ _vars13744_ _BUG13590_))))
                     (let ((_getarg13593_
                            (lambda (_arg13709_ _vars13710_)
                              (let ((_arg1371113718_ _arg13709_))
                                (let ((_E1371313722_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _arg1371113718_))))
                                  (let ((_K1371413731_
                                         (lambda (_e13725_ _tag13726_)
                                           (let ((_$e13728_ _tag13726_))
                                             (if (eq? _$e13728_ 'ref)
                                                 (_getvar13592_
                                                  _e13725_
                                                  _vars13710_)
                                                 (if (eq? _$e13728_ 'pattern)
                                                     (_local-pattern-e13591_
                                                      _e13725_)
                                                     (_BUG13590_
                                                      _arg13709_)))))))
                                    (if (##pair? _arg1371113718_)
                                        (let ((_hd1371513734_
                                               (##car _arg1371113718_))
                                              (_tl1371613736_
                                               (##cdr _arg1371113718_)))
                                          (let ((_tag13739_ _hd1371513734_))
                                            (let ((_e13741_ _tl1371613736_))
                                              (_K1371413731_
                                               _e13741_
                                               _tag13739_))))
                                        (_E1371313722_))))))))
                       ((letrec ((_recur13595_
                                  (lambda (_e13597_ _vars13598_)
                                    (let ((_e1359913606_ _e13597_))
                                      (let ((_E1360113610_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _e1359913606_))))
                                        (let ((_K1360213697_
                                               (lambda (_body13613_ _tag13614_)
                                                 (let ((_$e13616_ _tag13614_))
                                                   (if (eq? _$e13616_ 'datum)
                                                       (gx#core-list
                                                        'quote
                                                        _body13613_)
                                                       (if (eq? _$e13616_
                                                                'term)
                                                           (gx#core-list
                                                            'datum->syntax
                                                            '#f
                                                            (gx#core-list
                                                             'quote
                                                             _body13613_))
                                                           (if (eq? _$e13616_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'pattern)
                       (_local-pattern-e13591_ _body13613_)
                       (if (eq? _$e13616_ 'ref)
                           (_getvar13592_ _body13613_ _vars13598_)
                           (if (eq? _$e13616_ 'cons)
                               (gx#core-list
                                'cons
                                (_recur13595_ (car _body13613_) _vars13598_)
                                (_recur13595_ (cdr _body13613_) _vars13598_))
                               (if (eq? _$e13616_ 'vector)
                                   (gx#core-list
                                    'list->vector
                                    (_recur13595_ _body13613_ _vars13598_))
                                   (if (eq? _$e13616_ 'box)
                                       (gx#core-list
                                        'box
                                        (_recur13595_ _body13613_ _vars13598_))
                                       (if (eq? _$e13616_ 'splice)
                                           (let ((_body1361813629_
                                                  _body13613_))
                                             (let ((_E1362013633_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _body1361813629_))))
                                               (let ((_K1362113671_
                                                      (lambda (_args13636_
                                                               _iv13637_
                                                               _hd13638_
                                                               _depth13639_)
                                                        (let ((_targets13645_
                                                               (map (lambda (_g1364013642_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_getarg13593_ _g1364013642_ _vars13598_))
                            _args13636_)))
                  (let ((_fold-in13647_ (gx#gentemps _args13636_)))
                    (let ((_fold-out13649_ (gx#genident__0)))
                      (let ((_lambda-args13651_
                             (foldr1 cons
                                     (cons _fold-out13649_ '())
                                     _fold-in13647_)))
                        (let ((_lambda-body13668_
                               (if (fx> _depth13639_ '1)
                                   (let ((_r-args13659_
                                          (map (lambda (_arg13653_)
                                                 (cons 'ref (cdr _arg13653_)))
                                               _args13636_))
                                         (_r-vars13660_
                                          (foldr (lambda (_arg13655_
                                                          _var13656_
                                                          _r13657_)
                                                   (cons (cons (cdr _arg13655_)
                                                               _var13656_)
                                                         _r13657_))
                                                 _vars13598_
                                                 _args13636_
                                                 _fold-in13647_)))
                                     (_recur13595_
                                      (cons* 'splice
                                             (fx- _depth13639_ '1)
                                             _hd13638_
                                             (cons 'var _fold-out13649_)
                                             _r-args13659_)
                                      _r-vars13660_))
                                   (let ((_hd-vars13666_
                                          (foldr (lambda (_arg13662_
                                                          _var13663_
                                                          _r13664_)
                                                   (cons (cons (cdr _arg13662_)
                                                               _var13663_)
                                                         _r13664_))
                                                 _vars13598_
                                                 _args13636_
                                                 _fold-in13647_)))
                                     (gx#core-list
                                      'cons
                                      (_recur13595_ _hd13638_ _hd-vars13666_)
                                      _fold-out13649_)))))
                          (let ()
                            (gx#core-list
                             'begin
                             (if (fx> (length _targets13645_) '1)
                                 (gx#core-cons*
                                  'syntax-check-splice-targets
                                  _targets13645_)
                                 '#!void)
                             (gx#core-cons*
                              'foldr
                              (gx#core-list
                               'lambda%
                               _lambda-args13651_
                               _lambda-body13668_)
                              (_recur13595_ _iv13637_ _vars13598_)
                              _targets13645_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _body1361813629_)
                                                     (let ((_hd1362213674_
                                                            (##car _body1361813629_))
                                                           (_tl1362313676_
                                                            (##cdr _body1361813629_)))
                                                       (let ((_depth13679_
                                                              _hd1362213674_))
                                                         (if (##pair? _tl1362313676_)
                                                             (let ((_hd1362413681_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##car _tl1362313676_))
                           (_tl1362513683_ (##cdr _tl1362313676_)))
                       (let ((_hd13686_ _hd1362413681_))
                         (if (##pair? _tl1362513683_)
                             (let ((_hd1362613688_ (##car _tl1362513683_))
                                   (_tl1362713690_ (##cdr _tl1362513683_)))
                               (let ((_iv13693_ _hd1362613688_))
                                 (let ((_args13695_ _tl1362713690_))
                                   (_K1362113671_
                                    _args13695_
                                    _iv13693_
                                    _hd13686_
                                    _depth13679_))))
                             (_E1362013633_))))
                     (_E1362013633_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1362013633_)))))
                                           (if (eq? _$e13616_ 'var)
                                               _body13613_
                                               (_BUG13590_
                                                _e13597_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _e1359913606_)
                                              (let ((_hd1360313700_
                                                     (##car _e1359913606_))
                                                    (_tl1360413702_
                                                     (##cdr _e1359913606_)))
                                                (let ((_tag13705_
                                                       _hd1360313700_))
                                                  (let ((_body13707_
                                                         _tl1360413702_))
                                                    (_K1360213697_
                                                     _body13707_
                                                     _tag13705_))))
                                              (_E1360113610_))))))))
                          _recur13595_)
                        _e13588_
                        '()))))))))
        (let ((_parse13362_
               (lambda (_e13403_)
                 (let ((_make-cons13405_
                        (lambda (_hd13580_ _tl13581_)
                          (let ((_g13765_ _hd13580_) (_g13767_ _tl13581_))
                            (begin
                              (let ((_g13766_ (values-count _g13765_)))
                                (if (not (fx= _g13766_ 2))
                                    (error "Context expects 2 values"
                                           _g13766_)))
                              (let ((_g13768_ (values-count _g13767_)))
                                (if (not (fx= _g13768_ 2))
                                    (error "Context expects 2 values"
                                           _g13768_)))
                              (let ((_hd-e13583_ (values-ref _g13765_ 0))
                                    (_hd-vars13584_ (values-ref _g13765_ 1)))
                                (let ((_tl-e13585_ (values-ref _g13767_ 0))
                                      (_tl-vars13586_ (values-ref _g13767_ 1)))
                                  (values (cons* 'cons _hd-e13583_ _tl-e13585_)
                                          (append _hd-vars13584_
                                                  _tl-vars13586_)))))))))
                   (let ((_make-splice13406_
                          (lambda (_where13519_
                                   _depth13520_
                                   _hd13521_
                                   _tl13522_)
                            (let ((_g13761_ _hd13521_) (_g13763_ _tl13522_))
                              (begin
                                (let ((_g13762_ (values-count _g13761_)))
                                  (if (not (fx= _g13762_ 2))
                                      (error "Context expects 2 values"
                                             _g13762_)))
                                (let ((_g13764_ (values-count _g13763_)))
                                  (if (not (fx= _g13764_ 2))
                                      (error "Context expects 2 values"
                                             _g13764_)))
                                (let ((_hd-e13524_ (values-ref _g13761_ 0))
                                      (_hd-vars13525_ (values-ref _g13761_ 1)))
                                  (let ((_tl-e13526_ (values-ref _g13763_ 0))
                                        (_tl-vars13527_
                                         (values-ref _g13763_ 1)))
                                    ((letrec ((_lp13529_
                                               (lambda (_rest13531_
                                                        _targets13532_
                                                        _vars13533_)
                                                 (let ((_rest1353413544_
                                                        _rest13531_))
                                                   (let ((_E1353713548_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest1353413544_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_else1353613552_
                                                            (lambda ()
                                                              (if (null? _targets13532_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Misplaced ellipsis"
                           _stx13359_
                           _where13519_)
                          (values (cons* 'splice
                                         _depth13520_
                                         _hd-e13524_
                                         _tl-e13526_
                                         _targets13532_)
                                  _vars13533_)))))
               (let ((_K1353813561_
                      (lambda (_rest13555_ _hd-pat13556_ _hd-depth*13557_)
                        (let ((_hd-depth13559_
                               (fx- _hd-depth*13557_ _depth13520_)))
                          (if (fxpositive? _hd-depth13559_)
                              (_lp13529_
                               _rest13555_
                               (cons (cons 'ref _hd-pat13556_) _targets13532_)
                               (cons (cons _hd-depth13559_ _hd-pat13556_)
                                     _vars13533_))
                              (if (fxzero? _hd-depth13559_)
                                  (_lp13529_
                                   _rest13555_
                                   (cons (cons 'pattern _hd-pat13556_)
                                         _targets13532_)
                                   _vars13533_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Too many ellipses"
                                   _stx13359_
                                   _where13519_)))))))
                 (if (##pair? _rest1353413544_)
                     (let ((_hd1353913564_ (##car _rest1353413544_))
                           (_tl1354013566_ (##cdr _rest1353413544_)))
                       (if (##pair? _hd1353913564_)
                           (let ((_hd1354113569_ (##car _hd1353913564_))
                                 (_tl1354213571_ (##cdr _hd1353913564_)))
                             (let ((_hd-depth*13574_ _hd1354113569_))
                               (let ((_hd-pat13576_ _tl1354213571_))
                                 (let ((_rest13578_ _tl1354013566_))
                                   (_K1353813561_
                                    _rest13578_
                                    _hd-pat13576_
                                    _hd-depth*13574_)))))
                           (_else1353613552_)))
                     (_else1353613552_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _lp13529_)
                                     _hd-vars13525_
                                     '()
                                     _tl-vars13527_))))))))
                     (letrec ((_recur13407_
                               (lambda (_e13412_ _is-e?13413_)
                                 (if (_is-e?13413_ _e13412_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Mislpaced ellipsis"
                                      _stx13359_)
                                     (if (gx#syntax-local-pattern? _e13412_)
                                         (let ((_pat13415_
                                                (gx#syntax-local-e__0
                                                 _e13412_)))
                                           (let ((_depth13417_
                                                  (##structure-ref
                                                   _pat13415_
                                                   '3
                                                   gx#syntax-pattern::t
                                                   '#f)))
                                             (let ()
                                               (if (fxpositive? _depth13417_)
                                                   (values (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat13415_)
                   (cons (cons _depth13417_ _pat13415_) '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (values (cons 'pattern
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat13415_)
                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (if (gx#identifier? _e13412_)
                                             (values (cons 'term _e13412_) '())
                                             (if (gx#stx-pair? _e13412_)
                                                 (let ((_e1341913426_
                                                        _e13412_))
                                                   (let ((_E1342113430_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _e1341913426_))))
                                                     (let ((_E1342013509_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e1341913426_)
                          (let ((_e1342213434_ (gx#syntax-e _e1341913426_)))
                            (let ((_hd1342313437_ (##car _e1342213434_))
                                  (_tl1342413439_ (##cdr _e1342213434_)))
                              (let ((_hd13442_ _hd1342313437_))
                                (let ((_rest13444_ _tl1342413439_))
                                  (if '#t
                                      (if (_is-e?13413_ _hd13442_)
                                          (let ((_e1344513452_ _rest13444_))
                                            (let ((_E1344713456_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad ellipsis syntax"
                                                      _stx13359_
                                                      _e13412_))))
                                              (let ((_E1344613470_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e1344513452_)
                                                           (let ((_e1344813460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e1344513452_)))
                     (let ((_hd1344913463_ (##car _e1344813460_))
                           (_tl1345013465_ (##cdr _e1344813460_)))
                       (let ((_rest13468_ _hd1344913463_))
                         (if (gx#stx-null? _tl1345013465_)
                             (if '#t
                                 (_recur13407_ _rest13468_ false)
                                 (_E1344713456_))
                             (_E1344713456_)))))
                   (_E1344713456_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E1344613470_)))))
                                          ((letrec ((_lp13474_
                                                     (lambda (_rest13476_
                                                              _depth13477_)
                                                       (let ((_e1347813485_
                                                              _rest13476_))
                                                         (let ((_E1348013489_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (fxpositive? _depth13477_)
                              (_make-splice13406_
                               _e13412_
                               _depth13477_
                               (_recur13407_ _hd13442_ _is-e?13413_)
                               (_recur13407_ _rest13476_ _is-e?13413_))
                              (_make-cons13405_
                               (_recur13407_ _hd13442_ _is-e?13413_)
                               (_recur13407_ _rest13476_ _is-e?13413_))))))
                   (let ((_E1347913505_
                          (lambda ()
                            (if (gx#stx-pair? _e1347813485_)
                                (let ((_e1348113493_
                                       (gx#syntax-e _e1347813485_)))
                                  (let ((_hd1348213496_ (##car _e1348113493_))
                                        (_tl1348313498_ (##cdr _e1348113493_)))
                                    (let ((_rest-hd13501_ _hd1348213496_))
                                      (let ((_rest-tl13503_ _tl1348313498_))
                                        (if '#t
                                            (if (_is-e?13413_ _rest-hd13501_)
                                                (_lp13474_
                                                 _rest-tl13503_
                                                 (fx+ _depth13477_ '1))
                                                (if (fxpositive? _depth13477_)
                                                    (_make-splice13406_
                                                     _e13412_
                                                     _depth13477_
                                                     (_recur13407_
                                                      _hd13442_
                                                      _is-e?13413_)
                                                     (_recur13407_
                                                      _rest13476_
                                                      _is-e?13413_))
                                                    (_make-cons13405_
                                                     (_recur13407_
                                                      _hd13442_
                                                      _is-e?13413_)
                                                     (_recur13407_
                                                      _rest13476_
                                                      _is-e?13413_))))
                                            (_E1348013489_))))))
                                (_E1348013489_)))))
                     (let () (_E1347913505_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _lp13474_)
                                           _rest13444_
                                           '0))
                                      (_E1342113430_))))))
                          (_E1342113430_)))))
               (let () (_E1342013509_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-vector? _e13412_)
                                                     (let ((_g13755_
                                                            (_recur13407_
                                                             (vector->list
                                                              (gx#stx-unwrap__0
                                                               _e13412_))
                                                             _is-e?13413_)))
                                                       (begin
                                                         (let ((_g13756_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g13755_)))
                   (if (not (fx= _g13756_ 2))
                       (error "Context expects 2 values" _g13756_)))
                 (let ((_e13513_ (values-ref _g13755_ 0))
                       (_vars13514_ (values-ref _g13755_ 1)))
                   (values (cons 'vector _e13513_) _vars13514_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-box? _e13412_)
                                                         (let ((_g13757_
                                                                (_recur13407_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (unbox (gx#stx-unwrap__0 _e13412_))
                         _is-e?13413_)))
                   (begin
                     (let ((_g13758_ (values-count _g13757_)))
                       (if (not (fx= _g13758_ 2))
                           (error "Context expects 2 values" _g13758_)))
                     (let ((_e13516_ (values-ref _g13757_ 0))
                           (_vars13517_ (values-ref _g13757_ 1)))
                       (values (cons 'box _e13516_) _vars13517_))))
                 (values (cons 'datum _e13412_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       (let ((_g13759_ (_recur13407_ _e13403_ gx#ellipsis?)))
                         (begin
                           (let ((_g13760_ (values-count _g13759_)))
                             (if (not (fx= _g13760_ 2))
                                 (error "Context expects 2 values" _g13760_)))
                           (let ((_tree13409_ (values-ref _g13759_ 0))
                                 (_vars13410_ (values-ref _g13759_ 1)))
                             (if (null? _vars13410_)
                                 _tree13409_
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Missing ellipsis"
                                  _stx13359_
                                  _vars13410_)))))))))))
          (let ((_e1336313373_ _stx13359_))
            (let ((_E1336513377_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _stx13359_))))
              (let ((_E1336413399_
                     (lambda ()
                       (if (gx#stx-pair? _e1336313373_)
                           (let ((_e1336613381_ (gx#syntax-e _e1336313373_)))
                             (let ((_hd1336713384_ (##car _e1336613381_))
                                   (_tl1336813386_ (##cdr _e1336613381_)))
                               (if (gx#stx-pair? _tl1336813386_)
                                   (let ((_e1336913389_
                                          (gx#syntax-e _tl1336813386_)))
                                     (let ((_hd1337013392_
                                            (##car _e1336913389_))
                                           (_tl1337113394_
                                            (##cdr _e1336913389_)))
                                       (let ((_form13397_ _hd1337013392_))
                                         (if (gx#stx-null? _tl1337113394_)
                                             (if '#t
                                                 (gx#stx-wrap-source
                                                  (_generate13361_
                                                   (_parse13362_ _form13397_))
                                                  (gx#stx-source _stx13359_))
                                                 (_E1336513377_))
                                             (_E1336513377_)))))
                                   (_E1336513377_))))
                           (_E1336513377_)))))
                (let () (_E1336413399_)))))))))
  (begin
    (define gx#macro-expand-syntax-case__opt-lambda12629
      (lambda (_stx12631_ _identifier=?12632_ _unwrap-e12633_ _wrap-e12634_)
        (let ((_generate-body12637_
               (lambda (_bindings13181_ _body13182_)
                 ((letrec ((_recur13184_
                            (lambda (_rest13186_)
                              (let ((_rest1318713195_ _rest13186_))
                                (let ((_E1319013199_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest1318713195_))))
                                  (let ((_else1318913203_
                                         (lambda () _body13182_)))
                                    (let ((_K1319113209_
                                           (lambda (_rest13206_ _hd13207_)
                                             (gx#core-list
                                              'let-values
                                              (cons _hd13207_ '())
                                              (_recur13184_ _rest13206_)))))
                                      (if (##pair? _rest1318713195_)
                                          (let ((_hd1319213212_
                                                 (##car _rest1318713195_))
                                                (_tl1319313214_
                                                 (##cdr _rest1318713195_)))
                                            (let ((_hd13217_ _hd1319213212_))
                                              (let ((_rest13219_
                                                     _tl1319313214_))
                                                (_K1319113209_
                                                 _rest13219_
                                                 _hd13217_))))
                                          (_else1318913203_)))))))))
                    _recur13184_)
                  _bindings13181_))))
          (let ((_generate-match12639_
                 (lambda (_where12803_
                          _target12804_
                          _hd12805_
                          _mvars12806_
                          _K12807_
                          _E12808_)
                   (let ((_BUG12810_
                          (lambda (_q13042_)
                            (error '"BUG: syntax-case; generate"
                                   _stx12631_
                                   _hd12805_
                                   _q13042_))))
                     (let ((_splice-rlen12812_
                            (lambda (_e12858_)
                              ((letrec ((_lp12860_
                                         (lambda (_e12862_ _n12863_)
                                           (let ((_e1286412871_ _e12862_))
                                             (let ((_E1286612875_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _e1286412871_))))
                                               (let ((_K1286712884_
                                                      (lambda (_body12878_
                                                               _tag12879_)
                                                        (let ((_$e12881_
                                                               _tag12879_))
                                                          (if (eq? _$e12881_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'splice)
                      (gx#raise-syntax-error
                       '#f
                       '"Ambiguous pattern"
                       _stx12631_
                       _where12803_)
                      (if (eq? _$e12881_ 'cons)
                          (_lp12860_ (cdr _body12878_) (fx+ _n12863_ '1))
                          _n12863_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _e1286412871_)
                                                     (let ((_hd1286812887_
                                                            (##car _e1286412871_))
                                                           (_tl1286912889_
                                                            (##cdr _e1286412871_)))
                                                       (let ((_tag12892_
                                                              _hd1286812887_))
                                                         (let ((_body12894_
                                                                _tl1286912889_))
                                                           (_K1286712884_
                                                            _body12894_
                                                            _tag12892_))))
                                                     (_E1286612875_))))))))
                                 _lp12860_)
                               _e12858_
                               '0))))
                       (let ((_splice-vars12813_
                              (lambda (_e12820_)
                                ((letrec ((_recur12822_
                                           (lambda (_e12824_ _vars12825_)
                                             (let ((_e1282612833_ _e12824_))
                                               (let ((_E1282812837_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _e1282612833_))))
                                                 (let ((_K1282912846_
                                                        (lambda (_body12840_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tag12841_)
                  (let ((_$e12843_ _tag12841_))
                    (if (eq? _$e12843_ 'var)
                        (cons _body12840_ _vars12825_)
                        (if (memq _$e12843_ '(cons splice))
                            (_recur12822_
                             (cdr _body12840_)
                             (_recur12822_ (car _body12840_) _vars12825_))
                            (if (memq _$e12843_ '(vector box))
                                (_recur12822_ _body12840_ _vars12825_)
                                _vars12825_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##pair? _e1282612833_)
                                                       (let ((_hd1283012849_
                                                              (##car _e1282612833_))
                                                             (_tl1283112851_
                                                              (##cdr _e1282612833_)))
                                                         (let ((_tag12854_
                                                                _hd1283012849_))
                                                           (let ((_body12856_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1283112851_))
                     (_K1282912846_ _body12856_ _tag12854_))))
               (_E1282812837_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _recur12822_)
                                 _e12820_
                                 '()))))
                         (let ((_make-body12814_
                                (lambda (_vars12816_)
                                  (cons _K12807_
                                        (map (lambda (_mvar12818_)
                                               (assgetq (car _mvar12818_)
                                                        _vars12816_
                                                        _BUG12810_))
                                             _mvars12806_)))))
                           (letrec ((_recur12811_
                                     (lambda (_e12896_
                                              _vars12897_
                                              _target12898_
                                              _E12899_
                                              _k12900_)
                                       (let ((_e1290112908_ _e12896_))
                                         (let ((_E1290312912_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _e1290112908_))))
                                           (let ((_K1290413030_
                                                  (lambda (_body12915_
                                                           _tag12916_)
                                                    (let ((_$e12918_
                                                           _tag12916_))
                                                      (if (eq? _$e12918_ 'any)
                                                          (_k12900_
                                                           _vars12897_)
                                                          (if (eq? _$e12918_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'id)
                      (gx#core-list
                       'if
                       (gx#core-list 'identifier? _target12898_)
                       (gx#core-list
                        'if
                        (gx#core-list
                         _identifier=?12632_
                         (gx#core-list _wrap-e12634_ _body12915_)
                         _target12898_)
                        (_k12900_ _vars12897_)
                        _E12899_)
                       _E12899_)
                      (if (eq? _$e12918_ 'var)
                          (_k12900_
                           (cons (cons _body12915_ _target12898_) _vars12897_))
                          (if (eq? _$e12918_ 'cons)
                              (let ((_$e12921_ (gx#genident__1 'e))
                                    (_$hd12922_ (gx#genident__1 'hd))
                                    (_$tl12923_ (gx#genident__1 'tl)))
                                (gx#core-list
                                 'if
                                 (gx#core-list 'stx-pair? _target12898_)
                                 (gx#core-list
                                  'let-values
                                  (cons (cons (cons _$e12921_ '())
                                              (cons (gx#core-list
                                                     _unwrap-e12633_
                                                     _target12898_)
                                                    '()))
                                        '())
                                  (gx#core-list
                                   'let-values
                                   (cons (cons (cons _$hd12922_ '())
                                               (cons (gx#core-list
                                                      '##car
                                                      _$e12921_)
                                                     '()))
                                         (cons (cons (cons _$tl12923_ '())
                                                     (cons (gx#core-list
                                                            '##cdr
                                                            _$e12921_)
                                                           '()))
                                               '()))
                                   (let ((_body1292412931_ _body12915_))
                                     (let ((_E1292612935_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _body1292412931_))))
                                       (let ((_K1292712943_
                                              (lambda (_tl12938_ _hd12939_)
                                                (_recur12811_
                                                 _hd12939_
                                                 _vars12897_
                                                 _$hd12922_
                                                 _E12899_
                                                 (lambda (_vars12941_)
                                                   (_recur12811_
                                                    _tl12938_
                                                    _vars12941_
                                                    _$tl12923_
                                                    _E12899_
                                                    _k12900_))))))
                                         (if (##pair? _body1292412931_)
                                             (let ((_hd1292812946_
                                                    (##car _body1292412931_))
                                                   (_tl1292912948_
                                                    (##cdr _body1292412931_)))
                                               (let ((_hd12951_
                                                      _hd1292812946_))
                                                 (let ((_tl12953_
                                                        _tl1292912948_))
                                                   (_K1292712943_
                                                    _tl12953_
                                                    _hd12951_))))
                                             (_E1292612935_)))))))
                                 _E12899_))
                              (if (eq? _$e12918_ 'splice)
                                  (let ((_body1295412961_ _body12915_))
                                    (let ((_E1295612965_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _body1295412961_))))
                                      (let ((_K1295713014_
                                             (lambda (_tl12968_ _hd12969_)
                                               (let ((_rlen12971_
                                                      (_splice-rlen12812_
                                                       _tl12968_)))
                                                 (let ((_$target12973_
                                                        (gx#genident__1
                                                         'target)))
                                                   (let ((_$hd12975_
                                                          (gx#genident__1
                                                           'hd)))
                                                     (let ((_$tl12977_
                                                            (gx#genident__1
                                                             'tl)))
                                                       (let ((_$lp12979_
                                                              (gx#genident__1
                                                               'loop)))
                                                         (let ((_$lp-e12981_
                                                                (gx#genident__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'e)))
                   (let ((_$lp-hd12983_ (gx#genident__1 'lp-hd)))
                     (let ((_$lp-tl12985_ (gx#genident__1 'lp-tl)))
                       (let ((_svars12987_ (_splice-vars12813_ _hd12969_)))
                         (let ((_lvars12989_ (gx#gentemps _svars12987_)))
                           (let ((_tlvars12991_ (gx#gentemps _svars12987_)))
                             (let ((_linit12995_
                                    (map (lambda (_var12993_)
                                           (gx#core-list 'quote '()))
                                         _lvars12989_)))
                               (let ()
                                 (let ((_make-loop12998_
                                        (lambda (_vars13000_)
                                          (gx#core-list
                                           'letrec-values
                                           (cons (cons (cons _$lp12979_ '())
                                                       (cons (gx#core-list
                                                              'lambda%
                                                              (cons _$hd12975_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _lvars12989_)
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _$hd12975_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$lp-e12981_ '())
                                    (cons (gx#core-list
                                           _unwrap-e12633_
                                           _$hd12975_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$lp-hd12983_ '())
                                     (cons (gx#core-list '##car _$lp-e12981_)
                                           '()))
                               (cons (cons (cons _$lp-tl12985_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$lp-e12981_)
                                                 '()))
                                     '()))
                         (_recur12811_
                          _hd12969_
                          '()
                          _$lp-hd12983_
                          _E12899_
                          (lambda (_hdvars13002_)
                            (cons* _$lp12979_
                                   _$lp-tl12985_
                                   (map (lambda (_svar13004_ _lvar13005_)
                                          (gx#core-list
                                           'cons
                                           (assgetq _svar13004_
                                                    _hdvars13002_
                                                    _BUG12810_)
                                           _lvar13005_))
                                        _svars12987_
                                        _lvars12989_))))))
                       (gx#core-list
                        'let-values
                        (map (lambda (_lvar13007_ _tlvar13008_)
                               (cons (cons _tlvar13008_ '())
                                     (cons (gx#core-list 'reverse _lvar13007_)
                                           '())))
                             _lvars12989_
                             _tlvars12991_)
                        (_k12900_
                         (foldl (lambda (_svar13010_ _tlvar13011_ _r13012_)
                                  (cons (cons _svar13010_ _tlvar13011_)
                                        _r13012_))
                                _vars13000_
                                _svars12987_
                                _tlvars12991_)))))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons* _$lp12979_
                                                  _$target12973_
                                                  _linit12995_)))))
                                   (gx#core-list
                                    'if
                                    (gx#core-list
                                     'stx-pair/null?
                                     _target12898_)
                                    (gx#core-list
                                     'if
                                     (gx#core-list
                                      'fx>=
                                      (gx#core-list 'stx-length _target12898_)
                                      _rlen12971_)
                                     (gx#core-list
                                      'let-values
                                      (cons (cons (cons _$target12973_
                                                        (cons _$tl12977_ '()))
                                                  (cons (gx#core-list
                                                         'syntax-split-splice
                                                         _target12898_
                                                         _rlen12971_)
                                                        '()))
                                            '())
                                      (_recur12811_
                                       _tl12968_
                                       _vars12897_
                                       _$tl12977_
                                       _E12899_
                                       _make-loop12998_))
                                     _E12899_)
                                    _E12899_))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _body1295412961_)
                                            (let ((_hd1295813017_
                                                   (##car _body1295412961_))
                                                  (_tl1295913019_
                                                   (##cdr _body1295412961_)))
                                              (let ((_hd13022_ _hd1295813017_))
                                                (let ((_tl13024_
                                                       _tl1295913019_))
                                                  (_K1295713014_
                                                   _tl13024_
                                                   _hd13022_))))
                                            (_E1295612965_)))))
                                  (if (eq? _$e12918_ 'null)
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-null? _target12898_)
                                       (_k12900_ _vars12897_)
                                       _E12899_)
                                      (if (eq? _$e12918_ 'vector)
                                          (let ((_$e13026_
                                                 (gx#genident__1 'e)))
                                            (gx#core-list
                                             'if
                                             (gx#core-list
                                              'stx-vector?
                                              _target12898_)
                                             (gx#core-list
                                              'let-values
                                              (cons (cons (cons _$e13026_ '())
                                                          (cons (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'vector->list
                         (gx#core-list _unwrap-e12633_ _target12898_))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (_recur12811_
                                               _body12915_
                                               _vars12897_
                                               _$e13026_
                                               _E12899_
                                               _k12900_))
                                             _E12899_))
                                          (if (eq? _$e12918_ 'box)
                                              (let ((_$e13028_
                                                     (gx#genident__1 'e)))
                                                (gx#core-list
                                                 'if
                                                 (gx#core-list
                                                  'stx-box?
                                                  _target12898_)
                                                 (gx#core-list
                                                  'let-values
                                                  (cons (cons (cons _$e13028_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (gx#core-list
                             'unbox
                             (gx#core-list _unwrap-e12633_ _target12898_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur12811_
                                                   _body12915_
                                                   _vars12897_
                                                   _$e13028_
                                                   _E12899_
                                                   _k12900_))
                                                 _E12899_))
                                              (if (eq? _$e12918_ 'datum)
                                                  (gx#core-list
                                                   'if
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target12898_)
                                                   (gx#core-list
                                                    'if
                                                    (gx#core-list
                                                     'equal?
                                                     (gx#core-list
                                                      'stx-e
                                                      _target12898_)
                                                     _body12915_)
                                                    (_k12900_ _vars12897_)
                                                    _E12899_)
                                                   _E12899_)
                                                  (_BUG12810_
                                                   _e12896_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _e1290112908_)
                                                 (let ((_hd1290513033_
                                                        (##car _e1290112908_))
                                                       (_tl1290613035_
                                                        (##cdr _e1290112908_)))
                                                   (let ((_tag13038_
                                                          _hd1290513033_))
                                                     (let ((_body13040_
                                                            _tl1290613035_))
                                                       (_K1290413030_
                                                        _body13040_
                                                        _tag13038_))))
                                                 (_E1290312912_))))))))
                             (_recur12811_
                              _hd12805_
                              '()
                              _target12804_
                              _E12808_
                              _make-body12814_)))))))))
            (let ((_parse-clause12640_
                   (lambda (_hd12709_ _ids12710_)
                     ((letrec ((_recur12712_
                                (lambda (_e12714_ _vars12715_ _depth12716_)
                                  (if (gx#identifier? _e12714_)
                                      (if (gx#underscore? _e12714_)
                                          (values '(any) _vars12715_)
                                          (if (gx#ellipsis? _e12714_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Misplaced ellipsis"
                                               _stx12631_
                                               _hd12709_)
                                              (if (find (lambda (_id12718_)
                                                          (gx#bound-identifier=?
                                                           _e12714_
                                                           _id12718_))
                                                        _ids12710_)
                                                  (values (cons 'id _e12714_)
                                                          _vars12715_)
                                                  (if (find (lambda (_var12720_)
                                                              (gx#bound-identifier=?
                                                               _e12714_
                                                               (car _var12720_)))
                                                            _vars12715_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Duplicate pattern variable"
                                                       _stx12631_
                                                       _e12714_)
                                                      (values (cons 'var
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _e12714_)
                      (cons (cons _e12714_ _depth12716_) _vars12715_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _e12714_)
                                          (let ((_e1272112728_ _e12714_))
                                            (let ((_E1272312732_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _e1272112728_))))
                                              (let ((_E1272212793_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e1272112728_)
                                                           (let ((_e1272412736_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e1272112728_)))
                     (let ((_hd1272512739_ (##car _e1272412736_))
                           (_tl1272612741_ (##cdr _e1272412736_)))
                       (let ((_hd12744_ _hd1272512739_))
                         (let ((_rest12746_ _tl1272612741_))
                           (if '#t
                               (let ((_make-pair12761_
                                      (lambda (_tag12748_ _hd12749_ _tl12750_)
                                        (let ((_hd-depth12752_
                                               (if (eq? _tag12748_ 'splice)
                                                   (fx+ _depth12716_ '1)
                                                   _depth12716_)))
                                          (let ((_g13771_
                                                 (_recur12712_
                                                  _hd12749_
                                                  _vars12715_
                                                  _hd-depth12752_)))
                                            (begin
                                              (let ((_g13772_
                                                     (values-count _g13771_)))
                                                (if (not (fx= _g13772_ 2))
                                                    (error "Context expects 2 values"
                                                           _g13772_)))
                                              (let ((_hd12754_
                                                     (values-ref _g13771_ 0))
                                                    (_vars12755_
                                                     (values-ref _g13771_ 1)))
                                                (let ((_g13773_
                                                       (_recur12712_
                                                        _tl12750_
                                                        _vars12755_
                                                        _depth12716_)))
                                                  (begin
                                                    (let ((_g13774_
                                                           (values-count
                                                            _g13773_)))
                                                      (if (not (fx= _g13774_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g13774_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_tl12757_
                                                           (values-ref
                                                            _g13773_
                                                            0))
                                                          (_vars12758_
                                                           (values-ref
                                                            _g13773_
                                                            1)))
                                                      (let ()
                                                        (values (cons* _tag12748_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd12754_
                               _tl12757_)
                        _vars12758_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (let ((_e1276212769_ _rest12746_))
                                   (let ((_E1276412773_
                                          (lambda ()
                                            (_make-pair12761_
                                             'cons
                                             _hd12744_
                                             _rest12746_))))
                                     (let ((_E1276312789_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1276212769_)
                                                  (let ((_e1276512777_
                                                         (gx#syntax-e
                                                          _e1276212769_)))
                                                    (let ((_hd1276612780_
                                                           (##car _e1276512777_))
                                                          (_tl1276712782_
                                                           (##cdr _e1276512777_)))
                                                      (let ((_rest-hd12785_
                                                             _hd1276612780_))
                                                        (let ((_rest-tl12787_
                                                               _tl1276712782_))
                                                          (if '#t
                                                              (if (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest-hd12785_)
                          (_make-pair12761_ 'splice _hd12744_ _rest-tl12787_)
                          (_make-pair12761_ 'cons _hd12744_ _rest12746_))
                      (_E1276412773_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1276412773_)))))
                                       (let () (_E1276312789_))))))
                               (_E1272312732_))))))
                   (_E1272312732_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E1272212793_)))))
                                          (if (gx#stx-null? _e12714_)
                                              (values '(null) _vars12715_)
                                              (if (gx#stx-vector? _e12714_)
                                                  (let ((_g13775_
                                                         (_recur12712_
                                                          (vector->list
                                                           (gx#syntax-e
                                                            _e12714_))
                                                          _vars12715_
                                                          _depth12716_)))
                                                    (begin
                                                      (let ((_g13776_
                                                             (values-count
                                                              _g13775_)))
                                                        (if (not (fx= _g13776_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g13776_)))
              (let ((_e12797_ (values-ref _g13775_ 0))
                    (_vars12798_ (values-ref _g13775_ 1)))
                (values (cons 'vector _e12797_) _vars12798_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e12714_)
                                                      (let ((_g13777_
                                                             (_recur12712_
                                                              (unbox (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e12714_))
                      _vars12715_
                      _depth12716_)))
                (begin
                  (let ((_g13778_ (values-count _g13777_)))
                    (if (not (fx= _g13778_ 2))
                        (error "Context expects 2 values" _g13778_)))
                  (let ((_e12800_ (values-ref _g13777_ 0))
                        (_vars12801_ (values-ref _g13777_ 1)))
                    (values (cons 'box _e12800_) _vars12801_))))
              (if (gx#stx-datum? _e12714_)
                  (values (cons 'datum (gx#stx-e _e12714_)) _vars12715_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad pattern"
                   _stx12631_
                   _e12714_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        _recur12712_)
                      _hd12709_
                      '()
                      '0))))
              (let ((_generate-clause12638_
                     (lambda (_target13044_ _ids13045_ _clause13046_ _E13047_)
                       (let ((_generate113049_
                              (lambda (_hd13136_ _fender13137_ _body13138_)
                                (let ((_g13769_
                                       (_parse-clause12640_
                                        _hd13136_
                                        _ids13045_)))
                                  (begin
                                    (let ((_g13770_ (values-count _g13769_)))
                                      (if (not (fx= _g13770_ 2))
                                          (error "Context expects 2 values"
                                                 _g13770_)))
                                    (let ((_e13140_ (values-ref _g13769_ 0))
                                          (_mvars13141_
                                           (values-ref _g13769_ 1)))
                                      (let ((_pvars13143_
                                             (map gx#syntax-local-rewrap
                                                  (gx#gentemps _mvars13141_))))
                                        (let ((_E13145_
                                               (cons _E13047_
                                                     (cons _target13044_
                                                           '()))))
                                          (let ((_K13178_
                                                 (gx#core-list
                                                  'lambda%
                                                  _pvars13143_
                                                  (gx#core-list
                                                   'let-syntax
                                                   (map (lambda (_mvar13147_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pvar13148_)
                  (let ((_mvar1314913156_ _mvar13147_))
                    (let ((_E1315113160_
                           (lambda ()
                             (error '"No clause matching" _mvar1314913156_))))
                      (let ((_K1315213166_
                             (lambda (_depth13163_ _id13164_)
                               (cons _id13164_
                                     (cons (gx#core-list
                                            'make-syntax-pattern
                                            (gx#core-list 'quote _id13164_)
                                            (gx#core-list 'quote _pvar13148_)
                                            _depth13163_)
                                           '())))))
                        (if (##pair? _mvar1314913156_)
                            (let ((_hd1315313169_ (##car _mvar1314913156_))
                                  (_tl1315413171_ (##cdr _mvar1314913156_)))
                              (let ((_id13174_ _hd1315313169_))
                                (let ((_depth13176_ _tl1315413171_))
                                  (_K1315213166_ _depth13176_ _id13174_))))
                            (_E1315113160_))))))
                _mvars13141_
                _pvars13143_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (eq? _fender13137_ '#t)
                                                       _body13138_
                                                       (gx#core-list
                                                        'if
                                                        _fender13137_
                                                        _body13138_
                                                        _E13145_))))))
                                            (let ()
                                              (_generate-match12639_
                                               _hd13136_
                                               _target13044_
                                               _e13140_
                                               _mvars13141_
                                               _K13178_
                                               _E13145_)))))))))))
                         (let ((_e1305013070_ _clause13046_))
                           (let ((_E1305913074_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _e1305013070_))))
                             (let ((_E1305213108_
                                    (lambda ()
                                      (if (gx#stx-pair? _e1305013070_)
                                          (let ((_e1306013078_
                                                 (gx#syntax-e _e1305013070_)))
                                            (let ((_hd1306113081_
                                                   (##car _e1306013078_))
                                                  (_tl1306213083_
                                                   (##cdr _e1306013078_)))
                                              (let ((_hd13086_ _hd1306113081_))
                                                (if (gx#stx-pair?
                                                     _tl1306213083_)
                                                    (let ((_e1306313088_
                                                           (gx#syntax-e
                                                            _tl1306213083_)))
                                                      (let ((_hd1306413091_
                                                             (##car _e1306313088_))
                                                            (_tl1306513093_
                                                             (##cdr _e1306313088_)))
                                                        (let ((_fender13096_
                                                               _hd1306413091_))
                                                          (if (gx#stx-pair?
                                                               _tl1306513093_)
                                                              (let ((_e1306613098_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1306513093_)))
                        (let ((_hd1306713101_ (##car _e1306613098_))
                              (_tl1306813103_ (##cdr _e1306613098_)))
                          (let ((_body13106_ _hd1306713101_))
                            (if (gx#stx-null? _tl1306813103_)
                                (if '#t
                                    (_generate113049_
                                     _hd13086_
                                     _fender13096_
                                     _body13106_)
                                    (_E1305913074_))
                                (_E1305913074_)))))
                      (_E1305913074_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1305913074_)))))
                                          (_E1305913074_)))))
                               (let ((_E1305113132_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1305013070_)
                                            (let ((_e1305313112_
                                                   (gx#syntax-e
                                                    _e1305013070_)))
                                              (let ((_hd1305413115_
                                                     (##car _e1305313112_))
                                                    (_tl1305513117_
                                                     (##cdr _e1305313112_)))
                                                (let ((_hd13120_
                                                       _hd1305413115_))
                                                  (if (gx#stx-pair?
                                                       _tl1305513117_)
                                                      (let ((_e1305613122_
                                                             (gx#syntax-e
                                                              _tl1305513117_)))
                                                        (let ((_hd1305713125_
                                                               (##car _e1305613122_))
                                                              (_tl1305813127_
                                                               (##cdr _e1305613122_)))
                                                          (let ((_body13130_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1305713125_))
                    (if (gx#stx-null? _tl1305813127_)
                        (if '#t
                            (_generate113049_ _hd13120_ '#t _body13130_)
                            (_E1305213108_))
                        (_E1305213108_)))))
              (_E1305213108_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1305213108_)))))
                                 (let () (_E1305113132_))))))))))
                (let ((_generate-bindings12636_
                       (lambda (_target13221_
                                _ids13222_
                                _clauses13223_
                                _clause-ids13224_
                                _E13225_)
                         (let ((_generate113227_
                                (lambda (_clause13326_
                                         _clause-id13327_
                                         _E13328_)
                                  (cons (cons _clause-id13327_ '())
                                        (cons (gx#core-list
                                               'lambda%
                                               (cons _target13221_ '())
                                               (_generate-clause12638_
                                                _target13221_
                                                _ids13222_
                                                _clause13326_
                                                _E13328_))
                                              '())))))
                           ((letrec ((_lp13229_
                                      (lambda (_rest13231_
                                               _rest-ids13232_
                                               _bindings13233_)
                                        (let ((_rest1323413242_ _rest13231_))
                                          (let ((_E1323713246_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _rest1323413242_))))
                                            (let ((_else1323613250_
                                                   (lambda ()
                                                     _bindings13233_)))
                                              (let ((_K1323813314_
                                                     (lambda (_rest13253_
                                                              _clause13254_)
                                                       (let ((_rest-ids1325513262_
                                                              _rest-ids13232_))
                                                         (let ((_E1325713266_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (error '"No clause matching" _rest-ids1325513262_))))
                   (let ((_K1325813302_
                          (lambda (_rest-ids13269_ _clause-id13270_)
                            (let ((_rest-ids1327113279_ _rest-ids13269_))
                              (let ((_E1327413283_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _rest-ids1327113279_))))
                                (let ((_else1327313287_
                                       (lambda ()
                                         (cons (_generate113227_
                                                _clause13254_
                                                _clause-id13270_
                                                _E13225_)
                                               _bindings13233_))))
                                  (let ((_K1327513292_
                                         (lambda (_next-clause-id13290_)
                                           (_lp13229_
                                            _rest13253_
                                            _rest-ids13269_
                                            (cons (_generate113227_
                                                   _clause13254_
                                                   _clause-id13270_
                                                   _next-clause-id13290_)
                                                  _bindings13233_)))))
                                    (if (##pair? _rest-ids1327113279_)
                                        (let ((_hd1327613295_
                                               (##car _rest-ids1327113279_))
                                              (_tl1327713297_
                                               (##cdr _rest-ids1327113279_)))
                                          (let ((_next-clause-id13300_
                                                 _hd1327613295_))
                                            (_K1327513292_
                                             _next-clause-id13300_)))
                                        (_else1327313287_)))))))))
                     (if (##pair? _rest-ids1325513262_)
                         (let ((_hd1325913305_ (##car _rest-ids1325513262_))
                               (_tl1326013307_ (##cdr _rest-ids1325513262_)))
                           (let ((_clause-id13310_ _hd1325913305_))
                             (let ((_rest-ids13312_ _tl1326013307_))
                               (_K1325813302_
                                _rest-ids13312_
                                _clause-id13310_))))
                         (_E1325713266_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (##pair? _rest1323413242_)
                                                    (let ((_hd1323913317_
                                                           (##car _rest1323413242_))
                                                          (_tl1324013319_
                                                           (##cdr _rest1323413242_)))
                                                      (let ((_clause13322_
                                                             _hd1323913317_))
                                                        (let ((_rest13324_
                                                               _tl1324013319_))
                                                          (_K1323813314_
                                                           _rest13324_
                                                           _clause13322_))))
                                                    (_else1323613250_)))))))))
                              _lp13229_)
                            _clauses13223_
                            _clause-ids13224_
                            '())))))
                  (let ((_e1264112654_ _stx12631_))
                    (let ((_E1264312658_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e1264112654_))))
                      (let ((_E1264212705_
                             (lambda ()
                               (if (gx#stx-pair? _e1264112654_)
                                   (let ((_e1264412662_
                                          (gx#syntax-e _e1264112654_)))
                                     (let ((_hd1264512665_
                                            (##car _e1264412662_))
                                           (_tl1264612667_
                                            (##cdr _e1264412662_)))
                                       (if (gx#stx-pair? _tl1264612667_)
                                           (let ((_e1264712670_
                                                  (gx#syntax-e
                                                   _tl1264612667_)))
                                             (let ((_hd1264812673_
                                                    (##car _e1264712670_))
                                                   (_tl1264912675_
                                                    (##cdr _e1264712670_)))
                                               (let ((_expr12678_
                                                      _hd1264812673_))
                                                 (if (gx#stx-pair?
                                                      _tl1264912675_)
                                                     (let ((_e1265012680_
                                                            (gx#syntax-e
                                                             _tl1264912675_)))
                                                       (let ((_hd1265112683_
                                                              (##car _e1265012680_))
                                                             (_tl1265212685_
                                                              (##cdr _e1265012680_)))
                                                         (let ((_ids12688_
                                                                _hd1265112683_))
                                                           (let ((_clauses12690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1265212685_))
                     (if '#t
                         (if (not (gx#identifier-list? _ids12688_))
                             (gx#raise-syntax-error
                              '#f
                              '"Bad template identifier list"
                              _stx12631_
                              _ids12688_)
                             (if (not (gx#stx-list? _clauses12690_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _stx12631_)
                                 (let ((_ids12692_
                                        (gx#syntax->list _ids12688_)))
                                   (let ((_clauses12694_
                                          (gx#syntax->list _clauses12690_)))
                                     (let ((_clause-ids12696_
                                            (gx#gentemps _clauses12694_)))
                                       (let ((_E12698_ (gx#genident__0)))
                                         (let ((_target12700_
                                                (gx#genident__0)))
                                           (let ((_first12702_
                                                  (if (null? _clauses12694_)
                                                      _E12698_
                                                      (car _clause-ids12696_))))
                                             (let ()
                                               (gx#stx-wrap-source
                                                (gx#core-list
                                                 'let-values
                                                 (cons (cons (cons _E12698_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _target12700_ '())
                            (gx#core-list
                             'raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _target12700_))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_generate-body12637_
                                                  (_generate-bindings12636_
                                                   _target12700_
                                                   _ids12692_
                                                   _clauses12694_
                                                   _clause-ids12696_
                                                   _E12698_)
                                                  (cons _first12702_
                                                        (cons _expr12678_
                                                              '()))))
                                                (gx#stx-source
                                                 _stx12631_)))))))))))
                         (_E1264312658_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1264312658_)))))
                                           (_E1264312658_))))
                                   (_E1264312658_)))))
                        (let () (_E1264212705_))))))))))))
    (begin
      (define gx#macro-expand-syntax-case__0
        (lambda (_stx13333_)
          (let ((_identifier=?13335_ 'free-identifier=?))
            (let ((_unwrap-e13337_ 'syntax-e))
              (let ((_wrap-e13339_ 'quote-syntax))
                (gx#macro-expand-syntax-case__opt-lambda12629
                 _stx13333_
                 _identifier=?13335_
                 _unwrap-e13337_
                 _wrap-e13339_))))))
      (define gx#macro-expand-syntax-case__1
        (lambda (_stx13341_ _identifier=?13342_)
          (let ((_unwrap-e13344_ 'syntax-e))
            (let ((_wrap-e13346_ 'quote-syntax))
              (gx#macro-expand-syntax-case__opt-lambda12629
               _stx13341_
               _identifier=?13342_
               _unwrap-e13344_
               _wrap-e13346_)))))
      (define gx#macro-expand-syntax-case__2
        (lambda (_stx13348_ _identifier=?13349_ _unwrap-e13350_)
          (let ((_wrap-e13352_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda12629
             _stx13348_
             _identifier=?13349_
             _unwrap-e13350_
             _wrap-e13352_))))
      (define gx#macro-expand-syntax-case
        (lambda _g13780_
          (let ((_g13779_ (length _g13780_)))
            (cond ((fx= _g13779_ 1)
                   (apply gx#macro-expand-syntax-case__0 _g13780_))
                  ((fx= _g13779_ 2)
                   (apply gx#macro-expand-syntax-case__1 _g13780_))
                  ((fx= _g13779_ 3)
                   (apply gx#macro-expand-syntax-case__2 _g13780_))
                  ((fx= _g13779_ 4)
                   (apply gx#macro-expand-syntax-case__opt-lambda12629
                          _g13780_))
                  (else (error "No clause matching arguments" _g13780_))))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx12628_)
      (if (gx#identifier? _stx12628_)
          (##structure-instance-of?
           (gx#syntax-local-e__opt-lambda3819 _stx12628_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd12586_ . _rest12587_)
      (let ((_len12589_ (length _hd12586_)))
        ((letrec ((_lp12591_
                   (lambda (_rest12593_)
                     (let ((_rest1259412602_ _rest12593_))
                       (let ((_E1259712606_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1259412602_))))
                         (let ((_else1259612610_ (lambda () '#!void)))
                           (let ((_K1259812616_
                                  (lambda (_rest12613_ _hd12614_)
                                    (if (fx= _len12589_ (length _hd12614_))
                                        (_lp12591_ _rest12613_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Splice length mismatch"
                                         _hd12614_)))))
                             (if (##pair? _rest1259412602_)
                                 (let ((_hd1259912619_
                                        (##car _rest1259412602_))
                                       (_tl1260012621_
                                        (##cdr _rest1259412602_)))
                                   (let ((_hd12624_ _hd1259912619_))
                                     (let ((_rest12626_ _tl1260012621_))
                                       (_K1259812616_ _rest12626_ _hd12624_))))
                                 (_else1259612610_)))))))))
           _lp12591_)
         _rest12587_))))
  (define gx#syntax-split-splice
    (lambda (_stx12544_ _n12545_)
      ((letrec ((_lp12547_
                 (lambda (_rest12549_ _r12550_)
                   (if (gx#stx-pair? _rest12549_)
                       (let ((_g1255112558_ (gx#syntax-e _rest12549_)))
                         (let ((_E1255312562_
                                (lambda ()
                                  (error '"No clause matching"
                                         _g1255112558_))))
                           (let ((_K1255412568_
                                  (lambda (_rest12565_ _hd12566_)
                                    (_lp12547_
                                     _rest12565_
                                     (cons _hd12566_ _r12550_)))))
                             (if (##pair? _g1255112558_)
                                 (let ((_hd1255512571_ (##car _g1255112558_))
                                       (_tl1255612573_ (##cdr _g1255112558_)))
                                   (let ((_hd12576_ _hd1255512571_))
                                     (let ((_rest12578_ _tl1255612573_))
                                       (_K1255412568_ _rest12578_ _hd12576_))))
                                 (_E1255312562_)))))
                       ((letrec ((_lp12580_
                                  (lambda (_n12582_ _l12583_ _r12584_)
                                    (if (null? _l12583_)
                                        (values _l12583_ _r12584_)
                                        (if (fxpositive? _n12582_)
                                            (_lp12580_
                                             (fx- _n12582_ '1)
                                             (cdr _l12583_)
                                             (cons (car _l12583_) _r12584_))
                                            (values (reverse _l12583_)
                                                    _r12584_))))))
                          _lp12580_)
                        _n12545_
                        _r12550_
                        _rest12549_)))))
         _lp12547_)
       _stx12544_
       '()))))
