(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1707647931)
  (begin
    (define c4-linearize__%
      (lambda (_g83082_
               _get-precedence-list7827978285_
               _struct?7828078287_
               _eq7828178289_
               _get-name7828278291_
               _rhead78293_
               _supers78294_)
        (let* ((_get-precedence-list78296_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-precedence-list7827978285_ absent-value))
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _get-precedence-list7827978285_))
               (_struct?78298_
                (if (let ()
                      (declare (not safe))
                      (eq? _struct?7828078287_ absent-value))
                    (error '"Missing required keyword argument" 'struct:)
                    _struct?7828078287_))
               (_eq78300_
                (if (let ()
                      (declare (not safe))
                      (eq? _eq7828178289_ absent-value))
                    eq?
                    _eq7828178289_))
               (_get-name78302_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-name7828278291_ absent-value))
                    identity
                    _get-name7828278291_)))
          (letrec* ((_pls78304_ (map _get-precedence-list78296_ _supers78294_))
                    (_sit78305_ '())
                    (_get-names78306_
                     (lambda (_g7856978571_)
                       (map _get-name78302_ _g7856978571_)))
                    (_err78307_
                     (lambda _a78568_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp83083 (reverse _rhead78293_)))
                                (declare (not safe))
                                (_get-names78306_ __tmp83083))
                              'precedence-lists:
                              (map _get-names78306_ _pls78304_)
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_get-names78306_ _sit78305_))
                              _a78568_)))
                    (_merge-sit!78308_
                     (lambda (_sit278558_)
                       (if (let () (declare (not safe)) (null? _sit278558_))
                           '#!void
                           (if (let () (declare (not safe)) (null? _sit78305_))
                               (set! _sit78305_ _sit278558_)
                               (let _loop78560_ ((_t178562_ _sit78305_)
                                                 (_t278563_ _sit278558_))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _t178562_ _sit278558_))
                                     '#!void
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _t278563_ _sit78305_))
                                         (set! _sit78305_ _sit278558_)
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (null? _t178562_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (null? _t278563_)))
                                             (let ((__tmp83086
                                                    (let ((__tmp83089
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_get-names78306_
                                                              _sit78305_)))
                                                          (__tmp83087
                                                           (let ((__tmp83088
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_get-names78306_ _sit278558_))))
                     (declare (not safe))
                     (cons __tmp83088 '()))))
              (declare (not safe))
              (cons __tmp83089 __tmp83087))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_err78307_
                                                'single-inheritance-incompatibility:
                                                __tmp83086))
                                             (let ((__tmp83085 (cdr _t178562_))
                                                   (__tmp83084
                                                    (cdr _t278563_)))
                                               (declare (not safe))
                                               (_loop78560_
                                                __tmp83085
                                                __tmp83084))))))))))
                    (_rpls78309_
                     (map (lambda (_pl78553_)
                            (let ((_g83090_
                                   (let ()
                                     (declare (not safe))
                                     (append-reverse-until
                                      _struct?78298_
                                      _pl78553_
                                      '()))))
                              (begin
                                (let ((_g83091_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g83090_)
                                             (##vector-length _g83090_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g83091_ 2)))
                                      (error "Context expects 2 values"
                                             _g83091_)))
                                (let ((_tl78555_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g83090_ 0)))
                                      (_rh78556_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g83090_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (_merge-sit!78308_ _tl78555_))
                                    _rh78556_)))))
                          _pls78304_))
                    (_unsitr-rpl78310_
                     (lambda (_rpl78499_)
                       (let _u78501_ ((_pl-rhead78503_ _rpl78499_)
                                      (_pl-tail78504_ '())
                                      (_sit-rhead78505_ (reverse _sit78305_))
                                      (_sit-tail78506_ '()))
                         (let* ((_pl-rhead7850778516_ _pl-rhead78503_)
                                (_E7851078520_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _pl-rhead7850778516_))))
                           (let ((_K7851478550_ (lambda () _pl-tail78504_))
                                 (_K7851178534_
                                  (lambda (_plrh78524_ _c78525_)
                                    (if (member _c78525_
                                                _sit-tail78506_
                                                _eq78300_)
                                        (let ((__tmp83102
                                               (let ((__tmp83103
                                                      (reverse _pl-rhead78503_)))
                                                 (declare (not safe))
                                                 (_get-names78306_
                                                  __tmp83103)))
                                              (__tmp83101
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names78306_
                                                  _pl-tail78504_)))
                                              (__tmp83099
                                               (let ((__tmp83100
                                                      (reverse _sit-rhead78505_)))
                                                 (declare (not safe))
                                                 (_get-names78306_
                                                  __tmp83100)))
                                              (__tmp83098
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names78306_
                                                  _sit-tail78506_)))
                                              (__tmp83097
                                               (_get-name78302_ _c78525_)))
                                          (declare (not safe))
                                          (_err78307_
                                           'precedence-list-head:
                                           __tmp83102
                                           'precedence-list-tail:
                                           __tmp83101
                                           'single-inheritance-head:
                                           __tmp83099
                                           'single-inheritance-tail:
                                           __tmp83098
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp83097))
                                        (let ((_g83092_
                                               (let ((__tmp83094
                                                      (lambda (_g7852678528_)
                                                        (_eq78300_
                                                         _c78525_
                                                         _g7852678528_))))
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  __tmp83094
                                                  _sit-rhead78505_
                                                  _sit-tail78506_))))
                                          (begin
                                            (let ((_g83093_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g83092_)
                                                         (##vector-length
                                                          _g83092_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g83093_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g83093_)))
                                            (let ((_sit-rh278531_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g83092_
                                                      0)))
                                                  (_sit-tl278532_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g83092_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _sit-rh278531_))
                                                  (let ((__tmp83096
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _c78525_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pl-tail78504_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_u78501_
                                                     _plrh78524_
                                                     __tmp83096
                                                     '()
                                                     _sit-tl278532_))
                                                  (let ((__tmp83095
                                                         (cdr _sit-rh278531_)))
                                                    (declare (not safe))
                                                    (_u78501_
                                                     _plrh78524_
                                                     _pl-tail78504_
                                                     __tmp83095
                                                     _sit-tl278532_))))))))))
                             (let ((_try-match7850978546_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _pl-rhead7850778516_))
                                          (let ((_tl7851378539_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _pl-rhead7850778516_)))
                                                (_hd7851278537_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _pl-rhead7850778516_))))
                                            (let ((_c78542_ _hd7851278537_)
                                                  (_plrh78544_ _tl7851378539_))
                                              (let ()
                                                (declare (not safe))
                                                (_K7851178534_
                                                 _plrh78544_
                                                 _c78542_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E7851078520_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _pl-rhead7850778516_))
                                   (let ()
                                     (declare (not safe))
                                     (_K7851478550_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match7850978546_)))))))))
                    (_g83104_
                     (let ((_g83105_
                            (let ((__tmp83107 (reverse _supers78294_)))
                              (declare (not safe))
                              (append1! _rpls78309_ __tmp83107))))
                       #!void
                       _g83105_))
                    (_g83108_
                     (let ((_g83109_
                            (set! _pls78304_
                                  (map _unsitr-rpl78310_ _rpls78309_))))
                       #!void
                       _g83109_))
                    (_c3-select-next78311_
                     (lambda (_tails78449_)
                       (let ((_candidate?78455_
                              (lambda (_c78451_)
                                (let ((__tmp83111
                                       (lambda (_tail78453_)
                                         (let ((__tmp83112
                                                (member _c78451_
                                                        (cdr _tail78453_)
                                                        _eq78300_)))
                                           (declare (not safe))
                                           (not __tmp83112)))))
                                  (declare (not safe))
                                  (andmap1 __tmp83111 _tails78449_)))))
                         (let _loop78457_ ((_ts78459_ _tails78449_))
                           (let* ((_ts7846078470_ _ts78459_)
                                  (_else7846278478_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_err78307_))))
                                  (_K7846478484_
                                   (lambda (_rts78481_ _c78482_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_candidate?78455_ _c78482_))
                                         _c78482_
                                         (let ()
                                           (declare (not safe))
                                           (_loop78457_ _rts78481_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _ts7846078470_))
                                 (let ((_hd7846578487_
                                        (let ()
                                          (declare (not safe))
                                          (##car _ts7846078470_)))
                                       (_tl7846678489_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _ts7846078470_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _hd7846578487_))
                                       (let* ((_hd7846778492_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _hd7846578487_)))
                                              (_c78495_ _hd7846778492_)
                                              (_rts78497_ _tl7846678489_))
                                         (declare (not safe))
                                         (_K7846478484_ _rts78497_ _c78495_))
                                       (let ()
                                         (declare (not safe))
                                         (_err78307_))))
                                 (let ()
                                   (declare (not safe))
                                   (_err78307_))))))))
                    (_remove-next!78312_
                     (lambda (_next78394_ _tails78395_)
                       (let _loop78397_ ((_t78399_ _tails78395_))
                         (let* ((_t7840078411_ _t78399_)
                                (_E7840378415_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _t7840078411_))))
                           (let ((_K7840978446_ (lambda () _tails78395_))
                                 (_K7840478423_
                                  (lambda (_more78419_ _tail78420_ _head78421_)
                                    (if (_eq78300_ _head78421_ _next78394_)
                                        (set-car! _t78399_ _tail78420_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_loop78397_ _more78419_)))))
                             (let ((_try-match7840278442_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _t7840078411_))
                                          (let ((_tl7840678428_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _t7840078411_)))
                                                (_hd7840578426_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _t7840078411_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _hd7840578426_))
                                                (let ((_tl7840878433_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _hd7840578426_)))
                                                      (_hd7840778431_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _hd7840578426_))))
                                                  (let ((_head78436_
                                                         _hd7840778431_)
                                                        (_tail78438_
                                                         _tl7840878433_)
                                                        (_more78440_
                                                         _tl7840678428_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K7840478423_
                                                       _more78440_
                                                       _tail78438_
                                                       _head78436_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_E7840378415_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E7840378415_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _t7840078411_))
                                   (let ()
                                     (declare (not safe))
                                     (_K7840978446_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match7840278442_)))))))))
                    (_precedence-list78313_
                     (let _c3loop78344_ ((_rhead78346_ _rhead78293_)
                                         (_tails78347_ _pls78304_))
                       (let* ((_tails78349_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _tails78347_)))
                              (_tails7835078360_ _tails78349_)
                              (_else7835378371_
                               (lambda ()
                                 (let ((_next78368_
                                        (let ()
                                          (declare (not safe))
                                          (_c3-select-next78311_
                                           _tails78349_))))
                                   (let ((__tmp83114
                                          (let ()
                                            (declare (not safe))
                                            (cons _next78368_ _rhead78346_)))
                                         (__tmp83113
                                          (let ()
                                            (declare (not safe))
                                            (_remove-next!78312_
                                             _next78368_
                                             _tails78349_))))
                                     (declare (not safe))
                                     (_c3loop78344_ __tmp83114 __tmp83113))))))
                         (let ((_K7835878391_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (append-reverse _rhead78346_ _sit78305_))))
                               (_K7835578377_
                                (lambda (_tail78375_)
                                  (let ((__tmp83115
                                         (append _tail78375_ _sit78305_)))
                                    (declare (not safe))
                                    (append-reverse
                                     _rhead78346_
                                     __tmp83115)))))
                           (let ((_try-match7835278387_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tails7835078360_))
                                        (let ((_tl7835778382_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tails7835078360_)))
                                              (_hd7835678380_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tails7835078360_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _tl7835778382_))
                                              (let ((_tail78385_
                                                     _hd7835678380_))
                                                (declare (not safe))
                                                (_K7835578377_ _tail78385_))
                                              (let ()
                                                (declare (not safe))
                                                (_else7835378371_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else7835378371_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tails7835078360_))
                                 (let () (declare (not safe)) (_K7835878391_))
                                 (let ()
                                   (declare (not safe))
                                   (_try-match7835278387_))))))))
                    (_super-struct78314_
                     (let* ((_sit7831578323_ _sit78305_)
                            (_else7831778331_ (lambda () '#f))
                            (_K7831978336_ (lambda (_s78334_) _s78334_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _sit7831578323_))
                           (let* ((_hd7832078339_
                                   (let ()
                                     (declare (not safe))
                                     (##car _sit7831578323_)))
                                  (_s78342_ _hd7832078339_))
                             (declare (not safe))
                             (_K7831978336_ _s78342_))
                           (let () (declare (not safe)) (_else7831778331_))))))
            (values _precedence-list78313_ _super-struct78314_)))))
    (define c4-linearize__@
      (lambda (_keys7827878577_ . _args78579_)
        (apply c4-linearize__%
               _keys7827878577_
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys7827878577_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref _keys7827878577_ 'struct: absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref _keys7827878577_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref _keys7827878577_ 'get-name: absent-value))
               _args78579_)))
    (define c4-linearize
      (lambda _args7828378585_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _args7828378585_)))
    (define c3-linearize__%__%
      (lambda (__7821578218_
               _struct?7821378220_
               _rhead78222_
               _supers78223_
               _get-precedence-list78224_
               _eq78225_
               _get-name78226_)
        (let ((_struct?78228_
               (if (let ()
                     (declare (not safe))
                     (eq? _struct?7821378220_ absent-value))
                   false
                   _struct?7821378220_)))
          (letrec* ((_g83116_
                     (let ((_g83117_
                            (let ()
                              (declare (not safe))
                              (c4-linearize__%
                               '#f
                               _get-precedence-list78224_
                               _struct?78228_
                               _eq78225_
                               _get-name78226_
                               _rhead78222_
                               _supers78223_))))
                       (let ((_g83118_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g83117_)
                                    (##vector-length _g83117_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g83118_ 2)))
                             (error "Context expects 2 values" _g83118_)))
                       _g83117_))
                    (_precedence-list78230_
                     (let () (declare (not safe)) (##vector-ref _g83116_ 0)))
                    (_super-struct78231_
                     (let () (declare (not safe)) (##vector-ref _g83116_ 1))))
            _precedence-list78230_))))
    (define c3-linearize__%__0
      (lambda (__7821578236_
               _struct?7821378237_
               _rhead78238_
               _supers78239_
               _get-precedence-list78240_)
        (let* ((_eq78242_ eq?) (_get-name78244_ identity))
          (declare (not safe))
          (c3-linearize__%__%
           __7821578236_
           _struct?7821378237_
           _rhead78238_
           _supers78239_
           _get-precedence-list78240_
           _eq78242_
           _get-name78244_))))
    (define c3-linearize__%__1
      (lambda (__7821578246_
               _struct?7821378247_
               _rhead78248_
               _supers78249_
               _get-precedence-list78250_
               _eq78251_)
        (let ((_get-name78253_ identity))
          (declare (not safe))
          (c3-linearize__%__%
           __7821578246_
           _struct?7821378247_
           _rhead78248_
           _supers78249_
           _get-precedence-list78250_
           _eq78251_
           _get-name78253_))))
    (define c3-linearize__%
      (lambda _g83120_
        (let ((_g83119_ (let () (declare (not safe)) (##length _g83120_))))
          (cond ((let () (declare (not safe)) (##fx= _g83119_ 5))
                 (apply (lambda (__7821578236_
                                 _struct?7821378237_
                                 _rhead78238_
                                 _supers78239_
                                 _get-precedence-list78240_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize__%__0
                             __7821578236_
                             _struct?7821378237_
                             _rhead78238_
                             _supers78239_
                             _get-precedence-list78240_)))
                        _g83120_))
                ((let () (declare (not safe)) (##fx= _g83119_ 6))
                 (apply (lambda (__7821578246_
                                 _struct?7821378247_
                                 _rhead78248_
                                 _supers78249_
                                 _get-precedence-list78250_
                                 _eq78251_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize__%__1
                             __7821578246_
                             _struct?7821378247_
                             _rhead78248_
                             _supers78249_
                             _get-precedence-list78250_
                             _eq78251_)))
                        _g83120_))
                ((let () (declare (not safe)) (##fx= _g83119_ 7))
                 (apply (lambda (__7821578255_
                                 _struct?7821378256_
                                 _rhead78257_
                                 _supers78258_
                                 _get-precedence-list78259_
                                 _eq78260_
                                 _get-name78261_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize__%__%
                             __7821578255_
                             _struct?7821378256_
                             _rhead78257_
                             _supers78258_
                             _get-precedence-list78259_
                             _eq78260_
                             _get-name78261_)))
                        _g83120_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  c3-linearize__%
                  _g83120_))))))
    (define c3-linearize__@
      (lambda (_keys7821278266_ . _args78268_)
        (apply c3-linearize__%
               _keys7821278266_
               (let ()
                 (declare (not safe))
                 (table-ref _keys7821278266_ 'struct: absent-value))
               _args78268_)))
    (define c3-linearize
      (lambda _args7821478274_
        (apply keyword-dispatch
               '#(struct:)
               c3-linearize__@
               _args7821478274_)))))
