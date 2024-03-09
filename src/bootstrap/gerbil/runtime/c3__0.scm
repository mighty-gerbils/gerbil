(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1709994212)
  (begin
    (define c4-linearize__%
      (lambda (_g62153_
               _get-precedence-list6182061826_
               _struct?6182161828_
               _eq6182261830_
               _get-name6182361832_
               _rhead61834_
               _supers61835_)
        (let* ((_get-precedence-list61837_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-precedence-list6182061826_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument"
                             'get-precedence-list:))
                    _get-precedence-list6182061826_))
               (_struct?61839_
                (if (let ()
                      (declare (not safe))
                      (eq? _struct?6182161828_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'struct:))
                    _struct?6182161828_))
               (_eq61841_
                (if (let ()
                      (declare (not safe))
                      (eq? _eq6182261830_ absent-value))
                    eq?
                    _eq6182261830_))
               (_get-name61843_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-name6182361832_ absent-value))
                    identity
                    _get-name6182361832_)))
          (letrec* ((_pls61845_ (map _get-precedence-list61837_ _supers61835_))
                    (_sit61846_ '())
                    (_get-names61847_
                     (lambda (_lst62111_) (map _get-name61843_ _lst62111_)))
                    (_err61848_
                     (lambda _a62109_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp62154 (reverse _rhead61834_)))
                                (declare (not safe))
                                (_get-names61847_ __tmp62154))
                              'precedence-lists:
                              (map _get-names61847_ _pls61845_)
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_get-names61847_ _sit61846_))
                              _a62109_)))
                    (_merge-sit!61849_
                     (lambda (_sit262099_)
                       (if (let () (declare (not safe)) (null? _sit262099_))
                           '#!void
                           (if (let () (declare (not safe)) (null? _sit61846_))
                               (set! _sit61846_ _sit262099_)
                               (let _loop62101_ ((_t162103_ _sit61846_)
                                                 (_t262104_ _sit262099_))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _t162103_ _sit262099_))
                                     '#!void
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _t262104_ _sit61846_))
                                         (set! _sit61846_ _sit262099_)
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (null? _t162103_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (null? _t262104_)))
                                             (let ((__tmp62157
                                                    (let ((__tmp62160
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_get-names61847_
                                                              _sit61846_)))
                                                          (__tmp62158
                                                           (let ((__tmp62159
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_get-names61847_ _sit262099_))))
                     (declare (not safe))
                     (cons __tmp62159 '()))))
              (declare (not safe))
              (cons __tmp62160 __tmp62158))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_err61848_
                                                'single-inheritance-incompatibility:
                                                __tmp62157))
                                             (let ((__tmp62156 (cdr _t162103_))
                                                   (__tmp62155
                                                    (cdr _t262104_)))
                                               (declare (not safe))
                                               (_loop62101_
                                                __tmp62156
                                                __tmp62155))))))))))
                    (_rpls61850_
                     (map (lambda (_pl62094_)
                            (let ((_g62161_
                                   (let ()
                                     (declare (not safe))
                                     (append-reverse-until
                                      _struct?61839_
                                      _pl62094_
                                      '()))))
                              (begin
                                (let ((_g62162_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g62161_)
                                             (##vector-length _g62161_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g62162_ 2)))
                                      (error "Context expects 2 values"
                                             _g62162_)))
                                (let ((_tl62096_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g62161_ 0)))
                                      (_rh62097_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g62161_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (_merge-sit!61849_ _tl62096_))
                                    _rh62097_)))))
                          _pls61845_))
                    (_unsitr-rpl61851_
                     (lambda (_rpl62040_)
                       (let _u62042_ ((_pl-rhead62044_ _rpl62040_)
                                      (_pl-tail62045_ '())
                                      (_sit-rhead62046_ (reverse _sit61846_))
                                      (_sit-tail62047_ '()))
                         (let* ((_pl-rhead6204862057_ _pl-rhead62044_)
                                (_E6205162061_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"No clause matching"
                                            _pl-rhead6204862057_)))))
                           (let ((_K6205562091_ (lambda () _pl-tail62045_))
                                 (_K6205262075_
                                  (lambda (_plrh62065_ _c62066_)
                                    (if (member _c62066_
                                                _sit-tail62047_
                                                _eq61841_)
                                        (let ((__tmp62173
                                               (let ((__tmp62174
                                                      (reverse _pl-rhead62044_)))
                                                 (declare (not safe))
                                                 (_get-names61847_
                                                  __tmp62174)))
                                              (__tmp62172
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names61847_
                                                  _pl-tail62045_)))
                                              (__tmp62170
                                               (let ((__tmp62171
                                                      (reverse _sit-rhead62046_)))
                                                 (declare (not safe))
                                                 (_get-names61847_
                                                  __tmp62171)))
                                              (__tmp62169
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names61847_
                                                  _sit-tail62047_)))
                                              (__tmp62168
                                               (_get-name61843_ _c62066_)))
                                          (declare (not safe))
                                          (_err61848_
                                           'precedence-list-head:
                                           __tmp62173
                                           'precedence-list-tail:
                                           __tmp62172
                                           'single-inheritance-head:
                                           __tmp62170
                                           'single-inheritance-tail:
                                           __tmp62169
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp62168))
                                        (let ((_g62163_
                                               (let ((__tmp62165
                                                      (lambda (_g6206762069_)
                                                        (_eq61841_
                                                         _c62066_
                                                         _g6206762069_))))
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  __tmp62165
                                                  _sit-rhead62046_
                                                  _sit-tail62047_))))
                                          (begin
                                            (let ((_g62164_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g62163_)
                                                         (##vector-length
                                                          _g62163_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g62164_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g62164_)))
                                            (let ((_sit-rh262072_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g62163_
                                                      0)))
                                                  (_sit-tl262073_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g62163_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _sit-rh262072_))
                                                  (let ((__tmp62167
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _c62066_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pl-tail62045_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_u62042_
                                                     _plrh62065_
                                                     __tmp62167
                                                     '()
                                                     _sit-tl262073_))
                                                  (let ((__tmp62166
                                                         (cdr _sit-rh262072_)))
                                                    (declare (not safe))
                                                    (_u62042_
                                                     _plrh62065_
                                                     _pl-tail62045_
                                                     __tmp62166
                                                     _sit-tl262073_))))))))))
                             (let ((_try-match6205062087_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _pl-rhead6204862057_))
                                          (let ((_tl6205462080_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _pl-rhead6204862057_)))
                                                (_hd6205362078_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _pl-rhead6204862057_))))
                                            (let ((_c62083_ _hd6205362078_)
                                                  (_plrh62085_ _tl6205462080_))
                                              (let ()
                                                (declare (not safe))
                                                (_K6205262075_
                                                 _plrh62085_
                                                 _c62083_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E6205162061_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _pl-rhead6204862057_))
                                   (let ()
                                     (declare (not safe))
                                     (_K6205562091_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match6205062087_)))))))))
                    (_g62175_
                     (let ((_g62176_
                            (let ((__tmp62178 (reverse _supers61835_)))
                              (declare (not safe))
                              (append1! _rpls61850_ __tmp62178))))
                       #!void
                       _g62176_))
                    (_g62179_
                     (let ((_g62180_
                            (set! _pls61845_
                                  (map _unsitr-rpl61851_ _rpls61850_))))
                       #!void
                       _g62180_))
                    (_c3-select-next61852_
                     (lambda (_tails61990_)
                       (let ((_candidate?61996_
                              (lambda (_c61992_)
                                (let ((__tmp62182
                                       (lambda (_tail61994_)
                                         (let ((__tmp62183
                                                (member _c61992_
                                                        (cdr _tail61994_)
                                                        _eq61841_)))
                                           (declare (not safe))
                                           (not __tmp62183)))))
                                  (declare (not safe))
                                  (andmap1 __tmp62182 _tails61990_)))))
                         (let _loop61998_ ((_ts62000_ _tails61990_))
                           (let* ((_ts6200162011_ _ts62000_)
                                  (_else6200362019_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_err61848_))))
                                  (_K6200562025_
                                   (lambda (_rts62022_ _c62023_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_candidate?61996_ _c62023_))
                                         _c62023_
                                         (let ()
                                           (declare (not safe))
                                           (_loop61998_ _rts62022_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _ts6200162011_))
                                 (let ((_hd6200662028_
                                        (let ()
                                          (declare (not safe))
                                          (##car _ts6200162011_)))
                                       (_tl6200762030_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _ts6200162011_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _hd6200662028_))
                                       (let* ((_hd6200862033_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _hd6200662028_)))
                                              (_c62036_ _hd6200862033_)
                                              (_rts62038_ _tl6200762030_))
                                         (declare (not safe))
                                         (_K6200562025_ _rts62038_ _c62036_))
                                       (let ()
                                         (declare (not safe))
                                         (_err61848_))))
                                 (let ()
                                   (declare (not safe))
                                   (_err61848_))))))))
                    (_remove-next!61853_
                     (lambda (_next61935_ _tails61936_)
                       (let _loop61938_ ((_t61940_ _tails61936_))
                         (let* ((_t6194161952_ _t61940_)
                                (_E6194461956_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"No clause matching"
                                            _t6194161952_)))))
                           (let ((_K6195061987_ (lambda () _tails61936_))
                                 (_K6194561964_
                                  (lambda (_more61960_ _tail61961_ _head61962_)
                                    (if (_eq61841_ _head61962_ _next61935_)
                                        (set-car! _t61940_ _tail61961_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_loop61938_ _more61960_)))))
                             (let ((_try-match6194361983_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _t6194161952_))
                                          (let ((_tl6194761969_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _t6194161952_)))
                                                (_hd6194661967_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _t6194161952_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _hd6194661967_))
                                                (let ((_tl6194961974_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _hd6194661967_)))
                                                      (_hd6194861972_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _hd6194661967_))))
                                                  (let ((_head61977_
                                                         _hd6194861972_)
                                                        (_tail61979_
                                                         _tl6194961974_)
                                                        (_more61981_
                                                         _tl6194761969_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K6194561964_
                                                       _more61981_
                                                       _tail61979_
                                                       _head61977_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_E6194461956_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E6194461956_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _t6194161952_))
                                   (let ()
                                     (declare (not safe))
                                     (_K6195061987_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match6194361983_)))))))))
                    (_precedence-list61854_
                     (let _c3loop61885_ ((_rhead61887_ _rhead61834_)
                                         (_tails61888_ _pls61845_))
                       (let* ((_tails61890_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _tails61888_)))
                              (_tails6189161901_ _tails61890_)
                              (_else6189461912_
                               (lambda ()
                                 (let ((_next61909_
                                        (let ()
                                          (declare (not safe))
                                          (_c3-select-next61852_
                                           _tails61890_))))
                                   (let ((__tmp62185
                                          (let ()
                                            (declare (not safe))
                                            (cons _next61909_ _rhead61887_)))
                                         (__tmp62184
                                          (let ()
                                            (declare (not safe))
                                            (_remove-next!61853_
                                             _next61909_
                                             _tails61890_))))
                                     (declare (not safe))
                                     (_c3loop61885_ __tmp62185 __tmp62184))))))
                         (let ((_K6189961932_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (append-reverse _rhead61887_ _sit61846_))))
                               (_K6189661918_
                                (lambda (_tail61916_)
                                  (let ((__tmp62186
                                         (append _tail61916_ _sit61846_)))
                                    (declare (not safe))
                                    (append-reverse
                                     _rhead61887_
                                     __tmp62186)))))
                           (let ((_try-match6189361928_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tails6189161901_))
                                        (let ((_tl6189861923_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tails6189161901_)))
                                              (_hd6189761921_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tails6189161901_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _tl6189861923_))
                                              (let ((_tail61926_
                                                     _hd6189761921_))
                                                (declare (not safe))
                                                (_K6189661918_ _tail61926_))
                                              (let ()
                                                (declare (not safe))
                                                (_else6189461912_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else6189461912_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tails6189161901_))
                                 (let () (declare (not safe)) (_K6189961932_))
                                 (let ()
                                   (declare (not safe))
                                   (_try-match6189361928_))))))))
                    (_super-struct61855_
                     (let* ((_sit6185661864_ _sit61846_)
                            (_else6185861872_ (lambda () '#f))
                            (_K6186061877_ (lambda (_s61875_) _s61875_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _sit6185661864_))
                           (let* ((_hd6186161880_
                                   (let ()
                                     (declare (not safe))
                                     (##car _sit6185661864_)))
                                  (_s61883_ _hd6186161880_))
                             (declare (not safe))
                             (_K6186061877_ _s61883_))
                           (let () (declare (not safe)) (_else6185861872_))))))
            (values _precedence-list61854_ _super-struct61855_)))))
    (define c4-linearize__@
      (lambda (_keys6181962116_ . _args62118_)
        (apply c4-linearize__%
               _keys6181962116_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys6181962116_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6181962116_ 'struct: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6181962116_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6181962116_ 'get-name: absent-value))
               _args62118_)))
    (define c4-linearize
      (lambda _args6182462124_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _args6182462124_)))))
