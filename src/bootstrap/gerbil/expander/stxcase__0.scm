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
    (lambda _$args18463_
      (apply make-struct-instance gx#syntax-pattern::t _$args18463_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self18460_ _stx18461_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx18461_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx17942_)
      (letrec ((_generate17944_
                (lambda (_e18171_)
                  (letrec ((_BUG18173_
                            (lambda (_q18335_)
                              (error '"BUG: syntax; generate"
                                     _stx17942_
                                     _e18171_
                                     _q18335_)))
                           (_local-pattern-e18174_
                            (lambda (_pat18333_)
                              (gx#syntax-local-rewrap
                               (##structure-ref
                                _pat18333_
                                '2
                                gx#syntax-pattern::t
                                '#f))))
                           (_getvar18175_
                            (lambda (_q18330_ _vars18331_)
                              (assgetq _q18330_ _vars18331_ _BUG18173_)))
                           (_getarg18176_
                            (lambda (_arg18296_ _vars18297_)
                              (let* ((_arg1829818305_ _arg18296_)
                                     (_E1830018309_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _arg1829818305_)))
                                     (_K1830118318_
                                      (lambda (_e18312_ _tag18313_)
                                        (let ((_$e18315_ _tag18313_))
                                          (if (eq? 'ref _$e18315_)
                                              (_getvar18175_
                                               _e18312_
                                               _vars18297_)
                                              (if (eq? 'pattern _$e18315_)
                                                  (_local-pattern-e18174_
                                                   _e18312_)
                                                  (_BUG18173_ _arg18296_)))))))
                                (if (##pair? _arg1829818305_)
                                    (let ((_hd1830218321_
                                           (##car _arg1829818305_))
                                          (_tl1830318323_
                                           (##cdr _arg1829818305_)))
                                      (let* ((_tag18326_ _hd1830218321_)
                                             (_e18328_ _tl1830318323_))
                                        (_K1830118318_ _e18328_ _tag18326_)))
                                    (_E1830018309_))))))
                    (let _recur18178_ ((_e18180_ _e18171_) (_vars18181_ '()))
                      (let* ((_e1818218189_ _e18180_)
                             (_E1818418193_
                              (lambda ()
                                (error '"No clause matching" _e1818218189_)))
                             (_K1818518284_
                              (lambda (_body18196_ _tag18197_)
                                (let ((_$e18199_ _tag18197_))
                                  (if (eq? 'datum _$e18199_)
                                      (gx#core-list 'quote _body18196_)
                                      (if (eq? 'term _$e18199_)
                                          (let ((_id18202_
                                                 (gx#syntax-local-unwrap
                                                  _body18196_)))
                                            (if (##structure-direct-instance-of?
                                                 _id18202_
                                                 'gx#identifier-wrap::t)
                                                (let ((_marks18204_
                                                       (##direct-structure-ref
                                                        _id18202_
                                                        '3
                                                        gx#identifier-wrap::t
                                                        '#f)))
                                                  (if (null? _marks18204_)
                                                      (gx#core-list
                                                       'datum->syntax
                                                       '#f
                                                       (gx#core-list
                                                        'quote
                                                        _body18196_))
                                                      (gx#core-list
                                                       'datum->syntax
                                                       (gx#core-list
                                                        'quote-syntax
                                                        _body18196_)
                                                       (gx#core-list
                                                        'quote
                                                        _body18196_)
                                                       '#f
                                                       '#f)))
                                                (if (##structure-direct-instance-of?
                                                     _id18202_
                                                     'gx#syntax-quote::t)
                                                    (gx#core-list
                                                     'quote-syntax
                                                     _body18196_)
                                                    (_BUG18173_ _e18180_))))
                                          (if (eq? 'pattern _$e18199_)
                                              (_local-pattern-e18174_
                                               _body18196_)
                                              (if (eq? 'ref _$e18199_)
                                                  (_getvar18175_
                                                   _body18196_
                                                   _vars18181_)
                                                  (if (eq? 'cons _$e18199_)
                                                      (gx#core-list
                                                       'cons
                                                       (_recur18178_
                                                        (car _body18196_)
                                                        _vars18181_)
                                                       (_recur18178_
                                                        (cdr _body18196_)
                                                        _vars18181_))
                                                      (if (eq? 'vector
                                                               _$e18199_)
                                                          (gx#core-list
                                                           'list->vector
                                                           (_recur18178_
                                                            _body18196_
                                                            _vars18181_))
                                                          (if (eq? 'box
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e18199_)
                      (gx#core-list
                       'box
                       (_recur18178_ _body18196_ _vars18181_))
                      (if (eq? 'splice _$e18199_)
                          (let* ((_body1820518216_ _body18196_)
                                 (_E1820718220_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _body1820518216_)))
                                 (_K1820818258_
                                  (lambda (_args18223_
                                           _iv18224_
                                           _hd18225_
                                           _depth18226_)
                                    (let* ((_targets18232_
                                            (map (lambda (_g1822718229_)
                                                   (_getarg18176_
                                                    _g1822718229_
                                                    _vars18181_))
                                                 _args18223_))
                                           (_fold-in18234_
                                            (gx#gentemps _args18223_))
                                           (_fold-out18236_ (gx#genident__0))
                                           (_lambda-args18238_
                                            (foldr1 cons
                                                    (cons _fold-out18236_ '())
                                                    _fold-in18234_))
                                           (_lambda-body18255_
                                            (if (fx> _depth18226_ '1)
                                                (let ((_r-args18246_
                                                       (map (lambda (_arg18240_)
                                                              (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cdr _arg18240_)))
                    _args18223_))
              (_r-vars18247_
               (foldr2 (lambda (_arg18242_ _var18243_ _r18244_)
                         (cons (cons (cdr _arg18242_) _var18243_) _r18244_))
                       _vars18181_
                       _args18223_
                       _fold-in18234_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur18178_
                                                   (cons 'splice
                                                         (cons (fx- _depth18226_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                       (cons _hd18225_
                             (cons (cons 'var _fold-out18236_)
                                   _r-args18246_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _r-vars18247_))
                                                (let ((_hd-vars18253_
                                                       (foldr2 (lambda (_arg18249_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _var18250_
                                _r18251_)
                         (cons (cons (cdr _arg18249_) _var18250_) _r18251_))
                       _vars18181_
                       _args18223_
                       _fold-in18234_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#core-list
                                                   'cons
                                                   (_recur18178_
                                                    _hd18225_
                                                    _hd-vars18253_)
                                                   _fold-out18236_)))))
                                      (gx#core-list
                                       'begin
                                       (if (fx> (length _targets18232_) '1)
                                           (gx#core-cons*
                                            'syntax-check-splice-targets
                                            _targets18232_)
                                           '#!void)
                                       (gx#core-cons*
                                        'foldr
                                        (gx#core-list
                                         'lambda%
                                         _lambda-args18238_
                                         _lambda-body18255_)
                                        (_recur18178_ _iv18224_ _vars18181_)
                                        _targets18232_))))))
                            (if (##pair? _body1820518216_)
                                (let ((_hd1820918261_ (##car _body1820518216_))
                                      (_tl1821018263_
                                       (##cdr _body1820518216_)))
                                  (let ((_depth18266_ _hd1820918261_))
                                    (if (##pair? _tl1821018263_)
                                        (let ((_hd1821118268_
                                               (##car _tl1821018263_))
                                              (_tl1821218270_
                                               (##cdr _tl1821018263_)))
                                          (let ((_hd18273_ _hd1821118268_))
                                            (if (##pair? _tl1821218270_)
                                                (let ((_hd1821318275_
                                                       (##car _tl1821218270_))
                                                      (_tl1821418277_
                                                       (##cdr _tl1821218270_)))
                                                  (let* ((_iv18280_
                                                          _hd1821318275_)
                                                         (_args18282_
                                                          _tl1821418277_))
                                                    (_K1820818258_
                                                     _args18282_
                                                     _iv18280_
                                                     _hd18273_
                                                     _depth18266_)))
                                                (_E1820718220_))))
                                        (_E1820718220_))))
                                (_E1820718220_)))
                          (if (eq? 'var _$e18199_)
                              _body18196_
                              (_BUG18173_ _e18180_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (if (##pair? _e1818218189_)
                            (let ((_hd1818618287_ (##car _e1818218189_))
                                  (_tl1818718289_ (##cdr _e1818218189_)))
                              (let* ((_tag18292_ _hd1818618287_)
                                     (_body18294_ _tl1818718289_))
                                (_K1818518284_ _body18294_ _tag18292_)))
                            (_E1818418193_)))))))
               (_parse17945_
                (lambda (_e17986_)
                  (letrec ((_make-cons17988_
                            (lambda (_hd18163_ _tl18164_)
                              (let ((_g18465_ _hd18163_) (_g18467_ _tl18164_))
                                (begin
                                  (let ((_g18466_
                                         (if (##values? _g18465_)
                                             (##vector-length _g18465_)
                                             1)))
                                    (if (not (##fx= _g18466_ 2))
                                        (error "Context expects 2 values"
                                               _g18466_)))
                                  (let ((_g18468_
                                         (if (##values? _g18467_)
                                             (##vector-length _g18467_)
                                             1)))
                                    (if (not (##fx= _g18468_ 2))
                                        (error "Context expects 2 values"
                                               _g18468_)))
                                  (let ((_hd-e18166_ (##vector-ref _g18465_ 0))
                                        (_hd-vars18167_
                                         (##vector-ref _g18465_ 1)))
                                    (let ((_tl-e18168_
                                           (##vector-ref _g18467_ 0))
                                          (_tl-vars18169_
                                           (##vector-ref _g18467_ 1)))
                                      (values (cons 'cons
                                                    (cons _hd-e18166_
                                                          _tl-e18168_))
                                              (append _hd-vars18167_
                                                      _tl-vars18169_))))))))
                           (_make-splice17989_
                            (lambda (_where18102_
                                     _depth18103_
                                     _hd18104_
                                     _tl18105_)
                              (let ((_g18469_ _hd18104_) (_g18471_ _tl18105_))
                                (begin
                                  (let ((_g18470_
                                         (if (##values? _g18469_)
                                             (##vector-length _g18469_)
                                             1)))
                                    (if (not (##fx= _g18470_ 2))
                                        (error "Context expects 2 values"
                                               _g18470_)))
                                  (let ((_g18472_
                                         (if (##values? _g18471_)
                                             (##vector-length _g18471_)
                                             1)))
                                    (if (not (##fx= _g18472_ 2))
                                        (error "Context expects 2 values"
                                               _g18472_)))
                                  (let ((_hd-e18107_ (##vector-ref _g18469_ 0))
                                        (_hd-vars18108_
                                         (##vector-ref _g18469_ 1)))
                                    (let ((_tl-e18109_
                                           (##vector-ref _g18471_ 0))
                                          (_tl-vars18110_
                                           (##vector-ref _g18471_ 1)))
                                      (let _lp18112_ ((_rest18114_
                                                       _hd-vars18108_)
                                                      (_targets18115_ '())
                                                      (_vars18116_
                                                       _tl-vars18110_))
                                        (let* ((_rest1811718127_ _rest18114_)
                                               (_else1811918135_
                                                (lambda ()
                                                  (if (null? _targets18115_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Misplaced ellipsis"
                                                       _stx17942_
                                                       _where18102_)
                                                      (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _depth18103_
                                  (cons _hd-e18107_
                                        (cons _tl-e18109_ _targets18115_))))
                      _vars18116_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_K1812118144_
                                                (lambda (_rest18138_
                                                         _hd-pat18139_
                                                         _hd-depth*18140_)
                                                  (let ((_hd-depth18142_
                                                         (fx- _hd-depth*18140_
                                                              _depth18103_)))
                                                    (if (fxpositive?
                                                         _hd-depth18142_)
                                                        (_lp18112_
                                                         _rest18138_
                                                         (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd-pat18139_)
                       _targets18115_)
                 (cons (cons _hd-depth18142_ _hd-pat18139_) _vars18116_))
                (if (fxzero? _hd-depth18142_)
                    (_lp18112_
                     _rest18138_
                     (cons (cons 'pattern _hd-pat18139_) _targets18115_)
                     _vars18116_)
                    (gx#raise-syntax-error
                     '#f
                     '"Too many ellipses"
                     _stx17942_
                     _where18102_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1811718127_)
                                              (let ((_hd1812218147_
                                                     (##car _rest1811718127_))
                                                    (_tl1812318149_
                                                     (##cdr _rest1811718127_)))
                                                (if (##pair? _hd1812218147_)
                                                    (let ((_hd1812418152_
                                                           (##car _hd1812218147_))
                                                          (_tl1812518154_
                                                           (##cdr _hd1812218147_)))
                                                      (let* ((_hd-depth*18157_
                                                              _hd1812418152_)
                                                             (_hd-pat18159_
                                                              _tl1812518154_)
                                                             (_rest18161_
                                                              _tl1812318149_))
                                                        (_K1812118144_
                                                         _rest18161_
                                                         _hd-pat18159_
                                                         _hd-depth*18157_)))
                                                    (_else1811918135_)))
                                              (_else1811918135_))))))))))
                           (_recur17990_
                            (lambda (_e17995_ _is-e?17996_)
                              (if (_is-e?17996_ _e17995_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Mislpaced ellipsis"
                                   _stx17942_)
                                  (if (gx#syntax-local-pattern? _e17995_)
                                      (let* ((_pat17998_
                                              (gx#syntax-local-e__0 _e17995_))
                                             (_depth18000_
                                              (##structure-ref
                                               _pat17998_
                                               '3
                                               gx#syntax-pattern::t
                                               '#f)))
                                        (if (fxpositive? _depth18000_)
                                            (values (cons 'ref _pat17998_)
                                                    (cons (cons _depth18000_
                                                                _pat17998_)
                                                          '()))
                                            (values (cons 'pattern _pat17998_)
                                                    '())))
                                      (if (gx#identifier? _e17995_)
                                          (values (cons 'term _e17995_) '())
                                          (if (gx#stx-pair? _e17995_)
                                              (let* ((_e1800218009_ _e17995_)
                                                     (_E1800418013_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _e1800218009_)))
                                                     (_E1800318092_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e1800218009_)
                                                            (let ((_e1800518017_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e1800218009_)))
                      (let ((_hd1800618020_ (##car _e1800518017_))
                            (_tl1800718022_ (##cdr _e1800518017_)))
                        (let* ((_hd18025_ _hd1800618020_)
                               (_rest18027_ _tl1800718022_))
                          (if '#t
                              (if (_is-e?17996_ _hd18025_)
                                  (let* ((_e1802818035_ _rest18027_)
                                         (_E1803018039_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _stx17942_
                                             _e17995_)))
                                         (_E1802918053_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1802818035_)
                                                (let ((_e1803118043_
                                                       (gx#syntax-e
                                                        _e1802818035_)))
                                                  (let ((_hd1803218046_
                                                         (##car _e1803118043_))
                                                        (_tl1803318048_
                                                         (##cdr _e1803118043_)))
                                                    (let ((_rest18051_
                                                           _hd1803218046_))
                                                      (if (gx#stx-null?
                                                           _tl1803318048_)
                                                          (if '#t
                                                              (_recur17990_
                                                               _rest18051_
                                                               false)
                                                              (_E1803018039_))
                                                          (_E1803018039_)))))
                                                (_E1803018039_)))))
                                    (_E1802918053_))
                                  (let _lp18057_ ((_rest18059_ _rest18027_)
                                                  (_depth18060_ '0))
                                    (let* ((_e1806118068_ _rest18059_)
                                           (_E1806318072_
                                            (lambda ()
                                              (if (fxpositive? _depth18060_)
                                                  (_make-splice17989_
                                                   _e17995_
                                                   _depth18060_
                                                   (_recur17990_
                                                    _hd18025_
                                                    _is-e?17996_)
                                                   (_recur17990_
                                                    _rest18059_
                                                    _is-e?17996_))
                                                  (_make-cons17988_
                                                   (_recur17990_
                                                    _hd18025_
                                                    _is-e?17996_)
                                                   (_recur17990_
                                                    _rest18059_
                                                    _is-e?17996_)))))
                                           (_E1806218088_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1806118068_)
                                                  (let ((_e1806418076_
                                                         (gx#syntax-e
                                                          _e1806118068_)))
                                                    (let ((_hd1806518079_
                                                           (##car _e1806418076_))
                                                          (_tl1806618081_
                                                           (##cdr _e1806418076_)))
                                                      (let* ((_rest-hd18084_
                                                              _hd1806518079_)
                                                             (_rest-tl18086_
                                                              _tl1806618081_))
                                                        (if '#t
                                                            (if (_is-e?17996_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rest-hd18084_)
                        (_lp18057_ _rest-tl18086_ (fx+ _depth18060_ '1))
                        (if (fxpositive? _depth18060_)
                            (_make-splice17989_
                             _e17995_
                             _depth18060_
                             (_recur17990_ _hd18025_ _is-e?17996_)
                             (_recur17990_ _rest18059_ _is-e?17996_))
                            (_make-cons17988_
                             (_recur17990_ _hd18025_ _is-e?17996_)
                             (_recur17990_ _rest18059_ _is-e?17996_))))
                    (_E1806318072_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1806318072_)))))
                                      (_E1806218088_))))
                              (_E1800418013_)))))
                    (_E1800418013_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1800318092_))
                                              (if (gx#stx-vector? _e17995_)
                                                  (let ((_g18473_
                                                         (_recur17990_
                                                          (vector->list
                                                           (gx#stx-unwrap__0
                                                            _e17995_))
                                                          _is-e?17996_)))
                                                    (begin
                                                      (let ((_g18474_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g18473_)
                         (##vector-length _g18473_)
                         1)))
                (if (not (##fx= _g18474_ 2))
                    (error "Context expects 2 values" _g18474_)))
              (let ((_e18096_ (##vector-ref _g18473_ 0))
                    (_vars18097_ (##vector-ref _g18473_ 1)))
                (values (cons 'vector _e18096_) _vars18097_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e17995_)
                                                      (let ((_g18475_
                                                             (_recur17990_
                                                              (unbox (gx#stx-unwrap__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e17995_))
                      _is-e?17996_)))
                (begin
                  (let ((_g18476_
                         (if (##values? _g18475_)
                             (##vector-length _g18475_)
                             1)))
                    (if (not (##fx= _g18476_ 2))
                        (error "Context expects 2 values" _g18476_)))
                  (let ((_e18099_ (##vector-ref _g18475_ 0))
                        (_vars18100_ (##vector-ref _g18475_ 1)))
                    (values (cons 'box _e18099_) _vars18100_))))
              (values (cons 'datum _e17995_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    (let ((_g18477_ (_recur17990_ _e17986_ gx#ellipsis?)))
                      (begin
                        (let ((_g18478_
                               (if (##values? _g18477_)
                                   (##vector-length _g18477_)
                                   1)))
                          (if (not (##fx= _g18478_ 2))
                              (error "Context expects 2 values" _g18478_)))
                        (let ((_tree17992_ (##vector-ref _g18477_ 0))
                              (_vars17993_ (##vector-ref _g18477_ 1)))
                          (if (null? _vars17993_)
                              _tree17992_
                              (gx#raise-syntax-error
                               '#f
                               '"Missing ellipsis"
                               _stx17942_
                               _vars17993_)))))))))
        (let* ((_e1794617956_ _stx17942_)
               (_E1794817960_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _stx17942_)))
               (_E1794717982_
                (lambda ()
                  (if (gx#stx-pair? _e1794617956_)
                      (let ((_e1794917964_ (gx#syntax-e _e1794617956_)))
                        (let ((_hd1795017967_ (##car _e1794917964_))
                              (_tl1795117969_ (##cdr _e1794917964_)))
                          (if (gx#stx-pair? _tl1795117969_)
                              (let ((_e1795217972_
                                     (gx#syntax-e _tl1795117969_)))
                                (let ((_hd1795317975_ (##car _e1795217972_))
                                      (_tl1795417977_ (##cdr _e1795217972_)))
                                  (let ((_form17980_ _hd1795317975_))
                                    (if (gx#stx-null? _tl1795417977_)
                                        (if '#t
                                            (gx#stx-wrap-source
                                             (_generate17944_
                                              (_parse17945_ _form17980_))
                                             (gx#stx-source _stx17942_))
                                            (_E1794817960_))
                                        (_E1794817960_)))))
                              (_E1794817960_))))
                      (_E1794817960_)))))
          (_E1794717982_)))))
  (begin
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx17206_ _identifier=?17207_ _unwrap-e17208_ _wrap-e17209_)
        (letrec ((_generate-bindings17211_
                  (lambda (_target17806_
                           _ids17807_
                           _clauses17808_
                           _clause-ids17809_
                           _E17810_)
                    (letrec ((_generate117812_
                              (lambda (_clause17909_ _clause-id17910_ _E17911_)
                                (cons (cons _clause-id17910_ '())
                                      (cons (gx#core-list
                                             'lambda%
                                             (cons _target17806_ '())
                                             (_generate-clause17213_
                                              _target17806_
                                              _ids17807_
                                              _clause17909_
                                              _E17911_))
                                            '())))))
                      (let _lp17814_ ((_rest17816_ _clauses17808_)
                                      (_rest-ids17817_ _clause-ids17809_)
                                      (_bindings17818_ '()))
                        (let* ((_rest1781917827_ _rest17816_)
                               (_else1782117835_ (lambda () _bindings17818_))
                               (_K1782317897_
                                (lambda (_rest17838_ _clause17839_)
                                  (let* ((_rest-ids1784017847_ _rest-ids17817_)
                                         (_E1784217851_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids1784017847_)))
                                         (_K1784317885_
                                          (lambda (_rest-ids17854_
                                                   _clause-id17855_)
                                            (let* ((_rest-ids1785617864_
                                                    _rest-ids17854_)
                                                   (_else1785817872_
                                                    (lambda ()
                                                      (cons (_generate117812_
                                                             _clause17839_
                                                             _clause-id17855_
                                                             _E17810_)
                                                            _bindings17818_)))
                                                   (_K1786017877_
                                                    (lambda (_next-clause-id17875_)
                                                      (_lp17814_
                                                       _rest17838_
                                                       _rest-ids17854_
                                                       (cons (_generate117812_
                                                              _clause17839_
                                                              _clause-id17855_
                                                              _next-clause-id17875_)
                                                             _bindings17818_)))))
                                              (if (##pair? _rest-ids1785617864_)
                                                  (let* ((_hd1786117880_
                                                          (##car _rest-ids1785617864_))
                                                         (_next-clause-id17883_
                                                          _hd1786117880_))
                                                    (_K1786017877_
                                                     _next-clause-id17883_))
                                                  (_else1785817872_))))))
                                    (if (##pair? _rest-ids1784017847_)
                                        (let ((_hd1784417888_
                                               (##car _rest-ids1784017847_))
                                              (_tl1784517890_
                                               (##cdr _rest-ids1784017847_)))
                                          (let* ((_clause-id17893_
                                                  _hd1784417888_)
                                                 (_rest-ids17895_
                                                  _tl1784517890_))
                                            (_K1784317885_
                                             _rest-ids17895_
                                             _clause-id17893_)))
                                        (_E1784217851_))))))
                          (if (##pair? _rest1781917827_)
                              (let ((_hd1782417900_ (##car _rest1781917827_))
                                    (_tl1782517902_ (##cdr _rest1781917827_)))
                                (let* ((_clause17905_ _hd1782417900_)
                                       (_rest17907_ _tl1782517902_))
                                  (_K1782317897_ _rest17907_ _clause17905_)))
                              (_else1782117835_)))))))
                 (_generate-body17212_
                  (lambda (_bindings17766_ _body17767_)
                    (let _recur17769_ ((_rest17771_ _bindings17766_))
                      (let* ((_rest1777217780_ _rest17771_)
                             (_else1777417788_ (lambda () _body17767_))
                             (_K1777617794_
                              (lambda (_rest17791_ _hd17792_)
                                (gx#core-list
                                 'let-values
                                 (cons _hd17792_ '())
                                 (_recur17769_ _rest17791_)))))
                        (if (##pair? _rest1777217780_)
                            (let ((_hd1777717797_ (##car _rest1777217780_))
                                  (_tl1777817799_ (##cdr _rest1777217780_)))
                              (let* ((_hd17802_ _hd1777717797_)
                                     (_rest17804_ _tl1777817799_))
                                (_K1777617794_ _rest17804_ _hd17802_)))
                            (_else1777417788_))))))
                 (_generate-clause17213_
                  (lambda (_target17629_ _ids17630_ _clause17631_ _E17632_)
                    (letrec ((_generate117634_
                              (lambda (_hd17721_ _fender17722_ _body17723_)
                                (let ((_g18479_
                                       (_parse-clause17215_
                                        _hd17721_
                                        _ids17630_)))
                                  (begin
                                    (let ((_g18480_
                                           (if (##values? _g18479_)
                                               (##vector-length _g18479_)
                                               1)))
                                      (if (not (##fx= _g18480_ 2))
                                          (error "Context expects 2 values"
                                                 _g18480_)))
                                    (let ((_e17725_ (##vector-ref _g18479_ 0))
                                          (_mvars17726_
                                           (##vector-ref _g18479_ 1)))
                                      (let* ((_pvars17728_
                                              (map gx#syntax-local-rewrap
                                                   (gx#gentemps _mvars17726_)))
                                             (_E17730_
                                              (cons _E17632_
                                                    (cons _target17629_ '())))
                                             (_K17763_
                                              (gx#core-list
                                               'lambda%
                                               _pvars17728_
                                               (gx#core-list
                                                'let-syntax
                                                (map (lambda (_mvar17732_
                                                              _pvar17733_)
                                                       (let* ((_mvar1773417741_
                                                               _mvar17732_)
                                                              (_E1773617745_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (error '"No clause matching" _mvar1773417741_)))
                      (_K1773717751_
                       (lambda (_depth17748_ _id17749_)
                         (cons _id17749_
                               (cons (gx#core-list
                                      'make-syntax-pattern
                                      (gx#core-list 'quote _id17749_)
                                      (gx#core-list 'quote _pvar17733_)
                                      _depth17748_)
                                     '())))))
                 (if (##pair? _mvar1773417741_)
                     (let ((_hd1773817754_ (##car _mvar1773417741_))
                           (_tl1773917756_ (##cdr _mvar1773417741_)))
                       (let* ((_id17759_ _hd1773817754_)
                              (_depth17761_ _tl1773917756_))
                         (_K1773717751_ _depth17761_ _id17759_)))
                     (_E1773617745_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _mvars17726_
                                                     _pvars17728_)
                                                (if (eq? _fender17722_ '#t)
                                                    _body17723_
                                                    (gx#core-list
                                                     'if
                                                     _fender17722_
                                                     _body17723_
                                                     _E17730_))))))
                                        (_generate-match17214_
                                         _hd17721_
                                         _target17629_
                                         _e17725_
                                         _mvars17726_
                                         _K17763_
                                         _E17730_))))))))
                      (let* ((_e1763517655_ _clause17631_)
                             (_E1764417659_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _e1763517655_)))
                             (_E1763717693_
                              (lambda ()
                                (if (gx#stx-pair? _e1763517655_)
                                    (let ((_e1764517663_
                                           (gx#syntax-e _e1763517655_)))
                                      (let ((_hd1764617666_
                                             (##car _e1764517663_))
                                            (_tl1764717668_
                                             (##cdr _e1764517663_)))
                                        (let ((_hd17671_ _hd1764617666_))
                                          (if (gx#stx-pair? _tl1764717668_)
                                              (let ((_e1764817673_
                                                     (gx#syntax-e
                                                      _tl1764717668_)))
                                                (let ((_hd1764917676_
                                                       (##car _e1764817673_))
                                                      (_tl1765017678_
                                                       (##cdr _e1764817673_)))
                                                  (let ((_fender17681_
                                                         _hd1764917676_))
                                                    (if (gx#stx-pair?
                                                         _tl1765017678_)
                                                        (let ((_e1765117683_
                                                               (gx#syntax-e
                                                                _tl1765017678_)))
                                                          (let ((_hd1765217686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1765117683_))
                        (_tl1765317688_ (##cdr _e1765117683_)))
                    (let ((_body17691_ _hd1765217686_))
                      (if (gx#stx-null? _tl1765317688_)
                          (if '#t
                              (_generate117634_
                               _hd17671_
                               _fender17681_
                               _body17691_)
                              (_E1764417659_))
                          (_E1764417659_)))))
                (_E1764417659_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E1764417659_)))))
                                    (_E1764417659_))))
                             (_E1763617717_
                              (lambda ()
                                (if (gx#stx-pair? _e1763517655_)
                                    (let ((_e1763817697_
                                           (gx#syntax-e _e1763517655_)))
                                      (let ((_hd1763917700_
                                             (##car _e1763817697_))
                                            (_tl1764017702_
                                             (##cdr _e1763817697_)))
                                        (let ((_hd17705_ _hd1763917700_))
                                          (if (gx#stx-pair? _tl1764017702_)
                                              (let ((_e1764117707_
                                                     (gx#syntax-e
                                                      _tl1764017702_)))
                                                (let ((_hd1764217710_
                                                       (##car _e1764117707_))
                                                      (_tl1764317712_
                                                       (##cdr _e1764117707_)))
                                                  (let ((_body17715_
                                                         _hd1764217710_))
                                                    (if (gx#stx-null?
                                                         _tl1764317712_)
                                                        (if '#t
                                                            (_generate117634_
                                                             _hd17705_
                                                             '#t
                                                             _body17715_)
                                                            (_E1763717693_))
                                                        (_E1763717693_)))))
                                              (_E1763717693_)))))
                                    (_E1763717693_)))))
                        (_E1763617717_)))))
                 (_generate-match17214_
                  (lambda (_where17378_
                           _target17379_
                           _hd17380_
                           _mvars17381_
                           _K17382_
                           _E17383_)
                    (letrec ((_BUG17385_
                              (lambda (_q17627_)
                                (error '"BUG: syntax-case; generate"
                                       _stx17206_
                                       _hd17380_
                                       _q17627_)))
                             (_recur17386_
                              (lambda (_e17477_
                                       _vars17478_
                                       _target17479_
                                       _E17480_
                                       _k17481_)
                                (let* ((_e1748217489_ _e17477_)
                                       (_E1748417493_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e1748217489_)))
                                       (_K1748517615_
                                        (lambda (_body17496_ _tag17497_)
                                          (let ((_$e17499_ _tag17497_))
                                            (if (eq? 'any _$e17499_)
                                                (_k17481_ _vars17478_)
                                                (if (eq? 'id _$e17499_)
                                                    (gx#core-list
                                                     'if
                                                     (gx#core-list
                                                      'identifier?
                                                      _target17479_)
                                                     (gx#core-list
                                                      'if
                                                      (gx#core-list
                                                       _identifier=?17207_
                                                       (gx#core-list
                                                        _wrap-e17209_
                                                        _body17496_)
                                                       _target17479_)
                                                      (_k17481_ _vars17478_)
                                                      _E17480_)
                                                     _E17480_)
                                                    (if (eq? 'var _$e17499_)
                                                        (_k17481_
                                                         (cons (cons _body17496_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _target17479_)
                       _vars17478_))
                (if (eq? 'cons _$e17499_)
                    (let ((_$e17502_ (gx#genident__1 'e))
                          (_$hd17503_ (gx#genident__1 'hd))
                          (_$tl17504_ (gx#genident__1 'tl)))
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _target17479_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$e17502_ '())
                                    (cons (gx#core-list
                                           _unwrap-e17208_
                                           _target17479_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$hd17503_ '())
                                     (cons (gx#core-list '##car _$e17502_)
                                           '()))
                               (cons (cons (cons _$tl17504_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$e17502_)
                                                 '()))
                                     '()))
                         (let* ((_body1750517512_ _body17496_)
                                (_E1750717516_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _body1750517512_)))
                                (_K1750817524_
                                 (lambda (_tl17519_ _hd17520_)
                                   (_recur17386_
                                    _hd17520_
                                    _vars17478_
                                    _$hd17503_
                                    _E17480_
                                    (lambda (_vars17522_)
                                      (_recur17386_
                                       _tl17519_
                                       _vars17522_
                                       _$tl17504_
                                       _E17480_
                                       _k17481_))))))
                           (if (##pair? _body1750517512_)
                               (let ((_hd1750917527_ (##car _body1750517512_))
                                     (_tl1751017529_ (##cdr _body1750517512_)))
                                 (let* ((_hd17532_ _hd1750917527_)
                                        (_tl17534_ _tl1751017529_))
                                   (_K1750817524_ _tl17534_ _hd17532_)))
                               (_E1750717516_)))))
                       _E17480_))
                    (if (eq? 'splice _$e17499_)
                        (let* ((_body1753517542_ _body17496_)
                               (_E1753717546_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body1753517542_)))
                               (_K1753817597_
                                (lambda (_tl17549_ _hd17550_)
                                  (let* ((_rlen17552_
                                          (_splice-rlen17387_ _tl17549_))
                                         (_$target17554_
                                          (gx#genident__1 'target))
                                         (_$hd17556_ (gx#genident__1 'hd))
                                         (_$tl17558_ (gx#genident__1 'tl))
                                         (_$lp17560_ (gx#genident__1 'loop))
                                         (_$lp-e17562_ (gx#genident__1 'e))
                                         (_$lp-hd17564_
                                          (gx#genident__1 'lp-hd))
                                         (_$lp-tl17566_
                                          (gx#genident__1 'lp-tl))
                                         (_svars17568_
                                          (_splice-vars17388_ _hd17550_))
                                         (_lvars17570_
                                          (gx#gentemps _svars17568_))
                                         (_tlvars17572_
                                          (gx#gentemps _svars17568_))
                                         (_linit17576_
                                          (map (lambda (_var17574_)
                                                 (gx#core-list 'quote '()))
                                               _lvars17570_)))
                                    (letrec ((_make-loop17579_
                                              (lambda (_vars17583_)
                                                (gx#core-list
                                                 'letrec-values
                                                 (cons (cons (cons _$lp17560_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _$hd17556_ _lvars17570_)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-pair? _$hd17556_)
                             (gx#core-list
                              'let-values
                              (cons (cons (cons _$lp-e17562_ '())
                                          (cons (gx#core-list
                                                 _unwrap-e17208_
                                                 _$hd17556_)
                                                '()))
                                    '())
                              (gx#core-list
                               'let-values
                               (cons (cons (cons _$lp-hd17564_ '())
                                           (cons (gx#core-list
                                                  '##car
                                                  _$lp-e17562_)
                                                 '()))
                                     (cons (cons (cons _$lp-tl17566_ '())
                                                 (cons (gx#core-list
                                                        '##cdr
                                                        _$lp-e17562_)
                                                       '()))
                                           '()))
                               (_recur17386_
                                _hd17550_
                                '()
                                _$lp-hd17564_
                                _E17480_
                                (lambda (_hdvars17585_)
                                  (cons _$lp17560_
                                        (cons _$lp-tl17566_
                                              (map (lambda (_svar17587_
                                                            _lvar17588_)
                                                     (gx#core-list
                                                      'cons
                                                      (assgetq _svar17587_
                                                               _hdvars17585_
                                                               _BUG17385_)
                                                      _lvar17588_))
                                                   _svars17568_
                                                   _lvars17570_)))))))
                             (gx#core-list
                              'let-values
                              (map (lambda (_lvar17590_ _tlvar17591_)
                                     (cons (cons _tlvar17591_ '())
                                           (cons (gx#core-list
                                                  'reverse
                                                  _lvar17590_)
                                                 '())))
                                   _lvars17570_
                                   _tlvars17572_)
                              (_k17481_
                               (foldl2 (lambda (_svar17593_
                                                _tlvar17594_
                                                _r17595_)
                                         (cons (cons _svar17593_ _tlvar17594_)
                                               _r17595_))
                                       _vars17583_
                                       _svars17568_
                                       _tlvars17572_)))))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _$lp17560_
                                                       (cons _$target17554_
                                                             _linit17576_))))))
                                      (let ((_body17581_
                                             (gx#core-list
                                              'let-values
                                              (cons (cons (cons _$target17554_
                                                                (cons _$tl17558_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (gx#core-list
                         'syntax-split-splice
                         _target17479_
                         _rlen17552_)
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (_recur17386_
                                               _tl17549_
                                               _vars17478_
                                               _$tl17558_
                                               _E17480_
                                               _make-loop17579_))))
                                        (gx#core-list
                                         'if
                                         (gx#core-list
                                          'stx-pair/null?
                                          _target17479_)
                                         (if (zero? _rlen17552_)
                                             _body17581_
                                             (gx#core-list
                                              'if
                                              (gx#core-list
                                               'fx>=
                                               (gx#core-list
                                                'stx-length
                                                _target17479_)
                                               _rlen17552_)
                                              _body17581_
                                              _E17480_))
                                         _E17480_)))))))
                          (if (##pair? _body1753517542_)
                              (let ((_hd1753917600_ (##car _body1753517542_))
                                    (_tl1754017602_ (##cdr _body1753517542_)))
                                (let* ((_hd17605_ _hd1753917600_)
                                       (_tl17607_ _tl1754017602_))
                                  (_K1753817597_ _tl17607_ _hd17605_)))
                              (_E1753717546_)))
                        (if (eq? 'null _$e17499_)
                            (gx#core-list
                             'if
                             (gx#core-list 'stx-null? _target17479_)
                             (_k17481_ _vars17478_)
                             _E17480_)
                            (if (eq? 'vector _$e17499_)
                                (let ((_$e17609_ (gx#genident__1 'e)))
                                  (gx#core-list
                                   'if
                                   (gx#core-list 'stx-vector? _target17479_)
                                   (gx#core-list
                                    'let-values
                                    (cons (cons (cons _$e17609_ '())
                                                (cons (gx#core-list
                                                       'vector->list
                                                       (gx#core-list
                                                        _unwrap-e17208_
                                                        _target17479_))
                                                      '()))
                                          '())
                                    (_recur17386_
                                     _body17496_
                                     _vars17478_
                                     _$e17609_
                                     _E17480_
                                     _k17481_))
                                   _E17480_))
                                (if (eq? 'box _$e17499_)
                                    (let ((_$e17611_ (gx#genident__1 'e)))
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-box? _target17479_)
                                       (gx#core-list
                                        'let-values
                                        (cons (cons (cons _$e17611_ '())
                                                    (cons (gx#core-list
                                                           'unbox
                                                           (gx#core-list
                                                            _unwrap-e17208_
                                                            _target17479_))
                                                          '()))
                                              '())
                                        (_recur17386_
                                         _body17496_
                                         _vars17478_
                                         _$e17611_
                                         _E17480_
                                         _k17481_))
                                       _E17480_))
                                    (if (eq? 'datum _$e17499_)
                                        (let ((_$e17613_ (gx#genident__1 'e)))
                                          (gx#core-list
                                           'if
                                           (gx#core-list
                                            'stx-datum?
                                            _target17479_)
                                           (gx#core-list
                                            'let-values
                                            (cons (cons (cons _$e17613_ '())
                                                        (cons (gx#core-list
                                                               'stx-e
                                                               _target17479_)
                                                              '()))
                                                  '())
                                            (gx#core-list
                                             'if
                                             (gx#core-list
                                              'equal?
                                              _$e17613_
                                              _body17496_)
                                             (_k17481_ _vars17478_)
                                             _E17480_))
                                           _E17480_))
                                        (_BUG17385_ _e17477_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (##pair? _e1748217489_)
                                      (let ((_hd1748617618_
                                             (##car _e1748217489_))
                                            (_tl1748717620_
                                             (##cdr _e1748217489_)))
                                        (let* ((_tag17623_ _hd1748617618_)
                                               (_body17625_ _tl1748717620_))
                                          (_K1748517615_
                                           _body17625_
                                           _tag17623_)))
                                      (_E1748417493_)))))
                             (_splice-rlen17387_
                              (lambda (_e17439_)
                                (let _lp17441_ ((_e17443_ _e17439_)
                                                (_n17444_ '0))
                                  (let* ((_e1744517452_ _e17443_)
                                         (_E1744717456_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1744517452_)))
                                         (_K1744817465_
                                          (lambda (_body17459_ _tag17460_)
                                            (let ((_$e17462_ _tag17460_))
                                              (if (eq? 'splice _$e17462_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Ambiguous pattern"
                                                   _stx17206_
                                                   _where17378_)
                                                  (if (eq? 'cons _$e17462_)
                                                      (_lp17441_
                                                       (cdr _body17459_)
                                                       (fx+ _n17444_ '1))
                                                      _n17444_))))))
                                    (if (##pair? _e1744517452_)
                                        (let ((_hd1744917468_
                                               (##car _e1744517452_))
                                              (_tl1745017470_
                                               (##cdr _e1744517452_)))
                                          (let* ((_tag17473_ _hd1744917468_)
                                                 (_body17475_ _tl1745017470_))
                                            (_K1744817465_
                                             _body17475_
                                             _tag17473_)))
                                        (_E1744717456_))))))
                             (_splice-vars17388_
                              (lambda (_e17395_)
                                (let _recur17397_ ((_e17399_ _e17395_)
                                                   (_vars17400_ '()))
                                  (let* ((_e1740117408_ _e17399_)
                                         (_E1740317412_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1740117408_)))
                                         (_K1740417427_
                                          (lambda (_body17415_ _tag17416_)
                                            (let ((_$e17418_ _tag17416_))
                                              (if (eq? 'var _$e17418_)
                                                  (cons _body17415_
                                                        _vars17400_)
                                                  (if (let ((_$e17421_
                                                             (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _$e17418_)))
                (if _$e17421_ _$e17421_ (eq? 'splice _$e17418_)))
              (_recur17397_
               (cdr _body17415_)
               (_recur17397_ (car _body17415_) _vars17400_))
              (if (let ((_$e17424_ (eq? 'vector _$e17418_)))
                    (if _$e17424_ _$e17424_ (eq? 'box _$e17418_)))
                  (_recur17397_ _body17415_ _vars17400_)
                  _vars17400_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (##pair? _e1740117408_)
                                        (let ((_hd1740517430_
                                               (##car _e1740117408_))
                                              (_tl1740617432_
                                               (##cdr _e1740117408_)))
                                          (let* ((_tag17435_ _hd1740517430_)
                                                 (_body17437_ _tl1740617432_))
                                            (_K1740417427_
                                             _body17437_
                                             _tag17435_)))
                                        (_E1740317412_))))))
                             (_make-body17389_
                              (lambda (_vars17391_)
                                (cons _K17382_
                                      (map (lambda (_mvar17393_)
                                             (assgetq (car _mvar17393_)
                                                      _vars17391_
                                                      _BUG17385_))
                                           _mvars17381_)))))
                      (_recur17386_
                       _hd17380_
                       '()
                       _target17379_
                       _E17383_
                       _make-body17389_))))
                 (_parse-clause17215_
                  (lambda (_hd17284_ _ids17285_)
                    (let _recur17287_ ((_e17289_ _hd17284_)
                                       (_vars17290_ '())
                                       (_depth17291_ '0))
                      (if (gx#identifier? _e17289_)
                          (if (gx#underscore? _e17289_)
                              (values '(any) _vars17290_)
                              (if (gx#ellipsis? _e17289_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Misplaced ellipsis"
                                   _stx17206_
                                   _hd17284_)
                                  (if (find (lambda (_id17293_)
                                              (gx#bound-identifier=?
                                               _e17289_
                                               _id17293_))
                                            _ids17285_)
                                      (values (cons 'id _e17289_) _vars17290_)
                                      (if (find (lambda (_var17295_)
                                                  (gx#bound-identifier=?
                                                   _e17289_
                                                   (car _var17295_)))
                                                _vars17290_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Duplicate pattern variable"
                                           _stx17206_
                                           _e17289_)
                                          (values (cons 'var _e17289_)
                                                  (cons (cons _e17289_
                                                              _depth17291_)
                                                        _vars17290_))))))
                          (if (gx#stx-pair? _e17289_)
                              (let* ((_e1729617303_ _e17289_)
                                     (_E1729817307_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _e1729617303_)))
                                     (_E1729717368_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1729617303_)
                                            (let ((_e1729917311_
                                                   (gx#syntax-e
                                                    _e1729617303_)))
                                              (let ((_hd1730017314_
                                                     (##car _e1729917311_))
                                                    (_tl1730117316_
                                                     (##cdr _e1729917311_)))
                                                (let* ((_hd17319_
                                                        _hd1730017314_)
                                                       (_rest17321_
                                                        _tl1730117316_))
                                                  (if '#t
                                                      (let* ((_make-pair17336_
                                                              (lambda (_tag17323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd17324_
                               _tl17325_)
                        (let* ((_hd-depth17327_
                                (if (eq? _tag17323_ 'splice)
                                    (fx+ _depth17291_ '1)
                                    _depth17291_))
                               (_g18481_
                                (_recur17287_
                                 _hd17324_
                                 _vars17290_
                                 _hd-depth17327_)))
                          (begin
                            (let ((_g18482_
                                   (if (##values? _g18481_)
                                       (##vector-length _g18481_)
                                       1)))
                              (if (not (##fx= _g18482_ 2))
                                  (error "Context expects 2 values" _g18482_)))
                            (let ((_hd17329_ (##vector-ref _g18481_ 0))
                                  (_vars17330_ (##vector-ref _g18481_ 1)))
                              (let ((_g18483_
                                     (_recur17287_
                                      _tl17325_
                                      _vars17330_
                                      _depth17291_)))
                                (begin
                                  (let ((_g18484_
                                         (if (##values? _g18483_)
                                             (##vector-length _g18483_)
                                             1)))
                                    (if (not (##fx= _g18484_ 2))
                                        (error "Context expects 2 values"
                                               _g18484_)))
                                  (let ((_tl17332_ (##vector-ref _g18483_ 0))
                                        (_vars17333_
                                         (##vector-ref _g18483_ 1)))
                                    (let ()
                                      (values (cons _tag17323_
                                                    (cons _hd17329_ _tl17332_))
                                              _vars17333_))))))))))
                     (_e1733717344_ _rest17321_)
                     (_E1733917348_
                      (lambda ()
                        (_make-pair17336_ 'cons _hd17319_ _rest17321_)))
                     (_E1733817364_
                      (lambda ()
                        (if (gx#stx-pair? _e1733717344_)
                            (let ((_e1734017352_ (gx#syntax-e _e1733717344_)))
                              (let ((_hd1734117355_ (##car _e1734017352_))
                                    (_tl1734217357_ (##cdr _e1734017352_)))
                                (let* ((_rest-hd17360_ _hd1734117355_)
                                       (_rest-tl17362_ _tl1734217357_))
                                  (if '#t
                                      (if (gx#ellipsis? _rest-hd17360_)
                                          (_make-pair17336_
                                           'splice
                                           _hd17319_
                                           _rest-tl17362_)
                                          (_make-pair17336_
                                           'cons
                                           _hd17319_
                                           _rest17321_))
                                      (_E1733917348_)))))
                            (_E1733917348_)))))
                (_E1733817364_))
              (_E1729817307_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1729817307_)))))
                                (_E1729717368_))
                              (if (gx#stx-null? _e17289_)
                                  (values '(null) _vars17290_)
                                  (if (gx#stx-vector? _e17289_)
                                      (let ((_g18485_
                                             (_recur17287_
                                              (vector->list
                                               (gx#syntax-e _e17289_))
                                              _vars17290_
                                              _depth17291_)))
                                        (begin
                                          (let ((_g18486_
                                                 (if (##values? _g18485_)
                                                     (##vector-length _g18485_)
                                                     1)))
                                            (if (not (##fx= _g18486_ 2))
                                                (error "Context expects 2 values"
                                                       _g18486_)))
                                          (let ((_e17372_
                                                 (##vector-ref _g18485_ 0))
                                                (_vars17373_
                                                 (##vector-ref _g18485_ 1)))
                                            (values (cons 'vector _e17372_)
                                                    _vars17373_))))
                                      (if (gx#stx-box? _e17289_)
                                          (let ((_g18487_
                                                 (_recur17287_
                                                  (unbox (gx#syntax-e
                                                          _e17289_))
                                                  _vars17290_
                                                  _depth17291_)))
                                            (begin
                                              (let ((_g18488_
                                                     (if (##values? _g18487_)
                                                         (##vector-length
                                                          _g18487_)
                                                         1)))
                                                (if (not (##fx= _g18488_ 2))
                                                    (error "Context expects 2 values"
                                                           _g18488_)))
                                              (let ((_e17375_
                                                     (##vector-ref _g18487_ 0))
                                                    (_vars17376_
                                                     (##vector-ref
                                                      _g18487_
                                                      1)))
                                                (values (cons 'box _e17375_)
                                                        _vars17376_))))
                                          (if (gx#stx-datum? _e17289_)
                                              (values (cons 'datum
                                                            (gx#stx-e
                                                             _e17289_))
                                                      _vars17290_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad pattern"
                                               _stx17206_
                                               _e17289_)))))))))))
          (let* ((_e1721617229_ _stx17206_)
                 (_E1721817233_
                  (lambda ()
                    (gx#raise-syntax-error '#f '"Bad syntax" _e1721617229_)))
                 (_E1721717280_
                  (lambda ()
                    (if (gx#stx-pair? _e1721617229_)
                        (let ((_e1721917237_ (gx#syntax-e _e1721617229_)))
                          (let ((_hd1722017240_ (##car _e1721917237_))
                                (_tl1722117242_ (##cdr _e1721917237_)))
                            (if (gx#stx-pair? _tl1722117242_)
                                (let ((_e1722217245_
                                       (gx#syntax-e _tl1722117242_)))
                                  (let ((_hd1722317248_ (##car _e1722217245_))
                                        (_tl1722417250_ (##cdr _e1722217245_)))
                                    (let ((_expr17253_ _hd1722317248_))
                                      (if (gx#stx-pair? _tl1722417250_)
                                          (let ((_e1722517255_
                                                 (gx#syntax-e _tl1722417250_)))
                                            (let ((_hd1722617258_
                                                   (##car _e1722517255_))
                                                  (_tl1722717260_
                                                   (##cdr _e1722517255_)))
                                              (let* ((_ids17263_
                                                      _hd1722617258_)
                                                     (_clauses17265_
                                                      _tl1722717260_))
                                                (if '#t
                                                    (if (not (gx#identifier-list?
                                                              _ids17263_))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad template identifier list"
                                                         _stx17206_
                                                         _ids17263_)
                                                        (if (not (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _clauses17265_))
                    (gx#raise-syntax-error '#f '"Bad syntax" _stx17206_)
                    (let* ((_ids17267_ (gx#syntax->list _ids17263_))
                           (_clauses17269_ (gx#syntax->list _clauses17265_))
                           (_clause-ids17271_ (gx#gentemps _clauses17269_))
                           (_E17273_ (gx#genident__0))
                           (_target17275_ (gx#genident__0))
                           (_first17277_
                            (if (null? _clauses17269_)
                                _E17273_
                                (car _clause-ids17271_))))
                      (gx#stx-wrap-source
                       (gx#core-list
                        'begin-annotation
                        '@syntax-case
                        (gx#stx-wrap-source
                         (gx#core-list
                          'let-values
                          (cons (cons (cons _E17273_ '())
                                      (cons (gx#core-list
                                             'lambda%
                                             (cons _target17275_ '())
                                             (gx#core-list
                                              'raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _target17275_))
                                            '()))
                                '())
                          (_generate-body17212_
                           (_generate-bindings17211_
                            _target17275_
                            _ids17267_
                            _clauses17269_
                            _clause-ids17271_
                            _E17273_)
                           (cons _first17277_ (cons _expr17253_ '()))))
                         (gx#stx-source _stx17206_)))
                       (gx#stx-source _stx17206_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1721817233_)))))
                                          (_E1721817233_)))))
                                (_E1721817233_))))
                        (_E1721817233_)))))
            (_E1721717280_)))))
    (begin
      (define gx#macro-expand-syntax-case__0
        (lambda (_stx17916_)
          (let* ((_identifier=?17918_ 'free-identifier=?)
                 (_unwrap-e17920_ 'syntax-e)
                 (_wrap-e17922_ 'quote-syntax))
            (gx#macro-expand-syntax-case__%
             _stx17916_
             _identifier=?17918_
             _unwrap-e17920_
             _wrap-e17922_))))
      (define gx#macro-expand-syntax-case__1
        (lambda (_stx17924_ _identifier=?17925_)
          (let* ((_unwrap-e17927_ 'syntax-e) (_wrap-e17929_ 'quote-syntax))
            (gx#macro-expand-syntax-case__%
             _stx17924_
             _identifier=?17925_
             _unwrap-e17927_
             _wrap-e17929_))))
      (define gx#macro-expand-syntax-case__2
        (lambda (_stx17931_ _identifier=?17932_ _unwrap-e17933_)
          (let ((_wrap-e17935_ 'quote-syntax))
            (gx#macro-expand-syntax-case__%
             _stx17931_
             _identifier=?17932_
             _unwrap-e17933_
             _wrap-e17935_))))
      (define gx#macro-expand-syntax-case
        (lambda _g18490_
          (let ((_g18489_ (length _g18490_)))
            (cond ((##fx= _g18489_ 1)
                   (apply gx#macro-expand-syntax-case__0 _g18490_))
                  ((##fx= _g18489_ 2)
                   (apply gx#macro-expand-syntax-case__1 _g18490_))
                  ((##fx= _g18489_ 3)
                   (apply gx#macro-expand-syntax-case__2 _g18490_))
                  ((##fx= _g18489_ 4)
                   (apply gx#macro-expand-syntax-case__% _g18490_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-syntax-case
                    _g18490_))))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx17203_)
      (if (gx#identifier? _stx17203_)
          (##structure-instance-of?
           (gx#syntax-local-e__% _stx17203_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd17161_ . _rest17162_)
      (let ((_len17164_ (length _hd17161_)))
        (let _lp17166_ ((_rest17168_ _rest17162_))
          (let* ((_rest1716917177_ _rest17168_)
                 (_else1717117185_ (lambda () '#!void))
                 (_K1717317191_
                  (lambda (_rest17188_ _hd17189_)
                    (if (fx= _len17164_ (length _hd17189_))
                        (_lp17166_ _rest17188_)
                        (gx#raise-syntax-error
                         '#f
                         '"Splice length mismatch"
                         _hd17189_)))))
            (if (##pair? _rest1716917177_)
                (let ((_hd1717417194_ (##car _rest1716917177_))
                      (_tl1717517196_ (##cdr _rest1716917177_)))
                  (let* ((_hd17199_ _hd1717417194_)
                         (_rest17201_ _tl1717517196_))
                    (_K1717317191_ _rest17201_ _hd17199_)))
                (_else1717117185_)))))))
  (define gx#syntax-split-splice
    (lambda (_stx17119_ _n17120_)
      (let _lp17122_ ((_rest17124_ _stx17119_) (_r17125_ '()))
        (if (gx#stx-pair? _rest17124_)
            (let* ((_g1712617133_ (gx#syntax-e _rest17124_))
                   (_E1712817137_
                    (lambda () (error '"No clause matching" _g1712617133_)))
                   (_K1712917143_
                    (lambda (_rest17140_ _hd17141_)
                      (_lp17122_ _rest17140_ (cons _hd17141_ _r17125_)))))
              (if (##pair? _g1712617133_)
                  (let ((_hd1713017146_ (##car _g1712617133_))
                        (_tl1713117148_ (##cdr _g1712617133_)))
                    (let* ((_hd17151_ _hd1713017146_)
                           (_rest17153_ _tl1713117148_))
                      (_K1712917143_ _rest17153_ _hd17151_)))
                  (_E1712817137_)))
            (let _lp17155_ ((_n17157_ _n17120_)
                            (_l17158_ _r17125_)
                            (_r17159_ _rest17124_))
              (if (null? _l17158_)
                  (values _l17158_ _r17159_)
                  (if (fxpositive? _n17157_)
                      (_lp17155_
                       (fx- _n17157_ '1)
                       (cdr _l17158_)
                       (cons (car _l17158_) _r17159_))
                      (values (reverse _l17158_) _r17159_)))))))))
