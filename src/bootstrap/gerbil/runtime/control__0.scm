(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1709128371)
  (begin
    (define make-promise
      (lambda (_thunk61438_)
        (let () (declare (not safe)) (##make-delay-promise _thunk61438_))))
    (define call-with-parameters
      (lambda (_thunk61386_ . _rest61387_)
        (let* ((_rest6138861399_ _rest61387_)
               (_E6139161403_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _rest6138861399_)))))
          (let ((_K6139361419_
                 (lambda (_rest61414_ _val61415_ _param61416_)
                   (let ((__tmp61450
                          (if (let () (declare (not safe)) (null? _rest61414_))
                              _thunk61386_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk61386_
                                       _rest61414_)))))
                     (declare (not safe))
                     (##parameterize1 _param61416_ _val61415_ __tmp61450))))
                (_K6139261408_ (lambda () (_thunk61386_))))
            (let ((_try-match6139061411_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _rest6138861399_))
                         (let () (declare (not safe)) (_thunk61386_))
                         (let () (declare (not safe)) (_E6139161403_))))))
              (if (let () (declare (not safe)) (##pair? _rest6138861399_))
                  (let ((_tl6139561424_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6138861399_)))
                        (_hd6139461422_
                         (let ()
                           (declare (not safe))
                           (##car _rest6138861399_))))
                    (if (let () (declare (not safe)) (##pair? _tl6139561424_))
                        (let ((_tl6139761431_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6139561424_)))
                              (_hd6139661429_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6139561424_))))
                          (let ((_param61427_ _hd6139461422_)
                                (_val61434_ _hd6139661429_)
                                (_rest61436_ _tl6139761431_))
                            (let ()
                              (declare (not safe))
                              (_K6139361419_
                               _rest61436_
                               _val61434_
                               _param61427_))))
                        (let () (declare (not safe)) (_E6139161403_))))
                  (let () (declare (not safe)) (_try-match6139061411_))))))))
    (define with-unwind-protect
      (lambda (_K61379_ _fini61380_)
        (let ((_once61382_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once61382_
                 (let ()
                   (declare (not safe))
                   (error '"Cannot re-enter unwind protected block"))
                 (set! _once61382_ '#t)))
           _K61379_
           _fini61380_))))
    (define keyword-dispatch
      (lambda (_kwt61276_ _K61277_ . _all-args61278_)
        (if _kwt61276_
            (if (let () (declare (not safe)) (vector? _kwt61276_))
                '#!void
                (let ()
                  (declare (not safe))
                  (error '"expected vector" _kwt61276_)))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K61277_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"expected procedure" _K61277_)))
        (let ((_keys61280_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _lp61282_ ((_rest61284_ _all-args61278_)
                          (_args61285_ '#f)
                          (_tail61286_ '#f))
            (let* ((_rest6128761295_ _rest61284_)
                   (_else6128961303_
                    (lambda ()
                      (if _args61285_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail61286_ '()))
                            (let ((__tmp61451
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys61280_ _args61285_))))
                              (declare (not safe))
                              (##apply _K61277_ __tmp61451)))
                          (_K61277_ _keys61280_))))
                   (_K6129161367_
                    (lambda (_hd-rest61306_ _hd61307_)
                      (if (keyword? _hd61307_)
                          (let* ((_hd-rest6130861315_ _hd-rest61306_)
                                 (_E6131061319_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (error '"No clause matching"
                                             _hd-rest6130861315_))))
                                 (_K6131161327_
                                  (lambda (_rest61322_ _val61323_)
                                    (if _kwt61276_
                                        (let ((_pos61325_
                                               (let ((__tmp61455
                                                      (keyword-hash _hd61307_))
                                                     (__tmp61454
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt61276_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp61455
                                                  __tmp61454))))
                                          (if (let ((__tmp61456
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt61276_
                                                        _pos61325_))))
                                                (declare (not safe))
                                                (eq? _hd61307_ __tmp61456))
                                              '#!void
                                              (let ()
                                                (declare (not safe))
                                                (error '"Unexpected keyword argument"
                                                       _K61277_
                                                       _hd61307_))))
                                        '#!void)
                                    (if (let ((__tmp61457
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _keys61280_
                                                  _hd61307_
                                                  absent-value))))
                                          (declare (not safe))
                                          (eq? __tmp61457 absent-value))
                                        '#!void
                                        (let ()
                                          (declare (not safe))
                                          (error '"Duplicate keyword argument"
                                                 _K61277_
                                                 _hd61307_)))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _keys61280_
                                       _hd61307_
                                       _val61323_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp61282_
                                       _rest61322_
                                       _args61285_
                                       _tail61286_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest6130861315_))
                                (let ((_hd6131261330_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest6130861315_)))
                                      (_tl6131361332_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest6130861315_))))
                                  (let* ((_val61335_ _hd6131261330_)
                                         (_rest61337_ _tl6131361332_))
                                    (declare (not safe))
                                    (_K6131161327_ _rest61337_ _val61335_)))
                                (let () (declare (not safe)) (_E6131061319_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd61307_ '#!key))
                              (let* ((_hd-rest6133861345_ _hd-rest61306_)
                                     (_E6134061349_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (error '"No clause matching"
                                                 _hd-rest6133861345_))))
                                     (_K6134161355_
                                      (lambda (_rest61352_ _val61353_)
                                        (if _args61285_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail61286_
                                                 _hd-rest61306_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp61282_
                                                 _rest61352_
                                                 _args61285_
                                                 _hd-rest61306_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp61282_
                                               _rest61352_
                                               _hd-rest61306_
                                               _hd-rest61306_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest6133861345_))
                                    (let ((_hd6134261358_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest6133861345_)))
                                          (_tl6134361360_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest6133861345_))))
                                      (let* ((_val61363_ _hd6134261358_)
                                             (_rest61365_ _tl6134361360_))
                                        (declare (not safe))
                                        (_K6134161355_
                                         _rest61365_
                                         _val61363_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E6134061349_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd61307_ '#!rest))
                                  (if _args61285_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail61286_
                                           _hd-rest61306_))
                                        (let ((__tmp61453
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys61280_
                                                       _args61285_))))
                                          (declare (not safe))
                                          (##apply _K61277_ __tmp61453)))
                                      (let ((__tmp61452
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys61280_
                                                     _hd-rest61306_))))
                                        (declare (not safe))
                                        (##apply _K61277_ __tmp61452)))
                                  (if _args61285_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail61286_ _rest61284_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp61282_
                                           _hd-rest61306_
                                           _args61285_
                                           _rest61284_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp61282_
                                         _hd-rest61306_
                                         _rest61284_
                                         _rest61284_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6128761295_))
                  (let ((_hd6129261370_
                         (let ()
                           (declare (not safe))
                           (##car _rest6128761295_)))
                        (_tl6129361372_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6128761295_))))
                    (let* ((_hd61375_ _hd6129261370_)
                           (_hd-rest61377_ _tl6129361372_))
                      (declare (not safe))
                      (_K6129161367_ _hd-rest61377_ _hd61375_)))
                  (let () (declare (not safe)) (_else6128961303_))))))))
    (define keyword-rest
      (lambda (_kwt61268_ . _drop61269_)
        (let ((_rest61271_ '()))
          (let ((__tmp61458
                 (lambda (_k61273_ _v61274_)
                   (if (memq _k61273_ _drop61269_)
                       '#!void
                       (set! _rest61271_
                             (let ((__tmp61459
                                    (let ()
                                      (declare (not safe))
                                      (cons _v61274_ _rest61271_))))
                               (declare (not safe))
                               (cons _k61273_ __tmp61459)))))))
            (declare (not safe))
            (raw-table-for-each _kwt61268_ __tmp61458))
          _rest61271_)))))
