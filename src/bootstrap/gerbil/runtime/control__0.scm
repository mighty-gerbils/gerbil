(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1710694201)
  (begin
    (define make-promise
      (lambda (_thunk59180_)
        (let () (declare (not safe)) (##make-delay-promise _thunk59180_))))
    (define call-with-parameters
      (lambda (_thunk59128_ . _rest59129_)
        (let* ((_rest5913059141_ _rest59129_)
               (_E5913359145_
                (lambda () (error '"No clause matching" _rest5913059141_))))
          (let ((_K5913559161_
                 (lambda (_rest59156_ _val59157_ _param59158_)
                   (let ((__tmp59192
                          (if (let () (declare (not safe)) (null? _rest59156_))
                              _thunk59128_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk59128_
                                       _rest59156_)))))
                     (declare (not safe))
                     (##parameterize1 _param59158_ _val59157_ __tmp59192))))
                (_K5913459150_ (lambda () (_thunk59128_))))
            (let ((_try-match5913259153_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _rest5913059141_))
                         (let () (declare (not safe)) (_thunk59128_))
                         (let () (declare (not safe)) (_E5913359145_))))))
              (if (let () (declare (not safe)) (##pair? _rest5913059141_))
                  (let ((_tl5913759166_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest5913059141_)))
                        (_hd5913659164_
                         (let ()
                           (declare (not safe))
                           (##car _rest5913059141_))))
                    (if (let () (declare (not safe)) (##pair? _tl5913759166_))
                        (let ((_tl5913959173_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5913759166_)))
                              (_hd5913859171_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5913759166_))))
                          (let ((_param59169_ _hd5913659164_)
                                (_val59176_ _hd5913859171_)
                                (_rest59178_ _tl5913959173_))
                            (let ()
                              (declare (not safe))
                              (_K5913559161_
                               _rest59178_
                               _val59176_
                               _param59169_))))
                        (let () (declare (not safe)) (_E5913359145_))))
                  (let () (declare (not safe)) (_try-match5913259153_))))))))
    (define with-unwind-protect
      (lambda (_K59121_ _fini59122_)
        (let ((_once59124_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once59124_
                 (error '"Cannot re-enter unwind protected block")
                 (set! _once59124_ '#t)))
           _K59121_
           _fini59122_))))
    (define keyword-dispatch
      (lambda (_kwt59018_ _K59019_ . _all-args59020_)
        (if _kwt59018_
            (if (let () (declare (not safe)) (vector? _kwt59018_))
                '#!void
                (error '"expected vector" _kwt59018_))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K59019_))
            '#!void
            (error '"expected procedure" _K59019_))
        (let ((_keys59022_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _lp59024_ ((_rest59026_ _all-args59020_)
                          (_args59027_ '#f)
                          (_tail59028_ '#f))
            (let* ((_rest5902959037_ _rest59026_)
                   (_else5903159045_
                    (lambda ()
                      (if _args59027_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail59028_ '()))
                            (let ((__tmp59193
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys59022_ _args59027_))))
                              (declare (not safe))
                              (##apply _K59019_ __tmp59193)))
                          (_K59019_ _keys59022_))))
                   (_K5903359109_
                    (lambda (_hd-rest59048_ _hd59049_)
                      (if (keyword? _hd59049_)
                          (let* ((_hd-rest5905059057_ _hd-rest59048_)
                                 (_E5905259061_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _hd-rest5905059057_)))
                                 (_K5905359069_
                                  (lambda (_rest59064_ _val59065_)
                                    (if _kwt59018_
                                        (let ((_pos59067_
                                               (let ((__tmp59195
                                                      (keyword-hash _hd59049_))
                                                     (__tmp59194
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt59018_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp59195
                                                  __tmp59194))))
                                          (if (let ((__tmp59196
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt59018_
                                                        _pos59067_))))
                                                (declare (not safe))
                                                (eq? _hd59049_ __tmp59196))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _K59019_
                                                     _hd59049_)))
                                        '#!void)
                                    (if (let ((__tmp59197
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _keys59022_
                                                  _hd59049_
                                                  absent-value))))
                                          (declare (not safe))
                                          (eq? __tmp59197 absent-value))
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _K59019_
                                               _hd59049_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _keys59022_
                                       _hd59049_
                                       _val59065_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp59024_
                                       _rest59064_
                                       _args59027_
                                       _tail59028_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest5905059057_))
                                (let ((_hd5905459072_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest5905059057_)))
                                      (_tl5905559074_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest5905059057_))))
                                  (let* ((_val59077_ _hd5905459072_)
                                         (_rest59079_ _tl5905559074_))
                                    (declare (not safe))
                                    (_K5905359069_ _rest59079_ _val59077_)))
                                (let () (declare (not safe)) (_E5905259061_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd59049_ '#!key))
                              (let* ((_hd-rest5908059087_ _hd-rest59048_)
                                     (_E5908259091_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd-rest5908059087_)))
                                     (_K5908359097_
                                      (lambda (_rest59094_ _val59095_)
                                        (if _args59027_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail59028_
                                                 _hd-rest59048_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp59024_
                                                 _rest59094_
                                                 _args59027_
                                                 _hd-rest59048_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp59024_
                                               _rest59094_
                                               _hd-rest59048_
                                               _hd-rest59048_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest5908059087_))
                                    (let ((_hd5908459100_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest5908059087_)))
                                          (_tl5908559102_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest5908059087_))))
                                      (let* ((_val59105_ _hd5908459100_)
                                             (_rest59107_ _tl5908559102_))
                                        (declare (not safe))
                                        (_K5908359097_
                                         _rest59107_
                                         _val59105_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E5908259091_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd59049_ '#!rest))
                                  (if _args59027_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail59028_
                                           _hd-rest59048_))
                                        (let ((__tmp59198
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys59022_
                                                       _args59027_))))
                                          (declare (not safe))
                                          (##apply _K59019_ __tmp59198)))
                                      (let ((__tmp59199
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys59022_
                                                     _hd-rest59048_))))
                                        (declare (not safe))
                                        (##apply _K59019_ __tmp59199)))
                                  (if _args59027_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail59028_ _rest59026_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp59024_
                                           _hd-rest59048_
                                           _args59027_
                                           _rest59026_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp59024_
                                         _hd-rest59048_
                                         _rest59026_
                                         _rest59026_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest5902959037_))
                  (let ((_hd5903459112_
                         (let ()
                           (declare (not safe))
                           (##car _rest5902959037_)))
                        (_tl5903559114_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest5902959037_))))
                    (let* ((_hd59117_ _hd5903459112_)
                           (_hd-rest59119_ _tl5903559114_))
                      (declare (not safe))
                      (_K5903359109_ _hd-rest59119_ _hd59117_)))
                  (let () (declare (not safe)) (_else5903159045_))))))))
    (define keyword-rest
      (lambda (_kwt59010_ . _drop59011_)
        (let ((_rest59013_ '()))
          (let ((__tmp59200
                 (lambda (_k59015_ _v59016_)
                   (if (memq _k59015_ _drop59011_)
                       '#!void
                       (set! _rest59013_
                             (let ((__tmp59201
                                    (let ()
                                      (declare (not safe))
                                      (cons _v59016_ _rest59013_))))
                               (declare (not safe))
                               (cons _k59015_ __tmp59201)))))))
            (declare (not safe))
            (raw-table-for-each _kwt59010_ __tmp59200))
          _rest59013_)))))
