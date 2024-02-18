(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1708247272)
  (begin
    (define c4-linearize__%
      (lambda (_g82508_
               _get-precedence-list7810878114_
               _struct?7810978116_
               _eq7811078118_
               _get-name7811178120_
               _rhead78122_
               _supers78123_)
        (let* ((_get-precedence-list78125_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-precedence-list7810878114_ absent-value))
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _get-precedence-list7810878114_))
               (_struct?78127_
                (if (let ()
                      (declare (not safe))
                      (eq? _struct?7810978116_ absent-value))
                    (error '"Missing required keyword argument" 'struct:)
                    _struct?7810978116_))
               (_eq78129_
                (if (let ()
                      (declare (not safe))
                      (eq? _eq7811078118_ absent-value))
                    eq?
                    _eq7811078118_))
               (_get-name78131_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-name7811178120_ absent-value))
                    identity
                    _get-name7811178120_)))
          (letrec* ((_pls78133_ (map _get-precedence-list78125_ _supers78123_))
                    (_sit78134_ '())
                    (_get-names78135_
                     (lambda (_lst78399_) (map _get-name78131_ _lst78399_)))
                    (_err78136_
                     (lambda _a78397_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp82509 (reverse _rhead78122_)))
                                (declare (not safe))
                                (_get-names78135_ __tmp82509))
                              'precedence-lists:
                              (map _get-names78135_ _pls78133_)
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_get-names78135_ _sit78134_))
                              _a78397_)))
                    (_merge-sit!78137_
                     (lambda (_sit278387_)
                       (if (let () (declare (not safe)) (null? _sit278387_))
                           '#!void
                           (if (let () (declare (not safe)) (null? _sit78134_))
                               (set! _sit78134_ _sit278387_)
                               (let _loop78389_ ((_t178391_ _sit78134_)
                                                 (_t278392_ _sit278387_))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _t178391_ _sit278387_))
                                     '#!void
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _t278392_ _sit78134_))
                                         (set! _sit78134_ _sit278387_)
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (null? _t178391_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (null? _t278392_)))
                                             (let ((__tmp82512
                                                    (let ((__tmp82515
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_get-names78135_
                                                              _sit78134_)))
                                                          (__tmp82513
                                                           (let ((__tmp82514
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_get-names78135_ _sit278387_))))
                     (declare (not safe))
                     (cons __tmp82514 '()))))
              (declare (not safe))
              (cons __tmp82515 __tmp82513))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_err78136_
                                                'single-inheritance-incompatibility:
                                                __tmp82512))
                                             (let ((__tmp82511 (cdr _t178391_))
                                                   (__tmp82510
                                                    (cdr _t278392_)))
                                               (declare (not safe))
                                               (_loop78389_
                                                __tmp82511
                                                __tmp82510))))))))))
                    (_rpls78138_
                     (map (lambda (_pl78382_)
                            (let ((_g82516_
                                   (let ()
                                     (declare (not safe))
                                     (append-reverse-until
                                      _struct?78127_
                                      _pl78382_
                                      '()))))
                              (begin
                                (let ((_g82517_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g82516_)
                                             (##vector-length _g82516_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g82517_ 2)))
                                      (error "Context expects 2 values"
                                             _g82517_)))
                                (let ((_tl78384_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g82516_ 0)))
                                      (_rh78385_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g82516_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (_merge-sit!78137_ _tl78384_))
                                    _rh78385_)))))
                          _pls78133_))
                    (_unsitr-rpl78139_
                     (lambda (_rpl78328_)
                       (let _u78330_ ((_pl-rhead78332_ _rpl78328_)
                                      (_pl-tail78333_ '())
                                      (_sit-rhead78334_ (reverse _sit78134_))
                                      (_sit-tail78335_ '()))
                         (let* ((_pl-rhead7833678345_ _pl-rhead78332_)
                                (_E7833978349_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _pl-rhead7833678345_))))
                           (let ((_K7834378379_ (lambda () _pl-tail78333_))
                                 (_K7834078363_
                                  (lambda (_plrh78353_ _c78354_)
                                    (if (member _c78354_
                                                _sit-tail78335_
                                                _eq78129_)
                                        (let ((__tmp82528
                                               (let ((__tmp82529
                                                      (reverse _pl-rhead78332_)))
                                                 (declare (not safe))
                                                 (_get-names78135_
                                                  __tmp82529)))
                                              (__tmp82527
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names78135_
                                                  _pl-tail78333_)))
                                              (__tmp82525
                                               (let ((__tmp82526
                                                      (reverse _sit-rhead78334_)))
                                                 (declare (not safe))
                                                 (_get-names78135_
                                                  __tmp82526)))
                                              (__tmp82524
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names78135_
                                                  _sit-tail78335_)))
                                              (__tmp82523
                                               (_get-name78131_ _c78354_)))
                                          (declare (not safe))
                                          (_err78136_
                                           'precedence-list-head:
                                           __tmp82528
                                           'precedence-list-tail:
                                           __tmp82527
                                           'single-inheritance-head:
                                           __tmp82525
                                           'single-inheritance-tail:
                                           __tmp82524
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp82523))
                                        (let ((_g82518_
                                               (let ((__tmp82520
                                                      (lambda (_g7835578357_)
                                                        (_eq78129_
                                                         _c78354_
                                                         _g7835578357_))))
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  __tmp82520
                                                  _sit-rhead78334_
                                                  _sit-tail78335_))))
                                          (begin
                                            (let ((_g82519_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g82518_)
                                                         (##vector-length
                                                          _g82518_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g82519_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g82519_)))
                                            (let ((_sit-rh278360_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g82518_
                                                      0)))
                                                  (_sit-tl278361_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g82518_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _sit-rh278360_))
                                                  (let ((__tmp82522
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _c78354_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pl-tail78333_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_u78330_
                                                     _plrh78353_
                                                     __tmp82522
                                                     '()
                                                     _sit-tl278361_))
                                                  (let ((__tmp82521
                                                         (cdr _sit-rh278360_)))
                                                    (declare (not safe))
                                                    (_u78330_
                                                     _plrh78353_
                                                     _pl-tail78333_
                                                     __tmp82521
                                                     _sit-tl278361_))))))))))
                             (let ((_try-match7833878375_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _pl-rhead7833678345_))
                                          (let ((_tl7834278368_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _pl-rhead7833678345_)))
                                                (_hd7834178366_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _pl-rhead7833678345_))))
                                            (let ((_c78371_ _hd7834178366_)
                                                  (_plrh78373_ _tl7834278368_))
                                              (let ()
                                                (declare (not safe))
                                                (_K7834078363_
                                                 _plrh78373_
                                                 _c78371_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E7833978349_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _pl-rhead7833678345_))
                                   (let ()
                                     (declare (not safe))
                                     (_K7834378379_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match7833878375_)))))))))
                    (_g82530_
                     (let ((_g82531_
                            (let ((__tmp82533 (reverse _supers78123_)))
                              (declare (not safe))
                              (append1! _rpls78138_ __tmp82533))))
                       #!void
                       _g82531_))
                    (_g82534_
                     (let ((_g82535_
                            (set! _pls78133_
                                  (map _unsitr-rpl78139_ _rpls78138_))))
                       #!void
                       _g82535_))
                    (_c3-select-next78140_
                     (lambda (_tails78278_)
                       (let ((_candidate?78284_
                              (lambda (_c78280_)
                                (let ((__tmp82537
                                       (lambda (_tail78282_)
                                         (let ((__tmp82538
                                                (member _c78280_
                                                        (cdr _tail78282_)
                                                        _eq78129_)))
                                           (declare (not safe))
                                           (not __tmp82538)))))
                                  (declare (not safe))
                                  (andmap1 __tmp82537 _tails78278_)))))
                         (let _loop78286_ ((_ts78288_ _tails78278_))
                           (let* ((_ts7828978299_ _ts78288_)
                                  (_else7829178307_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_err78136_))))
                                  (_K7829378313_
                                   (lambda (_rts78310_ _c78311_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_candidate?78284_ _c78311_))
                                         _c78311_
                                         (let ()
                                           (declare (not safe))
                                           (_loop78286_ _rts78310_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _ts7828978299_))
                                 (let ((_hd7829478316_
                                        (let ()
                                          (declare (not safe))
                                          (##car _ts7828978299_)))
                                       (_tl7829578318_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _ts7828978299_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _hd7829478316_))
                                       (let* ((_hd7829678321_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _hd7829478316_)))
                                              (_c78324_ _hd7829678321_)
                                              (_rts78326_ _tl7829578318_))
                                         (declare (not safe))
                                         (_K7829378313_ _rts78326_ _c78324_))
                                       (let ()
                                         (declare (not safe))
                                         (_err78136_))))
                                 (let ()
                                   (declare (not safe))
                                   (_err78136_))))))))
                    (_remove-next!78141_
                     (lambda (_next78223_ _tails78224_)
                       (let _loop78226_ ((_t78228_ _tails78224_))
                         (let* ((_t7822978240_ _t78228_)
                                (_E7823278244_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _t7822978240_))))
                           (let ((_K7823878275_ (lambda () _tails78224_))
                                 (_K7823378252_
                                  (lambda (_more78248_ _tail78249_ _head78250_)
                                    (if (_eq78129_ _head78250_ _next78223_)
                                        (set-car! _t78228_ _tail78249_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_loop78226_ _more78248_)))))
                             (let ((_try-match7823178271_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _t7822978240_))
                                          (let ((_tl7823578257_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _t7822978240_)))
                                                (_hd7823478255_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _t7822978240_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _hd7823478255_))
                                                (let ((_tl7823778262_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _hd7823478255_)))
                                                      (_hd7823678260_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _hd7823478255_))))
                                                  (let ((_head78265_
                                                         _hd7823678260_)
                                                        (_tail78267_
                                                         _tl7823778262_)
                                                        (_more78269_
                                                         _tl7823578257_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K7823378252_
                                                       _more78269_
                                                       _tail78267_
                                                       _head78265_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_E7823278244_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E7823278244_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _t7822978240_))
                                   (let ()
                                     (declare (not safe))
                                     (_K7823878275_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match7823178271_)))))))))
                    (_precedence-list78142_
                     (let _c3loop78173_ ((_rhead78175_ _rhead78122_)
                                         (_tails78176_ _pls78133_))
                       (let* ((_tails78178_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _tails78176_)))
                              (_tails7817978189_ _tails78178_)
                              (_else7818278200_
                               (lambda ()
                                 (let ((_next78197_
                                        (let ()
                                          (declare (not safe))
                                          (_c3-select-next78140_
                                           _tails78178_))))
                                   (let ((__tmp82540
                                          (let ()
                                            (declare (not safe))
                                            (cons _next78197_ _rhead78175_)))
                                         (__tmp82539
                                          (let ()
                                            (declare (not safe))
                                            (_remove-next!78141_
                                             _next78197_
                                             _tails78178_))))
                                     (declare (not safe))
                                     (_c3loop78173_ __tmp82540 __tmp82539))))))
                         (let ((_K7818778220_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (append-reverse _rhead78175_ _sit78134_))))
                               (_K7818478206_
                                (lambda (_tail78204_)
                                  (let ((__tmp82541
                                         (append _tail78204_ _sit78134_)))
                                    (declare (not safe))
                                    (append-reverse
                                     _rhead78175_
                                     __tmp82541)))))
                           (let ((_try-match7818178216_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tails7817978189_))
                                        (let ((_tl7818678211_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tails7817978189_)))
                                              (_hd7818578209_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tails7817978189_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _tl7818678211_))
                                              (let ((_tail78214_
                                                     _hd7818578209_))
                                                (declare (not safe))
                                                (_K7818478206_ _tail78214_))
                                              (let ()
                                                (declare (not safe))
                                                (_else7818278200_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else7818278200_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tails7817978189_))
                                 (let () (declare (not safe)) (_K7818778220_))
                                 (let ()
                                   (declare (not safe))
                                   (_try-match7818178216_))))))))
                    (_super-struct78143_
                     (let* ((_sit7814478152_ _sit78134_)
                            (_else7814678160_ (lambda () '#f))
                            (_K7814878165_ (lambda (_s78163_) _s78163_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _sit7814478152_))
                           (let* ((_hd7814978168_
                                   (let ()
                                     (declare (not safe))
                                     (##car _sit7814478152_)))
                                  (_s78171_ _hd7814978168_))
                             (declare (not safe))
                             (_K7814878165_ _s78171_))
                           (let () (declare (not safe)) (_else7814678160_))))))
            (values _precedence-list78142_ _super-struct78143_)))))
    (define c4-linearize__@
      (lambda (_keys7810778404_ . _args78406_)
        (apply c4-linearize__%
               _keys7810778404_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys7810778404_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7810778404_ 'struct: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7810778404_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys7810778404_ 'get-name: absent-value))
               _args78406_)))
    (define c4-linearize
      (lambda _args7811278412_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _args7811278412_)))))
