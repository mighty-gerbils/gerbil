(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1708387687)
  (begin
    (define c4-linearize__%
      (lambda (_g61315_
               _get-precedence-list6098260988_
               _struct?6098360990_
               _eq6098460992_
               _get-name6098560994_
               _rhead60996_
               _supers60997_)
        (let* ((_get-precedence-list60999_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-precedence-list6098260988_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument"
                             'get-precedence-list:))
                    _get-precedence-list6098260988_))
               (_struct?61001_
                (if (let ()
                      (declare (not safe))
                      (eq? _struct?6098360990_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'struct:))
                    _struct?6098360990_))
               (_eq61003_
                (if (let ()
                      (declare (not safe))
                      (eq? _eq6098460992_ absent-value))
                    eq?
                    _eq6098460992_))
               (_get-name61005_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-name6098560994_ absent-value))
                    identity
                    _get-name6098560994_)))
          (letrec* ((_pls61007_ (map _get-precedence-list60999_ _supers60997_))
                    (_sit61008_ '())
                    (_get-names61009_
                     (lambda (_lst61273_) (map _get-name61005_ _lst61273_)))
                    (_err61010_
                     (lambda _a61271_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp61316 (reverse _rhead60996_)))
                                (declare (not safe))
                                (_get-names61009_ __tmp61316))
                              'precedence-lists:
                              (map _get-names61009_ _pls61007_)
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_get-names61009_ _sit61008_))
                              _a61271_)))
                    (_merge-sit!61011_
                     (lambda (_sit261261_)
                       (if (let () (declare (not safe)) (null? _sit261261_))
                           '#!void
                           (if (let () (declare (not safe)) (null? _sit61008_))
                               (set! _sit61008_ _sit261261_)
                               (let _loop61263_ ((_t161265_ _sit61008_)
                                                 (_t261266_ _sit261261_))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _t161265_ _sit261261_))
                                     '#!void
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _t261266_ _sit61008_))
                                         (set! _sit61008_ _sit261261_)
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (null? _t161265_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (null? _t261266_)))
                                             (let ((__tmp61319
                                                    (let ((__tmp61322
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_get-names61009_
                                                              _sit61008_)))
                                                          (__tmp61320
                                                           (let ((__tmp61321
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_get-names61009_ _sit261261_))))
                     (declare (not safe))
                     (cons __tmp61321 '()))))
              (declare (not safe))
              (cons __tmp61322 __tmp61320))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_err61010_
                                                'single-inheritance-incompatibility:
                                                __tmp61319))
                                             (let ((__tmp61318 (cdr _t161265_))
                                                   (__tmp61317
                                                    (cdr _t261266_)))
                                               (declare (not safe))
                                               (_loop61263_
                                                __tmp61318
                                                __tmp61317))))))))))
                    (_rpls61012_
                     (map (lambda (_pl61256_)
                            (let ((_g61323_
                                   (let ()
                                     (declare (not safe))
                                     (append-reverse-until
                                      _struct?61001_
                                      _pl61256_
                                      '()))))
                              (begin
                                (let ((_g61324_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g61323_)
                                             (##vector-length _g61323_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g61324_ 2)))
                                      (error "Context expects 2 values"
                                             _g61324_)))
                                (let ((_tl61258_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g61323_ 0)))
                                      (_rh61259_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g61323_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (_merge-sit!61011_ _tl61258_))
                                    _rh61259_)))))
                          _pls61007_))
                    (_unsitr-rpl61013_
                     (lambda (_rpl61202_)
                       (let _u61204_ ((_pl-rhead61206_ _rpl61202_)
                                      (_pl-tail61207_ '())
                                      (_sit-rhead61208_ (reverse _sit61008_))
                                      (_sit-tail61209_ '()))
                         (let* ((_pl-rhead6121061219_ _pl-rhead61206_)
                                (_E6121361223_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"No clause matching"
                                            _pl-rhead6121061219_)))))
                           (let ((_K6121761253_ (lambda () _pl-tail61207_))
                                 (_K6121461237_
                                  (lambda (_plrh61227_ _c61228_)
                                    (if (member _c61228_
                                                _sit-tail61209_
                                                _eq61003_)
                                        (let ((__tmp61335
                                               (let ((__tmp61336
                                                      (reverse _pl-rhead61206_)))
                                                 (declare (not safe))
                                                 (_get-names61009_
                                                  __tmp61336)))
                                              (__tmp61334
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names61009_
                                                  _pl-tail61207_)))
                                              (__tmp61332
                                               (let ((__tmp61333
                                                      (reverse _sit-rhead61208_)))
                                                 (declare (not safe))
                                                 (_get-names61009_
                                                  __tmp61333)))
                                              (__tmp61331
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names61009_
                                                  _sit-tail61209_)))
                                              (__tmp61330
                                               (_get-name61005_ _c61228_)))
                                          (declare (not safe))
                                          (_err61010_
                                           'precedence-list-head:
                                           __tmp61335
                                           'precedence-list-tail:
                                           __tmp61334
                                           'single-inheritance-head:
                                           __tmp61332
                                           'single-inheritance-tail:
                                           __tmp61331
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp61330))
                                        (let ((_g61325_
                                               (let ((__tmp61327
                                                      (lambda (_g6122961231_)
                                                        (_eq61003_
                                                         _c61228_
                                                         _g6122961231_))))
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  __tmp61327
                                                  _sit-rhead61208_
                                                  _sit-tail61209_))))
                                          (begin
                                            (let ((_g61326_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g61325_)
                                                         (##vector-length
                                                          _g61325_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g61326_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g61326_)))
                                            (let ((_sit-rh261234_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g61325_
                                                      0)))
                                                  (_sit-tl261235_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g61325_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _sit-rh261234_))
                                                  (let ((__tmp61329
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _c61228_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pl-tail61207_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_u61204_
                                                     _plrh61227_
                                                     __tmp61329
                                                     '()
                                                     _sit-tl261235_))
                                                  (let ((__tmp61328
                                                         (cdr _sit-rh261234_)))
                                                    (declare (not safe))
                                                    (_u61204_
                                                     _plrh61227_
                                                     _pl-tail61207_
                                                     __tmp61328
                                                     _sit-tl261235_))))))))))
                             (let ((_try-match6121261249_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _pl-rhead6121061219_))
                                          (let ((_tl6121661242_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _pl-rhead6121061219_)))
                                                (_hd6121561240_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _pl-rhead6121061219_))))
                                            (let ((_c61245_ _hd6121561240_)
                                                  (_plrh61247_ _tl6121661242_))
                                              (let ()
                                                (declare (not safe))
                                                (_K6121461237_
                                                 _plrh61247_
                                                 _c61245_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E6121361223_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _pl-rhead6121061219_))
                                   (let ()
                                     (declare (not safe))
                                     (_K6121761253_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match6121261249_)))))))))
                    (_g61337_
                     (let ((_g61338_
                            (let ((__tmp61340 (reverse _supers60997_)))
                              (declare (not safe))
                              (append1! _rpls61012_ __tmp61340))))
                       #!void
                       _g61338_))
                    (_g61341_
                     (let ((_g61342_
                            (set! _pls61007_
                                  (map _unsitr-rpl61013_ _rpls61012_))))
                       #!void
                       _g61342_))
                    (_c3-select-next61014_
                     (lambda (_tails61152_)
                       (let ((_candidate?61158_
                              (lambda (_c61154_)
                                (let ((__tmp61344
                                       (lambda (_tail61156_)
                                         (let ((__tmp61345
                                                (member _c61154_
                                                        (cdr _tail61156_)
                                                        _eq61003_)))
                                           (declare (not safe))
                                           (not __tmp61345)))))
                                  (declare (not safe))
                                  (andmap1 __tmp61344 _tails61152_)))))
                         (let _loop61160_ ((_ts61162_ _tails61152_))
                           (let* ((_ts6116361173_ _ts61162_)
                                  (_else6116561181_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_err61010_))))
                                  (_K6116761187_
                                   (lambda (_rts61184_ _c61185_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_candidate?61158_ _c61185_))
                                         _c61185_
                                         (let ()
                                           (declare (not safe))
                                           (_loop61160_ _rts61184_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _ts6116361173_))
                                 (let ((_hd6116861190_
                                        (let ()
                                          (declare (not safe))
                                          (##car _ts6116361173_)))
                                       (_tl6116961192_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _ts6116361173_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _hd6116861190_))
                                       (let* ((_hd6117061195_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _hd6116861190_)))
                                              (_c61198_ _hd6117061195_)
                                              (_rts61200_ _tl6116961192_))
                                         (declare (not safe))
                                         (_K6116761187_ _rts61200_ _c61198_))
                                       (let ()
                                         (declare (not safe))
                                         (_err61010_))))
                                 (let ()
                                   (declare (not safe))
                                   (_err61010_))))))))
                    (_remove-next!61015_
                     (lambda (_next61097_ _tails61098_)
                       (let _loop61100_ ((_t61102_ _tails61098_))
                         (let* ((_t6110361114_ _t61102_)
                                (_E6110661118_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"No clause matching"
                                            _t6110361114_)))))
                           (let ((_K6111261149_ (lambda () _tails61098_))
                                 (_K6110761126_
                                  (lambda (_more61122_ _tail61123_ _head61124_)
                                    (if (_eq61003_ _head61124_ _next61097_)
                                        (set-car! _t61102_ _tail61123_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_loop61100_ _more61122_)))))
                             (let ((_try-match6110561145_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _t6110361114_))
                                          (let ((_tl6110961131_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _t6110361114_)))
                                                (_hd6110861129_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _t6110361114_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _hd6110861129_))
                                                (let ((_tl6111161136_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _hd6110861129_)))
                                                      (_hd6111061134_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _hd6110861129_))))
                                                  (let ((_head61139_
                                                         _hd6111061134_)
                                                        (_tail61141_
                                                         _tl6111161136_)
                                                        (_more61143_
                                                         _tl6110961131_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K6110761126_
                                                       _more61143_
                                                       _tail61141_
                                                       _head61139_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_E6110661118_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E6110661118_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _t6110361114_))
                                   (let ()
                                     (declare (not safe))
                                     (_K6111261149_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match6110561145_)))))))))
                    (_precedence-list61016_
                     (let _c3loop61047_ ((_rhead61049_ _rhead60996_)
                                         (_tails61050_ _pls61007_))
                       (let* ((_tails61052_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _tails61050_)))
                              (_tails6105361063_ _tails61052_)
                              (_else6105661074_
                               (lambda ()
                                 (let ((_next61071_
                                        (let ()
                                          (declare (not safe))
                                          (_c3-select-next61014_
                                           _tails61052_))))
                                   (let ((__tmp61347
                                          (let ()
                                            (declare (not safe))
                                            (cons _next61071_ _rhead61049_)))
                                         (__tmp61346
                                          (let ()
                                            (declare (not safe))
                                            (_remove-next!61015_
                                             _next61071_
                                             _tails61052_))))
                                     (declare (not safe))
                                     (_c3loop61047_ __tmp61347 __tmp61346))))))
                         (let ((_K6106161094_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (append-reverse _rhead61049_ _sit61008_))))
                               (_K6105861080_
                                (lambda (_tail61078_)
                                  (let ((__tmp61348
                                         (append _tail61078_ _sit61008_)))
                                    (declare (not safe))
                                    (append-reverse
                                     _rhead61049_
                                     __tmp61348)))))
                           (let ((_try-match6105561090_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tails6105361063_))
                                        (let ((_tl6106061085_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tails6105361063_)))
                                              (_hd6105961083_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tails6105361063_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _tl6106061085_))
                                              (let ((_tail61088_
                                                     _hd6105961083_))
                                                (declare (not safe))
                                                (_K6105861080_ _tail61088_))
                                              (let ()
                                                (declare (not safe))
                                                (_else6105661074_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else6105661074_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tails6105361063_))
                                 (let () (declare (not safe)) (_K6106161094_))
                                 (let ()
                                   (declare (not safe))
                                   (_try-match6105561090_))))))))
                    (_super-struct61017_
                     (let* ((_sit6101861026_ _sit61008_)
                            (_else6102061034_ (lambda () '#f))
                            (_K6102261039_ (lambda (_s61037_) _s61037_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _sit6101861026_))
                           (let* ((_hd6102361042_
                                   (let ()
                                     (declare (not safe))
                                     (##car _sit6101861026_)))
                                  (_s61045_ _hd6102361042_))
                             (declare (not safe))
                             (_K6102261039_ _s61045_))
                           (let () (declare (not safe)) (_else6102061034_))))))
            (values _precedence-list61016_ _super-struct61017_)))))
    (define c4-linearize__@
      (lambda (_keys6098161278_ . _args61280_)
        (apply c4-linearize__%
               _keys6098161278_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys6098161278_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6098161278_ 'struct: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6098161278_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6098161278_ 'get-name: absent-value))
               _args61280_)))
    (define c4-linearize
      (lambda _args6098661286_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _args6098661286_)))))
