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
    (lambda _$args14964_
      (apply make-struct-instance gx#syntax-pattern::t _$args14964_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self14961_ _stx14962_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx14962_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx14565_)
      (letrec ((_generate14567_
                (lambda (_e14794_)
                  (letrec ((_BUG14796_
                            (lambda (_q14959_)
                              (error '"BUG: syntax; generate"
                                     _stx14565_
                                     _e14794_
                                     _q14959_)))
                           (_local-pattern-e14797_
                            (lambda (_pat14957_)
                              (gx#syntax-local-rewrap
                               (##structure-ref
                                _pat14957_
                                '2
                                gx#syntax-pattern::t
                                '#f))))
                           (_getvar14798_
                            (lambda (_q14954_ _vars14955_)
                              (assgetq _q14954_ _vars14955_ _BUG14796_)))
                           (_getarg14799_
                            (lambda (_arg14920_ _vars14921_)
                              (let* ((_arg1492214929_ _arg14920_)
                                     (_E1492414933_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _arg1492214929_)))
                                     (_K1492514942_
                                      (lambda (_e14936_ _tag14937_)
                                        (let ((_$e14939_ _tag14937_))
                                          (if (eq? _$e14939_ 'ref)
                                              (_getvar14798_
                                               _e14936_
                                               _vars14921_)
                                              (if (eq? _$e14939_ 'pattern)
                                                  (_local-pattern-e14797_
                                                   _e14936_)
                                                  (_BUG14796_ _arg14920_)))))))
                                (if (##pair? _arg1492214929_)
                                    (let ((_hd1492614945_
                                           (##car _arg1492214929_))
                                          (_tl1492714947_
                                           (##cdr _arg1492214929_)))
                                      (let* ((_tag14950_ _hd1492614945_)
                                             (_e14952_ _tl1492714947_))
                                        (_K1492514942_ _e14952_ _tag14950_)))
                                    (_E1492414933_))))))
                    (let _recur14801_ ((_e14803_ _e14794_) (_vars14804_ '()))
                      (let* ((_e1480514812_ _e14803_)
                             (_E1480714816_
                              (lambda ()
                                (error '"No clause matching" _e1480514812_)))
                             (_K1480814908_
                              (lambda (_body14819_ _tag14820_)
                                (let ((_$e14822_ _tag14820_))
                                  (if (eq? _$e14822_ 'datum)
                                      (gx#core-list 'quote _body14819_)
                                      (if (eq? _$e14822_ 'term)
                                          (let* ((_id14825_
                                                  (gx#syntax-local-unwrap
                                                   _body14819_))
                                                 (_marks14827_
                                                  (##direct-structure-ref
                                                   _id14825_
                                                   '3
                                                   gx#identifier-wrap::t
                                                   '#f)))
                                            (if (null? _marks14827_)
                                                (gx#core-list
                                                 'datum->syntax
                                                 '#f
                                                 (gx#core-list
                                                  'quote
                                                  _body14819_))
                                                (gx#core-list
                                                 'datum->syntax
                                                 (gx#core-list
                                                  'quote-syntax
                                                  _body14819_)
                                                 (gx#core-list
                                                  'quote
                                                  _body14819_)
                                                 '#f
                                                 '#f)))
                                          (if (eq? _$e14822_ 'pattern)
                                              (_local-pattern-e14797_
                                               _body14819_)
                                              (if (eq? _$e14822_ 'ref)
                                                  (_getvar14798_
                                                   _body14819_
                                                   _vars14804_)
                                                  (if (eq? _$e14822_ 'cons)
                                                      (gx#core-list
                                                       'cons
                                                       (_recur14801_
                                                        (car _body14819_)
                                                        _vars14804_)
                                                       (_recur14801_
                                                        (cdr _body14819_)
                                                        _vars14804_))
                                                      (if (eq? _$e14822_
                                                               'vector)
                                                          (gx#core-list
                                                           'list->vector
                                                           (_recur14801_
                                                            _body14819_
                                                            _vars14804_))
                                                          (if (eq? _$e14822_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'box)
                      (gx#core-list
                       'box
                       (_recur14801_ _body14819_ _vars14804_))
                      (if (eq? _$e14822_ 'splice)
                          (let* ((_body1482914840_ _body14819_)
                                 (_E1483114844_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _body1482914840_)))
                                 (_K1483214882_
                                  (lambda (_args14847_
                                           _iv14848_
                                           _hd14849_
                                           _depth14850_)
                                    (let* ((_targets14856_
                                            (map (lambda (_g1485114853_)
                                                   (_getarg14799_
                                                    _g1485114853_
                                                    _vars14804_))
                                                 _args14847_))
                                           (_fold-in14858_
                                            (gx#gentemps _args14847_))
                                           (_fold-out14860_ (gx#genident__0))
                                           (_lambda-args14862_
                                            (foldr1 cons
                                                    (cons _fold-out14860_ '())
                                                    _fold-in14858_))
                                           (_lambda-body14879_
                                            (if (fx> _depth14850_ '1)
                                                (let ((_r-args14870_
                                                       (map (lambda (_arg14864_)
                                                              (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cdr _arg14864_)))
                    _args14847_))
              (_r-vars14871_
               (foldr (lambda (_arg14866_ _var14867_ _r14868_)
                        (cons (cons (cdr _arg14866_) _var14867_) _r14868_))
                      _vars14804_
                      _args14847_
                      _fold-in14858_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur14801_
                                                   (cons* 'splice
                                                          (fx- _depth14850_ '1)
                                                          _hd14849_
                                                          (cons 'var
                                                                _fold-out14860_)
                                                          _r-args14870_)
                                                   _r-vars14871_))
                                                (let ((_hd-vars14877_
                                                       (foldr (lambda (_arg14873_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _var14874_
                               _r14875_)
                        (cons (cons (cdr _arg14873_) _var14874_) _r14875_))
                      _vars14804_
                      _args14847_
                      _fold-in14858_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#core-list
                                                   'cons
                                                   (_recur14801_
                                                    _hd14849_
                                                    _hd-vars14877_)
                                                   _fold-out14860_)))))
                                      (gx#core-list
                                       'begin
                                       (if (fx> (length _targets14856_) '1)
                                           (gx#core-cons*
                                            'syntax-check-splice-targets
                                            _targets14856_)
                                           '#!void)
                                       (gx#core-cons*
                                        'foldr
                                        (gx#core-list
                                         'lambda%
                                         _lambda-args14862_
                                         _lambda-body14879_)
                                        (_recur14801_ _iv14848_ _vars14804_)
                                        _targets14856_))))))
                            (if (##pair? _body1482914840_)
                                (let ((_hd1483314885_ (##car _body1482914840_))
                                      (_tl1483414887_
                                       (##cdr _body1482914840_)))
                                  (let ((_depth14890_ _hd1483314885_))
                                    (if (##pair? _tl1483414887_)
                                        (let ((_hd1483514892_
                                               (##car _tl1483414887_))
                                              (_tl1483614894_
                                               (##cdr _tl1483414887_)))
                                          (let ((_hd14897_ _hd1483514892_))
                                            (if (##pair? _tl1483614894_)
                                                (let ((_hd1483714899_
                                                       (##car _tl1483614894_))
                                                      (_tl1483814901_
                                                       (##cdr _tl1483614894_)))
                                                  (let* ((_iv14904_
                                                          _hd1483714899_)
                                                         (_args14906_
                                                          _tl1483814901_))
                                                    (_K1483214882_
                                                     _args14906_
                                                     _iv14904_
                                                     _hd14897_
                                                     _depth14890_)))
                                                (_E1483114844_))))
                                        (_E1483114844_))))
                                (_E1483114844_)))
                          (if (eq? _$e14822_ 'var)
                              _body14819_
                              (_BUG14796_ _e14803_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (if (##pair? _e1480514812_)
                            (let ((_hd1480914911_ (##car _e1480514812_))
                                  (_tl1481014913_ (##cdr _e1480514812_)))
                              (let* ((_tag14916_ _hd1480914911_)
                                     (_body14918_ _tl1481014913_))
                                (_K1480814908_ _body14918_ _tag14916_)))
                            (_E1480714816_)))))))
               (_parse14568_
                (lambda (_e14609_)
                  (letrec ((_make-cons14611_
                            (lambda (_hd14786_ _tl14787_)
                              (let ((_g14966_ _hd14786_) (_g14968_ _tl14787_))
                                (begin
                                  (let ((_g14967_ (values-count _g14966_)))
                                    (if (not (fx= _g14967_ 2))
                                        (error "Context expects 2 values"
                                               _g14967_)))
                                  (let ((_g14969_ (values-count _g14968_)))
                                    (if (not (fx= _g14969_ 2))
                                        (error "Context expects 2 values"
                                               _g14969_)))
                                  (let ((_hd-e14789_ (values-ref _g14966_ 0))
                                        (_hd-vars14790_
                                         (values-ref _g14966_ 1)))
                                    (let ((_tl-e14791_ (values-ref _g14968_ 0))
                                          (_tl-vars14792_
                                           (values-ref _g14968_ 1)))
                                      (values (cons* 'cons
                                                     _hd-e14789_
                                                     _tl-e14791_)
                                              (append _hd-vars14790_
                                                      _tl-vars14792_))))))))
                           (_make-splice14612_
                            (lambda (_where14725_
                                     _depth14726_
                                     _hd14727_
                                     _tl14728_)
                              (let ((_g14970_ _hd14727_) (_g14972_ _tl14728_))
                                (begin
                                  (let ((_g14971_ (values-count _g14970_)))
                                    (if (not (fx= _g14971_ 2))
                                        (error "Context expects 2 values"
                                               _g14971_)))
                                  (let ((_g14973_ (values-count _g14972_)))
                                    (if (not (fx= _g14973_ 2))
                                        (error "Context expects 2 values"
                                               _g14973_)))
                                  (let ((_hd-e14730_ (values-ref _g14970_ 0))
                                        (_hd-vars14731_
                                         (values-ref _g14970_ 1)))
                                    (let ((_tl-e14732_ (values-ref _g14972_ 0))
                                          (_tl-vars14733_
                                           (values-ref _g14972_ 1)))
                                      (let _lp14735_ ((_rest14737_
                                                       _hd-vars14731_)
                                                      (_targets14738_ '())
                                                      (_vars14739_
                                                       _tl-vars14733_))
                                        (let* ((_rest1474014750_ _rest14737_)
                                               (_E1474314754_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _rest1474014750_)))
                                               (_else1474214758_
                                                (lambda ()
                                                  (if (null? _targets14738_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Misplaced ellipsis"
                                                       _stx14565_
                                                       _where14725_)
                                                      (values (cons* 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _depth14726_
                             _hd-e14730_
                             _tl-e14732_
                             _targets14738_)
                      _vars14739_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_K1474414767_
                                                (lambda (_rest14761_
                                                         _hd-pat14762_
                                                         _hd-depth*14763_)
                                                  (let ((_hd-depth14765_
                                                         (fx- _hd-depth*14763_
                                                              _depth14726_)))
                                                    (if (fxpositive?
                                                         _hd-depth14765_)
                                                        (_lp14735_
                                                         _rest14761_
                                                         (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd-pat14762_)
                       _targets14738_)
                 (cons (cons _hd-depth14765_ _hd-pat14762_) _vars14739_))
                (if (fxzero? _hd-depth14765_)
                    (_lp14735_
                     _rest14761_
                     (cons (cons 'pattern _hd-pat14762_) _targets14738_)
                     _vars14739_)
                    (gx#raise-syntax-error
                     '#f
                     '"Too many ellipses"
                     _stx14565_
                     _where14725_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1474014750_)
                                              (let ((_hd1474514770_
                                                     (##car _rest1474014750_))
                                                    (_tl1474614772_
                                                     (##cdr _rest1474014750_)))
                                                (if (##pair? _hd1474514770_)
                                                    (let ((_hd1474714775_
                                                           (##car _hd1474514770_))
                                                          (_tl1474814777_
                                                           (##cdr _hd1474514770_)))
                                                      (let* ((_hd-depth*14780_
                                                              _hd1474714775_)
                                                             (_hd-pat14782_
                                                              _tl1474814777_)
                                                             (_rest14784_
                                                              _tl1474614772_))
                                                        (_K1474414767_
                                                         _rest14784_
                                                         _hd-pat14782_
                                                         _hd-depth*14780_)))
                                                    (_else1474214758_)))
                                              (_else1474214758_))))))))))
                           (_recur14613_
                            (lambda (_e14618_ _is-e?14619_)
                              (if (_is-e?14619_ _e14618_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Mislpaced ellipsis"
                                   _stx14565_)
                                  (if (gx#syntax-local-pattern? _e14618_)
                                      (let* ((_pat14621_
                                              (gx#syntax-local-e__0 _e14618_))
                                             (_depth14623_
                                              (##structure-ref
                                               _pat14621_
                                               '3
                                               gx#syntax-pattern::t
                                               '#f)))
                                        (if (fxpositive? _depth14623_)
                                            (values (cons 'ref _pat14621_)
                                                    (cons (cons _depth14623_
                                                                _pat14621_)
                                                          '()))
                                            (values (cons 'pattern _pat14621_)
                                                    '())))
                                      (if (gx#identifier? _e14618_)
                                          (values (cons 'term _e14618_) '())
                                          (if (gx#stx-pair? _e14618_)
                                              (let* ((_e1462514632_ _e14618_)
                                                     (_E1462714636_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _e1462514632_)))
                                                     (_E1462614715_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e1462514632_)
                                                            (let ((_e1462814640_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e1462514632_)))
                      (let ((_hd1462914643_ (##car _e1462814640_))
                            (_tl1463014645_ (##cdr _e1462814640_)))
                        (let* ((_hd14648_ _hd1462914643_)
                               (_rest14650_ _tl1463014645_))
                          (if '#t
                              (if (_is-e?14619_ _hd14648_)
                                  (let* ((_e1465114658_ _rest14650_)
                                         (_E1465314662_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _stx14565_
                                             _e14618_)))
                                         (_E1465214676_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1465114658_)
                                                (let ((_e1465414666_
                                                       (gx#syntax-e
                                                        _e1465114658_)))
                                                  (let ((_hd1465514669_
                                                         (##car _e1465414666_))
                                                        (_tl1465614671_
                                                         (##cdr _e1465414666_)))
                                                    (let ((_rest14674_
                                                           _hd1465514669_))
                                                      (if (gx#stx-null?
                                                           _tl1465614671_)
                                                          (if '#t
                                                              (_recur14613_
                                                               _rest14674_
                                                               false)
                                                              (_E1465314662_))
                                                          (_E1465314662_)))))
                                                (_E1465314662_)))))
                                    (_E1465214676_))
                                  (let _lp14680_ ((_rest14682_ _rest14650_)
                                                  (_depth14683_ '0))
                                    (let* ((_e1468414691_ _rest14682_)
                                           (_E1468614695_
                                            (lambda ()
                                              (if (fxpositive? _depth14683_)
                                                  (_make-splice14612_
                                                   _e14618_
                                                   _depth14683_
                                                   (_recur14613_
                                                    _hd14648_
                                                    _is-e?14619_)
                                                   (_recur14613_
                                                    _rest14682_
                                                    _is-e?14619_))
                                                  (_make-cons14611_
                                                   (_recur14613_
                                                    _hd14648_
                                                    _is-e?14619_)
                                                   (_recur14613_
                                                    _rest14682_
                                                    _is-e?14619_)))))
                                           (_E1468514711_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1468414691_)
                                                  (let ((_e1468714699_
                                                         (gx#syntax-e
                                                          _e1468414691_)))
                                                    (let ((_hd1468814702_
                                                           (##car _e1468714699_))
                                                          (_tl1468914704_
                                                           (##cdr _e1468714699_)))
                                                      (let* ((_rest-hd14707_
                                                              _hd1468814702_)
                                                             (_rest-tl14709_
                                                              _tl1468914704_))
                                                        (if '#t
                                                            (if (_is-e?14619_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rest-hd14707_)
                        (_lp14680_ _rest-tl14709_ (fx+ _depth14683_ '1))
                        (if (fxpositive? _depth14683_)
                            (_make-splice14612_
                             _e14618_
                             _depth14683_
                             (_recur14613_ _hd14648_ _is-e?14619_)
                             (_recur14613_ _rest14682_ _is-e?14619_))
                            (_make-cons14611_
                             (_recur14613_ _hd14648_ _is-e?14619_)
                             (_recur14613_ _rest14682_ _is-e?14619_))))
                    (_E1468614695_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1468614695_)))))
                                      (_E1468514711_))))
                              (_E1462714636_)))))
                    (_E1462714636_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1462614715_))
                                              (if (gx#stx-vector? _e14618_)
                                                  (let ((_g14974_
                                                         (_recur14613_
                                                          (vector->list
                                                           (gx#stx-unwrap__0
                                                            _e14618_))
                                                          _is-e?14619_)))
                                                    (begin
                                                      (let ((_g14975_
                                                             (values-count
                                                              _g14974_)))
                                                        (if (not (fx= _g14975_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g14975_)))
              (let ((_e14719_ (values-ref _g14974_ 0))
                    (_vars14720_ (values-ref _g14974_ 1)))
                (values (cons 'vector _e14719_) _vars14720_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e14618_)
                                                      (let ((_g14976_
                                                             (_recur14613_
                                                              (unbox (gx#stx-unwrap__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e14618_))
                      _is-e?14619_)))
                (begin
                  (let ((_g14977_ (values-count _g14976_)))
                    (if (not (fx= _g14977_ 2))
                        (error "Context expects 2 values" _g14977_)))
                  (let ((_e14722_ (values-ref _g14976_ 0))
                        (_vars14723_ (values-ref _g14976_ 1)))
                    (values (cons 'box _e14722_) _vars14723_))))
              (values (cons 'datum _e14618_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    (let ((_g14978_ (_recur14613_ _e14609_ gx#ellipsis?)))
                      (begin
                        (let ((_g14979_ (values-count _g14978_)))
                          (if (not (fx= _g14979_ 2))
                              (error "Context expects 2 values" _g14979_)))
                        (let ((_tree14615_ (values-ref _g14978_ 0))
                              (_vars14616_ (values-ref _g14978_ 1)))
                          (if (null? _vars14616_)
                              _tree14615_
                              (gx#raise-syntax-error
                               '#f
                               '"Missing ellipsis"
                               _stx14565_
                               _vars14616_)))))))))
        (let* ((_e1456914579_ _stx14565_)
               (_E1457114583_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _stx14565_)))
               (_E1457014605_
                (lambda ()
                  (if (gx#stx-pair? _e1456914579_)
                      (let ((_e1457214587_ (gx#syntax-e _e1456914579_)))
                        (let ((_hd1457314590_ (##car _e1457214587_))
                              (_tl1457414592_ (##cdr _e1457214587_)))
                          (if (gx#stx-pair? _tl1457414592_)
                              (let ((_e1457514595_
                                     (gx#syntax-e _tl1457414592_)))
                                (let ((_hd1457614598_ (##car _e1457514595_))
                                      (_tl1457714600_ (##cdr _e1457514595_)))
                                  (let ((_form14603_ _hd1457614598_))
                                    (if (gx#stx-null? _tl1457714600_)
                                        (if '#t
                                            (gx#stx-wrap-source
                                             (_generate14567_
                                              (_parse14568_ _form14603_))
                                             (gx#stx-source _stx14565_))
                                            (_E1457114583_))
                                        (_E1457114583_)))))
                              (_E1457114583_))))
                      (_E1457114583_)))))
          (_E1457014605_)))))
  (begin
    (define gx#macro-expand-syntax-case__opt-lambda13835
      (lambda (_stx13837_ _identifier=?13838_ _unwrap-e13839_ _wrap-e13840_)
        (letrec ((_generate-bindings13842_
                  (lambda (_target14427_
                           _ids14428_
                           _clauses14429_
                           _clause-ids14430_
                           _E14431_)
                    (letrec ((_generate114433_
                              (lambda (_clause14532_ _clause-id14533_ _E14534_)
                                (cons (cons _clause-id14533_ '())
                                      (cons (gx#core-list
                                             'lambda%
                                             (cons _target14427_ '())
                                             (_generate-clause13844_
                                              _target14427_
                                              _ids14428_
                                              _clause14532_
                                              _E14534_))
                                            '())))))
                      (let _lp14435_ ((_rest14437_ _clauses14429_)
                                      (_rest-ids14438_ _clause-ids14430_)
                                      (_bindings14439_ '()))
                        (let* ((_rest1444014448_ _rest14437_)
                               (_E1444314452_
                                (lambda ()
                                  (error '"No clause matching"
                                         _rest1444014448_)))
                               (_else1444214456_ (lambda () _bindings14439_))
                               (_K1444414520_
                                (lambda (_rest14459_ _clause14460_)
                                  (let* ((_rest-ids1446114468_ _rest-ids14438_)
                                         (_E1446314472_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids1446114468_)))
                                         (_K1446414508_
                                          (lambda (_rest-ids14475_
                                                   _clause-id14476_)
                                            (let* ((_rest-ids1447714485_
                                                    _rest-ids14475_)
                                                   (_E1448014489_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _rest-ids1447714485_)))
                                                   (_else1447914493_
                                                    (lambda ()
                                                      (cons (_generate114433_
                                                             _clause14460_
                                                             _clause-id14476_
                                                             _E14431_)
                                                            _bindings14439_)))
                                                   (_K1448114498_
                                                    (lambda (_next-clause-id14496_)
                                                      (_lp14435_
                                                       _rest14459_
                                                       _rest-ids14475_
                                                       (cons (_generate114433_
                                                              _clause14460_
                                                              _clause-id14476_
                                                              _next-clause-id14496_)
                                                             _bindings14439_)))))
                                              (if (##pair? _rest-ids1447714485_)
                                                  (let ((_hd1448214501_
                                                         (##car _rest-ids1447714485_))
                                                        (_tl1448314503_
                                                         (##cdr _rest-ids1447714485_)))
                                                    (let ((_next-clause-id14506_
                                                           _hd1448214501_))
                                                      (_K1448114498_
                                                       _next-clause-id14506_)))
                                                  (_else1447914493_))))))
                                    (if (##pair? _rest-ids1446114468_)
                                        (let ((_hd1446514511_
                                               (##car _rest-ids1446114468_))
                                              (_tl1446614513_
                                               (##cdr _rest-ids1446114468_)))
                                          (let* ((_clause-id14516_
                                                  _hd1446514511_)
                                                 (_rest-ids14518_
                                                  _tl1446614513_))
                                            (_K1446414508_
                                             _rest-ids14518_
                                             _clause-id14516_)))
                                        (_E1446314472_))))))
                          (if (##pair? _rest1444014448_)
                              (let ((_hd1444514523_ (##car _rest1444014448_))
                                    (_tl1444614525_ (##cdr _rest1444014448_)))
                                (let* ((_clause14528_ _hd1444514523_)
                                       (_rest14530_ _tl1444614525_))
                                  (_K1444414520_ _rest14530_ _clause14528_)))
                              (_else1444214456_)))))))
                 (_generate-body13843_
                  (lambda (_bindings14387_ _body14388_)
                    (let _recur14390_ ((_rest14392_ _bindings14387_))
                      (let* ((_rest1439314401_ _rest14392_)
                             (_E1439614405_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1439314401_)))
                             (_else1439514409_ (lambda () _body14388_))
                             (_K1439714415_
                              (lambda (_rest14412_ _hd14413_)
                                (gx#core-list
                                 'let-values
                                 (cons _hd14413_ '())
                                 (_recur14390_ _rest14412_)))))
                        (if (##pair? _rest1439314401_)
                            (let ((_hd1439814418_ (##car _rest1439314401_))
                                  (_tl1439914420_ (##cdr _rest1439314401_)))
                              (let* ((_hd14423_ _hd1439814418_)
                                     (_rest14425_ _tl1439914420_))
                                (_K1439714415_ _rest14425_ _hd14423_)))
                            (_else1439514409_))))))
                 (_generate-clause13844_
                  (lambda (_target14250_ _ids14251_ _clause14252_ _E14253_)
                    (letrec ((_generate114255_
                              (lambda (_hd14342_ _fender14343_ _body14344_)
                                (let ((_g14980_
                                       (_parse-clause13846_
                                        _hd14342_
                                        _ids14251_)))
                                  (begin
                                    (let ((_g14981_ (values-count _g14980_)))
                                      (if (not (fx= _g14981_ 2))
                                          (error "Context expects 2 values"
                                                 _g14981_)))
                                    (let ((_e14346_ (values-ref _g14980_ 0))
                                          (_mvars14347_
                                           (values-ref _g14980_ 1)))
                                      (let* ((_pvars14349_
                                              (map gx#syntax-local-rewrap
                                                   (gx#gentemps _mvars14347_)))
                                             (_E14351_
                                              (cons _E14253_
                                                    (cons _target14250_ '())))
                                             (_K14384_
                                              (gx#core-list
                                               'lambda%
                                               _pvars14349_
                                               (gx#core-list
                                                'let-syntax
                                                (map (lambda (_mvar14353_
                                                              _pvar14354_)
                                                       (let* ((_mvar1435514362_
                                                               _mvar14353_)
                                                              (_E1435714366_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (error '"No clause matching" _mvar1435514362_)))
                      (_K1435814372_
                       (lambda (_depth14369_ _id14370_)
                         (cons _id14370_
                               (cons (gx#core-list
                                      'make-syntax-pattern
                                      (gx#core-list 'quote _id14370_)
                                      (gx#core-list 'quote _pvar14354_)
                                      _depth14369_)
                                     '())))))
                 (if (##pair? _mvar1435514362_)
                     (let ((_hd1435914375_ (##car _mvar1435514362_))
                           (_tl1436014377_ (##cdr _mvar1435514362_)))
                       (let* ((_id14380_ _hd1435914375_)
                              (_depth14382_ _tl1436014377_))
                         (_K1435814372_ _depth14382_ _id14380_)))
                     (_E1435714366_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _mvars14347_
                                                     _pvars14349_)
                                                (if (eq? _fender14343_ '#t)
                                                    _body14344_
                                                    (gx#core-list
                                                     'if
                                                     _fender14343_
                                                     _body14344_
                                                     _E14351_))))))
                                        (_generate-match13845_
                                         _hd14342_
                                         _target14250_
                                         _e14346_
                                         _mvars14347_
                                         _K14384_
                                         _E14351_))))))))
                      (let* ((_e1425614276_ _clause14252_)
                             (_E1426514280_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _e1425614276_)))
                             (_E1425814314_
                              (lambda ()
                                (if (gx#stx-pair? _e1425614276_)
                                    (let ((_e1426614284_
                                           (gx#syntax-e _e1425614276_)))
                                      (let ((_hd1426714287_
                                             (##car _e1426614284_))
                                            (_tl1426814289_
                                             (##cdr _e1426614284_)))
                                        (let ((_hd14292_ _hd1426714287_))
                                          (if (gx#stx-pair? _tl1426814289_)
                                              (let ((_e1426914294_
                                                     (gx#syntax-e
                                                      _tl1426814289_)))
                                                (let ((_hd1427014297_
                                                       (##car _e1426914294_))
                                                      (_tl1427114299_
                                                       (##cdr _e1426914294_)))
                                                  (let ((_fender14302_
                                                         _hd1427014297_))
                                                    (if (gx#stx-pair?
                                                         _tl1427114299_)
                                                        (let ((_e1427214304_
                                                               (gx#syntax-e
                                                                _tl1427114299_)))
                                                          (let ((_hd1427314307_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1427214304_))
                        (_tl1427414309_ (##cdr _e1427214304_)))
                    (let ((_body14312_ _hd1427314307_))
                      (if (gx#stx-null? _tl1427414309_)
                          (if '#t
                              (_generate114255_
                               _hd14292_
                               _fender14302_
                               _body14312_)
                              (_E1426514280_))
                          (_E1426514280_)))))
                (_E1426514280_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1426514280_)))))
                                    (_E1426514280_))))
                             (_E1425714338_
                              (lambda ()
                                (if (gx#stx-pair? _e1425614276_)
                                    (let ((_e1425914318_
                                           (gx#syntax-e _e1425614276_)))
                                      (let ((_hd1426014321_
                                             (##car _e1425914318_))
                                            (_tl1426114323_
                                             (##cdr _e1425914318_)))
                                        (let ((_hd14326_ _hd1426014321_))
                                          (if (gx#stx-pair? _tl1426114323_)
                                              (let ((_e1426214328_
                                                     (gx#syntax-e
                                                      _tl1426114323_)))
                                                (let ((_hd1426314331_
                                                       (##car _e1426214328_))
                                                      (_tl1426414333_
                                                       (##cdr _e1426214328_)))
                                                  (let ((_body14336_
                                                         _hd1426314331_))
                                                    (if (gx#stx-null?
                                                         _tl1426414333_)
                                                        (if '#t
                                                            (_generate114255_
                                                             _hd14326_
                                                             '#t
                                                             _body14336_)
                                                            (_E1425814314_))
                                                        (_E1425814314_)))))
                                              (_E1425814314_)))))
                                    (_E1425814314_)))))
                        (_E1425714338_)))))
                 (_generate-match13845_
                  (lambda (_where14009_
                           _target14010_
                           _hd14011_
                           _mvars14012_
                           _K14013_
                           _E14014_)
                    (letrec ((_BUG14016_
                              (lambda (_q14248_)
                                (error '"BUG: syntax-case; generate"
                                       _stx13837_
                                       _hd14011_
                                       _q14248_)))
                             (_recur14017_
                              (lambda (_e14102_
                                       _vars14103_
                                       _target14104_
                                       _E14105_
                                       _k14106_)
                                (let* ((_e1410714114_ _e14102_)
                                       (_E1410914118_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e1410714114_)))
                                       (_K1411014236_
                                        (lambda (_body14121_ _tag14122_)
                                          (let ((_$e14124_ _tag14122_))
                                            (if (eq? _$e14124_ 'any)
                                                (_k14106_ _vars14103_)
                                                (if (eq? _$e14124_ 'id)
                                                    (gx#core-list
                                                     'if
                                                     (gx#core-list
                                                      'identifier?
                                                      _target14104_)
                                                     (gx#core-list
                                                      'if
                                                      (gx#core-list
                                                       _identifier=?13838_
                                                       (gx#core-list
                                                        _wrap-e13840_
                                                        _body14121_)
                                                       _target14104_)
                                                      (_k14106_ _vars14103_)
                                                      _E14105_)
                                                     _E14105_)
                                                    (if (eq? _$e14124_ 'var)
                                                        (_k14106_
                                                         (cons (cons _body14121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _target14104_)
                       _vars14103_))
                (if (eq? _$e14124_ 'cons)
                    (let ((_$e14127_ (gx#genident__1 'e))
                          (_$hd14128_ (gx#genident__1 'hd))
                          (_$tl14129_ (gx#genident__1 'tl)))
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _target14104_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$e14127_ '())
                                    (cons (gx#core-list
                                           _unwrap-e13839_
                                           _target14104_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$hd14128_ '())
                                     (cons (gx#core-list '##car _$e14127_)
                                           '()))
                               (cons (cons (cons _$tl14129_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$e14127_)
                                                 '()))
                                     '()))
                         (let* ((_body1413014137_ _body14121_)
                                (_E1413214141_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _body1413014137_)))
                                (_K1413314149_
                                 (lambda (_tl14144_ _hd14145_)
                                   (_recur14017_
                                    _hd14145_
                                    _vars14103_
                                    _$hd14128_
                                    _E14105_
                                    (lambda (_vars14147_)
                                      (_recur14017_
                                       _tl14144_
                                       _vars14147_
                                       _$tl14129_
                                       _E14105_
                                       _k14106_))))))
                           (if (##pair? _body1413014137_)
                               (let ((_hd1413414152_ (##car _body1413014137_))
                                     (_tl1413514154_ (##cdr _body1413014137_)))
                                 (let* ((_hd14157_ _hd1413414152_)
                                        (_tl14159_ _tl1413514154_))
                                   (_K1413314149_ _tl14159_ _hd14157_)))
                               (_E1413214141_)))))
                       _E14105_))
                    (if (eq? _$e14124_ 'splice)
                        (let* ((_body1416014167_ _body14121_)
                               (_E1416214171_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body1416014167_)))
                               (_K1416314220_
                                (lambda (_tl14174_ _hd14175_)
                                  (let* ((_rlen14177_
                                          (_splice-rlen14018_ _tl14174_))
                                         (_$target14179_
                                          (gx#genident__1 'target))
                                         (_$hd14181_ (gx#genident__1 'hd))
                                         (_$tl14183_ (gx#genident__1 'tl))
                                         (_$lp14185_ (gx#genident__1 'loop))
                                         (_$lp-e14187_ (gx#genident__1 'e))
                                         (_$lp-hd14189_
                                          (gx#genident__1 'lp-hd))
                                         (_$lp-tl14191_
                                          (gx#genident__1 'lp-tl))
                                         (_svars14193_
                                          (_splice-vars14019_ _hd14175_))
                                         (_lvars14195_
                                          (gx#gentemps _svars14193_))
                                         (_tlvars14197_
                                          (gx#gentemps _svars14193_))
                                         (_linit14201_
                                          (map (lambda (_var14199_)
                                                 (gx#core-list 'quote '()))
                                               _lvars14195_)))
                                    (letrec ((_make-loop14204_
                                              (lambda (_vars14206_)
                                                (gx#core-list
                                                 'letrec-values
                                                 (cons (cons (cons _$lp14185_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _$hd14181_ _lvars14195_)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-pair? _$hd14181_)
                             (gx#core-list
                              'let-values
                              (cons (cons (cons _$lp-e14187_ '())
                                          (cons (gx#core-list
                                                 _unwrap-e13839_
                                                 _$hd14181_)
                                                '()))
                                    '())
                              (gx#core-list
                               'let-values
                               (cons (cons (cons _$lp-hd14189_ '())
                                           (cons (gx#core-list
                                                  '##car
                                                  _$lp-e14187_)
                                                 '()))
                                     (cons (cons (cons _$lp-tl14191_ '())
                                                 (cons (gx#core-list
                                                        '##cdr
                                                        _$lp-e14187_)
                                                       '()))
                                           '()))
                               (_recur14017_
                                _hd14175_
                                '()
                                _$lp-hd14189_
                                _E14105_
                                (lambda (_hdvars14208_)
                                  (cons* _$lp14185_
                                         _$lp-tl14191_
                                         (map (lambda (_svar14210_ _lvar14211_)
                                                (gx#core-list
                                                 'cons
                                                 (assgetq _svar14210_
                                                          _hdvars14208_
                                                          _BUG14016_)
                                                 _lvar14211_))
                                              _svars14193_
                                              _lvars14195_))))))
                             (gx#core-list
                              'let-values
                              (map (lambda (_lvar14213_ _tlvar14214_)
                                     (cons (cons _tlvar14214_ '())
                                           (cons (gx#core-list
                                                  'reverse
                                                  _lvar14213_)
                                                 '())))
                                   _lvars14195_
                                   _tlvars14197_)
                              (_k14106_
                               (foldl (lambda (_svar14216_
                                               _tlvar14217_
                                               _r14218_)
                                        (cons (cons _svar14216_ _tlvar14217_)
                                              _r14218_))
                                      _vars14206_
                                      _svars14193_
                                      _tlvars14197_)))))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons* _$lp14185_
                                                        _$target14179_
                                                        _linit14201_)))))
                                      (gx#core-list
                                       'if
                                       (gx#core-list
                                        'stx-pair/null?
                                        _target14104_)
                                       (gx#core-list
                                        'if
                                        (gx#core-list
                                         'fx>=
                                         (gx#core-list
                                          'stx-length
                                          _target14104_)
                                         _rlen14177_)
                                        (gx#core-list
                                         'let-values
                                         (cons (cons (cons _$target14179_
                                                           (cons _$tl14183_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (gx#core-list
                                                            'syntax-split-splice
                                                            _target14104_
                                                            _rlen14177_)
                                                           '()))
                                               '())
                                         (_recur14017_
                                          _tl14174_
                                          _vars14103_
                                          _$tl14183_
                                          _E14105_
                                          _make-loop14204_))
                                        _E14105_)
                                       _E14105_))))))
                          (if (##pair? _body1416014167_)
                              (let ((_hd1416414223_ (##car _body1416014167_))
                                    (_tl1416514225_ (##cdr _body1416014167_)))
                                (let* ((_hd14228_ _hd1416414223_)
                                       (_tl14230_ _tl1416514225_))
                                  (_K1416314220_ _tl14230_ _hd14228_)))
                              (_E1416214171_)))
                        (if (eq? _$e14124_ 'null)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-null? _target14104_)
                             (_k14106_ _vars14103_)
                             _E14105_)
                            (if (eq? _$e14124_ 'vector)
                                (let ((_$e14232_ (gx#genident__1 'e)))
                                  (gx#core-list
                                   'if
                                   (gx#core-list 'stx-vector? _target14104_)
                                   (gx#core-list
                                    'let-values
                                    (cons (cons (cons _$e14232_ '())
                                                (cons (gx#core-list
                                                       'vector->list
                                                       (gx#core-list
                                                        _unwrap-e13839_
                                                        _target14104_))
                                                      '()))
                                          '())
                                    (_recur14017_
                                     _body14121_
                                     _vars14103_
                                     _$e14232_
                                     _E14105_
                                     _k14106_))
                                   _E14105_))
                                (if (eq? _$e14124_ 'box)
                                    (let ((_$e14234_ (gx#genident__1 'e)))
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-box? _target14104_)
                                       (gx#core-list
                                        'let-values
                                        (cons (cons (cons _$e14234_ '())
                                                    (cons (gx#core-list
                                                           'unbox
                                                           (gx#core-list
                                                            _unwrap-e13839_
                                                            _target14104_))
                                                          '()))
                                              '())
                                        (_recur14017_
                                         _body14121_
                                         _vars14103_
                                         _$e14234_
                                         _E14105_
                                         _k14106_))
                                       _E14105_))
                                    (if (eq? _$e14124_ 'datum)
                                        (gx#core-list
                                         'if
                                         (gx#core-list
                                          'stx-datum?
                                          _target14104_)
                                         (gx#core-list
                                          'if
                                          (gx#core-list
                                           'equal?
                                           (gx#core-list 'stx-e _target14104_)
                                           _body14121_)
                                          (_k14106_ _vars14103_)
                                          _E14105_)
                                         _E14105_)
                                        (_BUG14016_ _e14102_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (##pair? _e1410714114_)
                                      (let ((_hd1411114239_
                                             (##car _e1410714114_))
                                            (_tl1411214241_
                                             (##cdr _e1410714114_)))
                                        (let* ((_tag14244_ _hd1411114239_)
                                               (_body14246_ _tl1411214241_))
                                          (_K1411014236_
                                           _body14246_
                                           _tag14244_)))
                                      (_E1410914118_)))))
                             (_splice-rlen14018_
                              (lambda (_e14064_)
                                (let _lp14066_ ((_e14068_ _e14064_)
                                                (_n14069_ '0))
                                  (let* ((_e1407014077_ _e14068_)
                                         (_E1407214081_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1407014077_)))
                                         (_K1407314090_
                                          (lambda (_body14084_ _tag14085_)
                                            (let ((_$e14087_ _tag14085_))
                                              (if (eq? _$e14087_ 'splice)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Ambiguous pattern"
                                                   _stx13837_
                                                   _where14009_)
                                                  (if (eq? _$e14087_ 'cons)
                                                      (_lp14066_
                                                       (cdr _body14084_)
                                                       (fx+ _n14069_ '1))
                                                      _n14069_))))))
                                    (if (##pair? _e1407014077_)
                                        (let ((_hd1407414093_
                                               (##car _e1407014077_))
                                              (_tl1407514095_
                                               (##cdr _e1407014077_)))
                                          (let* ((_tag14098_ _hd1407414093_)
                                                 (_body14100_ _tl1407514095_))
                                            (_K1407314090_
                                             _body14100_
                                             _tag14098_)))
                                        (_E1407214081_))))))
                             (_splice-vars14019_
                              (lambda (_e14026_)
                                (let _recur14028_ ((_e14030_ _e14026_)
                                                   (_vars14031_ '()))
                                  (let* ((_e1403214039_ _e14030_)
                                         (_E1403414043_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1403214039_)))
                                         (_K1403514052_
                                          (lambda (_body14046_ _tag14047_)
                                            (let ((_$e14049_ _tag14047_))
                                              (if (eq? _$e14049_ 'var)
                                                  (cons _body14046_
                                                        _vars14031_)
                                                  (if (memq _$e14049_
                                                            '(cons splice))
                                                      (_recur14028_
                                                       (cdr _body14046_)
                                                       (_recur14028_
                                                        (car _body14046_)
                                                        _vars14031_))
                                                      (if (memq _$e14049_
                                                                '(vector box))
                                                          (_recur14028_
                                                           _body14046_
                                                           _vars14031_)
                                                          _vars14031_)))))))
                                    (if (##pair? _e1403214039_)
                                        (let ((_hd1403614055_
                                               (##car _e1403214039_))
                                              (_tl1403714057_
                                               (##cdr _e1403214039_)))
                                          (let* ((_tag14060_ _hd1403614055_)
                                                 (_body14062_ _tl1403714057_))
                                            (_K1403514052_
                                             _body14062_
                                             _tag14060_)))
                                        (_E1403414043_))))))
                             (_make-body14020_
                              (lambda (_vars14022_)
                                (cons _K14013_
                                      (map (lambda (_mvar14024_)
                                             (assgetq (car _mvar14024_)
                                                      _vars14022_
                                                      _BUG14016_))
                                           _mvars14012_)))))
                      (_recur14017_
                       _hd14011_
                       '()
                       _target14010_
                       _E14014_
                       _make-body14020_))))
                 (_parse-clause13846_
                  (lambda (_hd13915_ _ids13916_)
                    (let _recur13918_ ((_e13920_ _hd13915_)
                                       (_vars13921_ '())
                                       (_depth13922_ '0))
                      (if (gx#identifier? _e13920_)
                          (if (gx#underscore? _e13920_)
                              (values '(any) _vars13921_)
                              (if (gx#ellipsis? _e13920_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Misplaced ellipsis"
                                   _stx13837_
                                   _hd13915_)
                                  (if (find (lambda (_id13924_)
                                              (gx#bound-identifier=?
                                               _e13920_
                                               _id13924_))
                                            _ids13916_)
                                      (values (cons 'id _e13920_) _vars13921_)
                                      (if (find (lambda (_var13926_)
                                                  (gx#bound-identifier=?
                                                   _e13920_
                                                   (car _var13926_)))
                                                _vars13921_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Duplicate pattern variable"
                                           _stx13837_
                                           _e13920_)
                                          (values (cons 'var _e13920_)
                                                  (cons (cons _e13920_
                                                              _depth13922_)
                                                        _vars13921_))))))
                          (if (gx#stx-pair? _e13920_)
                              (let* ((_e1392713934_ _e13920_)
                                     (_E1392913938_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _e1392713934_)))
                                     (_E1392813999_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1392713934_)
                                            (let ((_e1393013942_
                                                   (gx#syntax-e
                                                    _e1392713934_)))
                                              (let ((_hd1393113945_
                                                     (##car _e1393013942_))
                                                    (_tl1393213947_
                                                     (##cdr _e1393013942_)))
                                                (let* ((_hd13950_
                                                        _hd1393113945_)
                                                       (_rest13952_
                                                        _tl1393213947_))
                                                  (if '#t
                                                      (let* ((_make-pair13967_
                                                              (lambda (_tag13954_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd13955_
                               _tl13956_)
                        (let* ((_hd-depth13958_
                                (if (eq? _tag13954_ 'splice)
                                    (fx+ _depth13922_ '1)
                                    _depth13922_))
                               (_g14982_
                                (_recur13918_
                                 _hd13955_
                                 _vars13921_
                                 _hd-depth13958_)))
                          (begin
                            (let ((_g14983_ (values-count _g14982_)))
                              (if (not (fx= _g14983_ 2))
                                  (error "Context expects 2 values" _g14983_)))
                            (let ((_hd13960_ (values-ref _g14982_ 0))
                                  (_vars13961_ (values-ref _g14982_ 1)))
                              (let ((_g14984_
                                     (_recur13918_
                                      _tl13956_
                                      _vars13961_
                                      _depth13922_)))
                                (begin
                                  (let ((_g14985_ (values-count _g14984_)))
                                    (if (not (fx= _g14985_ 2))
                                        (error "Context expects 2 values"
                                               _g14985_)))
                                  (let ((_tl13963_ (values-ref _g14984_ 0))
                                        (_vars13964_ (values-ref _g14984_ 1)))
                                    (let ()
                                      (values (cons* _tag13954_
                                                     _hd13960_
                                                     _tl13963_)
                                              _vars13964_))))))))))
                     (_e1396813975_ _rest13952_)
                     (_E1397013979_
                      (lambda ()
                        (_make-pair13967_ 'cons _hd13950_ _rest13952_)))
                     (_E1396913995_
                      (lambda ()
                        (if (gx#stx-pair? _e1396813975_)
                            (let ((_e1397113983_ (gx#syntax-e _e1396813975_)))
                              (let ((_hd1397213986_ (##car _e1397113983_))
                                    (_tl1397313988_ (##cdr _e1397113983_)))
                                (let* ((_rest-hd13991_ _hd1397213986_)
                                       (_rest-tl13993_ _tl1397313988_))
                                  (if '#t
                                      (if (gx#ellipsis? _rest-hd13991_)
                                          (_make-pair13967_
                                           'splice
                                           _hd13950_
                                           _rest-tl13993_)
                                          (_make-pair13967_
                                           'cons
                                           _hd13950_
                                           _rest13952_))
                                      (_E1397013979_)))))
                            (_E1397013979_)))))
                (_E1396913995_))
              (_E1392913938_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1392913938_)))))
                                (_E1392813999_))
                              (if (gx#stx-null? _e13920_)
                                  (values '(null) _vars13921_)
                                  (if (gx#stx-vector? _e13920_)
                                      (let ((_g14986_
                                             (_recur13918_
                                              (vector->list
                                               (gx#syntax-e _e13920_))
                                              _vars13921_
                                              _depth13922_)))
                                        (begin
                                          (let ((_g14987_
                                                 (values-count _g14986_)))
                                            (if (not (fx= _g14987_ 2))
                                                (error "Context expects 2 values"
                                                       _g14987_)))
                                          (let ((_e14003_
                                                 (values-ref _g14986_ 0))
                                                (_vars14004_
                                                 (values-ref _g14986_ 1)))
                                            (values (cons 'vector _e14003_)
                                                    _vars14004_))))
                                      (if (gx#stx-box? _e13920_)
                                          (let ((_g14988_
                                                 (_recur13918_
                                                  (unbox (gx#syntax-e
                                                          _e13920_))
                                                  _vars13921_
                                                  _depth13922_)))
                                            (begin
                                              (let ((_g14989_
                                                     (values-count _g14988_)))
                                                (if (not (fx= _g14989_ 2))
                                                    (error "Context expects 2 values"
                                                           _g14989_)))
                                              (let ((_e14006_
                                                     (values-ref _g14988_ 0))
                                                    (_vars14007_
                                                     (values-ref _g14988_ 1)))
                                                (values (cons 'box _e14006_)
                                                        _vars14007_))))
                                          (if (gx#stx-datum? _e13920_)
                                              (values (cons 'datum
                                                            (gx#stx-e
                                                             _e13920_))
                                                      _vars13921_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad pattern"
                                               _stx13837_
                                               _e13920_)))))))))))
          (let* ((_e1384713860_ _stx13837_)
                 (_E1384913864_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1384713860_)))
                 (_E1384813911_
                  (lambda ()
                    (if (gx#stx-pair? _e1384713860_)
                        (let ((_e1385013868_ (gx#syntax-e _e1384713860_)))
                          (let ((_hd1385113871_ (##car _e1385013868_))
                                (_tl1385213873_ (##cdr _e1385013868_)))
                            (if (gx#stx-pair? _tl1385213873_)
                                (let ((_e1385313876_
                                       (gx#syntax-e _tl1385213873_)))
                                  (let ((_hd1385413879_ (##car _e1385313876_))
                                        (_tl1385513881_ (##cdr _e1385313876_)))
                                    (let ((_expr13884_ _hd1385413879_))
                                      (if (gx#stx-pair? _tl1385513881_)
                                          (let ((_e1385613886_
                                                 (gx#syntax-e _tl1385513881_)))
                                            (let ((_hd1385713889_
                                                   (##car _e1385613886_))
                                                  (_tl1385813891_
                                                   (##cdr _e1385613886_)))
                                              (let* ((_ids13894_
                                                      _hd1385713889_)
                                                     (_clauses13896_
                                                      _tl1385813891_))
                                                (if '#t
                                                    (if (not (gx#identifier-list?
                                                              _ids13894_))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad template identifier list"
                                                         _stx13837_
                                                         _ids13894_)
                                                        (if (not (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _clauses13896_))
                    (gx#raise-syntax-error '#f '"Bad syntax" _stx13837_)
                    (let* ((_ids13898_ (gx#syntax->list _ids13894_))
                           (_clauses13900_ (gx#syntax->list _clauses13896_))
                           (_clause-ids13902_ (gx#gentemps _clauses13900_))
                           (_E13904_ (gx#genident__0))
                           (_target13906_ (gx#genident__0))
                           (_first13908_
                            (if (null? _clauses13900_)
                                _E13904_
                                (car _clause-ids13902_))))
                      (gx#stx-wrap-source
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _E13904_ '())
                                    (cons (gx#core-list
                                           'lambda%
                                           (cons _target13906_ '())
                                           (gx#core-list
                                            'raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _target13906_))
                                          '()))
                              '())
                        (_generate-body13843_
                         (_generate-bindings13842_
                          _target13906_
                          _ids13898_
                          _clauses13900_
                          _clause-ids13902_
                          _E13904_)
                         (cons _first13908_ (cons _expr13884_ '()))))
                       (gx#stx-source _stx13837_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1384913864_)))))
                                          (_E1384913864_)))))
                                (_E1384913864_))))
                        (_E1384913864_)))))
            (_E1384813911_)))))
    (begin
      (define gx#macro-expand-syntax-case__0
        (lambda (_stx14539_)
          (let* ((_identifier=?14541_ 'free-identifier=?)
                 (_unwrap-e14543_ 'syntax-e)
                 (_wrap-e14545_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda13835
             _stx14539_
             _identifier=?14541_
             _unwrap-e14543_
             _wrap-e14545_))))
      (define gx#macro-expand-syntax-case__1
        (lambda (_stx14547_ _identifier=?14548_)
          (let* ((_unwrap-e14550_ 'syntax-e) (_wrap-e14552_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda13835
             _stx14547_
             _identifier=?14548_
             _unwrap-e14550_
             _wrap-e14552_))))
      (define gx#macro-expand-syntax-case__2
        (lambda (_stx14554_ _identifier=?14555_ _unwrap-e14556_)
          (let ((_wrap-e14558_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda13835
             _stx14554_
             _identifier=?14555_
             _unwrap-e14556_
             _wrap-e14558_))))
      (define gx#macro-expand-syntax-case
        (lambda _g14991_
          (let ((_g14990_ (length _g14991_)))
            (cond ((fx= _g14990_ 1)
                   (apply gx#macro-expand-syntax-case__0 _g14991_))
                  ((fx= _g14990_ 2)
                   (apply gx#macro-expand-syntax-case__1 _g14991_))
                  ((fx= _g14990_ 3)
                   (apply gx#macro-expand-syntax-case__2 _g14991_))
                  ((fx= _g14990_ 4)
                   (apply gx#macro-expand-syntax-case__opt-lambda13835
                          _g14991_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-syntax-case
                    _g14991_))))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx13834_)
      (if (gx#identifier? _stx13834_)
          (##structure-instance-of?
           (gx#syntax-local-e__opt-lambda4507 _stx13834_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd13792_ . _rest13793_)
      (let ((_len13795_ (length _hd13792_)))
        (let _lp13797_ ((_rest13799_ _rest13793_))
          (let* ((_rest1380013808_ _rest13799_)
                 (_E1380313812_
                  (lambda () (error '"No clause matching" _rest1380013808_)))
                 (_else1380213816_ (lambda () '#!void))
                 (_K1380413822_
                  (lambda (_rest13819_ _hd13820_)
                    (if (fx= _len13795_ (length _hd13820_))
                        (_lp13797_ _rest13819_)
                        (gx#raise-syntax-error
                         '#f
                         '"Splice length mismatch"
                         _hd13820_)))))
            (if (##pair? _rest1380013808_)
                (let ((_hd1380513825_ (##car _rest1380013808_))
                      (_tl1380613827_ (##cdr _rest1380013808_)))
                  (let* ((_hd13830_ _hd1380513825_)
                         (_rest13832_ _tl1380613827_))
                    (_K1380413822_ _rest13832_ _hd13830_)))
                (_else1380213816_)))))))
  (define gx#syntax-split-splice
    (lambda (_stx13750_ _n13751_)
      (let _lp13753_ ((_rest13755_ _stx13750_) (_r13756_ '()))
        (if (gx#stx-pair? _rest13755_)
            (let* ((_g1375713764_ (gx#syntax-e _rest13755_))
                   (_E1375913768_
                    (lambda () (error '"No clause matching" _g1375713764_)))
                   (_K1376013774_
                    (lambda (_rest13771_ _hd13772_)
                      (_lp13753_ _rest13771_ (cons _hd13772_ _r13756_)))))
              (if (##pair? _g1375713764_)
                  (let ((_hd1376113777_ (##car _g1375713764_))
                        (_tl1376213779_ (##cdr _g1375713764_)))
                    (let* ((_hd13782_ _hd1376113777_)
                           (_rest13784_ _tl1376213779_))
                      (_K1376013774_ _rest13784_ _hd13782_)))
                  (_E1375913768_)))
            (let _lp13786_ ((_n13788_ _n13751_)
                            (_l13789_ _r13756_)
                            (_r13790_ _rest13755_))
              (if (null? _l13789_)
                  (values _l13789_ _r13790_)
                  (if (fxpositive? _n13788_)
                      (_lp13786_
                       (fx- _n13788_ '1)
                       (cdr _l13789_)
                       (cons (car _l13789_) _r13790_))
                      (values (reverse _l13789_) _r13790_)))))))))
