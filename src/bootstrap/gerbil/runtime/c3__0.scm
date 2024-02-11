(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1707657568)
  (begin
    (define c4-linearize__%
      (lambda (_g82991_
               _get-precedence-list7819078196_
               _struct?7819178198_
               _eq7819278200_
               _get-name7819378202_
               _rhead78204_
               _supers78205_)
        (let* ((_get-precedence-list78207_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-precedence-list7819078196_ absent-value))
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _get-precedence-list7819078196_))
               (_struct?78209_
                (if (let ()
                      (declare (not safe))
                      (eq? _struct?7819178198_ absent-value))
                    (error '"Missing required keyword argument" 'struct:)
                    _struct?7819178198_))
               (_eq78211_
                (if (let ()
                      (declare (not safe))
                      (eq? _eq7819278200_ absent-value))
                    eq?
                    _eq7819278200_))
               (_get-name78213_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-name7819378202_ absent-value))
                    identity
                    _get-name7819378202_)))
          (letrec* ((_pls78215_ (map _get-precedence-list78207_ _supers78205_))
                    (_sit78216_ '())
                    (_get-names78217_
                     (lambda (_lst78481_) (map _get-name78213_ _lst78481_)))
                    (_err78218_
                     (lambda _a78479_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp82992 (reverse _rhead78204_)))
                                (declare (not safe))
                                (_get-names78217_ __tmp82992))
                              'precedence-lists:
                              (map _get-names78217_ _pls78215_)
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_get-names78217_ _sit78216_))
                              _a78479_)))
                    (_merge-sit!78219_
                     (lambda (_sit278469_)
                       (if (let () (declare (not safe)) (null? _sit278469_))
                           '#!void
                           (if (let () (declare (not safe)) (null? _sit78216_))
                               (set! _sit78216_ _sit278469_)
                               (let _loop78471_ ((_t178473_ _sit78216_)
                                                 (_t278474_ _sit278469_))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _t178473_ _sit278469_))
                                     '#!void
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _t278474_ _sit78216_))
                                         (set! _sit78216_ _sit278469_)
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (null? _t178473_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (null? _t278474_)))
                                             (let ((__tmp82995
                                                    (let ((__tmp82998
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_get-names78217_
                                                              _sit78216_)))
                                                          (__tmp82996
                                                           (let ((__tmp82997
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_get-names78217_ _sit278469_))))
                     (declare (not safe))
                     (cons __tmp82997 '()))))
              (declare (not safe))
              (cons __tmp82998 __tmp82996))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_err78218_
                                                'single-inheritance-incompatibility:
                                                __tmp82995))
                                             (let ((__tmp82994 (cdr _t178473_))
                                                   (__tmp82993
                                                    (cdr _t278474_)))
                                               (declare (not safe))
                                               (_loop78471_
                                                __tmp82994
                                                __tmp82993))))))))))
                    (_rpls78220_
                     (map (lambda (_pl78464_)
                            (let ((_g82999_
                                   (let ()
                                     (declare (not safe))
                                     (append-reverse-until
                                      _struct?78209_
                                      _pl78464_
                                      '()))))
                              (begin
                                (let ((_g83000_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g82999_)
                                             (##vector-length _g82999_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g83000_ 2)))
                                      (error "Context expects 2 values"
                                             _g83000_)))
                                (let ((_tl78466_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g82999_ 0)))
                                      (_rh78467_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g82999_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (_merge-sit!78219_ _tl78466_))
                                    _rh78467_)))))
                          _pls78215_))
                    (_unsitr-rpl78221_
                     (lambda (_rpl78410_)
                       (let _u78412_ ((_pl-rhead78414_ _rpl78410_)
                                      (_pl-tail78415_ '())
                                      (_sit-rhead78416_ (reverse _sit78216_))
                                      (_sit-tail78417_ '()))
                         (let* ((_pl-rhead7841878427_ _pl-rhead78414_)
                                (_E7842178431_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _pl-rhead7841878427_))))
                           (let ((_K7842578461_ (lambda () _pl-tail78415_))
                                 (_K7842278445_
                                  (lambda (_plrh78435_ _c78436_)
                                    (if (member _c78436_
                                                _sit-tail78417_
                                                _eq78211_)
                                        (let ((__tmp83011
                                               (let ((__tmp83012
                                                      (reverse _pl-rhead78414_)))
                                                 (declare (not safe))
                                                 (_get-names78217_
                                                  __tmp83012)))
                                              (__tmp83010
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names78217_
                                                  _pl-tail78415_)))
                                              (__tmp83008
                                               (let ((__tmp83009
                                                      (reverse _sit-rhead78416_)))
                                                 (declare (not safe))
                                                 (_get-names78217_
                                                  __tmp83009)))
                                              (__tmp83007
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names78217_
                                                  _sit-tail78417_)))
                                              (__tmp83006
                                               (_get-name78213_ _c78436_)))
                                          (declare (not safe))
                                          (_err78218_
                                           'precedence-list-head:
                                           __tmp83011
                                           'precedence-list-tail:
                                           __tmp83010
                                           'single-inheritance-head:
                                           __tmp83008
                                           'single-inheritance-tail:
                                           __tmp83007
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp83006))
                                        (let ((_g83001_
                                               (let ((__tmp83003
                                                      (lambda (_g7843778439_)
                                                        (_eq78211_
                                                         _c78436_
                                                         _g7843778439_))))
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  __tmp83003
                                                  _sit-rhead78416_
                                                  _sit-tail78417_))))
                                          (begin
                                            (let ((_g83002_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g83001_)
                                                         (##vector-length
                                                          _g83001_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g83002_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g83002_)))
                                            (let ((_sit-rh278442_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g83001_
                                                      0)))
                                                  (_sit-tl278443_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g83001_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _sit-rh278442_))
                                                  (let ((__tmp83005
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _c78436_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pl-tail78415_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_u78412_
                                                     _plrh78435_
                                                     __tmp83005
                                                     '()
                                                     _sit-tl278443_))
                                                  (let ((__tmp83004
                                                         (cdr _sit-rh278442_)))
                                                    (declare (not safe))
                                                    (_u78412_
                                                     _plrh78435_
                                                     _pl-tail78415_
                                                     __tmp83004
                                                     _sit-tl278443_))))))))))
                             (let ((_try-match7842078457_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _pl-rhead7841878427_))
                                          (let ((_tl7842478450_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _pl-rhead7841878427_)))
                                                (_hd7842378448_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _pl-rhead7841878427_))))
                                            (let ((_c78453_ _hd7842378448_)
                                                  (_plrh78455_ _tl7842478450_))
                                              (let ()
                                                (declare (not safe))
                                                (_K7842278445_
                                                 _plrh78455_
                                                 _c78453_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E7842178431_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _pl-rhead7841878427_))
                                   (let ()
                                     (declare (not safe))
                                     (_K7842578461_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match7842078457_)))))))))
                    (_g83013_
                     (let ((_g83014_
                            (let ((__tmp83016 (reverse _supers78205_)))
                              (declare (not safe))
                              (append1! _rpls78220_ __tmp83016))))
                       #!void
                       _g83014_))
                    (_g83017_
                     (let ((_g83018_
                            (set! _pls78215_
                                  (map _unsitr-rpl78221_ _rpls78220_))))
                       #!void
                       _g83018_))
                    (_c3-select-next78222_
                     (lambda (_tails78360_)
                       (let ((_candidate?78366_
                              (lambda (_c78362_)
                                (let ((__tmp83020
                                       (lambda (_tail78364_)
                                         (let ((__tmp83021
                                                (member _c78362_
                                                        (cdr _tail78364_)
                                                        _eq78211_)))
                                           (declare (not safe))
                                           (not __tmp83021)))))
                                  (declare (not safe))
                                  (andmap1 __tmp83020 _tails78360_)))))
                         (let _loop78368_ ((_ts78370_ _tails78360_))
                           (let* ((_ts7837178381_ _ts78370_)
                                  (_else7837378389_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_err78218_))))
                                  (_K7837578395_
                                   (lambda (_rts78392_ _c78393_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_candidate?78366_ _c78393_))
                                         _c78393_
                                         (let ()
                                           (declare (not safe))
                                           (_loop78368_ _rts78392_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _ts7837178381_))
                                 (let ((_hd7837678398_
                                        (let ()
                                          (declare (not safe))
                                          (##car _ts7837178381_)))
                                       (_tl7837778400_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _ts7837178381_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _hd7837678398_))
                                       (let* ((_hd7837878403_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _hd7837678398_)))
                                              (_c78406_ _hd7837878403_)
                                              (_rts78408_ _tl7837778400_))
                                         (declare (not safe))
                                         (_K7837578395_ _rts78408_ _c78406_))
                                       (let ()
                                         (declare (not safe))
                                         (_err78218_))))
                                 (let ()
                                   (declare (not safe))
                                   (_err78218_))))))))
                    (_remove-next!78223_
                     (lambda (_next78305_ _tails78306_)
                       (let _loop78308_ ((_t78310_ _tails78306_))
                         (let* ((_t7831178322_ _t78310_)
                                (_E7831478326_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _t7831178322_))))
                           (let ((_K7832078357_ (lambda () _tails78306_))
                                 (_K7831578334_
                                  (lambda (_more78330_ _tail78331_ _head78332_)
                                    (if (_eq78211_ _head78332_ _next78305_)
                                        (set-car! _t78310_ _tail78331_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_loop78308_ _more78330_)))))
                             (let ((_try-match7831378353_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _t7831178322_))
                                          (let ((_tl7831778339_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _t7831178322_)))
                                                (_hd7831678337_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _t7831178322_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _hd7831678337_))
                                                (let ((_tl7831978344_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _hd7831678337_)))
                                                      (_hd7831878342_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _hd7831678337_))))
                                                  (let ((_head78347_
                                                         _hd7831878342_)
                                                        (_tail78349_
                                                         _tl7831978344_)
                                                        (_more78351_
                                                         _tl7831778339_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K7831578334_
                                                       _more78351_
                                                       _tail78349_
                                                       _head78347_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_E7831478326_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E7831478326_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _t7831178322_))
                                   (let ()
                                     (declare (not safe))
                                     (_K7832078357_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match7831378353_)))))))))
                    (_precedence-list78224_
                     (let _c3loop78255_ ((_rhead78257_ _rhead78204_)
                                         (_tails78258_ _pls78215_))
                       (let* ((_tails78260_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _tails78258_)))
                              (_tails7826178271_ _tails78260_)
                              (_else7826478282_
                               (lambda ()
                                 (let ((_next78279_
                                        (let ()
                                          (declare (not safe))
                                          (_c3-select-next78222_
                                           _tails78260_))))
                                   (let ((__tmp83023
                                          (let ()
                                            (declare (not safe))
                                            (cons _next78279_ _rhead78257_)))
                                         (__tmp83022
                                          (let ()
                                            (declare (not safe))
                                            (_remove-next!78223_
                                             _next78279_
                                             _tails78260_))))
                                     (declare (not safe))
                                     (_c3loop78255_ __tmp83023 __tmp83022))))))
                         (let ((_K7826978302_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (append-reverse _rhead78257_ _sit78216_))))
                               (_K7826678288_
                                (lambda (_tail78286_)
                                  (let ((__tmp83024
                                         (append _tail78286_ _sit78216_)))
                                    (declare (not safe))
                                    (append-reverse
                                     _rhead78257_
                                     __tmp83024)))))
                           (let ((_try-match7826378298_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tails7826178271_))
                                        (let ((_tl7826878293_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tails7826178271_)))
                                              (_hd7826778291_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tails7826178271_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _tl7826878293_))
                                              (let ((_tail78296_
                                                     _hd7826778291_))
                                                (declare (not safe))
                                                (_K7826678288_ _tail78296_))
                                              (let ()
                                                (declare (not safe))
                                                (_else7826478282_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else7826478282_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tails7826178271_))
                                 (let () (declare (not safe)) (_K7826978302_))
                                 (let ()
                                   (declare (not safe))
                                   (_try-match7826378298_))))))))
                    (_super-struct78225_
                     (let* ((_sit7822678234_ _sit78216_)
                            (_else7822878242_ (lambda () '#f))
                            (_K7823078247_ (lambda (_s78245_) _s78245_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _sit7822678234_))
                           (let* ((_hd7823178250_
                                   (let ()
                                     (declare (not safe))
                                     (##car _sit7822678234_)))
                                  (_s78253_ _hd7823178250_))
                             (declare (not safe))
                             (_K7823078247_ _s78253_))
                           (let () (declare (not safe)) (_else7822878242_))))))
            (values _precedence-list78224_ _super-struct78225_)))))
    (define c4-linearize__@
      (lambda (_keys7818978486_ . _args78488_)
        (apply c4-linearize__%
               _keys7818978486_
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys7818978486_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref _keys7818978486_ 'struct: absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref _keys7818978486_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref _keys7818978486_ 'get-name: absent-value))
               _args78488_)))
    (define c4-linearize
      (lambda _args7819478494_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _args7819478494_)))
    (define c3-linearize__%__%
      (lambda (__7812678129_
               _struct?7812478131_
               _rhead78133_
               _supers78134_
               _get-precedence-list78135_
               _eq78136_
               _get-name78137_)
        (let ((_struct?78139_
               (if (let ()
                     (declare (not safe))
                     (eq? _struct?7812478131_ absent-value))
                   false
                   _struct?7812478131_)))
          (letrec* ((_g83025_
                     (let ((_g83026_
                            (let ()
                              (declare (not safe))
                              (c4-linearize__%
                               '#f
                               _get-precedence-list78135_
                               _struct?78139_
                               _eq78136_
                               _get-name78137_
                               _rhead78133_
                               _supers78134_))))
                       (let ((_g83027_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g83026_)
                                    (##vector-length _g83026_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g83027_ 2)))
                             (error "Context expects 2 values" _g83027_)))
                       _g83026_))
                    (_precedence-list78141_
                     (let () (declare (not safe)) (##vector-ref _g83025_ 0)))
                    (_super-struct78142_
                     (let () (declare (not safe)) (##vector-ref _g83025_ 1))))
            _precedence-list78141_))))
    (define c3-linearize__%__0
      (lambda (__7812678147_
               _struct?7812478148_
               _rhead78149_
               _supers78150_
               _get-precedence-list78151_)
        (let* ((_eq78153_ eq?) (_get-name78155_ identity))
          (declare (not safe))
          (c3-linearize__%__%
           __7812678147_
           _struct?7812478148_
           _rhead78149_
           _supers78150_
           _get-precedence-list78151_
           _eq78153_
           _get-name78155_))))
    (define c3-linearize__%__1
      (lambda (__7812678157_
               _struct?7812478158_
               _rhead78159_
               _supers78160_
               _get-precedence-list78161_
               _eq78162_)
        (let ((_get-name78164_ identity))
          (declare (not safe))
          (c3-linearize__%__%
           __7812678157_
           _struct?7812478158_
           _rhead78159_
           _supers78160_
           _get-precedence-list78161_
           _eq78162_
           _get-name78164_))))
    (define c3-linearize__%
      (lambda _g83029_
        (let ((_g83028_ (let () (declare (not safe)) (##length _g83029_))))
          (cond ((let () (declare (not safe)) (##fx= _g83028_ 5))
                 (apply (lambda (__7812678147_
                                 _struct?7812478148_
                                 _rhead78149_
                                 _supers78150_
                                 _get-precedence-list78151_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize__%__0
                             __7812678147_
                             _struct?7812478148_
                             _rhead78149_
                             _supers78150_
                             _get-precedence-list78151_)))
                        _g83029_))
                ((let () (declare (not safe)) (##fx= _g83028_ 6))
                 (apply (lambda (__7812678157_
                                 _struct?7812478158_
                                 _rhead78159_
                                 _supers78160_
                                 _get-precedence-list78161_
                                 _eq78162_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize__%__1
                             __7812678157_
                             _struct?7812478158_
                             _rhead78159_
                             _supers78160_
                             _get-precedence-list78161_
                             _eq78162_)))
                        _g83029_))
                ((let () (declare (not safe)) (##fx= _g83028_ 7))
                 (apply (lambda (__7812678166_
                                 _struct?7812478167_
                                 _rhead78168_
                                 _supers78169_
                                 _get-precedence-list78170_
                                 _eq78171_
                                 _get-name78172_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize__%__%
                             __7812678166_
                             _struct?7812478167_
                             _rhead78168_
                             _supers78169_
                             _get-precedence-list78170_
                             _eq78171_
                             _get-name78172_)))
                        _g83029_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  c3-linearize__%
                  _g83029_))))))
    (define c3-linearize__@
      (lambda (_keys7812378177_ . _args78179_)
        (apply c3-linearize__%
               _keys7812378177_
               (let ()
                 (declare (not safe))
                 (table-ref _keys7812378177_ 'struct: absent-value))
               _args78179_)))
    (define c3-linearize
      (lambda _args7812578185_
        (apply keyword-dispatch
               '#(struct:)
               c3-linearize__@
               _args7812578185_)))))
