(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1708165428)
  (begin
    (define c4-linearize__%
      (lambda (_g90091_
               _get-precedence-list8519085196_
               _struct?8519185198_
               _eq8519285200_
               _get-name8519385202_
               _rhead85204_
               _supers85205_)
        (let* ((_get-precedence-list85207_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-precedence-list8519085196_ absent-value))
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _get-precedence-list8519085196_))
               (_struct?85209_
                (if (let ()
                      (declare (not safe))
                      (eq? _struct?8519185198_ absent-value))
                    (error '"Missing required keyword argument" 'struct:)
                    _struct?8519185198_))
               (_eq85211_
                (if (let ()
                      (declare (not safe))
                      (eq? _eq8519285200_ absent-value))
                    eq?
                    _eq8519285200_))
               (_get-name85213_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-name8519385202_ absent-value))
                    identity
                    _get-name8519385202_)))
          (letrec* ((_pls85215_ (map _get-precedence-list85207_ _supers85205_))
                    (_sit85216_ '())
                    (_get-names85217_
                     (lambda (_lst85481_) (map _get-name85213_ _lst85481_)))
                    (_err85218_
                     (lambda _a85479_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp90092 (reverse _rhead85204_)))
                                (declare (not safe))
                                (_get-names85217_ __tmp90092))
                              'precedence-lists:
                              (map _get-names85217_ _pls85215_)
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_get-names85217_ _sit85216_))
                              _a85479_)))
                    (_merge-sit!85219_
                     (lambda (_sit285469_)
                       (if (let () (declare (not safe)) (null? _sit285469_))
                           '#!void
                           (if (let () (declare (not safe)) (null? _sit85216_))
                               (set! _sit85216_ _sit285469_)
                               (let _loop85471_ ((_t185473_ _sit85216_)
                                                 (_t285474_ _sit285469_))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _t185473_ _sit285469_))
                                     '#!void
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _t285474_ _sit85216_))
                                         (set! _sit85216_ _sit285469_)
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (null? _t185473_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (null? _t285474_)))
                                             (let ((__tmp90095
                                                    (let ((__tmp90098
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_get-names85217_
                                                              _sit85216_)))
                                                          (__tmp90096
                                                           (let ((__tmp90097
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_get-names85217_ _sit285469_))))
                     (declare (not safe))
                     (cons __tmp90097 '()))))
              (declare (not safe))
              (cons __tmp90098 __tmp90096))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_err85218_
                                                'single-inheritance-incompatibility:
                                                __tmp90095))
                                             (let ((__tmp90094 (cdr _t185473_))
                                                   (__tmp90093
                                                    (cdr _t285474_)))
                                               (declare (not safe))
                                               (_loop85471_
                                                __tmp90094
                                                __tmp90093))))))))))
                    (_rpls85220_
                     (map (lambda (_pl85464_)
                            (let ((_g90099_
                                   (let ()
                                     (declare (not safe))
                                     (append-reverse-until
                                      _struct?85209_
                                      _pl85464_
                                      '()))))
                              (begin
                                (let ((_g90100_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g90099_)
                                             (##vector-length _g90099_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g90100_ 2)))
                                      (error "Context expects 2 values"
                                             _g90100_)))
                                (let ((_tl85466_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g90099_ 0)))
                                      (_rh85467_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g90099_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (_merge-sit!85219_ _tl85466_))
                                    _rh85467_)))))
                          _pls85215_))
                    (_unsitr-rpl85221_
                     (lambda (_rpl85410_)
                       (let _u85412_ ((_pl-rhead85414_ _rpl85410_)
                                      (_pl-tail85415_ '())
                                      (_sit-rhead85416_ (reverse _sit85216_))
                                      (_sit-tail85417_ '()))
                         (let* ((_pl-rhead8541885427_ _pl-rhead85414_)
                                (_E8542185431_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _pl-rhead8541885427_))))
                           (let ((_K8542585461_ (lambda () _pl-tail85415_))
                                 (_K8542285445_
                                  (lambda (_plrh85435_ _c85436_)
                                    (if (member _c85436_
                                                _sit-tail85417_
                                                _eq85211_)
                                        (let ((__tmp90111
                                               (let ((__tmp90112
                                                      (reverse _pl-rhead85414_)))
                                                 (declare (not safe))
                                                 (_get-names85217_
                                                  __tmp90112)))
                                              (__tmp90110
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names85217_
                                                  _pl-tail85415_)))
                                              (__tmp90108
                                               (let ((__tmp90109
                                                      (reverse _sit-rhead85416_)))
                                                 (declare (not safe))
                                                 (_get-names85217_
                                                  __tmp90109)))
                                              (__tmp90107
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names85217_
                                                  _sit-tail85417_)))
                                              (__tmp90106
                                               (_get-name85213_ _c85436_)))
                                          (declare (not safe))
                                          (_err85218_
                                           'precedence-list-head:
                                           __tmp90111
                                           'precedence-list-tail:
                                           __tmp90110
                                           'single-inheritance-head:
                                           __tmp90108
                                           'single-inheritance-tail:
                                           __tmp90107
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp90106))
                                        (let ((_g90101_
                                               (let ((__tmp90103
                                                      (lambda (_g8543785439_)
                                                        (_eq85211_
                                                         _c85436_
                                                         _g8543785439_))))
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  __tmp90103
                                                  _sit-rhead85416_
                                                  _sit-tail85417_))))
                                          (begin
                                            (let ((_g90102_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g90101_)
                                                         (##vector-length
                                                          _g90101_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g90102_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g90102_)))
                                            (let ((_sit-rh285442_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g90101_
                                                      0)))
                                                  (_sit-tl285443_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g90101_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _sit-rh285442_))
                                                  (let ((__tmp90105
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _c85436_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pl-tail85415_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_u85412_
                                                     _plrh85435_
                                                     __tmp90105
                                                     '()
                                                     _sit-tl285443_))
                                                  (let ((__tmp90104
                                                         (cdr _sit-rh285442_)))
                                                    (declare (not safe))
                                                    (_u85412_
                                                     _plrh85435_
                                                     _pl-tail85415_
                                                     __tmp90104
                                                     _sit-tl285443_))))))))))
                             (let ((_try-match8542085457_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _pl-rhead8541885427_))
                                          (let ((_tl8542485450_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _pl-rhead8541885427_)))
                                                (_hd8542385448_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _pl-rhead8541885427_))))
                                            (let ((_c85453_ _hd8542385448_)
                                                  (_plrh85455_ _tl8542485450_))
                                              (let ()
                                                (declare (not safe))
                                                (_K8542285445_
                                                 _plrh85455_
                                                 _c85453_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E8542185431_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _pl-rhead8541885427_))
                                   (let ()
                                     (declare (not safe))
                                     (_K8542585461_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match8542085457_)))))))))
                    (_g90113_
                     (let ((_g90114_
                            (let ((__tmp90116 (reverse _supers85205_)))
                              (declare (not safe))
                              (append1! _rpls85220_ __tmp90116))))
                       #!void
                       _g90114_))
                    (_g90117_
                     (let ((_g90118_
                            (set! _pls85215_
                                  (map _unsitr-rpl85221_ _rpls85220_))))
                       #!void
                       _g90118_))
                    (_c3-select-next85222_
                     (lambda (_tails85360_)
                       (let ((_candidate?85366_
                              (lambda (_c85362_)
                                (let ((__tmp90120
                                       (lambda (_tail85364_)
                                         (let ((__tmp90121
                                                (member _c85362_
                                                        (cdr _tail85364_)
                                                        _eq85211_)))
                                           (declare (not safe))
                                           (not __tmp90121)))))
                                  (declare (not safe))
                                  (andmap1 __tmp90120 _tails85360_)))))
                         (let _loop85368_ ((_ts85370_ _tails85360_))
                           (let* ((_ts8537185381_ _ts85370_)
                                  (_else8537385389_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_err85218_))))
                                  (_K8537585395_
                                   (lambda (_rts85392_ _c85393_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_candidate?85366_ _c85393_))
                                         _c85393_
                                         (let ()
                                           (declare (not safe))
                                           (_loop85368_ _rts85392_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _ts8537185381_))
                                 (let ((_hd8537685398_
                                        (let ()
                                          (declare (not safe))
                                          (##car _ts8537185381_)))
                                       (_tl8537785400_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _ts8537185381_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _hd8537685398_))
                                       (let* ((_hd8537885403_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _hd8537685398_)))
                                              (_c85406_ _hd8537885403_)
                                              (_rts85408_ _tl8537785400_))
                                         (declare (not safe))
                                         (_K8537585395_ _rts85408_ _c85406_))
                                       (let ()
                                         (declare (not safe))
                                         (_err85218_))))
                                 (let ()
                                   (declare (not safe))
                                   (_err85218_))))))))
                    (_remove-next!85223_
                     (lambda (_next85305_ _tails85306_)
                       (let _loop85308_ ((_t85310_ _tails85306_))
                         (let* ((_t8531185322_ _t85310_)
                                (_E8531485326_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _t8531185322_))))
                           (let ((_K8532085357_ (lambda () _tails85306_))
                                 (_K8531585334_
                                  (lambda (_more85330_ _tail85331_ _head85332_)
                                    (if (_eq85211_ _head85332_ _next85305_)
                                        (set-car! _t85310_ _tail85331_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_loop85308_ _more85330_)))))
                             (let ((_try-match8531385353_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _t8531185322_))
                                          (let ((_tl8531785339_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _t8531185322_)))
                                                (_hd8531685337_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _t8531185322_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _hd8531685337_))
                                                (let ((_tl8531985344_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _hd8531685337_)))
                                                      (_hd8531885342_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _hd8531685337_))))
                                                  (let ((_head85347_
                                                         _hd8531885342_)
                                                        (_tail85349_
                                                         _tl8531985344_)
                                                        (_more85351_
                                                         _tl8531785339_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K8531585334_
                                                       _more85351_
                                                       _tail85349_
                                                       _head85347_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_E8531485326_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E8531485326_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _t8531185322_))
                                   (let ()
                                     (declare (not safe))
                                     (_K8532085357_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match8531385353_)))))))))
                    (_precedence-list85224_
                     (let _c3loop85255_ ((_rhead85257_ _rhead85204_)
                                         (_tails85258_ _pls85215_))
                       (let* ((_tails85260_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _tails85258_)))
                              (_tails8526185271_ _tails85260_)
                              (_else8526485282_
                               (lambda ()
                                 (let ((_next85279_
                                        (let ()
                                          (declare (not safe))
                                          (_c3-select-next85222_
                                           _tails85260_))))
                                   (let ((__tmp90123
                                          (let ()
                                            (declare (not safe))
                                            (cons _next85279_ _rhead85257_)))
                                         (__tmp90122
                                          (let ()
                                            (declare (not safe))
                                            (_remove-next!85223_
                                             _next85279_
                                             _tails85260_))))
                                     (declare (not safe))
                                     (_c3loop85255_ __tmp90123 __tmp90122))))))
                         (let ((_K8526985302_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (append-reverse _rhead85257_ _sit85216_))))
                               (_K8526685288_
                                (lambda (_tail85286_)
                                  (let ((__tmp90124
                                         (append _tail85286_ _sit85216_)))
                                    (declare (not safe))
                                    (append-reverse
                                     _rhead85257_
                                     __tmp90124)))))
                           (let ((_try-match8526385298_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tails8526185271_))
                                        (let ((_tl8526885293_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tails8526185271_)))
                                              (_hd8526785291_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tails8526185271_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _tl8526885293_))
                                              (let ((_tail85296_
                                                     _hd8526785291_))
                                                (declare (not safe))
                                                (_K8526685288_ _tail85296_))
                                              (let ()
                                                (declare (not safe))
                                                (_else8526485282_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else8526485282_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tails8526185271_))
                                 (let () (declare (not safe)) (_K8526985302_))
                                 (let ()
                                   (declare (not safe))
                                   (_try-match8526385298_))))))))
                    (_super-struct85225_
                     (let* ((_sit8522685234_ _sit85216_)
                            (_else8522885242_ (lambda () '#f))
                            (_K8523085247_ (lambda (_s85245_) _s85245_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _sit8522685234_))
                           (let* ((_hd8523185250_
                                   (let ()
                                     (declare (not safe))
                                     (##car _sit8522685234_)))
                                  (_s85253_ _hd8523185250_))
                             (declare (not safe))
                             (_K8523085247_ _s85253_))
                           (let () (declare (not safe)) (_else8522885242_))))))
            (values _precedence-list85224_ _super-struct85225_)))))
    (define c4-linearize__@
      (lambda (_keys8518985486_ . _args85488_)
        (apply c4-linearize__%
               _keys8518985486_
               (let ()
                 (declare (not safe))
                 (table-ref
                  _keys8518985486_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref _keys8518985486_ 'struct: absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref _keys8518985486_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (table-ref _keys8518985486_ 'get-name: absent-value))
               _args85488_)))
    (define c4-linearize
      (lambda _args8519485494_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _args8519485494_)))))
