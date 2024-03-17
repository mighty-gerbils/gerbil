(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1710699090)
  (begin
    (define c4-linearize__%
      (lambda (_g62258_
               _get-precedence-list6192561931_
               _struct?6192661933_
               _eq6192761935_
               _get-name6192861937_
               _rhead61939_
               _supers61940_)
        (let* ((_get-precedence-list61942_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-precedence-list6192561931_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument"
                             'get-precedence-list:))
                    _get-precedence-list6192561931_))
               (_struct?61944_
                (if (let ()
                      (declare (not safe))
                      (eq? _struct?6192661933_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'struct:))
                    _struct?6192661933_))
               (_eq61946_
                (if (let ()
                      (declare (not safe))
                      (eq? _eq6192761935_ absent-value))
                    eq?
                    _eq6192761935_))
               (_get-name61948_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-name6192861937_ absent-value))
                    identity
                    _get-name6192861937_)))
          (letrec* ((_pls61950_ (map _get-precedence-list61942_ _supers61940_))
                    (_sit61951_ '())
                    (_get-names61952_
                     (lambda (_lst62216_) (map _get-name61948_ _lst62216_)))
                    (_err61953_
                     (lambda _a62214_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp62259 (reverse _rhead61939_)))
                                (declare (not safe))
                                (_get-names61952_ __tmp62259))
                              'precedence-lists:
                              (map _get-names61952_ _pls61950_)
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_get-names61952_ _sit61951_))
                              _a62214_)))
                    (_merge-sit!61954_
                     (lambda (_sit262204_)
                       (if (let () (declare (not safe)) (null? _sit262204_))
                           '#!void
                           (if (let () (declare (not safe)) (null? _sit61951_))
                               (set! _sit61951_ _sit262204_)
                               (let _loop62206_ ((_t162208_ _sit61951_)
                                                 (_t262209_ _sit262204_))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _t162208_ _sit262204_))
                                     '#!void
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _t262209_ _sit61951_))
                                         (set! _sit61951_ _sit262204_)
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (null? _t162208_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (null? _t262209_)))
                                             (let ((__tmp62262
                                                    (let ((__tmp62265
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_get-names61952_
                                                              _sit61951_)))
                                                          (__tmp62263
                                                           (let ((__tmp62264
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_get-names61952_ _sit262204_))))
                     (declare (not safe))
                     (cons __tmp62264 '()))))
              (declare (not safe))
              (cons __tmp62265 __tmp62263))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_err61953_
                                                'single-inheritance-incompatibility:
                                                __tmp62262))
                                             (let ((__tmp62261 (cdr _t162208_))
                                                   (__tmp62260
                                                    (cdr _t262209_)))
                                               (declare (not safe))
                                               (_loop62206_
                                                __tmp62261
                                                __tmp62260))))))))))
                    (_rpls61955_
                     (map (lambda (_pl62199_)
                            (let ((_g62266_
                                   (let ()
                                     (declare (not safe))
                                     (append-reverse-until
                                      _struct?61944_
                                      _pl62199_
                                      '()))))
                              (begin
                                (let ((_g62267_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g62266_)
                                             (##vector-length _g62266_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g62267_ 2)))
                                      (error "Context expects 2 values"
                                             _g62267_)))
                                (let ((_tl62201_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g62266_ 0)))
                                      (_rh62202_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g62266_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (_merge-sit!61954_ _tl62201_))
                                    _rh62202_)))))
                          _pls61950_))
                    (_unsitr-rpl61956_
                     (lambda (_rpl62145_)
                       (let _u62147_ ((_pl-rhead62149_ _rpl62145_)
                                      (_pl-tail62150_ '())
                                      (_sit-rhead62151_ (reverse _sit61951_))
                                      (_sit-tail62152_ '()))
                         (let* ((_pl-rhead6215362162_ _pl-rhead62149_)
                                (_E6215662166_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"No clause matching"
                                            _pl-rhead6215362162_)))))
                           (let ((_K6216062196_ (lambda () _pl-tail62150_))
                                 (_K6215762180_
                                  (lambda (_plrh62170_ _c62171_)
                                    (if (member _c62171_
                                                _sit-tail62152_
                                                _eq61946_)
                                        (let ((__tmp62278
                                               (let ((__tmp62279
                                                      (reverse _pl-rhead62149_)))
                                                 (declare (not safe))
                                                 (_get-names61952_
                                                  __tmp62279)))
                                              (__tmp62277
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names61952_
                                                  _pl-tail62150_)))
                                              (__tmp62275
                                               (let ((__tmp62276
                                                      (reverse _sit-rhead62151_)))
                                                 (declare (not safe))
                                                 (_get-names61952_
                                                  __tmp62276)))
                                              (__tmp62274
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names61952_
                                                  _sit-tail62152_)))
                                              (__tmp62273
                                               (_get-name61948_ _c62171_)))
                                          (declare (not safe))
                                          (_err61953_
                                           'precedence-list-head:
                                           __tmp62278
                                           'precedence-list-tail:
                                           __tmp62277
                                           'single-inheritance-head:
                                           __tmp62275
                                           'single-inheritance-tail:
                                           __tmp62274
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp62273))
                                        (let ((_g62268_
                                               (let ((__tmp62270
                                                      (lambda (_g6217262174_)
                                                        (_eq61946_
                                                         _c62171_
                                                         _g6217262174_))))
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  __tmp62270
                                                  _sit-rhead62151_
                                                  _sit-tail62152_))))
                                          (begin
                                            (let ((_g62269_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g62268_)
                                                         (##vector-length
                                                          _g62268_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g62269_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g62269_)))
                                            (let ((_sit-rh262177_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g62268_
                                                      0)))
                                                  (_sit-tl262178_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g62268_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _sit-rh262177_))
                                                  (let ((__tmp62272
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _c62171_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pl-tail62150_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_u62147_
                                                     _plrh62170_
                                                     __tmp62272
                                                     '()
                                                     _sit-tl262178_))
                                                  (let ((__tmp62271
                                                         (cdr _sit-rh262177_)))
                                                    (declare (not safe))
                                                    (_u62147_
                                                     _plrh62170_
                                                     _pl-tail62150_
                                                     __tmp62271
                                                     _sit-tl262178_))))))))))
                             (let ((_try-match6215562192_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _pl-rhead6215362162_))
                                          (let ((_tl6215962185_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _pl-rhead6215362162_)))
                                                (_hd6215862183_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _pl-rhead6215362162_))))
                                            (let ((_c62188_ _hd6215862183_)
                                                  (_plrh62190_ _tl6215962185_))
                                              (let ()
                                                (declare (not safe))
                                                (_K6215762180_
                                                 _plrh62190_
                                                 _c62188_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E6215662166_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _pl-rhead6215362162_))
                                   (let ()
                                     (declare (not safe))
                                     (_K6216062196_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match6215562192_)))))))))
                    (_g62280_
                     (let ((_g62281_
                            (let ((__tmp62283 (reverse _supers61940_)))
                              (declare (not safe))
                              (append1! _rpls61955_ __tmp62283))))
                       #!void
                       _g62281_))
                    (_g62284_
                     (let ((_g62285_
                            (set! _pls61950_
                                  (map _unsitr-rpl61956_ _rpls61955_))))
                       #!void
                       _g62285_))
                    (_c3-select-next61957_
                     (lambda (_tails62095_)
                       (let ((_candidate?62101_
                              (lambda (_c62097_)
                                (let ((__tmp62287
                                       (lambda (_tail62099_)
                                         (let ((__tmp62288
                                                (member _c62097_
                                                        (cdr _tail62099_)
                                                        _eq61946_)))
                                           (declare (not safe))
                                           (not __tmp62288)))))
                                  (declare (not safe))
                                  (andmap1 __tmp62287 _tails62095_)))))
                         (let _loop62103_ ((_ts62105_ _tails62095_))
                           (let* ((_ts6210662116_ _ts62105_)
                                  (_else6210862124_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_err61953_))))
                                  (_K6211062130_
                                   (lambda (_rts62127_ _c62128_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_candidate?62101_ _c62128_))
                                         _c62128_
                                         (let ()
                                           (declare (not safe))
                                           (_loop62103_ _rts62127_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _ts6210662116_))
                                 (let ((_hd6211162133_
                                        (let ()
                                          (declare (not safe))
                                          (##car _ts6210662116_)))
                                       (_tl6211262135_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _ts6210662116_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _hd6211162133_))
                                       (let* ((_hd6211362138_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _hd6211162133_)))
                                              (_c62141_ _hd6211362138_)
                                              (_rts62143_ _tl6211262135_))
                                         (declare (not safe))
                                         (_K6211062130_ _rts62143_ _c62141_))
                                       (let ()
                                         (declare (not safe))
                                         (_err61953_))))
                                 (let ()
                                   (declare (not safe))
                                   (_err61953_))))))))
                    (_remove-next!61958_
                     (lambda (_next62040_ _tails62041_)
                       (let _loop62043_ ((_t62045_ _tails62041_))
                         (let* ((_t6204662057_ _t62045_)
                                (_E6204962061_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"No clause matching"
                                            _t6204662057_)))))
                           (let ((_K6205562092_ (lambda () _tails62041_))
                                 (_K6205062069_
                                  (lambda (_more62065_ _tail62066_ _head62067_)
                                    (if (_eq61946_ _head62067_ _next62040_)
                                        (set-car! _t62045_ _tail62066_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_loop62043_ _more62065_)))))
                             (let ((_try-match6204862088_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _t6204662057_))
                                          (let ((_tl6205262074_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _t6204662057_)))
                                                (_hd6205162072_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _t6204662057_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _hd6205162072_))
                                                (let ((_tl6205462079_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _hd6205162072_)))
                                                      (_hd6205362077_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _hd6205162072_))))
                                                  (let ((_head62082_
                                                         _hd6205362077_)
                                                        (_tail62084_
                                                         _tl6205462079_)
                                                        (_more62086_
                                                         _tl6205262074_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K6205062069_
                                                       _more62086_
                                                       _tail62084_
                                                       _head62082_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_E6204962061_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E6204962061_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _t6204662057_))
                                   (let ()
                                     (declare (not safe))
                                     (_K6205562092_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match6204862088_)))))))))
                    (_precedence-list61959_
                     (let _c3loop61990_ ((_rhead61992_ _rhead61939_)
                                         (_tails61993_ _pls61950_))
                       (let* ((_tails61995_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _tails61993_)))
                              (_tails6199662006_ _tails61995_)
                              (_else6199962017_
                               (lambda ()
                                 (let ((_next62014_
                                        (let ()
                                          (declare (not safe))
                                          (_c3-select-next61957_
                                           _tails61995_))))
                                   (let ((__tmp62290
                                          (let ()
                                            (declare (not safe))
                                            (cons _next62014_ _rhead61992_)))
                                         (__tmp62289
                                          (let ()
                                            (declare (not safe))
                                            (_remove-next!61958_
                                             _next62014_
                                             _tails61995_))))
                                     (declare (not safe))
                                     (_c3loop61990_ __tmp62290 __tmp62289))))))
                         (let ((_K6200462037_
                                (lambda ()
                                  (append-reverse _rhead61992_ _sit61951_)))
                               (_K6200162023_
                                (lambda (_tail62021_)
                                  (append-reverse
                                   _rhead61992_
                                   (append _tail62021_ _sit61951_)))))
                           (let ((_try-match6199862033_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tails6199662006_))
                                        (let ((_tl6200362028_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tails6199662006_)))
                                              (_hd6200262026_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tails6199662006_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _tl6200362028_))
                                              (let ((_tail62031_
                                                     _hd6200262026_))
                                                (declare (not safe))
                                                (_K6200162023_ _tail62031_))
                                              (let ()
                                                (declare (not safe))
                                                (_else6199962017_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else6199962017_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tails6199662006_))
                                 (let () (declare (not safe)) (_K6200462037_))
                                 (let ()
                                   (declare (not safe))
                                   (_try-match6199862033_))))))))
                    (_super-struct61960_
                     (let* ((_sit6196161969_ _sit61951_)
                            (_else6196361977_ (lambda () '#f))
                            (_K6196561982_ (lambda (_s61980_) _s61980_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _sit6196161969_))
                           (let* ((_hd6196661985_
                                   (let ()
                                     (declare (not safe))
                                     (##car _sit6196161969_)))
                                  (_s61988_ _hd6196661985_))
                             (declare (not safe))
                             (_K6196561982_ _s61988_))
                           (let () (declare (not safe)) (_else6196361977_))))))
            (values _precedence-list61959_ _super-struct61960_)))))
    (define c4-linearize__@
      (lambda (_keys6192462221_ . _args62223_)
        (apply c4-linearize__%
               _keys6192462221_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys6192462221_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6192462221_ 'struct: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6192462221_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6192462221_ 'get-name: absent-value))
               _args62223_)))
    (define c4-linearize
      (lambda _args6192962229_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _args6192962229_)))))
