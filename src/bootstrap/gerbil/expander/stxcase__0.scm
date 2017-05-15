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
    (lambda _$args13736_
      (apply make-struct-instance gx#syntax-pattern::t _$args13736_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self13733_ _stx13734_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx13734_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx13342_)
      (let ((_generate13344_
             (lambda (_e13571_)
               (let ((_BUG13573_
                      (lambda (_q13731_)
                        (error '"BUG: syntax; generate"
                               _stx13342_
                               _e13571_
                               _q13731_))))
                 (let ((_local-pattern-e13574_
                        (lambda (_pat13729_)
                          (gx#syntax-local-rewrap
                           (##structure-ref
                            _pat13729_
                            '2
                            gx#syntax-pattern::t
                            '#f)))))
                   (let ((_getvar13575_
                          (lambda (_q13726_ _vars13727_)
                            (assgetq _q13726_ _vars13727_ _BUG13573_))))
                     (let ((_getarg13576_
                            (lambda (_arg13692_ _vars13693_)
                              (let ((_arg1369413701_ _arg13692_))
                                (let ((_E1369613705_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _arg1369413701_))))
                                  (let ((_K1369713714_
                                         (lambda (_e13708_ _tag13709_)
                                           (let ((_$e13711_ _tag13709_))
                                             (if (eq? _$e13711_ 'ref)
                                                 (_getvar13575_
                                                  _e13708_
                                                  _vars13693_)
                                                 (if (eq? _$e13711_ 'pattern)
                                                     (_local-pattern-e13574_
                                                      _e13708_)
                                                     (_BUG13573_
                                                      _arg13692_)))))))
                                    (if (##pair? _arg1369413701_)
                                        (let ((_hd1369813717_
                                               (##car _arg1369413701_))
                                              (_tl1369913719_
                                               (##cdr _arg1369413701_)))
                                          (let ((_tag13722_ _hd1369813717_))
                                            (let ((_e13724_ _tl1369913719_))
                                              (_K1369713714_
                                               _e13724_
                                               _tag13722_))))
                                        (_E1369613705_))))))))
                       ((letrec ((_recur13578_
                                  (lambda (_e13580_ _vars13581_)
                                    (let ((_e1358213589_ _e13580_))
                                      (let ((_E1358413593_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _e1358213589_))))
                                        (let ((_K1358513680_
                                               (lambda (_body13596_ _tag13597_)
                                                 (let ((_$e13599_ _tag13597_))
                                                   (if (eq? _$e13599_ 'datum)
                                                       (gx#core-list
                                                        'quote
                                                        _body13596_)
                                                       (if (eq? _$e13599_
                                                                'term)
                                                           (gx#core-list
                                                            'datum->syntax
                                                            '#f
                                                            (gx#core-list
                                                             'quote
                                                             _body13596_))
                                                           (if (eq? _$e13599_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'pattern)
                       (_local-pattern-e13574_ _body13596_)
                       (if (eq? _$e13599_ 'ref)
                           (_getvar13575_ _body13596_ _vars13581_)
                           (if (eq? _$e13599_ 'cons)
                               (gx#core-list
                                'cons
                                (_recur13578_ (car _body13596_) _vars13581_)
                                (_recur13578_ (cdr _body13596_) _vars13581_))
                               (if (eq? _$e13599_ 'vector)
                                   (gx#core-list
                                    'list->vector
                                    (_recur13578_ _body13596_ _vars13581_))
                                   (if (eq? _$e13599_ 'box)
                                       (gx#core-list
                                        'box
                                        (_recur13578_ _body13596_ _vars13581_))
                                       (if (eq? _$e13599_ 'splice)
                                           (let ((_body1360113612_
                                                  _body13596_))
                                             (let ((_E1360313616_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _body1360113612_))))
                                               (let ((_K1360413654_
                                                      (lambda (_args13619_
                                                               _iv13620_
                                                               _hd13621_
                                                               _depth13622_)
                                                        (let ((_targets13628_
                                                               (map (lambda (_g1362313625_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_getarg13576_ _g1362313625_ _vars13581_))
                            _args13619_)))
                  (let ((_fold-in13630_ (gx#gentemps _args13619_)))
                    (let ((_fold-out13632_ (gx#genident__0)))
                      (let ((_lambda-args13634_
                             (foldr1 cons
                                     (cons _fold-out13632_ '())
                                     _fold-in13630_)))
                        (let ((_lambda-body13651_
                               (if (fx> _depth13622_ '1)
                                   (let ((_r-args13642_
                                          (map (lambda (_arg13636_)
                                                 (cons 'ref (cdr _arg13636_)))
                                               _args13619_))
                                         (_r-vars13643_
                                          (foldr (lambda (_arg13638_
                                                          _var13639_
                                                          _r13640_)
                                                   (cons (cons (cdr _arg13638_)
                                                               _var13639_)
                                                         _r13640_))
                                                 _vars13581_
                                                 _args13619_
                                                 _fold-in13630_)))
                                     (_recur13578_
                                      (cons* 'splice
                                             (fx- _depth13622_ '1)
                                             _hd13621_
                                             (cons 'var _fold-out13632_)
                                             _r-args13642_)
                                      _r-vars13643_))
                                   (let ((_hd-vars13649_
                                          (foldr (lambda (_arg13645_
                                                          _var13646_
                                                          _r13647_)
                                                   (cons (cons (cdr _arg13645_)
                                                               _var13646_)
                                                         _r13647_))
                                                 _vars13581_
                                                 _args13619_
                                                 _fold-in13630_)))
                                     (gx#core-list
                                      'cons
                                      (_recur13578_ _hd13621_ _hd-vars13649_)
                                      _fold-out13632_)))))
                          (let ()
                            (gx#core-list
                             'begin
                             (if (fx> (length _targets13628_) '1)
                                 (gx#core-cons*
                                  'syntax-check-splice-targets
                                  _targets13628_)
                                 '#!void)
                             (gx#core-cons*
                              'foldr
                              (gx#core-list
                               'lambda%
                               _lambda-args13634_
                               _lambda-body13651_)
                              (_recur13578_ _iv13620_ _vars13581_)
                              _targets13628_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _body1360113612_)
                                                     (let ((_hd1360513657_
                                                            (##car _body1360113612_))
                                                           (_tl1360613659_
                                                            (##cdr _body1360113612_)))
                                                       (let ((_depth13662_
                                                              _hd1360513657_))
                                                         (if (##pair? _tl1360613659_)
                                                             (let ((_hd1360713664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##car _tl1360613659_))
                           (_tl1360813666_ (##cdr _tl1360613659_)))
                       (let ((_hd13669_ _hd1360713664_))
                         (if (##pair? _tl1360813666_)
                             (let ((_hd1360913671_ (##car _tl1360813666_))
                                   (_tl1361013673_ (##cdr _tl1360813666_)))
                               (let ((_iv13676_ _hd1360913671_))
                                 (let ((_args13678_ _tl1361013673_))
                                   (_K1360413654_
                                    _args13678_
                                    _iv13676_
                                    _hd13669_
                                    _depth13662_))))
                             (_E1360313616_))))
                     (_E1360313616_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1360313616_)))))
                                           (if (eq? _$e13599_ 'var)
                                               _body13596_
                                               (_BUG13573_
                                                _e13580_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _e1358213589_)
                                              (let ((_hd1358613683_
                                                     (##car _e1358213589_))
                                                    (_tl1358713685_
                                                     (##cdr _e1358213589_)))
                                                (let ((_tag13688_
                                                       _hd1358613683_))
                                                  (let ((_body13690_
                                                         _tl1358713685_))
                                                    (_K1358513680_
                                                     _body13690_
                                                     _tag13688_))))
                                              (_E1358413593_))))))))
                          _recur13578_)
                        _e13571_
                        '()))))))))
        (let ((_parse13345_
               (lambda (_e13386_)
                 (let ((_make-cons13388_
                        (lambda (_hd13563_ _tl13564_)
                          (let ((_g13748_ _hd13563_) (_g13750_ _tl13564_))
                            (begin
                              (let ((_g13749_ (values-count _g13748_)))
                                (if (not (fx= _g13749_ 2))
                                    (error "Context expects 2 values"
                                           _g13749_)))
                              (let ((_g13751_ (values-count _g13750_)))
                                (if (not (fx= _g13751_ 2))
                                    (error "Context expects 2 values"
                                           _g13751_)))
                              (let ((_hd-e13566_ (values-ref _g13748_ 0))
                                    (_hd-vars13567_ (values-ref _g13748_ 1)))
                                (let ((_tl-e13568_ (values-ref _g13750_ 0))
                                      (_tl-vars13569_ (values-ref _g13750_ 1)))
                                  (values (cons* 'cons _hd-e13566_ _tl-e13568_)
                                          (append _hd-vars13567_
                                                  _tl-vars13569_)))))))))
                   (let ((_make-splice13389_
                          (lambda (_where13502_
                                   _depth13503_
                                   _hd13504_
                                   _tl13505_)
                            (let ((_g13744_ _hd13504_) (_g13746_ _tl13505_))
                              (begin
                                (let ((_g13745_ (values-count _g13744_)))
                                  (if (not (fx= _g13745_ 2))
                                      (error "Context expects 2 values"
                                             _g13745_)))
                                (let ((_g13747_ (values-count _g13746_)))
                                  (if (not (fx= _g13747_ 2))
                                      (error "Context expects 2 values"
                                             _g13747_)))
                                (let ((_hd-e13507_ (values-ref _g13744_ 0))
                                      (_hd-vars13508_ (values-ref _g13744_ 1)))
                                  (let ((_tl-e13509_ (values-ref _g13746_ 0))
                                        (_tl-vars13510_
                                         (values-ref _g13746_ 1)))
                                    ((letrec ((_lp13512_
                                               (lambda (_rest13514_
                                                        _targets13515_
                                                        _vars13516_)
                                                 (let ((_rest1351713527_
                                                        _rest13514_))
                                                   (let ((_E1352013531_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest1351713527_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_else1351913535_
                                                            (lambda ()
                                                              (if (null? _targets13515_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Misplaced ellipsis"
                           _stx13342_
                           _where13502_)
                          (values (cons* 'splice
                                         _depth13503_
                                         _hd-e13507_
                                         _tl-e13509_
                                         _targets13515_)
                                  _vars13516_)))))
               (let ((_K1352113544_
                      (lambda (_rest13538_ _hd-pat13539_ _hd-depth*13540_)
                        (let ((_hd-depth13542_
                               (fx- _hd-depth*13540_ _depth13503_)))
                          (if (fxpositive? _hd-depth13542_)
                              (_lp13512_
                               _rest13538_
                               (cons (cons 'ref _hd-pat13539_) _targets13515_)
                               (cons (cons _hd-depth13542_ _hd-pat13539_)
                                     _vars13516_))
                              (if (fxzero? _hd-depth13542_)
                                  (_lp13512_
                                   _rest13538_
                                   (cons (cons 'pattern _hd-pat13539_)
                                         _targets13515_)
                                   _vars13516_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Too many ellipses"
                                   _stx13342_
                                   _where13502_)))))))
                 (if (##pair? _rest1351713527_)
                     (let ((_hd1352213547_ (##car _rest1351713527_))
                           (_tl1352313549_ (##cdr _rest1351713527_)))
                       (if (##pair? _hd1352213547_)
                           (let ((_hd1352413552_ (##car _hd1352213547_))
                                 (_tl1352513554_ (##cdr _hd1352213547_)))
                             (let ((_hd-depth*13557_ _hd1352413552_))
                               (let ((_hd-pat13559_ _tl1352513554_))
                                 (let ((_rest13561_ _tl1352313549_))
                                   (_K1352113544_
                                    _rest13561_
                                    _hd-pat13559_
                                    _hd-depth*13557_)))))
                           (_else1351913535_)))
                     (_else1351913535_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _lp13512_)
                                     _hd-vars13508_
                                     '()
                                     _tl-vars13510_))))))))
                     (letrec ((_recur13390_
                               (lambda (_e13395_ _is-e?13396_)
                                 (if (_is-e?13396_ _e13395_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Mislpaced ellipsis"
                                      _stx13342_)
                                     (if (gx#syntax-local-pattern? _e13395_)
                                         (let ((_pat13398_
                                                (gx#syntax-local-e__0
                                                 _e13395_)))
                                           (let ((_depth13400_
                                                  (##structure-ref
                                                   _pat13398_
                                                   '3
                                                   gx#syntax-pattern::t
                                                   '#f)))
                                             (let ()
                                               (if (fxpositive? _depth13400_)
                                                   (values (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat13398_)
                   (cons (cons _depth13400_ _pat13398_) '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (values (cons 'pattern
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat13398_)
                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (if (gx#identifier? _e13395_)
                                             (values (cons 'term _e13395_) '())
                                             (if (gx#stx-pair? _e13395_)
                                                 (let ((_e1340213409_
                                                        _e13395_))
                                                   (let ((_E1340413413_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _e1340213409_))))
                                                     (let ((_E1340313492_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e1340213409_)
                          (let ((_e1340513417_ (gx#syntax-e _e1340213409_)))
                            (let ((_hd1340613420_ (##car _e1340513417_))
                                  (_tl1340713422_ (##cdr _e1340513417_)))
                              (let ((_hd13425_ _hd1340613420_))
                                (let ((_rest13427_ _tl1340713422_))
                                  (if '#t
                                      (if (_is-e?13396_ _hd13425_)
                                          (let ((_e1342813435_ _rest13427_))
                                            (let ((_E1343013439_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad ellipsis syntax"
                                                      _stx13342_
                                                      _e13395_))))
                                              (let ((_E1342913453_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e1342813435_)
                                                           (let ((_e1343113443_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e1342813435_)))
                     (let ((_hd1343213446_ (##car _e1343113443_))
                           (_tl1343313448_ (##cdr _e1343113443_)))
                       (let ((_rest13451_ _hd1343213446_))
                         (if (gx#stx-null? _tl1343313448_)
                             (if '#t
                                 (_recur13390_ _rest13451_ false)
                                 (_E1343013439_))
                             (_E1343013439_)))))
                   (_E1343013439_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E1342913453_)))))
                                          ((letrec ((_lp13457_
                                                     (lambda (_rest13459_
                                                              _depth13460_)
                                                       (let ((_e1346113468_
                                                              _rest13459_))
                                                         (let ((_E1346313472_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (fxpositive? _depth13460_)
                              (_make-splice13389_
                               _e13395_
                               _depth13460_
                               (_recur13390_ _hd13425_ _is-e?13396_)
                               (_recur13390_ _rest13459_ _is-e?13396_))
                              (_make-cons13388_
                               (_recur13390_ _hd13425_ _is-e?13396_)
                               (_recur13390_ _rest13459_ _is-e?13396_))))))
                   (let ((_E1346213488_
                          (lambda ()
                            (if (gx#stx-pair? _e1346113468_)
                                (let ((_e1346413476_
                                       (gx#syntax-e _e1346113468_)))
                                  (let ((_hd1346513479_ (##car _e1346413476_))
                                        (_tl1346613481_ (##cdr _e1346413476_)))
                                    (let ((_rest-hd13484_ _hd1346513479_))
                                      (let ((_rest-tl13486_ _tl1346613481_))
                                        (if '#t
                                            (if (_is-e?13396_ _rest-hd13484_)
                                                (_lp13457_
                                                 _rest-tl13486_
                                                 (fx+ _depth13460_ '1))
                                                (if (fxpositive? _depth13460_)
                                                    (_make-splice13389_
                                                     _e13395_
                                                     _depth13460_
                                                     (_recur13390_
                                                      _hd13425_
                                                      _is-e?13396_)
                                                     (_recur13390_
                                                      _rest13459_
                                                      _is-e?13396_))
                                                    (_make-cons13388_
                                                     (_recur13390_
                                                      _hd13425_
                                                      _is-e?13396_)
                                                     (_recur13390_
                                                      _rest13459_
                                                      _is-e?13396_))))
                                            (_E1346313472_))))))
                                (_E1346313472_)))))
                     (let () (_E1346213488_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _lp13457_)
                                           _rest13427_
                                           '0))
                                      (_E1340413413_))))))
                          (_E1340413413_)))))
               (let () (_E1340313492_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-vector? _e13395_)
                                                     (let ((_g13738_
                                                            (_recur13390_
                                                             (vector->list
                                                              (gx#stx-unwrap__0
                                                               _e13395_))
                                                             _is-e?13396_)))
                                                       (begin
                                                         (let ((_g13739_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g13738_)))
                   (if (not (fx= _g13739_ 2))
                       (error "Context expects 2 values" _g13739_)))
                 (let ((_e13496_ (values-ref _g13738_ 0))
                       (_vars13497_ (values-ref _g13738_ 1)))
                   (values (cons 'vector _e13496_) _vars13497_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-box? _e13395_)
                                                         (let ((_g13740_
                                                                (_recur13390_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (unbox (gx#stx-unwrap__0 _e13395_))
                         _is-e?13396_)))
                   (begin
                     (let ((_g13741_ (values-count _g13740_)))
                       (if (not (fx= _g13741_ 2))
                           (error "Context expects 2 values" _g13741_)))
                     (let ((_e13499_ (values-ref _g13740_ 0))
                           (_vars13500_ (values-ref _g13740_ 1)))
                       (values (cons 'box _e13499_) _vars13500_))))
                 (values (cons 'datum _e13395_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       (let ((_g13742_ (_recur13390_ _e13386_ gx#ellipsis?)))
                         (begin
                           (let ((_g13743_ (values-count _g13742_)))
                             (if (not (fx= _g13743_ 2))
                                 (error "Context expects 2 values" _g13743_)))
                           (let ((_tree13392_ (values-ref _g13742_ 0))
                                 (_vars13393_ (values-ref _g13742_ 1)))
                             (if (null? _vars13393_)
                                 _tree13392_
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Missing ellipsis"
                                  _stx13342_
                                  _vars13393_)))))))))))
          (let ((_e1334613356_ _stx13342_))
            (let ((_E1334813360_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _stx13342_))))
              (let ((_E1334713382_
                     (lambda ()
                       (if (gx#stx-pair? _e1334613356_)
                           (let ((_e1334913364_ (gx#syntax-e _e1334613356_)))
                             (let ((_hd1335013367_ (##car _e1334913364_))
                                   (_tl1335113369_ (##cdr _e1334913364_)))
                               (if (gx#stx-pair? _tl1335113369_)
                                   (let ((_e1335213372_
                                          (gx#syntax-e _tl1335113369_)))
                                     (let ((_hd1335313375_
                                            (##car _e1335213372_))
                                           (_tl1335413377_
                                            (##cdr _e1335213372_)))
                                       (let ((_form13380_ _hd1335313375_))
                                         (if (gx#stx-null? _tl1335413377_)
                                             (if '#t
                                                 (gx#stx-wrap-source
                                                  (_generate13344_
                                                   (_parse13345_ _form13380_))
                                                  (gx#stx-source _stx13342_))
                                                 (_E1334813360_))
                                             (_E1334813360_)))))
                                   (_E1334813360_))))
                           (_E1334813360_)))))
                (let () (_E1334713382_)))))))))
  (begin
    (define gx#macro-expand-syntax-case__opt-lambda12612
      (lambda (_stx12614_ _identifier=?12615_ _unwrap-e12616_ _wrap-e12617_)
        (let ((_generate-body12620_
               (lambda (_bindings13164_ _body13165_)
                 ((letrec ((_recur13167_
                            (lambda (_rest13169_)
                              (let ((_rest1317013178_ _rest13169_))
                                (let ((_E1317313182_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest1317013178_))))
                                  (let ((_else1317213186_
                                         (lambda () _body13165_)))
                                    (let ((_K1317413192_
                                           (lambda (_rest13189_ _hd13190_)
                                             (gx#core-list
                                              'let-values
                                              (cons _hd13190_ '())
                                              (_recur13167_ _rest13189_)))))
                                      (if (##pair? _rest1317013178_)
                                          (let ((_hd1317513195_
                                                 (##car _rest1317013178_))
                                                (_tl1317613197_
                                                 (##cdr _rest1317013178_)))
                                            (let ((_hd13200_ _hd1317513195_))
                                              (let ((_rest13202_
                                                     _tl1317613197_))
                                                (_K1317413192_
                                                 _rest13202_
                                                 _hd13200_))))
                                          (_else1317213186_)))))))))
                    _recur13167_)
                  _bindings13164_))))
          (let ((_generate-match12622_
                 (lambda (_where12786_
                          _target12787_
                          _hd12788_
                          _mvars12789_
                          _K12790_
                          _E12791_)
                   (let ((_BUG12793_
                          (lambda (_q13025_)
                            (error '"BUG: syntax-case; generate"
                                   _stx12614_
                                   _hd12788_
                                   _q13025_))))
                     (let ((_splice-rlen12795_
                            (lambda (_e12841_)
                              ((letrec ((_lp12843_
                                         (lambda (_e12845_ _n12846_)
                                           (let ((_e1284712854_ _e12845_))
                                             (let ((_E1284912858_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _e1284712854_))))
                                               (let ((_K1285012867_
                                                      (lambda (_body12861_
                                                               _tag12862_)
                                                        (let ((_$e12864_
                                                               _tag12862_))
                                                          (if (eq? _$e12864_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'splice)
                      (gx#raise-syntax-error
                       '#f
                       '"Ambiguous pattern"
                       _stx12614_
                       _where12786_)
                      (if (eq? _$e12864_ 'cons)
                          (_lp12843_ (cdr _body12861_) (fx+ _n12846_ '1))
                          _n12846_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _e1284712854_)
                                                     (let ((_hd1285112870_
                                                            (##car _e1284712854_))
                                                           (_tl1285212872_
                                                            (##cdr _e1284712854_)))
                                                       (let ((_tag12875_
                                                              _hd1285112870_))
                                                         (let ((_body12877_
                                                                _tl1285212872_))
                                                           (_K1285012867_
                                                            _body12877_
                                                            _tag12875_))))
                                                     (_E1284912858_))))))))
                                 _lp12843_)
                               _e12841_
                               '0))))
                       (let ((_splice-vars12796_
                              (lambda (_e12803_)
                                ((letrec ((_recur12805_
                                           (lambda (_e12807_ _vars12808_)
                                             (let ((_e1280912816_ _e12807_))
                                               (let ((_E1281112820_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _e1280912816_))))
                                                 (let ((_K1281212829_
                                                        (lambda (_body12823_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tag12824_)
                  (let ((_$e12826_ _tag12824_))
                    (if (eq? _$e12826_ 'var)
                        (cons _body12823_ _vars12808_)
                        (if (memq _$e12826_ '(cons splice))
                            (_recur12805_
                             (cdr _body12823_)
                             (_recur12805_ (car _body12823_) _vars12808_))
                            (if (memq _$e12826_ '(vector box))
                                (_recur12805_ _body12823_ _vars12808_)
                                _vars12808_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##pair? _e1280912816_)
                                                       (let ((_hd1281312832_
                                                              (##car _e1280912816_))
                                                             (_tl1281412834_
                                                              (##cdr _e1280912816_)))
                                                         (let ((_tag12837_
                                                                _hd1281312832_))
                                                           (let ((_body12839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1281412834_))
                     (_K1281212829_ _body12839_ _tag12837_))))
               (_E1281112820_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _recur12805_)
                                 _e12803_
                                 '()))))
                         (let ((_make-body12797_
                                (lambda (_vars12799_)
                                  (cons _K12790_
                                        (map (lambda (_mvar12801_)
                                               (assgetq (car _mvar12801_)
                                                        _vars12799_
                                                        _BUG12793_))
                                             _mvars12789_)))))
                           (letrec ((_recur12794_
                                     (lambda (_e12879_
                                              _vars12880_
                                              _target12881_
                                              _E12882_
                                              _k12883_)
                                       (let ((_e1288412891_ _e12879_))
                                         (let ((_E1288612895_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _e1288412891_))))
                                           (let ((_K1288713013_
                                                  (lambda (_body12898_
                                                           _tag12899_)
                                                    (let ((_$e12901_
                                                           _tag12899_))
                                                      (if (eq? _$e12901_ 'any)
                                                          (_k12883_
                                                           _vars12880_)
                                                          (if (eq? _$e12901_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'id)
                      (gx#core-list
                       'if
                       (gx#core-list 'identifier? _target12881_)
                       (gx#core-list
                        'if
                        (gx#core-list
                         _identifier=?12615_
                         (gx#core-list _wrap-e12617_ _body12898_)
                         _target12881_)
                        (_k12883_ _vars12880_)
                        _E12882_)
                       _E12882_)
                      (if (eq? _$e12901_ 'var)
                          (_k12883_
                           (cons (cons _body12898_ _target12881_) _vars12880_))
                          (if (eq? _$e12901_ 'cons)
                              (let ((_$e12904_ (gx#genident__1 'e))
                                    (_$hd12905_ (gx#genident__1 'hd))
                                    (_$tl12906_ (gx#genident__1 'tl)))
                                (gx#core-list
                                 'if
                                 (gx#core-list 'stx-pair? _target12881_)
                                 (gx#core-list
                                  'let-values
                                  (cons (cons (cons _$e12904_ '())
                                              (cons (gx#core-list
                                                     _unwrap-e12616_
                                                     _target12881_)
                                                    '()))
                                        '())
                                  (gx#core-list
                                   'let-values
                                   (cons (cons (cons _$hd12905_ '())
                                               (cons (gx#core-list
                                                      '##car
                                                      _$e12904_)
                                                     '()))
                                         (cons (cons (cons _$tl12906_ '())
                                                     (cons (gx#core-list
                                                            '##cdr
                                                            _$e12904_)
                                                           '()))
                                               '()))
                                   (let ((_body1290712914_ _body12898_))
                                     (let ((_E1290912918_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _body1290712914_))))
                                       (let ((_K1291012926_
                                              (lambda (_tl12921_ _hd12922_)
                                                (_recur12794_
                                                 _hd12922_
                                                 _vars12880_
                                                 _$hd12905_
                                                 _E12882_
                                                 (lambda (_vars12924_)
                                                   (_recur12794_
                                                    _tl12921_
                                                    _vars12924_
                                                    _$tl12906_
                                                    _E12882_
                                                    _k12883_))))))
                                         (if (##pair? _body1290712914_)
                                             (let ((_hd1291112929_
                                                    (##car _body1290712914_))
                                                   (_tl1291212931_
                                                    (##cdr _body1290712914_)))
                                               (let ((_hd12934_
                                                      _hd1291112929_))
                                                 (let ((_tl12936_
                                                        _tl1291212931_))
                                                   (_K1291012926_
                                                    _tl12936_
                                                    _hd12934_))))
                                             (_E1290912918_)))))))
                                 _E12882_))
                              (if (eq? _$e12901_ 'splice)
                                  (let ((_body1293712944_ _body12898_))
                                    (let ((_E1293912948_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _body1293712944_))))
                                      (let ((_K1294012997_
                                             (lambda (_tl12951_ _hd12952_)
                                               (let ((_rlen12954_
                                                      (_splice-rlen12795_
                                                       _tl12951_)))
                                                 (let ((_$target12956_
                                                        (gx#genident__1
                                                         'target)))
                                                   (let ((_$hd12958_
                                                          (gx#genident__1
                                                           'hd)))
                                                     (let ((_$tl12960_
                                                            (gx#genident__1
                                                             'tl)))
                                                       (let ((_$lp12962_
                                                              (gx#genident__1
                                                               'loop)))
                                                         (let ((_$lp-e12964_
                                                                (gx#genident__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'e)))
                   (let ((_$lp-hd12966_ (gx#genident__1 'lp-hd)))
                     (let ((_$lp-tl12968_ (gx#genident__1 'lp-tl)))
                       (let ((_svars12970_ (_splice-vars12796_ _hd12952_)))
                         (let ((_lvars12972_ (gx#gentemps _svars12970_)))
                           (let ((_tlvars12974_ (gx#gentemps _svars12970_)))
                             (let ((_linit12978_
                                    (map (lambda (_var12976_)
                                           (gx#core-list 'quote '()))
                                         _lvars12972_)))
                               (let ()
                                 (let ((_make-loop12981_
                                        (lambda (_vars12983_)
                                          (gx#core-list
                                           'letrec-values
                                           (cons (cons (cons _$lp12962_ '())
                                                       (cons (gx#core-list
                                                              'lambda%
                                                              (cons _$hd12958_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _lvars12972_)
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _$hd12958_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$lp-e12964_ '())
                                    (cons (gx#core-list
                                           _unwrap-e12616_
                                           _$hd12958_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$lp-hd12966_ '())
                                     (cons (gx#core-list '##car _$lp-e12964_)
                                           '()))
                               (cons (cons (cons _$lp-tl12968_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$lp-e12964_)
                                                 '()))
                                     '()))
                         (_recur12794_
                          _hd12952_
                          '()
                          _$lp-hd12966_
                          _E12882_
                          (lambda (_hdvars12985_)
                            (cons* _$lp12962_
                                   _$lp-tl12968_
                                   (map (lambda (_svar12987_ _lvar12988_)
                                          (gx#core-list
                                           'cons
                                           (assgetq _svar12987_
                                                    _hdvars12985_
                                                    _BUG12793_)
                                           _lvar12988_))
                                        _svars12970_
                                        _lvars12972_))))))
                       (gx#core-list
                        'let-values
                        (map (lambda (_lvar12990_ _tlvar12991_)
                               (cons (cons _tlvar12991_ '())
                                     (cons (gx#core-list 'reverse _lvar12990_)
                                           '())))
                             _lvars12972_
                             _tlvars12974_)
                        (_k12883_
                         (foldl (lambda (_svar12993_ _tlvar12994_ _r12995_)
                                  (cons (cons _svar12993_ _tlvar12994_)
                                        _r12995_))
                                _vars12983_
                                _svars12970_
                                _tlvars12974_)))))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons* _$lp12962_
                                                  _$target12956_
                                                  _linit12978_)))))
                                   (gx#core-list
                                    'if
                                    (gx#core-list
                                     'stx-pair/null?
                                     _target12881_)
                                    (gx#core-list
                                     'if
                                     (gx#core-list
                                      'fx>=
                                      (gx#core-list 'stx-length _target12881_)
                                      _rlen12954_)
                                     (gx#core-list
                                      'let-values
                                      (cons (cons (cons _$target12956_
                                                        (cons _$tl12960_ '()))
                                                  (cons (gx#core-list
                                                         'syntax-split-splice
                                                         _target12881_
                                                         _rlen12954_)
                                                        '()))
                                            '())
                                      (_recur12794_
                                       _tl12951_
                                       _vars12880_
                                       _$tl12960_
                                       _E12882_
                                       _make-loop12981_))
                                     _E12882_)
                                    _E12882_))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _body1293712944_)
                                            (let ((_hd1294113000_
                                                   (##car _body1293712944_))
                                                  (_tl1294213002_
                                                   (##cdr _body1293712944_)))
                                              (let ((_hd13005_ _hd1294113000_))
                                                (let ((_tl13007_
                                                       _tl1294213002_))
                                                  (_K1294012997_
                                                   _tl13007_
                                                   _hd13005_))))
                                            (_E1293912948_)))))
                                  (if (eq? _$e12901_ 'null)
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-null? _target12881_)
                                       (_k12883_ _vars12880_)
                                       _E12882_)
                                      (if (eq? _$e12901_ 'vector)
                                          (let ((_$e13009_
                                                 (gx#genident__1 'e)))
                                            (gx#core-list
                                             'if
                                             (gx#core-list
                                              'stx-vector?
                                              _target12881_)
                                             (gx#core-list
                                              'let-values
                                              (cons (cons (cons _$e13009_ '())
                                                          (cons (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'vector->list
                         (gx#core-list _unwrap-e12616_ _target12881_))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (_recur12794_
                                               _body12898_
                                               _vars12880_
                                               _$e13009_
                                               _E12882_
                                               _k12883_))
                                             _E12882_))
                                          (if (eq? _$e12901_ 'box)
                                              (let ((_$e13011_
                                                     (gx#genident__1 'e)))
                                                (gx#core-list
                                                 'if
                                                 (gx#core-list
                                                  'stx-box?
                                                  _target12881_)
                                                 (gx#core-list
                                                  'let-values
                                                  (cons (cons (cons _$e13011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (gx#core-list
                             'unbox
                             (gx#core-list _unwrap-e12616_ _target12881_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur12794_
                                                   _body12898_
                                                   _vars12880_
                                                   _$e13011_
                                                   _E12882_
                                                   _k12883_))
                                                 _E12882_))
                                              (if (eq? _$e12901_ 'datum)
                                                  (gx#core-list
                                                   'if
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target12881_)
                                                   (gx#core-list
                                                    'if
                                                    (gx#core-list
                                                     'equal?
                                                     (gx#core-list
                                                      'stx-e
                                                      _target12881_)
                                                     _body12898_)
                                                    (_k12883_ _vars12880_)
                                                    _E12882_)
                                                   _E12882_)
                                                  (_BUG12793_
                                                   _e12879_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _e1288412891_)
                                                 (let ((_hd1288813016_
                                                        (##car _e1288412891_))
                                                       (_tl1288913018_
                                                        (##cdr _e1288412891_)))
                                                   (let ((_tag13021_
                                                          _hd1288813016_))
                                                     (let ((_body13023_
                                                            _tl1288913018_))
                                                       (_K1288713013_
                                                        _body13023_
                                                        _tag13021_))))
                                                 (_E1288612895_))))))))
                             (_recur12794_
                              _hd12788_
                              '()
                              _target12787_
                              _E12791_
                              _make-body12797_)))))))))
            (let ((_parse-clause12623_
                   (lambda (_hd12692_ _ids12693_)
                     ((letrec ((_recur12695_
                                (lambda (_e12697_ _vars12698_ _depth12699_)
                                  (if (gx#identifier? _e12697_)
                                      (if (gx#underscore? _e12697_)
                                          (values '(any) _vars12698_)
                                          (if (gx#ellipsis? _e12697_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Misplaced ellipsis"
                                               _stx12614_
                                               _hd12692_)
                                              (if (find (lambda (_id12701_)
                                                          (gx#bound-identifier=?
                                                           _e12697_
                                                           _id12701_))
                                                        _ids12693_)
                                                  (values (cons 'id _e12697_)
                                                          _vars12698_)
                                                  (if (find (lambda (_var12703_)
                                                              (gx#bound-identifier=?
                                                               _e12697_
                                                               (car _var12703_)))
                                                            _vars12698_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Duplicate pattern variable"
                                                       _stx12614_
                                                       _e12697_)
                                                      (values (cons 'var
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _e12697_)
                      (cons (cons _e12697_ _depth12699_) _vars12698_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _e12697_)
                                          (let ((_e1270412711_ _e12697_))
                                            (let ((_E1270612715_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _e1270412711_))))
                                              (let ((_E1270512776_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e1270412711_)
                                                           (let ((_e1270712719_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e1270412711_)))
                     (let ((_hd1270812722_ (##car _e1270712719_))
                           (_tl1270912724_ (##cdr _e1270712719_)))
                       (let ((_hd12727_ _hd1270812722_))
                         (let ((_rest12729_ _tl1270912724_))
                           (if '#t
                               (let ((_make-pair12744_
                                      (lambda (_tag12731_ _hd12732_ _tl12733_)
                                        (let ((_hd-depth12735_
                                               (if (eq? _tag12731_ 'splice)
                                                   (fx+ _depth12699_ '1)
                                                   _depth12699_)))
                                          (let ((_g13754_
                                                 (_recur12695_
                                                  _hd12732_
                                                  _vars12698_
                                                  _hd-depth12735_)))
                                            (begin
                                              (let ((_g13755_
                                                     (values-count _g13754_)))
                                                (if (not (fx= _g13755_ 2))
                                                    (error "Context expects 2 values"
                                                           _g13755_)))
                                              (let ((_hd12737_
                                                     (values-ref _g13754_ 0))
                                                    (_vars12738_
                                                     (values-ref _g13754_ 1)))
                                                (let ((_g13756_
                                                       (_recur12695_
                                                        _tl12733_
                                                        _vars12738_
                                                        _depth12699_)))
                                                  (begin
                                                    (let ((_g13757_
                                                           (values-count
                                                            _g13756_)))
                                                      (if (not (fx= _g13757_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g13757_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_tl12740_
                                                           (values-ref
                                                            _g13756_
                                                            0))
                                                          (_vars12741_
                                                           (values-ref
                                                            _g13756_
                                                            1)))
                                                      (let ()
                                                        (values (cons* _tag12731_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd12737_
                               _tl12740_)
                        _vars12741_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (let ((_e1274512752_ _rest12729_))
                                   (let ((_E1274712756_
                                          (lambda ()
                                            (_make-pair12744_
                                             'cons
                                             _hd12727_
                                             _rest12729_))))
                                     (let ((_E1274612772_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1274512752_)
                                                  (let ((_e1274812760_
                                                         (gx#syntax-e
                                                          _e1274512752_)))
                                                    (let ((_hd1274912763_
                                                           (##car _e1274812760_))
                                                          (_tl1275012765_
                                                           (##cdr _e1274812760_)))
                                                      (let ((_rest-hd12768_
                                                             _hd1274912763_))
                                                        (let ((_rest-tl12770_
                                                               _tl1275012765_))
                                                          (if '#t
                                                              (if (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest-hd12768_)
                          (_make-pair12744_ 'splice _hd12727_ _rest-tl12770_)
                          (_make-pair12744_ 'cons _hd12727_ _rest12729_))
                      (_E1274712756_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1274712756_)))))
                                       (let () (_E1274612772_))))))
                               (_E1270612715_))))))
                   (_E1270612715_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E1270512776_)))))
                                          (if (gx#stx-null? _e12697_)
                                              (values '(null) _vars12698_)
                                              (if (gx#stx-vector? _e12697_)
                                                  (let ((_g13758_
                                                         (_recur12695_
                                                          (vector->list
                                                           (gx#syntax-e
                                                            _e12697_))
                                                          _vars12698_
                                                          _depth12699_)))
                                                    (begin
                                                      (let ((_g13759_
                                                             (values-count
                                                              _g13758_)))
                                                        (if (not (fx= _g13759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g13759_)))
              (let ((_e12780_ (values-ref _g13758_ 0))
                    (_vars12781_ (values-ref _g13758_ 1)))
                (values (cons 'vector _e12780_) _vars12781_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e12697_)
                                                      (let ((_g13760_
                                                             (_recur12695_
                                                              (unbox (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e12697_))
                      _vars12698_
                      _depth12699_)))
                (begin
                  (let ((_g13761_ (values-count _g13760_)))
                    (if (not (fx= _g13761_ 2))
                        (error "Context expects 2 values" _g13761_)))
                  (let ((_e12783_ (values-ref _g13760_ 0))
                        (_vars12784_ (values-ref _g13760_ 1)))
                    (values (cons 'box _e12783_) _vars12784_))))
              (if (gx#stx-datum? _e12697_)
                  (values (cons 'datum (gx#stx-e _e12697_)) _vars12698_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad pattern"
                   _stx12614_
                   _e12697_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        _recur12695_)
                      _hd12692_
                      '()
                      '0))))
              (let ((_generate-clause12621_
                     (lambda (_target13027_ _ids13028_ _clause13029_ _E13030_)
                       (let ((_generate113032_
                              (lambda (_hd13119_ _fender13120_ _body13121_)
                                (let ((_g13752_
                                       (_parse-clause12623_
                                        _hd13119_
                                        _ids13028_)))
                                  (begin
                                    (let ((_g13753_ (values-count _g13752_)))
                                      (if (not (fx= _g13753_ 2))
                                          (error "Context expects 2 values"
                                                 _g13753_)))
                                    (let ((_e13123_ (values-ref _g13752_ 0))
                                          (_mvars13124_
                                           (values-ref _g13752_ 1)))
                                      (let ((_pvars13126_
                                             (map gx#syntax-local-rewrap
                                                  (gx#gentemps _mvars13124_))))
                                        (let ((_E13128_
                                               (cons _E13030_
                                                     (cons _target13027_
                                                           '()))))
                                          (let ((_K13161_
                                                 (gx#core-list
                                                  'lambda%
                                                  _pvars13126_
                                                  (gx#core-list
                                                   'let-syntax
                                                   (map (lambda (_mvar13130_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pvar13131_)
                  (let ((_mvar1313213139_ _mvar13130_))
                    (let ((_E1313413143_
                           (lambda ()
                             (error '"No clause matching" _mvar1313213139_))))
                      (let ((_K1313513149_
                             (lambda (_depth13146_ _id13147_)
                               (cons _id13147_
                                     (cons (gx#core-list
                                            'make-syntax-pattern
                                            (gx#core-list 'quote _id13147_)
                                            (gx#core-list 'quote _pvar13131_)
                                            _depth13146_)
                                           '())))))
                        (if (##pair? _mvar1313213139_)
                            (let ((_hd1313613152_ (##car _mvar1313213139_))
                                  (_tl1313713154_ (##cdr _mvar1313213139_)))
                              (let ((_id13157_ _hd1313613152_))
                                (let ((_depth13159_ _tl1313713154_))
                                  (_K1313513149_ _depth13159_ _id13157_))))
                            (_E1313413143_))))))
                _mvars13124_
                _pvars13126_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (eq? _fender13120_ '#t)
                                                       _body13121_
                                                       (gx#core-list
                                                        'if
                                                        _fender13120_
                                                        _body13121_
                                                        _E13128_))))))
                                            (let ()
                                              (_generate-match12622_
                                               _hd13119_
                                               _target13027_
                                               _e13123_
                                               _mvars13124_
                                               _K13161_
                                               _E13128_)))))))))))
                         (let ((_e1303313053_ _clause13029_))
                           (let ((_E1304213057_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _e1303313053_))))
                             (let ((_E1303513091_
                                    (lambda ()
                                      (if (gx#stx-pair? _e1303313053_)
                                          (let ((_e1304313061_
                                                 (gx#syntax-e _e1303313053_)))
                                            (let ((_hd1304413064_
                                                   (##car _e1304313061_))
                                                  (_tl1304513066_
                                                   (##cdr _e1304313061_)))
                                              (let ((_hd13069_ _hd1304413064_))
                                                (if (gx#stx-pair?
                                                     _tl1304513066_)
                                                    (let ((_e1304613071_
                                                           (gx#syntax-e
                                                            _tl1304513066_)))
                                                      (let ((_hd1304713074_
                                                             (##car _e1304613071_))
                                                            (_tl1304813076_
                                                             (##cdr _e1304613071_)))
                                                        (let ((_fender13079_
                                                               _hd1304713074_))
                                                          (if (gx#stx-pair?
                                                               _tl1304813076_)
                                                              (let ((_e1304913081_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1304813076_)))
                        (let ((_hd1305013084_ (##car _e1304913081_))
                              (_tl1305113086_ (##cdr _e1304913081_)))
                          (let ((_body13089_ _hd1305013084_))
                            (if (gx#stx-null? _tl1305113086_)
                                (if '#t
                                    (_generate113032_
                                     _hd13069_
                                     _fender13079_
                                     _body13089_)
                                    (_E1304213057_))
                                (_E1304213057_)))))
                      (_E1304213057_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1304213057_)))))
                                          (_E1304213057_)))))
                               (let ((_E1303413115_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1303313053_)
                                            (let ((_e1303613095_
                                                   (gx#syntax-e
                                                    _e1303313053_)))
                                              (let ((_hd1303713098_
                                                     (##car _e1303613095_))
                                                    (_tl1303813100_
                                                     (##cdr _e1303613095_)))
                                                (let ((_hd13103_
                                                       _hd1303713098_))
                                                  (if (gx#stx-pair?
                                                       _tl1303813100_)
                                                      (let ((_e1303913105_
                                                             (gx#syntax-e
                                                              _tl1303813100_)))
                                                        (let ((_hd1304013108_
                                                               (##car _e1303913105_))
                                                              (_tl1304113110_
                                                               (##cdr _e1303913105_)))
                                                          (let ((_body13113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1304013108_))
                    (if (gx#stx-null? _tl1304113110_)
                        (if '#t
                            (_generate113032_ _hd13103_ '#t _body13113_)
                            (_E1303513091_))
                        (_E1303513091_)))))
              (_E1303513091_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1303513091_)))))
                                 (let () (_E1303413115_))))))))))
                (let ((_generate-bindings12619_
                       (lambda (_target13204_
                                _ids13205_
                                _clauses13206_
                                _clause-ids13207_
                                _E13208_)
                         (let ((_generate113210_
                                (lambda (_clause13309_
                                         _clause-id13310_
                                         _E13311_)
                                  (cons (cons _clause-id13310_ '())
                                        (cons (gx#core-list
                                               'lambda%
                                               (cons _target13204_ '())
                                               (_generate-clause12621_
                                                _target13204_
                                                _ids13205_
                                                _clause13309_
                                                _E13311_))
                                              '())))))
                           ((letrec ((_lp13212_
                                      (lambda (_rest13214_
                                               _rest-ids13215_
                                               _bindings13216_)
                                        (let ((_rest1321713225_ _rest13214_))
                                          (let ((_E1322013229_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _rest1321713225_))))
                                            (let ((_else1321913233_
                                                   (lambda ()
                                                     _bindings13216_)))
                                              (let ((_K1322113297_
                                                     (lambda (_rest13236_
                                                              _clause13237_)
                                                       (let ((_rest-ids1323813245_
                                                              _rest-ids13215_))
                                                         (let ((_E1324013249_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (error '"No clause matching" _rest-ids1323813245_))))
                   (let ((_K1324113285_
                          (lambda (_rest-ids13252_ _clause-id13253_)
                            (let ((_rest-ids1325413262_ _rest-ids13252_))
                              (let ((_E1325713266_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _rest-ids1325413262_))))
                                (let ((_else1325613270_
                                       (lambda ()
                                         (cons (_generate113210_
                                                _clause13237_
                                                _clause-id13253_
                                                _E13208_)
                                               _bindings13216_))))
                                  (let ((_K1325813275_
                                         (lambda (_next-clause-id13273_)
                                           (_lp13212_
                                            _rest13236_
                                            _rest-ids13252_
                                            (cons (_generate113210_
                                                   _clause13237_
                                                   _clause-id13253_
                                                   _next-clause-id13273_)
                                                  _bindings13216_)))))
                                    (if (##pair? _rest-ids1325413262_)
                                        (let ((_hd1325913278_
                                               (##car _rest-ids1325413262_))
                                              (_tl1326013280_
                                               (##cdr _rest-ids1325413262_)))
                                          (let ((_next-clause-id13283_
                                                 _hd1325913278_))
                                            (_K1325813275_
                                             _next-clause-id13283_)))
                                        (_else1325613270_)))))))))
                     (if (##pair? _rest-ids1323813245_)
                         (let ((_hd1324213288_ (##car _rest-ids1323813245_))
                               (_tl1324313290_ (##cdr _rest-ids1323813245_)))
                           (let ((_clause-id13293_ _hd1324213288_))
                             (let ((_rest-ids13295_ _tl1324313290_))
                               (_K1324113285_
                                _rest-ids13295_
                                _clause-id13293_))))
                         (_E1324013249_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (##pair? _rest1321713225_)
                                                    (let ((_hd1322213300_
                                                           (##car _rest1321713225_))
                                                          (_tl1322313302_
                                                           (##cdr _rest1321713225_)))
                                                      (let ((_clause13305_
                                                             _hd1322213300_))
                                                        (let ((_rest13307_
                                                               _tl1322313302_))
                                                          (_K1322113297_
                                                           _rest13307_
                                                           _clause13305_))))
                                                    (_else1321913233_)))))))))
                              _lp13212_)
                            _clauses13206_
                            _clause-ids13207_
                            '())))))
                  (let ((_e1262412637_ _stx12614_))
                    (let ((_E1262612641_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e1262412637_))))
                      (let ((_E1262512688_
                             (lambda ()
                               (if (gx#stx-pair? _e1262412637_)
                                   (let ((_e1262712645_
                                          (gx#syntax-e _e1262412637_)))
                                     (let ((_hd1262812648_
                                            (##car _e1262712645_))
                                           (_tl1262912650_
                                            (##cdr _e1262712645_)))
                                       (if (gx#stx-pair? _tl1262912650_)
                                           (let ((_e1263012653_
                                                  (gx#syntax-e
                                                   _tl1262912650_)))
                                             (let ((_hd1263112656_
                                                    (##car _e1263012653_))
                                                   (_tl1263212658_
                                                    (##cdr _e1263012653_)))
                                               (let ((_expr12661_
                                                      _hd1263112656_))
                                                 (if (gx#stx-pair?
                                                      _tl1263212658_)
                                                     (let ((_e1263312663_
                                                            (gx#syntax-e
                                                             _tl1263212658_)))
                                                       (let ((_hd1263412666_
                                                              (##car _e1263312663_))
                                                             (_tl1263512668_
                                                              (##cdr _e1263312663_)))
                                                         (let ((_ids12671_
                                                                _hd1263412666_))
                                                           (let ((_clauses12673_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1263512668_))
                     (if '#t
                         (if (not (gx#identifier-list? _ids12671_))
                             (gx#raise-syntax-error
                              '#f
                              '"Bad template identifier list"
                              _stx12614_
                              _ids12671_)
                             (if (not (gx#stx-list? _clauses12673_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _stx12614_)
                                 (let ((_ids12675_
                                        (gx#syntax->list _ids12671_)))
                                   (let ((_clauses12677_
                                          (gx#syntax->list _clauses12673_)))
                                     (let ((_clause-ids12679_
                                            (gx#gentemps _clauses12677_)))
                                       (let ((_E12681_ (gx#genident__0)))
                                         (let ((_target12683_
                                                (gx#genident__0)))
                                           (let ((_first12685_
                                                  (if (null? _clauses12677_)
                                                      _E12681_
                                                      (car _clause-ids12679_))))
                                             (let ()
                                               (gx#stx-wrap-source
                                                (gx#core-list
                                                 'let-values
                                                 (cons (cons (cons _E12681_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _target12683_ '())
                            (gx#core-list
                             'raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _target12683_))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_generate-body12620_
                                                  (_generate-bindings12619_
                                                   _target12683_
                                                   _ids12675_
                                                   _clauses12677_
                                                   _clause-ids12679_
                                                   _E12681_)
                                                  (cons _first12685_
                                                        (cons _expr12661_
                                                              '()))))
                                                (gx#stx-source
                                                 _stx12614_)))))))))))
                         (_E1262612641_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1262612641_)))))
                                           (_E1262612641_))))
                                   (_E1262612641_)))))
                        (let () (_E1262512688_))))))))))))
    (begin
      (define gx#macro-expand-syntax-case__0
        (lambda (_stx13316_)
          (let ((_identifier=?13318_ 'free-identifier=?))
            (let ((_unwrap-e13320_ 'syntax-e))
              (let ((_wrap-e13322_ 'quote-syntax))
                (gx#macro-expand-syntax-case__opt-lambda12612
                 _stx13316_
                 _identifier=?13318_
                 _unwrap-e13320_
                 _wrap-e13322_))))))
      (define gx#macro-expand-syntax-case__1
        (lambda (_stx13324_ _identifier=?13325_)
          (let ((_unwrap-e13327_ 'syntax-e))
            (let ((_wrap-e13329_ 'quote-syntax))
              (gx#macro-expand-syntax-case__opt-lambda12612
               _stx13324_
               _identifier=?13325_
               _unwrap-e13327_
               _wrap-e13329_)))))
      (define gx#macro-expand-syntax-case__2
        (lambda (_stx13331_ _identifier=?13332_ _unwrap-e13333_)
          (let ((_wrap-e13335_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda12612
             _stx13331_
             _identifier=?13332_
             _unwrap-e13333_
             _wrap-e13335_))))
      (define gx#macro-expand-syntax-case
        (lambda _g13763_
          (let ((_g13762_ (length _g13763_)))
            (cond ((fx= _g13762_ 1)
                   (apply gx#macro-expand-syntax-case__0 _g13763_))
                  ((fx= _g13762_ 2)
                   (apply gx#macro-expand-syntax-case__1 _g13763_))
                  ((fx= _g13762_ 3)
                   (apply gx#macro-expand-syntax-case__2 _g13763_))
                  ((fx= _g13762_ 4)
                   (apply gx#macro-expand-syntax-case__opt-lambda12612
                          _g13763_))
                  (else (error "No clause matching arguments" _g13763_))))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx12611_)
      (if (gx#identifier? _stx12611_)
          (##structure-instance-of?
           (gx#syntax-local-e__opt-lambda3802 _stx12611_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd12569_ . _rest12570_)
      (let ((_len12572_ (length _hd12569_)))
        ((letrec ((_lp12574_
                   (lambda (_rest12576_)
                     (let ((_rest1257712585_ _rest12576_))
                       (let ((_E1258012589_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1257712585_))))
                         (let ((_else1257912593_ (lambda () '#!void)))
                           (let ((_K1258112599_
                                  (lambda (_rest12596_ _hd12597_)
                                    (if (fx= _len12572_ (length _hd12597_))
                                        (_lp12574_ _rest12596_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Splice length mismatch"
                                         _hd12597_)))))
                             (if (##pair? _rest1257712585_)
                                 (let ((_hd1258212602_
                                        (##car _rest1257712585_))
                                       (_tl1258312604_
                                        (##cdr _rest1257712585_)))
                                   (let ((_hd12607_ _hd1258212602_))
                                     (let ((_rest12609_ _tl1258312604_))
                                       (_K1258112599_ _rest12609_ _hd12607_))))
                                 (_else1257912593_)))))))))
           _lp12574_)
         _rest12570_))))
  (define gx#syntax-split-splice
    (lambda (_stx12527_ _n12528_)
      ((letrec ((_lp12530_
                 (lambda (_rest12532_ _r12533_)
                   (if (gx#stx-pair? _rest12532_)
                       (let ((_g1253412541_ (gx#syntax-e _rest12532_)))
                         (let ((_E1253612545_
                                (lambda ()
                                  (error '"No clause matching"
                                         _g1253412541_))))
                           (let ((_K1253712551_
                                  (lambda (_rest12548_ _hd12549_)
                                    (_lp12530_
                                     _rest12548_
                                     (cons _hd12549_ _r12533_)))))
                             (if (##pair? _g1253412541_)
                                 (let ((_hd1253812554_ (##car _g1253412541_))
                                       (_tl1253912556_ (##cdr _g1253412541_)))
                                   (let ((_hd12559_ _hd1253812554_))
                                     (let ((_rest12561_ _tl1253912556_))
                                       (_K1253712551_ _rest12561_ _hd12559_))))
                                 (_E1253612545_)))))
                       ((letrec ((_lp12563_
                                  (lambda (_n12565_ _l12566_ _r12567_)
                                    (if (null? _l12566_)
                                        (values _l12566_ _r12567_)
                                        (if (fxpositive? _n12565_)
                                            (_lp12563_
                                             (fx- _n12565_ '1)
                                             (cdr _l12566_)
                                             (cons (car _l12566_) _r12567_))
                                            (values (reverse _l12566_)
                                                    _r12567_))))))
                          _lp12563_)
                        _n12528_
                        _r12533_
                        _rest12532_)))))
         _lp12530_)
       _stx12527_
       '()))))
