(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1709159706)
  (begin
    (define make-promise
      (lambda (_thunk61440_)
        (let () (declare (not safe)) (##make-delay-promise _thunk61440_))))
    (define call-with-parameters
      (lambda (_thunk61388_ . _rest61389_)
        (let* ((_rest6139061401_ _rest61389_)
               (_E6139361405_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _rest6139061401_)))))
          (let ((_K6139561421_
                 (lambda (_rest61416_ _val61417_ _param61418_)
                   (let ((__tmp61452
                          (if (let () (declare (not safe)) (null? _rest61416_))
                              _thunk61388_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk61388_
                                       _rest61416_)))))
                     (declare (not safe))
                     (##parameterize1 _param61418_ _val61417_ __tmp61452))))
                (_K6139461410_ (lambda () (_thunk61388_))))
            (let ((_try-match6139261413_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _rest6139061401_))
                         (let () (declare (not safe)) (_thunk61388_))
                         (let () (declare (not safe)) (_E6139361405_))))))
              (if (let () (declare (not safe)) (##pair? _rest6139061401_))
                  (let ((_tl6139761426_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6139061401_)))
                        (_hd6139661424_
                         (let ()
                           (declare (not safe))
                           (##car _rest6139061401_))))
                    (if (let () (declare (not safe)) (##pair? _tl6139761426_))
                        (let ((_tl6139961433_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6139761426_)))
                              (_hd6139861431_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6139761426_))))
                          (let ((_param61429_ _hd6139661424_)
                                (_val61436_ _hd6139861431_)
                                (_rest61438_ _tl6139961433_))
                            (let ()
                              (declare (not safe))
                              (_K6139561421_
                               _rest61438_
                               _val61436_
                               _param61429_))))
                        (let () (declare (not safe)) (_E6139361405_))))
                  (let () (declare (not safe)) (_try-match6139261413_))))))))
    (define with-unwind-protect
      (lambda (_K61381_ _fini61382_)
        (let ((_once61384_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once61384_
                 (let ()
                   (declare (not safe))
                   (error '"Cannot re-enter unwind protected block"))
                 (set! _once61384_ '#t)))
           _K61381_
           _fini61382_))))
    (define keyword-dispatch
      (lambda (_kwt61278_ _K61279_ . _all-args61280_)
        (if _kwt61278_
            (if (let () (declare (not safe)) (vector? _kwt61278_))
                '#!void
                (let ()
                  (declare (not safe))
                  (error '"expected vector" _kwt61278_)))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K61279_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"expected procedure" _K61279_)))
        (let ((_keys61282_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _lp61284_ ((_rest61286_ _all-args61280_)
                          (_args61287_ '#f)
                          (_tail61288_ '#f))
            (let* ((_rest6128961297_ _rest61286_)
                   (_else6129161305_
                    (lambda ()
                      (if _args61287_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail61288_ '()))
                            (let ((__tmp61453
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys61282_ _args61287_))))
                              (declare (not safe))
                              (##apply _K61279_ __tmp61453)))
                          (_K61279_ _keys61282_))))
                   (_K6129361369_
                    (lambda (_hd-rest61308_ _hd61309_)
                      (if (keyword? _hd61309_)
                          (let* ((_hd-rest6131061317_ _hd-rest61308_)
                                 (_E6131261321_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (error '"No clause matching"
                                             _hd-rest6131061317_))))
                                 (_K6131361329_
                                  (lambda (_rest61324_ _val61325_)
                                    (if _kwt61278_
                                        (let ((_pos61327_
                                               (let ((__tmp61457
                                                      (keyword-hash _hd61309_))
                                                     (__tmp61456
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt61278_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp61457
                                                  __tmp61456))))
                                          (if (let ((__tmp61458
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt61278_
                                                        _pos61327_))))
                                                (declare (not safe))
                                                (eq? _hd61309_ __tmp61458))
                                              '#!void
                                              (let ()
                                                (declare (not safe))
                                                (error '"Unexpected keyword argument"
                                                       _K61279_
                                                       _hd61309_))))
                                        '#!void)
                                    (if (let ((__tmp61459
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _keys61282_
                                                  _hd61309_
                                                  absent-value))))
                                          (declare (not safe))
                                          (eq? __tmp61459 absent-value))
                                        '#!void
                                        (let ()
                                          (declare (not safe))
                                          (error '"Duplicate keyword argument"
                                                 _K61279_
                                                 _hd61309_)))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _keys61282_
                                       _hd61309_
                                       _val61325_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp61284_
                                       _rest61324_
                                       _args61287_
                                       _tail61288_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest6131061317_))
                                (let ((_hd6131461332_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest6131061317_)))
                                      (_tl6131561334_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest6131061317_))))
                                  (let* ((_val61337_ _hd6131461332_)
                                         (_rest61339_ _tl6131561334_))
                                    (declare (not safe))
                                    (_K6131361329_ _rest61339_ _val61337_)))
                                (let () (declare (not safe)) (_E6131261321_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd61309_ '#!key))
                              (let* ((_hd-rest6134061347_ _hd-rest61308_)
                                     (_E6134261351_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (error '"No clause matching"
                                                 _hd-rest6134061347_))))
                                     (_K6134361357_
                                      (lambda (_rest61354_ _val61355_)
                                        (if _args61287_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail61288_
                                                 _hd-rest61308_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp61284_
                                                 _rest61354_
                                                 _args61287_
                                                 _hd-rest61308_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp61284_
                                               _rest61354_
                                               _hd-rest61308_
                                               _hd-rest61308_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest6134061347_))
                                    (let ((_hd6134461360_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest6134061347_)))
                                          (_tl6134561362_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest6134061347_))))
                                      (let* ((_val61365_ _hd6134461360_)
                                             (_rest61367_ _tl6134561362_))
                                        (declare (not safe))
                                        (_K6134361357_
                                         _rest61367_
                                         _val61365_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E6134261351_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd61309_ '#!rest))
                                  (if _args61287_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail61288_
                                           _hd-rest61308_))
                                        (let ((__tmp61455
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys61282_
                                                       _args61287_))))
                                          (declare (not safe))
                                          (##apply _K61279_ __tmp61455)))
                                      (let ((__tmp61454
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys61282_
                                                     _hd-rest61308_))))
                                        (declare (not safe))
                                        (##apply _K61279_ __tmp61454)))
                                  (if _args61287_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail61288_ _rest61286_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp61284_
                                           _hd-rest61308_
                                           _args61287_
                                           _rest61286_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp61284_
                                         _hd-rest61308_
                                         _rest61286_
                                         _rest61286_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6128961297_))
                  (let ((_hd6129461372_
                         (let ()
                           (declare (not safe))
                           (##car _rest6128961297_)))
                        (_tl6129561374_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6128961297_))))
                    (let* ((_hd61377_ _hd6129461372_)
                           (_hd-rest61379_ _tl6129561374_))
                      (declare (not safe))
                      (_K6129361369_ _hd-rest61379_ _hd61377_)))
                  (let () (declare (not safe)) (_else6129161305_))))))))
    (define keyword-rest
      (lambda (_kwt61270_ . _drop61271_)
        (let ((_rest61273_ '()))
          (let ((__tmp61460
                 (lambda (_k61275_ _v61276_)
                   (if (memq _k61275_ _drop61271_)
                       '#!void
                       (set! _rest61273_
                             (let ((__tmp61461
                                    (let ()
                                      (declare (not safe))
                                      (cons _v61276_ _rest61273_))))
                               (declare (not safe))
                               (cons _k61275_ __tmp61461)))))))
            (declare (not safe))
            (raw-table-for-each _kwt61270_ __tmp61460))
          _rest61273_)))))
