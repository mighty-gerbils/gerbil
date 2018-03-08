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
    (lambda _$args18187_
      (apply make-struct-instance gx#syntax-pattern::t _$args18187_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self18184_ _stx18185_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx18185_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx17666_)
      (letrec ((_generate17668_
                (lambda (_e17895_)
                  (letrec ((_BUG17897_
                            (lambda (_q18059_)
                              (error '"BUG: syntax; generate"
                                     _stx17666_
                                     _e17895_
                                     _q18059_)))
                           (_local-pattern-e17898_
                            (lambda (_pat18057_)
                              (gx#syntax-local-rewrap
                               (##structure-ref
                                _pat18057_
                                '2
                                gx#syntax-pattern::t
                                '#f))))
                           (_getvar17899_
                            (lambda (_q18054_ _vars18055_)
                              (assgetq _q18054_ _vars18055_ _BUG17897_)))
                           (_getarg17900_
                            (lambda (_arg18020_ _vars18021_)
                              (let* ((_arg1802218029_ _arg18020_)
                                     (_E1802418033_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _arg1802218029_)))
                                     (_K1802518042_
                                      (lambda (_e18036_ _tag18037_)
                                        (let ((_$e18039_ _tag18037_))
                                          (if (eq? 'ref _$e18039_)
                                              (_getvar17899_
                                               _e18036_
                                               _vars18021_)
                                              (if (eq? 'pattern _$e18039_)
                                                  (_local-pattern-e17898_
                                                   _e18036_)
                                                  (_BUG17897_ _arg18020_)))))))
                                (if (##pair? _arg1802218029_)
                                    (let ((_hd1802618045_
                                           (##car _arg1802218029_))
                                          (_tl1802718047_
                                           (##cdr _arg1802218029_)))
                                      (let* ((_tag18050_ _hd1802618045_)
                                             (_e18052_ _tl1802718047_))
                                        (_K1802518042_ _e18052_ _tag18050_)))
                                    (_E1802418033_))))))
                    (let _recur17902_ ((_e17904_ _e17895_) (_vars17905_ '()))
                      (let* ((_e1790617913_ _e17904_)
                             (_E1790817917_
                              (lambda ()
                                (error '"No clause matching" _e1790617913_)))
                             (_K1790918008_
                              (lambda (_body17920_ _tag17921_)
                                (let ((_$e17923_ _tag17921_))
                                  (if (eq? 'datum _$e17923_)
                                      (gx#core-list 'quote _body17920_)
                                      (if (eq? 'term _$e17923_)
                                          (let ((_id17926_
                                                 (gx#syntax-local-unwrap
                                                  _body17920_)))
                                            (if (##structure-direct-instance-of?
                                                 _id17926_
                                                 'gx#identifier-wrap::t)
                                                (let ((_marks17928_
                                                       (##direct-structure-ref
                                                        _id17926_
                                                        '3
                                                        gx#identifier-wrap::t
                                                        '#f)))
                                                  (if (null? _marks17928_)
                                                      (gx#core-list
                                                       'datum->syntax
                                                       '#f
                                                       (gx#core-list
                                                        'quote
                                                        _body17920_))
                                                      (gx#core-list
                                                       'datum->syntax
                                                       (gx#core-list
                                                        'quote-syntax
                                                        _body17920_)
                                                       (gx#core-list
                                                        'quote
                                                        _body17920_)
                                                       '#f
                                                       '#f)))
                                                (if (##structure-direct-instance-of?
                                                     _id17926_
                                                     'gx#syntax-quote::t)
                                                    (gx#core-list
                                                     'quote-syntax
                                                     _body17920_)
                                                    (_BUG17897_ _e17904_))))
                                          (if (eq? 'pattern _$e17923_)
                                              (_local-pattern-e17898_
                                               _body17920_)
                                              (if (eq? 'ref _$e17923_)
                                                  (_getvar17899_
                                                   _body17920_
                                                   _vars17905_)
                                                  (if (eq? 'cons _$e17923_)
                                                      (gx#core-list
                                                       'cons
                                                       (_recur17902_
                                                        (car _body17920_)
                                                        _vars17905_)
                                                       (_recur17902_
                                                        (cdr _body17920_)
                                                        _vars17905_))
                                                      (if (eq? 'vector
                                                               _$e17923_)
                                                          (gx#core-list
                                                           'list->vector
                                                           (_recur17902_
                                                            _body17920_
                                                            _vars17905_))
                                                          (if (eq? 'box
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e17923_)
                      (gx#core-list
                       'box
                       (_recur17902_ _body17920_ _vars17905_))
                      (if (eq? 'splice _$e17923_)
                          (let* ((_body1792917940_ _body17920_)
                                 (_E1793117944_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _body1792917940_)))
                                 (_K1793217982_
                                  (lambda (_args17947_
                                           _iv17948_
                                           _hd17949_
                                           _depth17950_)
                                    (let* ((_targets17956_
                                            (map (lambda (_g1795117953_)
                                                   (_getarg17900_
                                                    _g1795117953_
                                                    _vars17905_))
                                                 _args17947_))
                                           (_fold-in17958_
                                            (gx#gentemps _args17947_))
                                           (_fold-out17960_ (gx#genident__0))
                                           (_lambda-args17962_
                                            (foldr1 cons
                                                    (cons _fold-out17960_ '())
                                                    _fold-in17958_))
                                           (_lambda-body17979_
                                            (if (fx> _depth17950_ '1)
                                                (let ((_r-args17970_
                                                       (map (lambda (_arg17964_)
                                                              (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cdr _arg17964_)))
                    _args17947_))
              (_r-vars17971_
               (foldr2 (lambda (_arg17966_ _var17967_ _r17968_)
                         (cons (cons (cdr _arg17966_) _var17967_) _r17968_))
                       _vars17905_
                       _args17947_
                       _fold-in17958_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur17902_
                                                   (cons 'splice
                                                         (cons (fx- _depth17950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                       (cons _hd17949_
                             (cons (cons 'var _fold-out17960_)
                                   _r-args17970_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _r-vars17971_))
                                                (let ((_hd-vars17977_
                                                       (foldr2 (lambda (_arg17973_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _var17974_
                                _r17975_)
                         (cons (cons (cdr _arg17973_) _var17974_) _r17975_))
                       _vars17905_
                       _args17947_
                       _fold-in17958_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#core-list
                                                   'cons
                                                   (_recur17902_
                                                    _hd17949_
                                                    _hd-vars17977_)
                                                   _fold-out17960_)))))
                                      (gx#core-list
                                       'begin
                                       (if (fx> (length _targets17956_) '1)
                                           (gx#core-cons*
                                            'syntax-check-splice-targets
                                            _targets17956_)
                                           '#!void)
                                       (gx#core-cons*
                                        'foldr
                                        (gx#core-list
                                         'lambda%
                                         _lambda-args17962_
                                         _lambda-body17979_)
                                        (_recur17902_ _iv17948_ _vars17905_)
                                        _targets17956_))))))
                            (if (##pair? _body1792917940_)
                                (let ((_hd1793317985_ (##car _body1792917940_))
                                      (_tl1793417987_
                                       (##cdr _body1792917940_)))
                                  (let ((_depth17990_ _hd1793317985_))
                                    (if (##pair? _tl1793417987_)
                                        (let ((_hd1793517992_
                                               (##car _tl1793417987_))
                                              (_tl1793617994_
                                               (##cdr _tl1793417987_)))
                                          (let ((_hd17997_ _hd1793517992_))
                                            (if (##pair? _tl1793617994_)
                                                (let ((_hd1793717999_
                                                       (##car _tl1793617994_))
                                                      (_tl1793818001_
                                                       (##cdr _tl1793617994_)))
                                                  (let* ((_iv18004_
                                                          _hd1793717999_)
                                                         (_args18006_
                                                          _tl1793818001_))
                                                    (_K1793217982_
                                                     _args18006_
                                                     _iv18004_
                                                     _hd17997_
                                                     _depth17990_)))
                                                (_E1793117944_))))
                                        (_E1793117944_))))
                                (_E1793117944_)))
                          (if (eq? 'var _$e17923_)
                              _body17920_
                              (_BUG17897_ _e17904_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (if (##pair? _e1790617913_)
                            (let ((_hd1791018011_ (##car _e1790617913_))
                                  (_tl1791118013_ (##cdr _e1790617913_)))
                              (let* ((_tag18016_ _hd1791018011_)
                                     (_body18018_ _tl1791118013_))
                                (_K1790918008_ _body18018_ _tag18016_)))
                            (_E1790817917_)))))))
               (_parse17669_
                (lambda (_e17710_)
                  (letrec ((_make-cons17712_
                            (lambda (_hd17887_ _tl17888_)
                              (let ((_g18189_ _hd17887_) (_g18191_ _tl17888_))
                                (begin
                                  (let ((_g18190_ (values-count _g18189_)))
                                    (if (not (fx= _g18190_ 2))
                                        (error "Context expects 2 values"
                                               _g18190_)))
                                  (let ((_g18192_ (values-count _g18191_)))
                                    (if (not (fx= _g18192_ 2))
                                        (error "Context expects 2 values"
                                               _g18192_)))
                                  (let ((_hd-e17890_ (values-ref _g18189_ 0))
                                        (_hd-vars17891_
                                         (values-ref _g18189_ 1)))
                                    (let ((_tl-e17892_ (values-ref _g18191_ 0))
                                          (_tl-vars17893_
                                           (values-ref _g18191_ 1)))
                                      (values (cons 'cons
                                                    (cons _hd-e17890_
                                                          _tl-e17892_))
                                              (append _hd-vars17891_
                                                      _tl-vars17893_))))))))
                           (_make-splice17713_
                            (lambda (_where17826_
                                     _depth17827_
                                     _hd17828_
                                     _tl17829_)
                              (let ((_g18193_ _hd17828_) (_g18195_ _tl17829_))
                                (begin
                                  (let ((_g18194_ (values-count _g18193_)))
                                    (if (not (fx= _g18194_ 2))
                                        (error "Context expects 2 values"
                                               _g18194_)))
                                  (let ((_g18196_ (values-count _g18195_)))
                                    (if (not (fx= _g18196_ 2))
                                        (error "Context expects 2 values"
                                               _g18196_)))
                                  (let ((_hd-e17831_ (values-ref _g18193_ 0))
                                        (_hd-vars17832_
                                         (values-ref _g18193_ 1)))
                                    (let ((_tl-e17833_ (values-ref _g18195_ 0))
                                          (_tl-vars17834_
                                           (values-ref _g18195_ 1)))
                                      (let _lp17836_ ((_rest17838_
                                                       _hd-vars17832_)
                                                      (_targets17839_ '())
                                                      (_vars17840_
                                                       _tl-vars17834_))
                                        (let* ((_rest1784117851_ _rest17838_)
                                               (_E1784417855_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _rest1784117851_)))
                                               (_else1784317859_
                                                (lambda ()
                                                  (if (null? _targets17839_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Misplaced ellipsis"
                                                       _stx17666_
                                                       _where17826_)
                                                      (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _depth17827_
                                  (cons _hd-e17831_
                                        (cons _tl-e17833_ _targets17839_))))
                      _vars17840_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_K1784517868_
                                                (lambda (_rest17862_
                                                         _hd-pat17863_
                                                         _hd-depth*17864_)
                                                  (let ((_hd-depth17866_
                                                         (fx- _hd-depth*17864_
                                                              _depth17827_)))
                                                    (if (fxpositive?
                                                         _hd-depth17866_)
                                                        (_lp17836_
                                                         _rest17862_
                                                         (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd-pat17863_)
                       _targets17839_)
                 (cons (cons _hd-depth17866_ _hd-pat17863_) _vars17840_))
                (if (fxzero? _hd-depth17866_)
                    (_lp17836_
                     _rest17862_
                     (cons (cons 'pattern _hd-pat17863_) _targets17839_)
                     _vars17840_)
                    (gx#raise-syntax-error
                     '#f
                     '"Too many ellipses"
                     _stx17666_
                     _where17826_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1784117851_)
                                              (let ((_hd1784617871_
                                                     (##car _rest1784117851_))
                                                    (_tl1784717873_
                                                     (##cdr _rest1784117851_)))
                                                (if (##pair? _hd1784617871_)
                                                    (let ((_hd1784817876_
                                                           (##car _hd1784617871_))
                                                          (_tl1784917878_
                                                           (##cdr _hd1784617871_)))
                                                      (let* ((_hd-depth*17881_
                                                              _hd1784817876_)
                                                             (_hd-pat17883_
                                                              _tl1784917878_)
                                                             (_rest17885_
                                                              _tl1784717873_))
                                                        (_K1784517868_
                                                         _rest17885_
                                                         _hd-pat17883_
                                                         _hd-depth*17881_)))
                                                    (_else1784317859_)))
                                              (_else1784317859_))))))))))
                           (_recur17714_
                            (lambda (_e17719_ _is-e?17720_)
                              (if (_is-e?17720_ _e17719_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Mislpaced ellipsis"
                                   _stx17666_)
                                  (if (gx#syntax-local-pattern? _e17719_)
                                      (let* ((_pat17722_
                                              (gx#syntax-local-e__0 _e17719_))
                                             (_depth17724_
                                              (##structure-ref
                                               _pat17722_
                                               '3
                                               gx#syntax-pattern::t
                                               '#f)))
                                        (if (fxpositive? _depth17724_)
                                            (values (cons 'ref _pat17722_)
                                                    (cons (cons _depth17724_
                                                                _pat17722_)
                                                          '()))
                                            (values (cons 'pattern _pat17722_)
                                                    '())))
                                      (if (gx#identifier? _e17719_)
                                          (values (cons 'term _e17719_) '())
                                          (if (gx#stx-pair? _e17719_)
                                              (let* ((_e1772617733_ _e17719_)
                                                     (_E1772817737_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _e1772617733_)))
                                                     (_E1772717816_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e1772617733_)
                                                            (let ((_e1772917741_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e1772617733_)))
                      (let ((_hd1773017744_ (##car _e1772917741_))
                            (_tl1773117746_ (##cdr _e1772917741_)))
                        (let* ((_hd17749_ _hd1773017744_)
                               (_rest17751_ _tl1773117746_))
                          (if '#t
                              (if (_is-e?17720_ _hd17749_)
                                  (let* ((_e1775217759_ _rest17751_)
                                         (_E1775417763_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _stx17666_
                                             _e17719_)))
                                         (_E1775317777_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1775217759_)
                                                (let ((_e1775517767_
                                                       (gx#syntax-e
                                                        _e1775217759_)))
                                                  (let ((_hd1775617770_
                                                         (##car _e1775517767_))
                                                        (_tl1775717772_
                                                         (##cdr _e1775517767_)))
                                                    (let ((_rest17775_
                                                           _hd1775617770_))
                                                      (if (gx#stx-null?
                                                           _tl1775717772_)
                                                          (if '#t
                                                              (_recur17714_
                                                               _rest17775_
                                                               false)
                                                              (_E1775417763_))
                                                          (_E1775417763_)))))
                                                (_E1775417763_)))))
                                    (_E1775317777_))
                                  (let _lp17781_ ((_rest17783_ _rest17751_)
                                                  (_depth17784_ '0))
                                    (let* ((_e1778517792_ _rest17783_)
                                           (_E1778717796_
                                            (lambda ()
                                              (if (fxpositive? _depth17784_)
                                                  (_make-splice17713_
                                                   _e17719_
                                                   _depth17784_
                                                   (_recur17714_
                                                    _hd17749_
                                                    _is-e?17720_)
                                                   (_recur17714_
                                                    _rest17783_
                                                    _is-e?17720_))
                                                  (_make-cons17712_
                                                   (_recur17714_
                                                    _hd17749_
                                                    _is-e?17720_)
                                                   (_recur17714_
                                                    _rest17783_
                                                    _is-e?17720_)))))
                                           (_E1778617812_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1778517792_)
                                                  (let ((_e1778817800_
                                                         (gx#syntax-e
                                                          _e1778517792_)))
                                                    (let ((_hd1778917803_
                                                           (##car _e1778817800_))
                                                          (_tl1779017805_
                                                           (##cdr _e1778817800_)))
                                                      (let* ((_rest-hd17808_
                                                              _hd1778917803_)
                                                             (_rest-tl17810_
                                                              _tl1779017805_))
                                                        (if '#t
                                                            (if (_is-e?17720_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rest-hd17808_)
                        (_lp17781_ _rest-tl17810_ (fx+ _depth17784_ '1))
                        (if (fxpositive? _depth17784_)
                            (_make-splice17713_
                             _e17719_
                             _depth17784_
                             (_recur17714_ _hd17749_ _is-e?17720_)
                             (_recur17714_ _rest17783_ _is-e?17720_))
                            (_make-cons17712_
                             (_recur17714_ _hd17749_ _is-e?17720_)
                             (_recur17714_ _rest17783_ _is-e?17720_))))
                    (_E1778717796_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1778717796_)))))
                                      (_E1778617812_))))
                              (_E1772817737_)))))
                    (_E1772817737_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1772717816_))
                                              (if (gx#stx-vector? _e17719_)
                                                  (let ((_g18197_
                                                         (_recur17714_
                                                          (vector->list
                                                           (gx#stx-unwrap__0
                                                            _e17719_))
                                                          _is-e?17720_)))
                                                    (begin
                                                      (let ((_g18198_
                                                             (values-count
                                                              _g18197_)))
                                                        (if (not (fx= _g18198_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g18198_)))
              (let ((_e17820_ (values-ref _g18197_ 0))
                    (_vars17821_ (values-ref _g18197_ 1)))
                (values (cons 'vector _e17820_) _vars17821_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e17719_)
                                                      (let ((_g18199_
                                                             (_recur17714_
                                                              (unbox (gx#stx-unwrap__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e17719_))
                      _is-e?17720_)))
                (begin
                  (let ((_g18200_ (values-count _g18199_)))
                    (if (not (fx= _g18200_ 2))
                        (error "Context expects 2 values" _g18200_)))
                  (let ((_e17823_ (values-ref _g18199_ 0))
                        (_vars17824_ (values-ref _g18199_ 1)))
                    (values (cons 'box _e17823_) _vars17824_))))
              (values (cons 'datum _e17719_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    (let ((_g18201_ (_recur17714_ _e17710_ gx#ellipsis?)))
                      (begin
                        (let ((_g18202_ (values-count _g18201_)))
                          (if (not (fx= _g18202_ 2))
                              (error "Context expects 2 values" _g18202_)))
                        (let ((_tree17716_ (values-ref _g18201_ 0))
                              (_vars17717_ (values-ref _g18201_ 1)))
                          (if (null? _vars17717_)
                              _tree17716_
                              (gx#raise-syntax-error
                               '#f
                               '"Missing ellipsis"
                               _stx17666_
                               _vars17717_)))))))))
        (let* ((_e1767017680_ _stx17666_)
               (_E1767217684_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _stx17666_)))
               (_E1767117706_
                (lambda ()
                  (if (gx#stx-pair? _e1767017680_)
                      (let ((_e1767317688_ (gx#syntax-e _e1767017680_)))
                        (let ((_hd1767417691_ (##car _e1767317688_))
                              (_tl1767517693_ (##cdr _e1767317688_)))
                          (if (gx#stx-pair? _tl1767517693_)
                              (let ((_e1767617696_
                                     (gx#syntax-e _tl1767517693_)))
                                (let ((_hd1767717699_ (##car _e1767617696_))
                                      (_tl1767817701_ (##cdr _e1767617696_)))
                                  (let ((_form17704_ _hd1767717699_))
                                    (if (gx#stx-null? _tl1767817701_)
                                        (if '#t
                                            (gx#stx-wrap-source
                                             (_generate17668_
                                              (_parse17669_ _form17704_))
                                             (gx#stx-source _stx17666_))
                                            (_E1767217684_))
                                        (_E1767217684_)))))
                              (_E1767217684_))))
                      (_E1767217684_)))))
          (_E1767117706_)))))
  (begin
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx16932_ _identifier=?16933_ _unwrap-e16934_ _wrap-e16935_)
        (letrec ((_generate-bindings16937_
                  (lambda (_target17528_
                           _ids17529_
                           _clauses17530_
                           _clause-ids17531_
                           _E17532_)
                    (letrec ((_generate117534_
                              (lambda (_clause17633_ _clause-id17634_ _E17635_)
                                (cons (cons _clause-id17634_ '())
                                      (cons (gx#core-list
                                             'lambda%
                                             (cons _target17528_ '())
                                             (_generate-clause16939_
                                              _target17528_
                                              _ids17529_
                                              _clause17633_
                                              _E17635_))
                                            '())))))
                      (let _lp17536_ ((_rest17538_ _clauses17530_)
                                      (_rest-ids17539_ _clause-ids17531_)
                                      (_bindings17540_ '()))
                        (let* ((_rest1754117549_ _rest17538_)
                               (_E1754417553_
                                (lambda ()
                                  (error '"No clause matching"
                                         _rest1754117549_)))
                               (_else1754317557_ (lambda () _bindings17540_))
                               (_K1754517621_
                                (lambda (_rest17560_ _clause17561_)
                                  (let* ((_rest-ids1756217569_ _rest-ids17539_)
                                         (_E1756417573_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids1756217569_)))
                                         (_K1756517609_
                                          (lambda (_rest-ids17576_
                                                   _clause-id17577_)
                                            (let* ((_rest-ids1757817586_
                                                    _rest-ids17576_)
                                                   (_E1758117590_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _rest-ids1757817586_)))
                                                   (_else1758017594_
                                                    (lambda ()
                                                      (cons (_generate117534_
                                                             _clause17561_
                                                             _clause-id17577_
                                                             _E17532_)
                                                            _bindings17540_)))
                                                   (_K1758217599_
                                                    (lambda (_next-clause-id17597_)
                                                      (_lp17536_
                                                       _rest17560_
                                                       _rest-ids17576_
                                                       (cons (_generate117534_
                                                              _clause17561_
                                                              _clause-id17577_
                                                              _next-clause-id17597_)
                                                             _bindings17540_)))))
                                              (if (##pair? _rest-ids1757817586_)
                                                  (let ((_hd1758317602_
                                                         (##car _rest-ids1757817586_))
                                                        (_tl1758417604_
                                                         (##cdr _rest-ids1757817586_)))
                                                    (let ((_next-clause-id17607_
                                                           _hd1758317602_))
                                                      (_K1758217599_
                                                       _next-clause-id17607_)))
                                                  (_else1758017594_))))))
                                    (if (##pair? _rest-ids1756217569_)
                                        (let ((_hd1756617612_
                                               (##car _rest-ids1756217569_))
                                              (_tl1756717614_
                                               (##cdr _rest-ids1756217569_)))
                                          (let* ((_clause-id17617_
                                                  _hd1756617612_)
                                                 (_rest-ids17619_
                                                  _tl1756717614_))
                                            (_K1756517609_
                                             _rest-ids17619_
                                             _clause-id17617_)))
                                        (_E1756417573_))))))
                          (if (##pair? _rest1754117549_)
                              (let ((_hd1754617624_ (##car _rest1754117549_))
                                    (_tl1754717626_ (##cdr _rest1754117549_)))
                                (let* ((_clause17629_ _hd1754617624_)
                                       (_rest17631_ _tl1754717626_))
                                  (_K1754517621_ _rest17631_ _clause17629_)))
                              (_else1754317557_)))))))
                 (_generate-body16938_
                  (lambda (_bindings17488_ _body17489_)
                    (let _recur17491_ ((_rest17493_ _bindings17488_))
                      (let* ((_rest1749417502_ _rest17493_)
                             (_E1749717506_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1749417502_)))
                             (_else1749617510_ (lambda () _body17489_))
                             (_K1749817516_
                              (lambda (_rest17513_ _hd17514_)
                                (gx#core-list
                                 'let-values
                                 (cons _hd17514_ '())
                                 (_recur17491_ _rest17513_)))))
                        (if (##pair? _rest1749417502_)
                            (let ((_hd1749917519_ (##car _rest1749417502_))
                                  (_tl1750017521_ (##cdr _rest1749417502_)))
                              (let* ((_hd17524_ _hd1749917519_)
                                     (_rest17526_ _tl1750017521_))
                                (_K1749817516_ _rest17526_ _hd17524_)))
                            (_else1749617510_))))))
                 (_generate-clause16939_
                  (lambda (_target17351_ _ids17352_ _clause17353_ _E17354_)
                    (letrec ((_generate117356_
                              (lambda (_hd17443_ _fender17444_ _body17445_)
                                (let ((_g18203_
                                       (_parse-clause16941_
                                        _hd17443_
                                        _ids17352_)))
                                  (begin
                                    (let ((_g18204_ (values-count _g18203_)))
                                      (if (not (fx= _g18204_ 2))
                                          (error "Context expects 2 values"
                                                 _g18204_)))
                                    (let ((_e17447_ (values-ref _g18203_ 0))
                                          (_mvars17448_
                                           (values-ref _g18203_ 1)))
                                      (let* ((_pvars17450_
                                              (map gx#syntax-local-rewrap
                                                   (gx#gentemps _mvars17448_)))
                                             (_E17452_
                                              (cons _E17354_
                                                    (cons _target17351_ '())))
                                             (_K17485_
                                              (gx#core-list
                                               'lambda%
                                               _pvars17450_
                                               (gx#core-list
                                                'let-syntax
                                                (map (lambda (_mvar17454_
                                                              _pvar17455_)
                                                       (let* ((_mvar1745617463_
                                                               _mvar17454_)
                                                              (_E1745817467_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (error '"No clause matching" _mvar1745617463_)))
                      (_K1745917473_
                       (lambda (_depth17470_ _id17471_)
                         (cons _id17471_
                               (cons (gx#core-list
                                      'make-syntax-pattern
                                      (gx#core-list 'quote _id17471_)
                                      (gx#core-list 'quote _pvar17455_)
                                      _depth17470_)
                                     '())))))
                 (if (##pair? _mvar1745617463_)
                     (let ((_hd1746017476_ (##car _mvar1745617463_))
                           (_tl1746117478_ (##cdr _mvar1745617463_)))
                       (let* ((_id17481_ _hd1746017476_)
                              (_depth17483_ _tl1746117478_))
                         (_K1745917473_ _depth17483_ _id17481_)))
                     (_E1745817467_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _mvars17448_
                                                     _pvars17450_)
                                                (if (eq? _fender17444_ '#t)
                                                    _body17445_
                                                    (gx#core-list
                                                     'if
                                                     _fender17444_
                                                     _body17445_
                                                     _E17452_))))))
                                        (_generate-match16940_
                                         _hd17443_
                                         _target17351_
                                         _e17447_
                                         _mvars17448_
                                         _K17485_
                                         _E17452_))))))))
                      (let* ((_e1735717377_ _clause17353_)
                             (_E1736617381_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _e1735717377_)))
                             (_E1735917415_
                              (lambda ()
                                (if (gx#stx-pair? _e1735717377_)
                                    (let ((_e1736717385_
                                           (gx#syntax-e _e1735717377_)))
                                      (let ((_hd1736817388_
                                             (##car _e1736717385_))
                                            (_tl1736917390_
                                             (##cdr _e1736717385_)))
                                        (let ((_hd17393_ _hd1736817388_))
                                          (if (gx#stx-pair? _tl1736917390_)
                                              (let ((_e1737017395_
                                                     (gx#syntax-e
                                                      _tl1736917390_)))
                                                (let ((_hd1737117398_
                                                       (##car _e1737017395_))
                                                      (_tl1737217400_
                                                       (##cdr _e1737017395_)))
                                                  (let ((_fender17403_
                                                         _hd1737117398_))
                                                    (if (gx#stx-pair?
                                                         _tl1737217400_)
                                                        (let ((_e1737317405_
                                                               (gx#syntax-e
                                                                _tl1737217400_)))
                                                          (let ((_hd1737417408_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1737317405_))
                        (_tl1737517410_ (##cdr _e1737317405_)))
                    (let ((_body17413_ _hd1737417408_))
                      (if (gx#stx-null? _tl1737517410_)
                          (if '#t
                              (_generate117356_
                               _hd17393_
                               _fender17403_
                               _body17413_)
                              (_E1736617381_))
                          (_E1736617381_)))))
                (_E1736617381_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1736617381_)))))
                                    (_E1736617381_))))
                             (_E1735817439_
                              (lambda ()
                                (if (gx#stx-pair? _e1735717377_)
                                    (let ((_e1736017419_
                                           (gx#syntax-e _e1735717377_)))
                                      (let ((_hd1736117422_
                                             (##car _e1736017419_))
                                            (_tl1736217424_
                                             (##cdr _e1736017419_)))
                                        (let ((_hd17427_ _hd1736117422_))
                                          (if (gx#stx-pair? _tl1736217424_)
                                              (let ((_e1736317429_
                                                     (gx#syntax-e
                                                      _tl1736217424_)))
                                                (let ((_hd1736417432_
                                                       (##car _e1736317429_))
                                                      (_tl1736517434_
                                                       (##cdr _e1736317429_)))
                                                  (let ((_body17437_
                                                         _hd1736417432_))
                                                    (if (gx#stx-null?
                                                         _tl1736517434_)
                                                        (if '#t
                                                            (_generate117356_
                                                             _hd17427_
                                                             '#t
                                                             _body17437_)
                                                            (_E1735917415_))
                                                        (_E1735917415_)))))
                                              (_E1735917415_)))))
                                    (_E1735917415_)))))
                        (_E1735817439_)))))
                 (_generate-match16940_
                  (lambda (_where17104_
                           _target17105_
                           _hd17106_
                           _mvars17107_
                           _K17108_
                           _E17109_)
                    (letrec ((_BUG17111_
                              (lambda (_q17349_)
                                (error '"BUG: syntax-case; generate"
                                       _stx16932_
                                       _hd17106_
                                       _q17349_)))
                             (_recur17112_
                              (lambda (_e17203_
                                       _vars17204_
                                       _target17205_
                                       _E17206_
                                       _k17207_)
                                (let* ((_e1720817215_ _e17203_)
                                       (_E1721017219_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e1720817215_)))
                                       (_K1721117337_
                                        (lambda (_body17222_ _tag17223_)
                                          (let ((_$e17225_ _tag17223_))
                                            (if (eq? 'any _$e17225_)
                                                (_k17207_ _vars17204_)
                                                (if (eq? 'id _$e17225_)
                                                    (gx#core-list
                                                     'if
                                                     (gx#core-list
                                                      'identifier?
                                                      _target17205_)
                                                     (gx#core-list
                                                      'if
                                                      (gx#core-list
                                                       _identifier=?16933_
                                                       (gx#core-list
                                                        _wrap-e16935_
                                                        _body17222_)
                                                       _target17205_)
                                                      (_k17207_ _vars17204_)
                                                      _E17206_)
                                                     _E17206_)
                                                    (if (eq? 'var _$e17225_)
                                                        (_k17207_
                                                         (cons (cons _body17222_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _target17205_)
                       _vars17204_))
                (if (eq? 'cons _$e17225_)
                    (let ((_$e17228_ (gx#genident__1 'e))
                          (_$hd17229_ (gx#genident__1 'hd))
                          (_$tl17230_ (gx#genident__1 'tl)))
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _target17205_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$e17228_ '())
                                    (cons (gx#core-list
                                           _unwrap-e16934_
                                           _target17205_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$hd17229_ '())
                                     (cons (gx#core-list '##car _$e17228_)
                                           '()))
                               (cons (cons (cons _$tl17230_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$e17228_)
                                                 '()))
                                     '()))
                         (let* ((_body1723117238_ _body17222_)
                                (_E1723317242_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _body1723117238_)))
                                (_K1723417250_
                                 (lambda (_tl17245_ _hd17246_)
                                   (_recur17112_
                                    _hd17246_
                                    _vars17204_
                                    _$hd17229_
                                    _E17206_
                                    (lambda (_vars17248_)
                                      (_recur17112_
                                       _tl17245_
                                       _vars17248_
                                       _$tl17230_
                                       _E17206_
                                       _k17207_))))))
                           (if (##pair? _body1723117238_)
                               (let ((_hd1723517253_ (##car _body1723117238_))
                                     (_tl1723617255_ (##cdr _body1723117238_)))
                                 (let* ((_hd17258_ _hd1723517253_)
                                        (_tl17260_ _tl1723617255_))
                                   (_K1723417250_ _tl17260_ _hd17258_)))
                               (_E1723317242_)))))
                       _E17206_))
                    (if (eq? 'splice _$e17225_)
                        (let* ((_body1726117268_ _body17222_)
                               (_E1726317272_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body1726117268_)))
                               (_K1726417321_
                                (lambda (_tl17275_ _hd17276_)
                                  (let* ((_rlen17278_
                                          (_splice-rlen17113_ _tl17275_))
                                         (_$target17280_
                                          (gx#genident__1 'target))
                                         (_$hd17282_ (gx#genident__1 'hd))
                                         (_$tl17284_ (gx#genident__1 'tl))
                                         (_$lp17286_ (gx#genident__1 'loop))
                                         (_$lp-e17288_ (gx#genident__1 'e))
                                         (_$lp-hd17290_
                                          (gx#genident__1 'lp-hd))
                                         (_$lp-tl17292_
                                          (gx#genident__1 'lp-tl))
                                         (_svars17294_
                                          (_splice-vars17114_ _hd17276_))
                                         (_lvars17296_
                                          (gx#gentemps _svars17294_))
                                         (_tlvars17298_
                                          (gx#gentemps _svars17294_))
                                         (_linit17302_
                                          (map (lambda (_var17300_)
                                                 (gx#core-list 'quote '()))
                                               _lvars17296_)))
                                    (letrec ((_make-loop17305_
                                              (lambda (_vars17307_)
                                                (gx#core-list
                                                 'letrec-values
                                                 (cons (cons (cons _$lp17286_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _$hd17282_ _lvars17296_)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-pair? _$hd17282_)
                             (gx#core-list
                              'let-values
                              (cons (cons (cons _$lp-e17288_ '())
                                          (cons (gx#core-list
                                                 _unwrap-e16934_
                                                 _$hd17282_)
                                                '()))
                                    '())
                              (gx#core-list
                               'let-values
                               (cons (cons (cons _$lp-hd17290_ '())
                                           (cons (gx#core-list
                                                  '##car
                                                  _$lp-e17288_)
                                                 '()))
                                     (cons (cons (cons _$lp-tl17292_ '())
                                                 (cons (gx#core-list
                                                        '##cdr
                                                        _$lp-e17288_)
                                                       '()))
                                           '()))
                               (_recur17112_
                                _hd17276_
                                '()
                                _$lp-hd17290_
                                _E17206_
                                (lambda (_hdvars17309_)
                                  (cons _$lp17286_
                                        (cons _$lp-tl17292_
                                              (map (lambda (_svar17311_
                                                            _lvar17312_)
                                                     (gx#core-list
                                                      'cons
                                                      (assgetq _svar17311_
                                                               _hdvars17309_
                                                               _BUG17111_)
                                                      _lvar17312_))
                                                   _svars17294_
                                                   _lvars17296_)))))))
                             (gx#core-list
                              'let-values
                              (map (lambda (_lvar17314_ _tlvar17315_)
                                     (cons (cons _tlvar17315_ '())
                                           (cons (gx#core-list
                                                  'reverse
                                                  _lvar17314_)
                                                 '())))
                                   _lvars17296_
                                   _tlvars17298_)
                              (_k17207_
                               (foldl2 (lambda (_svar17317_
                                                _tlvar17318_
                                                _r17319_)
                                         (cons (cons _svar17317_ _tlvar17318_)
                                               _r17319_))
                                       _vars17307_
                                       _svars17294_
                                       _tlvars17298_)))))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _$lp17286_
                                                       (cons _$target17280_
                                                             _linit17302_))))))
                                      (gx#core-list
                                       'if
                                       (gx#core-list
                                        'stx-pair/null?
                                        _target17205_)
                                       (gx#core-list
                                        'if
                                        (gx#core-list
                                         'fx>=
                                         (gx#core-list
                                          'stx-length
                                          _target17205_)
                                         _rlen17278_)
                                        (gx#core-list
                                         'let-values
                                         (cons (cons (cons _$target17280_
                                                           (cons _$tl17284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (gx#core-list
                                                            'syntax-split-splice
                                                            _target17205_
                                                            _rlen17278_)
                                                           '()))
                                               '())
                                         (_recur17112_
                                          _tl17275_
                                          _vars17204_
                                          _$tl17284_
                                          _E17206_
                                          _make-loop17305_))
                                        _E17206_)
                                       _E17206_))))))
                          (if (##pair? _body1726117268_)
                              (let ((_hd1726517324_ (##car _body1726117268_))
                                    (_tl1726617326_ (##cdr _body1726117268_)))
                                (let* ((_hd17329_ _hd1726517324_)
                                       (_tl17331_ _tl1726617326_))
                                  (_K1726417321_ _tl17331_ _hd17329_)))
                              (_E1726317272_)))
                        (if (eq? 'null _$e17225_)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-null? _target17205_)
                             (_k17207_ _vars17204_)
                             _E17206_)
                            (if (eq? 'vector _$e17225_)
                                (let ((_$e17333_ (gx#genident__1 'e)))
                                  (gx#core-list
                                   'if
                                   (gx#core-list 'stx-vector? _target17205_)
                                   (gx#core-list
                                    'let-values
                                    (cons (cons (cons _$e17333_ '())
                                                (cons (gx#core-list
                                                       'vector->list
                                                       (gx#core-list
                                                        _unwrap-e16934_
                                                        _target17205_))
                                                      '()))
                                          '())
                                    (_recur17112_
                                     _body17222_
                                     _vars17204_
                                     _$e17333_
                                     _E17206_
                                     _k17207_))
                                   _E17206_))
                                (if (eq? 'box _$e17225_)
                                    (let ((_$e17335_ (gx#genident__1 'e)))
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-box? _target17205_)
                                       (gx#core-list
                                        'let-values
                                        (cons (cons (cons _$e17335_ '())
                                                    (cons (gx#core-list
                                                           'unbox
                                                           (gx#core-list
                                                            _unwrap-e16934_
                                                            _target17205_))
                                                          '()))
                                              '())
                                        (_recur17112_
                                         _body17222_
                                         _vars17204_
                                         _$e17335_
                                         _E17206_
                                         _k17207_))
                                       _E17206_))
                                    (if (eq? 'datum _$e17225_)
                                        (gx#core-list
                                         'if
                                         (gx#core-list
                                          'stx-datum?
                                          _target17205_)
                                         (gx#core-list
                                          'if
                                          (gx#core-list
                                           'equal?
                                           (gx#core-list 'stx-e _target17205_)
                                           _body17222_)
                                          (_k17207_ _vars17204_)
                                          _E17206_)
                                         _E17206_)
                                        (_BUG17111_ _e17203_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (##pair? _e1720817215_)
                                      (let ((_hd1721217340_
                                             (##car _e1720817215_))
                                            (_tl1721317342_
                                             (##cdr _e1720817215_)))
                                        (let* ((_tag17345_ _hd1721217340_)
                                               (_body17347_ _tl1721317342_))
                                          (_K1721117337_
                                           _body17347_
                                           _tag17345_)))
                                      (_E1721017219_)))))
                             (_splice-rlen17113_
                              (lambda (_e17165_)
                                (let _lp17167_ ((_e17169_ _e17165_)
                                                (_n17170_ '0))
                                  (let* ((_e1717117178_ _e17169_)
                                         (_E1717317182_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1717117178_)))
                                         (_K1717417191_
                                          (lambda (_body17185_ _tag17186_)
                                            (let ((_$e17188_ _tag17186_))
                                              (if (eq? 'splice _$e17188_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Ambiguous pattern"
                                                   _stx16932_
                                                   _where17104_)
                                                  (if (eq? 'cons _$e17188_)
                                                      (_lp17167_
                                                       (cdr _body17185_)
                                                       (fx+ _n17170_ '1))
                                                      _n17170_))))))
                                    (if (##pair? _e1717117178_)
                                        (let ((_hd1717517194_
                                               (##car _e1717117178_))
                                              (_tl1717617196_
                                               (##cdr _e1717117178_)))
                                          (let* ((_tag17199_ _hd1717517194_)
                                                 (_body17201_ _tl1717617196_))
                                            (_K1717417191_
                                             _body17201_
                                             _tag17199_)))
                                        (_E1717317182_))))))
                             (_splice-vars17114_
                              (lambda (_e17121_)
                                (let _recur17123_ ((_e17125_ _e17121_)
                                                   (_vars17126_ '()))
                                  (let* ((_e1712717134_ _e17125_)
                                         (_E1712917138_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1712717134_)))
                                         (_K1713017153_
                                          (lambda (_body17141_ _tag17142_)
                                            (let ((_$e17144_ _tag17142_))
                                              (if (eq? 'var _$e17144_)
                                                  (cons _body17141_
                                                        _vars17126_)
                                                  (if (let ((_$e17147_
                                                             (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _$e17144_)))
                (if _$e17147_ _$e17147_ (eq? 'splice _$e17144_)))
              (_recur17123_
               (cdr _body17141_)
               (_recur17123_ (car _body17141_) _vars17126_))
              (if (let ((_$e17150_ (eq? 'vector _$e17144_)))
                    (if _$e17150_ _$e17150_ (eq? 'box _$e17144_)))
                  (_recur17123_ _body17141_ _vars17126_)
                  _vars17126_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (##pair? _e1712717134_)
                                        (let ((_hd1713117156_
                                               (##car _e1712717134_))
                                              (_tl1713217158_
                                               (##cdr _e1712717134_)))
                                          (let* ((_tag17161_ _hd1713117156_)
                                                 (_body17163_ _tl1713217158_))
                                            (_K1713017153_
                                             _body17163_
                                             _tag17161_)))
                                        (_E1712917138_))))))
                             (_make-body17115_
                              (lambda (_vars17117_)
                                (cons _K17108_
                                      (map (lambda (_mvar17119_)
                                             (assgetq (car _mvar17119_)
                                                      _vars17117_
                                                      _BUG17111_))
                                           _mvars17107_)))))
                      (_recur17112_
                       _hd17106_
                       '()
                       _target17105_
                       _E17109_
                       _make-body17115_))))
                 (_parse-clause16941_
                  (lambda (_hd17010_ _ids17011_)
                    (let _recur17013_ ((_e17015_ _hd17010_)
                                       (_vars17016_ '())
                                       (_depth17017_ '0))
                      (if (gx#identifier? _e17015_)
                          (if (gx#underscore? _e17015_)
                              (values '(any) _vars17016_)
                              (if (gx#ellipsis? _e17015_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Misplaced ellipsis"
                                   _stx16932_
                                   _hd17010_)
                                  (if (find (lambda (_id17019_)
                                              (gx#bound-identifier=?
                                               _e17015_
                                               _id17019_))
                                            _ids17011_)
                                      (values (cons 'id _e17015_) _vars17016_)
                                      (if (find (lambda (_var17021_)
                                                  (gx#bound-identifier=?
                                                   _e17015_
                                                   (car _var17021_)))
                                                _vars17016_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Duplicate pattern variable"
                                           _stx16932_
                                           _e17015_)
                                          (values (cons 'var _e17015_)
                                                  (cons (cons _e17015_
                                                              _depth17017_)
                                                        _vars17016_))))))
                          (if (gx#stx-pair? _e17015_)
                              (let* ((_e1702217029_ _e17015_)
                                     (_E1702417033_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _e1702217029_)))
                                     (_E1702317094_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1702217029_)
                                            (let ((_e1702517037_
                                                   (gx#syntax-e
                                                    _e1702217029_)))
                                              (let ((_hd1702617040_
                                                     (##car _e1702517037_))
                                                    (_tl1702717042_
                                                     (##cdr _e1702517037_)))
                                                (let* ((_hd17045_
                                                        _hd1702617040_)
                                                       (_rest17047_
                                                        _tl1702717042_))
                                                  (if '#t
                                                      (let* ((_make-pair17062_
                                                              (lambda (_tag17049_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd17050_
                               _tl17051_)
                        (let* ((_hd-depth17053_
                                (if (eq? _tag17049_ 'splice)
                                    (fx+ _depth17017_ '1)
                                    _depth17017_))
                               (_g18205_
                                (_recur17013_
                                 _hd17050_
                                 _vars17016_
                                 _hd-depth17053_)))
                          (begin
                            (let ((_g18206_ (values-count _g18205_)))
                              (if (not (fx= _g18206_ 2))
                                  (error "Context expects 2 values" _g18206_)))
                            (let ((_hd17055_ (values-ref _g18205_ 0))
                                  (_vars17056_ (values-ref _g18205_ 1)))
                              (let ((_g18207_
                                     (_recur17013_
                                      _tl17051_
                                      _vars17056_
                                      _depth17017_)))
                                (begin
                                  (let ((_g18208_ (values-count _g18207_)))
                                    (if (not (fx= _g18208_ 2))
                                        (error "Context expects 2 values"
                                               _g18208_)))
                                  (let ((_tl17058_ (values-ref _g18207_ 0))
                                        (_vars17059_ (values-ref _g18207_ 1)))
                                    (let ()
                                      (values (cons _tag17049_
                                                    (cons _hd17055_ _tl17058_))
                                              _vars17059_))))))))))
                     (_e1706317070_ _rest17047_)
                     (_E1706517074_
                      (lambda ()
                        (_make-pair17062_ 'cons _hd17045_ _rest17047_)))
                     (_E1706417090_
                      (lambda ()
                        (if (gx#stx-pair? _e1706317070_)
                            (let ((_e1706617078_ (gx#syntax-e _e1706317070_)))
                              (let ((_hd1706717081_ (##car _e1706617078_))
                                    (_tl1706817083_ (##cdr _e1706617078_)))
                                (let* ((_rest-hd17086_ _hd1706717081_)
                                       (_rest-tl17088_ _tl1706817083_))
                                  (if '#t
                                      (if (gx#ellipsis? _rest-hd17086_)
                                          (_make-pair17062_
                                           'splice
                                           _hd17045_
                                           _rest-tl17088_)
                                          (_make-pair17062_
                                           'cons
                                           _hd17045_
                                           _rest17047_))
                                      (_E1706517074_)))))
                            (_E1706517074_)))))
                (_E1706417090_))
              (_E1702417033_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1702417033_)))))
                                (_E1702317094_))
                              (if (gx#stx-null? _e17015_)
                                  (values '(null) _vars17016_)
                                  (if (gx#stx-vector? _e17015_)
                                      (let ((_g18209_
                                             (_recur17013_
                                              (vector->list
                                               (gx#syntax-e _e17015_))
                                              _vars17016_
                                              _depth17017_)))
                                        (begin
                                          (let ((_g18210_
                                                 (values-count _g18209_)))
                                            (if (not (fx= _g18210_ 2))
                                                (error "Context expects 2 values"
                                                       _g18210_)))
                                          (let ((_e17098_
                                                 (values-ref _g18209_ 0))
                                                (_vars17099_
                                                 (values-ref _g18209_ 1)))
                                            (values (cons 'vector _e17098_)
                                                    _vars17099_))))
                                      (if (gx#stx-box? _e17015_)
                                          (let ((_g18211_
                                                 (_recur17013_
                                                  (unbox (gx#syntax-e
                                                          _e17015_))
                                                  _vars17016_
                                                  _depth17017_)))
                                            (begin
                                              (let ((_g18212_
                                                     (values-count _g18211_)))
                                                (if (not (fx= _g18212_ 2))
                                                    (error "Context expects 2 values"
                                                           _g18212_)))
                                              (let ((_e17101_
                                                     (values-ref _g18211_ 0))
                                                    (_vars17102_
                                                     (values-ref _g18211_ 1)))
                                                (values (cons 'box _e17101_)
                                                        _vars17102_))))
                                          (if (gx#stx-datum? _e17015_)
                                              (values (cons 'datum
                                                            (gx#stx-e
                                                             _e17015_))
                                                      _vars17016_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad pattern"
                                               _stx16932_
                                               _e17015_)))))))))))
          (let* ((_e1694216955_ _stx16932_)
                 (_E1694416959_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1694216955_)))
                 (_E1694317006_
                  (lambda ()
                    (if (gx#stx-pair? _e1694216955_)
                        (let ((_e1694516963_ (gx#syntax-e _e1694216955_)))
                          (let ((_hd1694616966_ (##car _e1694516963_))
                                (_tl1694716968_ (##cdr _e1694516963_)))
                            (if (gx#stx-pair? _tl1694716968_)
                                (let ((_e1694816971_
                                       (gx#syntax-e _tl1694716968_)))
                                  (let ((_hd1694916974_ (##car _e1694816971_))
                                        (_tl1695016976_ (##cdr _e1694816971_)))
                                    (let ((_expr16979_ _hd1694916974_))
                                      (if (gx#stx-pair? _tl1695016976_)
                                          (let ((_e1695116981_
                                                 (gx#syntax-e _tl1695016976_)))
                                            (let ((_hd1695216984_
                                                   (##car _e1695116981_))
                                                  (_tl1695316986_
                                                   (##cdr _e1695116981_)))
                                              (let* ((_ids16989_
                                                      _hd1695216984_)
                                                     (_clauses16991_
                                                      _tl1695316986_))
                                                (if '#t
                                                    (if (not (gx#identifier-list?
                                                              _ids16989_))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad template identifier list"
                                                         _stx16932_
                                                         _ids16989_)
                                                        (if (not (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _clauses16991_))
                    (gx#raise-syntax-error '#f '"Bad syntax" _stx16932_)
                    (let* ((_ids16993_ (gx#syntax->list _ids16989_))
                           (_clauses16995_ (gx#syntax->list _clauses16991_))
                           (_clause-ids16997_ (gx#gentemps _clauses16995_))
                           (_E16999_ (gx#genident__0))
                           (_target17001_ (gx#genident__0))
                           (_first17003_
                            (if (null? _clauses16995_)
                                _E16999_
                                (car _clause-ids16997_))))
                      (gx#stx-wrap-source
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _E16999_ '())
                                    (cons (gx#core-list
                                           'lambda%
                                           (cons _target17001_ '())
                                           (gx#core-list
                                            'raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _target17001_))
                                          '()))
                              '())
                        (_generate-body16938_
                         (_generate-bindings16937_
                          _target17001_
                          _ids16993_
                          _clauses16995_
                          _clause-ids16997_
                          _E16999_)
                         (cons _first17003_ (cons _expr16979_ '()))))
                       (gx#stx-source _stx16932_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1694416959_)))))
                                          (_E1694416959_)))))
                                (_E1694416959_))))
                        (_E1694416959_)))))
            (_E1694317006_)))))
    (begin
      (define gx#macro-expand-syntax-case__0
        (lambda (_stx17640_)
          (let* ((_identifier=?17642_ 'free-identifier=?)
                 (_unwrap-e17644_ 'syntax-e)
                 (_wrap-e17646_ 'quote-syntax))
            (gx#macro-expand-syntax-case__%
             _stx17640_
             _identifier=?17642_
             _unwrap-e17644_
             _wrap-e17646_))))
      (define gx#macro-expand-syntax-case__1
        (lambda (_stx17648_ _identifier=?17649_)
          (let* ((_unwrap-e17651_ 'syntax-e) (_wrap-e17653_ 'quote-syntax))
            (gx#macro-expand-syntax-case__%
             _stx17648_
             _identifier=?17649_
             _unwrap-e17651_
             _wrap-e17653_))))
      (define gx#macro-expand-syntax-case__2
        (lambda (_stx17655_ _identifier=?17656_ _unwrap-e17657_)
          (let ((_wrap-e17659_ 'quote-syntax))
            (gx#macro-expand-syntax-case__%
             _stx17655_
             _identifier=?17656_
             _unwrap-e17657_
             _wrap-e17659_))))
      (define gx#macro-expand-syntax-case
        (lambda _g18214_
          (let ((_g18213_ (length _g18214_)))
            (cond ((fx= _g18213_ 1)
                   (apply gx#macro-expand-syntax-case__0 _g18214_))
                  ((fx= _g18213_ 2)
                   (apply gx#macro-expand-syntax-case__1 _g18214_))
                  ((fx= _g18213_ 3)
                   (apply gx#macro-expand-syntax-case__2 _g18214_))
                  ((fx= _g18213_ 4)
                   (apply gx#macro-expand-syntax-case__% _g18214_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-syntax-case
                    _g18214_))))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx16929_)
      (if (gx#identifier? _stx16929_)
          (##structure-instance-of?
           (gx#syntax-local-e__% _stx16929_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd16887_ . _rest16888_)
      (let ((_len16890_ (length _hd16887_)))
        (let _lp16892_ ((_rest16894_ _rest16888_))
          (let* ((_rest1689516903_ _rest16894_)
                 (_E1689816907_
                  (lambda () (error '"No clause matching" _rest1689516903_)))
                 (_else1689716911_ (lambda () '#!void))
                 (_K1689916917_
                  (lambda (_rest16914_ _hd16915_)
                    (if (fx= _len16890_ (length _hd16915_))
                        (_lp16892_ _rest16914_)
                        (gx#raise-syntax-error
                         '#f
                         '"Splice length mismatch"
                         _hd16915_)))))
            (if (##pair? _rest1689516903_)
                (let ((_hd1690016920_ (##car _rest1689516903_))
                      (_tl1690116922_ (##cdr _rest1689516903_)))
                  (let* ((_hd16925_ _hd1690016920_)
                         (_rest16927_ _tl1690116922_))
                    (_K1689916917_ _rest16927_ _hd16925_)))
                (_else1689716911_)))))))
  (define gx#syntax-split-splice
    (lambda (_stx16845_ _n16846_)
      (let _lp16848_ ((_rest16850_ _stx16845_) (_r16851_ '()))
        (if (gx#stx-pair? _rest16850_)
            (let* ((_g1685216859_ (gx#syntax-e _rest16850_))
                   (_E1685416863_
                    (lambda () (error '"No clause matching" _g1685216859_)))
                   (_K1685516869_
                    (lambda (_rest16866_ _hd16867_)
                      (_lp16848_ _rest16866_ (cons _hd16867_ _r16851_)))))
              (if (##pair? _g1685216859_)
                  (let ((_hd1685616872_ (##car _g1685216859_))
                        (_tl1685716874_ (##cdr _g1685216859_)))
                    (let* ((_hd16877_ _hd1685616872_)
                           (_rest16879_ _tl1685716874_))
                      (_K1685516869_ _rest16879_ _hd16877_)))
                  (_E1685416863_)))
            (let _lp16881_ ((_n16883_ _n16846_)
                            (_l16884_ _r16851_)
                            (_r16885_ _rest16850_))
              (if (null? _l16884_)
                  (values _l16884_ _r16885_)
                  (if (fxpositive? _n16883_)
                      (_lp16881_
                       (fx- _n16883_ '1)
                       (cdr _l16884_)
                       (cons (car _l16884_) _r16885_))
                      (values (reverse _l16884_) _r16885_)))))))))
