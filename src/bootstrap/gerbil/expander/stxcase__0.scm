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
    (lambda _$args13861_
      (apply make-struct-instance gx#syntax-pattern::t _$args13861_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self13858_ _stx13859_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx13859_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx13467_)
      (let ((_generate13469_
             (lambda (_e13696_)
               (let ((_BUG13698_
                      (lambda (_q13856_)
                        (error '"BUG: syntax; generate"
                               _stx13467_
                               _e13696_
                               _q13856_))))
                 (let ((_local-pattern-e13699_
                        (lambda (_pat13854_)
                          (gx#syntax-local-rewrap
                           (##structure-ref
                            _pat13854_
                            '2
                            gx#syntax-pattern::t
                            '#f)))))
                   (let ((_getvar13700_
                          (lambda (_q13851_ _vars13852_)
                            (assgetq _q13851_ _vars13852_ _BUG13698_))))
                     (let ((_getarg13701_
                            (lambda (_arg13817_ _vars13818_)
                              (let ((_arg1381913826_ _arg13817_))
                                (let ((_E1382113830_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _arg1381913826_))))
                                  (let ((_K1382213839_
                                         (lambda (_e13833_ _tag13834_)
                                           (let ((_$e13836_ _tag13834_))
                                             (if (eq? _$e13836_ 'ref)
                                                 (_getvar13700_
                                                  _e13833_
                                                  _vars13818_)
                                                 (if (eq? _$e13836_ 'pattern)
                                                     (_local-pattern-e13699_
                                                      _e13833_)
                                                     (_BUG13698_
                                                      _arg13817_)))))))
                                    (if (##pair? _arg1381913826_)
                                        (let ((_hd1382313842_
                                               (##car _arg1381913826_))
                                              (_tl1382413844_
                                               (##cdr _arg1381913826_)))
                                          (let ((_tag13847_ _hd1382313842_))
                                            (let ((_e13849_ _tl1382413844_))
                                              (_K1382213839_
                                               _e13849_
                                               _tag13847_))))
                                        (_E1382113830_))))))))
                       ((letrec ((_recur13703_
                                  (lambda (_e13705_ _vars13706_)
                                    (let ((_e1370713714_ _e13705_))
                                      (let ((_E1370913718_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _e1370713714_))))
                                        (let ((_K1371013805_
                                               (lambda (_body13721_ _tag13722_)
                                                 (let ((_$e13724_ _tag13722_))
                                                   (if (eq? _$e13724_ 'datum)
                                                       (gx#core-list
                                                        'quote
                                                        _body13721_)
                                                       (if (eq? _$e13724_
                                                                'term)
                                                           (gx#core-list
                                                            'datum->syntax
                                                            '#f
                                                            (gx#core-list
                                                             'quote
                                                             _body13721_))
                                                           (if (eq? _$e13724_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'pattern)
                       (_local-pattern-e13699_ _body13721_)
                       (if (eq? _$e13724_ 'ref)
                           (_getvar13700_ _body13721_ _vars13706_)
                           (if (eq? _$e13724_ 'cons)
                               (gx#core-list
                                'cons
                                (_recur13703_ (car _body13721_) _vars13706_)
                                (_recur13703_ (cdr _body13721_) _vars13706_))
                               (if (eq? _$e13724_ 'vector)
                                   (gx#core-list
                                    'list->vector
                                    (_recur13703_ _body13721_ _vars13706_))
                                   (if (eq? _$e13724_ 'box)
                                       (gx#core-list
                                        'box
                                        (_recur13703_ _body13721_ _vars13706_))
                                       (if (eq? _$e13724_ 'splice)
                                           (let ((_body1372613737_
                                                  _body13721_))
                                             (let ((_E1372813741_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _body1372613737_))))
                                               (let ((_K1372913779_
                                                      (lambda (_args13744_
                                                               _iv13745_
                                                               _hd13746_
                                                               _depth13747_)
                                                        (let ((_targets13753_
                                                               (map (lambda (_g1374813750_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_getarg13701_ _g1374813750_ _vars13706_))
                            _args13744_)))
                  (let ((_fold-in13755_ (gx#gentemps _args13744_)))
                    (let ((_fold-out13757_ (gx#genident__0)))
                      (let ((_lambda-args13759_
                             (foldr1 cons
                                     (cons _fold-out13757_ '())
                                     _fold-in13755_)))
                        (let ((_lambda-body13776_
                               (if (fx> _depth13747_ '1)
                                   (let ((_r-args13767_
                                          (map (lambda (_arg13761_)
                                                 (cons 'ref (cdr _arg13761_)))
                                               _args13744_))
                                         (_r-vars13768_
                                          (foldr (lambda (_arg13763_
                                                          _var13764_
                                                          _r13765_)
                                                   (cons (cons (cdr _arg13763_)
                                                               _var13764_)
                                                         _r13765_))
                                                 _vars13706_
                                                 _args13744_
                                                 _fold-in13755_)))
                                     (_recur13703_
                                      (cons* 'splice
                                             (fx- _depth13747_ '1)
                                             _hd13746_
                                             (cons 'var _fold-out13757_)
                                             _r-args13767_)
                                      _r-vars13768_))
                                   (let ((_hd-vars13774_
                                          (foldr (lambda (_arg13770_
                                                          _var13771_
                                                          _r13772_)
                                                   (cons (cons (cdr _arg13770_)
                                                               _var13771_)
                                                         _r13772_))
                                                 _vars13706_
                                                 _args13744_
                                                 _fold-in13755_)))
                                     (gx#core-list
                                      'cons
                                      (_recur13703_ _hd13746_ _hd-vars13774_)
                                      _fold-out13757_)))))
                          (let ()
                            (gx#core-list
                             'begin
                             (if (fx> (length _targets13753_) '1)
                                 (gx#core-cons*
                                  'syntax-check-splice-targets
                                  _targets13753_)
                                 '#!void)
                             (gx#core-cons*
                              'foldr
                              (gx#core-list
                               'lambda%
                               _lambda-args13759_
                               _lambda-body13776_)
                              (_recur13703_ _iv13745_ _vars13706_)
                              _targets13753_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _body1372613737_)
                                                     (let ((_hd1373013782_
                                                            (##car _body1372613737_))
                                                           (_tl1373113784_
                                                            (##cdr _body1372613737_)))
                                                       (let ((_depth13787_
                                                              _hd1373013782_))
                                                         (if (##pair? _tl1373113784_)
                                                             (let ((_hd1373213789_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##car _tl1373113784_))
                           (_tl1373313791_ (##cdr _tl1373113784_)))
                       (let ((_hd13794_ _hd1373213789_))
                         (if (##pair? _tl1373313791_)
                             (let ((_hd1373413796_ (##car _tl1373313791_))
                                   (_tl1373513798_ (##cdr _tl1373313791_)))
                               (let ((_iv13801_ _hd1373413796_))
                                 (let ((_args13803_ _tl1373513798_))
                                   (_K1372913779_
                                    _args13803_
                                    _iv13801_
                                    _hd13794_
                                    _depth13787_))))
                             (_E1372813741_))))
                     (_E1372813741_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1372813741_)))))
                                           (if (eq? _$e13724_ 'var)
                                               _body13721_
                                               (_BUG13698_
                                                _e13705_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _e1370713714_)
                                              (let ((_hd1371113808_
                                                     (##car _e1370713714_))
                                                    (_tl1371213810_
                                                     (##cdr _e1370713714_)))
                                                (let ((_tag13813_
                                                       _hd1371113808_))
                                                  (let ((_body13815_
                                                         _tl1371213810_))
                                                    (_K1371013805_
                                                     _body13815_
                                                     _tag13813_))))
                                              (_E1370913718_))))))))
                          _recur13703_)
                        _e13696_
                        '()))))))))
        (let ((_parse13470_
               (lambda (_e13511_)
                 (let ((_make-cons13513_
                        (lambda (_hd13688_ _tl13689_)
                          (let ((_g13873_ _hd13688_) (_g13875_ _tl13689_))
                            (begin
                              (let ((_g13874_ (values-count _g13873_)))
                                (if (not (fx= _g13874_ 2))
                                    (error "Context expects 2 values"
                                           _g13874_)))
                              (let ((_g13876_ (values-count _g13875_)))
                                (if (not (fx= _g13876_ 2))
                                    (error "Context expects 2 values"
                                           _g13876_)))
                              (let ((_hd-e13691_ (values-ref _g13873_ 0))
                                    (_hd-vars13692_ (values-ref _g13873_ 1)))
                                (let ((_tl-e13693_ (values-ref _g13875_ 0))
                                      (_tl-vars13694_ (values-ref _g13875_ 1)))
                                  (values (cons* 'cons _hd-e13691_ _tl-e13693_)
                                          (append _hd-vars13692_
                                                  _tl-vars13694_)))))))))
                   (let ((_make-splice13514_
                          (lambda (_where13627_
                                   _depth13628_
                                   _hd13629_
                                   _tl13630_)
                            (let ((_g13869_ _hd13629_) (_g13871_ _tl13630_))
                              (begin
                                (let ((_g13870_ (values-count _g13869_)))
                                  (if (not (fx= _g13870_ 2))
                                      (error "Context expects 2 values"
                                             _g13870_)))
                                (let ((_g13872_ (values-count _g13871_)))
                                  (if (not (fx= _g13872_ 2))
                                      (error "Context expects 2 values"
                                             _g13872_)))
                                (let ((_hd-e13632_ (values-ref _g13869_ 0))
                                      (_hd-vars13633_ (values-ref _g13869_ 1)))
                                  (let ((_tl-e13634_ (values-ref _g13871_ 0))
                                        (_tl-vars13635_
                                         (values-ref _g13871_ 1)))
                                    ((letrec ((_lp13637_
                                               (lambda (_rest13639_
                                                        _targets13640_
                                                        _vars13641_)
                                                 (let ((_rest1364213652_
                                                        _rest13639_))
                                                   (let ((_E1364513656_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest1364213652_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_else1364413660_
                                                            (lambda ()
                                                              (if (null? _targets13640_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Misplaced ellipsis"
                           _stx13467_
                           _where13627_)
                          (values (cons* 'splice
                                         _depth13628_
                                         _hd-e13632_
                                         _tl-e13634_
                                         _targets13640_)
                                  _vars13641_)))))
               (let ((_K1364613669_
                      (lambda (_rest13663_ _hd-pat13664_ _hd-depth*13665_)
                        (let ((_hd-depth13667_
                               (fx- _hd-depth*13665_ _depth13628_)))
                          (if (fxpositive? _hd-depth13667_)
                              (_lp13637_
                               _rest13663_
                               (cons (cons 'ref _hd-pat13664_) _targets13640_)
                               (cons (cons _hd-depth13667_ _hd-pat13664_)
                                     _vars13641_))
                              (if (fxzero? _hd-depth13667_)
                                  (_lp13637_
                                   _rest13663_
                                   (cons (cons 'pattern _hd-pat13664_)
                                         _targets13640_)
                                   _vars13641_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Too many ellipses"
                                   _stx13467_
                                   _where13627_)))))))
                 (if (##pair? _rest1364213652_)
                     (let ((_hd1364713672_ (##car _rest1364213652_))
                           (_tl1364813674_ (##cdr _rest1364213652_)))
                       (if (##pair? _hd1364713672_)
                           (let ((_hd1364913677_ (##car _hd1364713672_))
                                 (_tl1365013679_ (##cdr _hd1364713672_)))
                             (let ((_hd-depth*13682_ _hd1364913677_))
                               (let ((_hd-pat13684_ _tl1365013679_))
                                 (let ((_rest13686_ _tl1364813674_))
                                   (_K1364613669_
                                    _rest13686_
                                    _hd-pat13684_
                                    _hd-depth*13682_)))))
                           (_else1364413660_)))
                     (_else1364413660_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _lp13637_)
                                     _hd-vars13633_
                                     '()
                                     _tl-vars13635_))))))))
                     (letrec ((_recur13515_
                               (lambda (_e13520_ _is-e?13521_)
                                 (if (_is-e?13521_ _e13520_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Mislpaced ellipsis"
                                      _stx13467_)
                                     (if (gx#syntax-local-pattern? _e13520_)
                                         (let ((_pat13523_
                                                (gx#syntax-local-e__0
                                                 _e13520_)))
                                           (let ((_depth13525_
                                                  (##structure-ref
                                                   _pat13523_
                                                   '3
                                                   gx#syntax-pattern::t
                                                   '#f)))
                                             (let ()
                                               (if (fxpositive? _depth13525_)
                                                   (values (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat13523_)
                   (cons (cons _depth13525_ _pat13523_) '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (values (cons 'pattern
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat13523_)
                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (if (gx#identifier? _e13520_)
                                             (values (cons 'term _e13520_) '())
                                             (if (gx#stx-pair? _e13520_)
                                                 (let ((_e1352713534_
                                                        _e13520_))
                                                   (let ((_E1352913538_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _e1352713534_))))
                                                     (let ((_E1352813617_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e1352713534_)
                          (let ((_e1353013542_ (gx#syntax-e _e1352713534_)))
                            (let ((_hd1353113545_ (##car _e1353013542_))
                                  (_tl1353213547_ (##cdr _e1353013542_)))
                              (let ((_hd13550_ _hd1353113545_))
                                (let ((_rest13552_ _tl1353213547_))
                                  (if '#t
                                      (if (_is-e?13521_ _hd13550_)
                                          (let ((_e1355313560_ _rest13552_))
                                            (let ((_E1355513564_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad ellipsis syntax"
                                                      _stx13467_
                                                      _e13520_))))
                                              (let ((_E1355413578_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e1355313560_)
                                                           (let ((_e1355613568_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e1355313560_)))
                     (let ((_hd1355713571_ (##car _e1355613568_))
                           (_tl1355813573_ (##cdr _e1355613568_)))
                       (let ((_rest13576_ _hd1355713571_))
                         (if (gx#stx-null? _tl1355813573_)
                             (if '#t
                                 (_recur13515_ _rest13576_ false)
                                 (_E1355513564_))
                             (_E1355513564_)))))
                   (_E1355513564_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E1355413578_)))))
                                          ((letrec ((_lp13582_
                                                     (lambda (_rest13584_
                                                              _depth13585_)
                                                       (let ((_e1358613593_
                                                              _rest13584_))
                                                         (let ((_E1358813597_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (fxpositive? _depth13585_)
                              (_make-splice13514_
                               _e13520_
                               _depth13585_
                               (_recur13515_ _hd13550_ _is-e?13521_)
                               (_recur13515_ _rest13584_ _is-e?13521_))
                              (_make-cons13513_
                               (_recur13515_ _hd13550_ _is-e?13521_)
                               (_recur13515_ _rest13584_ _is-e?13521_))))))
                   (let ((_E1358713613_
                          (lambda ()
                            (if (gx#stx-pair? _e1358613593_)
                                (let ((_e1358913601_
                                       (gx#syntax-e _e1358613593_)))
                                  (let ((_hd1359013604_ (##car _e1358913601_))
                                        (_tl1359113606_ (##cdr _e1358913601_)))
                                    (let ((_rest-hd13609_ _hd1359013604_))
                                      (let ((_rest-tl13611_ _tl1359113606_))
                                        (if '#t
                                            (if (_is-e?13521_ _rest-hd13609_)
                                                (_lp13582_
                                                 _rest-tl13611_
                                                 (fx+ _depth13585_ '1))
                                                (if (fxpositive? _depth13585_)
                                                    (_make-splice13514_
                                                     _e13520_
                                                     _depth13585_
                                                     (_recur13515_
                                                      _hd13550_
                                                      _is-e?13521_)
                                                     (_recur13515_
                                                      _rest13584_
                                                      _is-e?13521_))
                                                    (_make-cons13513_
                                                     (_recur13515_
                                                      _hd13550_
                                                      _is-e?13521_)
                                                     (_recur13515_
                                                      _rest13584_
                                                      _is-e?13521_))))
                                            (_E1358813597_))))))
                                (_E1358813597_)))))
                     (let () (_E1358713613_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _lp13582_)
                                           _rest13552_
                                           '0))
                                      (_E1352913538_))))))
                          (_E1352913538_)))))
               (let () (_E1352813617_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-vector? _e13520_)
                                                     (let ((_g13863_
                                                            (_recur13515_
                                                             (vector->list
                                                              (gx#stx-unwrap__0
                                                               _e13520_))
                                                             _is-e?13521_)))
                                                       (begin
                                                         (let ((_g13864_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g13863_)))
                   (if (not (fx= _g13864_ 2))
                       (error "Context expects 2 values" _g13864_)))
                 (let ((_e13621_ (values-ref _g13863_ 0))
                       (_vars13622_ (values-ref _g13863_ 1)))
                   (values (cons 'vector _e13621_) _vars13622_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-box? _e13520_)
                                                         (let ((_g13865_
                                                                (_recur13515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (unbox (gx#stx-unwrap__0 _e13520_))
                         _is-e?13521_)))
                   (begin
                     (let ((_g13866_ (values-count _g13865_)))
                       (if (not (fx= _g13866_ 2))
                           (error "Context expects 2 values" _g13866_)))
                     (let ((_e13624_ (values-ref _g13865_ 0))
                           (_vars13625_ (values-ref _g13865_ 1)))
                       (values (cons 'box _e13624_) _vars13625_))))
                 (values (cons 'datum _e13520_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       (let ((_g13867_ (_recur13515_ _e13511_ gx#ellipsis?)))
                         (begin
                           (let ((_g13868_ (values-count _g13867_)))
                             (if (not (fx= _g13868_ 2))
                                 (error "Context expects 2 values" _g13868_)))
                           (let ((_tree13517_ (values-ref _g13867_ 0))
                                 (_vars13518_ (values-ref _g13867_ 1)))
                             (if (null? _vars13518_)
                                 _tree13517_
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Missing ellipsis"
                                  _stx13467_
                                  _vars13518_)))))))))))
          (let ((_e1347113481_ _stx13467_))
            (let ((_E1347313485_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _stx13467_))))
              (let ((_E1347213507_
                     (lambda ()
                       (if (gx#stx-pair? _e1347113481_)
                           (let ((_e1347413489_ (gx#syntax-e _e1347113481_)))
                             (let ((_hd1347513492_ (##car _e1347413489_))
                                   (_tl1347613494_ (##cdr _e1347413489_)))
                               (if (gx#stx-pair? _tl1347613494_)
                                   (let ((_e1347713497_
                                          (gx#syntax-e _tl1347613494_)))
                                     (let ((_hd1347813500_
                                            (##car _e1347713497_))
                                           (_tl1347913502_
                                            (##cdr _e1347713497_)))
                                       (let ((_form13505_ _hd1347813500_))
                                         (if (gx#stx-null? _tl1347913502_)
                                             (if '#t
                                                 (gx#stx-wrap-source
                                                  (_generate13469_
                                                   (_parse13470_ _form13505_))
                                                  (gx#stx-source _stx13467_))
                                                 (_E1347313485_))
                                             (_E1347313485_)))))
                                   (_E1347313485_))))
                           (_E1347313485_)))))
                (let () (_E1347213507_)))))))))
  (begin
    (define gx#macro-expand-syntax-case__opt-lambda12737
      (lambda (_stx12739_ _identifier=?12740_ _unwrap-e12741_ _wrap-e12742_)
        (let ((_generate-body12745_
               (lambda (_bindings13289_ _body13290_)
                 ((letrec ((_recur13292_
                            (lambda (_rest13294_)
                              (let ((_rest1329513303_ _rest13294_))
                                (let ((_E1329813307_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest1329513303_))))
                                  (let ((_else1329713311_
                                         (lambda () _body13290_)))
                                    (let ((_K1329913317_
                                           (lambda (_rest13314_ _hd13315_)
                                             (gx#core-list
                                              'let-values
                                              (cons _hd13315_ '())
                                              (_recur13292_ _rest13314_)))))
                                      (if (##pair? _rest1329513303_)
                                          (let ((_hd1330013320_
                                                 (##car _rest1329513303_))
                                                (_tl1330113322_
                                                 (##cdr _rest1329513303_)))
                                            (let ((_hd13325_ _hd1330013320_))
                                              (let ((_rest13327_
                                                     _tl1330113322_))
                                                (_K1329913317_
                                                 _rest13327_
                                                 _hd13325_))))
                                          (_else1329713311_)))))))))
                    _recur13292_)
                  _bindings13289_))))
          (let ((_generate-match12747_
                 (lambda (_where12911_
                          _target12912_
                          _hd12913_
                          _mvars12914_
                          _K12915_
                          _E12916_)
                   (let ((_BUG12918_
                          (lambda (_q13150_)
                            (error '"BUG: syntax-case; generate"
                                   _stx12739_
                                   _hd12913_
                                   _q13150_))))
                     (let ((_splice-rlen12920_
                            (lambda (_e12966_)
                              ((letrec ((_lp12968_
                                         (lambda (_e12970_ _n12971_)
                                           (let ((_e1297212979_ _e12970_))
                                             (let ((_E1297412983_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _e1297212979_))))
                                               (let ((_K1297512992_
                                                      (lambda (_body12986_
                                                               _tag12987_)
                                                        (let ((_$e12989_
                                                               _tag12987_))
                                                          (if (eq? _$e12989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'splice)
                      (gx#raise-syntax-error
                       '#f
                       '"Ambiguous pattern"
                       _stx12739_
                       _where12911_)
                      (if (eq? _$e12989_ 'cons)
                          (_lp12968_ (cdr _body12986_) (fx+ _n12971_ '1))
                          _n12971_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _e1297212979_)
                                                     (let ((_hd1297612995_
                                                            (##car _e1297212979_))
                                                           (_tl1297712997_
                                                            (##cdr _e1297212979_)))
                                                       (let ((_tag13000_
                                                              _hd1297612995_))
                                                         (let ((_body13002_
                                                                _tl1297712997_))
                                                           (_K1297512992_
                                                            _body13002_
                                                            _tag13000_))))
                                                     (_E1297412983_))))))))
                                 _lp12968_)
                               _e12966_
                               '0))))
                       (let ((_splice-vars12921_
                              (lambda (_e12928_)
                                ((letrec ((_recur12930_
                                           (lambda (_e12932_ _vars12933_)
                                             (let ((_e1293412941_ _e12932_))
                                               (let ((_E1293612945_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _e1293412941_))))
                                                 (let ((_K1293712954_
                                                        (lambda (_body12948_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tag12949_)
                  (let ((_$e12951_ _tag12949_))
                    (if (eq? _$e12951_ 'var)
                        (cons _body12948_ _vars12933_)
                        (if (memq _$e12951_ '(cons splice))
                            (_recur12930_
                             (cdr _body12948_)
                             (_recur12930_ (car _body12948_) _vars12933_))
                            (if (memq _$e12951_ '(vector box))
                                (_recur12930_ _body12948_ _vars12933_)
                                _vars12933_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##pair? _e1293412941_)
                                                       (let ((_hd1293812957_
                                                              (##car _e1293412941_))
                                                             (_tl1293912959_
                                                              (##cdr _e1293412941_)))
                                                         (let ((_tag12962_
                                                                _hd1293812957_))
                                                           (let ((_body12964_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1293912959_))
                     (_K1293712954_ _body12964_ _tag12962_))))
               (_E1293612945_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _recur12930_)
                                 _e12928_
                                 '()))))
                         (let ((_make-body12922_
                                (lambda (_vars12924_)
                                  (cons _K12915_
                                        (map (lambda (_mvar12926_)
                                               (assgetq (car _mvar12926_)
                                                        _vars12924_
                                                        _BUG12918_))
                                             _mvars12914_)))))
                           (letrec ((_recur12919_
                                     (lambda (_e13004_
                                              _vars13005_
                                              _target13006_
                                              _E13007_
                                              _k13008_)
                                       (let ((_e1300913016_ _e13004_))
                                         (let ((_E1301113020_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _e1300913016_))))
                                           (let ((_K1301213138_
                                                  (lambda (_body13023_
                                                           _tag13024_)
                                                    (let ((_$e13026_
                                                           _tag13024_))
                                                      (if (eq? _$e13026_ 'any)
                                                          (_k13008_
                                                           _vars13005_)
                                                          (if (eq? _$e13026_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'id)
                      (gx#core-list
                       'if
                       (gx#core-list 'identifier? _target13006_)
                       (gx#core-list
                        'if
                        (gx#core-list
                         _identifier=?12740_
                         (gx#core-list _wrap-e12742_ _body13023_)
                         _target13006_)
                        (_k13008_ _vars13005_)
                        _E13007_)
                       _E13007_)
                      (if (eq? _$e13026_ 'var)
                          (_k13008_
                           (cons (cons _body13023_ _target13006_) _vars13005_))
                          (if (eq? _$e13026_ 'cons)
                              (let ((_$e13029_ (gx#genident__1 'e))
                                    (_$hd13030_ (gx#genident__1 'hd))
                                    (_$tl13031_ (gx#genident__1 'tl)))
                                (gx#core-list
                                 'if
                                 (gx#core-list 'stx-pair? _target13006_)
                                 (gx#core-list
                                  'let-values
                                  (cons (cons (cons _$e13029_ '())
                                              (cons (gx#core-list
                                                     _unwrap-e12741_
                                                     _target13006_)
                                                    '()))
                                        '())
                                  (gx#core-list
                                   'let-values
                                   (cons (cons (cons _$hd13030_ '())
                                               (cons (gx#core-list
                                                      '##car
                                                      _$e13029_)
                                                     '()))
                                         (cons (cons (cons _$tl13031_ '())
                                                     (cons (gx#core-list
                                                            '##cdr
                                                            _$e13029_)
                                                           '()))
                                               '()))
                                   (let ((_body1303213039_ _body13023_))
                                     (let ((_E1303413043_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _body1303213039_))))
                                       (let ((_K1303513051_
                                              (lambda (_tl13046_ _hd13047_)
                                                (_recur12919_
                                                 _hd13047_
                                                 _vars13005_
                                                 _$hd13030_
                                                 _E13007_
                                                 (lambda (_vars13049_)
                                                   (_recur12919_
                                                    _tl13046_
                                                    _vars13049_
                                                    _$tl13031_
                                                    _E13007_
                                                    _k13008_))))))
                                         (if (##pair? _body1303213039_)
                                             (let ((_hd1303613054_
                                                    (##car _body1303213039_))
                                                   (_tl1303713056_
                                                    (##cdr _body1303213039_)))
                                               (let ((_hd13059_
                                                      _hd1303613054_))
                                                 (let ((_tl13061_
                                                        _tl1303713056_))
                                                   (_K1303513051_
                                                    _tl13061_
                                                    _hd13059_))))
                                             (_E1303413043_)))))))
                                 _E13007_))
                              (if (eq? _$e13026_ 'splice)
                                  (let ((_body1306213069_ _body13023_))
                                    (let ((_E1306413073_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _body1306213069_))))
                                      (let ((_K1306513122_
                                             (lambda (_tl13076_ _hd13077_)
                                               (let ((_rlen13079_
                                                      (_splice-rlen12920_
                                                       _tl13076_)))
                                                 (let ((_$target13081_
                                                        (gx#genident__1
                                                         'target)))
                                                   (let ((_$hd13083_
                                                          (gx#genident__1
                                                           'hd)))
                                                     (let ((_$tl13085_
                                                            (gx#genident__1
                                                             'tl)))
                                                       (let ((_$lp13087_
                                                              (gx#genident__1
                                                               'loop)))
                                                         (let ((_$lp-e13089_
                                                                (gx#genident__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'e)))
                   (let ((_$lp-hd13091_ (gx#genident__1 'lp-hd)))
                     (let ((_$lp-tl13093_ (gx#genident__1 'lp-tl)))
                       (let ((_svars13095_ (_splice-vars12921_ _hd13077_)))
                         (let ((_lvars13097_ (gx#gentemps _svars13095_)))
                           (let ((_tlvars13099_ (gx#gentemps _svars13095_)))
                             (let ((_linit13103_
                                    (map (lambda (_var13101_)
                                           (gx#core-list 'quote '()))
                                         _lvars13097_)))
                               (let ()
                                 (let ((_make-loop13106_
                                        (lambda (_vars13108_)
                                          (gx#core-list
                                           'letrec-values
                                           (cons (cons (cons _$lp13087_ '())
                                                       (cons (gx#core-list
                                                              'lambda%
                                                              (cons _$hd13083_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _lvars13097_)
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _$hd13083_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$lp-e13089_ '())
                                    (cons (gx#core-list
                                           _unwrap-e12741_
                                           _$hd13083_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$lp-hd13091_ '())
                                     (cons (gx#core-list '##car _$lp-e13089_)
                                           '()))
                               (cons (cons (cons _$lp-tl13093_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$lp-e13089_)
                                                 '()))
                                     '()))
                         (_recur12919_
                          _hd13077_
                          '()
                          _$lp-hd13091_
                          _E13007_
                          (lambda (_hdvars13110_)
                            (cons* _$lp13087_
                                   _$lp-tl13093_
                                   (map (lambda (_svar13112_ _lvar13113_)
                                          (gx#core-list
                                           'cons
                                           (assgetq _svar13112_
                                                    _hdvars13110_
                                                    _BUG12918_)
                                           _lvar13113_))
                                        _svars13095_
                                        _lvars13097_))))))
                       (gx#core-list
                        'let-values
                        (map (lambda (_lvar13115_ _tlvar13116_)
                               (cons (cons _tlvar13116_ '())
                                     (cons (gx#core-list 'reverse _lvar13115_)
                                           '())))
                             _lvars13097_
                             _tlvars13099_)
                        (_k13008_
                         (foldl (lambda (_svar13118_ _tlvar13119_ _r13120_)
                                  (cons (cons _svar13118_ _tlvar13119_)
                                        _r13120_))
                                _vars13108_
                                _svars13095_
                                _tlvars13099_)))))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons* _$lp13087_
                                                  _$target13081_
                                                  _linit13103_)))))
                                   (gx#core-list
                                    'if
                                    (gx#core-list
                                     'stx-pair/null?
                                     _target13006_)
                                    (gx#core-list
                                     'if
                                     (gx#core-list
                                      'fx>=
                                      (gx#core-list 'stx-length _target13006_)
                                      _rlen13079_)
                                     (gx#core-list
                                      'let-values
                                      (cons (cons (cons _$target13081_
                                                        (cons _$tl13085_ '()))
                                                  (cons (gx#core-list
                                                         'syntax-split-splice
                                                         _target13006_
                                                         _rlen13079_)
                                                        '()))
                                            '())
                                      (_recur12919_
                                       _tl13076_
                                       _vars13005_
                                       _$tl13085_
                                       _E13007_
                                       _make-loop13106_))
                                     _E13007_)
                                    _E13007_))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _body1306213069_)
                                            (let ((_hd1306613125_
                                                   (##car _body1306213069_))
                                                  (_tl1306713127_
                                                   (##cdr _body1306213069_)))
                                              (let ((_hd13130_ _hd1306613125_))
                                                (let ((_tl13132_
                                                       _tl1306713127_))
                                                  (_K1306513122_
                                                   _tl13132_
                                                   _hd13130_))))
                                            (_E1306413073_)))))
                                  (if (eq? _$e13026_ 'null)
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-null? _target13006_)
                                       (_k13008_ _vars13005_)
                                       _E13007_)
                                      (if (eq? _$e13026_ 'vector)
                                          (let ((_$e13134_
                                                 (gx#genident__1 'e)))
                                            (gx#core-list
                                             'if
                                             (gx#core-list
                                              'stx-vector?
                                              _target13006_)
                                             (gx#core-list
                                              'let-values
                                              (cons (cons (cons _$e13134_ '())
                                                          (cons (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'vector->list
                         (gx#core-list _unwrap-e12741_ _target13006_))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (_recur12919_
                                               _body13023_
                                               _vars13005_
                                               _$e13134_
                                               _E13007_
                                               _k13008_))
                                             _E13007_))
                                          (if (eq? _$e13026_ 'box)
                                              (let ((_$e13136_
                                                     (gx#genident__1 'e)))
                                                (gx#core-list
                                                 'if
                                                 (gx#core-list
                                                  'stx-box?
                                                  _target13006_)
                                                 (gx#core-list
                                                  'let-values
                                                  (cons (cons (cons _$e13136_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (gx#core-list
                             'unbox
                             (gx#core-list _unwrap-e12741_ _target13006_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur12919_
                                                   _body13023_
                                                   _vars13005_
                                                   _$e13136_
                                                   _E13007_
                                                   _k13008_))
                                                 _E13007_))
                                              (if (eq? _$e13026_ 'datum)
                                                  (gx#core-list
                                                   'if
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target13006_)
                                                   (gx#core-list
                                                    'if
                                                    (gx#core-list
                                                     'equal?
                                                     (gx#core-list
                                                      'stx-e
                                                      _target13006_)
                                                     _body13023_)
                                                    (_k13008_ _vars13005_)
                                                    _E13007_)
                                                   _E13007_)
                                                  (_BUG12918_
                                                   _e13004_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _e1300913016_)
                                                 (let ((_hd1301313141_
                                                        (##car _e1300913016_))
                                                       (_tl1301413143_
                                                        (##cdr _e1300913016_)))
                                                   (let ((_tag13146_
                                                          _hd1301313141_))
                                                     (let ((_body13148_
                                                            _tl1301413143_))
                                                       (_K1301213138_
                                                        _body13148_
                                                        _tag13146_))))
                                                 (_E1301113020_))))))))
                             (_recur12919_
                              _hd12913_
                              '()
                              _target12912_
                              _E12916_
                              _make-body12922_)))))))))
            (let ((_parse-clause12748_
                   (lambda (_hd12817_ _ids12818_)
                     ((letrec ((_recur12820_
                                (lambda (_e12822_ _vars12823_ _depth12824_)
                                  (if (gx#identifier? _e12822_)
                                      (if (gx#underscore? _e12822_)
                                          (values '(any) _vars12823_)
                                          (if (gx#ellipsis? _e12822_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Misplaced ellipsis"
                                               _stx12739_
                                               _hd12817_)
                                              (if (find (lambda (_id12826_)
                                                          (gx#bound-identifier=?
                                                           _e12822_
                                                           _id12826_))
                                                        _ids12818_)
                                                  (values (cons 'id _e12822_)
                                                          _vars12823_)
                                                  (if (find (lambda (_var12828_)
                                                              (gx#bound-identifier=?
                                                               _e12822_
                                                               (car _var12828_)))
                                                            _vars12823_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Duplicate pattern variable"
                                                       _stx12739_
                                                       _e12822_)
                                                      (values (cons 'var
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _e12822_)
                      (cons (cons _e12822_ _depth12824_) _vars12823_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _e12822_)
                                          (let ((_e1282912836_ _e12822_))
                                            (let ((_E1283112840_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _e1282912836_))))
                                              (let ((_E1283012901_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e1282912836_)
                                                           (let ((_e1283212844_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e1282912836_)))
                     (let ((_hd1283312847_ (##car _e1283212844_))
                           (_tl1283412849_ (##cdr _e1283212844_)))
                       (let ((_hd12852_ _hd1283312847_))
                         (let ((_rest12854_ _tl1283412849_))
                           (if '#t
                               (let ((_make-pair12869_
                                      (lambda (_tag12856_ _hd12857_ _tl12858_)
                                        (let ((_hd-depth12860_
                                               (if (eq? _tag12856_ 'splice)
                                                   (fx+ _depth12824_ '1)
                                                   _depth12824_)))
                                          (let ((_g13879_
                                                 (_recur12820_
                                                  _hd12857_
                                                  _vars12823_
                                                  _hd-depth12860_)))
                                            (begin
                                              (let ((_g13880_
                                                     (values-count _g13879_)))
                                                (if (not (fx= _g13880_ 2))
                                                    (error "Context expects 2 values"
                                                           _g13880_)))
                                              (let ((_hd12862_
                                                     (values-ref _g13879_ 0))
                                                    (_vars12863_
                                                     (values-ref _g13879_ 1)))
                                                (let ((_g13881_
                                                       (_recur12820_
                                                        _tl12858_
                                                        _vars12863_
                                                        _depth12824_)))
                                                  (begin
                                                    (let ((_g13882_
                                                           (values-count
                                                            _g13881_)))
                                                      (if (not (fx= _g13882_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g13882_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_tl12865_
                                                           (values-ref
                                                            _g13881_
                                                            0))
                                                          (_vars12866_
                                                           (values-ref
                                                            _g13881_
                                                            1)))
                                                      (let ()
                                                        (values (cons* _tag12856_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd12862_
                               _tl12865_)
                        _vars12866_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (let ((_e1287012877_ _rest12854_))
                                   (let ((_E1287212881_
                                          (lambda ()
                                            (_make-pair12869_
                                             'cons
                                             _hd12852_
                                             _rest12854_))))
                                     (let ((_E1287112897_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1287012877_)
                                                  (let ((_e1287312885_
                                                         (gx#syntax-e
                                                          _e1287012877_)))
                                                    (let ((_hd1287412888_
                                                           (##car _e1287312885_))
                                                          (_tl1287512890_
                                                           (##cdr _e1287312885_)))
                                                      (let ((_rest-hd12893_
                                                             _hd1287412888_))
                                                        (let ((_rest-tl12895_
                                                               _tl1287512890_))
                                                          (if '#t
                                                              (if (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest-hd12893_)
                          (_make-pair12869_ 'splice _hd12852_ _rest-tl12895_)
                          (_make-pair12869_ 'cons _hd12852_ _rest12854_))
                      (_E1287212881_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1287212881_)))))
                                       (let () (_E1287112897_))))))
                               (_E1283112840_))))))
                   (_E1283112840_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E1283012901_)))))
                                          (if (gx#stx-null? _e12822_)
                                              (values '(null) _vars12823_)
                                              (if (gx#stx-vector? _e12822_)
                                                  (let ((_g13883_
                                                         (_recur12820_
                                                          (vector->list
                                                           (gx#syntax-e
                                                            _e12822_))
                                                          _vars12823_
                                                          _depth12824_)))
                                                    (begin
                                                      (let ((_g13884_
                                                             (values-count
                                                              _g13883_)))
                                                        (if (not (fx= _g13884_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g13884_)))
              (let ((_e12905_ (values-ref _g13883_ 0))
                    (_vars12906_ (values-ref _g13883_ 1)))
                (values (cons 'vector _e12905_) _vars12906_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e12822_)
                                                      (let ((_g13885_
                                                             (_recur12820_
                                                              (unbox (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e12822_))
                      _vars12823_
                      _depth12824_)))
                (begin
                  (let ((_g13886_ (values-count _g13885_)))
                    (if (not (fx= _g13886_ 2))
                        (error "Context expects 2 values" _g13886_)))
                  (let ((_e12908_ (values-ref _g13885_ 0))
                        (_vars12909_ (values-ref _g13885_ 1)))
                    (values (cons 'box _e12908_) _vars12909_))))
              (if (gx#stx-datum? _e12822_)
                  (values (cons 'datum (gx#stx-e _e12822_)) _vars12823_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad pattern"
                   _stx12739_
                   _e12822_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        _recur12820_)
                      _hd12817_
                      '()
                      '0))))
              (let ((_generate-clause12746_
                     (lambda (_target13152_ _ids13153_ _clause13154_ _E13155_)
                       (let ((_generate113157_
                              (lambda (_hd13244_ _fender13245_ _body13246_)
                                (let ((_g13877_
                                       (_parse-clause12748_
                                        _hd13244_
                                        _ids13153_)))
                                  (begin
                                    (let ((_g13878_ (values-count _g13877_)))
                                      (if (not (fx= _g13878_ 2))
                                          (error "Context expects 2 values"
                                                 _g13878_)))
                                    (let ((_e13248_ (values-ref _g13877_ 0))
                                          (_mvars13249_
                                           (values-ref _g13877_ 1)))
                                      (let ((_pvars13251_
                                             (map gx#syntax-local-rewrap
                                                  (gx#gentemps _mvars13249_))))
                                        (let ((_E13253_
                                               (cons _E13155_
                                                     (cons _target13152_
                                                           '()))))
                                          (let ((_K13286_
                                                 (gx#core-list
                                                  'lambda%
                                                  _pvars13251_
                                                  (gx#core-list
                                                   'let-syntax
                                                   (map (lambda (_mvar13255_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pvar13256_)
                  (let ((_mvar1325713264_ _mvar13255_))
                    (let ((_E1325913268_
                           (lambda ()
                             (error '"No clause matching" _mvar1325713264_))))
                      (let ((_K1326013274_
                             (lambda (_depth13271_ _id13272_)
                               (cons _id13272_
                                     (cons (gx#core-list
                                            'make-syntax-pattern
                                            (gx#core-list 'quote _id13272_)
                                            (gx#core-list 'quote _pvar13256_)
                                            _depth13271_)
                                           '())))))
                        (if (##pair? _mvar1325713264_)
                            (let ((_hd1326113277_ (##car _mvar1325713264_))
                                  (_tl1326213279_ (##cdr _mvar1325713264_)))
                              (let ((_id13282_ _hd1326113277_))
                                (let ((_depth13284_ _tl1326213279_))
                                  (_K1326013274_ _depth13284_ _id13282_))))
                            (_E1325913268_))))))
                _mvars13249_
                _pvars13251_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (eq? _fender13245_ '#t)
                                                       _body13246_
                                                       (gx#core-list
                                                        'if
                                                        _fender13245_
                                                        _body13246_
                                                        _E13253_))))))
                                            (let ()
                                              (_generate-match12747_
                                               _hd13244_
                                               _target13152_
                                               _e13248_
                                               _mvars13249_
                                               _K13286_
                                               _E13253_)))))))))))
                         (let ((_e1315813178_ _clause13154_))
                           (let ((_E1316713182_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _e1315813178_))))
                             (let ((_E1316013216_
                                    (lambda ()
                                      (if (gx#stx-pair? _e1315813178_)
                                          (let ((_e1316813186_
                                                 (gx#syntax-e _e1315813178_)))
                                            (let ((_hd1316913189_
                                                   (##car _e1316813186_))
                                                  (_tl1317013191_
                                                   (##cdr _e1316813186_)))
                                              (let ((_hd13194_ _hd1316913189_))
                                                (if (gx#stx-pair?
                                                     _tl1317013191_)
                                                    (let ((_e1317113196_
                                                           (gx#syntax-e
                                                            _tl1317013191_)))
                                                      (let ((_hd1317213199_
                                                             (##car _e1317113196_))
                                                            (_tl1317313201_
                                                             (##cdr _e1317113196_)))
                                                        (let ((_fender13204_
                                                               _hd1317213199_))
                                                          (if (gx#stx-pair?
                                                               _tl1317313201_)
                                                              (let ((_e1317413206_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1317313201_)))
                        (let ((_hd1317513209_ (##car _e1317413206_))
                              (_tl1317613211_ (##cdr _e1317413206_)))
                          (let ((_body13214_ _hd1317513209_))
                            (if (gx#stx-null? _tl1317613211_)
                                (if '#t
                                    (_generate113157_
                                     _hd13194_
                                     _fender13204_
                                     _body13214_)
                                    (_E1316713182_))
                                (_E1316713182_)))))
                      (_E1316713182_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1316713182_)))))
                                          (_E1316713182_)))))
                               (let ((_E1315913240_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1315813178_)
                                            (let ((_e1316113220_
                                                   (gx#syntax-e
                                                    _e1315813178_)))
                                              (let ((_hd1316213223_
                                                     (##car _e1316113220_))
                                                    (_tl1316313225_
                                                     (##cdr _e1316113220_)))
                                                (let ((_hd13228_
                                                       _hd1316213223_))
                                                  (if (gx#stx-pair?
                                                       _tl1316313225_)
                                                      (let ((_e1316413230_
                                                             (gx#syntax-e
                                                              _tl1316313225_)))
                                                        (let ((_hd1316513233_
                                                               (##car _e1316413230_))
                                                              (_tl1316613235_
                                                               (##cdr _e1316413230_)))
                                                          (let ((_body13238_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1316513233_))
                    (if (gx#stx-null? _tl1316613235_)
                        (if '#t
                            (_generate113157_ _hd13228_ '#t _body13238_)
                            (_E1316013216_))
                        (_E1316013216_)))))
              (_E1316013216_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1316013216_)))))
                                 (let () (_E1315913240_))))))))))
                (let ((_generate-bindings12744_
                       (lambda (_target13329_
                                _ids13330_
                                _clauses13331_
                                _clause-ids13332_
                                _E13333_)
                         (let ((_generate113335_
                                (lambda (_clause13434_
                                         _clause-id13435_
                                         _E13436_)
                                  (cons (cons _clause-id13435_ '())
                                        (cons (gx#core-list
                                               'lambda%
                                               (cons _target13329_ '())
                                               (_generate-clause12746_
                                                _target13329_
                                                _ids13330_
                                                _clause13434_
                                                _E13436_))
                                              '())))))
                           ((letrec ((_lp13337_
                                      (lambda (_rest13339_
                                               _rest-ids13340_
                                               _bindings13341_)
                                        (let ((_rest1334213350_ _rest13339_))
                                          (let ((_E1334513354_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _rest1334213350_))))
                                            (let ((_else1334413358_
                                                   (lambda ()
                                                     _bindings13341_)))
                                              (let ((_K1334613422_
                                                     (lambda (_rest13361_
                                                              _clause13362_)
                                                       (let ((_rest-ids1336313370_
                                                              _rest-ids13340_))
                                                         (let ((_E1336513374_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (error '"No clause matching" _rest-ids1336313370_))))
                   (let ((_K1336613410_
                          (lambda (_rest-ids13377_ _clause-id13378_)
                            (let ((_rest-ids1337913387_ _rest-ids13377_))
                              (let ((_E1338213391_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _rest-ids1337913387_))))
                                (let ((_else1338113395_
                                       (lambda ()
                                         (cons (_generate113335_
                                                _clause13362_
                                                _clause-id13378_
                                                _E13333_)
                                               _bindings13341_))))
                                  (let ((_K1338313400_
                                         (lambda (_next-clause-id13398_)
                                           (_lp13337_
                                            _rest13361_
                                            _rest-ids13377_
                                            (cons (_generate113335_
                                                   _clause13362_
                                                   _clause-id13378_
                                                   _next-clause-id13398_)
                                                  _bindings13341_)))))
                                    (if (##pair? _rest-ids1337913387_)
                                        (let ((_hd1338413403_
                                               (##car _rest-ids1337913387_))
                                              (_tl1338513405_
                                               (##cdr _rest-ids1337913387_)))
                                          (let ((_next-clause-id13408_
                                                 _hd1338413403_))
                                            (_K1338313400_
                                             _next-clause-id13408_)))
                                        (_else1338113395_)))))))))
                     (if (##pair? _rest-ids1336313370_)
                         (let ((_hd1336713413_ (##car _rest-ids1336313370_))
                               (_tl1336813415_ (##cdr _rest-ids1336313370_)))
                           (let ((_clause-id13418_ _hd1336713413_))
                             (let ((_rest-ids13420_ _tl1336813415_))
                               (_K1336613410_
                                _rest-ids13420_
                                _clause-id13418_))))
                         (_E1336513374_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (##pair? _rest1334213350_)
                                                    (let ((_hd1334713425_
                                                           (##car _rest1334213350_))
                                                          (_tl1334813427_
                                                           (##cdr _rest1334213350_)))
                                                      (let ((_clause13430_
                                                             _hd1334713425_))
                                                        (let ((_rest13432_
                                                               _tl1334813427_))
                                                          (_K1334613422_
                                                           _rest13432_
                                                           _clause13430_))))
                                                    (_else1334413358_)))))))))
                              _lp13337_)
                            _clauses13331_
                            _clause-ids13332_
                            '())))))
                  (let ((_e1274912762_ _stx12739_))
                    (let ((_E1275112766_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e1274912762_))))
                      (let ((_E1275012813_
                             (lambda ()
                               (if (gx#stx-pair? _e1274912762_)
                                   (let ((_e1275212770_
                                          (gx#syntax-e _e1274912762_)))
                                     (let ((_hd1275312773_
                                            (##car _e1275212770_))
                                           (_tl1275412775_
                                            (##cdr _e1275212770_)))
                                       (if (gx#stx-pair? _tl1275412775_)
                                           (let ((_e1275512778_
                                                  (gx#syntax-e
                                                   _tl1275412775_)))
                                             (let ((_hd1275612781_
                                                    (##car _e1275512778_))
                                                   (_tl1275712783_
                                                    (##cdr _e1275512778_)))
                                               (let ((_expr12786_
                                                      _hd1275612781_))
                                                 (if (gx#stx-pair?
                                                      _tl1275712783_)
                                                     (let ((_e1275812788_
                                                            (gx#syntax-e
                                                             _tl1275712783_)))
                                                       (let ((_hd1275912791_
                                                              (##car _e1275812788_))
                                                             (_tl1276012793_
                                                              (##cdr _e1275812788_)))
                                                         (let ((_ids12796_
                                                                _hd1275912791_))
                                                           (let ((_clauses12798_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1276012793_))
                     (if '#t
                         (if (not (gx#identifier-list? _ids12796_))
                             (gx#raise-syntax-error
                              '#f
                              '"Bad template identifier list"
                              _stx12739_
                              _ids12796_)
                             (if (not (gx#stx-list? _clauses12798_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _stx12739_)
                                 (let ((_ids12800_
                                        (gx#syntax->list _ids12796_)))
                                   (let ((_clauses12802_
                                          (gx#syntax->list _clauses12798_)))
                                     (let ((_clause-ids12804_
                                            (gx#gentemps _clauses12802_)))
                                       (let ((_E12806_ (gx#genident__0)))
                                         (let ((_target12808_
                                                (gx#genident__0)))
                                           (let ((_first12810_
                                                  (if (null? _clauses12802_)
                                                      _E12806_
                                                      (car _clause-ids12804_))))
                                             (let ()
                                               (gx#stx-wrap-source
                                                (gx#core-list
                                                 'let-values
                                                 (cons (cons (cons _E12806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _target12808_ '())
                            (gx#core-list
                             'raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _target12808_))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_generate-body12745_
                                                  (_generate-bindings12744_
                                                   _target12808_
                                                   _ids12800_
                                                   _clauses12802_
                                                   _clause-ids12804_
                                                   _E12806_)
                                                  (cons _first12810_
                                                        (cons _expr12786_
                                                              '()))))
                                                (gx#stx-source
                                                 _stx12739_)))))))))))
                         (_E1275112766_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1275112766_)))))
                                           (_E1275112766_))))
                                   (_E1275112766_)))))
                        (let () (_E1275012813_))))))))))))
    (begin
      (define gx#macro-expand-syntax-case__0
        (lambda (_stx13441_)
          (let ((_identifier=?13443_ 'free-identifier=?))
            (let ((_unwrap-e13445_ 'syntax-e))
              (let ((_wrap-e13447_ 'quote-syntax))
                (gx#macro-expand-syntax-case__opt-lambda12737
                 _stx13441_
                 _identifier=?13443_
                 _unwrap-e13445_
                 _wrap-e13447_))))))
      (define gx#macro-expand-syntax-case__1
        (lambda (_stx13449_ _identifier=?13450_)
          (let ((_unwrap-e13452_ 'syntax-e))
            (let ((_wrap-e13454_ 'quote-syntax))
              (gx#macro-expand-syntax-case__opt-lambda12737
               _stx13449_
               _identifier=?13450_
               _unwrap-e13452_
               _wrap-e13454_)))))
      (define gx#macro-expand-syntax-case__2
        (lambda (_stx13456_ _identifier=?13457_ _unwrap-e13458_)
          (let ((_wrap-e13460_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda12737
             _stx13456_
             _identifier=?13457_
             _unwrap-e13458_
             _wrap-e13460_))))
      (define gx#macro-expand-syntax-case
        (lambda _g13888_
          (let ((_g13887_ (length _g13888_)))
            (cond ((fx= _g13887_ 1)
                   (apply gx#macro-expand-syntax-case__0 _g13888_))
                  ((fx= _g13887_ 2)
                   (apply gx#macro-expand-syntax-case__1 _g13888_))
                  ((fx= _g13887_ 3)
                   (apply gx#macro-expand-syntax-case__2 _g13888_))
                  ((fx= _g13887_ 4)
                   (apply gx#macro-expand-syntax-case__opt-lambda12737
                          _g13888_))
                  (else (error "No clause matching arguments" _g13888_))))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx12736_)
      (if (gx#identifier? _stx12736_)
          (##structure-instance-of?
           (gx#syntax-local-e__opt-lambda3895 _stx12736_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd12694_ . _rest12695_)
      (let ((_len12697_ (length _hd12694_)))
        ((letrec ((_lp12699_
                   (lambda (_rest12701_)
                     (let ((_rest1270212710_ _rest12701_))
                       (let ((_E1270512714_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1270212710_))))
                         (let ((_else1270412718_ (lambda () '#!void)))
                           (let ((_K1270612724_
                                  (lambda (_rest12721_ _hd12722_)
                                    (if (fx= _len12697_ (length _hd12722_))
                                        (_lp12699_ _rest12721_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Splice length mismatch"
                                         _hd12722_)))))
                             (if (##pair? _rest1270212710_)
                                 (let ((_hd1270712727_
                                        (##car _rest1270212710_))
                                       (_tl1270812729_
                                        (##cdr _rest1270212710_)))
                                   (let ((_hd12732_ _hd1270712727_))
                                     (let ((_rest12734_ _tl1270812729_))
                                       (_K1270612724_ _rest12734_ _hd12732_))))
                                 (_else1270412718_)))))))))
           _lp12699_)
         _rest12695_))))
  (define gx#syntax-split-splice
    (lambda (_stx12652_ _n12653_)
      ((letrec ((_lp12655_
                 (lambda (_rest12657_ _r12658_)
                   (if (gx#stx-pair? _rest12657_)
                       (let ((_g1265912666_ (gx#syntax-e _rest12657_)))
                         (let ((_E1266112670_
                                (lambda ()
                                  (error '"No clause matching"
                                         _g1265912666_))))
                           (let ((_K1266212676_
                                  (lambda (_rest12673_ _hd12674_)
                                    (_lp12655_
                                     _rest12673_
                                     (cons _hd12674_ _r12658_)))))
                             (if (##pair? _g1265912666_)
                                 (let ((_hd1266312679_ (##car _g1265912666_))
                                       (_tl1266412681_ (##cdr _g1265912666_)))
                                   (let ((_hd12684_ _hd1266312679_))
                                     (let ((_rest12686_ _tl1266412681_))
                                       (_K1266212676_ _rest12686_ _hd12684_))))
                                 (_E1266112670_)))))
                       ((letrec ((_lp12688_
                                  (lambda (_n12690_ _l12691_ _r12692_)
                                    (if (null? _l12691_)
                                        (values _l12691_ _r12692_)
                                        (if (fxpositive? _n12690_)
                                            (_lp12688_
                                             (fx- _n12690_ '1)
                                             (cdr _l12691_)
                                             (cons (car _l12691_) _r12692_))
                                            (values (reverse _l12691_)
                                                    _r12692_))))))
                          _lp12688_)
                        _n12653_
                        _r12658_
                        _rest12657_)))))
         _lp12655_)
       _stx12652_
       '()))))
