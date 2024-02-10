(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1707556024)
  (begin
    (define c3-linearize__%
      (lambda (_rhead76956_
               _supers76957_
               _get-precedence-list76958_
               _eqpred76959_
               _get-name76960_)
        (let ((_tails76962_ (map _get-precedence-list76958_ _supers76957_)))
          (let () (declare (not safe)) (append1! _tails76962_ _supers76957_))
          (let ()
            (declare (not safe))
            (c3-linearize-loop__%
             _rhead76956_
             _tails76962_
             _eqpred76959_
             _get-name76960_)))))
    (define c3-linearize__0
      (lambda (_rhead76967_ _supers76968_ _get-precedence-list76969_)
        (let* ((_eqpred76971_ eq?) (_get-name76973_ identity))
          (declare (not safe))
          (c3-linearize__%
           _rhead76967_
           _supers76968_
           _get-precedence-list76969_
           _eqpred76971_
           _get-name76973_))))
    (define c3-linearize__1
      (lambda (_rhead76975_
               _supers76976_
               _get-precedence-list76977_
               _eqpred76978_)
        (let ((_get-name76980_ identity))
          (declare (not safe))
          (c3-linearize__%
           _rhead76975_
           _supers76976_
           _get-precedence-list76977_
           _eqpred76978_
           _get-name76980_))))
    (define c3-linearize
      (lambda _g81202_
        (let ((_g81201_ (let () (declare (not safe)) (##length _g81202_))))
          (cond ((let () (declare (not safe)) (##fx= _g81201_ 3))
                 (apply (lambda (_rhead76967_
                                 _supers76968_
                                 _get-precedence-list76969_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize__0
                             _rhead76967_
                             _supers76968_
                             _get-precedence-list76969_)))
                        _g81202_))
                ((let () (declare (not safe)) (##fx= _g81201_ 4))
                 (apply (lambda (_rhead76975_
                                 _supers76976_
                                 _get-precedence-list76977_
                                 _eqpred76978_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize__1
                             _rhead76975_
                             _supers76976_
                             _get-precedence-list76977_
                             _eqpred76978_)))
                        _g81202_))
                ((let () (declare (not safe)) (##fx= _g81201_ 5))
                 (apply (lambda (_rhead76982_
                                 _supers76983_
                                 _get-precedence-list76984_
                                 _eqpred76985_
                                 _get-name76986_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize__%
                             _rhead76982_
                             _supers76983_
                             _get-precedence-list76984_
                             _eqpred76985_
                             _get-name76986_)))
                        _g81202_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  c3-linearize
                  _g81202_))))))
    (define c3-linearize-loop__%
      (lambda (_rhead76872_ _tails76873_ _eqpred76874_ _get-name76875_)
        (let _loop76877_ ((_rhead76879_ _rhead76872_)
                          (_tails76880_ _tails76873_))
          (let* ((_tails76882_
                  (let () (declare (not safe)) (remove-nulls! _tails76880_)))
                 (_tails7688376893_ _tails76882_)
                 (_else7688676911_
                  (lambda ()
                    (let* ((_err76906_
                            (lambda ()
                              (error '"Inconsistent precedence graph"
                                     'head:
                                     (map _get-name76875_
                                          (reverse _rhead76879_))
                                     'tails:
                                     (map (lambda (_g7690176903_)
                                            (map _get-name76875_
                                                 _g7690176903_))
                                          _tails76882_))))
                           (_next76908_
                            (let ()
                              (declare (not safe))
                              (c3-select-next
                               _tails76882_
                               _eqpred76874_
                               _err76906_))))
                      (let ((__tmp81204
                             (let ()
                               (declare (not safe))
                               (cons _next76908_ _rhead76879_)))
                            (__tmp81203
                             (let ()
                               (declare (not safe))
                               (remove-next!__%
                                _next76908_
                                _tails76882_
                                _eqpred76874_))))
                        (declare (not safe))
                        (_loop76877_ __tmp81204 __tmp81203))))))
            (let ((_K7689176931_ (lambda () (reverse _rhead76879_)))
                  (_K7688876917_
                   (lambda (_tail76915_)
                     (let ()
                       (declare (not safe))
                       (append-reverse _rhead76879_ _tail76915_)))))
              (let ((_try-match7688576927_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##pair? _tails7688376893_))
                           (let ((_tl7689076922_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _tails7688376893_)))
                                 (_hd7688976920_
                                  (let ()
                                    (declare (not safe))
                                    (##car _tails7688376893_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tl7689076922_))
                                 (let ((_tail76925_ _hd7688976920_))
                                   (declare (not safe))
                                   (_K7688876917_ _tail76925_))
                                 (let ()
                                   (declare (not safe))
                                   (_else7688676911_))))
                           (let () (declare (not safe)) (_else7688676911_))))))
                (if (let () (declare (not safe)) (##null? _tails7688376893_))
                    (let () (declare (not safe)) (_K7689176931_))
                    (let ()
                      (declare (not safe))
                      (_try-match7688576927_)))))))))
    (define c3-linearize-loop__0
      (lambda (_rhead76937_ _tails76938_)
        (let* ((_eqpred76940_ eq?) (_get-name76942_ identity))
          (declare (not safe))
          (c3-linearize-loop__%
           _rhead76937_
           _tails76938_
           _eqpred76940_
           _get-name76942_))))
    (define c3-linearize-loop__1
      (lambda (_rhead76944_ _tails76945_ _eqpred76946_)
        (let ((_get-name76948_ identity))
          (declare (not safe))
          (c3-linearize-loop__%
           _rhead76944_
           _tails76945_
           _eqpred76946_
           _get-name76948_))))
    (define c3-linearize-loop
      (lambda _g81206_
        (let ((_g81205_ (let () (declare (not safe)) (##length _g81206_))))
          (cond ((let () (declare (not safe)) (##fx= _g81205_ 2))
                 (apply (lambda (_rhead76937_ _tails76938_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize-loop__0 _rhead76937_ _tails76938_)))
                        _g81206_))
                ((let () (declare (not safe)) (##fx= _g81205_ 3))
                 (apply (lambda (_rhead76944_ _tails76945_ _eqpred76946_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize-loop__1
                             _rhead76944_
                             _tails76945_
                             _eqpred76946_)))
                        _g81206_))
                ((let () (declare (not safe)) (##fx= _g81205_ 4))
                 (apply (lambda (_rhead76950_
                                 _tails76951_
                                 _eqpred76952_
                                 _get-name76953_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize-loop__%
                             _rhead76950_
                             _tails76951_
                             _eqpred76952_
                             _get-name76953_)))
                        _g81206_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  c3-linearize-loop
                  _g81206_))))))
    (define c3-select-next
      (lambda (_tails76819_ _eqpred76820_ _err76821_)
        (let ((_candidate?76827_
               (lambda (_c76823_)
                 (let ((__tmp81207
                        (lambda (_tail76825_)
                          (let ((__tmp81208
                                 (member _c76823_
                                         (cdr _tail76825_)
                                         _eqpred76820_)))
                            (declare (not safe))
                            (not __tmp81208)))))
                   (declare (not safe))
                   (andmap1 __tmp81207 _tails76819_)))))
          (let _loop76829_ ((_ts76831_ _tails76819_))
            (let* ((_ts7683276842_ _ts76831_)
                   (_else7683476850_ (lambda () (_err76821_)))
                   (_K7683676856_
                    (lambda (_rts76853_ _c76854_)
                      (if (let ()
                            (declare (not safe))
                            (_candidate?76827_ _c76854_))
                          _c76854_
                          (let ()
                            (declare (not safe))
                            (_loop76829_ _rts76853_))))))
              (if (let () (declare (not safe)) (##pair? _ts7683276842_))
                  (let ((_hd7683776859_
                         (let () (declare (not safe)) (##car _ts7683276842_)))
                        (_tl7683876861_
                         (let () (declare (not safe)) (##cdr _ts7683276842_))))
                    (if (let () (declare (not safe)) (##pair? _hd7683776859_))
                        (let* ((_hd7683976864_
                                (let ()
                                  (declare (not safe))
                                  (##car _hd7683776859_)))
                               (_c76867_ _hd7683976864_)
                               (_rts76869_ _tl7683876861_))
                          (declare (not safe))
                          (_K7683676856_ _rts76869_ _c76867_))
                        (let () (declare (not safe)) (_err76821_))))
                  (let () (declare (not safe)) (_err76821_))))))))
    (define remove-next!__%
      (lambda (_next76751_ _tails76752_ _eqpred76753_)
        (let _loop76755_ ((_t76757_ _tails76752_))
          (let* ((_t7675876769_ _t76757_)
                 (_E7676176773_
                  (lambda () (error '"No clause matching" _t7675876769_))))
            (let ((_K7676776804_ (lambda () _tails76752_))
                  (_K7676276781_
                   (lambda (_more76777_ _tail76778_ _head76779_)
                     (if (_eqpred76753_ _head76779_ _next76751_)
                         (set-car! _t76757_ _tail76778_)
                         '#!void)
                     (let () (declare (not safe)) (_loop76755_ _more76777_)))))
              (let ((_try-match7676076800_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##pair? _t7675876769_))
                           (let ((_tl7676476786_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _t7675876769_)))
                                 (_hd7676376784_
                                  (let ()
                                    (declare (not safe))
                                    (##car _t7675876769_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _hd7676376784_))
                                 (let ((_tl7676676791_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _hd7676376784_)))
                                       (_hd7676576789_
                                        (let ()
                                          (declare (not safe))
                                          (##car _hd7676376784_))))
                                   (let ((_head76794_ _hd7676576789_)
                                         (_tail76796_ _tl7676676791_)
                                         (_more76798_ _tl7676476786_))
                                     (let ()
                                       (declare (not safe))
                                       (_K7676276781_
                                        _more76798_
                                        _tail76796_
                                        _head76794_))))
                                 (let ()
                                   (declare (not safe))
                                   (_E7676176773_))))
                           (let () (declare (not safe)) (_E7676176773_))))))
                (if (let () (declare (not safe)) (##null? _t7675876769_))
                    (let () (declare (not safe)) (_K7676776804_))
                    (let ()
                      (declare (not safe))
                      (_try-match7676076800_)))))))))
    (define remove-next!__0
      (lambda (_next76810_ _tails76811_)
        (let ((_eqpred76813_ eq?))
          (declare (not safe))
          (remove-next!__% _next76810_ _tails76811_ _eqpred76813_))))
    (define remove-next!
      (lambda _g81210_
        (let ((_g81209_ (let () (declare (not safe)) (##length _g81210_))))
          (cond ((let () (declare (not safe)) (##fx= _g81209_ 2))
                 (apply (lambda (_next76810_ _tails76811_)
                          (let ()
                            (declare (not safe))
                            (remove-next!__0 _next76810_ _tails76811_)))
                        _g81210_))
                ((let () (declare (not safe)) (##fx= _g81209_ 3))
                 (apply (lambda (_next76815_ _tails76816_ _eqpred76817_)
                          (let ()
                            (declare (not safe))
                            (remove-next!__%
                             _next76815_
                             _tails76816_
                             _eqpred76817_)))
                        _g81210_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  remove-next!
                  _g81210_))))))))
