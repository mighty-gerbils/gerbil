(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1707651231)
  (begin
    (define c4-linearize__%
      (lambda (_g82986_
               _get-precedence-list7818378189_
               _struct?7818478191_
               _eq7818578193_
               _get-name7818678195_
               _rhead78197_
               _supers78198_)
        (let* ((_get-precedence-list78200_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-precedence-list7818378189_ absent-value))
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _get-precedence-list7818378189_))
               (_struct?78202_
                (if (let ()
                      (declare (not safe))
                      (eq? _struct?7818478191_ absent-value))
                    (error '"Missing required keyword argument" 'struct:)
                    _struct?7818478191_))
               (_eq78204_
                (if (let ()
                      (declare (not safe))
                      (eq? _eq7818578193_ absent-value))
                    eq?
                    _eq7818578193_))
               (_get-name78206_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-name7818678195_ absent-value))
                    identity
                    _get-name7818678195_)))
          (letrec* ((_pls78208_ (map _get-precedence-list78200_ _supers78198_))
                    (_sit78209_ '())
                    (_get-names78210_
                     (lambda (_g7847378475_)
                       (map _get-name78206_ _g7847378475_)))
                    (_err78211_
                     (lambda _a78472_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp82987 (reverse _rhead78197_)))
                                (declare (not safe))
                                (_get-names78210_ __tmp82987))
                              'precedence-lists:
                              (map _get-names78210_ _pls78208_)
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_get-names78210_ _sit78209_))
                              _a78472_)))
                    (_merge-sit!78212_
                     (lambda (_sit278462_)
                       (if (let () (declare (not safe)) (null? _sit278462_))
                           '#!void
                           (if (let () (declare (not safe)) (null? _sit78209_))
                               (set! _sit78209_ _sit278462_)
                               (let _loop78464_ ((_t178466_ _sit78209_)
                                                 (_t278467_ _sit278462_))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _t178466_ _sit278462_))
                                     '#!void
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _t278467_ _sit78209_))
                                         (set! _sit78209_ _sit278462_)
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (null? _t178466_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (null? _t278467_)))
                                             (let ((__tmp82990
                                                    (let ((__tmp82993
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_get-names78210_
                                                              _sit78209_)))
                                                          (__tmp82991
                                                           (let ((__tmp82992
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_get-names78210_ _sit278462_))))
                     (declare (not safe))
                     (cons __tmp82992 '()))))
              (declare (not safe))
              (cons __tmp82993 __tmp82991))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_err78211_
                                                'single-inheritance-incompatibility:
                                                __tmp82990))
                                             (let ((__tmp82989 (cdr _t178466_))
                                                   (__tmp82988
                                                    (cdr _t278467_)))
                                               (declare (not safe))
                                               (_loop78464_
                                                __tmp82989
                                                __tmp82988))))))))))
                    (_rpls78213_
                     (map (lambda (_pl78457_)
                            (let ((_g82994_
                                   (let ()
                                     (declare (not safe))
                                     (append-reverse-until
                                      _struct?78202_
                                      _pl78457_
                                      '()))))
                              (begin
                                (let ((_g82995_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g82994_)
                                             (##vector-length _g82994_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g82995_ 2)))
                                      (error "Context expects 2 values"
                                             _g82995_)))
                                (let ((_tl78459_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g82994_ 0)))
                                      (_rh78460_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g82994_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (_merge-sit!78212_ _tl78459_))
                                    _rh78460_)))))
                          _pls78208_))
                    (_unsitr-rpl78214_
                     (lambda (_rpl78403_)
                       (let _u78405_ ((_pl-rhead78407_ _rpl78403_)
                                      (_pl-tail78408_ '())
                                      (_sit-rhead78409_ (reverse _sit78209_))
                                      (_sit-tail78410_ '()))
                         (let* ((_pl-rhead7841178420_ _pl-rhead78407_)
                                (_E7841478424_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _pl-rhead7841178420_))))
                           (let ((_K7841878454_ (lambda () _pl-tail78408_))
                                 (_K7841578438_
                                  (lambda (_plrh78428_ _c78429_)
                                    (if (member _c78429_
                                                _sit-tail78410_
                                                _eq78204_)
                                        (let ((__tmp83006
                                               (let ((__tmp83007
                                                      (reverse _pl-rhead78407_)))
                                                 (declare (not safe))
                                                 (_get-names78210_
                                                  __tmp83007)))
                                              (__tmp83005
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names78210_
                                                  _pl-tail78408_)))
                                              (__tmp83003
                                               (let ((__tmp83004
                                                      (reverse _sit-rhead78409_)))
                                                 (declare (not safe))
                                                 (_get-names78210_
                                                  __tmp83004)))
                                              (__tmp83002
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names78210_
                                                  _sit-tail78410_)))
                                              (__tmp83001
                                               (_get-name78206_ _c78429_)))
                                          (declare (not safe))
                                          (_err78211_
                                           'precedence-list-head:
                                           __tmp83006
                                           'precedence-list-tail:
                                           __tmp83005
                                           'single-inheritance-head:
                                           __tmp83003
                                           'single-inheritance-tail:
                                           __tmp83002
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp83001))
                                        (let ((_g82996_
                                               (let ((__tmp82998
                                                      (lambda (_g7843078432_)
                                                        (_eq78204_
                                                         _c78429_
                                                         _g7843078432_))))
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  __tmp82998
                                                  _sit-rhead78409_
                                                  _sit-tail78410_))))
                                          (begin
                                            (let ((_g82997_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g82996_)
                                                         (##vector-length
                                                          _g82996_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g82997_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g82997_)))
                                            (let ((_sit-rh278435_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g82996_
                                                      0)))
                                                  (_sit-tl278436_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g82996_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _sit-rh278435_))
                                                  (let ((__tmp83000
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _c78429_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pl-tail78408_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_u78405_
                                                     _plrh78428_
                                                     __tmp83000
                                                     '()
                                                     _sit-tl278436_))
                                                  (let ((__tmp82999
                                                         (cdr _sit-rh278435_)))
                                                    (declare (not safe))
                                                    (_u78405_
                                                     _plrh78428_
                                                     _pl-tail78408_
                                                     __tmp82999
                                                     _sit-tl278436_))))))))))
                             (let ((_try-match7841378450_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _pl-rhead7841178420_))
                                          (let ((_tl7841778443_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _pl-rhead7841178420_)))
                                                (_hd7841678441_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _pl-rhead7841178420_))))
                                            (let ((_c78446_ _hd7841678441_)
                                                  (_plrh78448_ _tl7841778443_))
                                              (let ()
                                                (declare (not safe))
                                                (_K7841578438_
                                                 _plrh78448_
                                                 _c78446_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E7841478424_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _pl-rhead7841178420_))
                                   (let ()
                                     (declare (not safe))
                                     (_K7841878454_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match7841378450_)))))))))
                    (_g83008_
                     (let ((_g83009_
                            (let ((__tmp83011 (reverse _supers78198_)))
                              (declare (not safe))
                              (append1! _rpls78213_ __tmp83011))))
                       #!void
                       _g83009_))
                    (_g83012_
                     (let ((_g83013_
                            (set! _pls78208_
                                  (map _unsitr-rpl78214_ _rpls78213_))))
                       #!void
                       _g83013_))
                    (_c3-select-next78215_
                     (lambda (_tails78353_)
                       (let ((_candidate?78359_
                              (lambda (_c78355_)
                                (let ((__tmp83015
                                       (lambda (_tail78357_)
                                         (let ((__tmp83016
                                                (member _c78355_
                                                        (cdr _tail78357_)
                                                        _eq78204_)))
                                           (declare (not safe))
                                           (not __tmp83016)))))
                                  (declare (not safe))
                                  (andmap1 __tmp83015 _tails78353_)))))
                         (let _loop78361_ ((_ts78363_ _tails78353_))
                           (let* ((_ts7836478374_ _ts78363_)
                                  (_else7836678382_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_err78211_))))
                                  (_K7836878388_
                                   (lambda (_rts78385_ _c78386_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_candidate?78359_ _c78386_))
                                         _c78386_
                                         (let ()
                                           (declare (not safe))
                                           (_loop78361_ _rts78385_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _ts7836478374_))
                                 (let ((_hd7836978391_
                                        (let ()
                                          (declare (not safe))
                                          (##car _ts7836478374_)))
                                       (_tl7837078393_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _ts7836478374_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _hd7836978391_))
                                       (let* ((_hd7837178396_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _hd7836978391_)))
                                              (_c78399_ _hd7837178396_)
                                              (_rts78401_ _tl7837078393_))
                                         (declare (not safe))
                                         (_K7836878388_ _rts78401_ _c78399_))
                                       (let ()
                                         (declare (not safe))
                                         (_err78211_))))
                                 (let ()
                                   (declare (not safe))
                                   (_err78211_))))))))
                    (_remove-next!78216_
                     (lambda (_next78298_ _tails78299_)
                       (let _loop78301_ ((_t78303_ _tails78299_))
                         (let* ((_t7830478315_ _t78303_)
                                (_E7830778319_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _t7830478315_))))
                           (let ((_K7831378350_ (lambda () _tails78299_))
                                 (_K7830878327_
                                  (lambda (_more78323_ _tail78324_ _head78325_)
                                    (if (_eq78204_ _head78325_ _next78298_)
                                        (set-car! _t78303_ _tail78324_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_loop78301_ _more78323_)))))
                             (let ((_try-match7830678346_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _t7830478315_))
                                          (let ((_tl7831078332_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _t7830478315_)))
                                                (_hd7830978330_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _t7830478315_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _hd7830978330_))
                                                (let ((_tl7831278337_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _hd7830978330_)))
                                                      (_hd7831178335_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _hd7830978330_))))
                                                  (let ((_head78340_
                                                         _hd7831178335_)
                                                        (_tail78342_
                                                         _tl7831278337_)
                                                        (_more78344_
                                                         _tl7831078332_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K7830878327_
                                                       _more78344_
                                                       _tail78342_
                                                       _head78340_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_E7830778319_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E7830778319_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _t7830478315_))
                                   (let ()
                                     (declare (not safe))
                                     (_K7831378350_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match7830678346_)))))))))
                    (_precedence-list78217_
                     (let _c3loop78248_ ((_rhead78250_ _rhead78197_)
                                         (_tails78251_ _pls78208_))
                       (let* ((_tails78253_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _tails78251_)))
                              (_tails7825478264_ _tails78253_)
                              (_else7825778275_
                               (lambda ()
                                 (let ((_next78272_
                                        (let ()
                                          (declare (not safe))
                                          (_c3-select-next78215_
                                           _tails78253_))))
                                   (let ((__tmp83018
                                          (let ()
                                            (declare (not safe))
                                            (cons _next78272_ _rhead78250_)))
                                         (__tmp83017
                                          (let ()
                                            (declare (not safe))
                                            (_remove-next!78216_
                                             _next78272_
                                             _tails78253_))))
                                     (declare (not safe))
                                     (_c3loop78248_ __tmp83018 __tmp83017))))))
                         (let ((_K7826278295_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (append-reverse _rhead78250_ _sit78209_))))
                               (_K7825978281_
                                (lambda (_tail78279_)
                                  (let ((__tmp83019
                                         (append _tail78279_ _sit78209_)))
                                    (declare (not safe))
                                    (append-reverse
                                     _rhead78250_
                                     __tmp83019)))))
                           (let ((_try-match7825678291_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tails7825478264_))
                                        (let ((_tl7826178286_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tails7825478264_)))
                                              (_hd7826078284_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tails7825478264_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _tl7826178286_))
                                              (let ((_tail78289_
                                                     _hd7826078284_))
                                                (declare (not safe))
                                                (_K7825978281_ _tail78289_))
                                              (let ()
                                                (declare (not safe))
                                                (_else7825778275_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else7825778275_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tails7825478264_))
                                 (let () (declare (not safe)) (_K7826278295_))
                                 (let ()
                                   (declare (not safe))
                                   (_try-match7825678291_))))))))
                    (_super-struct78218_
                     (let* ((_sit7821978227_ _sit78209_)
                            (_else7822178235_ (lambda () '#f))
                            (_K7822378240_ (lambda (_s78238_) _s78238_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _sit7821978227_))
                           (let* ((_hd7822478243_
                                   (let ()
                                     (declare (not safe))
                                     (##car _sit7821978227_)))
                                  (_s78246_ _hd7822478243_))
                             (declare (not safe))
                             (_K7822378240_ _s78246_))
                           (let () (declare (not safe)) (_else7822178235_))))))
            (values _precedence-list78217_ _super-struct78218_)))))
    (define c4-linearize__@
      (lambda (_keys7818278481_ . _args78483_)
        (apply c4-linearize__%
               _keys7818278481_
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys7818278481_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref _keys7818278481_ 'struct: absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref _keys7818278481_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref _keys7818278481_ 'get-name: absent-value))
               _args78483_)))
    (define c4-linearize
      (lambda _args7818778489_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _args7818778489_)))
    (define c3-linearize__%__%
      (lambda (__7811978122_
               _struct?7811778124_
               _rhead78126_
               _supers78127_
               _get-precedence-list78128_
               _eq78129_
               _get-name78130_)
        (let ((_struct?78132_
               (if (let ()
                     (declare (not safe))
                     (eq? _struct?7811778124_ absent-value))
                   false
                   _struct?7811778124_)))
          (letrec* ((_g83020_
                     (let ((_g83021_
                            (let ()
                              (declare (not safe))
                              (c4-linearize__%
                               '#f
                               _get-precedence-list78128_
                               _struct?78132_
                               _eq78129_
                               _get-name78130_
                               _rhead78126_
                               _supers78127_))))
                       (let ((_g83022_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g83021_)
                                    (##vector-length _g83021_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g83022_ 2)))
                             (error "Context expects 2 values" _g83022_)))
                       _g83021_))
                    (_precedence-list78134_
                     (let () (declare (not safe)) (##vector-ref _g83020_ 0)))
                    (_super-struct78135_
                     (let () (declare (not safe)) (##vector-ref _g83020_ 1))))
            _precedence-list78134_))))
    (define c3-linearize__%__0
      (lambda (__7811978140_
               _struct?7811778141_
               _rhead78142_
               _supers78143_
               _get-precedence-list78144_)
        (let* ((_eq78146_ eq?) (_get-name78148_ identity))
          (declare (not safe))
          (c3-linearize__%__%
           __7811978140_
           _struct?7811778141_
           _rhead78142_
           _supers78143_
           _get-precedence-list78144_
           _eq78146_
           _get-name78148_))))
    (define c3-linearize__%__1
      (lambda (__7811978150_
               _struct?7811778151_
               _rhead78152_
               _supers78153_
               _get-precedence-list78154_
               _eq78155_)
        (let ((_get-name78157_ identity))
          (declare (not safe))
          (c3-linearize__%__%
           __7811978150_
           _struct?7811778151_
           _rhead78152_
           _supers78153_
           _get-precedence-list78154_
           _eq78155_
           _get-name78157_))))
    (define c3-linearize__%
      (lambda _g83024_
        (let ((_g83023_ (let () (declare (not safe)) (##length _g83024_))))
          (cond ((let () (declare (not safe)) (##fx= _g83023_ 5))
                 (apply (lambda (__7811978140_
                                 _struct?7811778141_
                                 _rhead78142_
                                 _supers78143_
                                 _get-precedence-list78144_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize__%__0
                             __7811978140_
                             _struct?7811778141_
                             _rhead78142_
                             _supers78143_
                             _get-precedence-list78144_)))
                        _g83024_))
                ((let () (declare (not safe)) (##fx= _g83023_ 6))
                 (apply (lambda (__7811978150_
                                 _struct?7811778151_
                                 _rhead78152_
                                 _supers78153_
                                 _get-precedence-list78154_
                                 _eq78155_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize__%__1
                             __7811978150_
                             _struct?7811778151_
                             _rhead78152_
                             _supers78153_
                             _get-precedence-list78154_
                             _eq78155_)))
                        _g83024_))
                ((let () (declare (not safe)) (##fx= _g83023_ 7))
                 (apply (lambda (__7811978159_
                                 _struct?7811778160_
                                 _rhead78161_
                                 _supers78162_
                                 _get-precedence-list78163_
                                 _eq78164_
                                 _get-name78165_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize__%__%
                             __7811978159_
                             _struct?7811778160_
                             _rhead78161_
                             _supers78162_
                             _get-precedence-list78163_
                             _eq78164_
                             _get-name78165_)))
                        _g83024_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  c3-linearize__%
                  _g83024_))))))
    (define c3-linearize__@
      (lambda (_keys7811678170_ . _args78172_)
        (apply c3-linearize__%
               _keys7811678170_
               (let ()
                 (declare (not safe))
                 (table-ref _keys7811678170_ 'struct: absent-value))
               _args78172_)))
    (define c3-linearize
      (lambda _args7811878178_
        (apply keyword-dispatch
               '#(struct:)
               c3-linearize__@
               _args7811878178_)))))
