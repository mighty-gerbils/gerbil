(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1709213449)
  (begin
    (define make-promise
      (lambda (_thunk61448_)
        (let () (declare (not safe)) (##make-delay-promise _thunk61448_))))
    (define call-with-parameters
      (lambda (_thunk61396_ . _rest61397_)
        (let* ((_rest6139861409_ _rest61397_)
               (_E6140161413_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _rest6139861409_)))))
          (let ((_K6140361429_
                 (lambda (_rest61424_ _val61425_ _param61426_)
                   (let ((__tmp61460
                          (if (let () (declare (not safe)) (null? _rest61424_))
                              _thunk61396_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk61396_
                                       _rest61424_)))))
                     (declare (not safe))
                     (##parameterize1 _param61426_ _val61425_ __tmp61460))))
                (_K6140261418_ (lambda () (_thunk61396_))))
            (let ((_try-match6140061421_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _rest6139861409_))
                         (let () (declare (not safe)) (_thunk61396_))
                         (let () (declare (not safe)) (_E6140161413_))))))
              (if (let () (declare (not safe)) (##pair? _rest6139861409_))
                  (let ((_tl6140561434_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6139861409_)))
                        (_hd6140461432_
                         (let ()
                           (declare (not safe))
                           (##car _rest6139861409_))))
                    (if (let () (declare (not safe)) (##pair? _tl6140561434_))
                        (let ((_tl6140761441_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6140561434_)))
                              (_hd6140661439_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6140561434_))))
                          (let ((_param61437_ _hd6140461432_)
                                (_val61444_ _hd6140661439_)
                                (_rest61446_ _tl6140761441_))
                            (let ()
                              (declare (not safe))
                              (_K6140361429_
                               _rest61446_
                               _val61444_
                               _param61437_))))
                        (let () (declare (not safe)) (_E6140161413_))))
                  (let () (declare (not safe)) (_try-match6140061421_))))))))
    (define with-unwind-protect
      (lambda (_K61389_ _fini61390_)
        (let ((_once61392_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once61392_
                 (let ()
                   (declare (not safe))
                   (error '"Cannot re-enter unwind protected block"))
                 (set! _once61392_ '#t)))
           _K61389_
           _fini61390_))))
    (define keyword-dispatch
      (lambda (_kwt61286_ _K61287_ . _all-args61288_)
        (if _kwt61286_
            (if (let () (declare (not safe)) (vector? _kwt61286_))
                '#!void
                (let ()
                  (declare (not safe))
                  (error '"expected vector" _kwt61286_)))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K61287_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"expected procedure" _K61287_)))
        (let ((_keys61290_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _lp61292_ ((_rest61294_ _all-args61288_)
                          (_args61295_ '#f)
                          (_tail61296_ '#f))
            (let* ((_rest6129761305_ _rest61294_)
                   (_else6129961313_
                    (lambda ()
                      (if _args61295_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail61296_ '()))
                            (let ((__tmp61461
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys61290_ _args61295_))))
                              (declare (not safe))
                              (##apply _K61287_ __tmp61461)))
                          (_K61287_ _keys61290_))))
                   (_K6130161377_
                    (lambda (_hd-rest61316_ _hd61317_)
                      (if (keyword? _hd61317_)
                          (let* ((_hd-rest6131861325_ _hd-rest61316_)
                                 (_E6132061329_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (error '"No clause matching"
                                             _hd-rest6131861325_))))
                                 (_K6132161337_
                                  (lambda (_rest61332_ _val61333_)
                                    (if _kwt61286_
                                        (let ((_pos61335_
                                               (let ((__tmp61465
                                                      (keyword-hash _hd61317_))
                                                     (__tmp61464
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt61286_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp61465
                                                  __tmp61464))))
                                          (if (let ((__tmp61466
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt61286_
                                                        _pos61335_))))
                                                (declare (not safe))
                                                (eq? _hd61317_ __tmp61466))
                                              '#!void
                                              (let ()
                                                (declare (not safe))
                                                (error '"Unexpected keyword argument"
                                                       _K61287_
                                                       _hd61317_))))
                                        '#!void)
                                    (if (let ((__tmp61467
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _keys61290_
                                                  _hd61317_
                                                  absent-value))))
                                          (declare (not safe))
                                          (eq? __tmp61467 absent-value))
                                        '#!void
                                        (let ()
                                          (declare (not safe))
                                          (error '"Duplicate keyword argument"
                                                 _K61287_
                                                 _hd61317_)))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _keys61290_
                                       _hd61317_
                                       _val61333_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp61292_
                                       _rest61332_
                                       _args61295_
                                       _tail61296_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest6131861325_))
                                (let ((_hd6132261340_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest6131861325_)))
                                      (_tl6132361342_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest6131861325_))))
                                  (let* ((_val61345_ _hd6132261340_)
                                         (_rest61347_ _tl6132361342_))
                                    (declare (not safe))
                                    (_K6132161337_ _rest61347_ _val61345_)))
                                (let () (declare (not safe)) (_E6132061329_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd61317_ '#!key))
                              (let* ((_hd-rest6134861355_ _hd-rest61316_)
                                     (_E6135061359_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (error '"No clause matching"
                                                 _hd-rest6134861355_))))
                                     (_K6135161365_
                                      (lambda (_rest61362_ _val61363_)
                                        (if _args61295_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail61296_
                                                 _hd-rest61316_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp61292_
                                                 _rest61362_
                                                 _args61295_
                                                 _hd-rest61316_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp61292_
                                               _rest61362_
                                               _hd-rest61316_
                                               _hd-rest61316_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest6134861355_))
                                    (let ((_hd6135261368_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest6134861355_)))
                                          (_tl6135361370_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest6134861355_))))
                                      (let* ((_val61373_ _hd6135261368_)
                                             (_rest61375_ _tl6135361370_))
                                        (declare (not safe))
                                        (_K6135161365_
                                         _rest61375_
                                         _val61373_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E6135061359_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd61317_ '#!rest))
                                  (if _args61295_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail61296_
                                           _hd-rest61316_))
                                        (let ((__tmp61463
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys61290_
                                                       _args61295_))))
                                          (declare (not safe))
                                          (##apply _K61287_ __tmp61463)))
                                      (let ((__tmp61462
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys61290_
                                                     _hd-rest61316_))))
                                        (declare (not safe))
                                        (##apply _K61287_ __tmp61462)))
                                  (if _args61295_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail61296_ _rest61294_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp61292_
                                           _hd-rest61316_
                                           _args61295_
                                           _rest61294_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp61292_
                                         _hd-rest61316_
                                         _rest61294_
                                         _rest61294_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6129761305_))
                  (let ((_hd6130261380_
                         (let ()
                           (declare (not safe))
                           (##car _rest6129761305_)))
                        (_tl6130361382_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6129761305_))))
                    (let* ((_hd61385_ _hd6130261380_)
                           (_hd-rest61387_ _tl6130361382_))
                      (declare (not safe))
                      (_K6130161377_ _hd-rest61387_ _hd61385_)))
                  (let () (declare (not safe)) (_else6129961313_))))))))
    (define keyword-rest
      (lambda (_kwt61278_ . _drop61279_)
        (let ((_rest61281_ '()))
          (let ((__tmp61468
                 (lambda (_k61283_ _v61284_)
                   (if (memq _k61283_ _drop61279_)
                       '#!void
                       (set! _rest61281_
                             (let ((__tmp61469
                                    (let ()
                                      (declare (not safe))
                                      (cons _v61284_ _rest61281_))))
                               (declare (not safe))
                               (cons _k61283_ __tmp61469)))))))
            (declare (not safe))
            (raw-table-for-each _kwt61278_ __tmp61468))
          _rest61281_)))))
