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
    (lambda _$args13406_
      (apply make-struct-instance gx#syntax-pattern::t _$args13406_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self13403_ _stx13404_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx13404_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx13012_)
      (let ((_generate13014_
             (lambda (_e13241_)
               (let ((_BUG13243_
                      (lambda (_q13401_)
                        (error '"BUG: syntax; generate"
                               _stx13012_
                               _e13241_
                               _q13401_))))
                 (let ((_local-pattern-e13244_
                        (lambda (_pat13399_)
                          (gx#syntax-local-rewrap
                           (##structure-ref
                            _pat13399_
                            '2
                            gx#syntax-pattern::t
                            '#f)))))
                   (let ((_getvar13245_
                          (lambda (_q13396_ _vars13397_)
                            (assgetq _q13396_ _vars13397_ _BUG13243_))))
                     (let ((_getarg13246_
                            (lambda (_arg13362_ _vars13363_)
                              (let ((_arg1336413371_ _arg13362_))
                                (let ((_E1336613375_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _arg1336413371_))))
                                  (let ((_K1336713384_
                                         (lambda (_e13378_ _tag13379_)
                                           (let ((_$e13381_ _tag13379_))
                                             (if (eq? _$e13381_ 'ref)
                                                 (_getvar13245_
                                                  _e13378_
                                                  _vars13363_)
                                                 (if (eq? _$e13381_ 'pattern)
                                                     (_local-pattern-e13244_
                                                      _e13378_)
                                                     (_BUG13243_
                                                      _arg13362_)))))))
                                    (if (##pair? _arg1336413371_)
                                        (let ((_hd1336813387_
                                               (##car _arg1336413371_))
                                              (_tl1336913389_
                                               (##cdr _arg1336413371_)))
                                          (let ((_tag13392_ _hd1336813387_))
                                            (let ((_e13394_ _tl1336913389_))
                                              (_K1336713384_
                                               _e13394_
                                               _tag13392_))))
                                        (_E1336613375_))))))))
                       ((letrec ((_recur13248_
                                  (lambda (_e13250_ _vars13251_)
                                    (let ((_e1325213259_ _e13250_))
                                      (let ((_E1325413263_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _e1325213259_))))
                                        (let ((_K1325513350_
                                               (lambda (_body13266_ _tag13267_)
                                                 (let ((_$e13269_ _tag13267_))
                                                   (if (eq? _$e13269_ 'datum)
                                                       (gx#core-list
                                                        'quote
                                                        _body13266_)
                                                       (if (eq? _$e13269_
                                                                'term)
                                                           (gx#core-list
                                                            'datum->syntax
                                                            '#f
                                                            (gx#core-list
                                                             'quote
                                                             _body13266_))
                                                           (if (eq? _$e13269_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'pattern)
                       (_local-pattern-e13244_ _body13266_)
                       (if (eq? _$e13269_ 'ref)
                           (_getvar13245_ _body13266_ _vars13251_)
                           (if (eq? _$e13269_ 'cons)
                               (gx#core-list
                                'cons
                                (_recur13248_ (car _body13266_) _vars13251_)
                                (_recur13248_ (cdr _body13266_) _vars13251_))
                               (if (eq? _$e13269_ 'vector)
                                   (gx#core-list
                                    'list->vector
                                    (_recur13248_ _body13266_ _vars13251_))
                                   (if (eq? _$e13269_ 'box)
                                       (gx#core-list
                                        'box
                                        (_recur13248_ _body13266_ _vars13251_))
                                       (if (eq? _$e13269_ 'splice)
                                           (let ((_body1327113282_
                                                  _body13266_))
                                             (let ((_E1327313286_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _body1327113282_))))
                                               (let ((_K1327413324_
                                                      (lambda (_args13289_
                                                               _iv13290_
                                                               _hd13291_
                                                               _depth13292_)
                                                        (let ((_targets13298_
                                                               (map (lambda (_g1329313295_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_getarg13246_ _g1329313295_ _vars13251_))
                            _args13289_)))
                  (let ((_fold-in13300_ (gx#gentemps _args13289_)))
                    (let ((_fold-out13302_ (gx#genident__0)))
                      (let ((_lambda-args13304_
                             (foldr cons
                                    (cons _fold-out13302_ '())
                                    _fold-in13300_)))
                        (let ((_lambda-body13321_
                               (if (fx> _depth13292_ '1)
                                   (let ((_r-args13312_
                                          (map (lambda (_arg13306_)
                                                 (cons 'ref (cdr _arg13306_)))
                                               _args13289_))
                                         (_r-vars13313_
                                          (foldr (lambda (_arg13308_
                                                          _var13309_
                                                          _r13310_)
                                                   (cons (cons (cdr _arg13308_)
                                                               _var13309_)
                                                         _r13310_))
                                                 _vars13251_
                                                 _args13289_
                                                 _fold-in13300_)))
                                     (_recur13248_
                                      (cons* 'splice
                                             (fx- _depth13292_ '1)
                                             _hd13291_
                                             (cons 'var _fold-out13302_)
                                             _r-args13312_)
                                      _r-vars13313_))
                                   (let ((_hd-vars13319_
                                          (foldr (lambda (_arg13315_
                                                          _var13316_
                                                          _r13317_)
                                                   (cons (cons (cdr _arg13315_)
                                                               _var13316_)
                                                         _r13317_))
                                                 _vars13251_
                                                 _args13289_
                                                 _fold-in13300_)))
                                     (gx#core-list
                                      'cons
                                      (_recur13248_ _hd13291_ _hd-vars13319_)
                                      _fold-out13302_)))))
                          (let ()
                            (gx#core-list
                             'begin
                             (if (fx> (length _targets13298_) '1)
                                 (gx#core-cons*
                                  'syntax-check-splice-targets
                                  _targets13298_)
                                 '#!void)
                             (gx#core-cons*
                              'foldr
                              (gx#core-list
                               'lambda%
                               _lambda-args13304_
                               _lambda-body13321_)
                              (_recur13248_ _iv13290_ _vars13251_)
                              _targets13298_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _body1327113282_)
                                                     (let ((_hd1327513327_
                                                            (##car _body1327113282_))
                                                           (_tl1327613329_
                                                            (##cdr _body1327113282_)))
                                                       (let ((_depth13332_
                                                              _hd1327513327_))
                                                         (if (##pair? _tl1327613329_)
                                                             (let ((_hd1327713334_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##car _tl1327613329_))
                           (_tl1327813336_ (##cdr _tl1327613329_)))
                       (let ((_hd13339_ _hd1327713334_))
                         (if (##pair? _tl1327813336_)
                             (let ((_hd1327913341_ (##car _tl1327813336_))
                                   (_tl1328013343_ (##cdr _tl1327813336_)))
                               (let ((_iv13346_ _hd1327913341_))
                                 (let ((_args13348_ _tl1328013343_))
                                   (_K1327413324_
                                    _args13348_
                                    _iv13346_
                                    _hd13339_
                                    _depth13332_))))
                             (_E1327313286_))))
                     (_E1327313286_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1327313286_)))))
                                           (if (eq? _$e13269_ 'var)
                                               _body13266_
                                               (_BUG13243_
                                                _e13250_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _e1325213259_)
                                              (let ((_hd1325613353_
                                                     (##car _e1325213259_))
                                                    (_tl1325713355_
                                                     (##cdr _e1325213259_)))
                                                (let ((_tag13358_
                                                       _hd1325613353_))
                                                  (let ((_body13360_
                                                         _tl1325713355_))
                                                    (_K1325513350_
                                                     _body13360_
                                                     _tag13358_))))
                                              (_E1325413263_))))))))
                          _recur13248_)
                        _e13241_
                        '()))))))))
        (let ((_parse13015_
               (lambda (_e13056_)
                 (let ((_make-cons13058_
                        (lambda (_hd13233_ _tl13234_)
                          (let ((_g13418_ _hd13233_) (_g13420_ _tl13234_))
                            (begin
                              (let ((_g13419_ (values-count _g13418_)))
                                (if (not (fx= _g13419_ 2))
                                    (error "Context expects 2 values"
                                           _g13419_)))
                              (let ((_g13421_ (values-count _g13420_)))
                                (if (not (fx= _g13421_ 2))
                                    (error "Context expects 2 values"
                                           _g13421_)))
                              (let ((_hd-e13236_ (values-ref _g13418_ 0))
                                    (_hd-vars13237_ (values-ref _g13418_ 1)))
                                (let ((_tl-e13238_ (values-ref _g13420_ 0))
                                      (_tl-vars13239_ (values-ref _g13420_ 1)))
                                  (values (cons* 'cons _hd-e13236_ _tl-e13238_)
                                          (append _hd-vars13237_
                                                  _tl-vars13239_)))))))))
                   (let ((_make-splice13059_
                          (lambda (_where13172_
                                   _depth13173_
                                   _hd13174_
                                   _tl13175_)
                            (let ((_g13414_ _hd13174_) (_g13416_ _tl13175_))
                              (begin
                                (let ((_g13415_ (values-count _g13414_)))
                                  (if (not (fx= _g13415_ 2))
                                      (error "Context expects 2 values"
                                             _g13415_)))
                                (let ((_g13417_ (values-count _g13416_)))
                                  (if (not (fx= _g13417_ 2))
                                      (error "Context expects 2 values"
                                             _g13417_)))
                                (let ((_hd-e13177_ (values-ref _g13414_ 0))
                                      (_hd-vars13178_ (values-ref _g13414_ 1)))
                                  (let ((_tl-e13179_ (values-ref _g13416_ 0))
                                        (_tl-vars13180_
                                         (values-ref _g13416_ 1)))
                                    ((letrec ((_lp13182_
                                               (lambda (_rest13184_
                                                        _targets13185_
                                                        _vars13186_)
                                                 (let ((_rest1318713197_
                                                        _rest13184_))
                                                   (let ((_E1319013201_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest1318713197_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_else1318913205_
                                                            (lambda ()
                                                              (if (null? _targets13185_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Misplaced ellipsis"
                           _stx13012_
                           _where13172_)
                          (values (cons* 'splice
                                         _depth13173_
                                         _hd-e13177_
                                         _tl-e13179_
                                         _targets13185_)
                                  _vars13186_)))))
               (let ((_K1319113214_
                      (lambda (_rest13208_ _hd-pat13209_ _hd-depth*13210_)
                        (let ((_hd-depth13212_
                               (fx- _hd-depth*13210_ _depth13173_)))
                          (if (fxpositive? _hd-depth13212_)
                              (_lp13182_
                               _rest13208_
                               (cons (cons 'ref _hd-pat13209_) _targets13185_)
                               (cons (cons _hd-depth13212_ _hd-pat13209_)
                                     _vars13186_))
                              (if (fxzero? _hd-depth13212_)
                                  (_lp13182_
                                   _rest13208_
                                   (cons (cons 'pattern _hd-pat13209_)
                                         _targets13185_)
                                   _vars13186_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Too many ellipses"
                                   _stx13012_
                                   _where13172_)))))))
                 (if (##pair? _rest1318713197_)
                     (let ((_hd1319213217_ (##car _rest1318713197_))
                           (_tl1319313219_ (##cdr _rest1318713197_)))
                       (if (##pair? _hd1319213217_)
                           (let ((_hd1319413222_ (##car _hd1319213217_))
                                 (_tl1319513224_ (##cdr _hd1319213217_)))
                             (let ((_hd-depth*13227_ _hd1319413222_))
                               (let ((_hd-pat13229_ _tl1319513224_))
                                 (let ((_rest13231_ _tl1319313219_))
                                   (_K1319113214_
                                    _rest13231_
                                    _hd-pat13229_
                                    _hd-depth*13227_)))))
                           (_else1318913205_)))
                     (_else1318913205_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _lp13182_)
                                     _hd-vars13178_
                                     '()
                                     _tl-vars13180_))))))))
                     (letrec ((_recur13060_
                               (lambda (_e13065_ _is-e?13066_)
                                 (if (_is-e?13066_ _e13065_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Mislpaced ellipsis"
                                      _stx13012_)
                                     (if (gx#syntax-local-pattern? _e13065_)
                                         (let ((_pat13068_
                                                (gx#syntax-local-e__0
                                                 _e13065_)))
                                           (let ((_depth13070_
                                                  (##structure-ref
                                                   _pat13068_
                                                   '3
                                                   gx#syntax-pattern::t
                                                   '#f)))
                                             (let ()
                                               (if (fxpositive? _depth13070_)
                                                   (values (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat13068_)
                   (cons (cons _depth13070_ _pat13068_) '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (values (cons 'pattern
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat13068_)
                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (if (gx#identifier? _e13065_)
                                             (values (cons 'term _e13065_) '())
                                             (if (gx#stx-pair? _e13065_)
                                                 (let ((_e1307213079_
                                                        _e13065_))
                                                   (let ((_E1307413083_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _e1307213079_))))
                                                     (let ((_E1307313162_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e1307213079_)
                          (let ((_e1307513087_ (gx#syntax-e _e1307213079_)))
                            (let ((_hd1307613090_ (##car _e1307513087_))
                                  (_tl1307713092_ (##cdr _e1307513087_)))
                              (let ((_hd13095_ _hd1307613090_))
                                (let ((_rest13097_ _tl1307713092_))
                                  (if '#t
                                      (if (_is-e?13066_ _hd13095_)
                                          (let ((_e1309813105_ _rest13097_))
                                            (let ((_E1310013109_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad ellipsis syntax"
                                                      _stx13012_
                                                      _e13065_))))
                                              (let ((_E1309913123_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e1309813105_)
                                                           (let ((_e1310113113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e1309813105_)))
                     (let ((_hd1310213116_ (##car _e1310113113_))
                           (_tl1310313118_ (##cdr _e1310113113_)))
                       (let ((_rest13121_ _hd1310213116_))
                         (if (gx#stx-null? _tl1310313118_)
                             (if '#t
                                 (_recur13060_ _rest13121_ false)
                                 (_E1310013109_))
                             (_E1310013109_)))))
                   (_E1310013109_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E1309913123_)))))
                                          ((letrec ((_lp13127_
                                                     (lambda (_rest13129_
                                                              _depth13130_)
                                                       (let ((_e1313113138_
                                                              _rest13129_))
                                                         (let ((_E1313313142_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (fxpositive? _depth13130_)
                              (_make-splice13059_
                               _e13065_
                               _depth13130_
                               (_recur13060_ _hd13095_ _is-e?13066_)
                               (_recur13060_ _rest13129_ _is-e?13066_))
                              (_make-cons13058_
                               (_recur13060_ _hd13095_ _is-e?13066_)
                               (_recur13060_ _rest13129_ _is-e?13066_))))))
                   (let ((_E1313213158_
                          (lambda ()
                            (if (gx#stx-pair? _e1313113138_)
                                (let ((_e1313413146_
                                       (gx#syntax-e _e1313113138_)))
                                  (let ((_hd1313513149_ (##car _e1313413146_))
                                        (_tl1313613151_ (##cdr _e1313413146_)))
                                    (let ((_rest-hd13154_ _hd1313513149_))
                                      (let ((_rest-tl13156_ _tl1313613151_))
                                        (if '#t
                                            (if (_is-e?13066_ _rest-hd13154_)
                                                (_lp13127_
                                                 _rest-tl13156_
                                                 (fx+ _depth13130_ '1))
                                                (if (fxpositive? _depth13130_)
                                                    (_make-splice13059_
                                                     _e13065_
                                                     _depth13130_
                                                     (_recur13060_
                                                      _hd13095_
                                                      _is-e?13066_)
                                                     (_recur13060_
                                                      _rest13129_
                                                      _is-e?13066_))
                                                    (_make-cons13058_
                                                     (_recur13060_
                                                      _hd13095_
                                                      _is-e?13066_)
                                                     (_recur13060_
                                                      _rest13129_
                                                      _is-e?13066_))))
                                            (_E1313313142_))))))
                                (_E1313313142_)))))
                     (let () (_E1313213158_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _lp13127_)
                                           _rest13097_
                                           '0))
                                      (_E1307413083_))))))
                          (_E1307413083_)))))
               (let () (_E1307313162_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-vector? _e13065_)
                                                     (let ((_g13408_
                                                            (_recur13060_
                                                             (vector->list
                                                              (gx#stx-unwrap__0
                                                               _e13065_))
                                                             _is-e?13066_)))
                                                       (begin
                                                         (let ((_g13409_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g13408_)))
                   (if (not (fx= _g13409_ 2))
                       (error "Context expects 2 values" _g13409_)))
                 (let ((_e13166_ (values-ref _g13408_ 0))
                       (_vars13167_ (values-ref _g13408_ 1)))
                   (values (cons 'vector _e13166_) _vars13167_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-box? _e13065_)
                                                         (let ((_g13410_
                                                                (_recur13060_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (unbox (gx#stx-unwrap__0 _e13065_))
                         _is-e?13066_)))
                   (begin
                     (let ((_g13411_ (values-count _g13410_)))
                       (if (not (fx= _g13411_ 2))
                           (error "Context expects 2 values" _g13411_)))
                     (let ((_e13169_ (values-ref _g13410_ 0))
                           (_vars13170_ (values-ref _g13410_ 1)))
                       (values (cons 'box _e13169_) _vars13170_))))
                 (values (cons 'datum _e13065_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       (let ((_g13412_ (_recur13060_ _e13056_ gx#ellipsis?)))
                         (begin
                           (let ((_g13413_ (values-count _g13412_)))
                             (if (not (fx= _g13413_ 2))
                                 (error "Context expects 2 values" _g13413_)))
                           (let ((_tree13062_ (values-ref _g13412_ 0))
                                 (_vars13063_ (values-ref _g13412_ 1)))
                             (if (null? _vars13063_)
                                 _tree13062_
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Missing ellipsis"
                                  _stx13012_
                                  _vars13063_)))))))))))
          (let ((_e1301613026_ _stx13012_))
            (let ((_E1301813030_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _stx13012_))))
              (let ((_E1301713052_
                     (lambda ()
                       (if (gx#stx-pair? _e1301613026_)
                           (let ((_e1301913034_ (gx#syntax-e _e1301613026_)))
                             (let ((_hd1302013037_ (##car _e1301913034_))
                                   (_tl1302113039_ (##cdr _e1301913034_)))
                               (if (gx#stx-pair? _tl1302113039_)
                                   (let ((_e1302213042_
                                          (gx#syntax-e _tl1302113039_)))
                                     (let ((_hd1302313045_
                                            (##car _e1302213042_))
                                           (_tl1302413047_
                                            (##cdr _e1302213042_)))
                                       (let ((_form13050_ _hd1302313045_))
                                         (if (gx#stx-null? _tl1302413047_)
                                             (if '#t
                                                 (gx#stx-wrap-source
                                                  (_generate13014_
                                                   (_parse13015_ _form13050_))
                                                  (gx#stx-source _stx13012_))
                                                 (_E1301813030_))
                                             (_E1301813030_)))))
                                   (_E1301813030_))))
                           (_E1301813030_)))))
                (let () (_E1301713052_)))))))))
  (begin
    (define gx#macro-expand-syntax-case__opt-lambda12282
      (lambda (_stx12284_ _identifier=?12285_ _unwrap-e12286_ _wrap-e12287_)
        (let ((_generate-body12290_
               (lambda (_bindings12834_ _body12835_)
                 ((letrec ((_recur12837_
                            (lambda (_rest12839_)
                              (let ((_rest1284012848_ _rest12839_))
                                (let ((_E1284312852_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest1284012848_))))
                                  (let ((_else1284212856_
                                         (lambda () _body12835_)))
                                    (let ((_K1284412862_
                                           (lambda (_rest12859_ _hd12860_)
                                             (gx#core-list
                                              'let-values
                                              (cons _hd12860_ '())
                                              (_recur12837_ _rest12859_)))))
                                      (if (##pair? _rest1284012848_)
                                          (let ((_hd1284512865_
                                                 (##car _rest1284012848_))
                                                (_tl1284612867_
                                                 (##cdr _rest1284012848_)))
                                            (let ((_hd12870_ _hd1284512865_))
                                              (let ((_rest12872_
                                                     _tl1284612867_))
                                                (_K1284412862_
                                                 _rest12872_
                                                 _hd12870_))))
                                          (_else1284212856_)))))))))
                    _recur12837_)
                  _bindings12834_))))
          (let ((_generate-match12292_
                 (lambda (_where12456_
                          _target12457_
                          _hd12458_
                          _mvars12459_
                          _K12460_
                          _E12461_)
                   (let ((_BUG12463_
                          (lambda (_q12695_)
                            (error '"BUG: syntax-case; generate"
                                   _stx12284_
                                   _hd12458_
                                   _q12695_))))
                     (let ((_splice-rlen12465_
                            (lambda (_e12511_)
                              ((letrec ((_lp12513_
                                         (lambda (_e12515_ _n12516_)
                                           (let ((_e1251712524_ _e12515_))
                                             (let ((_E1251912528_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _e1251712524_))))
                                               (let ((_K1252012537_
                                                      (lambda (_body12531_
                                                               _tag12532_)
                                                        (let ((_$e12534_
                                                               _tag12532_))
                                                          (if (eq? _$e12534_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'splice)
                      (gx#raise-syntax-error
                       '#f
                       '"Ambiguous pattern"
                       _stx12284_
                       _where12456_)
                      (if (eq? _$e12534_ 'cons)
                          (_lp12513_ (cdr _body12531_) (fx+ _n12516_ '1))
                          _n12516_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _e1251712524_)
                                                     (let ((_hd1252112540_
                                                            (##car _e1251712524_))
                                                           (_tl1252212542_
                                                            (##cdr _e1251712524_)))
                                                       (let ((_tag12545_
                                                              _hd1252112540_))
                                                         (let ((_body12547_
                                                                _tl1252212542_))
                                                           (_K1252012537_
                                                            _body12547_
                                                            _tag12545_))))
                                                     (_E1251912528_))))))))
                                 _lp12513_)
                               _e12511_
                               '0))))
                       (let ((_splice-vars12466_
                              (lambda (_e12473_)
                                ((letrec ((_recur12475_
                                           (lambda (_e12477_ _vars12478_)
                                             (let ((_e1247912486_ _e12477_))
                                               (let ((_E1248112490_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _e1247912486_))))
                                                 (let ((_K1248212499_
                                                        (lambda (_body12493_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tag12494_)
                  (let ((_$e12496_ _tag12494_))
                    (if (eq? _$e12496_ 'var)
                        (cons _body12493_ _vars12478_)
                        (if (memq _$e12496_ '(cons splice))
                            (_recur12475_
                             (cdr _body12493_)
                             (_recur12475_ (car _body12493_) _vars12478_))
                            (if (memq _$e12496_ '(vector box))
                                (_recur12475_ _body12493_ _vars12478_)
                                _vars12478_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##pair? _e1247912486_)
                                                       (let ((_hd1248312502_
                                                              (##car _e1247912486_))
                                                             (_tl1248412504_
                                                              (##cdr _e1247912486_)))
                                                         (let ((_tag12507_
                                                                _hd1248312502_))
                                                           (let ((_body12509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1248412504_))
                     (_K1248212499_ _body12509_ _tag12507_))))
               (_E1248112490_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _recur12475_)
                                 _e12473_
                                 '()))))
                         (let ((_make-body12467_
                                (lambda (_vars12469_)
                                  (cons _K12460_
                                        (map (lambda (_mvar12471_)
                                               (assgetq (car _mvar12471_)
                                                        _vars12469_
                                                        _BUG12463_))
                                             _mvars12459_)))))
                           (letrec ((_recur12464_
                                     (lambda (_e12549_
                                              _vars12550_
                                              _target12551_
                                              _E12552_
                                              _k12553_)
                                       (let ((_e1255412561_ _e12549_))
                                         (let ((_E1255612565_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _e1255412561_))))
                                           (let ((_K1255712683_
                                                  (lambda (_body12568_
                                                           _tag12569_)
                                                    (let ((_$e12571_
                                                           _tag12569_))
                                                      (if (eq? _$e12571_ 'any)
                                                          (_k12553_
                                                           _vars12550_)
                                                          (if (eq? _$e12571_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'id)
                      (gx#core-list
                       'if
                       (gx#core-list 'identifier? _target12551_)
                       (gx#core-list
                        'if
                        (gx#core-list
                         _identifier=?12285_
                         (gx#core-list _wrap-e12287_ _body12568_)
                         _target12551_)
                        (_k12553_ _vars12550_)
                        _E12552_)
                       _E12552_)
                      (if (eq? _$e12571_ 'var)
                          (_k12553_
                           (cons (cons _body12568_ _target12551_) _vars12550_))
                          (if (eq? _$e12571_ 'cons)
                              (let ((_$e12574_ (gx#genident__1 'e))
                                    (_$hd12575_ (gx#genident__1 'hd))
                                    (_$tl12576_ (gx#genident__1 'tl)))
                                (gx#core-list
                                 'if
                                 (gx#core-list 'stx-pair? _target12551_)
                                 (gx#core-list
                                  'let-values
                                  (cons (cons (cons _$e12574_ '())
                                              (cons (gx#core-list
                                                     _unwrap-e12286_
                                                     _target12551_)
                                                    '()))
                                        '())
                                  (gx#core-list
                                   'let-values
                                   (cons (cons (cons _$hd12575_ '())
                                               (cons (gx#core-list
                                                      '##car
                                                      _$e12574_)
                                                     '()))
                                         (cons (cons (cons _$tl12576_ '())
                                                     (cons (gx#core-list
                                                            '##cdr
                                                            _$e12574_)
                                                           '()))
                                               '()))
                                   (let ((_body1257712584_ _body12568_))
                                     (let ((_E1257912588_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _body1257712584_))))
                                       (let ((_K1258012596_
                                              (lambda (_tl12591_ _hd12592_)
                                                (_recur12464_
                                                 _hd12592_
                                                 _vars12550_
                                                 _$hd12575_
                                                 _E12552_
                                                 (lambda (_vars12594_)
                                                   (_recur12464_
                                                    _tl12591_
                                                    _vars12594_
                                                    _$tl12576_
                                                    _E12552_
                                                    _k12553_))))))
                                         (if (##pair? _body1257712584_)
                                             (let ((_hd1258112599_
                                                    (##car _body1257712584_))
                                                   (_tl1258212601_
                                                    (##cdr _body1257712584_)))
                                               (let ((_hd12604_
                                                      _hd1258112599_))
                                                 (let ((_tl12606_
                                                        _tl1258212601_))
                                                   (_K1258012596_
                                                    _tl12606_
                                                    _hd12604_))))
                                             (_E1257912588_)))))))
                                 _E12552_))
                              (if (eq? _$e12571_ 'splice)
                                  (let ((_body1260712614_ _body12568_))
                                    (let ((_E1260912618_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _body1260712614_))))
                                      (let ((_K1261012667_
                                             (lambda (_tl12621_ _hd12622_)
                                               (let ((_rlen12624_
                                                      (_splice-rlen12465_
                                                       _tl12621_)))
                                                 (let ((_$target12626_
                                                        (gx#genident__1
                                                         'target)))
                                                   (let ((_$hd12628_
                                                          (gx#genident__1
                                                           'hd)))
                                                     (let ((_$tl12630_
                                                            (gx#genident__1
                                                             'tl)))
                                                       (let ((_$lp12632_
                                                              (gx#genident__1
                                                               'loop)))
                                                         (let ((_$lp-e12634_
                                                                (gx#genident__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'e)))
                   (let ((_$lp-hd12636_ (gx#genident__1 'lp-hd)))
                     (let ((_$lp-tl12638_ (gx#genident__1 'lp-tl)))
                       (let ((_svars12640_ (_splice-vars12466_ _hd12622_)))
                         (let ((_lvars12642_ (gx#gentemps _svars12640_)))
                           (let ((_tlvars12644_ (gx#gentemps _svars12640_)))
                             (let ((_linit12648_
                                    (map (lambda (_var12646_)
                                           (gx#core-list 'quote '()))
                                         _lvars12642_)))
                               (let ()
                                 (let ((_make-loop12651_
                                        (lambda (_vars12653_)
                                          (gx#core-list
                                           'letrec-values
                                           (cons (cons (cons _$lp12632_ '())
                                                       (cons (gx#core-list
                                                              'lambda%
                                                              (cons _$hd12628_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _lvars12642_)
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _$hd12628_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$lp-e12634_ '())
                                    (cons (gx#core-list
                                           _unwrap-e12286_
                                           _$hd12628_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$lp-hd12636_ '())
                                     (cons (gx#core-list '##car _$lp-e12634_)
                                           '()))
                               (cons (cons (cons _$lp-tl12638_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$lp-e12634_)
                                                 '()))
                                     '()))
                         (_recur12464_
                          _hd12622_
                          '()
                          _$lp-hd12636_
                          _E12552_
                          (lambda (_hdvars12655_)
                            (cons* _$lp12632_
                                   _$lp-tl12638_
                                   (map (lambda (_svar12657_ _lvar12658_)
                                          (gx#core-list
                                           'cons
                                           (assgetq _svar12657_
                                                    _hdvars12655_
                                                    _BUG12463_)
                                           _lvar12658_))
                                        _svars12640_
                                        _lvars12642_))))))
                       (gx#core-list
                        'let-values
                        (map (lambda (_lvar12660_ _tlvar12661_)
                               (cons (cons _tlvar12661_ '())
                                     (cons (gx#core-list 'reverse _lvar12660_)
                                           '())))
                             _lvars12642_
                             _tlvars12644_)
                        (_k12553_
                         (foldl (lambda (_svar12663_ _tlvar12664_ _r12665_)
                                  (cons (cons _svar12663_ _tlvar12664_)
                                        _r12665_))
                                _vars12653_
                                _svars12640_
                                _tlvars12644_)))))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons* _$lp12632_
                                                  _$target12626_
                                                  _linit12648_)))))
                                   (gx#core-list
                                    'if
                                    (gx#core-list
                                     'stx-pair/null?
                                     _target12551_)
                                    (gx#core-list
                                     'if
                                     (gx#core-list
                                      'fx>=
                                      (gx#core-list 'stx-length _target12551_)
                                      _rlen12624_)
                                     (gx#core-list
                                      'let-values
                                      (cons (cons (cons _$target12626_
                                                        (cons _$tl12630_ '()))
                                                  (cons (gx#core-list
                                                         'syntax-split-splice
                                                         _target12551_
                                                         _rlen12624_)
                                                        '()))
                                            '())
                                      (_recur12464_
                                       _tl12621_
                                       _vars12550_
                                       _$tl12630_
                                       _E12552_
                                       _make-loop12651_))
                                     _E12552_)
                                    _E12552_))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _body1260712614_)
                                            (let ((_hd1261112670_
                                                   (##car _body1260712614_))
                                                  (_tl1261212672_
                                                   (##cdr _body1260712614_)))
                                              (let ((_hd12675_ _hd1261112670_))
                                                (let ((_tl12677_
                                                       _tl1261212672_))
                                                  (_K1261012667_
                                                   _tl12677_
                                                   _hd12675_))))
                                            (_E1260912618_)))))
                                  (if (eq? _$e12571_ 'null)
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-null? _target12551_)
                                       (_k12553_ _vars12550_)
                                       _E12552_)
                                      (if (eq? _$e12571_ 'vector)
                                          (let ((_$e12679_
                                                 (gx#genident__1 'e)))
                                            (gx#core-list
                                             'if
                                             (gx#core-list
                                              'stx-vector?
                                              _target12551_)
                                             (gx#core-list
                                              'let-values
                                              (cons (cons (cons _$e12679_ '())
                                                          (cons (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'vector->list
                         (gx#core-list _unwrap-e12286_ _target12551_))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (_recur12464_
                                               _body12568_
                                               _vars12550_
                                               _$e12679_
                                               _E12552_
                                               _k12553_))
                                             _E12552_))
                                          (if (eq? _$e12571_ 'box)
                                              (let ((_$e12681_
                                                     (gx#genident__1 'e)))
                                                (gx#core-list
                                                 'if
                                                 (gx#core-list
                                                  'stx-box?
                                                  _target12551_)
                                                 (gx#core-list
                                                  'let-values
                                                  (cons (cons (cons _$e12681_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (gx#core-list
                             'unbox
                             (gx#core-list _unwrap-e12286_ _target12551_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur12464_
                                                   _body12568_
                                                   _vars12550_
                                                   _$e12681_
                                                   _E12552_
                                                   _k12553_))
                                                 _E12552_))
                                              (if (eq? _$e12571_ 'datum)
                                                  (gx#core-list
                                                   'if
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target12551_)
                                                   (gx#core-list
                                                    'if
                                                    (gx#core-list
                                                     'equal?
                                                     (gx#core-list
                                                      'stx-e
                                                      _target12551_)
                                                     _body12568_)
                                                    (_k12553_ _vars12550_)
                                                    _E12552_)
                                                   _E12552_)
                                                  (_BUG12463_
                                                   _e12549_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _e1255412561_)
                                                 (let ((_hd1255812686_
                                                        (##car _e1255412561_))
                                                       (_tl1255912688_
                                                        (##cdr _e1255412561_)))
                                                   (let ((_tag12691_
                                                          _hd1255812686_))
                                                     (let ((_body12693_
                                                            _tl1255912688_))
                                                       (_K1255712683_
                                                        _body12693_
                                                        _tag12691_))))
                                                 (_E1255612565_))))))))
                             (_recur12464_
                              _hd12458_
                              '()
                              _target12457_
                              _E12461_
                              _make-body12467_)))))))))
            (let ((_parse-clause12293_
                   (lambda (_hd12362_ _ids12363_)
                     ((letrec ((_recur12365_
                                (lambda (_e12367_ _vars12368_ _depth12369_)
                                  (if (gx#identifier? _e12367_)
                                      (if (gx#underscore? _e12367_)
                                          (values '(any) _vars12368_)
                                          (if (gx#ellipsis? _e12367_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Misplaced ellipsis"
                                               _stx12284_
                                               _hd12362_)
                                              (if (find (lambda (_id12371_)
                                                          (gx#bound-identifier=?
                                                           _e12367_
                                                           _id12371_))
                                                        _ids12363_)
                                                  (values (cons 'id _e12367_)
                                                          _vars12368_)
                                                  (if (find (lambda (_var12373_)
                                                              (gx#bound-identifier=?
                                                               _e12367_
                                                               (car _var12373_)))
                                                            _vars12368_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Duplicate pattern variable"
                                                       _stx12284_
                                                       _e12367_)
                                                      (values (cons 'var
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _e12367_)
                      (cons (cons _e12367_ _depth12369_) _vars12368_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _e12367_)
                                          (let ((_e1237412381_ _e12367_))
                                            (let ((_E1237612385_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _e1237412381_))))
                                              (let ((_E1237512446_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e1237412381_)
                                                           (let ((_e1237712389_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e1237412381_)))
                     (let ((_hd1237812392_ (##car _e1237712389_))
                           (_tl1237912394_ (##cdr _e1237712389_)))
                       (let ((_hd12397_ _hd1237812392_))
                         (let ((_rest12399_ _tl1237912394_))
                           (if '#t
                               (let ((_make-pair12414_
                                      (lambda (_tag12401_ _hd12402_ _tl12403_)
                                        (let ((_hd-depth12405_
                                               (if (eq? _tag12401_ 'splice)
                                                   (fx+ _depth12369_ '1)
                                                   _depth12369_)))
                                          (let ((_g13424_
                                                 (_recur12365_
                                                  _hd12402_
                                                  _vars12368_
                                                  _hd-depth12405_)))
                                            (begin
                                              (let ((_g13425_
                                                     (values-count _g13424_)))
                                                (if (not (fx= _g13425_ 2))
                                                    (error "Context expects 2 values"
                                                           _g13425_)))
                                              (let ((_hd12407_
                                                     (values-ref _g13424_ 0))
                                                    (_vars12408_
                                                     (values-ref _g13424_ 1)))
                                                (let ((_g13426_
                                                       (_recur12365_
                                                        _tl12403_
                                                        _vars12408_
                                                        _depth12369_)))
                                                  (begin
                                                    (let ((_g13427_
                                                           (values-count
                                                            _g13426_)))
                                                      (if (not (fx= _g13427_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g13427_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_tl12410_
                                                           (values-ref
                                                            _g13426_
                                                            0))
                                                          (_vars12411_
                                                           (values-ref
                                                            _g13426_
                                                            1)))
                                                      (let ()
                                                        (values (cons* _tag12401_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd12407_
                               _tl12410_)
                        _vars12411_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (let ((_e1241512422_ _rest12399_))
                                   (let ((_E1241712426_
                                          (lambda ()
                                            (_make-pair12414_
                                             'cons
                                             _hd12397_
                                             _rest12399_))))
                                     (let ((_E1241612442_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1241512422_)
                                                  (let ((_e1241812430_
                                                         (gx#syntax-e
                                                          _e1241512422_)))
                                                    (let ((_hd1241912433_
                                                           (##car _e1241812430_))
                                                          (_tl1242012435_
                                                           (##cdr _e1241812430_)))
                                                      (let ((_rest-hd12438_
                                                             _hd1241912433_))
                                                        (let ((_rest-tl12440_
                                                               _tl1242012435_))
                                                          (if '#t
                                                              (if (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest-hd12438_)
                          (_make-pair12414_ 'splice _hd12397_ _rest-tl12440_)
                          (_make-pair12414_ 'cons _hd12397_ _rest12399_))
                      (_E1241712426_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1241712426_)))))
                                       (let () (_E1241612442_))))))
                               (_E1237612385_))))))
                   (_E1237612385_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E1237512446_)))))
                                          (if (gx#stx-null? _e12367_)
                                              (values '(null) _vars12368_)
                                              (if (gx#stx-vector? _e12367_)
                                                  (let ((_g13428_
                                                         (_recur12365_
                                                          (vector->list
                                                           (gx#syntax-e
                                                            _e12367_))
                                                          _vars12368_
                                                          _depth12369_)))
                                                    (begin
                                                      (let ((_g13429_
                                                             (values-count
                                                              _g13428_)))
                                                        (if (not (fx= _g13429_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g13429_)))
              (let ((_e12450_ (values-ref _g13428_ 0))
                    (_vars12451_ (values-ref _g13428_ 1)))
                (values (cons 'vector _e12450_) _vars12451_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e12367_)
                                                      (let ((_g13430_
                                                             (_recur12365_
                                                              (unbox (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e12367_))
                      _vars12368_
                      _depth12369_)))
                (begin
                  (let ((_g13431_ (values-count _g13430_)))
                    (if (not (fx= _g13431_ 2))
                        (error "Context expects 2 values" _g13431_)))
                  (let ((_e12453_ (values-ref _g13430_ 0))
                        (_vars12454_ (values-ref _g13430_ 1)))
                    (values (cons 'box _e12453_) _vars12454_))))
              (if (gx#stx-datum? _e12367_)
                  (values (cons 'datum (gx#stx-e _e12367_)) _vars12368_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad pattern"
                   _stx12284_
                   _e12367_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        _recur12365_)
                      _hd12362_
                      '()
                      '0))))
              (let ((_generate-clause12291_
                     (lambda (_target12697_ _ids12698_ _clause12699_ _E12700_)
                       (let ((_generate112702_
                              (lambda (_hd12789_ _fender12790_ _body12791_)
                                (let ((_g13422_
                                       (_parse-clause12293_
                                        _hd12789_
                                        _ids12698_)))
                                  (begin
                                    (let ((_g13423_ (values-count _g13422_)))
                                      (if (not (fx= _g13423_ 2))
                                          (error "Context expects 2 values"
                                                 _g13423_)))
                                    (let ((_e12793_ (values-ref _g13422_ 0))
                                          (_mvars12794_
                                           (values-ref _g13422_ 1)))
                                      (let ((_pvars12796_
                                             (map gx#syntax-local-rewrap
                                                  (gx#gentemps _mvars12794_))))
                                        (let ((_E12798_
                                               (cons _E12700_
                                                     (cons _target12697_
                                                           '()))))
                                          (let ((_K12831_
                                                 (gx#core-list
                                                  'lambda%
                                                  _pvars12796_
                                                  (gx#core-list
                                                   'let-syntax
                                                   (map (lambda (_mvar12800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pvar12801_)
                  (let ((_mvar1280212809_ _mvar12800_))
                    (let ((_E1280412813_
                           (lambda ()
                             (error '"No clause matching" _mvar1280212809_))))
                      (let ((_K1280512819_
                             (lambda (_depth12816_ _id12817_)
                               (cons _id12817_
                                     (cons (gx#core-list
                                            'make-syntax-pattern
                                            (gx#core-list 'quote _id12817_)
                                            (gx#core-list 'quote _pvar12801_)
                                            _depth12816_)
                                           '())))))
                        (if (##pair? _mvar1280212809_)
                            (let ((_hd1280612822_ (##car _mvar1280212809_))
                                  (_tl1280712824_ (##cdr _mvar1280212809_)))
                              (let ((_id12827_ _hd1280612822_))
                                (let ((_depth12829_ _tl1280712824_))
                                  (_K1280512819_ _depth12829_ _id12827_))))
                            (_E1280412813_))))))
                _mvars12794_
                _pvars12796_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (eq? _fender12790_ '#t)
                                                       _body12791_
                                                       (gx#core-list
                                                        'if
                                                        _fender12790_
                                                        _body12791_
                                                        _E12798_))))))
                                            (let ()
                                              (_generate-match12292_
                                               _hd12789_
                                               _target12697_
                                               _e12793_
                                               _mvars12794_
                                               _K12831_
                                               _E12798_)))))))))))
                         (let ((_e1270312723_ _clause12699_))
                           (let ((_E1271212727_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _e1270312723_))))
                             (let ((_E1270512761_
                                    (lambda ()
                                      (if (gx#stx-pair? _e1270312723_)
                                          (let ((_e1271312731_
                                                 (gx#syntax-e _e1270312723_)))
                                            (let ((_hd1271412734_
                                                   (##car _e1271312731_))
                                                  (_tl1271512736_
                                                   (##cdr _e1271312731_)))
                                              (let ((_hd12739_ _hd1271412734_))
                                                (if (gx#stx-pair?
                                                     _tl1271512736_)
                                                    (let ((_e1271612741_
                                                           (gx#syntax-e
                                                            _tl1271512736_)))
                                                      (let ((_hd1271712744_
                                                             (##car _e1271612741_))
                                                            (_tl1271812746_
                                                             (##cdr _e1271612741_)))
                                                        (let ((_fender12749_
                                                               _hd1271712744_))
                                                          (if (gx#stx-pair?
                                                               _tl1271812746_)
                                                              (let ((_e1271912751_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1271812746_)))
                        (let ((_hd1272012754_ (##car _e1271912751_))
                              (_tl1272112756_ (##cdr _e1271912751_)))
                          (let ((_body12759_ _hd1272012754_))
                            (if (gx#stx-null? _tl1272112756_)
                                (if '#t
                                    (_generate112702_
                                     _hd12739_
                                     _fender12749_
                                     _body12759_)
                                    (_E1271212727_))
                                (_E1271212727_)))))
                      (_E1271212727_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1271212727_)))))
                                          (_E1271212727_)))))
                               (let ((_E1270412785_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1270312723_)
                                            (let ((_e1270612765_
                                                   (gx#syntax-e
                                                    _e1270312723_)))
                                              (let ((_hd1270712768_
                                                     (##car _e1270612765_))
                                                    (_tl1270812770_
                                                     (##cdr _e1270612765_)))
                                                (let ((_hd12773_
                                                       _hd1270712768_))
                                                  (if (gx#stx-pair?
                                                       _tl1270812770_)
                                                      (let ((_e1270912775_
                                                             (gx#syntax-e
                                                              _tl1270812770_)))
                                                        (let ((_hd1271012778_
                                                               (##car _e1270912775_))
                                                              (_tl1271112780_
                                                               (##cdr _e1270912775_)))
                                                          (let ((_body12783_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1271012778_))
                    (if (gx#stx-null? _tl1271112780_)
                        (if '#t
                            (_generate112702_ _hd12773_ '#t _body12783_)
                            (_E1270512761_))
                        (_E1270512761_)))))
              (_E1270512761_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1270512761_)))))
                                 (let () (_E1270412785_))))))))))
                (let ((_generate-bindings12289_
                       (lambda (_target12874_
                                _ids12875_
                                _clauses12876_
                                _clause-ids12877_
                                _E12878_)
                         (let ((_generate112880_
                                (lambda (_clause12979_
                                         _clause-id12980_
                                         _E12981_)
                                  (cons (cons _clause-id12980_ '())
                                        (cons (gx#core-list
                                               'lambda%
                                               (cons _target12874_ '())
                                               (_generate-clause12291_
                                                _target12874_
                                                _ids12875_
                                                _clause12979_
                                                _E12981_))
                                              '())))))
                           ((letrec ((_lp12882_
                                      (lambda (_rest12884_
                                               _rest-ids12885_
                                               _bindings12886_)
                                        (let ((_rest1288712895_ _rest12884_))
                                          (let ((_E1289012899_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _rest1288712895_))))
                                            (let ((_else1288912903_
                                                   (lambda ()
                                                     _bindings12886_)))
                                              (let ((_K1289112967_
                                                     (lambda (_rest12906_
                                                              _clause12907_)
                                                       (let ((_rest-ids1290812915_
                                                              _rest-ids12885_))
                                                         (let ((_E1291012919_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (error '"No clause matching" _rest-ids1290812915_))))
                   (let ((_K1291112955_
                          (lambda (_rest-ids12922_ _clause-id12923_)
                            (let ((_rest-ids1292412932_ _rest-ids12922_))
                              (let ((_E1292712936_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _rest-ids1292412932_))))
                                (let ((_else1292612940_
                                       (lambda ()
                                         (cons (_generate112880_
                                                _clause12907_
                                                _clause-id12923_
                                                _E12878_)
                                               _bindings12886_))))
                                  (let ((_K1292812945_
                                         (lambda (_next-clause-id12943_)
                                           (_lp12882_
                                            _rest12906_
                                            _rest-ids12922_
                                            (cons (_generate112880_
                                                   _clause12907_
                                                   _clause-id12923_
                                                   _next-clause-id12943_)
                                                  _bindings12886_)))))
                                    (if (##pair? _rest-ids1292412932_)
                                        (let ((_hd1292912948_
                                               (##car _rest-ids1292412932_))
                                              (_tl1293012950_
                                               (##cdr _rest-ids1292412932_)))
                                          (let ((_next-clause-id12953_
                                                 _hd1292912948_))
                                            (_K1292812945_
                                             _next-clause-id12953_)))
                                        (_else1292612940_)))))))))
                     (if (##pair? _rest-ids1290812915_)
                         (let ((_hd1291212958_ (##car _rest-ids1290812915_))
                               (_tl1291312960_ (##cdr _rest-ids1290812915_)))
                           (let ((_clause-id12963_ _hd1291212958_))
                             (let ((_rest-ids12965_ _tl1291312960_))
                               (_K1291112955_
                                _rest-ids12965_
                                _clause-id12963_))))
                         (_E1291012919_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (##pair? _rest1288712895_)
                                                    (let ((_hd1289212970_
                                                           (##car _rest1288712895_))
                                                          (_tl1289312972_
                                                           (##cdr _rest1288712895_)))
                                                      (let ((_clause12975_
                                                             _hd1289212970_))
                                                        (let ((_rest12977_
                                                               _tl1289312972_))
                                                          (_K1289112967_
                                                           _rest12977_
                                                           _clause12975_))))
                                                    (_else1288912903_)))))))))
                              _lp12882_)
                            _clauses12876_
                            _clause-ids12877_
                            '())))))
                  (let ((_e1229412307_ _stx12284_))
                    (let ((_E1229612311_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e1229412307_))))
                      (let ((_E1229512358_
                             (lambda ()
                               (if (gx#stx-pair? _e1229412307_)
                                   (let ((_e1229712315_
                                          (gx#syntax-e _e1229412307_)))
                                     (let ((_hd1229812318_
                                            (##car _e1229712315_))
                                           (_tl1229912320_
                                            (##cdr _e1229712315_)))
                                       (if (gx#stx-pair? _tl1229912320_)
                                           (let ((_e1230012323_
                                                  (gx#syntax-e
                                                   _tl1229912320_)))
                                             (let ((_hd1230112326_
                                                    (##car _e1230012323_))
                                                   (_tl1230212328_
                                                    (##cdr _e1230012323_)))
                                               (let ((_expr12331_
                                                      _hd1230112326_))
                                                 (if (gx#stx-pair?
                                                      _tl1230212328_)
                                                     (let ((_e1230312333_
                                                            (gx#syntax-e
                                                             _tl1230212328_)))
                                                       (let ((_hd1230412336_
                                                              (##car _e1230312333_))
                                                             (_tl1230512338_
                                                              (##cdr _e1230312333_)))
                                                         (let ((_ids12341_
                                                                _hd1230412336_))
                                                           (let ((_clauses12343_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1230512338_))
                     (if '#t
                         (if (not (gx#identifier-list? _ids12341_))
                             (gx#raise-syntax-error
                              '#f
                              '"Bad template identifier list"
                              _stx12284_
                              _ids12341_)
                             (if (not (gx#stx-list? _clauses12343_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _stx12284_)
                                 (let ((_ids12345_
                                        (gx#syntax->list _ids12341_)))
                                   (let ((_clauses12347_
                                          (gx#syntax->list _clauses12343_)))
                                     (let ((_clause-ids12349_
                                            (gx#gentemps _clauses12347_)))
                                       (let ((_E12351_ (gx#genident__0)))
                                         (let ((_target12353_
                                                (gx#genident__0)))
                                           (let ((_first12355_
                                                  (if (null? _clauses12347_)
                                                      _E12351_
                                                      (car _clause-ids12349_))))
                                             (let ()
                                               (gx#stx-wrap-source
                                                (gx#core-list
                                                 'let-values
                                                 (cons (cons (cons _E12351_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _target12353_ '())
                            (gx#core-list
                             'raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _target12353_))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_generate-body12290_
                                                  (_generate-bindings12289_
                                                   _target12353_
                                                   _ids12345_
                                                   _clauses12347_
                                                   _clause-ids12349_
                                                   _E12351_)
                                                  (cons _first12355_
                                                        (cons _expr12331_
                                                              '()))))
                                                (gx#stx-source
                                                 _stx12284_)))))))))))
                         (_E1229612311_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1229612311_)))))
                                           (_E1229612311_))))
                                   (_E1229612311_)))))
                        (let () (_E1229512358_))))))))))))
    (begin
      (define gx#macro-expand-syntax-case__0
        (lambda (_stx12986_)
          (let ((_identifier=?12988_ 'free-identifier=?))
            (let ((_unwrap-e12990_ 'syntax-e))
              (let ((_wrap-e12992_ 'quote-syntax))
                (gx#macro-expand-syntax-case__opt-lambda12282
                 _stx12986_
                 _identifier=?12988_
                 _unwrap-e12990_
                 _wrap-e12992_))))))
      (define gx#macro-expand-syntax-case__1
        (lambda (_stx12994_ _identifier=?12995_)
          (let ((_unwrap-e12997_ 'syntax-e))
            (let ((_wrap-e12999_ 'quote-syntax))
              (gx#macro-expand-syntax-case__opt-lambda12282
               _stx12994_
               _identifier=?12995_
               _unwrap-e12997_
               _wrap-e12999_)))))
      (define gx#macro-expand-syntax-case__2
        (lambda (_stx13001_ _identifier=?13002_ _unwrap-e13003_)
          (let ((_wrap-e13005_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda12282
             _stx13001_
             _identifier=?13002_
             _unwrap-e13003_
             _wrap-e13005_))))
      (define gx#macro-expand-syntax-case
        (lambda _g13433_
          (let ((_g13432_ (length _g13433_)))
            (cond ((fx= _g13432_ 1)
                   (apply gx#macro-expand-syntax-case__0 _g13433_))
                  ((fx= _g13432_ 2)
                   (apply gx#macro-expand-syntax-case__1 _g13433_))
                  ((fx= _g13432_ 3)
                   (apply gx#macro-expand-syntax-case__2 _g13433_))
                  ((fx= _g13432_ 4)
                   (apply gx#macro-expand-syntax-case__opt-lambda12282
                          _g13433_))
                  (else (error "No clause matching arguments" _g13433_))))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx12281_)
      (if (gx#identifier? _stx12281_)
          (##structure-instance-of?
           (gx#syntax-local-e__opt-lambda3481 _stx12281_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd12239_ . _rest12240_)
      (let ((_len12242_ (length _hd12239_)))
        ((letrec ((_lp12244_
                   (lambda (_rest12246_)
                     (let ((_rest1224712255_ _rest12246_))
                       (let ((_E1225012259_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1224712255_))))
                         (let ((_else1224912263_ (lambda () '#!void)))
                           (let ((_K1225112269_
                                  (lambda (_rest12266_ _hd12267_)
                                    (if (fx= _len12242_ (length _hd12267_))
                                        (_lp12244_ _rest12266_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Splice length mismatch"
                                         _hd12267_)))))
                             (if (##pair? _rest1224712255_)
                                 (let ((_hd1225212272_
                                        (##car _rest1224712255_))
                                       (_tl1225312274_
                                        (##cdr _rest1224712255_)))
                                   (let ((_hd12277_ _hd1225212272_))
                                     (let ((_rest12279_ _tl1225312274_))
                                       (_K1225112269_ _rest12279_ _hd12277_))))
                                 (_else1224912263_)))))))))
           _lp12244_)
         _rest12240_))))
  (define gx#syntax-split-splice
    (lambda (_stx12197_ _n12198_)
      ((letrec ((_lp12200_
                 (lambda (_rest12202_ _r12203_)
                   (if (gx#stx-pair? _rest12202_)
                       (let ((_g1220412211_ (gx#syntax-e _rest12202_)))
                         (let ((_E1220612215_
                                (lambda ()
                                  (error '"No clause matching"
                                         _g1220412211_))))
                           (let ((_K1220712221_
                                  (lambda (_rest12218_ _hd12219_)
                                    (_lp12200_
                                     _rest12218_
                                     (cons _hd12219_ _r12203_)))))
                             (if (##pair? _g1220412211_)
                                 (let ((_hd1220812224_ (##car _g1220412211_))
                                       (_tl1220912226_ (##cdr _g1220412211_)))
                                   (let ((_hd12229_ _hd1220812224_))
                                     (let ((_rest12231_ _tl1220912226_))
                                       (_K1220712221_ _rest12231_ _hd12229_))))
                                 (_E1220612215_)))))
                       ((letrec ((_lp12233_
                                  (lambda (_n12235_ _l12236_ _r12237_)
                                    (if (null? _l12236_)
                                        (values _l12236_ _r12237_)
                                        (if (fxpositive? _n12235_)
                                            (_lp12233_
                                             (fx- _n12235_ '1)
                                             (cdr _l12236_)
                                             (cons (car _l12236_) _r12237_))
                                            (values (reverse _l12236_)
                                                    _r12237_))))))
                          _lp12233_)
                        _n12198_
                        _r12203_
                        _rest12202_)))))
         _lp12200_)
       _stx12197_
       '()))))
