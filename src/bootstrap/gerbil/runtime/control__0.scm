(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1709375797)
  (begin
    (define make-promise
      (lambda (_thunk61435_)
        (let () (declare (not safe)) (##make-delay-promise _thunk61435_))))
    (define call-with-parameters
      (lambda (_thunk61383_ . _rest61384_)
        (let* ((_rest6138561396_ _rest61384_)
               (_E6138861400_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _rest6138561396_)))))
          (let ((_K6139061416_
                 (lambda (_rest61411_ _val61412_ _param61413_)
                   (let ((__tmp61447
                          (if (let () (declare (not safe)) (null? _rest61411_))
                              _thunk61383_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk61383_
                                       _rest61411_)))))
                     (declare (not safe))
                     (##parameterize1 _param61413_ _val61412_ __tmp61447))))
                (_K6138961405_ (lambda () (_thunk61383_))))
            (let ((_try-match6138761408_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _rest6138561396_))
                         (let () (declare (not safe)) (_thunk61383_))
                         (let () (declare (not safe)) (_E6138861400_))))))
              (if (let () (declare (not safe)) (##pair? _rest6138561396_))
                  (let ((_tl6139261421_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6138561396_)))
                        (_hd6139161419_
                         (let ()
                           (declare (not safe))
                           (##car _rest6138561396_))))
                    (if (let () (declare (not safe)) (##pair? _tl6139261421_))
                        (let ((_tl6139461428_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6139261421_)))
                              (_hd6139361426_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6139261421_))))
                          (let ((_param61424_ _hd6139161419_)
                                (_val61431_ _hd6139361426_)
                                (_rest61433_ _tl6139461428_))
                            (let ()
                              (declare (not safe))
                              (_K6139061416_
                               _rest61433_
                               _val61431_
                               _param61424_))))
                        (let () (declare (not safe)) (_E6138861400_))))
                  (let () (declare (not safe)) (_try-match6138761408_))))))))
    (define with-unwind-protect
      (lambda (_K61376_ _fini61377_)
        (let ((_once61379_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once61379_
                 (let ()
                   (declare (not safe))
                   (error '"Cannot re-enter unwind protected block"))
                 (set! _once61379_ '#t)))
           _K61376_
           _fini61377_))))
    (define keyword-dispatch
      (lambda (_kwt61273_ _K61274_ . _all-args61275_)
        (if _kwt61273_
            (if (let () (declare (not safe)) (vector? _kwt61273_))
                '#!void
                (let ()
                  (declare (not safe))
                  (error '"expected vector" _kwt61273_)))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K61274_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"expected procedure" _K61274_)))
        (let ((_keys61277_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _lp61279_ ((_rest61281_ _all-args61275_)
                          (_args61282_ '#f)
                          (_tail61283_ '#f))
            (let* ((_rest6128461292_ _rest61281_)
                   (_else6128661300_
                    (lambda ()
                      (if _args61282_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail61283_ '()))
                            (let ((__tmp61448
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys61277_ _args61282_))))
                              (declare (not safe))
                              (##apply _K61274_ __tmp61448)))
                          (_K61274_ _keys61277_))))
                   (_K6128861364_
                    (lambda (_hd-rest61303_ _hd61304_)
                      (if (keyword? _hd61304_)
                          (let* ((_hd-rest6130561312_ _hd-rest61303_)
                                 (_E6130761316_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (error '"No clause matching"
                                             _hd-rest6130561312_))))
                                 (_K6130861324_
                                  (lambda (_rest61319_ _val61320_)
                                    (if _kwt61273_
                                        (let ((_pos61322_
                                               (let ((__tmp61452
                                                      (keyword-hash _hd61304_))
                                                     (__tmp61451
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt61273_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp61452
                                                  __tmp61451))))
                                          (if (let ((__tmp61453
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt61273_
                                                        _pos61322_))))
                                                (declare (not safe))
                                                (eq? _hd61304_ __tmp61453))
                                              '#!void
                                              (let ()
                                                (declare (not safe))
                                                (error '"Unexpected keyword argument"
                                                       _K61274_
                                                       _hd61304_))))
                                        '#!void)
                                    (if (let ((__tmp61454
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _keys61277_
                                                  _hd61304_
                                                  absent-value))))
                                          (declare (not safe))
                                          (eq? __tmp61454 absent-value))
                                        '#!void
                                        (let ()
                                          (declare (not safe))
                                          (error '"Duplicate keyword argument"
                                                 _K61274_
                                                 _hd61304_)))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _keys61277_
                                       _hd61304_
                                       _val61320_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp61279_
                                       _rest61319_
                                       _args61282_
                                       _tail61283_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest6130561312_))
                                (let ((_hd6130961327_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest6130561312_)))
                                      (_tl6131061329_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest6130561312_))))
                                  (let* ((_val61332_ _hd6130961327_)
                                         (_rest61334_ _tl6131061329_))
                                    (declare (not safe))
                                    (_K6130861324_ _rest61334_ _val61332_)))
                                (let () (declare (not safe)) (_E6130761316_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd61304_ '#!key))
                              (let* ((_hd-rest6133561342_ _hd-rest61303_)
                                     (_E6133761346_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (error '"No clause matching"
                                                 _hd-rest6133561342_))))
                                     (_K6133861352_
                                      (lambda (_rest61349_ _val61350_)
                                        (if _args61282_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail61283_
                                                 _hd-rest61303_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp61279_
                                                 _rest61349_
                                                 _args61282_
                                                 _hd-rest61303_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp61279_
                                               _rest61349_
                                               _hd-rest61303_
                                               _hd-rest61303_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest6133561342_))
                                    (let ((_hd6133961355_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest6133561342_)))
                                          (_tl6134061357_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest6133561342_))))
                                      (let* ((_val61360_ _hd6133961355_)
                                             (_rest61362_ _tl6134061357_))
                                        (declare (not safe))
                                        (_K6133861352_
                                         _rest61362_
                                         _val61360_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E6133761346_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd61304_ '#!rest))
                                  (if _args61282_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail61283_
                                           _hd-rest61303_))
                                        (let ((__tmp61450
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys61277_
                                                       _args61282_))))
                                          (declare (not safe))
                                          (##apply _K61274_ __tmp61450)))
                                      (let ((__tmp61449
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys61277_
                                                     _hd-rest61303_))))
                                        (declare (not safe))
                                        (##apply _K61274_ __tmp61449)))
                                  (if _args61282_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail61283_ _rest61281_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp61279_
                                           _hd-rest61303_
                                           _args61282_
                                           _rest61281_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp61279_
                                         _hd-rest61303_
                                         _rest61281_
                                         _rest61281_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6128461292_))
                  (let ((_hd6128961367_
                         (let ()
                           (declare (not safe))
                           (##car _rest6128461292_)))
                        (_tl6129061369_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6128461292_))))
                    (let* ((_hd61372_ _hd6128961367_)
                           (_hd-rest61374_ _tl6129061369_))
                      (declare (not safe))
                      (_K6128861364_ _hd-rest61374_ _hd61372_)))
                  (let () (declare (not safe)) (_else6128661300_))))))))
    (define keyword-rest
      (lambda (_kwt61265_ . _drop61266_)
        (let ((_rest61268_ '()))
          (let ((__tmp61455
                 (lambda (_k61270_ _v61271_)
                   (if (memq _k61270_ _drop61266_)
                       '#!void
                       (set! _rest61268_
                             (let ((__tmp61456
                                    (let ()
                                      (declare (not safe))
                                      (cons _v61271_ _rest61268_))))
                               (declare (not safe))
                               (cons _k61270_ __tmp61456)))))))
            (declare (not safe))
            (raw-table-for-each _kwt61265_ __tmp61455))
          _rest61268_)))))
