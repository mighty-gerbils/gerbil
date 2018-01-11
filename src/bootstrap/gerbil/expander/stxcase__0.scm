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
    (lambda _$args15021_
      (apply make-struct-instance gx#syntax-pattern::t _$args15021_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self15018_ _stx15019_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx15019_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx14622_)
      (letrec ((_generate14624_
                (lambda (_e14851_)
                  (letrec ((_BUG14853_
                            (lambda (_q15016_)
                              (error '"BUG: syntax; generate"
                                     _stx14622_
                                     _e14851_
                                     _q15016_)))
                           (_local-pattern-e14854_
                            (lambda (_pat15014_)
                              (gx#syntax-local-rewrap
                               (##structure-ref
                                _pat15014_
                                '2
                                gx#syntax-pattern::t
                                '#f))))
                           (_getvar14855_
                            (lambda (_q15011_ _vars15012_)
                              (assgetq _q15011_ _vars15012_ _BUG14853_)))
                           (_getarg14856_
                            (lambda (_arg14977_ _vars14978_)
                              (let* ((_arg1497914986_ _arg14977_)
                                     (_E1498114990_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _arg1497914986_)))
                                     (_K1498214999_
                                      (lambda (_e14993_ _tag14994_)
                                        (let ((_$e14996_ _tag14994_))
                                          (if (eq? _$e14996_ 'ref)
                                              (_getvar14855_
                                               _e14993_
                                               _vars14978_)
                                              (if (eq? _$e14996_ 'pattern)
                                                  (_local-pattern-e14854_
                                                   _e14993_)
                                                  (_BUG14853_ _arg14977_)))))))
                                (if (##pair? _arg1497914986_)
                                    (let ((_hd1498315002_
                                           (##car _arg1497914986_))
                                          (_tl1498415004_
                                           (##cdr _arg1497914986_)))
                                      (let* ((_tag15007_ _hd1498315002_)
                                             (_e15009_ _tl1498415004_))
                                        (_K1498214999_ _e15009_ _tag15007_)))
                                    (_E1498114990_))))))
                    (let _recur14858_ ((_e14860_ _e14851_) (_vars14861_ '()))
                      (let* ((_e1486214869_ _e14860_)
                             (_E1486414873_
                              (lambda ()
                                (error '"No clause matching" _e1486214869_)))
                             (_K1486514965_
                              (lambda (_body14876_ _tag14877_)
                                (let ((_$e14879_ _tag14877_))
                                  (if (eq? _$e14879_ 'datum)
                                      (gx#core-list 'quote _body14876_)
                                      (if (eq? _$e14879_ 'term)
                                          (let* ((_id14882_
                                                  (gx#syntax-local-unwrap
                                                   _body14876_))
                                                 (_marks14884_
                                                  (##direct-structure-ref
                                                   _id14882_
                                                   '3
                                                   gx#identifier-wrap::t
                                                   '#f)))
                                            (if (null? _marks14884_)
                                                (gx#core-list
                                                 'datum->syntax
                                                 '#f
                                                 (gx#core-list
                                                  'quote
                                                  _body14876_))
                                                (gx#core-list
                                                 'datum->syntax
                                                 (gx#core-list
                                                  'quote-syntax
                                                  _body14876_)
                                                 (gx#core-list
                                                  'quote
                                                  _body14876_)
                                                 '#f
                                                 '#f)))
                                          (if (eq? _$e14879_ 'pattern)
                                              (_local-pattern-e14854_
                                               _body14876_)
                                              (if (eq? _$e14879_ 'ref)
                                                  (_getvar14855_
                                                   _body14876_
                                                   _vars14861_)
                                                  (if (eq? _$e14879_ 'cons)
                                                      (gx#core-list
                                                       'cons
                                                       (_recur14858_
                                                        (car _body14876_)
                                                        _vars14861_)
                                                       (_recur14858_
                                                        (cdr _body14876_)
                                                        _vars14861_))
                                                      (if (eq? _$e14879_
                                                               'vector)
                                                          (gx#core-list
                                                           'list->vector
                                                           (_recur14858_
                                                            _body14876_
                                                            _vars14861_))
                                                          (if (eq? _$e14879_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'box)
                      (gx#core-list
                       'box
                       (_recur14858_ _body14876_ _vars14861_))
                      (if (eq? _$e14879_ 'splice)
                          (let* ((_body1488614897_ _body14876_)
                                 (_E1488814901_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _body1488614897_)))
                                 (_K1488914939_
                                  (lambda (_args14904_
                                           _iv14905_
                                           _hd14906_
                                           _depth14907_)
                                    (let* ((_targets14913_
                                            (map (lambda (_g1490814910_)
                                                   (_getarg14856_
                                                    _g1490814910_
                                                    _vars14861_))
                                                 _args14904_))
                                           (_fold-in14915_
                                            (gx#gentemps _args14904_))
                                           (_fold-out14917_ (gx#genident__0))
                                           (_lambda-args14919_
                                            (foldr1 cons
                                                    (cons _fold-out14917_ '())
                                                    _fold-in14915_))
                                           (_lambda-body14936_
                                            (if (fx> _depth14907_ '1)
                                                (let ((_r-args14927_
                                                       (map (lambda (_arg14921_)
                                                              (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cdr _arg14921_)))
                    _args14904_))
              (_r-vars14928_
               (foldr (lambda (_arg14923_ _var14924_ _r14925_)
                        (cons (cons (cdr _arg14923_) _var14924_) _r14925_))
                      _vars14861_
                      _args14904_
                      _fold-in14915_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur14858_
                                                   (cons* 'splice
                                                          (fx- _depth14907_ '1)
                                                          _hd14906_
                                                          (cons 'var
                                                                _fold-out14917_)
                                                          _r-args14927_)
                                                   _r-vars14928_))
                                                (let ((_hd-vars14934_
                                                       (foldr (lambda (_arg14930_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _var14931_
                               _r14932_)
                        (cons (cons (cdr _arg14930_) _var14931_) _r14932_))
                      _vars14861_
                      _args14904_
                      _fold-in14915_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#core-list
                                                   'cons
                                                   (_recur14858_
                                                    _hd14906_
                                                    _hd-vars14934_)
                                                   _fold-out14917_)))))
                                      (gx#core-list
                                       'begin
                                       (if (fx> (length _targets14913_) '1)
                                           (gx#core-cons*
                                            'syntax-check-splice-targets
                                            _targets14913_)
                                           '#!void)
                                       (gx#core-cons*
                                        'foldr
                                        (gx#core-list
                                         'lambda%
                                         _lambda-args14919_
                                         _lambda-body14936_)
                                        (_recur14858_ _iv14905_ _vars14861_)
                                        _targets14913_))))))
                            (if (##pair? _body1488614897_)
                                (let ((_hd1489014942_ (##car _body1488614897_))
                                      (_tl1489114944_
                                       (##cdr _body1488614897_)))
                                  (let ((_depth14947_ _hd1489014942_))
                                    (if (##pair? _tl1489114944_)
                                        (let ((_hd1489214949_
                                               (##car _tl1489114944_))
                                              (_tl1489314951_
                                               (##cdr _tl1489114944_)))
                                          (let ((_hd14954_ _hd1489214949_))
                                            (if (##pair? _tl1489314951_)
                                                (let ((_hd1489414956_
                                                       (##car _tl1489314951_))
                                                      (_tl1489514958_
                                                       (##cdr _tl1489314951_)))
                                                  (let* ((_iv14961_
                                                          _hd1489414956_)
                                                         (_args14963_
                                                          _tl1489514958_))
                                                    (_K1488914939_
                                                     _args14963_
                                                     _iv14961_
                                                     _hd14954_
                                                     _depth14947_)))
                                                (_E1488814901_))))
                                        (_E1488814901_))))
                                (_E1488814901_)))
                          (if (eq? _$e14879_ 'var)
                              _body14876_
                              (_BUG14853_ _e14860_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (if (##pair? _e1486214869_)
                            (let ((_hd1486614968_ (##car _e1486214869_))
                                  (_tl1486714970_ (##cdr _e1486214869_)))
                              (let* ((_tag14973_ _hd1486614968_)
                                     (_body14975_ _tl1486714970_))
                                (_K1486514965_ _body14975_ _tag14973_)))
                            (_E1486414873_)))))))
               (_parse14625_
                (lambda (_e14666_)
                  (letrec ((_make-cons14668_
                            (lambda (_hd14843_ _tl14844_)
                              (let ((_g15023_ _hd14843_) (_g15025_ _tl14844_))
                                (begin
                                  (let ((_g15024_ (values-count _g15023_)))
                                    (if (not (fx= _g15024_ 2))
                                        (error "Context expects 2 values"
                                               _g15024_)))
                                  (let ((_g15026_ (values-count _g15025_)))
                                    (if (not (fx= _g15026_ 2))
                                        (error "Context expects 2 values"
                                               _g15026_)))
                                  (let ((_hd-e14846_ (values-ref _g15023_ 0))
                                        (_hd-vars14847_
                                         (values-ref _g15023_ 1)))
                                    (let ((_tl-e14848_ (values-ref _g15025_ 0))
                                          (_tl-vars14849_
                                           (values-ref _g15025_ 1)))
                                      (values (cons* 'cons
                                                     _hd-e14846_
                                                     _tl-e14848_)
                                              (append _hd-vars14847_
                                                      _tl-vars14849_))))))))
                           (_make-splice14669_
                            (lambda (_where14782_
                                     _depth14783_
                                     _hd14784_
                                     _tl14785_)
                              (let ((_g15027_ _hd14784_) (_g15029_ _tl14785_))
                                (begin
                                  (let ((_g15028_ (values-count _g15027_)))
                                    (if (not (fx= _g15028_ 2))
                                        (error "Context expects 2 values"
                                               _g15028_)))
                                  (let ((_g15030_ (values-count _g15029_)))
                                    (if (not (fx= _g15030_ 2))
                                        (error "Context expects 2 values"
                                               _g15030_)))
                                  (let ((_hd-e14787_ (values-ref _g15027_ 0))
                                        (_hd-vars14788_
                                         (values-ref _g15027_ 1)))
                                    (let ((_tl-e14789_ (values-ref _g15029_ 0))
                                          (_tl-vars14790_
                                           (values-ref _g15029_ 1)))
                                      (let _lp14792_ ((_rest14794_
                                                       _hd-vars14788_)
                                                      (_targets14795_ '())
                                                      (_vars14796_
                                                       _tl-vars14790_))
                                        (let* ((_rest1479714807_ _rest14794_)
                                               (_E1480014811_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _rest1479714807_)))
                                               (_else1479914815_
                                                (lambda ()
                                                  (if (null? _targets14795_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Misplaced ellipsis"
                                                       _stx14622_
                                                       _where14782_)
                                                      (values (cons* 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _depth14783_
                             _hd-e14787_
                             _tl-e14789_
                             _targets14795_)
                      _vars14796_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_K1480114824_
                                                (lambda (_rest14818_
                                                         _hd-pat14819_
                                                         _hd-depth*14820_)
                                                  (let ((_hd-depth14822_
                                                         (fx- _hd-depth*14820_
                                                              _depth14783_)))
                                                    (if (fxpositive?
                                                         _hd-depth14822_)
                                                        (_lp14792_
                                                         _rest14818_
                                                         (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd-pat14819_)
                       _targets14795_)
                 (cons (cons _hd-depth14822_ _hd-pat14819_) _vars14796_))
                (if (fxzero? _hd-depth14822_)
                    (_lp14792_
                     _rest14818_
                     (cons (cons 'pattern _hd-pat14819_) _targets14795_)
                     _vars14796_)
                    (gx#raise-syntax-error
                     '#f
                     '"Too many ellipses"
                     _stx14622_
                     _where14782_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1479714807_)
                                              (let ((_hd1480214827_
                                                     (##car _rest1479714807_))
                                                    (_tl1480314829_
                                                     (##cdr _rest1479714807_)))
                                                (if (##pair? _hd1480214827_)
                                                    (let ((_hd1480414832_
                                                           (##car _hd1480214827_))
                                                          (_tl1480514834_
                                                           (##cdr _hd1480214827_)))
                                                      (let* ((_hd-depth*14837_
                                                              _hd1480414832_)
                                                             (_hd-pat14839_
                                                              _tl1480514834_)
                                                             (_rest14841_
                                                              _tl1480314829_))
                                                        (_K1480114824_
                                                         _rest14841_
                                                         _hd-pat14839_
                                                         _hd-depth*14837_)))
                                                    (_else1479914815_)))
                                              (_else1479914815_))))))))))
                           (_recur14670_
                            (lambda (_e14675_ _is-e?14676_)
                              (if (_is-e?14676_ _e14675_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Mislpaced ellipsis"
                                   _stx14622_)
                                  (if (gx#syntax-local-pattern? _e14675_)
                                      (let* ((_pat14678_
                                              (gx#syntax-local-e__0 _e14675_))
                                             (_depth14680_
                                              (##structure-ref
                                               _pat14678_
                                               '3
                                               gx#syntax-pattern::t
                                               '#f)))
                                        (if (fxpositive? _depth14680_)
                                            (values (cons 'ref _pat14678_)
                                                    (cons (cons _depth14680_
                                                                _pat14678_)
                                                          '()))
                                            (values (cons 'pattern _pat14678_)
                                                    '())))
                                      (if (gx#identifier? _e14675_)
                                          (values (cons 'term _e14675_) '())
                                          (if (gx#stx-pair? _e14675_)
                                              (let* ((_e1468214689_ _e14675_)
                                                     (_E1468414693_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _e1468214689_)))
                                                     (_E1468314772_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e1468214689_)
                                                            (let ((_e1468514697_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e1468214689_)))
                      (let ((_hd1468614700_ (##car _e1468514697_))
                            (_tl1468714702_ (##cdr _e1468514697_)))
                        (let* ((_hd14705_ _hd1468614700_)
                               (_rest14707_ _tl1468714702_))
                          (if '#t
                              (if (_is-e?14676_ _hd14705_)
                                  (let* ((_e1470814715_ _rest14707_)
                                         (_E1471014719_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _stx14622_
                                             _e14675_)))
                                         (_E1470914733_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1470814715_)
                                                (let ((_e1471114723_
                                                       (gx#syntax-e
                                                        _e1470814715_)))
                                                  (let ((_hd1471214726_
                                                         (##car _e1471114723_))
                                                        (_tl1471314728_
                                                         (##cdr _e1471114723_)))
                                                    (let ((_rest14731_
                                                           _hd1471214726_))
                                                      (if (gx#stx-null?
                                                           _tl1471314728_)
                                                          (if '#t
                                                              (_recur14670_
                                                               _rest14731_
                                                               false)
                                                              (_E1471014719_))
                                                          (_E1471014719_)))))
                                                (_E1471014719_)))))
                                    (_E1470914733_))
                                  (let _lp14737_ ((_rest14739_ _rest14707_)
                                                  (_depth14740_ '0))
                                    (let* ((_e1474114748_ _rest14739_)
                                           (_E1474314752_
                                            (lambda ()
                                              (if (fxpositive? _depth14740_)
                                                  (_make-splice14669_
                                                   _e14675_
                                                   _depth14740_
                                                   (_recur14670_
                                                    _hd14705_
                                                    _is-e?14676_)
                                                   (_recur14670_
                                                    _rest14739_
                                                    _is-e?14676_))
                                                  (_make-cons14668_
                                                   (_recur14670_
                                                    _hd14705_
                                                    _is-e?14676_)
                                                   (_recur14670_
                                                    _rest14739_
                                                    _is-e?14676_)))))
                                           (_E1474214768_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1474114748_)
                                                  (let ((_e1474414756_
                                                         (gx#syntax-e
                                                          _e1474114748_)))
                                                    (let ((_hd1474514759_
                                                           (##car _e1474414756_))
                                                          (_tl1474614761_
                                                           (##cdr _e1474414756_)))
                                                      (let* ((_rest-hd14764_
                                                              _hd1474514759_)
                                                             (_rest-tl14766_
                                                              _tl1474614761_))
                                                        (if '#t
                                                            (if (_is-e?14676_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rest-hd14764_)
                        (_lp14737_ _rest-tl14766_ (fx+ _depth14740_ '1))
                        (if (fxpositive? _depth14740_)
                            (_make-splice14669_
                             _e14675_
                             _depth14740_
                             (_recur14670_ _hd14705_ _is-e?14676_)
                             (_recur14670_ _rest14739_ _is-e?14676_))
                            (_make-cons14668_
                             (_recur14670_ _hd14705_ _is-e?14676_)
                             (_recur14670_ _rest14739_ _is-e?14676_))))
                    (_E1474314752_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1474314752_)))))
                                      (_E1474214768_))))
                              (_E1468414693_)))))
                    (_E1468414693_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1468314772_))
                                              (if (gx#stx-vector? _e14675_)
                                                  (let ((_g15031_
                                                         (_recur14670_
                                                          (vector->list
                                                           (gx#stx-unwrap__0
                                                            _e14675_))
                                                          _is-e?14676_)))
                                                    (begin
                                                      (let ((_g15032_
                                                             (values-count
                                                              _g15031_)))
                                                        (if (not (fx= _g15032_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g15032_)))
              (let ((_e14776_ (values-ref _g15031_ 0))
                    (_vars14777_ (values-ref _g15031_ 1)))
                (values (cons 'vector _e14776_) _vars14777_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e14675_)
                                                      (let ((_g15033_
                                                             (_recur14670_
                                                              (unbox (gx#stx-unwrap__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e14675_))
                      _is-e?14676_)))
                (begin
                  (let ((_g15034_ (values-count _g15033_)))
                    (if (not (fx= _g15034_ 2))
                        (error "Context expects 2 values" _g15034_)))
                  (let ((_e14779_ (values-ref _g15033_ 0))
                        (_vars14780_ (values-ref _g15033_ 1)))
                    (values (cons 'box _e14779_) _vars14780_))))
              (values (cons 'datum _e14675_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    (let ((_g15035_ (_recur14670_ _e14666_ gx#ellipsis?)))
                      (begin
                        (let ((_g15036_ (values-count _g15035_)))
                          (if (not (fx= _g15036_ 2))
                              (error "Context expects 2 values" _g15036_)))
                        (let ((_tree14672_ (values-ref _g15035_ 0))
                              (_vars14673_ (values-ref _g15035_ 1)))
                          (if (null? _vars14673_)
                              _tree14672_
                              (gx#raise-syntax-error
                               '#f
                               '"Missing ellipsis"
                               _stx14622_
                               _vars14673_)))))))))
        (let* ((_e1462614636_ _stx14622_)
               (_E1462814640_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _stx14622_)))
               (_E1462714662_
                (lambda ()
                  (if (gx#stx-pair? _e1462614636_)
                      (let ((_e1462914644_ (gx#syntax-e _e1462614636_)))
                        (let ((_hd1463014647_ (##car _e1462914644_))
                              (_tl1463114649_ (##cdr _e1462914644_)))
                          (if (gx#stx-pair? _tl1463114649_)
                              (let ((_e1463214652_
                                     (gx#syntax-e _tl1463114649_)))
                                (let ((_hd1463314655_ (##car _e1463214652_))
                                      (_tl1463414657_ (##cdr _e1463214652_)))
                                  (let ((_form14660_ _hd1463314655_))
                                    (if (gx#stx-null? _tl1463414657_)
                                        (if '#t
                                            (gx#stx-wrap-source
                                             (_generate14624_
                                              (_parse14625_ _form14660_))
                                             (gx#stx-source _stx14622_))
                                            (_E1462814640_))
                                        (_E1462814640_)))))
                              (_E1462814640_))))
                      (_E1462814640_)))))
          (_E1462714662_)))))
  (begin
    (define gx#macro-expand-syntax-case__opt-lambda13892
      (lambda (_stx13894_ _identifier=?13895_ _unwrap-e13896_ _wrap-e13897_)
        (letrec ((_generate-bindings13899_
                  (lambda (_target14484_
                           _ids14485_
                           _clauses14486_
                           _clause-ids14487_
                           _E14488_)
                    (letrec ((_generate114490_
                              (lambda (_clause14589_ _clause-id14590_ _E14591_)
                                (cons (cons _clause-id14590_ '())
                                      (cons (gx#core-list
                                             'lambda%
                                             (cons _target14484_ '())
                                             (_generate-clause13901_
                                              _target14484_
                                              _ids14485_
                                              _clause14589_
                                              _E14591_))
                                            '())))))
                      (let _lp14492_ ((_rest14494_ _clauses14486_)
                                      (_rest-ids14495_ _clause-ids14487_)
                                      (_bindings14496_ '()))
                        (let* ((_rest1449714505_ _rest14494_)
                               (_E1450014509_
                                (lambda ()
                                  (error '"No clause matching"
                                         _rest1449714505_)))
                               (_else1449914513_ (lambda () _bindings14496_))
                               (_K1450114577_
                                (lambda (_rest14516_ _clause14517_)
                                  (let* ((_rest-ids1451814525_ _rest-ids14495_)
                                         (_E1452014529_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids1451814525_)))
                                         (_K1452114565_
                                          (lambda (_rest-ids14532_
                                                   _clause-id14533_)
                                            (let* ((_rest-ids1453414542_
                                                    _rest-ids14532_)
                                                   (_E1453714546_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _rest-ids1453414542_)))
                                                   (_else1453614550_
                                                    (lambda ()
                                                      (cons (_generate114490_
                                                             _clause14517_
                                                             _clause-id14533_
                                                             _E14488_)
                                                            _bindings14496_)))
                                                   (_K1453814555_
                                                    (lambda (_next-clause-id14553_)
                                                      (_lp14492_
                                                       _rest14516_
                                                       _rest-ids14532_
                                                       (cons (_generate114490_
                                                              _clause14517_
                                                              _clause-id14533_
                                                              _next-clause-id14553_)
                                                             _bindings14496_)))))
                                              (if (##pair? _rest-ids1453414542_)
                                                  (let ((_hd1453914558_
                                                         (##car _rest-ids1453414542_))
                                                        (_tl1454014560_
                                                         (##cdr _rest-ids1453414542_)))
                                                    (let ((_next-clause-id14563_
                                                           _hd1453914558_))
                                                      (_K1453814555_
                                                       _next-clause-id14563_)))
                                                  (_else1453614550_))))))
                                    (if (##pair? _rest-ids1451814525_)
                                        (let ((_hd1452214568_
                                               (##car _rest-ids1451814525_))
                                              (_tl1452314570_
                                               (##cdr _rest-ids1451814525_)))
                                          (let* ((_clause-id14573_
                                                  _hd1452214568_)
                                                 (_rest-ids14575_
                                                  _tl1452314570_))
                                            (_K1452114565_
                                             _rest-ids14575_
                                             _clause-id14573_)))
                                        (_E1452014529_))))))
                          (if (##pair? _rest1449714505_)
                              (let ((_hd1450214580_ (##car _rest1449714505_))
                                    (_tl1450314582_ (##cdr _rest1449714505_)))
                                (let* ((_clause14585_ _hd1450214580_)
                                       (_rest14587_ _tl1450314582_))
                                  (_K1450114577_ _rest14587_ _clause14585_)))
                              (_else1449914513_)))))))
                 (_generate-body13900_
                  (lambda (_bindings14444_ _body14445_)
                    (let _recur14447_ ((_rest14449_ _bindings14444_))
                      (let* ((_rest1445014458_ _rest14449_)
                             (_E1445314462_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1445014458_)))
                             (_else1445214466_ (lambda () _body14445_))
                             (_K1445414472_
                              (lambda (_rest14469_ _hd14470_)
                                (gx#core-list
                                 'let-values
                                 (cons _hd14470_ '())
                                 (_recur14447_ _rest14469_)))))
                        (if (##pair? _rest1445014458_)
                            (let ((_hd1445514475_ (##car _rest1445014458_))
                                  (_tl1445614477_ (##cdr _rest1445014458_)))
                              (let* ((_hd14480_ _hd1445514475_)
                                     (_rest14482_ _tl1445614477_))
                                (_K1445414472_ _rest14482_ _hd14480_)))
                            (_else1445214466_))))))
                 (_generate-clause13901_
                  (lambda (_target14307_ _ids14308_ _clause14309_ _E14310_)
                    (letrec ((_generate114312_
                              (lambda (_hd14399_ _fender14400_ _body14401_)
                                (let ((_g15037_
                                       (_parse-clause13903_
                                        _hd14399_
                                        _ids14308_)))
                                  (begin
                                    (let ((_g15038_ (values-count _g15037_)))
                                      (if (not (fx= _g15038_ 2))
                                          (error "Context expects 2 values"
                                                 _g15038_)))
                                    (let ((_e14403_ (values-ref _g15037_ 0))
                                          (_mvars14404_
                                           (values-ref _g15037_ 1)))
                                      (let* ((_pvars14406_
                                              (map gx#syntax-local-rewrap
                                                   (gx#gentemps _mvars14404_)))
                                             (_E14408_
                                              (cons _E14310_
                                                    (cons _target14307_ '())))
                                             (_K14441_
                                              (gx#core-list
                                               'lambda%
                                               _pvars14406_
                                               (gx#core-list
                                                'let-syntax
                                                (map (lambda (_mvar14410_
                                                              _pvar14411_)
                                                       (let* ((_mvar1441214419_
                                                               _mvar14410_)
                                                              (_E1441414423_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (error '"No clause matching" _mvar1441214419_)))
                      (_K1441514429_
                       (lambda (_depth14426_ _id14427_)
                         (cons _id14427_
                               (cons (gx#core-list
                                      'make-syntax-pattern
                                      (gx#core-list 'quote _id14427_)
                                      (gx#core-list 'quote _pvar14411_)
                                      _depth14426_)
                                     '())))))
                 (if (##pair? _mvar1441214419_)
                     (let ((_hd1441614432_ (##car _mvar1441214419_))
                           (_tl1441714434_ (##cdr _mvar1441214419_)))
                       (let* ((_id14437_ _hd1441614432_)
                              (_depth14439_ _tl1441714434_))
                         (_K1441514429_ _depth14439_ _id14437_)))
                     (_E1441414423_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _mvars14404_
                                                     _pvars14406_)
                                                (if (eq? _fender14400_ '#t)
                                                    _body14401_
                                                    (gx#core-list
                                                     'if
                                                     _fender14400_
                                                     _body14401_
                                                     _E14408_))))))
                                        (_generate-match13902_
                                         _hd14399_
                                         _target14307_
                                         _e14403_
                                         _mvars14404_
                                         _K14441_
                                         _E14408_))))))))
                      (let* ((_e1431314333_ _clause14309_)
                             (_E1432214337_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _e1431314333_)))
                             (_E1431514371_
                              (lambda ()
                                (if (gx#stx-pair? _e1431314333_)
                                    (let ((_e1432314341_
                                           (gx#syntax-e _e1431314333_)))
                                      (let ((_hd1432414344_
                                             (##car _e1432314341_))
                                            (_tl1432514346_
                                             (##cdr _e1432314341_)))
                                        (let ((_hd14349_ _hd1432414344_))
                                          (if (gx#stx-pair? _tl1432514346_)
                                              (let ((_e1432614351_
                                                     (gx#syntax-e
                                                      _tl1432514346_)))
                                                (let ((_hd1432714354_
                                                       (##car _e1432614351_))
                                                      (_tl1432814356_
                                                       (##cdr _e1432614351_)))
                                                  (let ((_fender14359_
                                                         _hd1432714354_))
                                                    (if (gx#stx-pair?
                                                         _tl1432814356_)
                                                        (let ((_e1432914361_
                                                               (gx#syntax-e
                                                                _tl1432814356_)))
                                                          (let ((_hd1433014364_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1432914361_))
                        (_tl1433114366_ (##cdr _e1432914361_)))
                    (let ((_body14369_ _hd1433014364_))
                      (if (gx#stx-null? _tl1433114366_)
                          (if '#t
                              (_generate114312_
                               _hd14349_
                               _fender14359_
                               _body14369_)
                              (_E1432214337_))
                          (_E1432214337_)))))
                (_E1432214337_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1432214337_)))))
                                    (_E1432214337_))))
                             (_E1431414395_
                              (lambda ()
                                (if (gx#stx-pair? _e1431314333_)
                                    (let ((_e1431614375_
                                           (gx#syntax-e _e1431314333_)))
                                      (let ((_hd1431714378_
                                             (##car _e1431614375_))
                                            (_tl1431814380_
                                             (##cdr _e1431614375_)))
                                        (let ((_hd14383_ _hd1431714378_))
                                          (if (gx#stx-pair? _tl1431814380_)
                                              (let ((_e1431914385_
                                                     (gx#syntax-e
                                                      _tl1431814380_)))
                                                (let ((_hd1432014388_
                                                       (##car _e1431914385_))
                                                      (_tl1432114390_
                                                       (##cdr _e1431914385_)))
                                                  (let ((_body14393_
                                                         _hd1432014388_))
                                                    (if (gx#stx-null?
                                                         _tl1432114390_)
                                                        (if '#t
                                                            (_generate114312_
                                                             _hd14383_
                                                             '#t
                                                             _body14393_)
                                                            (_E1431514371_))
                                                        (_E1431514371_)))))
                                              (_E1431514371_)))))
                                    (_E1431514371_)))))
                        (_E1431414395_)))))
                 (_generate-match13902_
                  (lambda (_where14066_
                           _target14067_
                           _hd14068_
                           _mvars14069_
                           _K14070_
                           _E14071_)
                    (letrec ((_BUG14073_
                              (lambda (_q14305_)
                                (error '"BUG: syntax-case; generate"
                                       _stx13894_
                                       _hd14068_
                                       _q14305_)))
                             (_recur14074_
                              (lambda (_e14159_
                                       _vars14160_
                                       _target14161_
                                       _E14162_
                                       _k14163_)
                                (let* ((_e1416414171_ _e14159_)
                                       (_E1416614175_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e1416414171_)))
                                       (_K1416714293_
                                        (lambda (_body14178_ _tag14179_)
                                          (let ((_$e14181_ _tag14179_))
                                            (if (eq? _$e14181_ 'any)
                                                (_k14163_ _vars14160_)
                                                (if (eq? _$e14181_ 'id)
                                                    (gx#core-list
                                                     'if
                                                     (gx#core-list
                                                      'identifier?
                                                      _target14161_)
                                                     (gx#core-list
                                                      'if
                                                      (gx#core-list
                                                       _identifier=?13895_
                                                       (gx#core-list
                                                        _wrap-e13897_
                                                        _body14178_)
                                                       _target14161_)
                                                      (_k14163_ _vars14160_)
                                                      _E14162_)
                                                     _E14162_)
                                                    (if (eq? _$e14181_ 'var)
                                                        (_k14163_
                                                         (cons (cons _body14178_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _target14161_)
                       _vars14160_))
                (if (eq? _$e14181_ 'cons)
                    (let ((_$e14184_ (gx#genident__1 'e))
                          (_$hd14185_ (gx#genident__1 'hd))
                          (_$tl14186_ (gx#genident__1 'tl)))
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _target14161_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$e14184_ '())
                                    (cons (gx#core-list
                                           _unwrap-e13896_
                                           _target14161_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$hd14185_ '())
                                     (cons (gx#core-list '##car _$e14184_)
                                           '()))
                               (cons (cons (cons _$tl14186_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$e14184_)
                                                 '()))
                                     '()))
                         (let* ((_body1418714194_ _body14178_)
                                (_E1418914198_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _body1418714194_)))
                                (_K1419014206_
                                 (lambda (_tl14201_ _hd14202_)
                                   (_recur14074_
                                    _hd14202_
                                    _vars14160_
                                    _$hd14185_
                                    _E14162_
                                    (lambda (_vars14204_)
                                      (_recur14074_
                                       _tl14201_
                                       _vars14204_
                                       _$tl14186_
                                       _E14162_
                                       _k14163_))))))
                           (if (##pair? _body1418714194_)
                               (let ((_hd1419114209_ (##car _body1418714194_))
                                     (_tl1419214211_ (##cdr _body1418714194_)))
                                 (let* ((_hd14214_ _hd1419114209_)
                                        (_tl14216_ _tl1419214211_))
                                   (_K1419014206_ _tl14216_ _hd14214_)))
                               (_E1418914198_)))))
                       _E14162_))
                    (if (eq? _$e14181_ 'splice)
                        (let* ((_body1421714224_ _body14178_)
                               (_E1421914228_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body1421714224_)))
                               (_K1422014277_
                                (lambda (_tl14231_ _hd14232_)
                                  (let* ((_rlen14234_
                                          (_splice-rlen14075_ _tl14231_))
                                         (_$target14236_
                                          (gx#genident__1 'target))
                                         (_$hd14238_ (gx#genident__1 'hd))
                                         (_$tl14240_ (gx#genident__1 'tl))
                                         (_$lp14242_ (gx#genident__1 'loop))
                                         (_$lp-e14244_ (gx#genident__1 'e))
                                         (_$lp-hd14246_
                                          (gx#genident__1 'lp-hd))
                                         (_$lp-tl14248_
                                          (gx#genident__1 'lp-tl))
                                         (_svars14250_
                                          (_splice-vars14076_ _hd14232_))
                                         (_lvars14252_
                                          (gx#gentemps _svars14250_))
                                         (_tlvars14254_
                                          (gx#gentemps _svars14250_))
                                         (_linit14258_
                                          (map (lambda (_var14256_)
                                                 (gx#core-list 'quote '()))
                                               _lvars14252_)))
                                    (letrec ((_make-loop14261_
                                              (lambda (_vars14263_)
                                                (gx#core-list
                                                 'letrec-values
                                                 (cons (cons (cons _$lp14242_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _$hd14238_ _lvars14252_)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-pair? _$hd14238_)
                             (gx#core-list
                              'let-values
                              (cons (cons (cons _$lp-e14244_ '())
                                          (cons (gx#core-list
                                                 _unwrap-e13896_
                                                 _$hd14238_)
                                                '()))
                                    '())
                              (gx#core-list
                               'let-values
                               (cons (cons (cons _$lp-hd14246_ '())
                                           (cons (gx#core-list
                                                  '##car
                                                  _$lp-e14244_)
                                                 '()))
                                     (cons (cons (cons _$lp-tl14248_ '())
                                                 (cons (gx#core-list
                                                        '##cdr
                                                        _$lp-e14244_)
                                                       '()))
                                           '()))
                               (_recur14074_
                                _hd14232_
                                '()
                                _$lp-hd14246_
                                _E14162_
                                (lambda (_hdvars14265_)
                                  (cons* _$lp14242_
                                         _$lp-tl14248_
                                         (map (lambda (_svar14267_ _lvar14268_)
                                                (gx#core-list
                                                 'cons
                                                 (assgetq _svar14267_
                                                          _hdvars14265_
                                                          _BUG14073_)
                                                 _lvar14268_))
                                              _svars14250_
                                              _lvars14252_))))))
                             (gx#core-list
                              'let-values
                              (map (lambda (_lvar14270_ _tlvar14271_)
                                     (cons (cons _tlvar14271_ '())
                                           (cons (gx#core-list
                                                  'reverse
                                                  _lvar14270_)
                                                 '())))
                                   _lvars14252_
                                   _tlvars14254_)
                              (_k14163_
                               (foldl (lambda (_svar14273_
                                               _tlvar14274_
                                               _r14275_)
                                        (cons (cons _svar14273_ _tlvar14274_)
                                              _r14275_))
                                      _vars14263_
                                      _svars14250_
                                      _tlvars14254_)))))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons* _$lp14242_
                                                        _$target14236_
                                                        _linit14258_)))))
                                      (gx#core-list
                                       'if
                                       (gx#core-list
                                        'stx-pair/null?
                                        _target14161_)
                                       (gx#core-list
                                        'if
                                        (gx#core-list
                                         'fx>=
                                         (gx#core-list
                                          'stx-length
                                          _target14161_)
                                         _rlen14234_)
                                        (gx#core-list
                                         'let-values
                                         (cons (cons (cons _$target14236_
                                                           (cons _$tl14240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (gx#core-list
                                                            'syntax-split-splice
                                                            _target14161_
                                                            _rlen14234_)
                                                           '()))
                                               '())
                                         (_recur14074_
                                          _tl14231_
                                          _vars14160_
                                          _$tl14240_
                                          _E14162_
                                          _make-loop14261_))
                                        _E14162_)
                                       _E14162_))))))
                          (if (##pair? _body1421714224_)
                              (let ((_hd1422114280_ (##car _body1421714224_))
                                    (_tl1422214282_ (##cdr _body1421714224_)))
                                (let* ((_hd14285_ _hd1422114280_)
                                       (_tl14287_ _tl1422214282_))
                                  (_K1422014277_ _tl14287_ _hd14285_)))
                              (_E1421914228_)))
                        (if (eq? _$e14181_ 'null)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-null? _target14161_)
                             (_k14163_ _vars14160_)
                             _E14162_)
                            (if (eq? _$e14181_ 'vector)
                                (let ((_$e14289_ (gx#genident__1 'e)))
                                  (gx#core-list
                                   'if
                                   (gx#core-list 'stx-vector? _target14161_)
                                   (gx#core-list
                                    'let-values
                                    (cons (cons (cons _$e14289_ '())
                                                (cons (gx#core-list
                                                       'vector->list
                                                       (gx#core-list
                                                        _unwrap-e13896_
                                                        _target14161_))
                                                      '()))
                                          '())
                                    (_recur14074_
                                     _body14178_
                                     _vars14160_
                                     _$e14289_
                                     _E14162_
                                     _k14163_))
                                   _E14162_))
                                (if (eq? _$e14181_ 'box)
                                    (let ((_$e14291_ (gx#genident__1 'e)))
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-box? _target14161_)
                                       (gx#core-list
                                        'let-values
                                        (cons (cons (cons _$e14291_ '())
                                                    (cons (gx#core-list
                                                           'unbox
                                                           (gx#core-list
                                                            _unwrap-e13896_
                                                            _target14161_))
                                                          '()))
                                              '())
                                        (_recur14074_
                                         _body14178_
                                         _vars14160_
                                         _$e14291_
                                         _E14162_
                                         _k14163_))
                                       _E14162_))
                                    (if (eq? _$e14181_ 'datum)
                                        (gx#core-list
                                         'if
                                         (gx#core-list
                                          'stx-datum?
                                          _target14161_)
                                         (gx#core-list
                                          'if
                                          (gx#core-list
                                           'equal?
                                           (gx#core-list 'stx-e _target14161_)
                                           _body14178_)
                                          (_k14163_ _vars14160_)
                                          _E14162_)
                                         _E14162_)
                                        (_BUG14073_ _e14159_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (##pair? _e1416414171_)
                                      (let ((_hd1416814296_
                                             (##car _e1416414171_))
                                            (_tl1416914298_
                                             (##cdr _e1416414171_)))
                                        (let* ((_tag14301_ _hd1416814296_)
                                               (_body14303_ _tl1416914298_))
                                          (_K1416714293_
                                           _body14303_
                                           _tag14301_)))
                                      (_E1416614175_)))))
                             (_splice-rlen14075_
                              (lambda (_e14121_)
                                (let _lp14123_ ((_e14125_ _e14121_)
                                                (_n14126_ '0))
                                  (let* ((_e1412714134_ _e14125_)
                                         (_E1412914138_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1412714134_)))
                                         (_K1413014147_
                                          (lambda (_body14141_ _tag14142_)
                                            (let ((_$e14144_ _tag14142_))
                                              (if (eq? _$e14144_ 'splice)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Ambiguous pattern"
                                                   _stx13894_
                                                   _where14066_)
                                                  (if (eq? _$e14144_ 'cons)
                                                      (_lp14123_
                                                       (cdr _body14141_)
                                                       (fx+ _n14126_ '1))
                                                      _n14126_))))))
                                    (if (##pair? _e1412714134_)
                                        (let ((_hd1413114150_
                                               (##car _e1412714134_))
                                              (_tl1413214152_
                                               (##cdr _e1412714134_)))
                                          (let* ((_tag14155_ _hd1413114150_)
                                                 (_body14157_ _tl1413214152_))
                                            (_K1413014147_
                                             _body14157_
                                             _tag14155_)))
                                        (_E1412914138_))))))
                             (_splice-vars14076_
                              (lambda (_e14083_)
                                (let _recur14085_ ((_e14087_ _e14083_)
                                                   (_vars14088_ '()))
                                  (let* ((_e1408914096_ _e14087_)
                                         (_E1409114100_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1408914096_)))
                                         (_K1409214109_
                                          (lambda (_body14103_ _tag14104_)
                                            (let ((_$e14106_ _tag14104_))
                                              (if (eq? _$e14106_ 'var)
                                                  (cons _body14103_
                                                        _vars14088_)
                                                  (if (memq _$e14106_
                                                            '(cons splice))
                                                      (_recur14085_
                                                       (cdr _body14103_)
                                                       (_recur14085_
                                                        (car _body14103_)
                                                        _vars14088_))
                                                      (if (memq _$e14106_
                                                                '(vector box))
                                                          (_recur14085_
                                                           _body14103_
                                                           _vars14088_)
                                                          _vars14088_)))))))
                                    (if (##pair? _e1408914096_)
                                        (let ((_hd1409314112_
                                               (##car _e1408914096_))
                                              (_tl1409414114_
                                               (##cdr _e1408914096_)))
                                          (let* ((_tag14117_ _hd1409314112_)
                                                 (_body14119_ _tl1409414114_))
                                            (_K1409214109_
                                             _body14119_
                                             _tag14117_)))
                                        (_E1409114100_))))))
                             (_make-body14077_
                              (lambda (_vars14079_)
                                (cons _K14070_
                                      (map (lambda (_mvar14081_)
                                             (assgetq (car _mvar14081_)
                                                      _vars14079_
                                                      _BUG14073_))
                                           _mvars14069_)))))
                      (_recur14074_
                       _hd14068_
                       '()
                       _target14067_
                       _E14071_
                       _make-body14077_))))
                 (_parse-clause13903_
                  (lambda (_hd13972_ _ids13973_)
                    (let _recur13975_ ((_e13977_ _hd13972_)
                                       (_vars13978_ '())
                                       (_depth13979_ '0))
                      (if (gx#identifier? _e13977_)
                          (if (gx#underscore? _e13977_)
                              (values '(any) _vars13978_)
                              (if (gx#ellipsis? _e13977_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Misplaced ellipsis"
                                   _stx13894_
                                   _hd13972_)
                                  (if (find (lambda (_id13981_)
                                              (gx#bound-identifier=?
                                               _e13977_
                                               _id13981_))
                                            _ids13973_)
                                      (values (cons 'id _e13977_) _vars13978_)
                                      (if (find (lambda (_var13983_)
                                                  (gx#bound-identifier=?
                                                   _e13977_
                                                   (car _var13983_)))
                                                _vars13978_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Duplicate pattern variable"
                                           _stx13894_
                                           _e13977_)
                                          (values (cons 'var _e13977_)
                                                  (cons (cons _e13977_
                                                              _depth13979_)
                                                        _vars13978_))))))
                          (if (gx#stx-pair? _e13977_)
                              (let* ((_e1398413991_ _e13977_)
                                     (_E1398613995_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _e1398413991_)))
                                     (_E1398514056_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1398413991_)
                                            (let ((_e1398713999_
                                                   (gx#syntax-e
                                                    _e1398413991_)))
                                              (let ((_hd1398814002_
                                                     (##car _e1398713999_))
                                                    (_tl1398914004_
                                                     (##cdr _e1398713999_)))
                                                (let* ((_hd14007_
                                                        _hd1398814002_)
                                                       (_rest14009_
                                                        _tl1398914004_))
                                                  (if '#t
                                                      (let* ((_make-pair14024_
                                                              (lambda (_tag14011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd14012_
                               _tl14013_)
                        (let* ((_hd-depth14015_
                                (if (eq? _tag14011_ 'splice)
                                    (fx+ _depth13979_ '1)
                                    _depth13979_))
                               (_g15039_
                                (_recur13975_
                                 _hd14012_
                                 _vars13978_
                                 _hd-depth14015_)))
                          (begin
                            (let ((_g15040_ (values-count _g15039_)))
                              (if (not (fx= _g15040_ 2))
                                  (error "Context expects 2 values" _g15040_)))
                            (let ((_hd14017_ (values-ref _g15039_ 0))
                                  (_vars14018_ (values-ref _g15039_ 1)))
                              (let ((_g15041_
                                     (_recur13975_
                                      _tl14013_
                                      _vars14018_
                                      _depth13979_)))
                                (begin
                                  (let ((_g15042_ (values-count _g15041_)))
                                    (if (not (fx= _g15042_ 2))
                                        (error "Context expects 2 values"
                                               _g15042_)))
                                  (let ((_tl14020_ (values-ref _g15041_ 0))
                                        (_vars14021_ (values-ref _g15041_ 1)))
                                    (let ()
                                      (values (cons* _tag14011_
                                                     _hd14017_
                                                     _tl14020_)
                                              _vars14021_))))))))))
                     (_e1402514032_ _rest14009_)
                     (_E1402714036_
                      (lambda ()
                        (_make-pair14024_ 'cons _hd14007_ _rest14009_)))
                     (_E1402614052_
                      (lambda ()
                        (if (gx#stx-pair? _e1402514032_)
                            (let ((_e1402814040_ (gx#syntax-e _e1402514032_)))
                              (let ((_hd1402914043_ (##car _e1402814040_))
                                    (_tl1403014045_ (##cdr _e1402814040_)))
                                (let* ((_rest-hd14048_ _hd1402914043_)
                                       (_rest-tl14050_ _tl1403014045_))
                                  (if '#t
                                      (if (gx#ellipsis? _rest-hd14048_)
                                          (_make-pair14024_
                                           'splice
                                           _hd14007_
                                           _rest-tl14050_)
                                          (_make-pair14024_
                                           'cons
                                           _hd14007_
                                           _rest14009_))
                                      (_E1402714036_)))))
                            (_E1402714036_)))))
                (_E1402614052_))
              (_E1398613995_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1398613995_)))))
                                (_E1398514056_))
                              (if (gx#stx-null? _e13977_)
                                  (values '(null) _vars13978_)
                                  (if (gx#stx-vector? _e13977_)
                                      (let ((_g15043_
                                             (_recur13975_
                                              (vector->list
                                               (gx#syntax-e _e13977_))
                                              _vars13978_
                                              _depth13979_)))
                                        (begin
                                          (let ((_g15044_
                                                 (values-count _g15043_)))
                                            (if (not (fx= _g15044_ 2))
                                                (error "Context expects 2 values"
                                                       _g15044_)))
                                          (let ((_e14060_
                                                 (values-ref _g15043_ 0))
                                                (_vars14061_
                                                 (values-ref _g15043_ 1)))
                                            (values (cons 'vector _e14060_)
                                                    _vars14061_))))
                                      (if (gx#stx-box? _e13977_)
                                          (let ((_g15045_
                                                 (_recur13975_
                                                  (unbox (gx#syntax-e
                                                          _e13977_))
                                                  _vars13978_
                                                  _depth13979_)))
                                            (begin
                                              (let ((_g15046_
                                                     (values-count _g15045_)))
                                                (if (not (fx= _g15046_ 2))
                                                    (error "Context expects 2 values"
                                                           _g15046_)))
                                              (let ((_e14063_
                                                     (values-ref _g15045_ 0))
                                                    (_vars14064_
                                                     (values-ref _g15045_ 1)))
                                                (values (cons 'box _e14063_)
                                                        _vars14064_))))
                                          (if (gx#stx-datum? _e13977_)
                                              (values (cons 'datum
                                                            (gx#stx-e
                                                             _e13977_))
                                                      _vars13978_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad pattern"
                                               _stx13894_
                                               _e13977_)))))))))))
          (let* ((_e1390413917_ _stx13894_)
                 (_E1390613921_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1390413917_)))
                 (_E1390513968_
                  (lambda ()
                    (if (gx#stx-pair? _e1390413917_)
                        (let ((_e1390713925_ (gx#syntax-e _e1390413917_)))
                          (let ((_hd1390813928_ (##car _e1390713925_))
                                (_tl1390913930_ (##cdr _e1390713925_)))
                            (if (gx#stx-pair? _tl1390913930_)
                                (let ((_e1391013933_
                                       (gx#syntax-e _tl1390913930_)))
                                  (let ((_hd1391113936_ (##car _e1391013933_))
                                        (_tl1391213938_ (##cdr _e1391013933_)))
                                    (let ((_expr13941_ _hd1391113936_))
                                      (if (gx#stx-pair? _tl1391213938_)
                                          (let ((_e1391313943_
                                                 (gx#syntax-e _tl1391213938_)))
                                            (let ((_hd1391413946_
                                                   (##car _e1391313943_))
                                                  (_tl1391513948_
                                                   (##cdr _e1391313943_)))
                                              (let* ((_ids13951_
                                                      _hd1391413946_)
                                                     (_clauses13953_
                                                      _tl1391513948_))
                                                (if '#t
                                                    (if (not (gx#identifier-list?
                                                              _ids13951_))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad template identifier list"
                                                         _stx13894_
                                                         _ids13951_)
                                                        (if (not (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _clauses13953_))
                    (gx#raise-syntax-error '#f '"Bad syntax" _stx13894_)
                    (let* ((_ids13955_ (gx#syntax->list _ids13951_))
                           (_clauses13957_ (gx#syntax->list _clauses13953_))
                           (_clause-ids13959_ (gx#gentemps _clauses13957_))
                           (_E13961_ (gx#genident__0))
                           (_target13963_ (gx#genident__0))
                           (_first13965_
                            (if (null? _clauses13957_)
                                _E13961_
                                (car _clause-ids13959_))))
                      (gx#stx-wrap-source
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _E13961_ '())
                                    (cons (gx#core-list
                                           'lambda%
                                           (cons _target13963_ '())
                                           (gx#core-list
                                            'raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _target13963_))
                                          '()))
                              '())
                        (_generate-body13900_
                         (_generate-bindings13899_
                          _target13963_
                          _ids13955_
                          _clauses13957_
                          _clause-ids13959_
                          _E13961_)
                         (cons _first13965_ (cons _expr13941_ '()))))
                       (gx#stx-source _stx13894_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1390613921_)))))
                                          (_E1390613921_)))))
                                (_E1390613921_))))
                        (_E1390613921_)))))
            (_E1390513968_)))))
    (begin
      (define gx#macro-expand-syntax-case__0
        (lambda (_stx14596_)
          (let* ((_identifier=?14598_ 'free-identifier=?)
                 (_unwrap-e14600_ 'syntax-e)
                 (_wrap-e14602_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda13892
             _stx14596_
             _identifier=?14598_
             _unwrap-e14600_
             _wrap-e14602_))))
      (define gx#macro-expand-syntax-case__1
        (lambda (_stx14604_ _identifier=?14605_)
          (let* ((_unwrap-e14607_ 'syntax-e) (_wrap-e14609_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda13892
             _stx14604_
             _identifier=?14605_
             _unwrap-e14607_
             _wrap-e14609_))))
      (define gx#macro-expand-syntax-case__2
        (lambda (_stx14611_ _identifier=?14612_ _unwrap-e14613_)
          (let ((_wrap-e14615_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda13892
             _stx14611_
             _identifier=?14612_
             _unwrap-e14613_
             _wrap-e14615_))))
      (define gx#macro-expand-syntax-case
        (lambda _g15048_
          (let ((_g15047_ (length _g15048_)))
            (cond ((fx= _g15047_ 1)
                   (apply gx#macro-expand-syntax-case__0 _g15048_))
                  ((fx= _g15047_ 2)
                   (apply gx#macro-expand-syntax-case__1 _g15048_))
                  ((fx= _g15047_ 3)
                   (apply gx#macro-expand-syntax-case__2 _g15048_))
                  ((fx= _g15047_ 4)
                   (apply gx#macro-expand-syntax-case__opt-lambda13892
                          _g15048_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-syntax-case
                    _g15048_))))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx13891_)
      (if (gx#identifier? _stx13891_)
          (##structure-instance-of?
           (gx#syntax-local-e__opt-lambda4507 _stx13891_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd13849_ . _rest13850_)
      (let ((_len13852_ (length _hd13849_)))
        (let _lp13854_ ((_rest13856_ _rest13850_))
          (let* ((_rest1385713865_ _rest13856_)
                 (_E1386013869_
                  (lambda () (error '"No clause matching" _rest1385713865_)))
                 (_else1385913873_ (lambda () '#!void))
                 (_K1386113879_
                  (lambda (_rest13876_ _hd13877_)
                    (if (fx= _len13852_ (length _hd13877_))
                        (_lp13854_ _rest13876_)
                        (gx#raise-syntax-error
                         '#f
                         '"Splice length mismatch"
                         _hd13877_)))))
            (if (##pair? _rest1385713865_)
                (let ((_hd1386213882_ (##car _rest1385713865_))
                      (_tl1386313884_ (##cdr _rest1385713865_)))
                  (let* ((_hd13887_ _hd1386213882_)
                         (_rest13889_ _tl1386313884_))
                    (_K1386113879_ _rest13889_ _hd13887_)))
                (_else1385913873_)))))))
  (define gx#syntax-split-splice
    (lambda (_stx13807_ _n13808_)
      (let _lp13810_ ((_rest13812_ _stx13807_) (_r13813_ '()))
        (if (gx#stx-pair? _rest13812_)
            (let* ((_g1381413821_ (gx#syntax-e _rest13812_))
                   (_E1381613825_
                    (lambda () (error '"No clause matching" _g1381413821_)))
                   (_K1381713831_
                    (lambda (_rest13828_ _hd13829_)
                      (_lp13810_ _rest13828_ (cons _hd13829_ _r13813_)))))
              (if (##pair? _g1381413821_)
                  (let ((_hd1381813834_ (##car _g1381413821_))
                        (_tl1381913836_ (##cdr _g1381413821_)))
                    (let* ((_hd13839_ _hd1381813834_)
                           (_rest13841_ _tl1381913836_))
                      (_K1381713831_ _rest13841_ _hd13839_)))
                  (_E1381613825_)))
            (let _lp13843_ ((_n13845_ _n13808_)
                            (_l13846_ _r13813_)
                            (_r13847_ _rest13812_))
              (if (null? _l13846_)
                  (values _l13846_ _r13847_)
                  (if (fxpositive? _n13845_)
                      (_lp13843_
                       (fx- _n13845_ '1)
                       (cdr _l13846_)
                       (cons (car _l13846_) _r13847_))
                      (values (reverse _l13846_) _r13847_)))))))))
