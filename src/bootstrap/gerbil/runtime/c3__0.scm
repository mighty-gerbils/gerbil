(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1710632267)
  (begin
    (define c4-linearize__%
      (lambda (_g62251_
               _get-precedence-list6191861924_
               _struct?6191961926_
               _eq6192061928_
               _get-name6192161930_
               _rhead61932_
               _supers61933_)
        (let* ((_get-precedence-list61935_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-precedence-list6191861924_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument"
                             'get-precedence-list:))
                    _get-precedence-list6191861924_))
               (_struct?61937_
                (if (let ()
                      (declare (not safe))
                      (eq? _struct?6191961926_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'struct:))
                    _struct?6191961926_))
               (_eq61939_
                (if (let ()
                      (declare (not safe))
                      (eq? _eq6192061928_ absent-value))
                    eq?
                    _eq6192061928_))
               (_get-name61941_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-name6192161930_ absent-value))
                    identity
                    _get-name6192161930_)))
          (letrec* ((_pls61943_ (map _get-precedence-list61935_ _supers61933_))
                    (_sit61944_ '())
                    (_get-names61945_
                     (lambda (_lst62209_) (map _get-name61941_ _lst62209_)))
                    (_err61946_
                     (lambda _a62207_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp62252 (reverse _rhead61932_)))
                                (declare (not safe))
                                (_get-names61945_ __tmp62252))
                              'precedence-lists:
                              (map _get-names61945_ _pls61943_)
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_get-names61945_ _sit61944_))
                              _a62207_)))
                    (_merge-sit!61947_
                     (lambda (_sit262197_)
                       (if (let () (declare (not safe)) (null? _sit262197_))
                           '#!void
                           (if (let () (declare (not safe)) (null? _sit61944_))
                               (set! _sit61944_ _sit262197_)
                               (let _loop62199_ ((_t162201_ _sit61944_)
                                                 (_t262202_ _sit262197_))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _t162201_ _sit262197_))
                                     '#!void
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _t262202_ _sit61944_))
                                         (set! _sit61944_ _sit262197_)
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (null? _t162201_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (null? _t262202_)))
                                             (let ((__tmp62255
                                                    (let ((__tmp62258
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_get-names61945_
                                                              _sit61944_)))
                                                          (__tmp62256
                                                           (let ((__tmp62257
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_get-names61945_ _sit262197_))))
                     (declare (not safe))
                     (cons __tmp62257 '()))))
              (declare (not safe))
              (cons __tmp62258 __tmp62256))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_err61946_
                                                'single-inheritance-incompatibility:
                                                __tmp62255))
                                             (let ((__tmp62254 (cdr _t162201_))
                                                   (__tmp62253
                                                    (cdr _t262202_)))
                                               (declare (not safe))
                                               (_loop62199_
                                                __tmp62254
                                                __tmp62253))))))))))
                    (_rpls61948_
                     (map (lambda (_pl62192_)
                            (let ((_g62259_
                                   (let ()
                                     (declare (not safe))
                                     (append-reverse-until
                                      _struct?61937_
                                      _pl62192_
                                      '()))))
                              (begin
                                (let ((_g62260_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g62259_)
                                             (##vector-length _g62259_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g62260_ 2)))
                                      (error "Context expects 2 values"
                                             _g62260_)))
                                (let ((_tl62194_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g62259_ 0)))
                                      (_rh62195_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g62259_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (_merge-sit!61947_ _tl62194_))
                                    _rh62195_)))))
                          _pls61943_))
                    (_unsitr-rpl61949_
                     (lambda (_rpl62138_)
                       (let _u62140_ ((_pl-rhead62142_ _rpl62138_)
                                      (_pl-tail62143_ '())
                                      (_sit-rhead62144_ (reverse _sit61944_))
                                      (_sit-tail62145_ '()))
                         (let* ((_pl-rhead6214662155_ _pl-rhead62142_)
                                (_E6214962159_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"No clause matching"
                                            _pl-rhead6214662155_)))))
                           (let ((_K6215362189_ (lambda () _pl-tail62143_))
                                 (_K6215062173_
                                  (lambda (_plrh62163_ _c62164_)
                                    (if (member _c62164_
                                                _sit-tail62145_
                                                _eq61939_)
                                        (let ((__tmp62271
                                               (let ((__tmp62272
                                                      (reverse _pl-rhead62142_)))
                                                 (declare (not safe))
                                                 (_get-names61945_
                                                  __tmp62272)))
                                              (__tmp62270
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names61945_
                                                  _pl-tail62143_)))
                                              (__tmp62268
                                               (let ((__tmp62269
                                                      (reverse _sit-rhead62144_)))
                                                 (declare (not safe))
                                                 (_get-names61945_
                                                  __tmp62269)))
                                              (__tmp62267
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names61945_
                                                  _sit-tail62145_)))
                                              (__tmp62266
                                               (_get-name61941_ _c62164_)))
                                          (declare (not safe))
                                          (_err61946_
                                           'precedence-list-head:
                                           __tmp62271
                                           'precedence-list-tail:
                                           __tmp62270
                                           'single-inheritance-head:
                                           __tmp62268
                                           'single-inheritance-tail:
                                           __tmp62267
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp62266))
                                        (let ((_g62261_
                                               (let ((__tmp62263
                                                      (lambda (_g6216562167_)
                                                        (_eq61939_
                                                         _c62164_
                                                         _g6216562167_))))
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  __tmp62263
                                                  _sit-rhead62144_
                                                  _sit-tail62145_))))
                                          (begin
                                            (let ((_g62262_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g62261_)
                                                         (##vector-length
                                                          _g62261_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g62262_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g62262_)))
                                            (let ((_sit-rh262170_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g62261_
                                                      0)))
                                                  (_sit-tl262171_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g62261_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _sit-rh262170_))
                                                  (let ((__tmp62265
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _c62164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pl-tail62143_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_u62140_
                                                     _plrh62163_
                                                     __tmp62265
                                                     '()
                                                     _sit-tl262171_))
                                                  (let ((__tmp62264
                                                         (cdr _sit-rh262170_)))
                                                    (declare (not safe))
                                                    (_u62140_
                                                     _plrh62163_
                                                     _pl-tail62143_
                                                     __tmp62264
                                                     _sit-tl262171_))))))))))
                             (let ((_try-match6214862185_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _pl-rhead6214662155_))
                                          (let ((_tl6215262178_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _pl-rhead6214662155_)))
                                                (_hd6215162176_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _pl-rhead6214662155_))))
                                            (let ((_c62181_ _hd6215162176_)
                                                  (_plrh62183_ _tl6215262178_))
                                              (let ()
                                                (declare (not safe))
                                                (_K6215062173_
                                                 _plrh62183_
                                                 _c62181_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E6214962159_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _pl-rhead6214662155_))
                                   (let ()
                                     (declare (not safe))
                                     (_K6215362189_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match6214862185_)))))))))
                    (_g62273_
                     (let ((_g62274_
                            (let ((__tmp62276 (reverse _supers61933_)))
                              (declare (not safe))
                              (append1! _rpls61948_ __tmp62276))))
                       #!void
                       _g62274_))
                    (_g62277_
                     (let ((_g62278_
                            (set! _pls61943_
                                  (map _unsitr-rpl61949_ _rpls61948_))))
                       #!void
                       _g62278_))
                    (_c3-select-next61950_
                     (lambda (_tails62088_)
                       (let ((_candidate?62094_
                              (lambda (_c62090_)
                                (let ((__tmp62280
                                       (lambda (_tail62092_)
                                         (let ((__tmp62281
                                                (member _c62090_
                                                        (cdr _tail62092_)
                                                        _eq61939_)))
                                           (declare (not safe))
                                           (not __tmp62281)))))
                                  (declare (not safe))
                                  (andmap1 __tmp62280 _tails62088_)))))
                         (let _loop62096_ ((_ts62098_ _tails62088_))
                           (let* ((_ts6209962109_ _ts62098_)
                                  (_else6210162117_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_err61946_))))
                                  (_K6210362123_
                                   (lambda (_rts62120_ _c62121_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_candidate?62094_ _c62121_))
                                         _c62121_
                                         (let ()
                                           (declare (not safe))
                                           (_loop62096_ _rts62120_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _ts6209962109_))
                                 (let ((_hd6210462126_
                                        (let ()
                                          (declare (not safe))
                                          (##car _ts6209962109_)))
                                       (_tl6210562128_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _ts6209962109_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _hd6210462126_))
                                       (let* ((_hd6210662131_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _hd6210462126_)))
                                              (_c62134_ _hd6210662131_)
                                              (_rts62136_ _tl6210562128_))
                                         (declare (not safe))
                                         (_K6210362123_ _rts62136_ _c62134_))
                                       (let ()
                                         (declare (not safe))
                                         (_err61946_))))
                                 (let ()
                                   (declare (not safe))
                                   (_err61946_))))))))
                    (_remove-next!61951_
                     (lambda (_next62033_ _tails62034_)
                       (let _loop62036_ ((_t62038_ _tails62034_))
                         (let* ((_t6203962050_ _t62038_)
                                (_E6204262054_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"No clause matching"
                                            _t6203962050_)))))
                           (let ((_K6204862085_ (lambda () _tails62034_))
                                 (_K6204362062_
                                  (lambda (_more62058_ _tail62059_ _head62060_)
                                    (if (_eq61939_ _head62060_ _next62033_)
                                        (set-car! _t62038_ _tail62059_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_loop62036_ _more62058_)))))
                             (let ((_try-match6204162081_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _t6203962050_))
                                          (let ((_tl6204562067_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _t6203962050_)))
                                                (_hd6204462065_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _t6203962050_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _hd6204462065_))
                                                (let ((_tl6204762072_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _hd6204462065_)))
                                                      (_hd6204662070_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _hd6204462065_))))
                                                  (let ((_head62075_
                                                         _hd6204662070_)
                                                        (_tail62077_
                                                         _tl6204762072_)
                                                        (_more62079_
                                                         _tl6204562067_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K6204362062_
                                                       _more62079_
                                                       _tail62077_
                                                       _head62075_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_E6204262054_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E6204262054_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _t6203962050_))
                                   (let ()
                                     (declare (not safe))
                                     (_K6204862085_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match6204162081_)))))))))
                    (_precedence-list61952_
                     (let _c3loop61983_ ((_rhead61985_ _rhead61932_)
                                         (_tails61986_ _pls61943_))
                       (let* ((_tails61988_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _tails61986_)))
                              (_tails6198961999_ _tails61988_)
                              (_else6199262010_
                               (lambda ()
                                 (let ((_next62007_
                                        (let ()
                                          (declare (not safe))
                                          (_c3-select-next61950_
                                           _tails61988_))))
                                   (let ((__tmp62283
                                          (let ()
                                            (declare (not safe))
                                            (cons _next62007_ _rhead61985_)))
                                         (__tmp62282
                                          (let ()
                                            (declare (not safe))
                                            (_remove-next!61951_
                                             _next62007_
                                             _tails61988_))))
                                     (declare (not safe))
                                     (_c3loop61983_ __tmp62283 __tmp62282))))))
                         (let ((_K6199762030_
                                (lambda ()
                                  (append-reverse _rhead61985_ _sit61944_)))
                               (_K6199462016_
                                (lambda (_tail62014_)
                                  (append-reverse
                                   _rhead61985_
                                   (append _tail62014_ _sit61944_)))))
                           (let ((_try-match6199162026_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tails6198961999_))
                                        (let ((_tl6199662021_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tails6198961999_)))
                                              (_hd6199562019_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tails6198961999_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _tl6199662021_))
                                              (let ((_tail62024_
                                                     _hd6199562019_))
                                                (declare (not safe))
                                                (_K6199462016_ _tail62024_))
                                              (let ()
                                                (declare (not safe))
                                                (_else6199262010_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else6199262010_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tails6198961999_))
                                 (let () (declare (not safe)) (_K6199762030_))
                                 (let ()
                                   (declare (not safe))
                                   (_try-match6199162026_))))))))
                    (_super-struct61953_
                     (let* ((_sit6195461962_ _sit61944_)
                            (_else6195661970_ (lambda () '#f))
                            (_K6195861975_ (lambda (_s61973_) _s61973_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _sit6195461962_))
                           (let* ((_hd6195961978_
                                   (let ()
                                     (declare (not safe))
                                     (##car _sit6195461962_)))
                                  (_s61981_ _hd6195961978_))
                             (declare (not safe))
                             (_K6195861975_ _s61981_))
                           (let () (declare (not safe)) (_else6195661970_))))))
            (values _precedence-list61952_ _super-struct61953_)))))
    (define c4-linearize__@
      (lambda (_keys6191762214_ . _args62216_)
        (apply c4-linearize__%
               _keys6191762214_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys6191762214_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6191762214_ 'struct: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6191762214_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6191762214_ 'get-name: absent-value))
               _args62216_)))
    (define c4-linearize
      (lambda _args6192262222_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _args6192262222_)))))
