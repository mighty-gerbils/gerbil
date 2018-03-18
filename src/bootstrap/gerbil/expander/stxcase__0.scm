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
    (lambda _$args18269_
      (apply make-struct-instance gx#syntax-pattern::t _$args18269_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self18266_ _stx18267_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx18267_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx17748_)
      (letrec ((_generate17750_
                (lambda (_e17977_)
                  (letrec ((_BUG17979_
                            (lambda (_q18141_)
                              (error '"BUG: syntax; generate"
                                     _stx17748_
                                     _e17977_
                                     _q18141_)))
                           (_local-pattern-e17980_
                            (lambda (_pat18139_)
                              (gx#syntax-local-rewrap
                               (##structure-ref
                                _pat18139_
                                '2
                                gx#syntax-pattern::t
                                '#f))))
                           (_getvar17981_
                            (lambda (_q18136_ _vars18137_)
                              (assgetq _q18136_ _vars18137_ _BUG17979_)))
                           (_getarg17982_
                            (lambda (_arg18102_ _vars18103_)
                              (let* ((_arg1810418111_ _arg18102_)
                                     (_E1810618115_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _arg1810418111_)))
                                     (_K1810718124_
                                      (lambda (_e18118_ _tag18119_)
                                        (let ((_$e18121_ _tag18119_))
                                          (if (eq? 'ref _$e18121_)
                                              (_getvar17981_
                                               _e18118_
                                               _vars18103_)
                                              (if (eq? 'pattern _$e18121_)
                                                  (_local-pattern-e17980_
                                                   _e18118_)
                                                  (_BUG17979_ _arg18102_)))))))
                                (if (##pair? _arg1810418111_)
                                    (let ((_hd1810818127_
                                           (##car _arg1810418111_))
                                          (_tl1810918129_
                                           (##cdr _arg1810418111_)))
                                      (let* ((_tag18132_ _hd1810818127_)
                                             (_e18134_ _tl1810918129_))
                                        (_K1810718124_ _e18134_ _tag18132_)))
                                    (_E1810618115_))))))
                    (let _recur17984_ ((_e17986_ _e17977_) (_vars17987_ '()))
                      (let* ((_e1798817995_ _e17986_)
                             (_E1799017999_
                              (lambda ()
                                (error '"No clause matching" _e1798817995_)))
                             (_K1799118090_
                              (lambda (_body18002_ _tag18003_)
                                (let ((_$e18005_ _tag18003_))
                                  (if (eq? 'datum _$e18005_)
                                      (gx#core-list 'quote _body18002_)
                                      (if (eq? 'term _$e18005_)
                                          (let ((_id18008_
                                                 (gx#syntax-local-unwrap
                                                  _body18002_)))
                                            (if (##structure-direct-instance-of?
                                                 _id18008_
                                                 'gx#identifier-wrap::t)
                                                (let ((_marks18010_
                                                       (##direct-structure-ref
                                                        _id18008_
                                                        '3
                                                        gx#identifier-wrap::t
                                                        '#f)))
                                                  (if (null? _marks18010_)
                                                      (gx#core-list
                                                       'datum->syntax
                                                       '#f
                                                       (gx#core-list
                                                        'quote
                                                        _body18002_))
                                                      (gx#core-list
                                                       'datum->syntax
                                                       (gx#core-list
                                                        'quote-syntax
                                                        _body18002_)
                                                       (gx#core-list
                                                        'quote
                                                        _body18002_)
                                                       '#f
                                                       '#f)))
                                                (if (##structure-direct-instance-of?
                                                     _id18008_
                                                     'gx#syntax-quote::t)
                                                    (gx#core-list
                                                     'quote-syntax
                                                     _body18002_)
                                                    (_BUG17979_ _e17986_))))
                                          (if (eq? 'pattern _$e18005_)
                                              (_local-pattern-e17980_
                                               _body18002_)
                                              (if (eq? 'ref _$e18005_)
                                                  (_getvar17981_
                                                   _body18002_
                                                   _vars17987_)
                                                  (if (eq? 'cons _$e18005_)
                                                      (gx#core-list
                                                       'cons
                                                       (_recur17984_
                                                        (car _body18002_)
                                                        _vars17987_)
                                                       (_recur17984_
                                                        (cdr _body18002_)
                                                        _vars17987_))
                                                      (if (eq? 'vector
                                                               _$e18005_)
                                                          (gx#core-list
                                                           'list->vector
                                                           (_recur17984_
                                                            _body18002_
                                                            _vars17987_))
                                                          (if (eq? 'box
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e18005_)
                      (gx#core-list
                       'box
                       (_recur17984_ _body18002_ _vars17987_))
                      (if (eq? 'splice _$e18005_)
                          (let* ((_body1801118022_ _body18002_)
                                 (_E1801318026_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _body1801118022_)))
                                 (_K1801418064_
                                  (lambda (_args18029_
                                           _iv18030_
                                           _hd18031_
                                           _depth18032_)
                                    (let* ((_targets18038_
                                            (map (lambda (_g1803318035_)
                                                   (_getarg17982_
                                                    _g1803318035_
                                                    _vars17987_))
                                                 _args18029_))
                                           (_fold-in18040_
                                            (gx#gentemps _args18029_))
                                           (_fold-out18042_ (gx#genident__0))
                                           (_lambda-args18044_
                                            (foldr1 cons
                                                    (cons _fold-out18042_ '())
                                                    _fold-in18040_))
                                           (_lambda-body18061_
                                            (if (fx> _depth18032_ '1)
                                                (let ((_r-args18052_
                                                       (map (lambda (_arg18046_)
                                                              (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cdr _arg18046_)))
                    _args18029_))
              (_r-vars18053_
               (foldr2 (lambda (_arg18048_ _var18049_ _r18050_)
                         (cons (cons (cdr _arg18048_) _var18049_) _r18050_))
                       _vars17987_
                       _args18029_
                       _fold-in18040_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur17984_
                                                   (cons 'splice
                                                         (cons (fx- _depth18032_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                       (cons _hd18031_
                             (cons (cons 'var _fold-out18042_)
                                   _r-args18052_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _r-vars18053_))
                                                (let ((_hd-vars18059_
                                                       (foldr2 (lambda (_arg18055_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _var18056_
                                _r18057_)
                         (cons (cons (cdr _arg18055_) _var18056_) _r18057_))
                       _vars17987_
                       _args18029_
                       _fold-in18040_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#core-list
                                                   'cons
                                                   (_recur17984_
                                                    _hd18031_
                                                    _hd-vars18059_)
                                                   _fold-out18042_)))))
                                      (gx#core-list
                                       'begin
                                       (if (fx> (length _targets18038_) '1)
                                           (gx#core-cons*
                                            'syntax-check-splice-targets
                                            _targets18038_)
                                           '#!void)
                                       (gx#core-cons*
                                        'foldr
                                        (gx#core-list
                                         'lambda%
                                         _lambda-args18044_
                                         _lambda-body18061_)
                                        (_recur17984_ _iv18030_ _vars17987_)
                                        _targets18038_))))))
                            (if (##pair? _body1801118022_)
                                (let ((_hd1801518067_ (##car _body1801118022_))
                                      (_tl1801618069_
                                       (##cdr _body1801118022_)))
                                  (let ((_depth18072_ _hd1801518067_))
                                    (if (##pair? _tl1801618069_)
                                        (let ((_hd1801718074_
                                               (##car _tl1801618069_))
                                              (_tl1801818076_
                                               (##cdr _tl1801618069_)))
                                          (let ((_hd18079_ _hd1801718074_))
                                            (if (##pair? _tl1801818076_)
                                                (let ((_hd1801918081_
                                                       (##car _tl1801818076_))
                                                      (_tl1802018083_
                                                       (##cdr _tl1801818076_)))
                                                  (let* ((_iv18086_
                                                          _hd1801918081_)
                                                         (_args18088_
                                                          _tl1802018083_))
                                                    (_K1801418064_
                                                     _args18088_
                                                     _iv18086_
                                                     _hd18079_
                                                     _depth18072_)))
                                                (_E1801318026_))))
                                        (_E1801318026_))))
                                (_E1801318026_)))
                          (if (eq? 'var _$e18005_)
                              _body18002_
                              (_BUG17979_ _e17986_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (if (##pair? _e1798817995_)
                            (let ((_hd1799218093_ (##car _e1798817995_))
                                  (_tl1799318095_ (##cdr _e1798817995_)))
                              (let* ((_tag18098_ _hd1799218093_)
                                     (_body18100_ _tl1799318095_))
                                (_K1799118090_ _body18100_ _tag18098_)))
                            (_E1799017999_)))))))
               (_parse17751_
                (lambda (_e17792_)
                  (letrec ((_make-cons17794_
                            (lambda (_hd17969_ _tl17970_)
                              (let ((_g18271_ _hd17969_) (_g18273_ _tl17970_))
                                (begin
                                  (let ((_g18272_
                                         (if (##values? _g18271_)
                                             (##vector-length _g18271_)
                                             1)))
                                    (if (not (##fx= _g18272_ 2))
                                        (error "Context expects 2 values"
                                               _g18272_)))
                                  (let ((_g18274_
                                         (if (##values? _g18273_)
                                             (##vector-length _g18273_)
                                             1)))
                                    (if (not (##fx= _g18274_ 2))
                                        (error "Context expects 2 values"
                                               _g18274_)))
                                  (let ((_hd-e17972_ (##vector-ref _g18271_ 0))
                                        (_hd-vars17973_
                                         (##vector-ref _g18271_ 1)))
                                    (let ((_tl-e17974_
                                           (##vector-ref _g18273_ 0))
                                          (_tl-vars17975_
                                           (##vector-ref _g18273_ 1)))
                                      (values (cons 'cons
                                                    (cons _hd-e17972_
                                                          _tl-e17974_))
                                              (append _hd-vars17973_
                                                      _tl-vars17975_))))))))
                           (_make-splice17795_
                            (lambda (_where17908_
                                     _depth17909_
                                     _hd17910_
                                     _tl17911_)
                              (let ((_g18275_ _hd17910_) (_g18277_ _tl17911_))
                                (begin
                                  (let ((_g18276_
                                         (if (##values? _g18275_)
                                             (##vector-length _g18275_)
                                             1)))
                                    (if (not (##fx= _g18276_ 2))
                                        (error "Context expects 2 values"
                                               _g18276_)))
                                  (let ((_g18278_
                                         (if (##values? _g18277_)
                                             (##vector-length _g18277_)
                                             1)))
                                    (if (not (##fx= _g18278_ 2))
                                        (error "Context expects 2 values"
                                               _g18278_)))
                                  (let ((_hd-e17913_ (##vector-ref _g18275_ 0))
                                        (_hd-vars17914_
                                         (##vector-ref _g18275_ 1)))
                                    (let ((_tl-e17915_
                                           (##vector-ref _g18277_ 0))
                                          (_tl-vars17916_
                                           (##vector-ref _g18277_ 1)))
                                      (let _lp17918_ ((_rest17920_
                                                       _hd-vars17914_)
                                                      (_targets17921_ '())
                                                      (_vars17922_
                                                       _tl-vars17916_))
                                        (let* ((_rest1792317933_ _rest17920_)
                                               (_else1792517941_
                                                (lambda ()
                                                  (if (null? _targets17921_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Misplaced ellipsis"
                                                       _stx17748_
                                                       _where17908_)
                                                      (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _depth17909_
                                  (cons _hd-e17913_
                                        (cons _tl-e17915_ _targets17921_))))
                      _vars17922_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_K1792717950_
                                                (lambda (_rest17944_
                                                         _hd-pat17945_
                                                         _hd-depth*17946_)
                                                  (let ((_hd-depth17948_
                                                         (fx- _hd-depth*17946_
                                                              _depth17909_)))
                                                    (if (fxpositive?
                                                         _hd-depth17948_)
                                                        (_lp17918_
                                                         _rest17944_
                                                         (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd-pat17945_)
                       _targets17921_)
                 (cons (cons _hd-depth17948_ _hd-pat17945_) _vars17922_))
                (if (fxzero? _hd-depth17948_)
                    (_lp17918_
                     _rest17944_
                     (cons (cons 'pattern _hd-pat17945_) _targets17921_)
                     _vars17922_)
                    (gx#raise-syntax-error
                     '#f
                     '"Too many ellipses"
                     _stx17748_
                     _where17908_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1792317933_)
                                              (let ((_hd1792817953_
                                                     (##car _rest1792317933_))
                                                    (_tl1792917955_
                                                     (##cdr _rest1792317933_)))
                                                (if (##pair? _hd1792817953_)
                                                    (let ((_hd1793017958_
                                                           (##car _hd1792817953_))
                                                          (_tl1793117960_
                                                           (##cdr _hd1792817953_)))
                                                      (let* ((_hd-depth*17963_
                                                              _hd1793017958_)
                                                             (_hd-pat17965_
                                                              _tl1793117960_)
                                                             (_rest17967_
                                                              _tl1792917955_))
                                                        (_K1792717950_
                                                         _rest17967_
                                                         _hd-pat17965_
                                                         _hd-depth*17963_)))
                                                    (_else1792517941_)))
                                              (_else1792517941_))))))))))
                           (_recur17796_
                            (lambda (_e17801_ _is-e?17802_)
                              (if (_is-e?17802_ _e17801_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Mislpaced ellipsis"
                                   _stx17748_)
                                  (if (gx#syntax-local-pattern? _e17801_)
                                      (let* ((_pat17804_
                                              (gx#syntax-local-e__0 _e17801_))
                                             (_depth17806_
                                              (##structure-ref
                                               _pat17804_
                                               '3
                                               gx#syntax-pattern::t
                                               '#f)))
                                        (if (fxpositive? _depth17806_)
                                            (values (cons 'ref _pat17804_)
                                                    (cons (cons _depth17806_
                                                                _pat17804_)
                                                          '()))
                                            (values (cons 'pattern _pat17804_)
                                                    '())))
                                      (if (gx#identifier? _e17801_)
                                          (values (cons 'term _e17801_) '())
                                          (if (gx#stx-pair? _e17801_)
                                              (let* ((_e1780817815_ _e17801_)
                                                     (_E1781017819_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _e1780817815_)))
                                                     (_E1780917898_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e1780817815_)
                                                            (let ((_e1781117823_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e1780817815_)))
                      (let ((_hd1781217826_ (##car _e1781117823_))
                            (_tl1781317828_ (##cdr _e1781117823_)))
                        (let* ((_hd17831_ _hd1781217826_)
                               (_rest17833_ _tl1781317828_))
                          (if '#t
                              (if (_is-e?17802_ _hd17831_)
                                  (let* ((_e1783417841_ _rest17833_)
                                         (_E1783617845_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _stx17748_
                                             _e17801_)))
                                         (_E1783517859_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1783417841_)
                                                (let ((_e1783717849_
                                                       (gx#syntax-e
                                                        _e1783417841_)))
                                                  (let ((_hd1783817852_
                                                         (##car _e1783717849_))
                                                        (_tl1783917854_
                                                         (##cdr _e1783717849_)))
                                                    (let ((_rest17857_
                                                           _hd1783817852_))
                                                      (if (gx#stx-null?
                                                           _tl1783917854_)
                                                          (if '#t
                                                              (_recur17796_
                                                               _rest17857_
                                                               false)
                                                              (_E1783617845_))
                                                          (_E1783617845_)))))
                                                (_E1783617845_)))))
                                    (_E1783517859_))
                                  (let _lp17863_ ((_rest17865_ _rest17833_)
                                                  (_depth17866_ '0))
                                    (let* ((_e1786717874_ _rest17865_)
                                           (_E1786917878_
                                            (lambda ()
                                              (if (fxpositive? _depth17866_)
                                                  (_make-splice17795_
                                                   _e17801_
                                                   _depth17866_
                                                   (_recur17796_
                                                    _hd17831_
                                                    _is-e?17802_)
                                                   (_recur17796_
                                                    _rest17865_
                                                    _is-e?17802_))
                                                  (_make-cons17794_
                                                   (_recur17796_
                                                    _hd17831_
                                                    _is-e?17802_)
                                                   (_recur17796_
                                                    _rest17865_
                                                    _is-e?17802_)))))
                                           (_E1786817894_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1786717874_)
                                                  (let ((_e1787017882_
                                                         (gx#syntax-e
                                                          _e1786717874_)))
                                                    (let ((_hd1787117885_
                                                           (##car _e1787017882_))
                                                          (_tl1787217887_
                                                           (##cdr _e1787017882_)))
                                                      (let* ((_rest-hd17890_
                                                              _hd1787117885_)
                                                             (_rest-tl17892_
                                                              _tl1787217887_))
                                                        (if '#t
                                                            (if (_is-e?17802_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rest-hd17890_)
                        (_lp17863_ _rest-tl17892_ (fx+ _depth17866_ '1))
                        (if (fxpositive? _depth17866_)
                            (_make-splice17795_
                             _e17801_
                             _depth17866_
                             (_recur17796_ _hd17831_ _is-e?17802_)
                             (_recur17796_ _rest17865_ _is-e?17802_))
                            (_make-cons17794_
                             (_recur17796_ _hd17831_ _is-e?17802_)
                             (_recur17796_ _rest17865_ _is-e?17802_))))
                    (_E1786917878_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1786917878_)))))
                                      (_E1786817894_))))
                              (_E1781017819_)))))
                    (_E1781017819_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1780917898_))
                                              (if (gx#stx-vector? _e17801_)
                                                  (let ((_g18279_
                                                         (_recur17796_
                                                          (vector->list
                                                           (gx#stx-unwrap__0
                                                            _e17801_))
                                                          _is-e?17802_)))
                                                    (begin
                                                      (let ((_g18280_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g18279_)
                         (##vector-length _g18279_)
                         1)))
                (if (not (##fx= _g18280_ 2))
                    (error "Context expects 2 values" _g18280_)))
              (let ((_e17902_ (##vector-ref _g18279_ 0))
                    (_vars17903_ (##vector-ref _g18279_ 1)))
                (values (cons 'vector _e17902_) _vars17903_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e17801_)
                                                      (let ((_g18281_
                                                             (_recur17796_
                                                              (unbox (gx#stx-unwrap__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e17801_))
                      _is-e?17802_)))
                (begin
                  (let ((_g18282_
                         (if (##values? _g18281_)
                             (##vector-length _g18281_)
                             1)))
                    (if (not (##fx= _g18282_ 2))
                        (error "Context expects 2 values" _g18282_)))
                  (let ((_e17905_ (##vector-ref _g18281_ 0))
                        (_vars17906_ (##vector-ref _g18281_ 1)))
                    (values (cons 'box _e17905_) _vars17906_))))
              (values (cons 'datum _e17801_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    (let ((_g18283_ (_recur17796_ _e17792_ gx#ellipsis?)))
                      (begin
                        (let ((_g18284_
                               (if (##values? _g18283_)
                                   (##vector-length _g18283_)
                                   1)))
                          (if (not (##fx= _g18284_ 2))
                              (error "Context expects 2 values" _g18284_)))
                        (let ((_tree17798_ (##vector-ref _g18283_ 0))
                              (_vars17799_ (##vector-ref _g18283_ 1)))
                          (if (null? _vars17799_)
                              _tree17798_
                              (gx#raise-syntax-error
                               '#f
                               '"Missing ellipsis"
                               _stx17748_
                               _vars17799_)))))))))
        (let* ((_e1775217762_ _stx17748_)
               (_E1775417766_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _stx17748_)))
               (_E1775317788_
                (lambda ()
                  (if (gx#stx-pair? _e1775217762_)
                      (let ((_e1775517770_ (gx#syntax-e _e1775217762_)))
                        (let ((_hd1775617773_ (##car _e1775517770_))
                              (_tl1775717775_ (##cdr _e1775517770_)))
                          (if (gx#stx-pair? _tl1775717775_)
                              (let ((_e1775817778_
                                     (gx#syntax-e _tl1775717775_)))
                                (let ((_hd1775917781_ (##car _e1775817778_))
                                      (_tl1776017783_ (##cdr _e1775817778_)))
                                  (let ((_form17786_ _hd1775917781_))
                                    (if (gx#stx-null? _tl1776017783_)
                                        (if '#t
                                            (gx#stx-wrap-source
                                             (_generate17750_
                                              (_parse17751_ _form17786_))
                                             (gx#stx-source _stx17748_))
                                            (_E1775417766_))
                                        (_E1775417766_)))))
                              (_E1775417766_))))
                      (_E1775417766_)))))
          (_E1775317788_)))))
  (begin
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx17016_ _identifier=?17017_ _unwrap-e17018_ _wrap-e17019_)
        (letrec ((_generate-bindings17021_
                  (lambda (_target17612_
                           _ids17613_
                           _clauses17614_
                           _clause-ids17615_
                           _E17616_)
                    (letrec ((_generate117618_
                              (lambda (_clause17715_ _clause-id17716_ _E17717_)
                                (cons (cons _clause-id17716_ '())
                                      (cons (gx#core-list
                                             'lambda%
                                             (cons _target17612_ '())
                                             (_generate-clause17023_
                                              _target17612_
                                              _ids17613_
                                              _clause17715_
                                              _E17717_))
                                            '())))))
                      (let _lp17620_ ((_rest17622_ _clauses17614_)
                                      (_rest-ids17623_ _clause-ids17615_)
                                      (_bindings17624_ '()))
                        (let* ((_rest1762517633_ _rest17622_)
                               (_else1762717641_ (lambda () _bindings17624_))
                               (_K1762917703_
                                (lambda (_rest17644_ _clause17645_)
                                  (let* ((_rest-ids1764617653_ _rest-ids17623_)
                                         (_E1764817657_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids1764617653_)))
                                         (_K1764917691_
                                          (lambda (_rest-ids17660_
                                                   _clause-id17661_)
                                            (let* ((_rest-ids1766217670_
                                                    _rest-ids17660_)
                                                   (_else1766417678_
                                                    (lambda ()
                                                      (cons (_generate117618_
                                                             _clause17645_
                                                             _clause-id17661_
                                                             _E17616_)
                                                            _bindings17624_)))
                                                   (_K1766617683_
                                                    (lambda (_next-clause-id17681_)
                                                      (_lp17620_
                                                       _rest17644_
                                                       _rest-ids17660_
                                                       (cons (_generate117618_
                                                              _clause17645_
                                                              _clause-id17661_
                                                              _next-clause-id17681_)
                                                             _bindings17624_)))))
                                              (if (##pair? _rest-ids1766217670_)
                                                  (let* ((_hd1766717686_
                                                          (##car _rest-ids1766217670_))
                                                         (_next-clause-id17689_
                                                          _hd1766717686_))
                                                    (_K1766617683_
                                                     _next-clause-id17689_))
                                                  (_else1766417678_))))))
                                    (if (##pair? _rest-ids1764617653_)
                                        (let ((_hd1765017694_
                                               (##car _rest-ids1764617653_))
                                              (_tl1765117696_
                                               (##cdr _rest-ids1764617653_)))
                                          (let* ((_clause-id17699_
                                                  _hd1765017694_)
                                                 (_rest-ids17701_
                                                  _tl1765117696_))
                                            (_K1764917691_
                                             _rest-ids17701_
                                             _clause-id17699_)))
                                        (_E1764817657_))))))
                          (if (##pair? _rest1762517633_)
                              (let ((_hd1763017706_ (##car _rest1762517633_))
                                    (_tl1763117708_ (##cdr _rest1762517633_)))
                                (let* ((_clause17711_ _hd1763017706_)
                                       (_rest17713_ _tl1763117708_))
                                  (_K1762917703_ _rest17713_ _clause17711_)))
                              (_else1762717641_)))))))
                 (_generate-body17022_
                  (lambda (_bindings17572_ _body17573_)
                    (let _recur17575_ ((_rest17577_ _bindings17572_))
                      (let* ((_rest1757817586_ _rest17577_)
                             (_else1758017594_ (lambda () _body17573_))
                             (_K1758217600_
                              (lambda (_rest17597_ _hd17598_)
                                (gx#core-list
                                 'let-values
                                 (cons _hd17598_ '())
                                 (_recur17575_ _rest17597_)))))
                        (if (##pair? _rest1757817586_)
                            (let ((_hd1758317603_ (##car _rest1757817586_))
                                  (_tl1758417605_ (##cdr _rest1757817586_)))
                              (let* ((_hd17608_ _hd1758317603_)
                                     (_rest17610_ _tl1758417605_))
                                (_K1758217600_ _rest17610_ _hd17608_)))
                            (_else1758017594_))))))
                 (_generate-clause17023_
                  (lambda (_target17435_ _ids17436_ _clause17437_ _E17438_)
                    (letrec ((_generate117440_
                              (lambda (_hd17527_ _fender17528_ _body17529_)
                                (let ((_g18285_
                                       (_parse-clause17025_
                                        _hd17527_
                                        _ids17436_)))
                                  (begin
                                    (let ((_g18286_
                                           (if (##values? _g18285_)
                                               (##vector-length _g18285_)
                                               1)))
                                      (if (not (##fx= _g18286_ 2))
                                          (error "Context expects 2 values"
                                                 _g18286_)))
                                    (let ((_e17531_ (##vector-ref _g18285_ 0))
                                          (_mvars17532_
                                           (##vector-ref _g18285_ 1)))
                                      (let* ((_pvars17534_
                                              (map gx#syntax-local-rewrap
                                                   (gx#gentemps _mvars17532_)))
                                             (_E17536_
                                              (cons _E17438_
                                                    (cons _target17435_ '())))
                                             (_K17569_
                                              (gx#core-list
                                               'lambda%
                                               _pvars17534_
                                               (gx#core-list
                                                'let-syntax
                                                (map (lambda (_mvar17538_
                                                              _pvar17539_)
                                                       (let* ((_mvar1754017547_
                                                               _mvar17538_)
                                                              (_E1754217551_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (error '"No clause matching" _mvar1754017547_)))
                      (_K1754317557_
                       (lambda (_depth17554_ _id17555_)
                         (cons _id17555_
                               (cons (gx#core-list
                                      'make-syntax-pattern
                                      (gx#core-list 'quote _id17555_)
                                      (gx#core-list 'quote _pvar17539_)
                                      _depth17554_)
                                     '())))))
                 (if (##pair? _mvar1754017547_)
                     (let ((_hd1754417560_ (##car _mvar1754017547_))
                           (_tl1754517562_ (##cdr _mvar1754017547_)))
                       (let* ((_id17565_ _hd1754417560_)
                              (_depth17567_ _tl1754517562_))
                         (_K1754317557_ _depth17567_ _id17565_)))
                     (_E1754217551_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _mvars17532_
                                                     _pvars17534_)
                                                (if (eq? _fender17528_ '#t)
                                                    _body17529_
                                                    (gx#core-list
                                                     'if
                                                     _fender17528_
                                                     _body17529_
                                                     _E17536_))))))
                                        (_generate-match17024_
                                         _hd17527_
                                         _target17435_
                                         _e17531_
                                         _mvars17532_
                                         _K17569_
                                         _E17536_))))))))
                      (let* ((_e1744117461_ _clause17437_)
                             (_E1745017465_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _e1744117461_)))
                             (_E1744317499_
                              (lambda ()
                                (if (gx#stx-pair? _e1744117461_)
                                    (let ((_e1745117469_
                                           (gx#syntax-e _e1744117461_)))
                                      (let ((_hd1745217472_
                                             (##car _e1745117469_))
                                            (_tl1745317474_
                                             (##cdr _e1745117469_)))
                                        (let ((_hd17477_ _hd1745217472_))
                                          (if (gx#stx-pair? _tl1745317474_)
                                              (let ((_e1745417479_
                                                     (gx#syntax-e
                                                      _tl1745317474_)))
                                                (let ((_hd1745517482_
                                                       (##car _e1745417479_))
                                                      (_tl1745617484_
                                                       (##cdr _e1745417479_)))
                                                  (let ((_fender17487_
                                                         _hd1745517482_))
                                                    (if (gx#stx-pair?
                                                         _tl1745617484_)
                                                        (let ((_e1745717489_
                                                               (gx#syntax-e
                                                                _tl1745617484_)))
                                                          (let ((_hd1745817492_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1745717489_))
                        (_tl1745917494_ (##cdr _e1745717489_)))
                    (let ((_body17497_ _hd1745817492_))
                      (if (gx#stx-null? _tl1745917494_)
                          (if '#t
                              (_generate117440_
                               _hd17477_
                               _fender17487_
                               _body17497_)
                              (_E1745017465_))
                          (_E1745017465_)))))
                (_E1745017465_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1745017465_)))))
                                    (_E1745017465_))))
                             (_E1744217523_
                              (lambda ()
                                (if (gx#stx-pair? _e1744117461_)
                                    (let ((_e1744417503_
                                           (gx#syntax-e _e1744117461_)))
                                      (let ((_hd1744517506_
                                             (##car _e1744417503_))
                                            (_tl1744617508_
                                             (##cdr _e1744417503_)))
                                        (let ((_hd17511_ _hd1744517506_))
                                          (if (gx#stx-pair? _tl1744617508_)
                                              (let ((_e1744717513_
                                                     (gx#syntax-e
                                                      _tl1744617508_)))
                                                (let ((_hd1744817516_
                                                       (##car _e1744717513_))
                                                      (_tl1744917518_
                                                       (##cdr _e1744717513_)))
                                                  (let ((_body17521_
                                                         _hd1744817516_))
                                                    (if (gx#stx-null?
                                                         _tl1744917518_)
                                                        (if '#t
                                                            (_generate117440_
                                                             _hd17511_
                                                             '#t
                                                             _body17521_)
                                                            (_E1744317499_))
                                                        (_E1744317499_)))))
                                              (_E1744317499_)))))
                                    (_E1744317499_)))))
                        (_E1744217523_)))))
                 (_generate-match17024_
                  (lambda (_where17188_
                           _target17189_
                           _hd17190_
                           _mvars17191_
                           _K17192_
                           _E17193_)
                    (letrec ((_BUG17195_
                              (lambda (_q17433_)
                                (error '"BUG: syntax-case; generate"
                                       _stx17016_
                                       _hd17190_
                                       _q17433_)))
                             (_recur17196_
                              (lambda (_e17287_
                                       _vars17288_
                                       _target17289_
                                       _E17290_
                                       _k17291_)
                                (let* ((_e1729217299_ _e17287_)
                                       (_E1729417303_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e1729217299_)))
                                       (_K1729517421_
                                        (lambda (_body17306_ _tag17307_)
                                          (let ((_$e17309_ _tag17307_))
                                            (if (eq? 'any _$e17309_)
                                                (_k17291_ _vars17288_)
                                                (if (eq? 'id _$e17309_)
                                                    (gx#core-list
                                                     'if
                                                     (gx#core-list
                                                      'identifier?
                                                      _target17289_)
                                                     (gx#core-list
                                                      'if
                                                      (gx#core-list
                                                       _identifier=?17017_
                                                       (gx#core-list
                                                        _wrap-e17019_
                                                        _body17306_)
                                                       _target17289_)
                                                      (_k17291_ _vars17288_)
                                                      _E17290_)
                                                     _E17290_)
                                                    (if (eq? 'var _$e17309_)
                                                        (_k17291_
                                                         (cons (cons _body17306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _target17289_)
                       _vars17288_))
                (if (eq? 'cons _$e17309_)
                    (let ((_$e17312_ (gx#genident__1 'e))
                          (_$hd17313_ (gx#genident__1 'hd))
                          (_$tl17314_ (gx#genident__1 'tl)))
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _target17289_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$e17312_ '())
                                    (cons (gx#core-list
                                           _unwrap-e17018_
                                           _target17289_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$hd17313_ '())
                                     (cons (gx#core-list '##car _$e17312_)
                                           '()))
                               (cons (cons (cons _$tl17314_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$e17312_)
                                                 '()))
                                     '()))
                         (let* ((_body1731517322_ _body17306_)
                                (_E1731717326_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _body1731517322_)))
                                (_K1731817334_
                                 (lambda (_tl17329_ _hd17330_)
                                   (_recur17196_
                                    _hd17330_
                                    _vars17288_
                                    _$hd17313_
                                    _E17290_
                                    (lambda (_vars17332_)
                                      (_recur17196_
                                       _tl17329_
                                       _vars17332_
                                       _$tl17314_
                                       _E17290_
                                       _k17291_))))))
                           (if (##pair? _body1731517322_)
                               (let ((_hd1731917337_ (##car _body1731517322_))
                                     (_tl1732017339_ (##cdr _body1731517322_)))
                                 (let* ((_hd17342_ _hd1731917337_)
                                        (_tl17344_ _tl1732017339_))
                                   (_K1731817334_ _tl17344_ _hd17342_)))
                               (_E1731717326_)))))
                       _E17290_))
                    (if (eq? 'splice _$e17309_)
                        (let* ((_body1734517352_ _body17306_)
                               (_E1734717356_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body1734517352_)))
                               (_K1734817405_
                                (lambda (_tl17359_ _hd17360_)
                                  (let* ((_rlen17362_
                                          (_splice-rlen17197_ _tl17359_))
                                         (_$target17364_
                                          (gx#genident__1 'target))
                                         (_$hd17366_ (gx#genident__1 'hd))
                                         (_$tl17368_ (gx#genident__1 'tl))
                                         (_$lp17370_ (gx#genident__1 'loop))
                                         (_$lp-e17372_ (gx#genident__1 'e))
                                         (_$lp-hd17374_
                                          (gx#genident__1 'lp-hd))
                                         (_$lp-tl17376_
                                          (gx#genident__1 'lp-tl))
                                         (_svars17378_
                                          (_splice-vars17198_ _hd17360_))
                                         (_lvars17380_
                                          (gx#gentemps _svars17378_))
                                         (_tlvars17382_
                                          (gx#gentemps _svars17378_))
                                         (_linit17386_
                                          (map (lambda (_var17384_)
                                                 (gx#core-list 'quote '()))
                                               _lvars17380_)))
                                    (letrec ((_make-loop17389_
                                              (lambda (_vars17391_)
                                                (gx#core-list
                                                 'letrec-values
                                                 (cons (cons (cons _$lp17370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _$hd17366_ _lvars17380_)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-pair? _$hd17366_)
                             (gx#core-list
                              'let-values
                              (cons (cons (cons _$lp-e17372_ '())
                                          (cons (gx#core-list
                                                 _unwrap-e17018_
                                                 _$hd17366_)
                                                '()))
                                    '())
                              (gx#core-list
                               'let-values
                               (cons (cons (cons _$lp-hd17374_ '())
                                           (cons (gx#core-list
                                                  '##car
                                                  _$lp-e17372_)
                                                 '()))
                                     (cons (cons (cons _$lp-tl17376_ '())
                                                 (cons (gx#core-list
                                                        '##cdr
                                                        _$lp-e17372_)
                                                       '()))
                                           '()))
                               (_recur17196_
                                _hd17360_
                                '()
                                _$lp-hd17374_
                                _E17290_
                                (lambda (_hdvars17393_)
                                  (cons _$lp17370_
                                        (cons _$lp-tl17376_
                                              (map (lambda (_svar17395_
                                                            _lvar17396_)
                                                     (gx#core-list
                                                      'cons
                                                      (assgetq _svar17395_
                                                               _hdvars17393_
                                                               _BUG17195_)
                                                      _lvar17396_))
                                                   _svars17378_
                                                   _lvars17380_)))))))
                             (gx#core-list
                              'let-values
                              (map (lambda (_lvar17398_ _tlvar17399_)
                                     (cons (cons _tlvar17399_ '())
                                           (cons (gx#core-list
                                                  'reverse
                                                  _lvar17398_)
                                                 '())))
                                   _lvars17380_
                                   _tlvars17382_)
                              (_k17291_
                               (foldl2 (lambda (_svar17401_
                                                _tlvar17402_
                                                _r17403_)
                                         (cons (cons _svar17401_ _tlvar17402_)
                                               _r17403_))
                                       _vars17391_
                                       _svars17378_
                                       _tlvars17382_)))))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _$lp17370_
                                                       (cons _$target17364_
                                                             _linit17386_))))))
                                      (gx#core-list
                                       'if
                                       (gx#core-list
                                        'stx-pair/null?
                                        _target17289_)
                                       (gx#core-list
                                        'if
                                        (gx#core-list
                                         'fx>=
                                         (gx#core-list
                                          'stx-length
                                          _target17289_)
                                         _rlen17362_)
                                        (gx#core-list
                                         'let-values
                                         (cons (cons (cons _$target17364_
                                                           (cons _$tl17368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (gx#core-list
                                                            'syntax-split-splice
                                                            _target17289_
                                                            _rlen17362_)
                                                           '()))
                                               '())
                                         (_recur17196_
                                          _tl17359_
                                          _vars17288_
                                          _$tl17368_
                                          _E17290_
                                          _make-loop17389_))
                                        _E17290_)
                                       _E17290_))))))
                          (if (##pair? _body1734517352_)
                              (let ((_hd1734917408_ (##car _body1734517352_))
                                    (_tl1735017410_ (##cdr _body1734517352_)))
                                (let* ((_hd17413_ _hd1734917408_)
                                       (_tl17415_ _tl1735017410_))
                                  (_K1734817405_ _tl17415_ _hd17413_)))
                              (_E1734717356_)))
                        (if (eq? 'null _$e17309_)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-null? _target17289_)
                             (_k17291_ _vars17288_)
                             _E17290_)
                            (if (eq? 'vector _$e17309_)
                                (let ((_$e17417_ (gx#genident__1 'e)))
                                  (gx#core-list
                                   'if
                                   (gx#core-list 'stx-vector? _target17289_)
                                   (gx#core-list
                                    'let-values
                                    (cons (cons (cons _$e17417_ '())
                                                (cons (gx#core-list
                                                       'vector->list
                                                       (gx#core-list
                                                        _unwrap-e17018_
                                                        _target17289_))
                                                      '()))
                                          '())
                                    (_recur17196_
                                     _body17306_
                                     _vars17288_
                                     _$e17417_
                                     _E17290_
                                     _k17291_))
                                   _E17290_))
                                (if (eq? 'box _$e17309_)
                                    (let ((_$e17419_ (gx#genident__1 'e)))
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-box? _target17289_)
                                       (gx#core-list
                                        'let-values
                                        (cons (cons (cons _$e17419_ '())
                                                    (cons (gx#core-list
                                                           'unbox
                                                           (gx#core-list
                                                            _unwrap-e17018_
                                                            _target17289_))
                                                          '()))
                                              '())
                                        (_recur17196_
                                         _body17306_
                                         _vars17288_
                                         _$e17419_
                                         _E17290_
                                         _k17291_))
                                       _E17290_))
                                    (if (eq? 'datum _$e17309_)
                                        (gx#core-list
                                         'if
                                         (gx#core-list
                                          'stx-datum?
                                          _target17289_)
                                         (gx#core-list
                                          'if
                                          (gx#core-list
                                           'equal?
                                           (gx#core-list 'stx-e _target17289_)
                                           _body17306_)
                                          (_k17291_ _vars17288_)
                                          _E17290_)
                                         _E17290_)
                                        (_BUG17195_ _e17287_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (##pair? _e1729217299_)
                                      (let ((_hd1729617424_
                                             (##car _e1729217299_))
                                            (_tl1729717426_
                                             (##cdr _e1729217299_)))
                                        (let* ((_tag17429_ _hd1729617424_)
                                               (_body17431_ _tl1729717426_))
                                          (_K1729517421_
                                           _body17431_
                                           _tag17429_)))
                                      (_E1729417303_)))))
                             (_splice-rlen17197_
                              (lambda (_e17249_)
                                (let _lp17251_ ((_e17253_ _e17249_)
                                                (_n17254_ '0))
                                  (let* ((_e1725517262_ _e17253_)
                                         (_E1725717266_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1725517262_)))
                                         (_K1725817275_
                                          (lambda (_body17269_ _tag17270_)
                                            (let ((_$e17272_ _tag17270_))
                                              (if (eq? 'splice _$e17272_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Ambiguous pattern"
                                                   _stx17016_
                                                   _where17188_)
                                                  (if (eq? 'cons _$e17272_)
                                                      (_lp17251_
                                                       (cdr _body17269_)
                                                       (fx+ _n17254_ '1))
                                                      _n17254_))))))
                                    (if (##pair? _e1725517262_)
                                        (let ((_hd1725917278_
                                               (##car _e1725517262_))
                                              (_tl1726017280_
                                               (##cdr _e1725517262_)))
                                          (let* ((_tag17283_ _hd1725917278_)
                                                 (_body17285_ _tl1726017280_))
                                            (_K1725817275_
                                             _body17285_
                                             _tag17283_)))
                                        (_E1725717266_))))))
                             (_splice-vars17198_
                              (lambda (_e17205_)
                                (let _recur17207_ ((_e17209_ _e17205_)
                                                   (_vars17210_ '()))
                                  (let* ((_e1721117218_ _e17209_)
                                         (_E1721317222_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1721117218_)))
                                         (_K1721417237_
                                          (lambda (_body17225_ _tag17226_)
                                            (let ((_$e17228_ _tag17226_))
                                              (if (eq? 'var _$e17228_)
                                                  (cons _body17225_
                                                        _vars17210_)
                                                  (if (let ((_$e17231_
                                                             (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _$e17228_)))
                (if _$e17231_ _$e17231_ (eq? 'splice _$e17228_)))
              (_recur17207_
               (cdr _body17225_)
               (_recur17207_ (car _body17225_) _vars17210_))
              (if (let ((_$e17234_ (eq? 'vector _$e17228_)))
                    (if _$e17234_ _$e17234_ (eq? 'box _$e17228_)))
                  (_recur17207_ _body17225_ _vars17210_)
                  _vars17210_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (##pair? _e1721117218_)
                                        (let ((_hd1721517240_
                                               (##car _e1721117218_))
                                              (_tl1721617242_
                                               (##cdr _e1721117218_)))
                                          (let* ((_tag17245_ _hd1721517240_)
                                                 (_body17247_ _tl1721617242_))
                                            (_K1721417237_
                                             _body17247_
                                             _tag17245_)))
                                        (_E1721317222_))))))
                             (_make-body17199_
                              (lambda (_vars17201_)
                                (cons _K17192_
                                      (map (lambda (_mvar17203_)
                                             (assgetq (car _mvar17203_)
                                                      _vars17201_
                                                      _BUG17195_))
                                           _mvars17191_)))))
                      (_recur17196_
                       _hd17190_
                       '()
                       _target17189_
                       _E17193_
                       _make-body17199_))))
                 (_parse-clause17025_
                  (lambda (_hd17094_ _ids17095_)
                    (let _recur17097_ ((_e17099_ _hd17094_)
                                       (_vars17100_ '())
                                       (_depth17101_ '0))
                      (if (gx#identifier? _e17099_)
                          (if (gx#underscore? _e17099_)
                              (values '(any) _vars17100_)
                              (if (gx#ellipsis? _e17099_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Misplaced ellipsis"
                                   _stx17016_
                                   _hd17094_)
                                  (if (find (lambda (_id17103_)
                                              (gx#bound-identifier=?
                                               _e17099_
                                               _id17103_))
                                            _ids17095_)
                                      (values (cons 'id _e17099_) _vars17100_)
                                      (if (find (lambda (_var17105_)
                                                  (gx#bound-identifier=?
                                                   _e17099_
                                                   (car _var17105_)))
                                                _vars17100_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Duplicate pattern variable"
                                           _stx17016_
                                           _e17099_)
                                          (values (cons 'var _e17099_)
                                                  (cons (cons _e17099_
                                                              _depth17101_)
                                                        _vars17100_))))))
                          (if (gx#stx-pair? _e17099_)
                              (let* ((_e1710617113_ _e17099_)
                                     (_E1710817117_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _e1710617113_)))
                                     (_E1710717178_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1710617113_)
                                            (let ((_e1710917121_
                                                   (gx#syntax-e
                                                    _e1710617113_)))
                                              (let ((_hd1711017124_
                                                     (##car _e1710917121_))
                                                    (_tl1711117126_
                                                     (##cdr _e1710917121_)))
                                                (let* ((_hd17129_
                                                        _hd1711017124_)
                                                       (_rest17131_
                                                        _tl1711117126_))
                                                  (if '#t
                                                      (let* ((_make-pair17146_
                                                              (lambda (_tag17133_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd17134_
                               _tl17135_)
                        (let* ((_hd-depth17137_
                                (if (eq? _tag17133_ 'splice)
                                    (fx+ _depth17101_ '1)
                                    _depth17101_))
                               (_g18287_
                                (_recur17097_
                                 _hd17134_
                                 _vars17100_
                                 _hd-depth17137_)))
                          (begin
                            (let ((_g18288_
                                   (if (##values? _g18287_)
                                       (##vector-length _g18287_)
                                       1)))
                              (if (not (##fx= _g18288_ 2))
                                  (error "Context expects 2 values" _g18288_)))
                            (let ((_hd17139_ (##vector-ref _g18287_ 0))
                                  (_vars17140_ (##vector-ref _g18287_ 1)))
                              (let ((_g18289_
                                     (_recur17097_
                                      _tl17135_
                                      _vars17140_
                                      _depth17101_)))
                                (begin
                                  (let ((_g18290_
                                         (if (##values? _g18289_)
                                             (##vector-length _g18289_)
                                             1)))
                                    (if (not (##fx= _g18290_ 2))
                                        (error "Context expects 2 values"
                                               _g18290_)))
                                  (let ((_tl17142_ (##vector-ref _g18289_ 0))
                                        (_vars17143_
                                         (##vector-ref _g18289_ 1)))
                                    (let ()
                                      (values (cons _tag17133_
                                                    (cons _hd17139_ _tl17142_))
                                              _vars17143_))))))))))
                     (_e1714717154_ _rest17131_)
                     (_E1714917158_
                      (lambda ()
                        (_make-pair17146_ 'cons _hd17129_ _rest17131_)))
                     (_E1714817174_
                      (lambda ()
                        (if (gx#stx-pair? _e1714717154_)
                            (let ((_e1715017162_ (gx#syntax-e _e1714717154_)))
                              (let ((_hd1715117165_ (##car _e1715017162_))
                                    (_tl1715217167_ (##cdr _e1715017162_)))
                                (let* ((_rest-hd17170_ _hd1715117165_)
                                       (_rest-tl17172_ _tl1715217167_))
                                  (if '#t
                                      (if (gx#ellipsis? _rest-hd17170_)
                                          (_make-pair17146_
                                           'splice
                                           _hd17129_
                                           _rest-tl17172_)
                                          (_make-pair17146_
                                           'cons
                                           _hd17129_
                                           _rest17131_))
                                      (_E1714917158_)))))
                            (_E1714917158_)))))
                (_E1714817174_))
              (_E1710817117_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1710817117_)))))
                                (_E1710717178_))
                              (if (gx#stx-null? _e17099_)
                                  (values '(null) _vars17100_)
                                  (if (gx#stx-vector? _e17099_)
                                      (let ((_g18291_
                                             (_recur17097_
                                              (vector->list
                                               (gx#syntax-e _e17099_))
                                              _vars17100_
                                              _depth17101_)))
                                        (begin
                                          (let ((_g18292_
                                                 (if (##values? _g18291_)
                                                     (##vector-length _g18291_)
                                                     1)))
                                            (if (not (##fx= _g18292_ 2))
                                                (error "Context expects 2 values"
                                                       _g18292_)))
                                          (let ((_e17182_
                                                 (##vector-ref _g18291_ 0))
                                                (_vars17183_
                                                 (##vector-ref _g18291_ 1)))
                                            (values (cons 'vector _e17182_)
                                                    _vars17183_))))
                                      (if (gx#stx-box? _e17099_)
                                          (let ((_g18293_
                                                 (_recur17097_
                                                  (unbox (gx#syntax-e
                                                          _e17099_))
                                                  _vars17100_
                                                  _depth17101_)))
                                            (begin
                                              (let ((_g18294_
                                                     (if (##values? _g18293_)
                                                         (##vector-length
                                                          _g18293_)
                                                         1)))
                                                (if (not (##fx= _g18294_ 2))
                                                    (error "Context expects 2 values"
                                                           _g18294_)))
                                              (let ((_e17185_
                                                     (##vector-ref _g18293_ 0))
                                                    (_vars17186_
                                                     (##vector-ref
                                                      _g18293_
                                                      1)))
                                                (values (cons 'box _e17185_)
                                                        _vars17186_))))
                                          (if (gx#stx-datum? _e17099_)
                                              (values (cons 'datum
                                                            (gx#stx-e
                                                             _e17099_))
                                                      _vars17100_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad pattern"
                                               _stx17016_
                                               _e17099_)))))))))))
          (let* ((_e1702617039_ _stx17016_)
                 (_E1702817043_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1702617039_)))
                 (_E1702717090_
                  (lambda ()
                    (if (gx#stx-pair? _e1702617039_)
                        (let ((_e1702917047_ (gx#syntax-e _e1702617039_)))
                          (let ((_hd1703017050_ (##car _e1702917047_))
                                (_tl1703117052_ (##cdr _e1702917047_)))
                            (if (gx#stx-pair? _tl1703117052_)
                                (let ((_e1703217055_
                                       (gx#syntax-e _tl1703117052_)))
                                  (let ((_hd1703317058_ (##car _e1703217055_))
                                        (_tl1703417060_ (##cdr _e1703217055_)))
                                    (let ((_expr17063_ _hd1703317058_))
                                      (if (gx#stx-pair? _tl1703417060_)
                                          (let ((_e1703517065_
                                                 (gx#syntax-e _tl1703417060_)))
                                            (let ((_hd1703617068_
                                                   (##car _e1703517065_))
                                                  (_tl1703717070_
                                                   (##cdr _e1703517065_)))
                                              (let* ((_ids17073_
                                                      _hd1703617068_)
                                                     (_clauses17075_
                                                      _tl1703717070_))
                                                (if '#t
                                                    (if (not (gx#identifier-list?
                                                              _ids17073_))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad template identifier list"
                                                         _stx17016_
                                                         _ids17073_)
                                                        (if (not (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _clauses17075_))
                    (gx#raise-syntax-error '#f '"Bad syntax" _stx17016_)
                    (let* ((_ids17077_ (gx#syntax->list _ids17073_))
                           (_clauses17079_ (gx#syntax->list _clauses17075_))
                           (_clause-ids17081_ (gx#gentemps _clauses17079_))
                           (_E17083_ (gx#genident__0))
                           (_target17085_ (gx#genident__0))
                           (_first17087_
                            (if (null? _clauses17079_)
                                _E17083_
                                (car _clause-ids17081_))))
                      (gx#stx-wrap-source
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _E17083_ '())
                                    (cons (gx#core-list
                                           'lambda%
                                           (cons _target17085_ '())
                                           (gx#core-list
                                            'raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _target17085_))
                                          '()))
                              '())
                        (_generate-body17022_
                         (_generate-bindings17021_
                          _target17085_
                          _ids17077_
                          _clauses17079_
                          _clause-ids17081_
                          _E17083_)
                         (cons _first17087_ (cons _expr17063_ '()))))
                       (gx#stx-source _stx17016_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1702817043_)))))
                                          (_E1702817043_)))))
                                (_E1702817043_))))
                        (_E1702817043_)))))
            (_E1702717090_)))))
    (begin
      (define gx#macro-expand-syntax-case__0
        (lambda (_stx17722_)
          (let* ((_identifier=?17724_ 'free-identifier=?)
                 (_unwrap-e17726_ 'syntax-e)
                 (_wrap-e17728_ 'quote-syntax))
            (gx#macro-expand-syntax-case__%
             _stx17722_
             _identifier=?17724_
             _unwrap-e17726_
             _wrap-e17728_))))
      (define gx#macro-expand-syntax-case__1
        (lambda (_stx17730_ _identifier=?17731_)
          (let* ((_unwrap-e17733_ 'syntax-e) (_wrap-e17735_ 'quote-syntax))
            (gx#macro-expand-syntax-case__%
             _stx17730_
             _identifier=?17731_
             _unwrap-e17733_
             _wrap-e17735_))))
      (define gx#macro-expand-syntax-case__2
        (lambda (_stx17737_ _identifier=?17738_ _unwrap-e17739_)
          (let ((_wrap-e17741_ 'quote-syntax))
            (gx#macro-expand-syntax-case__%
             _stx17737_
             _identifier=?17738_
             _unwrap-e17739_
             _wrap-e17741_))))
      (define gx#macro-expand-syntax-case
        (lambda _g18296_
          (let ((_g18295_ (length _g18296_)))
            (cond ((##fx= _g18295_ 1)
                   (apply gx#macro-expand-syntax-case__0 _g18296_))
                  ((##fx= _g18295_ 2)
                   (apply gx#macro-expand-syntax-case__1 _g18296_))
                  ((##fx= _g18295_ 3)
                   (apply gx#macro-expand-syntax-case__2 _g18296_))
                  ((##fx= _g18295_ 4)
                   (apply gx#macro-expand-syntax-case__% _g18296_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-syntax-case
                    _g18296_))))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx17013_)
      (if (gx#identifier? _stx17013_)
          (##structure-instance-of?
           (gx#syntax-local-e__% _stx17013_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd16971_ . _rest16972_)
      (let ((_len16974_ (length _hd16971_)))
        (let _lp16976_ ((_rest16978_ _rest16972_))
          (let* ((_rest1697916987_ _rest16978_)
                 (_else1698116995_ (lambda () '#!void))
                 (_K1698317001_
                  (lambda (_rest16998_ _hd16999_)
                    (if (fx= _len16974_ (length _hd16999_))
                        (_lp16976_ _rest16998_)
                        (gx#raise-syntax-error
                         '#f
                         '"Splice length mismatch"
                         _hd16999_)))))
            (if (##pair? _rest1697916987_)
                (let ((_hd1698417004_ (##car _rest1697916987_))
                      (_tl1698517006_ (##cdr _rest1697916987_)))
                  (let* ((_hd17009_ _hd1698417004_)
                         (_rest17011_ _tl1698517006_))
                    (_K1698317001_ _rest17011_ _hd17009_)))
                (_else1698116995_)))))))
  (define gx#syntax-split-splice
    (lambda (_stx16929_ _n16930_)
      (let _lp16932_ ((_rest16934_ _stx16929_) (_r16935_ '()))
        (if (gx#stx-pair? _rest16934_)
            (let* ((_g1693616943_ (gx#syntax-e _rest16934_))
                   (_E1693816947_
                    (lambda () (error '"No clause matching" _g1693616943_)))
                   (_K1693916953_
                    (lambda (_rest16950_ _hd16951_)
                      (_lp16932_ _rest16950_ (cons _hd16951_ _r16935_)))))
              (if (##pair? _g1693616943_)
                  (let ((_hd1694016956_ (##car _g1693616943_))
                        (_tl1694116958_ (##cdr _g1693616943_)))
                    (let* ((_hd16961_ _hd1694016956_)
                           (_rest16963_ _tl1694116958_))
                      (_K1693916953_ _rest16963_ _hd16961_)))
                  (_E1693816947_)))
            (let _lp16965_ ((_n16967_ _n16930_)
                            (_l16968_ _r16935_)
                            (_r16969_ _rest16934_))
              (if (null? _l16968_)
                  (values _l16968_ _r16969_)
                  (if (fxpositive? _n16967_)
                      (_lp16965_
                       (fx- _n16967_ '1)
                       (cdr _l16968_)
                       (cons (car _l16968_) _r16969_))
                      (values (reverse _l16968_) _r16969_)))))))))
